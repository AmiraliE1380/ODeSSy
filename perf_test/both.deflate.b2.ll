; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.deflate.ll'
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
  br i1 %9, label %197, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !8
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %197, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %197, label %17

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
  store i32 %75, ptr %76, align 8, !tbaa !51
  %77 = shl nuw nsw i32 128, %4
  %78 = getelementptr inbounds nuw i8, ptr %63, i64 132
  store i32 %77, ptr %78, align 4, !tbaa !36
  %79 = add nsw i32 %77, -1
  %80 = getelementptr inbounds nuw i8, ptr %63, i64 140
  store i32 %79, ptr %80, align 4, !tbaa !52
  %81 = trunc nuw nsw i32 %4 to i8
  %82 = add nuw nsw i8 %81, 9
  %83 = udiv i8 %82, 3
  %84 = zext nneg i8 %83 to i32
  %85 = getelementptr inbounds nuw i8, ptr %63, i64 144
  store i32 %84, ptr %85, align 8, !tbaa !53
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
  br i1 %124, label %197, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr %26, align 8, !tbaa !17
  %127 = icmp eq ptr %126, null
  br i1 %127, label %197, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %68, align 8, !tbaa !19
  %130 = icmp eq ptr %129, null
  br i1 %130, label %197, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr %129, align 8, !tbaa !20
  %133 = icmp eq ptr %132, %0
  br i1 %133, label %134, label %197

134:                                              ; preds = %131
  %135 = getelementptr inbounds nuw i8, ptr %129, i64 8
  %136 = load i32, ptr %135, align 8, !tbaa !29
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
  tail call void %126(ptr noundef %142, ptr noundef nonnull %139) #11, !inline_history !54
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
  tail call void %146(ptr noundef %152, ptr noundef nonnull %149) #11, !inline_history !54
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
  tail call void %156(ptr noundef %162, ptr noundef nonnull %159) #11, !inline_history !54
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
  tail call void %166(ptr noundef %172, ptr noundef nonnull %169) #11, !inline_history !54
  %173 = load ptr, ptr %26, align 8, !tbaa !17
  %174 = load ptr, ptr %68, align 8, !tbaa !19
  br label %175

175:                                              ; preds = %171, %165
  %176 = phi ptr [ %174, %171 ], [ %167, %165 ]
  %177 = phi ptr [ %173, %171 ], [ %166, %165 ]
  %178 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %177(ptr noundef %178, ptr noundef %176) #11, !inline_history !54
  store ptr null, ptr %68, align 8, !tbaa !19
  br label %197

179:                                              ; preds = %116
  %180 = getelementptr inbounds nuw i8, ptr %105, i64 %108
  %181 = getelementptr inbounds nuw i8, ptr %63, i64 5888
  store ptr %180, ptr %181, align 8, !tbaa !44
  %182 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %107, i32 1), !nosanitize !45
  %183 = extractvalue { i32, i1 } %182, 1, !nosanitize !45
  br i1 %183, label %184, label %185, !prof !46, !nosanitize !45

184:                                              ; preds = %179
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

185:                                              ; preds = %179
  %186 = extractvalue { i32, i1 } %182, 0, !nosanitize !45
  %187 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %186, i32 3), !nosanitize !45
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !45
  br i1 %188, label %189, label %190, !prof !46, !nosanitize !45

189:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !45
  unreachable, !nosanitize !45

190:                                              ; preds = %185
  %191 = extractvalue { i32, i1 } %187, 0, !nosanitize !45
  %192 = getelementptr inbounds nuw i8, ptr %63, i64 5904
  store i32 %191, ptr %192, align 8, !tbaa !47
  %193 = getelementptr inbounds nuw i8, ptr %63, i64 196
  store i32 %32, ptr %193, align 4, !tbaa !48
  %194 = getelementptr inbounds nuw i8, ptr %63, i64 200
  store i32 %5, ptr %194, align 8, !tbaa !49
  %195 = getelementptr inbounds nuw i8, ptr %63, i64 72
  store i8 8, ptr %195, align 8, !tbaa !50
  %196 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %197

197:                                              ; preds = %190, %175, %134, %131, %128, %125, %121, %60, %57, %42, %34, %15, %10, %8
  %198 = phi i32 [ %196, %190 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %42 ], [ -4, %60 ], [ -6, %10 ], [ -2, %57 ], [ -4, %121 ], [ -4, %125 ], [ -4, %128 ], [ -4, %131 ], [ -4, %134 ], [ -4, %175 ]
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %96, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %96, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %96, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %96, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %96

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !29
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
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !45
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !45
  br i1 %34, label %35, label %36, !prof !46, !nosanitize !45

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !45
  unreachable, !nosanitize !45

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !45
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
  %56 = getelementptr inbounds nuw i8, ptr %50, i64 132
  %57 = load i32, ptr %56, align 4, !tbaa !36
  %58 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 1), !nosanitize !45
  %59 = extractvalue { i32, i1 } %58, 1, !nosanitize !45
  br i1 %59, label %60, label %61, !prof !46, !nosanitize !45

60:                                               ; preds = %46
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

61:                                               ; preds = %46
  %62 = extractvalue { i32, i1 } %58, 0, !nosanitize !45
  %63 = getelementptr inbounds nuw i8, ptr %50, i64 120
  %64 = load ptr, ptr %63, align 8, !tbaa !37
  %65 = zext i32 %62 to i64
  %66 = getelementptr inbounds nuw [2 x i8], ptr %64, i64 %65
  store i16 0, ptr %66, align 2, !tbaa !62
  %67 = shl nuw nsw i64 %65, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %64, i8 0, i64 %67, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %50, i64 5960
  store i32 0, ptr %68, align 8, !tbaa !63
  %69 = getelementptr inbounds nuw i8, ptr %50, i64 196
  %70 = load i32, ptr %69, align 4, !tbaa !48
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %71
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 2
  %74 = load i16, ptr %73, align 2, !tbaa !64
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds nuw i8, ptr %50, i64 192
  store i32 %75, ptr %76, align 8, !tbaa !66
  %77 = load i16, ptr %72, align 16, !tbaa !67
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds nuw i8, ptr %50, i64 204
  store i32 %78, ptr %79, align 4, !tbaa !68
  %80 = getelementptr inbounds nuw i8, ptr %72, i64 4
  %81 = load i16, ptr %80, align 4, !tbaa !69
  %82 = zext i16 %81 to i32
  %83 = getelementptr inbounds nuw i8, ptr %50, i64 208
  store i32 %82, ptr %83, align 8, !tbaa !70
  %84 = getelementptr inbounds nuw i8, ptr %72, i64 6
  %85 = load i16, ptr %84, align 2, !tbaa !71
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds nuw i8, ptr %50, i64 188
  store i32 %86, ptr %87, align 4, !tbaa !72
  %88 = getelementptr inbounds nuw i8, ptr %50, i64 172
  store i32 0, ptr %88, align 4, !tbaa !73
  %89 = getelementptr inbounds nuw i8, ptr %50, i64 152
  store i64 0, ptr %89, align 8, !tbaa !74
  %90 = getelementptr inbounds nuw i8, ptr %50, i64 180
  store i32 0, ptr %90, align 4, !tbaa !75
  %91 = getelementptr inbounds nuw i8, ptr %50, i64 5932
  store i32 0, ptr %91, align 4, !tbaa !76
  %92 = getelementptr inbounds nuw i8, ptr %50, i64 184
  store i32 2, ptr %92, align 8, !tbaa !77
  %93 = getelementptr inbounds nuw i8, ptr %50, i64 160
  store i32 2, ptr %93, align 8, !tbaa !78
  %94 = getelementptr inbounds nuw i8, ptr %50, i64 168
  store i32 0, ptr %94, align 8, !tbaa !79
  %95 = getelementptr inbounds nuw i8, ptr %50, i64 128
  store i32 0, ptr %95, align 8, !tbaa !80
  br label %96

96:                                               ; preds = %61, %18, %15, %11, %7, %3, %1
  %97 = phi i32 [ 0, %61 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %808, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %808, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %808, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %808, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %808

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %808 [
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
  br i1 %24, label %808, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !30
  switch i32 %27, label %34 [
    i32 2, label %808
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %808

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !75
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %808

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !75
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %808

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

105:                                              ; preds = %378, %80
  %106 = phi i32 [ %306, %378 ], [ %104, %80 ]
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
  br i1 %133, label %253, label %134

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

152:                                              ; preds = %153, %147
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

153:                                              ; preds = %147
  %154 = extractvalue { i32, i1 } %150, 0, !nosanitize !45
  store i32 %154, ptr %90, align 4, !tbaa !73
  %155 = load i64, ptr %94, align 8, !tbaa !74
  %156 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %155, i64 %91), !nosanitize !45
  %157 = extractvalue { i64, i1 } %156, 1, !nosanitize !45
  br i1 %157, label %152, label %158, !prof !46, !nosanitize !45

158:                                              ; preds = %153
  %159 = extractvalue { i64, i1 } %156, 0, !nosanitize !45
  store i64 %159, ptr %94, align 8, !tbaa !74
  %160 = load i32, ptr %95, align 4, !tbaa !76
  %161 = icmp ugt i32 %160, %154
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 %154, ptr %95, align 4, !tbaa !76
  br label %163

163:                                              ; preds = %162, %158
  %164 = load i32, ptr %81, align 8, !tbaa !32
  %165 = load i32, ptr %96, align 4, !tbaa !36
  %166 = load ptr, ptr %97, align 8, !tbaa !37
  %167 = zext i32 %165 to i64
  %168 = getelementptr inbounds nuw [2 x i8], ptr %166, i64 %167
  %169 = icmp eq i32 %165, 0
  br i1 %169, label %193, label %170, !prof !46, !nosanitize !45

170:                                              ; preds = %163
  %171 = icmp ult i32 %165, 8
  br i1 %171, label %.preheader154, label %172

.preheader154:                                    ; preds = %187, %170
  %.ph155 = phi ptr [ %189, %187 ], [ %168, %170 ]
  %.ph156 = phi i32 [ %191, %187 ], [ %165, %170 ]
  br label %199

172:                                              ; preds = %170
  %173 = and i64 %167, 4294967288
  %174 = insertelement <8 x i32> poison, i32 %164, i64 0
  %175 = shufflevector <8 x i32> %174, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %176

176:                                              ; preds = %176, %172
  %177 = phi i64 [ 0, %172 ], [ %185, %176 ]
  %178 = mul nsw i64 %177, -2
  %179 = getelementptr i8, ptr %168, i64 %178
  %180 = getelementptr inbounds i8, ptr %179, i64 -16
  %181 = load <8 x i16>, ptr %180, align 2, !tbaa !62
  %182 = zext <8 x i16> %181 to <8 x i32>
  %183 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %182, <8 x i32> %175)
  %184 = trunc nuw <8 x i32> %183 to <8 x i16>
  store <8 x i16> %184, ptr %180, align 2, !tbaa !62
  %185 = add nuw nsw i64 %177, 8
  %186 = icmp eq i64 %185, %173
  br i1 %186, label %187, label %176, !llvm.loop !84

187:                                              ; preds = %176
  %188 = mul nsw i64 %173, -2
  %189 = getelementptr i8, ptr %168, i64 %188
  %190 = trunc nuw i64 %173 to i32
  %191 = sub i32 %165, %190
  %192 = icmp eq i64 %173, %167
  br i1 %192, label %.loopexit47, label %.preheader154

193:                                              ; preds = %163
  %194 = getelementptr inbounds i8, ptr %168, i64 -2
  %195 = load i16, ptr %194, align 2, !tbaa !62
  %196 = zext i16 %195 to i32
  %197 = tail call i32 @llvm.usub.sat.i32(i32 %196, i32 %164)
  %198 = trunc nuw i32 %197 to i16
  store i16 %198, ptr %194, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

199:                                              ; preds = %.preheader154, %199
  %200 = phi ptr [ %202, %199 ], [ %.ph155, %.preheader154 ]
  %201 = phi i32 [ %207, %199 ], [ %.ph156, %.preheader154 ]
  %202 = getelementptr inbounds i8, ptr %200, i64 -2
  %203 = load i16, ptr %202, align 2, !tbaa !62
  %204 = zext i16 %203 to i32
  %205 = tail call i32 @llvm.usub.sat.i32(i32 %204, i32 %164)
  %206 = trunc nuw i32 %205 to i16
  store i16 %206, ptr %202, align 2, !tbaa !62
  %207 = add i32 %201, -1
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %.loopexit47, label %199, !llvm.loop !88

.loopexit47:                                      ; preds = %199, %187
  %209 = icmp eq i32 %164, 0
  br i1 %209, label %210, label %211, !prof !46, !nosanitize !45

210:                                              ; preds = %.loopexit47
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

211:                                              ; preds = %.loopexit47
  %212 = load ptr, ptr %98, align 8, !tbaa !35
  %213 = zext i32 %164 to i64
  %214 = getelementptr inbounds nuw [2 x i8], ptr %212, i64 %213
  %215 = icmp ult i32 %164, 8
  br i1 %215, label %.preheader151, label %216

216:                                              ; preds = %211
  %217 = and i64 %213, 4294967288
  %218 = insertelement <8 x i32> poison, i32 %164, i64 0
  %219 = shufflevector <8 x i32> %218, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %220

220:                                              ; preds = %220, %216
  %221 = phi i64 [ 0, %216 ], [ %229, %220 ]
  %222 = mul nsw i64 %221, -2
  %223 = getelementptr i8, ptr %214, i64 %222
  %224 = getelementptr inbounds i8, ptr %223, i64 -16
  %225 = load <8 x i16>, ptr %224, align 2, !tbaa !62
  %226 = zext <8 x i16> %225 to <8 x i32>
  %227 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %226, <8 x i32> %219)
  %228 = trunc nuw <8 x i32> %227 to <8 x i16>
  store <8 x i16> %228, ptr %224, align 2, !tbaa !62
  %229 = add nuw nsw i64 %221, 8
  %230 = icmp eq i64 %229, %217
  br i1 %230, label %231, label %220, !llvm.loop !89

231:                                              ; preds = %220
  %232 = mul nsw i64 %217, -2
  %233 = getelementptr i8, ptr %214, i64 %232
  %234 = trunc nuw i64 %217 to i32
  %235 = sub i32 %164, %234
  %236 = icmp eq i64 %217, %213
  br i1 %236, label %.loopexit46, label %.preheader151

.preheader151:                                    ; preds = %231, %211
  %.ph152 = phi ptr [ %233, %231 ], [ %214, %211 ]
  %.ph153 = phi i32 [ %235, %231 ], [ %164, %211 ]
  br label %237

237:                                              ; preds = %.preheader151, %237
  %238 = phi ptr [ %240, %237 ], [ %.ph152, %.preheader151 ]
  %239 = phi i32 [ %245, %237 ], [ %.ph153, %.preheader151 ]
  %240 = getelementptr inbounds i8, ptr %238, i64 -2
  %241 = load i16, ptr %240, align 2, !tbaa !62
  %242 = zext i16 %241 to i32
  %243 = tail call i32 @llvm.usub.sat.i32(i32 %242, i32 %164)
  %244 = trunc nuw i32 %243 to i16
  store i16 %244, ptr %240, align 2, !tbaa !62
  %245 = add i32 %239, -1
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %.loopexit46, label %237, !llvm.loop !90

.loopexit46:                                      ; preds = %237, %231
  store i32 1, ptr %99, align 8, !tbaa !63
  %247 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %121, i32 %83), !nosanitize !45
  %248 = extractvalue { i32, i1 } %247, 1, !nosanitize !45
  br i1 %248, label %249, label %250, !prof !46, !nosanitize !45

249:                                              ; preds = %.loopexit46
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

250:                                              ; preds = %.loopexit46
  %251 = extractvalue { i32, i1 } %247, 0, !nosanitize !45
  %252 = load i32, ptr %82, align 4, !tbaa !75
  br label %253

253:                                              ; preds = %250, %131
  %254 = phi i32 [ %252, %250 ], [ %106, %131 ]
  %255 = phi i32 [ %154, %250 ], [ %114, %131 ]
  %256 = phi i32 [ %251, %250 ], [ %121, %131 ]
  %257 = load ptr, ptr %15, align 8, !tbaa !20
  %258 = getelementptr inbounds nuw i8, ptr %257, i64 8
  %259 = load i32, ptr %258, align 8, !tbaa !81
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %383, label %261

261:                                              ; preds = %253
  %262 = load ptr, ptr %92, align 8, !tbaa !34
  %263 = zext i32 %255 to i64
  %264 = getelementptr inbounds nuw i8, ptr %262, i64 %263
  %265 = zext i32 %254 to i64
  %266 = getelementptr inbounds nuw i8, ptr %264, i64 %265
  %267 = tail call i32 @llvm.umin.i32(i32 %259, i32 %256)
  %268 = icmp eq i32 %256, 0
  br i1 %268, label %300, label %269

269:                                              ; preds = %261
  %270 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %259, i32 %267), !nosanitize !45
  %271 = extractvalue { i32, i1 } %270, 1, !nosanitize !45
  br i1 %271, label %272, label %273, !prof !46, !nosanitize !45

272:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

273:                                              ; preds = %269
  %274 = extractvalue { i32, i1 } %270, 0, !nosanitize !45
  store i32 %274, ptr %258, align 8, !tbaa !81
  %275 = load ptr, ptr %257, align 8, !tbaa !82
  %276 = zext i32 %267 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %266, ptr align 1 %275, i64 %276, i1 false)
  %277 = getelementptr inbounds nuw i8, ptr %257, i64 56
  %278 = load ptr, ptr %277, align 8, !tbaa !19
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 48
  %280 = load i32, ptr %279, align 8, !tbaa !30
  switch i32 %280, label %289 [
    i32 1, label %281
    i32 2, label %285
  ]

281:                                              ; preds = %273
  %282 = getelementptr inbounds nuw i8, ptr %257, i64 96
  %283 = load i64, ptr %282, align 8, !tbaa !59
  %284 = tail call i64 @adler32(i64 noundef %283, ptr noundef %266, i32 noundef %267) #11
  store i64 %284, ptr %282, align 8, !tbaa !59
  br label %289

285:                                              ; preds = %273
  %286 = getelementptr inbounds nuw i8, ptr %257, i64 96
  %287 = load i64, ptr %286, align 8, !tbaa !59
  %288 = tail call i64 @crc32(i64 noundef %287, ptr noundef %266, i32 noundef %267) #11
  store i64 %288, ptr %286, align 8, !tbaa !59
  br label %289

289:                                              ; preds = %285, %281, %273
  %290 = load ptr, ptr %257, align 8, !tbaa !82
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 %276
  store ptr %291, ptr %257, align 8, !tbaa !82
  %292 = getelementptr inbounds nuw i8, ptr %257, i64 16
  %293 = load i64, ptr %292, align 8, !tbaa !55
  %294 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %293, i64 %276), !nosanitize !45
  %295 = extractvalue { i64, i1 } %294, 1, !nosanitize !45
  br i1 %295, label %296, label %297, !prof !46, !nosanitize !45

296:                                              ; preds = %289
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

297:                                              ; preds = %289
  %298 = extractvalue { i64, i1 } %294, 0, !nosanitize !45
  store i64 %298, ptr %292, align 8, !tbaa !55
  %299 = load i32, ptr %82, align 4, !tbaa !75
  br label %300

300:                                              ; preds = %297, %261
  %301 = phi i32 [ %254, %261 ], [ %299, %297 ]
  %302 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %301, i32 %267), !nosanitize !45
  %303 = extractvalue { i32, i1 } %302, 1, !nosanitize !45
  br i1 %303, label %304, label %305, !prof !46, !nosanitize !45

304:                                              ; preds = %300
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

305:                                              ; preds = %300
  %306 = extractvalue { i32, i1 } %302, 0, !nosanitize !45
  store i32 %306, ptr %82, align 4, !tbaa !75
  %307 = load i32, ptr %95, align 4, !tbaa !76
  %308 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %306, i32 %307), !nosanitize !45
  %309 = extractvalue { i32, i1 } %308, 1, !nosanitize !45
  br i1 %309, label %310, label %311, !prof !46, !nosanitize !45

310:                                              ; preds = %305
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

311:                                              ; preds = %305
  %312 = extractvalue { i32, i1 } %308, 0, !nosanitize !45
  %313 = icmp ugt i32 %312, 2
  br i1 %313, label %314, label %.loopexit45

314:                                              ; preds = %311
  %315 = load i32, ptr %90, align 4, !tbaa !73
  %316 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %315, i32 %307), !nosanitize !45
  %317 = extractvalue { i32, i1 } %316, 0, !nosanitize !45
  %318 = extractvalue { i32, i1 } %316, 1, !nosanitize !45
  br i1 %318, label %319, label %320, !prof !46, !nosanitize !45

319:                                              ; preds = %314
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

320:                                              ; preds = %314
  %321 = load ptr, ptr %92, align 8, !tbaa !34
  %322 = zext i32 %317 to i64
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !8
  %325 = zext i8 %324 to i32
  store i32 %325, ptr %100, align 8, !tbaa !80
  %326 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %317, i32 1), !nosanitize !45
  %327 = extractvalue { i32, i1 } %326, 1, !nosanitize !45
  br i1 %327, label %328, label %329, !prof !46, !nosanitize !45

328:                                              ; preds = %320
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

329:                                              ; preds = %320
  %330 = extractvalue { i32, i1 } %326, 0, !nosanitize !45
  %331 = load i32, ptr %101, align 8, !tbaa !53
  %332 = shl i32 %325, %331
  %333 = zext i32 %330 to i64
  %334 = getelementptr inbounds nuw i8, ptr %321, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !8
  %336 = zext i8 %335 to i32
  %337 = xor i32 %332, %336
  %338 = load i32, ptr %102, align 4, !tbaa !52
  %339 = and i32 %337, %338
  store i32 %339, ptr %100, align 8, !tbaa !80
  br label %340

340:                                              ; preds = %373, %329
  %341 = phi i32 [ %339, %329 ], [ %358, %373 ]
  %342 = phi i32 [ %307, %329 ], [ %369, %373 ]
  %343 = phi i32 [ %317, %329 ], [ %374, %373 ]
  %344 = icmp eq i32 %342, 0
  br i1 %344, label %.loopexit45, label %345

345:                                              ; preds = %340
  %346 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %343, i32 3), !nosanitize !45
  %347 = extractvalue { i32, i1 } %346, 1, !nosanitize !45
  br i1 %347, label %348, label %349, !prof !46, !nosanitize !45

348:                                              ; preds = %345
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

349:                                              ; preds = %345
  %350 = shl i32 %341, %331
  %351 = extractvalue { i32, i1 } %346, 0, !nosanitize !45
  %352 = add i32 %351, -1
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds nuw i8, ptr %321, i64 %353
  %355 = load i8, ptr %354, align 1, !tbaa !8
  %356 = zext i8 %355 to i32
  %357 = xor i32 %350, %356
  %358 = and i32 %357, %338
  store i32 %358, ptr %100, align 8, !tbaa !80
  %359 = load ptr, ptr %97, align 8, !tbaa !37
  %360 = zext i32 %358 to i64
  %361 = getelementptr inbounds nuw [2 x i8], ptr %359, i64 %360
  %362 = load i16, ptr %361, align 2, !tbaa !62
  %363 = load ptr, ptr %98, align 8, !tbaa !35
  %364 = load i32, ptr %103, align 8, !tbaa !33
  %365 = and i32 %364, %343
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds nuw [2 x i8], ptr %363, i64 %366
  store i16 %362, ptr %367, align 2, !tbaa !62
  %368 = trunc i32 %343 to i16
  store i16 %368, ptr %361, align 2, !tbaa !62
  %369 = add i32 %342, -1
  store i32 %369, ptr %95, align 4, !tbaa !76
  %370 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %306, i32 %369), !nosanitize !45
  %371 = extractvalue { i32, i1 } %370, 1, !nosanitize !45
  br i1 %371, label %372, label %373, !prof !46, !nosanitize !45

372:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

373:                                              ; preds = %349
  %374 = add nuw i32 %343, 1
  %375 = extractvalue { i32, i1 } %370, 0, !nosanitize !45
  %376 = icmp ult i32 %375, 3
  br i1 %376, label %.loopexit45, label %340, !llvm.loop !91

.loopexit45:                                      ; preds = %373, %340, %311
  %377 = icmp ult i32 %306, 262
  br i1 %377, label %378, label %383

378:                                              ; preds = %.loopexit45
  %379 = load ptr, ptr %15, align 8, !tbaa !20
  %380 = getelementptr inbounds nuw i8, ptr %379, i64 8
  %381 = load i32, ptr %380, align 8, !tbaa !81
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %105, !llvm.loop !92

383:                                              ; preds = %378, %.loopexit45, %253
  %384 = phi i32 [ %306, %378 ], [ %306, %.loopexit45 ], [ %254, %253 ]
  %385 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %386 = load i64, ptr %385, align 8, !tbaa !38
  %387 = load i64, ptr %89, align 8, !tbaa !61
  %388 = icmp ult i64 %386, %387
  br i1 %388, label %389, label %428

389:                                              ; preds = %383
  %390 = load i32, ptr %90, align 4, !tbaa !73
  %391 = zext i32 %390 to i64
  %392 = zext i32 %384 to i64
  %393 = add nuw nsw i64 %391, %392
  %394 = icmp ult i64 %386, %393
  br i1 %394, label %395, label %405

395:                                              ; preds = %389
  %396 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %387, i64 %393), !nosanitize !45
  %397 = extractvalue { i64, i1 } %396, 1, !nosanitize !45
  br i1 %397, label %398, label %399, !prof !46, !nosanitize !45

398:                                              ; preds = %395
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

399:                                              ; preds = %395
  %400 = extractvalue { i64, i1 } %396, 0, !nosanitize !45
  %401 = tail call i64 @llvm.umin.i64(i64 %400, i64 258)
  %402 = load ptr, ptr %92, align 8, !tbaa !34
  %403 = getelementptr inbounds nuw i8, ptr %402, i64 %393
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %403, i8 0, i64 %401, i1 false)
  %404 = add nuw nsw i64 %401, %393
  br label %425

405:                                              ; preds = %389
  %406 = add nuw nsw i64 %393, 258
  %407 = icmp ult i64 %386, %406
  br i1 %407, label %408, label %428

408:                                              ; preds = %405
  %409 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %387, i64 %386), !nosanitize !45
  %410 = extractvalue { i64, i1 } %409, 1, !nosanitize !45
  br i1 %410, label %411, label %412, !prof !46, !nosanitize !45

411:                                              ; preds = %408
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

412:                                              ; preds = %408
  %413 = sub nuw nsw i64 %406, %386
  %414 = extractvalue { i64, i1 } %409, 0, !nosanitize !45
  %415 = tail call i64 @llvm.umin.i64(i64 %413, i64 %414)
  %416 = load ptr, ptr %92, align 8, !tbaa !34
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 %386
  %418 = and i64 %415, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %417, i8 0, i64 %418, i1 false)
  %419 = load i64, ptr %385, align 8, !tbaa !38
  %420 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %419, i64 %415), !nosanitize !45
  %421 = extractvalue { i64, i1 } %420, 1, !nosanitize !45
  br i1 %421, label %422, label %423, !prof !46, !nosanitize !45

422:                                              ; preds = %412
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

423:                                              ; preds = %412
  %424 = extractvalue { i64, i1 } %420, 0, !nosanitize !45
  br label %425

425:                                              ; preds = %423, %399
  %426 = phi i64 [ %404, %399 ], [ %424, %423 ]
  store i64 %426, ptr %385, align 8, !tbaa !38
  %427 = load i32, ptr %82, align 4, !tbaa !75
  br label %428

428:                                              ; preds = %425, %405, %383
  %429 = phi i32 [ %384, %383 ], [ %384, %405 ], [ %427, %425 ]
  %430 = icmp ugt i32 %429, 2
  br i1 %430, label %.preheader, label %.loopexit44

.preheader:                                       ; preds = %428, %794
  %431 = phi i32 [ %795, %794 ], [ %429, %428 ]
  %432 = load i32, ptr %90, align 4, !tbaa !73
  %433 = load i32, ptr %101, align 8, !tbaa !53
  %434 = load ptr, ptr %92, align 8, !tbaa !34
  %435 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %432)
  %436 = add i32 %431, -3
  %437 = icmp ugt i32 %435, %436
  br i1 %437, label %438, label %467, !prof !93, !nosanitize !45

438:                                              ; preds = %.preheader
  %439 = load i32, ptr %100, align 8, !tbaa !80
  %440 = add i32 %431, -2
  %441 = load i32, ptr %102, align 4, !tbaa !52
  %442 = load ptr, ptr %97, align 8, !tbaa !37
  %443 = load ptr, ptr %98, align 8, !tbaa !35
  %444 = load i32, ptr %103, align 8, !tbaa !33
  %445 = zext i32 %432 to i64
  br label %446

446:                                              ; preds = %446, %438
  %indvars.iv = phi i64 [ %indvars.iv.next, %446 ], [ %445, %438 ]
  %447 = phi i32 [ %457, %446 ], [ %439, %438 ]
  %448 = phi i32 [ %465, %446 ], [ %440, %438 ]
  %449 = shl i32 %447, %433
  %450 = trunc nuw i64 %indvars.iv to i32
  %451 = add nuw i64 %indvars.iv, 2
  %452 = and i64 %451, 4294967295
  %453 = getelementptr inbounds nuw i8, ptr %434, i64 %452
  %454 = load i8, ptr %453, align 1, !tbaa !8
  %455 = zext i8 %454 to i32
  %456 = xor i32 %449, %455
  %457 = and i32 %456, %441
  store i32 %457, ptr %100, align 8, !tbaa !80
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds nuw [2 x i8], ptr %442, i64 %458
  %460 = load i16, ptr %459, align 2, !tbaa !62
  %461 = and i32 %444, %450
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds nuw [2 x i8], ptr %443, i64 %462
  store i16 %460, ptr %463, align 2, !tbaa !62
  %464 = trunc i64 %indvars.iv to i16
  store i16 %464, ptr %459, align 2, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %465 = add i32 %448, -1
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %468, label %446, !llvm.loop !94

467:                                              ; preds = %.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

468:                                              ; preds = %446
  %469 = trunc nuw i64 %indvars.iv.next to i32
  store i32 %469, ptr %90, align 4, !tbaa !73
  store i32 2, ptr %82, align 4, !tbaa !75
  %470 = load i32, ptr %81, align 8, !tbaa !32
  %471 = zext i32 %470 to i64
  br label %472

472:                                              ; preds = %745, %468
  %473 = phi i32 [ %673, %745 ], [ 2, %468 ]
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
  br i1 %500, label %620, label %501

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

519:                                              ; preds = %520, %514
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

520:                                              ; preds = %514
  %521 = extractvalue { i32, i1 } %517, 0, !nosanitize !45
  store i32 %521, ptr %90, align 4, !tbaa !73
  %522 = load i64, ptr %94, align 8, !tbaa !74
  %523 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %522, i64 %471), !nosanitize !45
  %524 = extractvalue { i64, i1 } %523, 1, !nosanitize !45
  br i1 %524, label %519, label %525, !prof !46, !nosanitize !45

525:                                              ; preds = %520
  %526 = extractvalue { i64, i1 } %523, 0, !nosanitize !45
  store i64 %526, ptr %94, align 8, !tbaa !74
  %527 = load i32, ptr %95, align 4, !tbaa !76
  %528 = icmp ugt i32 %527, %521
  br i1 %528, label %529, label %530

529:                                              ; preds = %525
  store i32 %521, ptr %95, align 4, !tbaa !76
  br label %530

530:                                              ; preds = %529, %525
  %531 = load i32, ptr %81, align 8, !tbaa !32
  %532 = load i32, ptr %96, align 4, !tbaa !36
  %533 = load ptr, ptr %97, align 8, !tbaa !37
  %534 = zext i32 %532 to i64
  %535 = getelementptr inbounds nuw [2 x i8], ptr %533, i64 %534
  %536 = icmp eq i32 %532, 0
  br i1 %536, label %560, label %537, !prof !46, !nosanitize !45

537:                                              ; preds = %530
  %538 = icmp ult i32 %532, 8
  br i1 %538, label %.preheader142, label %539

.preheader142:                                    ; preds = %554, %537
  %.ph143 = phi ptr [ %556, %554 ], [ %535, %537 ]
  %.ph144 = phi i32 [ %558, %554 ], [ %532, %537 ]
  br label %566

539:                                              ; preds = %537
  %540 = and i64 %534, 4294967288
  %541 = insertelement <8 x i32> poison, i32 %531, i64 0
  %542 = shufflevector <8 x i32> %541, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %543

543:                                              ; preds = %543, %539
  %544 = phi i64 [ 0, %539 ], [ %552, %543 ]
  %545 = mul nsw i64 %544, -2
  %546 = getelementptr i8, ptr %535, i64 %545
  %547 = getelementptr inbounds i8, ptr %546, i64 -16
  %548 = load <8 x i16>, ptr %547, align 2, !tbaa !62
  %549 = zext <8 x i16> %548 to <8 x i32>
  %550 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %549, <8 x i32> %542)
  %551 = trunc nuw <8 x i32> %550 to <8 x i16>
  store <8 x i16> %551, ptr %547, align 2, !tbaa !62
  %552 = add nuw nsw i64 %544, 8
  %553 = icmp eq i64 %552, %540
  br i1 %553, label %554, label %543, !llvm.loop !95

554:                                              ; preds = %543
  %555 = mul nsw i64 %540, -2
  %556 = getelementptr i8, ptr %535, i64 %555
  %557 = trunc nuw i64 %540 to i32
  %558 = sub i32 %532, %557
  %559 = icmp eq i64 %540, %534
  br i1 %559, label %.loopexit43, label %.preheader142

560:                                              ; preds = %530
  %561 = getelementptr inbounds i8, ptr %535, i64 -2
  %562 = load i16, ptr %561, align 2, !tbaa !62
  %563 = zext i16 %562 to i32
  %564 = tail call i32 @llvm.usub.sat.i32(i32 %563, i32 %531)
  %565 = trunc nuw i32 %564 to i16
  store i16 %565, ptr %561, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

566:                                              ; preds = %.preheader142, %566
  %567 = phi ptr [ %569, %566 ], [ %.ph143, %.preheader142 ]
  %568 = phi i32 [ %574, %566 ], [ %.ph144, %.preheader142 ]
  %569 = getelementptr inbounds i8, ptr %567, i64 -2
  %570 = load i16, ptr %569, align 2, !tbaa !62
  %571 = zext i16 %570 to i32
  %572 = tail call i32 @llvm.usub.sat.i32(i32 %571, i32 %531)
  %573 = trunc nuw i32 %572 to i16
  store i16 %573, ptr %569, align 2, !tbaa !62
  %574 = add i32 %568, -1
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %.loopexit43, label %566, !llvm.loop !96

.loopexit43:                                      ; preds = %566, %554
  %576 = icmp eq i32 %531, 0
  br i1 %576, label %577, label %578, !prof !46, !nosanitize !45

577:                                              ; preds = %.loopexit43
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

578:                                              ; preds = %.loopexit43
  %579 = load ptr, ptr %98, align 8, !tbaa !35
  %580 = zext i32 %531 to i64
  %581 = getelementptr inbounds nuw [2 x i8], ptr %579, i64 %580
  %582 = icmp ult i32 %531, 8
  br i1 %582, label %.preheader140, label %583

583:                                              ; preds = %578
  %584 = and i64 %580, 4294967288
  %585 = insertelement <8 x i32> poison, i32 %531, i64 0
  %586 = shufflevector <8 x i32> %585, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %587

587:                                              ; preds = %587, %583
  %588 = phi i64 [ 0, %583 ], [ %596, %587 ]
  %589 = mul nsw i64 %588, -2
  %590 = getelementptr i8, ptr %581, i64 %589
  %591 = getelementptr inbounds i8, ptr %590, i64 -16
  %592 = load <8 x i16>, ptr %591, align 2, !tbaa !62
  %593 = zext <8 x i16> %592 to <8 x i32>
  %594 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %593, <8 x i32> %586)
  %595 = trunc nuw <8 x i32> %594 to <8 x i16>
  store <8 x i16> %595, ptr %591, align 2, !tbaa !62
  %596 = add nuw nsw i64 %588, 8
  %597 = icmp eq i64 %596, %584
  br i1 %597, label %598, label %587, !llvm.loop !97

598:                                              ; preds = %587
  %599 = mul nsw i64 %584, -2
  %600 = getelementptr i8, ptr %581, i64 %599
  %601 = trunc nuw i64 %584 to i32
  %602 = sub i32 %531, %601
  %603 = icmp eq i64 %584, %580
  br i1 %603, label %.loopexit42, label %.preheader140

.preheader140:                                    ; preds = %598, %578
  %.ph = phi ptr [ %600, %598 ], [ %581, %578 ]
  %.ph141 = phi i32 [ %602, %598 ], [ %531, %578 ]
  br label %604

604:                                              ; preds = %.preheader140, %604
  %605 = phi ptr [ %607, %604 ], [ %.ph, %.preheader140 ]
  %606 = phi i32 [ %612, %604 ], [ %.ph141, %.preheader140 ]
  %607 = getelementptr inbounds i8, ptr %605, i64 -2
  %608 = load i16, ptr %607, align 2, !tbaa !62
  %609 = zext i16 %608 to i32
  %610 = tail call i32 @llvm.usub.sat.i32(i32 %609, i32 %531)
  %611 = trunc nuw i32 %610 to i16
  store i16 %611, ptr %607, align 2, !tbaa !62
  %612 = add i32 %606, -1
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %.loopexit42, label %604, !llvm.loop !98

.loopexit42:                                      ; preds = %604, %598
  store i32 1, ptr %99, align 8, !tbaa !63
  %614 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %488, i32 %470), !nosanitize !45
  %615 = extractvalue { i32, i1 } %614, 1, !nosanitize !45
  br i1 %615, label %616, label %617, !prof !46, !nosanitize !45

616:                                              ; preds = %.loopexit42
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

617:                                              ; preds = %.loopexit42
  %618 = extractvalue { i32, i1 } %614, 0, !nosanitize !45
  %619 = load i32, ptr %82, align 4, !tbaa !75
  br label %620

620:                                              ; preds = %617, %498
  %621 = phi i32 [ %619, %617 ], [ %473, %498 ]
  %622 = phi i32 [ %521, %617 ], [ %481, %498 ]
  %623 = phi i32 [ %618, %617 ], [ %488, %498 ]
  %624 = load ptr, ptr %15, align 8, !tbaa !20
  %625 = getelementptr inbounds nuw i8, ptr %624, i64 8
  %626 = load i32, ptr %625, align 8, !tbaa !81
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %750, label %628

628:                                              ; preds = %620
  %629 = load ptr, ptr %92, align 8, !tbaa !34
  %630 = zext i32 %622 to i64
  %631 = getelementptr inbounds nuw i8, ptr %629, i64 %630
  %632 = zext i32 %621 to i64
  %633 = getelementptr inbounds nuw i8, ptr %631, i64 %632
  %634 = tail call i32 @llvm.umin.i32(i32 %626, i32 %623)
  %635 = icmp eq i32 %623, 0
  br i1 %635, label %667, label %636

636:                                              ; preds = %628
  %637 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %626, i32 %634), !nosanitize !45
  %638 = extractvalue { i32, i1 } %637, 1, !nosanitize !45
  br i1 %638, label %639, label %640, !prof !46, !nosanitize !45

639:                                              ; preds = %636
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

640:                                              ; preds = %636
  %641 = extractvalue { i32, i1 } %637, 0, !nosanitize !45
  store i32 %641, ptr %625, align 8, !tbaa !81
  %642 = load ptr, ptr %624, align 8, !tbaa !82
  %643 = zext i32 %634 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %633, ptr align 1 %642, i64 %643, i1 false)
  %644 = getelementptr inbounds nuw i8, ptr %624, i64 56
  %645 = load ptr, ptr %644, align 8, !tbaa !19
  %646 = getelementptr inbounds nuw i8, ptr %645, i64 48
  %647 = load i32, ptr %646, align 8, !tbaa !30
  switch i32 %647, label %656 [
    i32 1, label %648
    i32 2, label %652
  ]

648:                                              ; preds = %640
  %649 = getelementptr inbounds nuw i8, ptr %624, i64 96
  %650 = load i64, ptr %649, align 8, !tbaa !59
  %651 = tail call i64 @adler32(i64 noundef %650, ptr noundef %633, i32 noundef %634) #11
  store i64 %651, ptr %649, align 8, !tbaa !59
  br label %656

652:                                              ; preds = %640
  %653 = getelementptr inbounds nuw i8, ptr %624, i64 96
  %654 = load i64, ptr %653, align 8, !tbaa !59
  %655 = tail call i64 @crc32(i64 noundef %654, ptr noundef %633, i32 noundef %634) #11
  store i64 %655, ptr %653, align 8, !tbaa !59
  br label %656

656:                                              ; preds = %652, %648, %640
  %657 = load ptr, ptr %624, align 8, !tbaa !82
  %658 = getelementptr inbounds nuw i8, ptr %657, i64 %643
  store ptr %658, ptr %624, align 8, !tbaa !82
  %659 = getelementptr inbounds nuw i8, ptr %624, i64 16
  %660 = load i64, ptr %659, align 8, !tbaa !55
  %661 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %660, i64 %643), !nosanitize !45
  %662 = extractvalue { i64, i1 } %661, 1, !nosanitize !45
  br i1 %662, label %663, label %664, !prof !46, !nosanitize !45

663:                                              ; preds = %656
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

664:                                              ; preds = %656
  %665 = extractvalue { i64, i1 } %661, 0, !nosanitize !45
  store i64 %665, ptr %659, align 8, !tbaa !55
  %666 = load i32, ptr %82, align 4, !tbaa !75
  br label %667

667:                                              ; preds = %664, %628
  %668 = phi i32 [ %621, %628 ], [ %666, %664 ]
  %669 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %668, i32 %634), !nosanitize !45
  %670 = extractvalue { i32, i1 } %669, 1, !nosanitize !45
  br i1 %670, label %671, label %672, !prof !46, !nosanitize !45

671:                                              ; preds = %667
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

672:                                              ; preds = %667
  %673 = extractvalue { i32, i1 } %669, 0, !nosanitize !45
  store i32 %673, ptr %82, align 4, !tbaa !75
  %674 = load i32, ptr %95, align 4, !tbaa !76
  %675 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %673, i32 %674), !nosanitize !45
  %676 = extractvalue { i32, i1 } %675, 1, !nosanitize !45
  br i1 %676, label %677, label %678, !prof !46, !nosanitize !45

677:                                              ; preds = %672
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

678:                                              ; preds = %672
  %679 = extractvalue { i32, i1 } %675, 0, !nosanitize !45
  %680 = icmp ugt i32 %679, 2
  br i1 %680, label %681, label %.loopexit

681:                                              ; preds = %678
  %682 = load i32, ptr %90, align 4, !tbaa !73
  %683 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %682, i32 %674), !nosanitize !45
  %684 = extractvalue { i32, i1 } %683, 0, !nosanitize !45
  %685 = extractvalue { i32, i1 } %683, 1, !nosanitize !45
  br i1 %685, label %686, label %687, !prof !46, !nosanitize !45

686:                                              ; preds = %681
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

687:                                              ; preds = %681
  %688 = load ptr, ptr %92, align 8, !tbaa !34
  %689 = zext i32 %684 to i64
  %690 = getelementptr inbounds nuw i8, ptr %688, i64 %689
  %691 = load i8, ptr %690, align 1, !tbaa !8
  %692 = zext i8 %691 to i32
  store i32 %692, ptr %100, align 8, !tbaa !80
  %693 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %684, i32 1), !nosanitize !45
  %694 = extractvalue { i32, i1 } %693, 1, !nosanitize !45
  br i1 %694, label %695, label %696, !prof !46, !nosanitize !45

695:                                              ; preds = %687
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

696:                                              ; preds = %687
  %697 = extractvalue { i32, i1 } %693, 0, !nosanitize !45
  %698 = load i32, ptr %101, align 8, !tbaa !53
  %699 = shl i32 %692, %698
  %700 = zext i32 %697 to i64
  %701 = getelementptr inbounds nuw i8, ptr %688, i64 %700
  %702 = load i8, ptr %701, align 1, !tbaa !8
  %703 = zext i8 %702 to i32
  %704 = xor i32 %699, %703
  %705 = load i32, ptr %102, align 4, !tbaa !52
  %706 = and i32 %704, %705
  store i32 %706, ptr %100, align 8, !tbaa !80
  br label %707

707:                                              ; preds = %740, %696
  %708 = phi i32 [ %706, %696 ], [ %725, %740 ]
  %709 = phi i32 [ %674, %696 ], [ %736, %740 ]
  %710 = phi i32 [ %684, %696 ], [ %741, %740 ]
  %711 = icmp eq i32 %709, 0
  br i1 %711, label %.loopexit, label %712

712:                                              ; preds = %707
  %713 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %710, i32 3), !nosanitize !45
  %714 = extractvalue { i32, i1 } %713, 1, !nosanitize !45
  br i1 %714, label %715, label %716, !prof !46, !nosanitize !45

715:                                              ; preds = %712
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

716:                                              ; preds = %712
  %717 = shl i32 %708, %698
  %718 = extractvalue { i32, i1 } %713, 0, !nosanitize !45
  %719 = add i32 %718, -1
  %720 = zext i32 %719 to i64
  %721 = getelementptr inbounds nuw i8, ptr %688, i64 %720
  %722 = load i8, ptr %721, align 1, !tbaa !8
  %723 = zext i8 %722 to i32
  %724 = xor i32 %717, %723
  %725 = and i32 %724, %705
  store i32 %725, ptr %100, align 8, !tbaa !80
  %726 = load ptr, ptr %97, align 8, !tbaa !37
  %727 = zext i32 %725 to i64
  %728 = getelementptr inbounds nuw [2 x i8], ptr %726, i64 %727
  %729 = load i16, ptr %728, align 2, !tbaa !62
  %730 = load ptr, ptr %98, align 8, !tbaa !35
  %731 = load i32, ptr %103, align 8, !tbaa !33
  %732 = and i32 %731, %710
  %733 = zext i32 %732 to i64
  %734 = getelementptr inbounds nuw [2 x i8], ptr %730, i64 %733
  store i16 %729, ptr %734, align 2, !tbaa !62
  %735 = trunc i32 %710 to i16
  store i16 %735, ptr %728, align 2, !tbaa !62
  %736 = add i32 %709, -1
  store i32 %736, ptr %95, align 4, !tbaa !76
  %737 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %673, i32 %736), !nosanitize !45
  %738 = extractvalue { i32, i1 } %737, 1, !nosanitize !45
  br i1 %738, label %739, label %740, !prof !46, !nosanitize !45

739:                                              ; preds = %716
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

740:                                              ; preds = %716
  %741 = add nuw i32 %710, 1
  %742 = extractvalue { i32, i1 } %737, 0, !nosanitize !45
  %743 = icmp ult i32 %742, 3
  br i1 %743, label %.loopexit, label %707, !llvm.loop !91

.loopexit:                                        ; preds = %740, %707, %678
  %744 = icmp ult i32 %673, 262
  br i1 %744, label %745, label %750

745:                                              ; preds = %.loopexit
  %746 = load ptr, ptr %15, align 8, !tbaa !20
  %747 = getelementptr inbounds nuw i8, ptr %746, i64 8
  %748 = load i32, ptr %747, align 8, !tbaa !81
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %750, label %472, !llvm.loop !92

750:                                              ; preds = %745, %.loopexit, %620
  %751 = phi i32 [ %673, %745 ], [ %673, %.loopexit ], [ %621, %620 ]
  %752 = load i64, ptr %385, align 8, !tbaa !38
  %753 = load i64, ptr %89, align 8, !tbaa !61
  %754 = icmp ult i64 %752, %753
  br i1 %754, label %755, label %794

755:                                              ; preds = %750
  %756 = load i32, ptr %90, align 4, !tbaa !73
  %757 = zext i32 %756 to i64
  %758 = zext i32 %751 to i64
  %759 = add nuw nsw i64 %757, %758
  %760 = icmp ult i64 %752, %759
  br i1 %760, label %761, label %771

761:                                              ; preds = %755
  %762 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %753, i64 %759), !nosanitize !45
  %763 = extractvalue { i64, i1 } %762, 1, !nosanitize !45
  br i1 %763, label %764, label %765, !prof !46, !nosanitize !45

764:                                              ; preds = %761
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

765:                                              ; preds = %761
  %766 = extractvalue { i64, i1 } %762, 0, !nosanitize !45
  %767 = tail call i64 @llvm.umin.i64(i64 %766, i64 258)
  %768 = load ptr, ptr %92, align 8, !tbaa !34
  %769 = getelementptr inbounds nuw i8, ptr %768, i64 %759
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %769, i8 0, i64 %767, i1 false)
  %770 = add nuw nsw i64 %767, %759
  br label %791

771:                                              ; preds = %755
  %772 = add nuw nsw i64 %759, 258
  %773 = icmp ult i64 %752, %772
  br i1 %773, label %774, label %794

774:                                              ; preds = %771
  %775 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %753, i64 %752), !nosanitize !45
  %776 = extractvalue { i64, i1 } %775, 1, !nosanitize !45
  br i1 %776, label %777, label %778, !prof !46, !nosanitize !45

777:                                              ; preds = %774
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

778:                                              ; preds = %774
  %779 = sub nuw nsw i64 %772, %752
  %780 = extractvalue { i64, i1 } %775, 0, !nosanitize !45
  %781 = tail call i64 @llvm.umin.i64(i64 %779, i64 %780)
  %782 = load ptr, ptr %92, align 8, !tbaa !34
  %783 = getelementptr inbounds nuw i8, ptr %782, i64 %752
  %784 = and i64 %781, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %783, i8 0, i64 %784, i1 false)
  %785 = load i64, ptr %385, align 8, !tbaa !38
  %786 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %785, i64 %781), !nosanitize !45
  %787 = extractvalue { i64, i1 } %786, 1, !nosanitize !45
  br i1 %787, label %788, label %789, !prof !46, !nosanitize !45

788:                                              ; preds = %778
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

789:                                              ; preds = %778
  %790 = extractvalue { i64, i1 } %786, 0, !nosanitize !45
  br label %791

791:                                              ; preds = %789, %765
  %792 = phi i64 [ %770, %765 ], [ %790, %789 ]
  store i64 %792, ptr %385, align 8, !tbaa !38
  %793 = load i32, ptr %82, align 4, !tbaa !75
  br label %794

794:                                              ; preds = %791, %771, %750
  %795 = phi i32 [ %751, %750 ], [ %751, %771 ], [ %793, %791 ]
  %796 = icmp ugt i32 %795, 2
  br i1 %796, label %.preheader, label %.loopexit44, !llvm.loop !99

.loopexit44:                                      ; preds = %794, %428
  %797 = phi i32 [ %429, %428 ], [ %795, %794 ]
  %798 = load i32, ptr %90, align 4, !tbaa !73
  %799 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %798, i32 %797), !nosanitize !45
  %800 = extractvalue { i32, i1 } %799, 1, !nosanitize !45
  br i1 %800, label %801, label %802, !prof !46, !nosanitize !45

801:                                              ; preds = %.loopexit44
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

802:                                              ; preds = %.loopexit44
  %803 = extractvalue { i32, i1 } %799, 0, !nosanitize !45
  store i32 %803, ptr %90, align 4, !tbaa !73
  %804 = zext i32 %803 to i64
  store i64 %804, ptr %94, align 8, !tbaa !74
  store i32 %797, ptr %95, align 4, !tbaa !76
  store i32 0, ptr %82, align 4, !tbaa !75
  %805 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %805, align 8, !tbaa !77
  %806 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %806, align 8, !tbaa !78
  %807 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %807, align 8, !tbaa !79
  store ptr %88, ptr %0, align 8, !tbaa !82
  store i32 %87, ptr %86, align 8, !tbaa !81
  store i32 %27, ptr %26, align 8, !tbaa !30
  br label %808

808:                                              ; preds = %802, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
  %809 = phi i32 [ 0, %802 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %809
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
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !45
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !45
  br i1 %34, label %35, label %36, !prof !46, !nosanitize !45

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !45
  unreachable, !nosanitize !45

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !45
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
  %29 = load ptr, ptr %28, align 8, !tbaa !58
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
  %38 = load i32, ptr %33, align 4, !tbaa !101
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %38), !nosanitize !45
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !45
  br i1 %40, label %41, label %42, !prof !46, !nosanitize !45

41:                                               ; preds = %58, %42, %35
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

42:                                               ; preds = %35
  %43 = extractvalue { i32, i1 } %39, 0, !nosanitize !45
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %36)
  %45 = shl nuw i32 1, %44
  %46 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %45, i32 -1)
  %47 = extractvalue { i32, i1 } %46, 1, !nosanitize !45
  br i1 %47, label %41, label %48, !prof !46, !nosanitize !45

48:                                               ; preds = %42
  %49 = extractvalue { i32, i1 } %46, 0, !nosanitize !45
  %50 = and i32 %49, %37
  %51 = shl i32 %50, %38
  %52 = load i16, ptr %34, align 8, !tbaa !103
  %53 = trunc i32 %51 to i16
  %54 = or i16 %52, %53
  store i16 %54, ptr %34, align 8, !tbaa !103
  %55 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 %44), !nosanitize !45
  %56 = extractvalue { i32, i1 } %55, 1, !nosanitize !45
  br i1 %56, label %57, label %58, !prof !46, !nosanitize !45

57:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

58:                                               ; preds = %48
  %59 = extractvalue { i32, i1 } %55, 0, !nosanitize !45
  store i32 %59, ptr %33, align 4, !tbaa !101
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #11
  %60 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %36, i32 %44), !nosanitize !45
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !45
  br i1 %61, label %41, label %62, !prof !46, !nosanitize !45

62:                                               ; preds = %58
  %63 = extractvalue { i32, i1 } %60, 0, !nosanitize !45
  %64 = ashr i32 %37, %44
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %.loopexit, label %35, !llvm.loop !104

.loopexit:                                        ; preds = %62, %25, %23, %20, %17, %13, %9, %5, %3
  %66 = phi i32 [ -5, %23 ], [ -2, %13 ], [ -5, %25 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ 0, %62 ]
  ret i32 %66
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1098, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1098, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1098, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1098, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1098

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %1098 [
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
  br i1 %28, label %1098, label %29

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
  br i1 %44, label %1055, label %45

45:                                               ; preds = %34, %29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %47 = load i32, ptr %46, align 4, !tbaa !60
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %1055, label %49

49:                                               ; preds = %45
  switch i32 %22, label %1098 [
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
  br label %1098

68:                                               ; preds = %63, %58
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %70 = load i32, ptr %69, align 8, !tbaa !107
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %73, ptr %74, align 8, !tbaa !9
  br label %1032

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
  br label %142

123:                                              ; preds = %117
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1032

124:                                              ; preds = %75
  br i1 %57, label %126, label %142

125:                                              ; preds = %126
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !45
  unreachable, !nosanitize !45

126:                                              ; preds = %124
  %127 = add i32 %47, 1073741824
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %130, label %125, !prof !93, !nosanitize !45

129:                                              ; preds = %130
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

130:                                              ; preds = %126
  %131 = shl nsw i32 %47, 1
  %132 = icmp sgt i32 %47, 4
  %133 = select i1 %132, i32 9, i32 0
  %134 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %131, i32 %133), !nosanitize !45
  %135 = extractvalue { i32, i1 } %134, 1, !nosanitize !45
  br i1 %135, label %129, label %136, !prof !46, !nosanitize !45

136:                                              ; preds = %130
  %137 = extractvalue { i32, i1 } %134, 0, !nosanitize !45
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %140, ptr %141, align 8, !tbaa !9
  br label %1032

142:                                              ; preds = %136, %124, %121
  %143 = phi i64 [ %118, %121 ], [ 0, %124 ], [ 0, %136 ]
  %144 = phi i32 [ %122, %121 ], [ %22, %124 ], [ %22, %136 ]
  switch i32 %144, label %258 [
    i32 666, label %145
    i32 42, label %151
  ]

145:                                              ; preds = %142
  %146 = load i32, ptr %55, align 8, !tbaa !81
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %990, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %149, ptr %150, align 8, !tbaa !9
  br label %1032

151:                                              ; preds = %142
  %152 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %153 = load i32, ptr %152, align 8, !tbaa !30
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 113, ptr %21, align 8, !tbaa !29
  br label %987

156:                                              ; preds = %151
  %157 = getelementptr inbounds nuw i8, ptr %15, i64 84
  %158 = load i32, ptr %157, align 4, !tbaa !31
  %159 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %158, i32 8), !nosanitize !45
  %160 = extractvalue { i32, i1 } %159, 1, !nosanitize !45
  br i1 %160, label %161, label %162, !prof !46, !nosanitize !45

161:                                              ; preds = %156
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

162:                                              ; preds = %156
  %163 = extractvalue { i32, i1 } %159, 0, !nosanitize !45
  %164 = shl i32 %163, 12
  %165 = load i32, ptr %31, align 8, !tbaa !49
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %175, label %167

167:                                              ; preds = %162
  %168 = load i32, ptr %30, align 4, !tbaa !48
  %169 = icmp slt i32 %168, 2
  br i1 %169, label %175, label %170

170:                                              ; preds = %167
  %171 = icmp samesign ult i32 %168, 6
  br i1 %171, label %175, label %172

172:                                              ; preds = %170
  %173 = icmp eq i32 %168, 6
  %174 = select i1 %173, i32 128, i32 192
  br label %175

175:                                              ; preds = %172, %170, %167, %162
  %176 = phi i32 [ 64, %170 ], [ 0, %162 ], [ %174, %172 ], [ 0, %167 ]
  %177 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %178 = or disjoint i32 %176, %164
  %179 = load i32, ptr %177, align 4, !tbaa !73
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %180, i32 2048, i32 2080
  %182 = or disjoint i32 %181, %178
  %183 = urem i32 %182, 31
  %184 = or disjoint i32 %183, %182
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %143, i64 1), !nosanitize !45
  %186 = extractvalue { i64, i1 } %185, 1, !nosanitize !45
  br i1 %186, label %187, label %188, !prof !46, !nosanitize !45

187:                                              ; preds = %175
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

188:                                              ; preds = %175
  %189 = extractvalue { i64, i1 } %185, 0, !nosanitize !45
  %190 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %191 = load ptr, ptr %190, align 8, !tbaa !40
  %192 = lshr i32 %182, 8
  %193 = trunc i32 %192 to i8
  store i64 %189, ptr %76, align 8, !tbaa !57
  %194 = getelementptr inbounds nuw i8, ptr %191, i64 %143
  store i8 %193, ptr %194, align 1, !tbaa !8
  %195 = load i64, ptr %76, align 8, !tbaa !57
  %196 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %195, i64 1), !nosanitize !45
  %197 = extractvalue { i64, i1 } %196, 1, !nosanitize !45
  br i1 %197, label %198, label %199, !prof !46, !nosanitize !45

198:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

199:                                              ; preds = %188
  %200 = extractvalue { i64, i1 } %196, 0, !nosanitize !45
  %201 = load ptr, ptr %190, align 8, !tbaa !40
  %202 = trunc i32 %184 to i8
  %203 = xor i8 %202, 31
  store i64 %200, ptr %76, align 8, !tbaa !57
  %204 = getelementptr inbounds nuw i8, ptr %201, i64 %195
  store i8 %203, ptr %204, align 1, !tbaa !8
  %205 = load i32, ptr %177, align 4, !tbaa !73
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %250, label %207

207:                                              ; preds = %199
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %209 = load i64, ptr %208, align 8, !tbaa !59
  %210 = lshr i64 %209, 16
  %211 = load i64, ptr %76, align 8, !tbaa !57
  %212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %211, i64 1), !nosanitize !45
  %213 = extractvalue { i64, i1 } %212, 1, !nosanitize !45
  br i1 %213, label %214, label %215, !prof !46, !nosanitize !45

214:                                              ; preds = %207
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

215:                                              ; preds = %207
  %216 = extractvalue { i64, i1 } %212, 0, !nosanitize !45
  %217 = load ptr, ptr %190, align 8, !tbaa !40
  %218 = lshr i64 %209, 24
  %219 = trunc i64 %218 to i8
  store i64 %216, ptr %76, align 8, !tbaa !57
  %220 = getelementptr inbounds nuw i8, ptr %217, i64 %211
  store i8 %219, ptr %220, align 1, !tbaa !8
  %221 = load i64, ptr %76, align 8, !tbaa !57
  %222 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %221, i64 1), !nosanitize !45
  %223 = extractvalue { i64, i1 } %222, 1, !nosanitize !45
  br i1 %223, label %224, label %225, !prof !46, !nosanitize !45

224:                                              ; preds = %215
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

225:                                              ; preds = %215
  %226 = extractvalue { i64, i1 } %222, 0, !nosanitize !45
  %227 = load ptr, ptr %190, align 8, !tbaa !40
  %228 = trunc i64 %210 to i8
  store i64 %226, ptr %76, align 8, !tbaa !57
  %229 = getelementptr inbounds nuw i8, ptr %227, i64 %221
  store i8 %228, ptr %229, align 1, !tbaa !8
  %230 = load i64, ptr %208, align 8, !tbaa !59
  %231 = trunc i64 %230 to i8
  %232 = load i64, ptr %76, align 8, !tbaa !57
  %233 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %232, i64 1), !nosanitize !45
  %234 = extractvalue { i64, i1 } %233, 1, !nosanitize !45
  br i1 %234, label %235, label %236, !prof !46, !nosanitize !45

235:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

236:                                              ; preds = %225
  %237 = extractvalue { i64, i1 } %233, 0, !nosanitize !45
  %238 = load ptr, ptr %190, align 8, !tbaa !40
  %239 = lshr i64 %230, 8
  %240 = trunc i64 %239 to i8
  store i64 %237, ptr %76, align 8, !tbaa !57
  %241 = getelementptr inbounds nuw i8, ptr %238, i64 %232
  store i8 %240, ptr %241, align 1, !tbaa !8
  %242 = load i64, ptr %76, align 8, !tbaa !57
  %243 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %242, i64 1), !nosanitize !45
  %244 = extractvalue { i64, i1 } %243, 1, !nosanitize !45
  br i1 %244, label %245, label %246, !prof !46, !nosanitize !45

245:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

246:                                              ; preds = %236
  %247 = extractvalue { i64, i1 } %243, 0, !nosanitize !45
  %248 = load ptr, ptr %190, align 8, !tbaa !40
  store i64 %247, ptr %76, align 8, !tbaa !57
  %249 = getelementptr inbounds nuw i8, ptr %248, i64 %242
  store i8 %231, ptr %249, align 1, !tbaa !8
  br label %250

250:                                              ; preds = %246, %199
  %251 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %251, ptr %252, align 8, !tbaa !59
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %253 = load i64, ptr %76, align 8, !tbaa !57
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %250
  %256 = load i32, ptr %21, align 8, !tbaa !29
  br label %258

257:                                              ; preds = %250
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1032

258:                                              ; preds = %255, %142
  %259 = phi i32 [ %256, %255 ], [ %144, %142 ]
  %260 = icmp eq i32 %259, 57
  br i1 %260, label %261, label %516

261:                                              ; preds = %258
  %262 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %263 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %262, ptr %263, align 8, !tbaa !59
  %264 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %265 = load i64, ptr %76, align 8, !tbaa !57
  %266 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %265, i64 1), !nosanitize !45
  %267 = extractvalue { i64, i1 } %266, 1, !nosanitize !45
  br i1 %267, label %268, label %269, !prof !46, !nosanitize !45

268:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

269:                                              ; preds = %261
  %270 = extractvalue { i64, i1 } %266, 0, !nosanitize !45
  %271 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %270, ptr %76, align 8, !tbaa !57
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 %265
  store i8 31, ptr %272, align 1, !tbaa !8
  %273 = load i64, ptr %76, align 8, !tbaa !57
  %274 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %273, i64 1), !nosanitize !45
  %275 = extractvalue { i64, i1 } %274, 1, !nosanitize !45
  br i1 %275, label %276, label %277, !prof !46, !nosanitize !45

276:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

277:                                              ; preds = %269
  %278 = extractvalue { i64, i1 } %274, 0, !nosanitize !45
  %279 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %278, ptr %76, align 8, !tbaa !57
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 %273
  store i8 -117, ptr %280, align 1, !tbaa !8
  %281 = load i64, ptr %76, align 8, !tbaa !57
  %282 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %281, i64 1), !nosanitize !45
  %283 = extractvalue { i64, i1 } %282, 1, !nosanitize !45
  br i1 %283, label %284, label %285, !prof !46, !nosanitize !45

284:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

285:                                              ; preds = %277
  %286 = extractvalue { i64, i1 } %282, 0, !nosanitize !45
  %287 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %286, ptr %76, align 8, !tbaa !57
  %288 = getelementptr inbounds nuw i8, ptr %287, i64 %281
  store i8 8, ptr %288, align 1, !tbaa !8
  %289 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %290 = load ptr, ptr %289, align 8, !tbaa !100
  %291 = icmp eq ptr %290, null
  %292 = load i64, ptr %76, align 8, !tbaa !57
  %293 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %292, i64 1), !nosanitize !45
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !45
  br i1 %291, label %295, label %362

295:                                              ; preds = %285
  br i1 %294, label %296, label %297, !prof !46, !nosanitize !45

296:                                              ; preds = %295
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

297:                                              ; preds = %295
  %298 = extractvalue { i64, i1 } %293, 0, !nosanitize !45
  %299 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %298, ptr %76, align 8, !tbaa !57
  %300 = getelementptr inbounds nuw i8, ptr %299, i64 %292
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
  %307 = load ptr, ptr %264, align 8, !tbaa !40
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
  %315 = load ptr, ptr %264, align 8, !tbaa !40
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
  %323 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %322, ptr %76, align 8, !tbaa !57
  %324 = getelementptr inbounds nuw i8, ptr %323, i64 %317
  store i8 0, ptr %324, align 1, !tbaa !8
  %325 = load i64, ptr %76, align 8, !tbaa !57
  %326 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %325, i64 1), !nosanitize !45
  %327 = extractvalue { i64, i1 } %326, 1, !nosanitize !45
  br i1 %327, label %328, label %329, !prof !46, !nosanitize !45

328:                                              ; preds = %321
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

329:                                              ; preds = %321
  %330 = extractvalue { i64, i1 } %326, 0, !nosanitize !45
  %331 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %330, ptr %76, align 8, !tbaa !57
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 %325
  store i8 0, ptr %332, align 1, !tbaa !8
  %333 = load i32, ptr %30, align 4, !tbaa !48
  %334 = icmp eq i32 %333, 9
  br i1 %334, label %341, label %335

335:                                              ; preds = %329
  %336 = load i32, ptr %31, align 8, !tbaa !49
  %337 = icmp sgt i32 %336, 1
  %338 = icmp slt i32 %333, 2
  %339 = or i1 %338, %337
  %340 = select i1 %339, i8 4, i8 0
  br label %341

341:                                              ; preds = %335, %329
  %342 = phi i8 [ %340, %335 ], [ 2, %329 ]
  %343 = load i64, ptr %76, align 8, !tbaa !57
  %344 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %343, i64 1), !nosanitize !45
  %345 = extractvalue { i64, i1 } %344, 1, !nosanitize !45
  br i1 %345, label %346, label %347, !prof !46, !nosanitize !45

346:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

347:                                              ; preds = %341
  %348 = extractvalue { i64, i1 } %344, 0, !nosanitize !45
  %349 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %348, ptr %76, align 8, !tbaa !57
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 %343
  store i8 %342, ptr %350, align 1, !tbaa !8
  %351 = load i64, ptr %76, align 8, !tbaa !57
  %352 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %351, i64 1), !nosanitize !45
  %353 = extractvalue { i64, i1 } %352, 1, !nosanitize !45
  br i1 %353, label %354, label %355, !prof !46, !nosanitize !45

354:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

355:                                              ; preds = %347
  %356 = extractvalue { i64, i1 } %352, 0, !nosanitize !45
  %357 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %356, ptr %76, align 8, !tbaa !57
  %358 = getelementptr inbounds nuw i8, ptr %357, i64 %351
  store i8 3, ptr %358, align 1, !tbaa !8
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %359 = load i64, ptr %76, align 8, !tbaa !57
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %514, label %361

361:                                              ; preds = %355
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1032

362:                                              ; preds = %285
  br i1 %294, label %363, label %364, !prof !46, !nosanitize !45

363:                                              ; preds = %362
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

364:                                              ; preds = %362
  %365 = extractvalue { i64, i1 } %293, 0, !nosanitize !45
  %366 = load ptr, ptr %264, align 8, !tbaa !40
  %367 = getelementptr inbounds nuw i8, ptr %290, i64 56
  %368 = load ptr, ptr %367, align 8, !tbaa !109
  %369 = icmp eq ptr %368, null
  %370 = getelementptr inbounds nuw i8, ptr %290, i64 40
  %371 = load ptr, ptr %370, align 8, !tbaa !111
  %372 = icmp eq ptr %371, null
  %373 = getelementptr inbounds nuw i8, ptr %290, i64 24
  %374 = load ptr, ptr %373, align 8, !tbaa !112
  %375 = icmp eq ptr %374, null
  %376 = load i32, ptr %290, align 8, !tbaa !113
  %377 = icmp ne i32 %376, 0
  %378 = getelementptr inbounds nuw i8, ptr %290, i64 68
  %379 = load i32, ptr %378, align 4, !tbaa !114
  %380 = icmp eq i32 %379, 0
  %381 = select i1 %380, i8 0, i8 2
  %382 = zext i1 %377 to i8
  %383 = select i1 %375, i8 0, i8 4
  %384 = select i1 %372, i8 0, i8 8
  %385 = select i1 %369, i8 0, i8 16
  %386 = or disjoint i8 %384, %385
  %387 = or disjoint i8 %386, %383
  %388 = or disjoint i8 %387, %382
  %389 = or disjoint i8 %388, %381
  store i64 %365, ptr %76, align 8, !tbaa !57
  %390 = getelementptr inbounds nuw i8, ptr %366, i64 %292
  store i8 %389, ptr %390, align 1, !tbaa !8
  %391 = load i64, ptr %76, align 8, !tbaa !57
  %392 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %391, i64 1), !nosanitize !45
  %393 = extractvalue { i64, i1 } %392, 1, !nosanitize !45
  br i1 %393, label %394, label %395, !prof !46, !nosanitize !45

394:                                              ; preds = %364
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

395:                                              ; preds = %364
  %396 = extractvalue { i64, i1 } %392, 0, !nosanitize !45
  %397 = load ptr, ptr %264, align 8, !tbaa !40
  %398 = load ptr, ptr %289, align 8, !tbaa !100
  %399 = getelementptr inbounds nuw i8, ptr %398, i64 8
  %400 = load i64, ptr %399, align 8, !tbaa !115
  %401 = trunc i64 %400 to i8
  store i64 %396, ptr %76, align 8, !tbaa !57
  %402 = getelementptr inbounds nuw i8, ptr %397, i64 %391
  store i8 %401, ptr %402, align 1, !tbaa !8
  %403 = load i64, ptr %76, align 8, !tbaa !57
  %404 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %403, i64 1), !nosanitize !45
  %405 = extractvalue { i64, i1 } %404, 1, !nosanitize !45
  br i1 %405, label %406, label %407, !prof !46, !nosanitize !45

406:                                              ; preds = %395
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

407:                                              ; preds = %395
  %408 = extractvalue { i64, i1 } %404, 0, !nosanitize !45
  %409 = load ptr, ptr %264, align 8, !tbaa !40
  %410 = load ptr, ptr %289, align 8, !tbaa !100
  %411 = getelementptr inbounds nuw i8, ptr %410, i64 8
  %412 = load i64, ptr %411, align 8, !tbaa !115
  %413 = lshr i64 %412, 8
  %414 = trunc i64 %413 to i8
  store i64 %408, ptr %76, align 8, !tbaa !57
  %415 = getelementptr inbounds nuw i8, ptr %409, i64 %403
  store i8 %414, ptr %415, align 1, !tbaa !8
  %416 = load i64, ptr %76, align 8, !tbaa !57
  %417 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %416, i64 1), !nosanitize !45
  %418 = extractvalue { i64, i1 } %417, 1, !nosanitize !45
  br i1 %418, label %419, label %420, !prof !46, !nosanitize !45

419:                                              ; preds = %407
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

420:                                              ; preds = %407
  %421 = extractvalue { i64, i1 } %417, 0, !nosanitize !45
  %422 = load ptr, ptr %264, align 8, !tbaa !40
  %423 = load ptr, ptr %289, align 8, !tbaa !100
  %424 = getelementptr inbounds nuw i8, ptr %423, i64 8
  %425 = load i64, ptr %424, align 8, !tbaa !115
  %426 = lshr i64 %425, 16
  %427 = trunc i64 %426 to i8
  store i64 %421, ptr %76, align 8, !tbaa !57
  %428 = getelementptr inbounds nuw i8, ptr %422, i64 %416
  store i8 %427, ptr %428, align 1, !tbaa !8
  %429 = load i64, ptr %76, align 8, !tbaa !57
  %430 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %429, i64 1), !nosanitize !45
  %431 = extractvalue { i64, i1 } %430, 1, !nosanitize !45
  br i1 %431, label %432, label %433, !prof !46, !nosanitize !45

432:                                              ; preds = %420
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

433:                                              ; preds = %420
  %434 = extractvalue { i64, i1 } %430, 0, !nosanitize !45
  %435 = load ptr, ptr %264, align 8, !tbaa !40
  %436 = load ptr, ptr %289, align 8, !tbaa !100
  %437 = getelementptr inbounds nuw i8, ptr %436, i64 8
  %438 = load i64, ptr %437, align 8, !tbaa !115
  %439 = lshr i64 %438, 24
  %440 = trunc i64 %439 to i8
  store i64 %434, ptr %76, align 8, !tbaa !57
  %441 = getelementptr inbounds nuw i8, ptr %435, i64 %429
  store i8 %440, ptr %441, align 1, !tbaa !8
  %442 = load i32, ptr %30, align 4, !tbaa !48
  %443 = icmp eq i32 %442, 9
  br i1 %443, label %450, label %444

444:                                              ; preds = %433
  %445 = load i32, ptr %31, align 8, !tbaa !49
  %446 = icmp sgt i32 %445, 1
  %447 = icmp slt i32 %442, 2
  %448 = or i1 %447, %446
  %449 = select i1 %448, i8 4, i8 0
  br label %450

450:                                              ; preds = %444, %433
  %451 = phi i8 [ %449, %444 ], [ 2, %433 ]
  %452 = load i64, ptr %76, align 8, !tbaa !57
  %453 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %452, i64 1), !nosanitize !45
  %454 = extractvalue { i64, i1 } %453, 1, !nosanitize !45
  br i1 %454, label %455, label %456, !prof !46, !nosanitize !45

455:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

456:                                              ; preds = %450
  %457 = extractvalue { i64, i1 } %453, 0, !nosanitize !45
  %458 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %457, ptr %76, align 8, !tbaa !57
  %459 = getelementptr inbounds nuw i8, ptr %458, i64 %452
  store i8 %451, ptr %459, align 1, !tbaa !8
  %460 = load i64, ptr %76, align 8, !tbaa !57
  %461 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %460, i64 1), !nosanitize !45
  %462 = extractvalue { i64, i1 } %461, 1, !nosanitize !45
  br i1 %462, label %463, label %464, !prof !46, !nosanitize !45

463:                                              ; preds = %456
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

464:                                              ; preds = %456
  %465 = extractvalue { i64, i1 } %461, 0, !nosanitize !45
  %466 = load ptr, ptr %264, align 8, !tbaa !40
  %467 = load ptr, ptr %289, align 8, !tbaa !100
  %468 = getelementptr inbounds nuw i8, ptr %467, i64 20
  %469 = load i32, ptr %468, align 4, !tbaa !116
  %470 = trunc i32 %469 to i8
  store i64 %465, ptr %76, align 8, !tbaa !57
  %471 = getelementptr inbounds nuw i8, ptr %466, i64 %460
  store i8 %470, ptr %471, align 1, !tbaa !8
  %472 = load ptr, ptr %289, align 8, !tbaa !100
  %473 = getelementptr inbounds nuw i8, ptr %472, i64 24
  %474 = load ptr, ptr %473, align 8, !tbaa !112
  %475 = icmp eq ptr %474, null
  br i1 %475, label %502, label %476

476:                                              ; preds = %464
  %477 = load i64, ptr %76, align 8, !tbaa !57
  %478 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %477, i64 1), !nosanitize !45
  %479 = extractvalue { i64, i1 } %478, 1, !nosanitize !45
  br i1 %479, label %480, label %481, !prof !46, !nosanitize !45

480:                                              ; preds = %476
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

481:                                              ; preds = %476
  %482 = extractvalue { i64, i1 } %478, 0, !nosanitize !45
  %483 = load ptr, ptr %264, align 8, !tbaa !40
  %484 = getelementptr inbounds nuw i8, ptr %472, i64 32
  %485 = load i32, ptr %484, align 8, !tbaa !117
  %486 = trunc i32 %485 to i8
  store i64 %482, ptr %76, align 8, !tbaa !57
  %487 = getelementptr inbounds nuw i8, ptr %483, i64 %477
  store i8 %486, ptr %487, align 1, !tbaa !8
  %488 = load i64, ptr %76, align 8, !tbaa !57
  %489 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %488, i64 1), !nosanitize !45
  %490 = extractvalue { i64, i1 } %489, 1, !nosanitize !45
  br i1 %490, label %491, label %492, !prof !46, !nosanitize !45

491:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

492:                                              ; preds = %481
  %493 = extractvalue { i64, i1 } %489, 0, !nosanitize !45
  %494 = load ptr, ptr %264, align 8, !tbaa !40
  %495 = load ptr, ptr %289, align 8, !tbaa !100
  %496 = getelementptr inbounds nuw i8, ptr %495, i64 32
  %497 = load i32, ptr %496, align 8, !tbaa !117
  %498 = lshr i32 %497, 8
  %499 = trunc i32 %498 to i8
  store i64 %493, ptr %76, align 8, !tbaa !57
  %500 = getelementptr inbounds nuw i8, ptr %494, i64 %488
  store i8 %499, ptr %500, align 1, !tbaa !8
  %501 = load ptr, ptr %289, align 8, !tbaa !100
  br label %502

502:                                              ; preds = %492, %464
  %503 = phi ptr [ %501, %492 ], [ %472, %464 ]
  %504 = getelementptr inbounds nuw i8, ptr %503, i64 68
  %505 = load i32, ptr %504, align 4, !tbaa !114
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %512, label %507

507:                                              ; preds = %502
  %508 = load i64, ptr %263, align 8, !tbaa !59
  %509 = load ptr, ptr %264, align 8, !tbaa !40
  %510 = load i64, ptr %76, align 8, !tbaa !57
  %511 = tail call i64 @crc32_z(i64 noundef %508, ptr noundef %509, i64 noundef %510) #11
  store i64 %511, ptr %263, align 8, !tbaa !59
  br label %512

512:                                              ; preds = %507, %502
  %513 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 0, ptr %513, align 8, !tbaa !118
  store i32 69, ptr %21, align 8, !tbaa !29
  br label %518

514:                                              ; preds = %355
  %515 = load i32, ptr %21, align 8, !tbaa !29
  br label %516

516:                                              ; preds = %514, %258
  %517 = phi i32 [ %515, %514 ], [ %259, %258 ]
  switch i32 %517, label %987 [
    i32 69, label %518
    i32 73, label %719
    i32 91, label %831
    i32 103, label %942
  ]

518:                                              ; preds = %516, %512
  %519 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %520 = load ptr, ptr %519, align 8, !tbaa !100
  %521 = getelementptr inbounds nuw i8, ptr %520, i64 24
  %522 = load ptr, ptr %521, align 8, !tbaa !112
  %523 = icmp eq ptr %522, null
  br i1 %523, label %718, label %524

524:                                              ; preds = %518
  %525 = getelementptr inbounds nuw i8, ptr %520, i64 32
  %526 = load i32, ptr %525, align 8, !tbaa !117
  %527 = and i32 %526, 65535
  %528 = zext nneg i32 %527 to i64
  %529 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %530 = load i64, ptr %529, align 8, !tbaa !118
  %531 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %528, i64 %530), !nosanitize !45
  %532 = extractvalue { i64, i1 } %531, 1, !nosanitize !45
  br i1 %532, label %533, label %534, !prof !46, !nosanitize !45

533:                                              ; preds = %524
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

534:                                              ; preds = %524
  %535 = load i64, ptr %76, align 8, !tbaa !57
  %536 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %537 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %538 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %539 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %540 = extractvalue { i64, i1 } %531, 0
  %541 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %535, i64 %540), !nosanitize !45
  %542 = extractvalue { i64, i1 } %541, 1, !nosanitize !45
  br i1 %542, label %615, label %543, !prof !46, !nosanitize !45

543:                                              ; preds = %534
  %544 = extractvalue { i64, i1 } %541, 0, !nosanitize !45
  %545 = load i64, ptr %536, align 8, !tbaa !41
  %546 = icmp ugt i64 %544, %545
  br i1 %546, label %547, label %691

547:                                              ; preds = %543
  %548 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %545, i64 %535), !nosanitize !45
  %549 = extractvalue { i64, i1 } %548, 0, !nosanitize !45
  %550 = extractvalue { i64, i1 } %548, 1, !nosanitize !45
  br i1 %550, label %620, label %551, !prof !46, !nosanitize !45

551:                                              ; preds = %547
  %552 = load ptr, ptr %537, align 8, !tbaa !40
  %553 = getelementptr inbounds nuw i8, ptr %552, i64 %535
  %554 = getelementptr inbounds nuw i8, ptr %522, i64 %530
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %553, ptr nonnull align 1 %554, i64 %549, i1 false)
  %555 = load i64, ptr %536, align 8, !tbaa !41
  store i64 %555, ptr %76, align 8, !tbaa !57
  %556 = load ptr, ptr %519, align 8, !tbaa !100
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 68
  %558 = load i32, ptr %557, align 4, !tbaa !114
  %559 = icmp ne i32 %558, 0
  %560 = icmp ugt i64 %555, %535
  %561 = select i1 %559, i1 %560, i1 false
  br i1 %561, label %562, label %568

562:                                              ; preds = %551
  %563 = sub nuw i64 %555, %535
  %564 = load ptr, ptr %537, align 8, !tbaa !40
  %565 = getelementptr inbounds nuw i8, ptr %564, i64 %535
  %566 = load i64, ptr %538, align 8, !tbaa !59
  %567 = tail call i64 @crc32_z(i64 noundef %566, ptr noundef %565, i64 noundef %563) #11
  store i64 %567, ptr %538, align 8, !tbaa !59
  br label %568

568:                                              ; preds = %562, %551
  %569 = load i64, ptr %529, align 8, !tbaa !118
  %570 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %569, i64 %549), !nosanitize !45
  %571 = extractvalue { i64, i1 } %570, 1, !nosanitize !45
  br i1 %571, label %.loopexit, label %572, !prof !46, !nosanitize !45

572:                                              ; preds = %568
  %573 = extractvalue { i64, i1 } %570, 0, !nosanitize !45
  store i64 %573, ptr %529, align 8, !tbaa !118
  %574 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %574) #11
  %575 = getelementptr inbounds nuw i8, ptr %574, i64 40
  %576 = load i64, ptr %575, align 8, !tbaa !57
  %577 = load i32, ptr %69, align 8, !tbaa !107
  %578 = zext i32 %577 to i64
  %579 = tail call i64 @llvm.umin.i64(i64 %576, i64 %578)
  %580 = trunc nuw i64 %579 to i32
  %581 = icmp eq i64 %579, 0
  br i1 %581, label %609, label %582

582:                                              ; preds = %572
  %583 = load ptr, ptr %51, align 8, !tbaa !106
  %584 = getelementptr inbounds nuw i8, ptr %574, i64 32
  %585 = load ptr, ptr %584, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %583, ptr align 1 %585, i64 %579, i1 false)
  %586 = load ptr, ptr %51, align 8, !tbaa !106
  %587 = getelementptr inbounds nuw i8, ptr %586, i64 %579
  store ptr %587, ptr %51, align 8, !tbaa !106
  %588 = load ptr, ptr %584, align 8, !tbaa !58
  %589 = getelementptr inbounds nuw i8, ptr %588, i64 %579
  store ptr %589, ptr %584, align 8, !tbaa !58
  %590 = load i64, ptr %539, align 8, !tbaa !108
  %591 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %590, i64 %579), !nosanitize !45
  %592 = extractvalue { i64, i1 } %591, 1, !nosanitize !45
  br i1 %592, label %.loopexit37, label %593, !prof !46, !nosanitize !45

593:                                              ; preds = %582
  %594 = extractvalue { i64, i1 } %591, 0, !nosanitize !45
  store i64 %594, ptr %539, align 8, !tbaa !108
  %595 = load i32, ptr %69, align 8, !tbaa !107
  %596 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %595, i32 %580), !nosanitize !45
  %597 = extractvalue { i32, i1 } %596, 1, !nosanitize !45
  br i1 %597, label %.loopexit38, label %598, !prof !46, !nosanitize !45

598:                                              ; preds = %593
  %599 = extractvalue { i32, i1 } %596, 0, !nosanitize !45
  store i32 %599, ptr %69, align 8, !tbaa !107
  %600 = load i64, ptr %575, align 8, !tbaa !57
  %601 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %600, i64 %579), !nosanitize !45
  %602 = extractvalue { i64, i1 } %601, 1, !nosanitize !45
  br i1 %602, label %.loopexit39, label %603, !prof !46, !nosanitize !45

603:                                              ; preds = %598
  %604 = extractvalue { i64, i1 } %601, 0, !nosanitize !45
  store i64 %604, ptr %575, align 8, !tbaa !57
  %605 = icmp eq i64 %604, 0
  br i1 %605, label %606, label %609

606:                                              ; preds = %603
  %607 = getelementptr inbounds nuw i8, ptr %574, i64 16
  %608 = load ptr, ptr %607, align 8, !tbaa !40
  store ptr %608, ptr %584, align 8, !tbaa !58
  br label %609

609:                                              ; preds = %606, %603, %572
  %610 = load i64, ptr %76, align 8, !tbaa !57
  %611 = icmp eq i64 %610, 0
  br i1 %611, label %612, label %.loopexit40

612:                                              ; preds = %609
  %613 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %540, i64 %549), !nosanitize !45
  %614 = extractvalue { i64, i1 } %613, 1, !nosanitize !45
  br i1 %614, label %.loopexit41, label %.preheader, !prof !46, !nosanitize !45

615:                                              ; preds = %534
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

.preheader:                                       ; preds = %612, %683
  %616 = phi { i64, i1 } [ %684, %683 ], [ %613, %612 ]
  %617 = extractvalue { i64, i1 } %616, 0
  %618 = load i64, ptr %536, align 8, !tbaa !41
  %619 = icmp ugt i64 %617, %618
  br i1 %619, label %621, label %686

620:                                              ; preds = %547
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

621:                                              ; preds = %.preheader
  %622 = load ptr, ptr %537, align 8, !tbaa !40
  %623 = load ptr, ptr %519, align 8, !tbaa !100
  %624 = getelementptr inbounds nuw i8, ptr %623, i64 24
  %625 = load ptr, ptr %624, align 8, !tbaa !112
  %626 = load i64, ptr %529, align 8, !tbaa !118
  %627 = getelementptr inbounds nuw i8, ptr %625, i64 %626
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %622, ptr align 1 %627, i64 %618, i1 false)
  %628 = load i64, ptr %536, align 8, !tbaa !41
  store i64 %628, ptr %76, align 8, !tbaa !57
  %629 = load ptr, ptr %519, align 8, !tbaa !100
  %630 = getelementptr inbounds nuw i8, ptr %629, i64 68
  %631 = load i32, ptr %630, align 4, !tbaa !114
  %632 = icmp ne i32 %631, 0
  %633 = icmp ne i64 %628, 0
  %634 = select i1 %632, i1 %633, i1 false
  br i1 %634, label %635, label %639

635:                                              ; preds = %621
  %636 = load ptr, ptr %537, align 8, !tbaa !40
  %637 = load i64, ptr %538, align 8, !tbaa !59
  %638 = tail call i64 @crc32_z(i64 noundef %637, ptr noundef %636, i64 noundef %628) #11
  store i64 %638, ptr %538, align 8, !tbaa !59
  br label %639

639:                                              ; preds = %635, %621
  %640 = load i64, ptr %529, align 8, !tbaa !118
  %641 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %640, i64 %618), !nosanitize !45
  %642 = extractvalue { i64, i1 } %641, 1, !nosanitize !45
  br i1 %642, label %.loopexit, label %643, !prof !46, !nosanitize !45

.loopexit:                                        ; preds = %639, %568
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

643:                                              ; preds = %639
  %644 = extractvalue { i64, i1 } %641, 0, !nosanitize !45
  store i64 %644, ptr %529, align 8, !tbaa !118
  %645 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %645) #11
  %646 = getelementptr inbounds nuw i8, ptr %645, i64 40
  %647 = load i64, ptr %646, align 8, !tbaa !57
  %648 = load i32, ptr %69, align 8, !tbaa !107
  %649 = zext i32 %648 to i64
  %650 = tail call i64 @llvm.umin.i64(i64 %647, i64 %649)
  %651 = trunc nuw i64 %650 to i32
  %652 = icmp eq i64 %650, 0
  br i1 %652, label %680, label %653

653:                                              ; preds = %643
  %654 = load ptr, ptr %51, align 8, !tbaa !106
  %655 = getelementptr inbounds nuw i8, ptr %645, i64 32
  %656 = load ptr, ptr %655, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %654, ptr align 1 %656, i64 %650, i1 false)
  %657 = load ptr, ptr %51, align 8, !tbaa !106
  %658 = getelementptr inbounds nuw i8, ptr %657, i64 %650
  store ptr %658, ptr %51, align 8, !tbaa !106
  %659 = load ptr, ptr %655, align 8, !tbaa !58
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 %650
  store ptr %660, ptr %655, align 8, !tbaa !58
  %661 = load i64, ptr %539, align 8, !tbaa !108
  %662 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %661, i64 %650), !nosanitize !45
  %663 = extractvalue { i64, i1 } %662, 1, !nosanitize !45
  br i1 %663, label %.loopexit37, label %664, !prof !46, !nosanitize !45

.loopexit37:                                      ; preds = %653, %582
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

664:                                              ; preds = %653
  %665 = extractvalue { i64, i1 } %662, 0, !nosanitize !45
  store i64 %665, ptr %539, align 8, !tbaa !108
  %666 = load i32, ptr %69, align 8, !tbaa !107
  %667 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %666, i32 %651), !nosanitize !45
  %668 = extractvalue { i32, i1 } %667, 1, !nosanitize !45
  br i1 %668, label %.loopexit38, label %669, !prof !46, !nosanitize !45

.loopexit38:                                      ; preds = %664, %593
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

669:                                              ; preds = %664
  %670 = extractvalue { i32, i1 } %667, 0, !nosanitize !45
  store i32 %670, ptr %69, align 8, !tbaa !107
  %671 = load i64, ptr %646, align 8, !tbaa !57
  %672 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %671, i64 %650), !nosanitize !45
  %673 = extractvalue { i64, i1 } %672, 1, !nosanitize !45
  br i1 %673, label %.loopexit39, label %674, !prof !46, !nosanitize !45

.loopexit39:                                      ; preds = %669, %598
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

674:                                              ; preds = %669
  %675 = extractvalue { i64, i1 } %672, 0, !nosanitize !45
  store i64 %675, ptr %646, align 8, !tbaa !57
  %676 = icmp eq i64 %675, 0
  br i1 %676, label %677, label %680

677:                                              ; preds = %674
  %678 = getelementptr inbounds nuw i8, ptr %645, i64 16
  %679 = load ptr, ptr %678, align 8, !tbaa !40
  store ptr %679, ptr %655, align 8, !tbaa !58
  br label %680

680:                                              ; preds = %677, %674, %643
  %681 = load i64, ptr %76, align 8, !tbaa !57
  %682 = icmp eq i64 %681, 0
  br i1 %682, label %683, label %.loopexit40

.loopexit40:                                      ; preds = %680, %609
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1032

683:                                              ; preds = %680
  %684 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %617, i64 %618), !nosanitize !45
  %685 = extractvalue { i64, i1 } %684, 1, !nosanitize !45
  br i1 %685, label %.loopexit41, label %.preheader, !prof !46, !llvm.loop !119, !nosanitize !45

.loopexit41:                                      ; preds = %683, %612
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

686:                                              ; preds = %.preheader
  %687 = load ptr, ptr %519, align 8, !tbaa !100
  %688 = getelementptr inbounds nuw i8, ptr %687, i64 24
  %689 = load ptr, ptr %688, align 8, !tbaa !112
  %690 = load i64, ptr %529, align 8, !tbaa !118
  br label %691

691:                                              ; preds = %686, %543
  %692 = phi i64 [ %530, %543 ], [ %690, %686 ]
  %693 = phi ptr [ %522, %543 ], [ %689, %686 ]
  %694 = phi i64 [ %535, %543 ], [ 0, %686 ]
  %695 = phi i64 [ %540, %543 ], [ %617, %686 ]
  %696 = load ptr, ptr %537, align 8, !tbaa !40
  %697 = getelementptr inbounds nuw i8, ptr %696, i64 %694
  %698 = getelementptr inbounds nuw i8, ptr %693, i64 %692
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %697, ptr align 1 %698, i64 %695, i1 false)
  %699 = load i64, ptr %76, align 8, !tbaa !57
  %700 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %699, i64 %695), !nosanitize !45
  %701 = extractvalue { i64, i1 } %700, 0, !nosanitize !45
  %702 = extractvalue { i64, i1 } %700, 1, !nosanitize !45
  br i1 %702, label %703, label %704, !prof !46, !nosanitize !45

703:                                              ; preds = %691
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

704:                                              ; preds = %691
  store i64 %701, ptr %76, align 8, !tbaa !57
  %705 = load ptr, ptr %519, align 8, !tbaa !100
  %706 = getelementptr inbounds nuw i8, ptr %705, i64 68
  %707 = load i32, ptr %706, align 4, !tbaa !114
  %708 = icmp ne i32 %707, 0
  %709 = icmp ugt i64 %701, %694
  %710 = select i1 %708, i1 %709, i1 false
  br i1 %710, label %711, label %717

711:                                              ; preds = %704
  %712 = sub nuw i64 %701, %694
  %713 = load ptr, ptr %537, align 8, !tbaa !40
  %714 = getelementptr inbounds nuw i8, ptr %713, i64 %694
  %715 = load i64, ptr %538, align 8, !tbaa !59
  %716 = tail call i64 @crc32_z(i64 noundef %715, ptr noundef %714, i64 noundef %712) #11
  store i64 %716, ptr %538, align 8, !tbaa !59
  br label %717

717:                                              ; preds = %711, %704
  store i64 0, ptr %529, align 8, !tbaa !118
  br label %718

718:                                              ; preds = %717, %518
  store i32 73, ptr %21, align 8, !tbaa !29
  br label %719

719:                                              ; preds = %718, %516
  %720 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %721 = load ptr, ptr %720, align 8, !tbaa !100
  %722 = getelementptr inbounds nuw i8, ptr %721, i64 40
  %723 = load ptr, ptr %722, align 8, !tbaa !111
  %724 = icmp eq ptr %723, null
  br i1 %724, label %830, label %725

725:                                              ; preds = %719
  %726 = load i64, ptr %76, align 8, !tbaa !57
  %727 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %728 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %729 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %730 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %731 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %732

732:                                              ; preds = %808, %725
  %733 = phi i64 [ %726, %725 ], [ %795, %808 ]
  %734 = load i64, ptr %76, align 8, !tbaa !57
  %735 = load i64, ptr %727, align 8, !tbaa !41
  %736 = icmp eq i64 %734, %735
  br i1 %736, label %737, label %793

737:                                              ; preds = %732
  %738 = load ptr, ptr %720, align 8, !tbaa !100
  %739 = getelementptr inbounds nuw i8, ptr %738, i64 68
  %740 = load i32, ptr %739, align 4, !tbaa !114
  %741 = icmp ne i32 %740, 0
  %742 = icmp ugt i64 %734, %733
  %743 = select i1 %741, i1 %742, i1 false
  br i1 %743, label %744, label %750

744:                                              ; preds = %737
  %745 = sub nuw i64 %734, %733
  %746 = load ptr, ptr %728, align 8, !tbaa !40
  %747 = getelementptr inbounds nuw i8, ptr %746, i64 %733
  %748 = load i64, ptr %729, align 8, !tbaa !59
  %749 = tail call i64 @crc32_z(i64 noundef %748, ptr noundef %747, i64 noundef %745) #11
  store i64 %749, ptr %729, align 8, !tbaa !59
  br label %750

750:                                              ; preds = %744, %737
  %751 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %751) #11
  %752 = getelementptr inbounds nuw i8, ptr %751, i64 40
  %753 = load i64, ptr %752, align 8, !tbaa !57
  %754 = load i32, ptr %69, align 8, !tbaa !107
  %755 = zext i32 %754 to i64
  %756 = tail call i64 @llvm.umin.i64(i64 %753, i64 %755)
  %757 = trunc nuw i64 %756 to i32
  %758 = icmp eq i64 %756, 0
  br i1 %758, label %789, label %759

759:                                              ; preds = %750
  %760 = load ptr, ptr %51, align 8, !tbaa !106
  %761 = getelementptr inbounds nuw i8, ptr %751, i64 32
  %762 = load ptr, ptr %761, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %760, ptr align 1 %762, i64 %756, i1 false)
  %763 = load ptr, ptr %51, align 8, !tbaa !106
  %764 = getelementptr inbounds nuw i8, ptr %763, i64 %756
  store ptr %764, ptr %51, align 8, !tbaa !106
  %765 = load ptr, ptr %761, align 8, !tbaa !58
  %766 = getelementptr inbounds nuw i8, ptr %765, i64 %756
  store ptr %766, ptr %761, align 8, !tbaa !58
  %767 = load i64, ptr %730, align 8, !tbaa !108
  %768 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %767, i64 %756), !nosanitize !45
  %769 = extractvalue { i64, i1 } %768, 1, !nosanitize !45
  br i1 %769, label %770, label %771, !prof !46, !nosanitize !45

770:                                              ; preds = %759
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

771:                                              ; preds = %759
  %772 = extractvalue { i64, i1 } %768, 0, !nosanitize !45
  store i64 %772, ptr %730, align 8, !tbaa !108
  %773 = load i32, ptr %69, align 8, !tbaa !107
  %774 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %773, i32 %757), !nosanitize !45
  %775 = extractvalue { i32, i1 } %774, 1, !nosanitize !45
  br i1 %775, label %776, label %777, !prof !46, !nosanitize !45

776:                                              ; preds = %771
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

777:                                              ; preds = %771
  %778 = extractvalue { i32, i1 } %774, 0, !nosanitize !45
  store i32 %778, ptr %69, align 8, !tbaa !107
  %779 = load i64, ptr %752, align 8, !tbaa !57
  %780 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %779, i64 %756), !nosanitize !45
  %781 = extractvalue { i64, i1 } %780, 1, !nosanitize !45
  br i1 %781, label %782, label %783, !prof !46, !nosanitize !45

782:                                              ; preds = %777
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

783:                                              ; preds = %777
  %784 = extractvalue { i64, i1 } %780, 0, !nosanitize !45
  store i64 %784, ptr %752, align 8, !tbaa !57
  %785 = icmp eq i64 %784, 0
  br i1 %785, label %786, label %789

786:                                              ; preds = %783
  %787 = getelementptr inbounds nuw i8, ptr %751, i64 16
  %788 = load ptr, ptr %787, align 8, !tbaa !40
  store ptr %788, ptr %761, align 8, !tbaa !58
  br label %789

789:                                              ; preds = %786, %783, %750
  %790 = load i64, ptr %76, align 8, !tbaa !57
  %791 = icmp eq i64 %790, 0
  br i1 %791, label %793, label %792

792:                                              ; preds = %789
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1032

793:                                              ; preds = %789, %732
  %794 = phi i64 [ %734, %732 ], [ 0, %789 ]
  %795 = phi i64 [ %733, %732 ], [ 0, %789 ]
  %796 = load i64, ptr %731, align 8, !tbaa !118
  %797 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %796, i64 1), !nosanitize !45
  %798 = extractvalue { i64, i1 } %797, 1, !nosanitize !45
  br i1 %798, label %799, label %800, !prof !46, !nosanitize !45

799:                                              ; preds = %793
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

800:                                              ; preds = %793
  %801 = extractvalue { i64, i1 } %797, 0, !nosanitize !45
  %802 = load ptr, ptr %720, align 8, !tbaa !100
  %803 = getelementptr inbounds nuw i8, ptr %802, i64 40
  %804 = load ptr, ptr %803, align 8, !tbaa !111
  store i64 %801, ptr %731, align 8, !tbaa !118
  %805 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %794, i64 1), !nosanitize !45
  %806 = extractvalue { i64, i1 } %805, 1, !nosanitize !45
  br i1 %806, label %807, label %808, !prof !46, !nosanitize !45

807:                                              ; preds = %800
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

808:                                              ; preds = %800
  %809 = extractvalue { i64, i1 } %805, 0, !nosanitize !45
  %810 = load ptr, ptr %728, align 8, !tbaa !40
  %811 = getelementptr inbounds nuw i8, ptr %804, i64 %796
  %812 = load i8, ptr %811, align 1, !tbaa !8
  store i64 %809, ptr %76, align 8, !tbaa !57
  %813 = getelementptr inbounds nuw i8, ptr %810, i64 %794
  store i8 %812, ptr %813, align 1, !tbaa !8
  %814 = icmp eq i8 %812, 0
  br i1 %814, label %815, label %732, !llvm.loop !122

815:                                              ; preds = %808
  %816 = load ptr, ptr %720, align 8, !tbaa !100
  %817 = getelementptr inbounds nuw i8, ptr %816, i64 68
  %818 = load i32, ptr %817, align 4, !tbaa !114
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %829, label %820

820:                                              ; preds = %815
  %821 = load i64, ptr %76, align 8, !tbaa !57
  %822 = icmp ugt i64 %821, %795
  br i1 %822, label %823, label %829

823:                                              ; preds = %820
  %824 = sub nuw i64 %821, %795
  %825 = load ptr, ptr %728, align 8, !tbaa !40
  %826 = getelementptr inbounds nuw i8, ptr %825, i64 %795
  %827 = load i64, ptr %729, align 8, !tbaa !59
  %828 = tail call i64 @crc32_z(i64 noundef %827, ptr noundef %826, i64 noundef %824) #11
  store i64 %828, ptr %729, align 8, !tbaa !59
  br label %829

829:                                              ; preds = %823, %820, %815
  store i64 0, ptr %731, align 8, !tbaa !118
  br label %830

830:                                              ; preds = %829, %719
  store i32 91, ptr %21, align 8, !tbaa !29
  br label %831

831:                                              ; preds = %830, %516
  %832 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %833 = load ptr, ptr %832, align 8, !tbaa !100
  %834 = getelementptr inbounds nuw i8, ptr %833, i64 56
  %835 = load ptr, ptr %834, align 8, !tbaa !109
  %836 = icmp eq ptr %835, null
  br i1 %836, label %941, label %837

837:                                              ; preds = %831
  %838 = load i64, ptr %76, align 8, !tbaa !57
  %839 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %840 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %841 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %842 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %843 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %844

844:                                              ; preds = %920, %837
  %845 = phi i64 [ %838, %837 ], [ %907, %920 ]
  %846 = load i64, ptr %76, align 8, !tbaa !57
  %847 = load i64, ptr %839, align 8, !tbaa !41
  %848 = icmp eq i64 %846, %847
  br i1 %848, label %849, label %905

849:                                              ; preds = %844
  %850 = load ptr, ptr %832, align 8, !tbaa !100
  %851 = getelementptr inbounds nuw i8, ptr %850, i64 68
  %852 = load i32, ptr %851, align 4, !tbaa !114
  %853 = icmp ne i32 %852, 0
  %854 = icmp ugt i64 %846, %845
  %855 = select i1 %853, i1 %854, i1 false
  br i1 %855, label %856, label %862

856:                                              ; preds = %849
  %857 = sub nuw i64 %846, %845
  %858 = load ptr, ptr %840, align 8, !tbaa !40
  %859 = getelementptr inbounds nuw i8, ptr %858, i64 %845
  %860 = load i64, ptr %841, align 8, !tbaa !59
  %861 = tail call i64 @crc32_z(i64 noundef %860, ptr noundef %859, i64 noundef %857) #11
  store i64 %861, ptr %841, align 8, !tbaa !59
  br label %862

862:                                              ; preds = %856, %849
  %863 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %863) #11
  %864 = getelementptr inbounds nuw i8, ptr %863, i64 40
  %865 = load i64, ptr %864, align 8, !tbaa !57
  %866 = load i32, ptr %69, align 8, !tbaa !107
  %867 = zext i32 %866 to i64
  %868 = tail call i64 @llvm.umin.i64(i64 %865, i64 %867)
  %869 = trunc nuw i64 %868 to i32
  %870 = icmp eq i64 %868, 0
  br i1 %870, label %901, label %871

871:                                              ; preds = %862
  %872 = load ptr, ptr %51, align 8, !tbaa !106
  %873 = getelementptr inbounds nuw i8, ptr %863, i64 32
  %874 = load ptr, ptr %873, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %872, ptr align 1 %874, i64 %868, i1 false)
  %875 = load ptr, ptr %51, align 8, !tbaa !106
  %876 = getelementptr inbounds nuw i8, ptr %875, i64 %868
  store ptr %876, ptr %51, align 8, !tbaa !106
  %877 = load ptr, ptr %873, align 8, !tbaa !58
  %878 = getelementptr inbounds nuw i8, ptr %877, i64 %868
  store ptr %878, ptr %873, align 8, !tbaa !58
  %879 = load i64, ptr %842, align 8, !tbaa !108
  %880 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %879, i64 %868), !nosanitize !45
  %881 = extractvalue { i64, i1 } %880, 1, !nosanitize !45
  br i1 %881, label %882, label %883, !prof !46, !nosanitize !45

882:                                              ; preds = %871
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

883:                                              ; preds = %871
  %884 = extractvalue { i64, i1 } %880, 0, !nosanitize !45
  store i64 %884, ptr %842, align 8, !tbaa !108
  %885 = load i32, ptr %69, align 8, !tbaa !107
  %886 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %885, i32 %869), !nosanitize !45
  %887 = extractvalue { i32, i1 } %886, 1, !nosanitize !45
  br i1 %887, label %888, label %889, !prof !46, !nosanitize !45

888:                                              ; preds = %883
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

889:                                              ; preds = %883
  %890 = extractvalue { i32, i1 } %886, 0, !nosanitize !45
  store i32 %890, ptr %69, align 8, !tbaa !107
  %891 = load i64, ptr %864, align 8, !tbaa !57
  %892 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %891, i64 %868), !nosanitize !45
  %893 = extractvalue { i64, i1 } %892, 1, !nosanitize !45
  br i1 %893, label %894, label %895, !prof !46, !nosanitize !45

894:                                              ; preds = %889
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

895:                                              ; preds = %889
  %896 = extractvalue { i64, i1 } %892, 0, !nosanitize !45
  store i64 %896, ptr %864, align 8, !tbaa !57
  %897 = icmp eq i64 %896, 0
  br i1 %897, label %898, label %901

898:                                              ; preds = %895
  %899 = getelementptr inbounds nuw i8, ptr %863, i64 16
  %900 = load ptr, ptr %899, align 8, !tbaa !40
  store ptr %900, ptr %873, align 8, !tbaa !58
  br label %901

901:                                              ; preds = %898, %895, %862
  %902 = load i64, ptr %76, align 8, !tbaa !57
  %903 = icmp eq i64 %902, 0
  br i1 %903, label %905, label %904

904:                                              ; preds = %901
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1032

905:                                              ; preds = %901, %844
  %906 = phi i64 [ %846, %844 ], [ 0, %901 ]
  %907 = phi i64 [ %845, %844 ], [ 0, %901 ]
  %908 = load i64, ptr %843, align 8, !tbaa !118
  %909 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %908, i64 1), !nosanitize !45
  %910 = extractvalue { i64, i1 } %909, 1, !nosanitize !45
  br i1 %910, label %911, label %912, !prof !46, !nosanitize !45

911:                                              ; preds = %905
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

912:                                              ; preds = %905
  %913 = extractvalue { i64, i1 } %909, 0, !nosanitize !45
  %914 = load ptr, ptr %832, align 8, !tbaa !100
  %915 = getelementptr inbounds nuw i8, ptr %914, i64 56
  %916 = load ptr, ptr %915, align 8, !tbaa !109
  store i64 %913, ptr %843, align 8, !tbaa !118
  %917 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %906, i64 1), !nosanitize !45
  %918 = extractvalue { i64, i1 } %917, 1, !nosanitize !45
  br i1 %918, label %919, label %920, !prof !46, !nosanitize !45

919:                                              ; preds = %912
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

920:                                              ; preds = %912
  %921 = extractvalue { i64, i1 } %917, 0, !nosanitize !45
  %922 = load ptr, ptr %840, align 8, !tbaa !40
  %923 = getelementptr inbounds nuw i8, ptr %916, i64 %908
  %924 = load i8, ptr %923, align 1, !tbaa !8
  store i64 %921, ptr %76, align 8, !tbaa !57
  %925 = getelementptr inbounds nuw i8, ptr %922, i64 %906
  store i8 %924, ptr %925, align 1, !tbaa !8
  %926 = icmp eq i8 %924, 0
  br i1 %926, label %927, label %844, !llvm.loop !123

927:                                              ; preds = %920
  %928 = load ptr, ptr %832, align 8, !tbaa !100
  %929 = getelementptr inbounds nuw i8, ptr %928, i64 68
  %930 = load i32, ptr %929, align 4, !tbaa !114
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %941, label %932

932:                                              ; preds = %927
  %933 = load i64, ptr %76, align 8, !tbaa !57
  %934 = icmp ugt i64 %933, %907
  br i1 %934, label %935, label %941

935:                                              ; preds = %932
  %936 = sub nuw i64 %933, %907
  %937 = load ptr, ptr %840, align 8, !tbaa !40
  %938 = getelementptr inbounds nuw i8, ptr %937, i64 %907
  %939 = load i64, ptr %841, align 8, !tbaa !59
  %940 = tail call i64 @crc32_z(i64 noundef %939, ptr noundef %938, i64 noundef %936) #11
  store i64 %940, ptr %841, align 8, !tbaa !59
  br label %941

941:                                              ; preds = %935, %932, %927, %831
  store i32 103, ptr %21, align 8, !tbaa !29
  br label %942

942:                                              ; preds = %941, %516
  %943 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %944 = load ptr, ptr %943, align 8, !tbaa !100
  %945 = getelementptr inbounds nuw i8, ptr %944, i64 68
  %946 = load i32, ptr %945, align 4, !tbaa !114
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %983, label %948

948:                                              ; preds = %942
  %949 = load i64, ptr %76, align 8, !tbaa !57
  %950 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %949, i64 2), !nosanitize !45
  %951 = extractvalue { i64, i1 } %950, 1, !nosanitize !45
  br i1 %951, label %952, label %953, !prof !46, !nosanitize !45

952:                                              ; preds = %948
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

953:                                              ; preds = %948
  %954 = extractvalue { i64, i1 } %950, 0, !nosanitize !45
  %955 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %956 = load i64, ptr %955, align 8, !tbaa !41
  %957 = icmp ugt i64 %954, %956
  br i1 %957, label %958, label %962

958:                                              ; preds = %953
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %959 = load i64, ptr %76, align 8, !tbaa !57
  %960 = icmp eq i64 %959, 0
  br i1 %960, label %962, label %961

961:                                              ; preds = %958
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1032

962:                                              ; preds = %958, %953
  %963 = phi i64 [ 0, %958 ], [ %949, %953 ]
  %964 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %965 = add nuw i64 %963, 1
  %966 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %967 = load ptr, ptr %966, align 8, !tbaa !40
  %968 = load i64, ptr %964, align 8, !tbaa !59
  %969 = trunc i64 %968 to i8
  store i64 %965, ptr %76, align 8, !tbaa !57
  %970 = getelementptr inbounds nuw i8, ptr %967, i64 %963
  store i8 %969, ptr %970, align 1, !tbaa !8
  %971 = load i64, ptr %76, align 8, !tbaa !57
  %972 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %971, i64 1), !nosanitize !45
  %973 = extractvalue { i64, i1 } %972, 1, !nosanitize !45
  br i1 %973, label %974, label %975, !prof !46, !nosanitize !45

974:                                              ; preds = %962
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

975:                                              ; preds = %962
  %976 = extractvalue { i64, i1 } %972, 0, !nosanitize !45
  %977 = load ptr, ptr %966, align 8, !tbaa !40
  %978 = load i64, ptr %964, align 8, !tbaa !59
  %979 = lshr i64 %978, 8
  %980 = trunc i64 %979 to i8
  store i64 %976, ptr %76, align 8, !tbaa !57
  %981 = getelementptr inbounds nuw i8, ptr %977, i64 %971
  store i8 %980, ptr %981, align 1, !tbaa !8
  %982 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %982, ptr %964, align 8, !tbaa !59
  br label %983

983:                                              ; preds = %975, %942
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %984 = load i64, ptr %76, align 8, !tbaa !57
  %985 = icmp eq i64 %984, 0
  br i1 %985, label %987, label %986

986:                                              ; preds = %983
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1032

987:                                              ; preds = %983, %516, %155
  %988 = load i32, ptr %55, align 8, !tbaa !81
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %990, label %997

990:                                              ; preds = %987, %145
  %991 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %992 = load i32, ptr %991, align 4, !tbaa !75
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %994, label %997

994:                                              ; preds = %990
  %995 = load i32, ptr %21, align 8, !tbaa !29
  %996 = icmp eq i32 %995, 666
  br i1 %996, label %1032, label %997

997:                                              ; preds = %994, %990, %987
  %998 = load i32, ptr %30, align 4, !tbaa !48
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1000, label %1002

1000:                                             ; preds = %997
  %1001 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %1014

1002:                                             ; preds = %997
  %1003 = load i32, ptr %31, align 8, !tbaa !49
  switch i32 %1003, label %1008 [
    i32 2, label %1004
    i32 3, label %1006
  ]

1004:                                             ; preds = %1002
  %1005 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %1014

1006:                                             ; preds = %1002
  %1007 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %1014

1008:                                             ; preds = %1002
  %1009 = sext i32 %998 to i64
  %1010 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1009
  %1011 = getelementptr inbounds nuw i8, ptr %1010, i64 8
  %1012 = load ptr, ptr %1011, align 8, !tbaa !105
  %1013 = tail call i32 %1012(ptr noundef nonnull %15, i32 noundef 5) #11, !inline_history !124
  br label %1014

1014:                                             ; preds = %1008, %1006, %1004, %1000
  %1015 = phi i32 [ %1001, %1000 ], [ %1005, %1004 ], [ %1007, %1006 ], [ %1013, %1008 ]
  %1016 = and i32 %1015, -2
  %1017 = icmp eq i32 %1016, 2
  br i1 %1017, label %1018, label %1019

1018:                                             ; preds = %1014
  store i32 666, ptr %21, align 8, !tbaa !29
  br label %1019

1019:                                             ; preds = %1018, %1014
  %1020 = and i32 %1015, -3
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1022, label %1026

1022:                                             ; preds = %1019
  %1023 = load i32, ptr %69, align 8, !tbaa !107
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1025, label %1032

1025:                                             ; preds = %1022
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1032

1026:                                             ; preds = %1019
  %1027 = icmp eq i32 %1015, 1
  br i1 %1027, label %1028, label %1032

1028:                                             ; preds = %1026
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1029 = load i32, ptr %69, align 8, !tbaa !107
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1031, label %1032

1031:                                             ; preds = %1028
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1032

1032:                                             ; preds = %1031, %1028, %1026, %1025, %1022, %994, %986, %961, %904, %792, %.loopexit40, %361, %257, %148, %139, %123, %72
  %1033 = load i32, ptr %55, align 8, !tbaa !81
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1035, label %1098

1035:                                             ; preds = %1032
  %1036 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %1037 = load i32, ptr %1036, align 4, !tbaa !73
  %1038 = zext i32 %1037 to i64
  %1039 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %1040 = load i64, ptr %1039, align 8, !tbaa !74
  %1041 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1038, i64 %1040), !nosanitize !45
  %1042 = extractvalue { i64, i1 } %1041, 1, !nosanitize !45
  br i1 %1042, label %1043, label %1044, !prof !46, !nosanitize !45

1043:                                             ; preds = %1035
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1044:                                             ; preds = %1035
  %1045 = extractvalue { i64, i1 } %1041, 0, !nosanitize !45
  %1046 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %1047 = load i32, ptr %1046, align 4, !tbaa !75
  %1048 = zext i32 %1047 to i64
  %1049 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1045, i64 %1048), !nosanitize !45
  %1050 = extractvalue { i64, i1 } %1049, 1, !nosanitize !45
  br i1 %1050, label %1051, label %1052, !prof !46, !nosanitize !45

1051:                                             ; preds = %1044
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1052:                                             ; preds = %1044
  %1053 = extractvalue { i64, i1 } %1049, 0, !nosanitize !45
  %1054 = icmp eq i64 %1053, 0
  br i1 %1054, label %1055, label %1098

1055:                                             ; preds = %1052, %45, %34
  %1056 = load i32, ptr %30, align 4, !tbaa !48
  %1057 = icmp eq i32 %1056, %25
  br i1 %1057, label %1097, label %1058

1058:                                             ; preds = %1055
  %1059 = icmp eq i32 %1056, 0
  br i1 %1059, label %1060, label %1079

1060:                                             ; preds = %1058
  %1061 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %1062 = load i32, ptr %1061, align 8, !tbaa !125
  switch i32 %1062, label %1064 [
    i32 0, label %1079
    i32 1, label %1063
  ]

1063:                                             ; preds = %1060
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %1078

1064:                                             ; preds = %1060
  %1065 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %1066 = load i32, ptr %1065, align 4, !tbaa !36
  %1067 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1066, i32 1), !nosanitize !45
  %1068 = extractvalue { i32, i1 } %1067, 1, !nosanitize !45
  br i1 %1068, label %1069, label %1070, !prof !46, !nosanitize !45

1069:                                             ; preds = %1064
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1070:                                             ; preds = %1064
  %1071 = extractvalue { i32, i1 } %1067, 0, !nosanitize !45
  %1072 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %1073 = load ptr, ptr %1072, align 8, !tbaa !37
  %1074 = zext i32 %1071 to i64
  %1075 = getelementptr inbounds nuw [2 x i8], ptr %1073, i64 %1074
  store i16 0, ptr %1075, align 2, !tbaa !62
  %1076 = shl nuw nsw i64 %1074, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1073, i8 0, i64 %1076, i1 false)
  %1077 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %1077, align 8, !tbaa !63
  br label %1078

1078:                                             ; preds = %1070, %1063
  store i32 0, ptr %1061, align 8, !tbaa !125
  br label %1079

1079:                                             ; preds = %1078, %1060, %1058
  store i32 %25, ptr %30, align 4, !tbaa !48
  %1080 = zext nneg i32 %25 to i64
  %1081 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %1080
  %1082 = getelementptr inbounds nuw i8, ptr %1081, i64 2
  %1083 = load i16, ptr %1082, align 2, !tbaa !64
  %1084 = zext i16 %1083 to i32
  %1085 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %1084, ptr %1085, align 8, !tbaa !66
  %1086 = load i16, ptr %1081, align 16, !tbaa !67
  %1087 = zext i16 %1086 to i32
  %1088 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %1087, ptr %1088, align 4, !tbaa !68
  %1089 = getelementptr inbounds nuw i8, ptr %1081, i64 4
  %1090 = load i16, ptr %1089, align 4, !tbaa !69
  %1091 = zext i16 %1090 to i32
  %1092 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %1091, ptr %1092, align 8, !tbaa !70
  %1093 = getelementptr inbounds nuw i8, ptr %1081, i64 6
  %1094 = load i16, ptr %1093, align 2, !tbaa !71
  %1095 = zext i16 %1094 to i32
  %1096 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %1095, ptr %1096, align 4, !tbaa !72
  br label %1097

1097:                                             ; preds = %1079, %1055
  store i32 %2, ptr %31, align 8, !tbaa !49
  br label %1098

1098:                                             ; preds = %1097, %1052, %1032, %65, %49, %23, %20, %17, %13, %9, %5, %3
  %1099 = phi i32 [ -5, %1052 ], [ -2, %13 ], [ 0, %1097 ], [ -2, %23 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %65 ], [ -2, %49 ], [ -5, %1032 ]
  ret i32 %1099
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1197, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1197, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1197, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1197, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1197

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %1197 [
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
  br i1 %23, label %1197, label %24

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
  br label %1197

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !107
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !9
  br label %1197

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
  br label %123

99:                                               ; preds = %93
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1197

100:                                              ; preds = %49
  br i1 %31, label %102, label %123

101:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !45
  unreachable, !nosanitize !45

102:                                              ; preds = %100
  %103 = shl nuw nsw i32 %1, 1
  %104 = icmp eq i32 %1, 5
  %105 = select i1 %104, i32 -9, i32 0
  %106 = add nsw i32 %105, %103
  %107 = add i32 %51, 1073741824
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %110, label %101, !prof !93, !nosanitize !45

109:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

110:                                              ; preds = %102
  %111 = shl nsw i32 %51, 1
  %112 = icmp sgt i32 %51, 4
  %113 = select i1 %112, i32 9, i32 0
  %114 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %111, i32 %113), !nosanitize !45
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !45
  br i1 %115, label %109, label %116, !prof !46, !nosanitize !45

116:                                              ; preds = %110
  %117 = extractvalue { i32, i1 } %114, 0, !nosanitize !45
  %118 = icmp sle i32 %106, %117
  %119 = and i1 %37, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %121, ptr %122, align 8, !tbaa !9
  br label %1197

123:                                              ; preds = %116, %100, %97
  %124 = phi i64 [ %94, %97 ], [ 0, %100 ], [ 0, %116 ]
  %125 = phi i32 [ %98, %97 ], [ %21, %100 ], [ %21, %116 ]
  switch i32 %125, label %241 [
    i32 666, label %126
    i32 42, label %132
  ]

126:                                              ; preds = %123
  %127 = load i32, ptr %29, align 8, !tbaa !81
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %977, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %130, ptr %131, align 8, !tbaa !9
  br label %1197

132:                                              ; preds = %123
  %133 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %134 = load i32, ptr %133, align 8, !tbaa !30
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 113, ptr %20, align 8, !tbaa !29
  br label %974

137:                                              ; preds = %132
  %138 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %139 = load i32, ptr %138, align 4, !tbaa !31
  %140 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 8), !nosanitize !45
  %141 = extractvalue { i32, i1 } %140, 1, !nosanitize !45
  br i1 %141, label %142, label %143, !prof !46, !nosanitize !45

142:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

143:                                              ; preds = %137
  %144 = extractvalue { i32, i1 } %140, 0, !nosanitize !45
  %145 = shl i32 %144, 12
  %146 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %147 = load i32, ptr %146, align 8, !tbaa !49
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %158, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %151 = load i32, ptr %150, align 4, !tbaa !48
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
  %159 = phi i32 [ 64, %153 ], [ 0, %143 ], [ %157, %155 ], [ 0, %149 ]
  %160 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %161 = or disjoint i32 %159, %145
  %162 = load i32, ptr %160, align 4, !tbaa !73
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i32 2048, i32 2080
  %165 = or disjoint i32 %164, %161
  %166 = urem i32 %165, 31
  %167 = or disjoint i32 %166, %165
  %168 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 1), !nosanitize !45
  %169 = extractvalue { i64, i1 } %168, 1, !nosanitize !45
  br i1 %169, label %170, label %171, !prof !46, !nosanitize !45

170:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

171:                                              ; preds = %158
  %172 = extractvalue { i64, i1 } %168, 0, !nosanitize !45
  %173 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %174 = load ptr, ptr %173, align 8, !tbaa !40
  %175 = lshr i32 %165, 8
  %176 = trunc i32 %175 to i8
  store i64 %172, ptr %52, align 8, !tbaa !57
  %177 = getelementptr inbounds nuw i8, ptr %174, i64 %124
  store i8 %176, ptr %177, align 1, !tbaa !8
  %178 = load i64, ptr %52, align 8, !tbaa !57
  %179 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %178, i64 1), !nosanitize !45
  %180 = extractvalue { i64, i1 } %179, 1, !nosanitize !45
  br i1 %180, label %181, label %182, !prof !46, !nosanitize !45

181:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

182:                                              ; preds = %171
  %183 = extractvalue { i64, i1 } %179, 0, !nosanitize !45
  %184 = load ptr, ptr %173, align 8, !tbaa !40
  %185 = trunc i32 %167 to i8
  %186 = xor i8 %185, 31
  store i64 %183, ptr %52, align 8, !tbaa !57
  %187 = getelementptr inbounds nuw i8, ptr %184, i64 %178
  store i8 %186, ptr %187, align 1, !tbaa !8
  %188 = load i32, ptr %160, align 4, !tbaa !73
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %233, label %190

190:                                              ; preds = %182
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %192 = load i64, ptr %191, align 8, !tbaa !59
  %193 = lshr i64 %192, 16
  %194 = load i64, ptr %52, align 8, !tbaa !57
  %195 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %194, i64 1), !nosanitize !45
  %196 = extractvalue { i64, i1 } %195, 1, !nosanitize !45
  br i1 %196, label %197, label %198, !prof !46, !nosanitize !45

197:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

198:                                              ; preds = %190
  %199 = extractvalue { i64, i1 } %195, 0, !nosanitize !45
  %200 = load ptr, ptr %173, align 8, !tbaa !40
  %201 = lshr i64 %192, 24
  %202 = trunc i64 %201 to i8
  store i64 %199, ptr %52, align 8, !tbaa !57
  %203 = getelementptr inbounds nuw i8, ptr %200, i64 %194
  store i8 %202, ptr %203, align 1, !tbaa !8
  %204 = load i64, ptr %52, align 8, !tbaa !57
  %205 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 1), !nosanitize !45
  %206 = extractvalue { i64, i1 } %205, 1, !nosanitize !45
  br i1 %206, label %207, label %208, !prof !46, !nosanitize !45

207:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

208:                                              ; preds = %198
  %209 = extractvalue { i64, i1 } %205, 0, !nosanitize !45
  %210 = load ptr, ptr %173, align 8, !tbaa !40
  %211 = trunc i64 %193 to i8
  store i64 %209, ptr %52, align 8, !tbaa !57
  %212 = getelementptr inbounds nuw i8, ptr %210, i64 %204
  store i8 %211, ptr %212, align 1, !tbaa !8
  %213 = load i64, ptr %191, align 8, !tbaa !59
  %214 = trunc i64 %213 to i8
  %215 = load i64, ptr %52, align 8, !tbaa !57
  %216 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %215, i64 1), !nosanitize !45
  %217 = extractvalue { i64, i1 } %216, 1, !nosanitize !45
  br i1 %217, label %218, label %219, !prof !46, !nosanitize !45

218:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

219:                                              ; preds = %208
  %220 = extractvalue { i64, i1 } %216, 0, !nosanitize !45
  %221 = load ptr, ptr %173, align 8, !tbaa !40
  %222 = lshr i64 %213, 8
  %223 = trunc i64 %222 to i8
  store i64 %220, ptr %52, align 8, !tbaa !57
  %224 = getelementptr inbounds nuw i8, ptr %221, i64 %215
  store i8 %223, ptr %224, align 1, !tbaa !8
  %225 = load i64, ptr %52, align 8, !tbaa !57
  %226 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %225, i64 1), !nosanitize !45
  %227 = extractvalue { i64, i1 } %226, 1, !nosanitize !45
  br i1 %227, label %228, label %229, !prof !46, !nosanitize !45

228:                                              ; preds = %219
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

229:                                              ; preds = %219
  %230 = extractvalue { i64, i1 } %226, 0, !nosanitize !45
  %231 = load ptr, ptr %173, align 8, !tbaa !40
  store i64 %230, ptr %52, align 8, !tbaa !57
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 %225
  store i8 %214, ptr %232, align 1, !tbaa !8
  br label %233

233:                                              ; preds = %229, %182
  %234 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %234, ptr %235, align 8, !tbaa !59
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %236 = load i64, ptr %52, align 8, !tbaa !57
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32, ptr %20, align 8, !tbaa !29
  br label %241

240:                                              ; preds = %233
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1197

241:                                              ; preds = %238, %123
  %242 = phi i32 [ %239, %238 ], [ %125, %123 ]
  %243 = icmp eq i32 %242, 57
  br i1 %243, label %244, label %503

244:                                              ; preds = %241
  %245 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %245, ptr %246, align 8, !tbaa !59
  %247 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %248 = load i64, ptr %52, align 8, !tbaa !57
  %249 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %248, i64 1), !nosanitize !45
  %250 = extractvalue { i64, i1 } %249, 1, !nosanitize !45
  br i1 %250, label %251, label %252, !prof !46, !nosanitize !45

251:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

252:                                              ; preds = %244
  %253 = extractvalue { i64, i1 } %249, 0, !nosanitize !45
  %254 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %253, ptr %52, align 8, !tbaa !57
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 %248
  store i8 31, ptr %255, align 1, !tbaa !8
  %256 = load i64, ptr %52, align 8, !tbaa !57
  %257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %256, i64 1), !nosanitize !45
  %258 = extractvalue { i64, i1 } %257, 1, !nosanitize !45
  br i1 %258, label %259, label %260, !prof !46, !nosanitize !45

259:                                              ; preds = %252
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

260:                                              ; preds = %252
  %261 = extractvalue { i64, i1 } %257, 0, !nosanitize !45
  %262 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %261, ptr %52, align 8, !tbaa !57
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 %256
  store i8 -117, ptr %263, align 1, !tbaa !8
  %264 = load i64, ptr %52, align 8, !tbaa !57
  %265 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %264, i64 1), !nosanitize !45
  %266 = extractvalue { i64, i1 } %265, 1, !nosanitize !45
  br i1 %266, label %267, label %268, !prof !46, !nosanitize !45

267:                                              ; preds = %260
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

268:                                              ; preds = %260
  %269 = extractvalue { i64, i1 } %265, 0, !nosanitize !45
  %270 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %269, ptr %52, align 8, !tbaa !57
  %271 = getelementptr inbounds nuw i8, ptr %270, i64 %264
  store i8 8, ptr %271, align 1, !tbaa !8
  %272 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %273 = load ptr, ptr %272, align 8, !tbaa !100
  %274 = icmp eq ptr %273, null
  %275 = load i64, ptr %52, align 8, !tbaa !57
  %276 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %275, i64 1), !nosanitize !45
  %277 = extractvalue { i64, i1 } %276, 1, !nosanitize !45
  br i1 %274, label %278, label %347

278:                                              ; preds = %268
  br i1 %277, label %279, label %280, !prof !46, !nosanitize !45

279:                                              ; preds = %278
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

280:                                              ; preds = %278
  %281 = extractvalue { i64, i1 } %276, 0, !nosanitize !45
  %282 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %281, ptr %52, align 8, !tbaa !57
  %283 = getelementptr inbounds nuw i8, ptr %282, i64 %275
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
  %290 = load ptr, ptr %247, align 8, !tbaa !40
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
  %298 = load ptr, ptr %247, align 8, !tbaa !40
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
  %306 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %305, ptr %52, align 8, !tbaa !57
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 %300
  store i8 0, ptr %307, align 1, !tbaa !8
  %308 = load i64, ptr %52, align 8, !tbaa !57
  %309 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %308, i64 1), !nosanitize !45
  %310 = extractvalue { i64, i1 } %309, 1, !nosanitize !45
  br i1 %310, label %311, label %312, !prof !46, !nosanitize !45

311:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

312:                                              ; preds = %304
  %313 = extractvalue { i64, i1 } %309, 0, !nosanitize !45
  %314 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %313, ptr %52, align 8, !tbaa !57
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 %308
  store i8 0, ptr %315, align 1, !tbaa !8
  %316 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %317 = load i32, ptr %316, align 4, !tbaa !48
  %318 = icmp eq i32 %317, 9
  br i1 %318, label %326, label %319

319:                                              ; preds = %312
  %320 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %321 = load i32, ptr %320, align 8, !tbaa !49
  %322 = icmp sgt i32 %321, 1
  %323 = icmp slt i32 %317, 2
  %324 = or i1 %323, %322
  %325 = select i1 %324, i8 4, i8 0
  br label %326

326:                                              ; preds = %319, %312
  %327 = phi i8 [ %325, %319 ], [ 2, %312 ]
  %328 = load i64, ptr %52, align 8, !tbaa !57
  %329 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %328, i64 1), !nosanitize !45
  %330 = extractvalue { i64, i1 } %329, 1, !nosanitize !45
  br i1 %330, label %331, label %332, !prof !46, !nosanitize !45

331:                                              ; preds = %326
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

332:                                              ; preds = %326
  %333 = extractvalue { i64, i1 } %329, 0, !nosanitize !45
  %334 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %333, ptr %52, align 8, !tbaa !57
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 %328
  store i8 %327, ptr %335, align 1, !tbaa !8
  %336 = load i64, ptr %52, align 8, !tbaa !57
  %337 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %336, i64 1), !nosanitize !45
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !45
  br i1 %338, label %339, label %340, !prof !46, !nosanitize !45

339:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

340:                                              ; preds = %332
  %341 = extractvalue { i64, i1 } %337, 0, !nosanitize !45
  %342 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %341, ptr %52, align 8, !tbaa !57
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 %336
  store i8 3, ptr %343, align 1, !tbaa !8
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %344 = load i64, ptr %52, align 8, !tbaa !57
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %501, label %346

346:                                              ; preds = %340
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1197

347:                                              ; preds = %268
  br i1 %277, label %348, label %349, !prof !46, !nosanitize !45

348:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

349:                                              ; preds = %347
  %350 = extractvalue { i64, i1 } %276, 0, !nosanitize !45
  %351 = load ptr, ptr %247, align 8, !tbaa !40
  %352 = getelementptr inbounds nuw i8, ptr %273, i64 56
  %353 = load ptr, ptr %352, align 8, !tbaa !109
  %354 = icmp eq ptr %353, null
  %355 = getelementptr inbounds nuw i8, ptr %273, i64 40
  %356 = load ptr, ptr %355, align 8, !tbaa !111
  %357 = icmp eq ptr %356, null
  %358 = getelementptr inbounds nuw i8, ptr %273, i64 24
  %359 = load ptr, ptr %358, align 8, !tbaa !112
  %360 = icmp eq ptr %359, null
  %361 = load i32, ptr %273, align 8, !tbaa !113
  %362 = icmp ne i32 %361, 0
  %363 = getelementptr inbounds nuw i8, ptr %273, i64 68
  %364 = load i32, ptr %363, align 4, !tbaa !114
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
  store i64 %350, ptr %52, align 8, !tbaa !57
  %375 = getelementptr inbounds nuw i8, ptr %351, i64 %275
  store i8 %374, ptr %375, align 1, !tbaa !8
  %376 = load i64, ptr %52, align 8, !tbaa !57
  %377 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %376, i64 1), !nosanitize !45
  %378 = extractvalue { i64, i1 } %377, 1, !nosanitize !45
  br i1 %378, label %379, label %380, !prof !46, !nosanitize !45

379:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

380:                                              ; preds = %349
  %381 = extractvalue { i64, i1 } %377, 0, !nosanitize !45
  %382 = load ptr, ptr %247, align 8, !tbaa !40
  %383 = load ptr, ptr %272, align 8, !tbaa !100
  %384 = getelementptr inbounds nuw i8, ptr %383, i64 8
  %385 = load i64, ptr %384, align 8, !tbaa !115
  %386 = trunc i64 %385 to i8
  store i64 %381, ptr %52, align 8, !tbaa !57
  %387 = getelementptr inbounds nuw i8, ptr %382, i64 %376
  store i8 %386, ptr %387, align 1, !tbaa !8
  %388 = load i64, ptr %52, align 8, !tbaa !57
  %389 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %388, i64 1), !nosanitize !45
  %390 = extractvalue { i64, i1 } %389, 1, !nosanitize !45
  br i1 %390, label %391, label %392, !prof !46, !nosanitize !45

391:                                              ; preds = %380
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

392:                                              ; preds = %380
  %393 = extractvalue { i64, i1 } %389, 0, !nosanitize !45
  %394 = load ptr, ptr %247, align 8, !tbaa !40
  %395 = load ptr, ptr %272, align 8, !tbaa !100
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 8
  %397 = load i64, ptr %396, align 8, !tbaa !115
  %398 = lshr i64 %397, 8
  %399 = trunc i64 %398 to i8
  store i64 %393, ptr %52, align 8, !tbaa !57
  %400 = getelementptr inbounds nuw i8, ptr %394, i64 %388
  store i8 %399, ptr %400, align 1, !tbaa !8
  %401 = load i64, ptr %52, align 8, !tbaa !57
  %402 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %401, i64 1), !nosanitize !45
  %403 = extractvalue { i64, i1 } %402, 1, !nosanitize !45
  br i1 %403, label %404, label %405, !prof !46, !nosanitize !45

404:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

405:                                              ; preds = %392
  %406 = extractvalue { i64, i1 } %402, 0, !nosanitize !45
  %407 = load ptr, ptr %247, align 8, !tbaa !40
  %408 = load ptr, ptr %272, align 8, !tbaa !100
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 8
  %410 = load i64, ptr %409, align 8, !tbaa !115
  %411 = lshr i64 %410, 16
  %412 = trunc i64 %411 to i8
  store i64 %406, ptr %52, align 8, !tbaa !57
  %413 = getelementptr inbounds nuw i8, ptr %407, i64 %401
  store i8 %412, ptr %413, align 1, !tbaa !8
  %414 = load i64, ptr %52, align 8, !tbaa !57
  %415 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %414, i64 1), !nosanitize !45
  %416 = extractvalue { i64, i1 } %415, 1, !nosanitize !45
  br i1 %416, label %417, label %418, !prof !46, !nosanitize !45

417:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

418:                                              ; preds = %405
  %419 = extractvalue { i64, i1 } %415, 0, !nosanitize !45
  %420 = load ptr, ptr %247, align 8, !tbaa !40
  %421 = load ptr, ptr %272, align 8, !tbaa !100
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 8
  %423 = load i64, ptr %422, align 8, !tbaa !115
  %424 = lshr i64 %423, 24
  %425 = trunc i64 %424 to i8
  store i64 %419, ptr %52, align 8, !tbaa !57
  %426 = getelementptr inbounds nuw i8, ptr %420, i64 %414
  store i8 %425, ptr %426, align 1, !tbaa !8
  %427 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %428 = load i32, ptr %427, align 4, !tbaa !48
  %429 = icmp eq i32 %428, 9
  br i1 %429, label %437, label %430

430:                                              ; preds = %418
  %431 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %432 = load i32, ptr %431, align 8, !tbaa !49
  %433 = icmp sgt i32 %432, 1
  %434 = icmp slt i32 %428, 2
  %435 = or i1 %434, %433
  %436 = select i1 %435, i8 4, i8 0
  br label %437

437:                                              ; preds = %430, %418
  %438 = phi i8 [ %436, %430 ], [ 2, %418 ]
  %439 = load i64, ptr %52, align 8, !tbaa !57
  %440 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %439, i64 1), !nosanitize !45
  %441 = extractvalue { i64, i1 } %440, 1, !nosanitize !45
  br i1 %441, label %442, label %443, !prof !46, !nosanitize !45

442:                                              ; preds = %437
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

443:                                              ; preds = %437
  %444 = extractvalue { i64, i1 } %440, 0, !nosanitize !45
  %445 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %444, ptr %52, align 8, !tbaa !57
  %446 = getelementptr inbounds nuw i8, ptr %445, i64 %439
  store i8 %438, ptr %446, align 1, !tbaa !8
  %447 = load i64, ptr %52, align 8, !tbaa !57
  %448 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %447, i64 1), !nosanitize !45
  %449 = extractvalue { i64, i1 } %448, 1, !nosanitize !45
  br i1 %449, label %450, label %451, !prof !46, !nosanitize !45

450:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

451:                                              ; preds = %443
  %452 = extractvalue { i64, i1 } %448, 0, !nosanitize !45
  %453 = load ptr, ptr %247, align 8, !tbaa !40
  %454 = load ptr, ptr %272, align 8, !tbaa !100
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 20
  %456 = load i32, ptr %455, align 4, !tbaa !116
  %457 = trunc i32 %456 to i8
  store i64 %452, ptr %52, align 8, !tbaa !57
  %458 = getelementptr inbounds nuw i8, ptr %453, i64 %447
  store i8 %457, ptr %458, align 1, !tbaa !8
  %459 = load ptr, ptr %272, align 8, !tbaa !100
  %460 = getelementptr inbounds nuw i8, ptr %459, i64 24
  %461 = load ptr, ptr %460, align 8, !tbaa !112
  %462 = icmp eq ptr %461, null
  br i1 %462, label %489, label %463

463:                                              ; preds = %451
  %464 = load i64, ptr %52, align 8, !tbaa !57
  %465 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %464, i64 1), !nosanitize !45
  %466 = extractvalue { i64, i1 } %465, 1, !nosanitize !45
  br i1 %466, label %467, label %468, !prof !46, !nosanitize !45

467:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

468:                                              ; preds = %463
  %469 = extractvalue { i64, i1 } %465, 0, !nosanitize !45
  %470 = load ptr, ptr %247, align 8, !tbaa !40
  %471 = getelementptr inbounds nuw i8, ptr %459, i64 32
  %472 = load i32, ptr %471, align 8, !tbaa !117
  %473 = trunc i32 %472 to i8
  store i64 %469, ptr %52, align 8, !tbaa !57
  %474 = getelementptr inbounds nuw i8, ptr %470, i64 %464
  store i8 %473, ptr %474, align 1, !tbaa !8
  %475 = load i64, ptr %52, align 8, !tbaa !57
  %476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %475, i64 1), !nosanitize !45
  %477 = extractvalue { i64, i1 } %476, 1, !nosanitize !45
  br i1 %477, label %478, label %479, !prof !46, !nosanitize !45

478:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

479:                                              ; preds = %468
  %480 = extractvalue { i64, i1 } %476, 0, !nosanitize !45
  %481 = load ptr, ptr %247, align 8, !tbaa !40
  %482 = load ptr, ptr %272, align 8, !tbaa !100
  %483 = getelementptr inbounds nuw i8, ptr %482, i64 32
  %484 = load i32, ptr %483, align 8, !tbaa !117
  %485 = lshr i32 %484, 8
  %486 = trunc i32 %485 to i8
  store i64 %480, ptr %52, align 8, !tbaa !57
  %487 = getelementptr inbounds nuw i8, ptr %481, i64 %475
  store i8 %486, ptr %487, align 1, !tbaa !8
  %488 = load ptr, ptr %272, align 8, !tbaa !100
  br label %489

489:                                              ; preds = %479, %451
  %490 = phi ptr [ %488, %479 ], [ %459, %451 ]
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 68
  %492 = load i32, ptr %491, align 4, !tbaa !114
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %499, label %494

494:                                              ; preds = %489
  %495 = load i64, ptr %246, align 8, !tbaa !59
  %496 = load ptr, ptr %247, align 8, !tbaa !40
  %497 = load i64, ptr %52, align 8, !tbaa !57
  %498 = tail call i64 @crc32_z(i64 noundef %495, ptr noundef %496, i64 noundef %497) #11
  store i64 %498, ptr %246, align 8, !tbaa !59
  br label %499

499:                                              ; preds = %494, %489
  %500 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %500, align 8, !tbaa !118
  store i32 69, ptr %20, align 8, !tbaa !29
  br label %505

501:                                              ; preds = %340
  %502 = load i32, ptr %20, align 8, !tbaa !29
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
  %507 = load ptr, ptr %506, align 8, !tbaa !100
  %508 = getelementptr inbounds nuw i8, ptr %507, i64 24
  %509 = load ptr, ptr %508, align 8, !tbaa !112
  %510 = icmp eq ptr %509, null
  br i1 %510, label %705, label %511

511:                                              ; preds = %505
  %512 = getelementptr inbounds nuw i8, ptr %507, i64 32
  %513 = load i32, ptr %512, align 8, !tbaa !117
  %514 = and i32 %513, 65535
  %515 = zext nneg i32 %514 to i64
  %516 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %517 = load i64, ptr %516, align 8, !tbaa !118
  %518 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %515, i64 %517), !nosanitize !45
  %519 = extractvalue { i64, i1 } %518, 1, !nosanitize !45
  br i1 %519, label %520, label %521, !prof !46, !nosanitize !45

520:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

521:                                              ; preds = %511
  %522 = load i64, ptr %52, align 8, !tbaa !57
  %523 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %524 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %526 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %527 = extractvalue { i64, i1 } %518, 0
  %528 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %522, i64 %527), !nosanitize !45
  %529 = extractvalue { i64, i1 } %528, 1, !nosanitize !45
  br i1 %529, label %602, label %530, !prof !46, !nosanitize !45

530:                                              ; preds = %521
  %531 = extractvalue { i64, i1 } %528, 0, !nosanitize !45
  %532 = load i64, ptr %523, align 8, !tbaa !41
  %533 = icmp ugt i64 %531, %532
  br i1 %533, label %534, label %678

534:                                              ; preds = %530
  %535 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %532, i64 %522), !nosanitize !45
  %536 = extractvalue { i64, i1 } %535, 0, !nosanitize !45
  %537 = extractvalue { i64, i1 } %535, 1, !nosanitize !45
  br i1 %537, label %607, label %538, !prof !46, !nosanitize !45

538:                                              ; preds = %534
  %539 = load ptr, ptr %524, align 8, !tbaa !40
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 %522
  %541 = getelementptr inbounds nuw i8, ptr %509, i64 %517
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %540, ptr nonnull align 1 %541, i64 %536, i1 false)
  %542 = load i64, ptr %523, align 8, !tbaa !41
  store i64 %542, ptr %52, align 8, !tbaa !57
  %543 = load ptr, ptr %506, align 8, !tbaa !100
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 68
  %545 = load i32, ptr %544, align 4, !tbaa !114
  %546 = icmp ne i32 %545, 0
  %547 = icmp ugt i64 %542, %522
  %548 = select i1 %546, i1 %547, i1 false
  br i1 %548, label %549, label %555

549:                                              ; preds = %538
  %550 = sub nuw i64 %542, %522
  %551 = load ptr, ptr %524, align 8, !tbaa !40
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 %522
  %553 = load i64, ptr %525, align 8, !tbaa !59
  %554 = tail call i64 @crc32_z(i64 noundef %553, ptr noundef %552, i64 noundef %550) #11
  store i64 %554, ptr %525, align 8, !tbaa !59
  br label %555

555:                                              ; preds = %549, %538
  %556 = load i64, ptr %516, align 8, !tbaa !118
  %557 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %556, i64 %536), !nosanitize !45
  %558 = extractvalue { i64, i1 } %557, 1, !nosanitize !45
  br i1 %558, label %.loopexit, label %559, !prof !46, !nosanitize !45

559:                                              ; preds = %555
  %560 = extractvalue { i64, i1 } %557, 0, !nosanitize !45
  store i64 %560, ptr %516, align 8, !tbaa !118
  %561 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %561) #11
  %562 = getelementptr inbounds nuw i8, ptr %561, i64 40
  %563 = load i64, ptr %562, align 8, !tbaa !57
  %564 = load i32, ptr %43, align 8, !tbaa !107
  %565 = zext i32 %564 to i64
  %566 = tail call i64 @llvm.umin.i64(i64 %563, i64 %565)
  %567 = trunc nuw i64 %566 to i32
  %568 = icmp eq i64 %566, 0
  br i1 %568, label %596, label %569

569:                                              ; preds = %559
  %570 = load ptr, ptr %25, align 8, !tbaa !106
  %571 = getelementptr inbounds nuw i8, ptr %561, i64 32
  %572 = load ptr, ptr %571, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %570, ptr align 1 %572, i64 %566, i1 false)
  %573 = load ptr, ptr %25, align 8, !tbaa !106
  %574 = getelementptr inbounds nuw i8, ptr %573, i64 %566
  store ptr %574, ptr %25, align 8, !tbaa !106
  %575 = load ptr, ptr %571, align 8, !tbaa !58
  %576 = getelementptr inbounds nuw i8, ptr %575, i64 %566
  store ptr %576, ptr %571, align 8, !tbaa !58
  %577 = load i64, ptr %526, align 8, !tbaa !108
  %578 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %577, i64 %566), !nosanitize !45
  %579 = extractvalue { i64, i1 } %578, 1, !nosanitize !45
  br i1 %579, label %.loopexit36, label %580, !prof !46, !nosanitize !45

580:                                              ; preds = %569
  %581 = extractvalue { i64, i1 } %578, 0, !nosanitize !45
  store i64 %581, ptr %526, align 8, !tbaa !108
  %582 = load i32, ptr %43, align 8, !tbaa !107
  %583 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %582, i32 %567), !nosanitize !45
  %584 = extractvalue { i32, i1 } %583, 1, !nosanitize !45
  br i1 %584, label %.loopexit37, label %585, !prof !46, !nosanitize !45

585:                                              ; preds = %580
  %586 = extractvalue { i32, i1 } %583, 0, !nosanitize !45
  store i32 %586, ptr %43, align 8, !tbaa !107
  %587 = load i64, ptr %562, align 8, !tbaa !57
  %588 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %587, i64 %566), !nosanitize !45
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %.loopexit38, label %590, !prof !46, !nosanitize !45

590:                                              ; preds = %585
  %591 = extractvalue { i64, i1 } %588, 0, !nosanitize !45
  store i64 %591, ptr %562, align 8, !tbaa !57
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %593, label %596

593:                                              ; preds = %590
  %594 = getelementptr inbounds nuw i8, ptr %561, i64 16
  %595 = load ptr, ptr %594, align 8, !tbaa !40
  store ptr %595, ptr %571, align 8, !tbaa !58
  br label %596

596:                                              ; preds = %593, %590, %559
  %597 = load i64, ptr %52, align 8, !tbaa !57
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %599, label %.loopexit39

599:                                              ; preds = %596
  %600 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %527, i64 %536), !nosanitize !45
  %601 = extractvalue { i64, i1 } %600, 1, !nosanitize !45
  br i1 %601, label %.loopexit40, label %.preheader, !prof !46, !nosanitize !45

602:                                              ; preds = %521
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

.preheader:                                       ; preds = %599, %670
  %603 = phi { i64, i1 } [ %671, %670 ], [ %600, %599 ]
  %604 = extractvalue { i64, i1 } %603, 0
  %605 = load i64, ptr %523, align 8, !tbaa !41
  %606 = icmp ugt i64 %604, %605
  br i1 %606, label %608, label %673

607:                                              ; preds = %534
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

608:                                              ; preds = %.preheader
  %609 = load ptr, ptr %524, align 8, !tbaa !40
  %610 = load ptr, ptr %506, align 8, !tbaa !100
  %611 = getelementptr inbounds nuw i8, ptr %610, i64 24
  %612 = load ptr, ptr %611, align 8, !tbaa !112
  %613 = load i64, ptr %516, align 8, !tbaa !118
  %614 = getelementptr inbounds nuw i8, ptr %612, i64 %613
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %609, ptr align 1 %614, i64 %605, i1 false)
  %615 = load i64, ptr %523, align 8, !tbaa !41
  store i64 %615, ptr %52, align 8, !tbaa !57
  %616 = load ptr, ptr %506, align 8, !tbaa !100
  %617 = getelementptr inbounds nuw i8, ptr %616, i64 68
  %618 = load i32, ptr %617, align 4, !tbaa !114
  %619 = icmp ne i32 %618, 0
  %620 = icmp ne i64 %615, 0
  %621 = select i1 %619, i1 %620, i1 false
  br i1 %621, label %622, label %626

622:                                              ; preds = %608
  %623 = load ptr, ptr %524, align 8, !tbaa !40
  %624 = load i64, ptr %525, align 8, !tbaa !59
  %625 = tail call i64 @crc32_z(i64 noundef %624, ptr noundef %623, i64 noundef %615) #11
  store i64 %625, ptr %525, align 8, !tbaa !59
  br label %626

626:                                              ; preds = %622, %608
  %627 = load i64, ptr %516, align 8, !tbaa !118
  %628 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %627, i64 %605), !nosanitize !45
  %629 = extractvalue { i64, i1 } %628, 1, !nosanitize !45
  br i1 %629, label %.loopexit, label %630, !prof !46, !nosanitize !45

.loopexit:                                        ; preds = %626, %555
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

630:                                              ; preds = %626
  %631 = extractvalue { i64, i1 } %628, 0, !nosanitize !45
  store i64 %631, ptr %516, align 8, !tbaa !118
  %632 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %632) #11
  %633 = getelementptr inbounds nuw i8, ptr %632, i64 40
  %634 = load i64, ptr %633, align 8, !tbaa !57
  %635 = load i32, ptr %43, align 8, !tbaa !107
  %636 = zext i32 %635 to i64
  %637 = tail call i64 @llvm.umin.i64(i64 %634, i64 %636)
  %638 = trunc nuw i64 %637 to i32
  %639 = icmp eq i64 %637, 0
  br i1 %639, label %667, label %640

640:                                              ; preds = %630
  %641 = load ptr, ptr %25, align 8, !tbaa !106
  %642 = getelementptr inbounds nuw i8, ptr %632, i64 32
  %643 = load ptr, ptr %642, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %641, ptr align 1 %643, i64 %637, i1 false)
  %644 = load ptr, ptr %25, align 8, !tbaa !106
  %645 = getelementptr inbounds nuw i8, ptr %644, i64 %637
  store ptr %645, ptr %25, align 8, !tbaa !106
  %646 = load ptr, ptr %642, align 8, !tbaa !58
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 %637
  store ptr %647, ptr %642, align 8, !tbaa !58
  %648 = load i64, ptr %526, align 8, !tbaa !108
  %649 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %648, i64 %637), !nosanitize !45
  %650 = extractvalue { i64, i1 } %649, 1, !nosanitize !45
  br i1 %650, label %.loopexit36, label %651, !prof !46, !nosanitize !45

.loopexit36:                                      ; preds = %640, %569
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

651:                                              ; preds = %640
  %652 = extractvalue { i64, i1 } %649, 0, !nosanitize !45
  store i64 %652, ptr %526, align 8, !tbaa !108
  %653 = load i32, ptr %43, align 8, !tbaa !107
  %654 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %653, i32 %638), !nosanitize !45
  %655 = extractvalue { i32, i1 } %654, 1, !nosanitize !45
  br i1 %655, label %.loopexit37, label %656, !prof !46, !nosanitize !45

.loopexit37:                                      ; preds = %651, %580
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

656:                                              ; preds = %651
  %657 = extractvalue { i32, i1 } %654, 0, !nosanitize !45
  store i32 %657, ptr %43, align 8, !tbaa !107
  %658 = load i64, ptr %633, align 8, !tbaa !57
  %659 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %658, i64 %637), !nosanitize !45
  %660 = extractvalue { i64, i1 } %659, 1, !nosanitize !45
  br i1 %660, label %.loopexit38, label %661, !prof !46, !nosanitize !45

.loopexit38:                                      ; preds = %656, %585
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

661:                                              ; preds = %656
  %662 = extractvalue { i64, i1 } %659, 0, !nosanitize !45
  store i64 %662, ptr %633, align 8, !tbaa !57
  %663 = icmp eq i64 %662, 0
  br i1 %663, label %664, label %667

664:                                              ; preds = %661
  %665 = getelementptr inbounds nuw i8, ptr %632, i64 16
  %666 = load ptr, ptr %665, align 8, !tbaa !40
  store ptr %666, ptr %642, align 8, !tbaa !58
  br label %667

667:                                              ; preds = %664, %661, %630
  %668 = load i64, ptr %52, align 8, !tbaa !57
  %669 = icmp eq i64 %668, 0
  br i1 %669, label %670, label %.loopexit39

.loopexit39:                                      ; preds = %667, %596
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1197

670:                                              ; preds = %667
  %671 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %604, i64 %605), !nosanitize !45
  %672 = extractvalue { i64, i1 } %671, 1, !nosanitize !45
  br i1 %672, label %.loopexit40, label %.preheader, !prof !46, !llvm.loop !119, !nosanitize !45

.loopexit40:                                      ; preds = %670, %599
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

673:                                              ; preds = %.preheader
  %674 = load ptr, ptr %506, align 8, !tbaa !100
  %675 = getelementptr inbounds nuw i8, ptr %674, i64 24
  %676 = load ptr, ptr %675, align 8, !tbaa !112
  %677 = load i64, ptr %516, align 8, !tbaa !118
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
  %686 = load i64, ptr %52, align 8, !tbaa !57
  %687 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %686, i64 %682), !nosanitize !45
  %688 = extractvalue { i64, i1 } %687, 0, !nosanitize !45
  %689 = extractvalue { i64, i1 } %687, 1, !nosanitize !45
  br i1 %689, label %690, label %691, !prof !46, !nosanitize !45

690:                                              ; preds = %678
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

691:                                              ; preds = %678
  store i64 %688, ptr %52, align 8, !tbaa !57
  %692 = load ptr, ptr %506, align 8, !tbaa !100
  %693 = getelementptr inbounds nuw i8, ptr %692, i64 68
  %694 = load i32, ptr %693, align 4, !tbaa !114
  %695 = icmp ne i32 %694, 0
  %696 = icmp ugt i64 %688, %681
  %697 = select i1 %695, i1 %696, i1 false
  br i1 %697, label %698, label %704

698:                                              ; preds = %691
  %699 = sub nuw i64 %688, %681
  %700 = load ptr, ptr %524, align 8, !tbaa !40
  %701 = getelementptr inbounds nuw i8, ptr %700, i64 %681
  %702 = load i64, ptr %525, align 8, !tbaa !59
  %703 = tail call i64 @crc32_z(i64 noundef %702, ptr noundef %701, i64 noundef %699) #11
  store i64 %703, ptr %525, align 8, !tbaa !59
  br label %704

704:                                              ; preds = %698, %691
  store i64 0, ptr %516, align 8, !tbaa !118
  br label %705

705:                                              ; preds = %704, %505
  store i32 73, ptr %20, align 8, !tbaa !29
  br label %706

706:                                              ; preds = %705, %503
  %707 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %708 = load ptr, ptr %707, align 8, !tbaa !100
  %709 = getelementptr inbounds nuw i8, ptr %708, i64 40
  %710 = load ptr, ptr %709, align 8, !tbaa !111
  %711 = icmp eq ptr %710, null
  br i1 %711, label %817, label %712

712:                                              ; preds = %706
  %713 = load i64, ptr %52, align 8, !tbaa !57
  %714 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %715 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %716 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %717 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %718 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %719

719:                                              ; preds = %795, %712
  %720 = phi i64 [ %713, %712 ], [ %782, %795 ]
  %721 = load i64, ptr %52, align 8, !tbaa !57
  %722 = load i64, ptr %714, align 8, !tbaa !41
  %723 = icmp eq i64 %721, %722
  br i1 %723, label %724, label %780

724:                                              ; preds = %719
  %725 = load ptr, ptr %707, align 8, !tbaa !100
  %726 = getelementptr inbounds nuw i8, ptr %725, i64 68
  %727 = load i32, ptr %726, align 4, !tbaa !114
  %728 = icmp ne i32 %727, 0
  %729 = icmp ugt i64 %721, %720
  %730 = select i1 %728, i1 %729, i1 false
  br i1 %730, label %731, label %737

731:                                              ; preds = %724
  %732 = sub nuw i64 %721, %720
  %733 = load ptr, ptr %715, align 8, !tbaa !40
  %734 = getelementptr inbounds nuw i8, ptr %733, i64 %720
  %735 = load i64, ptr %716, align 8, !tbaa !59
  %736 = tail call i64 @crc32_z(i64 noundef %735, ptr noundef %734, i64 noundef %732) #11
  store i64 %736, ptr %716, align 8, !tbaa !59
  br label %737

737:                                              ; preds = %731, %724
  %738 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %738) #11
  %739 = getelementptr inbounds nuw i8, ptr %738, i64 40
  %740 = load i64, ptr %739, align 8, !tbaa !57
  %741 = load i32, ptr %43, align 8, !tbaa !107
  %742 = zext i32 %741 to i64
  %743 = tail call i64 @llvm.umin.i64(i64 %740, i64 %742)
  %744 = trunc nuw i64 %743 to i32
  %745 = icmp eq i64 %743, 0
  br i1 %745, label %776, label %746

746:                                              ; preds = %737
  %747 = load ptr, ptr %25, align 8, !tbaa !106
  %748 = getelementptr inbounds nuw i8, ptr %738, i64 32
  %749 = load ptr, ptr %748, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %747, ptr align 1 %749, i64 %743, i1 false)
  %750 = load ptr, ptr %25, align 8, !tbaa !106
  %751 = getelementptr inbounds nuw i8, ptr %750, i64 %743
  store ptr %751, ptr %25, align 8, !tbaa !106
  %752 = load ptr, ptr %748, align 8, !tbaa !58
  %753 = getelementptr inbounds nuw i8, ptr %752, i64 %743
  store ptr %753, ptr %748, align 8, !tbaa !58
  %754 = load i64, ptr %717, align 8, !tbaa !108
  %755 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %754, i64 %743), !nosanitize !45
  %756 = extractvalue { i64, i1 } %755, 1, !nosanitize !45
  br i1 %756, label %757, label %758, !prof !46, !nosanitize !45

757:                                              ; preds = %746
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

758:                                              ; preds = %746
  %759 = extractvalue { i64, i1 } %755, 0, !nosanitize !45
  store i64 %759, ptr %717, align 8, !tbaa !108
  %760 = load i32, ptr %43, align 8, !tbaa !107
  %761 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %760, i32 %744), !nosanitize !45
  %762 = extractvalue { i32, i1 } %761, 1, !nosanitize !45
  br i1 %762, label %763, label %764, !prof !46, !nosanitize !45

763:                                              ; preds = %758
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

764:                                              ; preds = %758
  %765 = extractvalue { i32, i1 } %761, 0, !nosanitize !45
  store i32 %765, ptr %43, align 8, !tbaa !107
  %766 = load i64, ptr %739, align 8, !tbaa !57
  %767 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %766, i64 %743), !nosanitize !45
  %768 = extractvalue { i64, i1 } %767, 1, !nosanitize !45
  br i1 %768, label %769, label %770, !prof !46, !nosanitize !45

769:                                              ; preds = %764
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

770:                                              ; preds = %764
  %771 = extractvalue { i64, i1 } %767, 0, !nosanitize !45
  store i64 %771, ptr %739, align 8, !tbaa !57
  %772 = icmp eq i64 %771, 0
  br i1 %772, label %773, label %776

773:                                              ; preds = %770
  %774 = getelementptr inbounds nuw i8, ptr %738, i64 16
  %775 = load ptr, ptr %774, align 8, !tbaa !40
  store ptr %775, ptr %748, align 8, !tbaa !58
  br label %776

776:                                              ; preds = %773, %770, %737
  %777 = load i64, ptr %52, align 8, !tbaa !57
  %778 = icmp eq i64 %777, 0
  br i1 %778, label %780, label %779

779:                                              ; preds = %776
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1197

780:                                              ; preds = %776, %719
  %781 = phi i64 [ %721, %719 ], [ 0, %776 ]
  %782 = phi i64 [ %720, %719 ], [ 0, %776 ]
  %783 = load i64, ptr %718, align 8, !tbaa !118
  %784 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %783, i64 1), !nosanitize !45
  %785 = extractvalue { i64, i1 } %784, 1, !nosanitize !45
  br i1 %785, label %786, label %787, !prof !46, !nosanitize !45

786:                                              ; preds = %780
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

787:                                              ; preds = %780
  %788 = extractvalue { i64, i1 } %784, 0, !nosanitize !45
  %789 = load ptr, ptr %707, align 8, !tbaa !100
  %790 = getelementptr inbounds nuw i8, ptr %789, i64 40
  %791 = load ptr, ptr %790, align 8, !tbaa !111
  store i64 %788, ptr %718, align 8, !tbaa !118
  %792 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %781, i64 1), !nosanitize !45
  %793 = extractvalue { i64, i1 } %792, 1, !nosanitize !45
  br i1 %793, label %794, label %795, !prof !46, !nosanitize !45

794:                                              ; preds = %787
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

795:                                              ; preds = %787
  %796 = extractvalue { i64, i1 } %792, 0, !nosanitize !45
  %797 = load ptr, ptr %715, align 8, !tbaa !40
  %798 = getelementptr inbounds nuw i8, ptr %791, i64 %783
  %799 = load i8, ptr %798, align 1, !tbaa !8
  store i64 %796, ptr %52, align 8, !tbaa !57
  %800 = getelementptr inbounds nuw i8, ptr %797, i64 %781
  store i8 %799, ptr %800, align 1, !tbaa !8
  %801 = icmp eq i8 %799, 0
  br i1 %801, label %802, label %719, !llvm.loop !122

802:                                              ; preds = %795
  %803 = load ptr, ptr %707, align 8, !tbaa !100
  %804 = getelementptr inbounds nuw i8, ptr %803, i64 68
  %805 = load i32, ptr %804, align 4, !tbaa !114
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %816, label %807

807:                                              ; preds = %802
  %808 = load i64, ptr %52, align 8, !tbaa !57
  %809 = icmp ugt i64 %808, %782
  br i1 %809, label %810, label %816

810:                                              ; preds = %807
  %811 = sub nuw i64 %808, %782
  %812 = load ptr, ptr %715, align 8, !tbaa !40
  %813 = getelementptr inbounds nuw i8, ptr %812, i64 %782
  %814 = load i64, ptr %716, align 8, !tbaa !59
  %815 = tail call i64 @crc32_z(i64 noundef %814, ptr noundef %813, i64 noundef %811) #11
  store i64 %815, ptr %716, align 8, !tbaa !59
  br label %816

816:                                              ; preds = %810, %807, %802
  store i64 0, ptr %718, align 8, !tbaa !118
  br label %817

817:                                              ; preds = %816, %706
  store i32 91, ptr %20, align 8, !tbaa !29
  br label %818

818:                                              ; preds = %817, %503
  %819 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %820 = load ptr, ptr %819, align 8, !tbaa !100
  %821 = getelementptr inbounds nuw i8, ptr %820, i64 56
  %822 = load ptr, ptr %821, align 8, !tbaa !109
  %823 = icmp eq ptr %822, null
  br i1 %823, label %928, label %824

824:                                              ; preds = %818
  %825 = load i64, ptr %52, align 8, !tbaa !57
  %826 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %827 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %828 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %829 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %830 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %831

831:                                              ; preds = %907, %824
  %832 = phi i64 [ %825, %824 ], [ %894, %907 ]
  %833 = load i64, ptr %52, align 8, !tbaa !57
  %834 = load i64, ptr %826, align 8, !tbaa !41
  %835 = icmp eq i64 %833, %834
  br i1 %835, label %836, label %892

836:                                              ; preds = %831
  %837 = load ptr, ptr %819, align 8, !tbaa !100
  %838 = getelementptr inbounds nuw i8, ptr %837, i64 68
  %839 = load i32, ptr %838, align 4, !tbaa !114
  %840 = icmp ne i32 %839, 0
  %841 = icmp ugt i64 %833, %832
  %842 = select i1 %840, i1 %841, i1 false
  br i1 %842, label %843, label %849

843:                                              ; preds = %836
  %844 = sub nuw i64 %833, %832
  %845 = load ptr, ptr %827, align 8, !tbaa !40
  %846 = getelementptr inbounds nuw i8, ptr %845, i64 %832
  %847 = load i64, ptr %828, align 8, !tbaa !59
  %848 = tail call i64 @crc32_z(i64 noundef %847, ptr noundef %846, i64 noundef %844) #11
  store i64 %848, ptr %828, align 8, !tbaa !59
  br label %849

849:                                              ; preds = %843, %836
  %850 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %850) #11
  %851 = getelementptr inbounds nuw i8, ptr %850, i64 40
  %852 = load i64, ptr %851, align 8, !tbaa !57
  %853 = load i32, ptr %43, align 8, !tbaa !107
  %854 = zext i32 %853 to i64
  %855 = tail call i64 @llvm.umin.i64(i64 %852, i64 %854)
  %856 = trunc nuw i64 %855 to i32
  %857 = icmp eq i64 %855, 0
  br i1 %857, label %888, label %858

858:                                              ; preds = %849
  %859 = load ptr, ptr %25, align 8, !tbaa !106
  %860 = getelementptr inbounds nuw i8, ptr %850, i64 32
  %861 = load ptr, ptr %860, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %859, ptr align 1 %861, i64 %855, i1 false)
  %862 = load ptr, ptr %25, align 8, !tbaa !106
  %863 = getelementptr inbounds nuw i8, ptr %862, i64 %855
  store ptr %863, ptr %25, align 8, !tbaa !106
  %864 = load ptr, ptr %860, align 8, !tbaa !58
  %865 = getelementptr inbounds nuw i8, ptr %864, i64 %855
  store ptr %865, ptr %860, align 8, !tbaa !58
  %866 = load i64, ptr %829, align 8, !tbaa !108
  %867 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %866, i64 %855), !nosanitize !45
  %868 = extractvalue { i64, i1 } %867, 1, !nosanitize !45
  br i1 %868, label %869, label %870, !prof !46, !nosanitize !45

869:                                              ; preds = %858
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

870:                                              ; preds = %858
  %871 = extractvalue { i64, i1 } %867, 0, !nosanitize !45
  store i64 %871, ptr %829, align 8, !tbaa !108
  %872 = load i32, ptr %43, align 8, !tbaa !107
  %873 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %872, i32 %856), !nosanitize !45
  %874 = extractvalue { i32, i1 } %873, 1, !nosanitize !45
  br i1 %874, label %875, label %876, !prof !46, !nosanitize !45

875:                                              ; preds = %870
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

876:                                              ; preds = %870
  %877 = extractvalue { i32, i1 } %873, 0, !nosanitize !45
  store i32 %877, ptr %43, align 8, !tbaa !107
  %878 = load i64, ptr %851, align 8, !tbaa !57
  %879 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %878, i64 %855), !nosanitize !45
  %880 = extractvalue { i64, i1 } %879, 1, !nosanitize !45
  br i1 %880, label %881, label %882, !prof !46, !nosanitize !45

881:                                              ; preds = %876
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

882:                                              ; preds = %876
  %883 = extractvalue { i64, i1 } %879, 0, !nosanitize !45
  store i64 %883, ptr %851, align 8, !tbaa !57
  %884 = icmp eq i64 %883, 0
  br i1 %884, label %885, label %888

885:                                              ; preds = %882
  %886 = getelementptr inbounds nuw i8, ptr %850, i64 16
  %887 = load ptr, ptr %886, align 8, !tbaa !40
  store ptr %887, ptr %860, align 8, !tbaa !58
  br label %888

888:                                              ; preds = %885, %882, %849
  %889 = load i64, ptr %52, align 8, !tbaa !57
  %890 = icmp eq i64 %889, 0
  br i1 %890, label %892, label %891

891:                                              ; preds = %888
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1197

892:                                              ; preds = %888, %831
  %893 = phi i64 [ %833, %831 ], [ 0, %888 ]
  %894 = phi i64 [ %832, %831 ], [ 0, %888 ]
  %895 = load i64, ptr %830, align 8, !tbaa !118
  %896 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %895, i64 1), !nosanitize !45
  %897 = extractvalue { i64, i1 } %896, 1, !nosanitize !45
  br i1 %897, label %898, label %899, !prof !46, !nosanitize !45

898:                                              ; preds = %892
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

899:                                              ; preds = %892
  %900 = extractvalue { i64, i1 } %896, 0, !nosanitize !45
  %901 = load ptr, ptr %819, align 8, !tbaa !100
  %902 = getelementptr inbounds nuw i8, ptr %901, i64 56
  %903 = load ptr, ptr %902, align 8, !tbaa !109
  store i64 %900, ptr %830, align 8, !tbaa !118
  %904 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %893, i64 1), !nosanitize !45
  %905 = extractvalue { i64, i1 } %904, 1, !nosanitize !45
  br i1 %905, label %906, label %907, !prof !46, !nosanitize !45

906:                                              ; preds = %899
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

907:                                              ; preds = %899
  %908 = extractvalue { i64, i1 } %904, 0, !nosanitize !45
  %909 = load ptr, ptr %827, align 8, !tbaa !40
  %910 = getelementptr inbounds nuw i8, ptr %903, i64 %895
  %911 = load i8, ptr %910, align 1, !tbaa !8
  store i64 %908, ptr %52, align 8, !tbaa !57
  %912 = getelementptr inbounds nuw i8, ptr %909, i64 %893
  store i8 %911, ptr %912, align 1, !tbaa !8
  %913 = icmp eq i8 %911, 0
  br i1 %913, label %914, label %831, !llvm.loop !123

914:                                              ; preds = %907
  %915 = load ptr, ptr %819, align 8, !tbaa !100
  %916 = getelementptr inbounds nuw i8, ptr %915, i64 68
  %917 = load i32, ptr %916, align 4, !tbaa !114
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %928, label %919

919:                                              ; preds = %914
  %920 = load i64, ptr %52, align 8, !tbaa !57
  %921 = icmp ugt i64 %920, %894
  br i1 %921, label %922, label %928

922:                                              ; preds = %919
  %923 = sub nuw i64 %920, %894
  %924 = load ptr, ptr %827, align 8, !tbaa !40
  %925 = getelementptr inbounds nuw i8, ptr %924, i64 %894
  %926 = load i64, ptr %828, align 8, !tbaa !59
  %927 = tail call i64 @crc32_z(i64 noundef %926, ptr noundef %925, i64 noundef %923) #11
  store i64 %927, ptr %828, align 8, !tbaa !59
  br label %928

928:                                              ; preds = %922, %919, %914, %818
  store i32 103, ptr %20, align 8, !tbaa !29
  br label %929

929:                                              ; preds = %928, %503
  %930 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %931 = load ptr, ptr %930, align 8, !tbaa !100
  %932 = getelementptr inbounds nuw i8, ptr %931, i64 68
  %933 = load i32, ptr %932, align 4, !tbaa !114
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %970, label %935

935:                                              ; preds = %929
  %936 = load i64, ptr %52, align 8, !tbaa !57
  %937 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %936, i64 2), !nosanitize !45
  %938 = extractvalue { i64, i1 } %937, 1, !nosanitize !45
  br i1 %938, label %939, label %940, !prof !46, !nosanitize !45

939:                                              ; preds = %935
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

940:                                              ; preds = %935
  %941 = extractvalue { i64, i1 } %937, 0, !nosanitize !45
  %942 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %943 = load i64, ptr %942, align 8, !tbaa !41
  %944 = icmp ugt i64 %941, %943
  br i1 %944, label %945, label %949

945:                                              ; preds = %940
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %946 = load i64, ptr %52, align 8, !tbaa !57
  %947 = icmp eq i64 %946, 0
  br i1 %947, label %949, label %948

948:                                              ; preds = %945
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1197

949:                                              ; preds = %945, %940
  %950 = phi i64 [ 0, %945 ], [ %936, %940 ]
  %951 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %952 = add nuw i64 %950, 1
  %953 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %954 = load ptr, ptr %953, align 8, !tbaa !40
  %955 = load i64, ptr %951, align 8, !tbaa !59
  %956 = trunc i64 %955 to i8
  store i64 %952, ptr %52, align 8, !tbaa !57
  %957 = getelementptr inbounds nuw i8, ptr %954, i64 %950
  store i8 %956, ptr %957, align 1, !tbaa !8
  %958 = load i64, ptr %52, align 8, !tbaa !57
  %959 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %958, i64 1), !nosanitize !45
  %960 = extractvalue { i64, i1 } %959, 1, !nosanitize !45
  br i1 %960, label %961, label %962, !prof !46, !nosanitize !45

961:                                              ; preds = %949
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

962:                                              ; preds = %949
  %963 = extractvalue { i64, i1 } %959, 0, !nosanitize !45
  %964 = load ptr, ptr %953, align 8, !tbaa !40
  %965 = load i64, ptr %951, align 8, !tbaa !59
  %966 = lshr i64 %965, 8
  %967 = trunc i64 %966 to i8
  store i64 %963, ptr %52, align 8, !tbaa !57
  %968 = getelementptr inbounds nuw i8, ptr %964, i64 %958
  store i8 %967, ptr %968, align 1, !tbaa !8
  %969 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %969, ptr %951, align 8, !tbaa !59
  br label %970

970:                                              ; preds = %962, %929
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %971 = load i64, ptr %52, align 8, !tbaa !57
  %972 = icmp eq i64 %971, 0
  br i1 %972, label %974, label %973

973:                                              ; preds = %970
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1197

974:                                              ; preds = %970, %503, %136
  %975 = load i32, ptr %29, align 8, !tbaa !81
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %977, label %986

977:                                              ; preds = %974, %126
  %978 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %979 = load i32, ptr %978, align 4, !tbaa !75
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %981, label %986

981:                                              ; preds = %977
  %982 = icmp eq i32 %1, 0
  br i1 %982, label %1197, label %983

983:                                              ; preds = %981
  %984 = load i32, ptr %20, align 8, !tbaa !29
  %985 = icmp eq i32 %984, 666
  br i1 %985, label %1048, label %986

986:                                              ; preds = %983, %977, %974
  %987 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %988 = load i32, ptr %987, align 4, !tbaa !48
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %990, label %992

990:                                              ; preds = %986
  %991 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %1005

992:                                              ; preds = %986
  %993 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %994 = load i32, ptr %993, align 8, !tbaa !49
  switch i32 %994, label %999 [
    i32 2, label %995
    i32 3, label %997
  ]

995:                                              ; preds = %992
  %996 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %1005

997:                                              ; preds = %992
  %998 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %1005

999:                                              ; preds = %992
  %1000 = sext i32 %988 to i64
  %1001 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1000
  %1002 = getelementptr inbounds nuw i8, ptr %1001, i64 8
  %1003 = load ptr, ptr %1002, align 8, !tbaa !105
  %1004 = tail call i32 %1003(ptr noundef nonnull %14, i32 noundef %1) #11
  br label %1005

1005:                                             ; preds = %999, %997, %995, %990
  %1006 = phi i32 [ %991, %990 ], [ %996, %995 ], [ %998, %997 ], [ %1004, %999 ]
  %1007 = and i32 %1006, -2
  %1008 = icmp eq i32 %1007, 2
  br i1 %1008, label %1009, label %1010

1009:                                             ; preds = %1005
  store i32 666, ptr %20, align 8, !tbaa !29
  br label %1010

1010:                                             ; preds = %1009, %1005
  %1011 = and i32 %1006, -3
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1013, label %1017

1013:                                             ; preds = %1010
  %1014 = load i32, ptr %43, align 8, !tbaa !107
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1016, label %1197

1016:                                             ; preds = %1013
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1197

1017:                                             ; preds = %1010
  %1018 = icmp eq i32 %1006, 1
  br i1 %1018, label %1019, label %1048

1019:                                             ; preds = %1017
  switch i32 %1, label %1021 [
    i32 1, label %1020
    i32 5, label %1044
  ]

1020:                                             ; preds = %1019
  tail call void @_tr_align(ptr noundef nonnull %14) #11
  br label %1044

1021:                                             ; preds = %1019
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %1022 = icmp eq i32 %1, 3
  br i1 %1022, label %1023, label %1044

1023:                                             ; preds = %1021
  %1024 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %1025 = load i32, ptr %1024, align 4, !tbaa !36
  %1026 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1025, i32 1), !nosanitize !45
  %1027 = extractvalue { i32, i1 } %1026, 1, !nosanitize !45
  br i1 %1027, label %1028, label %1029, !prof !46, !nosanitize !45

1028:                                             ; preds = %1023
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1029:                                             ; preds = %1023
  %1030 = extractvalue { i32, i1 } %1026, 0, !nosanitize !45
  %1031 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %1032 = load ptr, ptr %1031, align 8, !tbaa !37
  %1033 = zext i32 %1030 to i64
  %1034 = getelementptr inbounds nuw [2 x i8], ptr %1032, i64 %1033
  store i16 0, ptr %1034, align 2, !tbaa !62
  %1035 = shl nuw nsw i64 %1033, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1032, i8 0, i64 %1035, i1 false)
  %1036 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %1036, align 8, !tbaa !63
  %1037 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %1038 = load i32, ptr %1037, align 4, !tbaa !75
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1040, label %1044

1040:                                             ; preds = %1029
  %1041 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %1041, align 4, !tbaa !73
  %1042 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %1042, align 8, !tbaa !74
  %1043 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %1043, align 4, !tbaa !76
  br label %1044

1044:                                             ; preds = %1040, %1029, %1021, %1020, %1019
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1045 = load i32, ptr %43, align 8, !tbaa !107
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1047, label %1048

1047:                                             ; preds = %1044
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1197

1048:                                             ; preds = %1044, %1017, %983
  br i1 %37, label %1197, label %1049

1049:                                             ; preds = %1048
  %1050 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %1051 = load i32, ptr %1050, align 8, !tbaa !30
  %1052 = icmp slt i32 %1051, 1
  br i1 %1052, label %1197, label %1053

1053:                                             ; preds = %1049
  %1054 = icmp eq i32 %1051, 2
  %1055 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1054, label %1056, label %1145

1056:                                             ; preds = %1053
  %1057 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1058 = load i64, ptr %52, align 8, !tbaa !57
  %1059 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1058, i64 1), !nosanitize !45
  %1060 = extractvalue { i64, i1 } %1059, 1, !nosanitize !45
  br i1 %1060, label %1061, label %1062, !prof !46, !nosanitize !45

1061:                                             ; preds = %1056
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1062:                                             ; preds = %1056
  %1063 = extractvalue { i64, i1 } %1059, 0, !nosanitize !45
  %1064 = load ptr, ptr %1057, align 8, !tbaa !40
  %1065 = load i64, ptr %1055, align 8, !tbaa !59
  %1066 = trunc i64 %1065 to i8
  store i64 %1063, ptr %52, align 8, !tbaa !57
  %1067 = getelementptr inbounds nuw i8, ptr %1064, i64 %1058
  store i8 %1066, ptr %1067, align 1, !tbaa !8
  %1068 = load i64, ptr %52, align 8, !tbaa !57
  %1069 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1068, i64 1), !nosanitize !45
  %1070 = extractvalue { i64, i1 } %1069, 1, !nosanitize !45
  br i1 %1070, label %1071, label %1072, !prof !46, !nosanitize !45

1071:                                             ; preds = %1062
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1072:                                             ; preds = %1062
  %1073 = extractvalue { i64, i1 } %1069, 0, !nosanitize !45
  %1074 = load ptr, ptr %1057, align 8, !tbaa !40
  %1075 = load i64, ptr %1055, align 8, !tbaa !59
  %1076 = lshr i64 %1075, 8
  %1077 = trunc i64 %1076 to i8
  store i64 %1073, ptr %52, align 8, !tbaa !57
  %1078 = getelementptr inbounds nuw i8, ptr %1074, i64 %1068
  store i8 %1077, ptr %1078, align 1, !tbaa !8
  %1079 = load i64, ptr %52, align 8, !tbaa !57
  %1080 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1079, i64 1), !nosanitize !45
  %1081 = extractvalue { i64, i1 } %1080, 1, !nosanitize !45
  br i1 %1081, label %1082, label %1083, !prof !46, !nosanitize !45

1082:                                             ; preds = %1072
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1083:                                             ; preds = %1072
  %1084 = extractvalue { i64, i1 } %1080, 0, !nosanitize !45
  %1085 = load ptr, ptr %1057, align 8, !tbaa !40
  %1086 = load i64, ptr %1055, align 8, !tbaa !59
  %1087 = lshr i64 %1086, 16
  %1088 = trunc i64 %1087 to i8
  store i64 %1084, ptr %52, align 8, !tbaa !57
  %1089 = getelementptr inbounds nuw i8, ptr %1085, i64 %1079
  store i8 %1088, ptr %1089, align 1, !tbaa !8
  %1090 = load i64, ptr %52, align 8, !tbaa !57
  %1091 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1090, i64 1), !nosanitize !45
  %1092 = extractvalue { i64, i1 } %1091, 1, !nosanitize !45
  br i1 %1092, label %1093, label %1094, !prof !46, !nosanitize !45

1093:                                             ; preds = %1083
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1094:                                             ; preds = %1083
  %1095 = extractvalue { i64, i1 } %1091, 0, !nosanitize !45
  %1096 = load ptr, ptr %1057, align 8, !tbaa !40
  %1097 = load i64, ptr %1055, align 8, !tbaa !59
  %1098 = lshr i64 %1097, 24
  %1099 = trunc i64 %1098 to i8
  store i64 %1095, ptr %52, align 8, !tbaa !57
  %1100 = getelementptr inbounds nuw i8, ptr %1096, i64 %1090
  store i8 %1099, ptr %1100, align 1, !tbaa !8
  %1101 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1102 = load i64, ptr %52, align 8, !tbaa !57
  %1103 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1102, i64 1), !nosanitize !45
  %1104 = extractvalue { i64, i1 } %1103, 1, !nosanitize !45
  br i1 %1104, label %1105, label %1106, !prof !46, !nosanitize !45

1105:                                             ; preds = %1094
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1106:                                             ; preds = %1094
  %1107 = extractvalue { i64, i1 } %1103, 0, !nosanitize !45
  %1108 = load ptr, ptr %1057, align 8, !tbaa !40
  %1109 = load i64, ptr %1101, align 8, !tbaa !55
  %1110 = trunc i64 %1109 to i8
  store i64 %1107, ptr %52, align 8, !tbaa !57
  %1111 = getelementptr inbounds nuw i8, ptr %1108, i64 %1102
  store i8 %1110, ptr %1111, align 1, !tbaa !8
  %1112 = load i64, ptr %52, align 8, !tbaa !57
  %1113 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1112, i64 1), !nosanitize !45
  %1114 = extractvalue { i64, i1 } %1113, 1, !nosanitize !45
  br i1 %1114, label %1115, label %1116, !prof !46, !nosanitize !45

1115:                                             ; preds = %1106
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1116:                                             ; preds = %1106
  %1117 = extractvalue { i64, i1 } %1113, 0, !nosanitize !45
  %1118 = load ptr, ptr %1057, align 8, !tbaa !40
  %1119 = load i64, ptr %1101, align 8, !tbaa !55
  %1120 = lshr i64 %1119, 8
  %1121 = trunc i64 %1120 to i8
  store i64 %1117, ptr %52, align 8, !tbaa !57
  %1122 = getelementptr inbounds nuw i8, ptr %1118, i64 %1112
  store i8 %1121, ptr %1122, align 1, !tbaa !8
  %1123 = load i64, ptr %52, align 8, !tbaa !57
  %1124 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1123, i64 1), !nosanitize !45
  %1125 = extractvalue { i64, i1 } %1124, 1, !nosanitize !45
  br i1 %1125, label %1126, label %1127, !prof !46, !nosanitize !45

1126:                                             ; preds = %1116
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1127:                                             ; preds = %1116
  %1128 = extractvalue { i64, i1 } %1124, 0, !nosanitize !45
  %1129 = load ptr, ptr %1057, align 8, !tbaa !40
  %1130 = load i64, ptr %1101, align 8, !tbaa !55
  %1131 = lshr i64 %1130, 16
  %1132 = trunc i64 %1131 to i8
  store i64 %1128, ptr %52, align 8, !tbaa !57
  %1133 = getelementptr inbounds nuw i8, ptr %1129, i64 %1123
  store i8 %1132, ptr %1133, align 1, !tbaa !8
  %1134 = load i64, ptr %52, align 8, !tbaa !57
  %1135 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1134, i64 1), !nosanitize !45
  %1136 = extractvalue { i64, i1 } %1135, 1, !nosanitize !45
  br i1 %1136, label %1137, label %1138, !prof !46, !nosanitize !45

1137:                                             ; preds = %1127
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1138:                                             ; preds = %1127
  %1139 = extractvalue { i64, i1 } %1135, 0, !nosanitize !45
  %1140 = load ptr, ptr %1057, align 8, !tbaa !40
  %1141 = load i64, ptr %1101, align 8, !tbaa !55
  %1142 = lshr i64 %1141, 24
  %1143 = trunc i64 %1142 to i8
  store i64 %1139, ptr %52, align 8, !tbaa !57
  %1144 = getelementptr inbounds nuw i8, ptr %1140, i64 %1134
  store i8 %1143, ptr %1144, align 1, !tbaa !8
  br label %1188

1145:                                             ; preds = %1053
  %1146 = load i64, ptr %1055, align 8, !tbaa !59
  %1147 = lshr i64 %1146, 16
  %1148 = load i64, ptr %52, align 8, !tbaa !57
  %1149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1148, i64 1), !nosanitize !45
  %1150 = extractvalue { i64, i1 } %1149, 1, !nosanitize !45
  br i1 %1150, label %1151, label %1152, !prof !46, !nosanitize !45

1151:                                             ; preds = %1145
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1152:                                             ; preds = %1145
  %1153 = extractvalue { i64, i1 } %1149, 0, !nosanitize !45
  %1154 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1155 = load ptr, ptr %1154, align 8, !tbaa !40
  %1156 = lshr i64 %1146, 24
  %1157 = trunc i64 %1156 to i8
  store i64 %1153, ptr %52, align 8, !tbaa !57
  %1158 = getelementptr inbounds nuw i8, ptr %1155, i64 %1148
  store i8 %1157, ptr %1158, align 1, !tbaa !8
  %1159 = load i64, ptr %52, align 8, !tbaa !57
  %1160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1159, i64 1), !nosanitize !45
  %1161 = extractvalue { i64, i1 } %1160, 1, !nosanitize !45
  br i1 %1161, label %1162, label %1163, !prof !46, !nosanitize !45

1162:                                             ; preds = %1152
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1163:                                             ; preds = %1152
  %1164 = extractvalue { i64, i1 } %1160, 0, !nosanitize !45
  %1165 = load ptr, ptr %1154, align 8, !tbaa !40
  %1166 = trunc i64 %1147 to i8
  store i64 %1164, ptr %52, align 8, !tbaa !57
  %1167 = getelementptr inbounds nuw i8, ptr %1165, i64 %1159
  store i8 %1166, ptr %1167, align 1, !tbaa !8
  %1168 = load i64, ptr %1055, align 8, !tbaa !59
  %1169 = trunc i64 %1168 to i8
  %1170 = load i64, ptr %52, align 8, !tbaa !57
  %1171 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1170, i64 1), !nosanitize !45
  %1172 = extractvalue { i64, i1 } %1171, 1, !nosanitize !45
  br i1 %1172, label %1173, label %1174, !prof !46, !nosanitize !45

1173:                                             ; preds = %1163
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1174:                                             ; preds = %1163
  %1175 = extractvalue { i64, i1 } %1171, 0, !nosanitize !45
  %1176 = load ptr, ptr %1154, align 8, !tbaa !40
  %1177 = lshr i64 %1168, 8
  %1178 = trunc i64 %1177 to i8
  store i64 %1175, ptr %52, align 8, !tbaa !57
  %1179 = getelementptr inbounds nuw i8, ptr %1176, i64 %1170
  store i8 %1178, ptr %1179, align 1, !tbaa !8
  %1180 = load i64, ptr %52, align 8, !tbaa !57
  %1181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1180, i64 1), !nosanitize !45
  %1182 = extractvalue { i64, i1 } %1181, 1, !nosanitize !45
  br i1 %1182, label %1183, label %1184, !prof !46, !nosanitize !45

1183:                                             ; preds = %1174
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1184:                                             ; preds = %1174
  %1185 = extractvalue { i64, i1 } %1181, 0, !nosanitize !45
  %1186 = load ptr, ptr %1154, align 8, !tbaa !40
  store i64 %1185, ptr %52, align 8, !tbaa !57
  %1187 = getelementptr inbounds nuw i8, ptr %1186, i64 %1180
  store i8 %1169, ptr %1187, align 1, !tbaa !8
  br label %1188

1188:                                             ; preds = %1184, %1138
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1189 = load i32, ptr %1050, align 8, !tbaa !30
  %1190 = icmp sgt i32 %1189, 0
  br i1 %1190, label %1191, label %1193

1191:                                             ; preds = %1188
  %1192 = sub nsw i32 0, %1189
  store i32 %1192, ptr %1050, align 8, !tbaa !30
  br label %1193

1193:                                             ; preds = %1191, %1188
  %1194 = load i64, ptr %52, align 8, !tbaa !57
  %1195 = icmp eq i64 %1194, 0
  %1196 = zext i1 %1195 to i32
  br label %1197

1197:                                             ; preds = %1193, %1049, %1048, %1047, %1016, %1013, %981, %973, %948, %891, %779, %.loopexit39, %346, %240, %129, %120, %99, %46, %39, %22, %19, %16, %12, %8, %4, %2
  %1198 = phi i32 [ -5, %120 ], [ -2, %39 ], [ -5, %46 ], [ 0, %99 ], [ -5, %129 ], [ 0, %346 ], [ 0, %948 ], [ 0, %973 ], [ -2, %22 ], [ 0, %1048 ], [ %1196, %1193 ], [ 1, %1049 ], [ 0, %891 ], [ 0, %779 ], [ 0, %.loopexit39 ], [ 0, %240 ], [ 0, %1016 ], [ 0, %1047 ], [ 0, %1013 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ 0, %981 ]
  ret i32 %1198
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @slide_hash(ptr noundef nonnull captures(none) %0) unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !32
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %8
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %34, label %11, !prof !46, !nosanitize !45

11:                                               ; preds = %1
  %12 = icmp ult i32 %5, 8
  br i1 %12, label %.preheader9, label %13

.preheader9:                                      ; preds = %28, %11
  %.ph10 = phi ptr [ %30, %28 ], [ %9, %11 ]
  %.ph11 = phi i32 [ %32, %28 ], [ %5, %11 ]
  br label %40

13:                                               ; preds = %11
  %14 = and i64 %8, 4294967288
  %15 = insertelement <8 x i32> poison, i32 %3, i64 0
  %16 = shufflevector <8 x i32> %15, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %17

17:                                               ; preds = %17, %13
  %18 = phi i64 [ 0, %13 ], [ %26, %17 ]
  %19 = mul nsw i64 %18, -2
  %20 = getelementptr i8, ptr %9, i64 %19
  %21 = getelementptr inbounds i8, ptr %20, i64 -16
  %22 = load <8 x i16>, ptr %21, align 2, !tbaa !62
  %23 = zext <8 x i16> %22 to <8 x i32>
  %24 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %23, <8 x i32> %16)
  %25 = trunc nuw <8 x i32> %24 to <8 x i16>
  store <8 x i16> %25, ptr %21, align 2, !tbaa !62
  %26 = add nuw nsw i64 %18, 8
  %27 = icmp eq i64 %26, %14
  br i1 %27, label %28, label %17, !llvm.loop !126

28:                                               ; preds = %17
  %29 = mul nsw i64 %14, -2
  %30 = getelementptr i8, ptr %9, i64 %29
  %31 = trunc nuw i64 %14 to i32
  %32 = sub i32 %5, %31
  %33 = icmp eq i64 %14, %8
  br i1 %33, label %.loopexit4, label %.preheader9

34:                                               ; preds = %1
  %35 = getelementptr inbounds i8, ptr %9, i64 -2
  %36 = load i16, ptr %35, align 2, !tbaa !62
  %37 = zext i16 %36 to i32
  %38 = tail call i32 @llvm.usub.sat.i32(i32 %37, i32 %3)
  %39 = trunc nuw i32 %38 to i16
  store i16 %39, ptr %35, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

40:                                               ; preds = %.preheader9, %40
  %41 = phi ptr [ %43, %40 ], [ %.ph10, %.preheader9 ]
  %42 = phi i32 [ %48, %40 ], [ %.ph11, %.preheader9 ]
  %43 = getelementptr inbounds i8, ptr %41, i64 -2
  %44 = load i16, ptr %43, align 2, !tbaa !62
  %45 = zext i16 %44 to i32
  %46 = tail call i32 @llvm.usub.sat.i32(i32 %45, i32 %3)
  %47 = trunc nuw i32 %46 to i16
  store i16 %47, ptr %43, align 2, !tbaa !62
  %48 = add i32 %42, -1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %.loopexit4, label %40, !llvm.loop !127

.loopexit4:                                       ; preds = %40, %28
  %50 = icmp eq i32 %3, 0
  br i1 %50, label %51, label %52, !prof !46, !nosanitize !45

51:                                               ; preds = %.loopexit4
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

52:                                               ; preds = %.loopexit4
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = zext i32 %3 to i64
  %56 = getelementptr inbounds nuw [2 x i8], ptr %54, i64 %55
  %57 = icmp ult i32 %3, 8
  br i1 %57, label %.preheader, label %58

58:                                               ; preds = %52
  %59 = and i64 %55, 4294967288
  %60 = insertelement <8 x i32> poison, i32 %3, i64 0
  %61 = shufflevector <8 x i32> %60, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %62

62:                                               ; preds = %62, %58
  %63 = phi i64 [ 0, %58 ], [ %71, %62 ]
  %64 = mul nsw i64 %63, -2
  %65 = getelementptr i8, ptr %56, i64 %64
  %66 = getelementptr inbounds i8, ptr %65, i64 -16
  %67 = load <8 x i16>, ptr %66, align 2, !tbaa !62
  %68 = zext <8 x i16> %67 to <8 x i32>
  %69 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %68, <8 x i32> %61)
  %70 = trunc nuw <8 x i32> %69 to <8 x i16>
  store <8 x i16> %70, ptr %66, align 2, !tbaa !62
  %71 = add nuw nsw i64 %63, 8
  %72 = icmp eq i64 %71, %59
  br i1 %72, label %73, label %62, !llvm.loop !128

73:                                               ; preds = %62
  %74 = mul nsw i64 %59, -2
  %75 = getelementptr i8, ptr %56, i64 %74
  %76 = trunc nuw i64 %59 to i32
  %77 = sub i32 %3, %76
  %78 = icmp eq i64 %59, %55
  br i1 %78, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %73, %52
  %.ph = phi ptr [ %75, %73 ], [ %56, %52 ]
  %.ph8 = phi i32 [ %77, %73 ], [ %3, %52 ]
  br label %79

79:                                               ; preds = %.preheader, %79
  %80 = phi ptr [ %82, %79 ], [ %.ph, %.preheader ]
  %81 = phi i32 [ %87, %79 ], [ %.ph8, %.preheader ]
  %82 = getelementptr inbounds i8, ptr %80, i64 -2
  %83 = load i16, ptr %82, align 2, !tbaa !62
  %84 = zext i16 %83 to i32
  %85 = tail call i32 @llvm.usub.sat.i32(i32 %84, i32 %3)
  %86 = trunc nuw i32 %85 to i16
  store i16 %86, ptr %82, align 2, !tbaa !62
  %87 = add i32 %81, -1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %.loopexit, label %79, !llvm.loop !129

.loopexit:                                        ; preds = %79, %73
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %89, align 8, !tbaa !63
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
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !45
  br i1 %30, label %31, label %32, !prof !46, !nosanitize !45

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !45
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !45
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !45
  br i1 %42, label %43, label %44, !prof !46, !nosanitize !45

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !45
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !45
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !45
  br i1 %47, label %48, label %49, !prof !46, !nosanitize !45

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

49:                                               ; preds = %44
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !45
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
  %64 = load ptr, ptr %63, align 8, !tbaa !19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 8, !tbaa !20
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %71 = load i32, ptr %70, align 8, !tbaa !29
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
  %74 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 18), !nosanitize !45
  %75 = extractvalue { i64, i1 } %74, 0, !nosanitize !45
  %76 = extractvalue { i64, i1 } %74, 1, !nosanitize !45
  br i1 %76, label %77, label %212, !prof !46, !nosanitize !45

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

78:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %79 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %80 = load i32, ptr %79, align 8, !tbaa !30
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %80), !nosanitize !45
  %84 = extractvalue { i32, i1 } %83, 0, !nosanitize !45
  %85 = extractvalue { i32, i1 } %83, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !45
  unreachable, !nosanitize !45

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %84, %82 ], [ %80, %78 ]
  switch i32 %88, label %157 [
    i32 0, label %158
    i32 1, label %89
    i32 2, label %94
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %91 = load i32, ptr %90, align 4, !tbaa !73
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 6, i64 10
  br label %158

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %96 = load ptr, ptr %95, align 8, !tbaa !100
  %97 = icmp eq ptr %96, null
  br i1 %97, label %158, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %100 = load ptr, ptr %99, align 8, !tbaa !112
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %104 = load i32, ptr %103, align 8, !tbaa !117
  %105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 2), !nosanitize !45
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !45
  br i1 %106, label %107, label %108, !prof !46, !nosanitize !45

107:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

108:                                              ; preds = %102
  %109 = extractvalue { i32, i1 } %105, 0, !nosanitize !45
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %110, 18
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi i64 [ %111, %108 ], [ 18, %98 ]
  %114 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %115 = load ptr, ptr %114, align 8, !tbaa !111
  %116 = icmp eq ptr %115, null
  br i1 %116, label %.loopexit7, label %117

117:                                              ; preds = %112
  %118 = add nuw nsw i64 %113, 1
  %119 = insertvalue { i64, i1 } { i64 poison, i1 false }, i64 %118, 0
  br label %125

120:                                              ; preds = %125
  %121 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %122 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %128, i64 1), !nosanitize !45
  %123 = extractvalue { i64, i1 } %122, 1, !nosanitize !45
  br i1 %123, label %124, label %125, !prof !130, !llvm.loop !131, !nosanitize !45

124:                                              ; preds = %120
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

125:                                              ; preds = %117, %120
  %126 = phi { i64, i1 } [ %122, %120 ], [ %119, %117 ]
  %127 = phi ptr [ %121, %120 ], [ %115, %117 ]
  %128 = extractvalue { i64, i1 } %126, 0, !nosanitize !45
  %129 = load i8, ptr %127, align 1, !tbaa !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %.loopexit7, label %120, !llvm.loop !131

.loopexit7:                                       ; preds = %125, %112
  %131 = phi i64 [ %113, %112 ], [ %128, %125 ]
  %132 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %133 = load ptr, ptr %132, align 8, !tbaa !109
  %134 = icmp eq ptr %133, null
  br i1 %134, label %.loopexit, label %135

135:                                              ; preds = %.loopexit7
  %136 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %131, i64 1), !nosanitize !45
  %137 = extractvalue { i64, i1 } %136, 1, !nosanitize !45
  br i1 %137, label %.loopexit6, label %.preheader, !prof !132, !nosanitize !45

138:                                              ; preds = %.preheader
  %139 = getelementptr inbounds nuw i8, ptr %143, i64 1
  %140 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %144, i64 1), !nosanitize !45
  %141 = extractvalue { i64, i1 } %140, 1, !nosanitize !45
  br i1 %141, label %.loopexit6, label %.preheader, !prof !130, !llvm.loop !133, !nosanitize !45

.loopexit6:                                       ; preds = %138, %135
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

.preheader:                                       ; preds = %135, %138
  %142 = phi { i64, i1 } [ %140, %138 ], [ %136, %135 ]
  %143 = phi ptr [ %139, %138 ], [ %133, %135 ]
  %144 = extractvalue { i64, i1 } %142, 0, !nosanitize !45
  %145 = load i8, ptr %143, align 1, !tbaa !8
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %.loopexit, label %138, !llvm.loop !133

.loopexit:                                        ; preds = %.preheader, %.loopexit7
  %147 = phi i64 [ %131, %.loopexit7 ], [ %144, %.preheader ]
  %148 = getelementptr inbounds nuw i8, ptr %96, i64 68
  %149 = load i32, ptr %148, align 4, !tbaa !114
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %.loopexit
  %152 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %147, i64 2), !nosanitize !45
  %153 = extractvalue { i64, i1 } %152, 1, !nosanitize !45
  br i1 %153, label %154, label %155, !prof !46, !nosanitize !45

154:                                              ; preds = %151
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

155:                                              ; preds = %151
  %156 = extractvalue { i64, i1 } %152, 0, !nosanitize !45
  br label %158

157:                                              ; preds = %87
  br label %158

158:                                              ; preds = %157, %155, %.loopexit, %94, %89, %87
  %159 = phi i64 [ 18, %157 ], [ 18, %94 ], [ %93, %89 ], [ 0, %87 ], [ %156, %155 ], [ %147, %.loopexit ]
  %160 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %161 = load i32, ptr %160, align 4, !tbaa !31
  %162 = icmp eq i32 %161, 15
  %163 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %164 = load i32, ptr %163, align 8, !tbaa !51
  %165 = icmp eq i32 %164, 15
  %166 = select i1 %162, i1 %165, i1 false
  br i1 %166, label %180, label %167

167:                                              ; preds = %158
  %168 = icmp ugt i32 %161, %164
  br i1 %168, label %173, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %171 = load i32, ptr %170, align 4, !tbaa !48
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169, %167
  br label %174

174:                                              ; preds = %173, %169
  %175 = phi i64 [ %52, %173 ], [ %27, %169 ]
  %176 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 %159), !nosanitize !45
  %177 = extractvalue { i64, i1 } %176, 0, !nosanitize !45
  %178 = extractvalue { i64, i1 } %176, 1, !nosanitize !45
  br i1 %178, label %179, label %212, !prof !46, !nosanitize !45

179:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

180:                                              ; preds = %158
  %181 = lshr i64 %1, 12
  %182 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %181), !nosanitize !45
  %183 = extractvalue { i64, i1 } %182, 1, !nosanitize !45
  br i1 %183, label %184, label %185, !prof !46, !nosanitize !45

184:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

185:                                              ; preds = %180
  %186 = extractvalue { i64, i1 } %182, 0, !nosanitize !45
  %187 = lshr i64 %1, 14
  %188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %186, i64 %187), !nosanitize !45
  %189 = extractvalue { i64, i1 } %188, 1, !nosanitize !45
  br i1 %189, label %190, label %191, !prof !46, !nosanitize !45

190:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

191:                                              ; preds = %185
  %192 = extractvalue { i64, i1 } %188, 0, !nosanitize !45
  %193 = lshr i64 %1, 25
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %192, i64 %193), !nosanitize !45
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !45
  br i1 %195, label %196, label %197, !prof !46, !nosanitize !45

196:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

197:                                              ; preds = %191
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !45
  %199 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %198, i64 13), !nosanitize !45
  %200 = extractvalue { i64, i1 } %199, 1, !nosanitize !45
  br i1 %200, label %201, label %202, !prof !46, !nosanitize !45

201:                                              ; preds = %197
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

202:                                              ; preds = %197
  %203 = extractvalue { i64, i1 } %199, 0, !nosanitize !45
  %204 = add i64 %203, -6
  %205 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 %159), !nosanitize !45
  %206 = extractvalue { i64, i1 } %205, 1, !nosanitize !45
  br i1 %206, label %207, label %208, !prof !46, !nosanitize !45

207:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

208:                                              ; preds = %202
  %209 = extractvalue { i64, i1 } %205, 0, !nosanitize !45
  %210 = icmp ult i64 %209, %1
  %211 = select i1 %210, i64 -1, i64 %209
  br label %212

212:                                              ; preds = %208, %174, %72
  %213 = phi i64 [ %211, %208 ], [ %75, %72 ], [ %177, %174 ]
  ret i64 %213
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

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
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !45
  br i1 %30, label %31, label %32, !prof !46, !nosanitize !45

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !45
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !45
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !45
  br i1 %42, label %43, label %44, !prof !46, !nosanitize !45

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !45
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !45
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !45
  br i1 %47, label %48, label %49, !prof !46, !nosanitize !45

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

49:                                               ; preds = %44
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !45
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
  %64 = load ptr, ptr %63, align 8, !tbaa !19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 8, !tbaa !20
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %71 = load i32, ptr %70, align 8, !tbaa !29
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
  %74 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 18), !nosanitize !45
  %75 = extractvalue { i64, i1 } %74, 0, !nosanitize !45
  %76 = extractvalue { i64, i1 } %74, 1, !nosanitize !45
  br i1 %76, label %77, label %212, !prof !46, !nosanitize !45

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

78:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %79 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %80 = load i32, ptr %79, align 8, !tbaa !30
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %80), !nosanitize !45
  %84 = extractvalue { i32, i1 } %83, 0, !nosanitize !45
  %85 = extractvalue { i32, i1 } %83, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !45
  unreachable, !nosanitize !45

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %84, %82 ], [ %80, %78 ]
  switch i32 %88, label %157 [
    i32 0, label %158
    i32 1, label %89
    i32 2, label %94
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %91 = load i32, ptr %90, align 4, !tbaa !73
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 6, i64 10
  br label %158

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %96 = load ptr, ptr %95, align 8, !tbaa !100
  %97 = icmp eq ptr %96, null
  br i1 %97, label %158, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %100 = load ptr, ptr %99, align 8, !tbaa !112
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %104 = load i32, ptr %103, align 8, !tbaa !117
  %105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 2), !nosanitize !45
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !45
  br i1 %106, label %107, label %108, !prof !46, !nosanitize !45

107:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

108:                                              ; preds = %102
  %109 = extractvalue { i32, i1 } %105, 0, !nosanitize !45
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %110, 18
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi i64 [ %111, %108 ], [ 18, %98 ]
  %114 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %115 = load ptr, ptr %114, align 8, !tbaa !111
  %116 = icmp eq ptr %115, null
  br i1 %116, label %.loopexit7, label %117

117:                                              ; preds = %112
  %118 = add nuw nsw i64 %113, 1
  %119 = insertvalue { i64, i1 } { i64 poison, i1 false }, i64 %118, 0
  br label %125

120:                                              ; preds = %125
  %121 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %122 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %128, i64 1), !nosanitize !45
  %123 = extractvalue { i64, i1 } %122, 1, !nosanitize !45
  br i1 %123, label %124, label %125, !prof !130, !llvm.loop !131, !nosanitize !45

124:                                              ; preds = %120
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

125:                                              ; preds = %117, %120
  %126 = phi { i64, i1 } [ %122, %120 ], [ %119, %117 ]
  %127 = phi ptr [ %121, %120 ], [ %115, %117 ]
  %128 = extractvalue { i64, i1 } %126, 0, !nosanitize !45
  %129 = load i8, ptr %127, align 1, !tbaa !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %.loopexit7, label %120, !llvm.loop !131

.loopexit7:                                       ; preds = %125, %112
  %131 = phi i64 [ %113, %112 ], [ %128, %125 ]
  %132 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %133 = load ptr, ptr %132, align 8, !tbaa !109
  %134 = icmp eq ptr %133, null
  br i1 %134, label %.loopexit, label %135

135:                                              ; preds = %.loopexit7
  %136 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %131, i64 1), !nosanitize !45
  %137 = extractvalue { i64, i1 } %136, 1, !nosanitize !45
  br i1 %137, label %.loopexit6, label %.preheader, !prof !132, !nosanitize !45

138:                                              ; preds = %.preheader
  %139 = getelementptr inbounds nuw i8, ptr %143, i64 1
  %140 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %144, i64 1), !nosanitize !45
  %141 = extractvalue { i64, i1 } %140, 1, !nosanitize !45
  br i1 %141, label %.loopexit6, label %.preheader, !prof !130, !llvm.loop !133, !nosanitize !45

.loopexit6:                                       ; preds = %138, %135
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

.preheader:                                       ; preds = %135, %138
  %142 = phi { i64, i1 } [ %140, %138 ], [ %136, %135 ]
  %143 = phi ptr [ %139, %138 ], [ %133, %135 ]
  %144 = extractvalue { i64, i1 } %142, 0, !nosanitize !45
  %145 = load i8, ptr %143, align 1, !tbaa !8
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %.loopexit, label %138, !llvm.loop !133

.loopexit:                                        ; preds = %.preheader, %.loopexit7
  %147 = phi i64 [ %131, %.loopexit7 ], [ %144, %.preheader ]
  %148 = getelementptr inbounds nuw i8, ptr %96, i64 68
  %149 = load i32, ptr %148, align 4, !tbaa !114
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %.loopexit
  %152 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %147, i64 2), !nosanitize !45
  %153 = extractvalue { i64, i1 } %152, 1, !nosanitize !45
  br i1 %153, label %154, label %155, !prof !46, !nosanitize !45

154:                                              ; preds = %151
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

155:                                              ; preds = %151
  %156 = extractvalue { i64, i1 } %152, 0, !nosanitize !45
  br label %158

157:                                              ; preds = %87
  br label %158

158:                                              ; preds = %157, %155, %.loopexit, %94, %89, %87
  %159 = phi i64 [ 18, %157 ], [ 18, %94 ], [ %93, %89 ], [ 0, %87 ], [ %156, %155 ], [ %147, %.loopexit ]
  %160 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %161 = load i32, ptr %160, align 4, !tbaa !31
  %162 = icmp eq i32 %161, 15
  %163 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %164 = load i32, ptr %163, align 8, !tbaa !51
  %165 = icmp eq i32 %164, 15
  %166 = select i1 %162, i1 %165, i1 false
  br i1 %166, label %180, label %167

167:                                              ; preds = %158
  %168 = icmp ugt i32 %161, %164
  br i1 %168, label %173, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %171 = load i32, ptr %170, align 4, !tbaa !48
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169, %167
  br label %174

174:                                              ; preds = %173, %169
  %175 = phi i64 [ %52, %173 ], [ %27, %169 ]
  %176 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 %159), !nosanitize !45
  %177 = extractvalue { i64, i1 } %176, 0, !nosanitize !45
  %178 = extractvalue { i64, i1 } %176, 1, !nosanitize !45
  br i1 %178, label %179, label %212, !prof !46, !nosanitize !45

179:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

180:                                              ; preds = %158
  %181 = lshr i64 %1, 12
  %182 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %181), !nosanitize !45
  %183 = extractvalue { i64, i1 } %182, 1, !nosanitize !45
  br i1 %183, label %184, label %185, !prof !46, !nosanitize !45

184:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

185:                                              ; preds = %180
  %186 = extractvalue { i64, i1 } %182, 0, !nosanitize !45
  %187 = lshr i64 %1, 14
  %188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %186, i64 %187), !nosanitize !45
  %189 = extractvalue { i64, i1 } %188, 1, !nosanitize !45
  br i1 %189, label %190, label %191, !prof !46, !nosanitize !45

190:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

191:                                              ; preds = %185
  %192 = extractvalue { i64, i1 } %188, 0, !nosanitize !45
  %193 = lshr i64 %1, 25
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %192, i64 %193), !nosanitize !45
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !45
  br i1 %195, label %196, label %197, !prof !46, !nosanitize !45

196:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

197:                                              ; preds = %191
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !45
  %199 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %198, i64 13), !nosanitize !45
  %200 = extractvalue { i64, i1 } %199, 1, !nosanitize !45
  br i1 %200, label %201, label %202, !prof !46, !nosanitize !45

201:                                              ; preds = %197
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

202:                                              ; preds = %197
  %203 = extractvalue { i64, i1 } %199, 0, !nosanitize !45
  %204 = add i64 %203, -6
  %205 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 %159), !nosanitize !45
  %206 = extractvalue { i64, i1 } %205, 1, !nosanitize !45
  br i1 %206, label %207, label %208, !prof !46, !nosanitize !45

207:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

208:                                              ; preds = %202
  %209 = extractvalue { i64, i1 } %205, 0, !nosanitize !45
  %210 = icmp ult i64 %209, %1
  %211 = select i1 %210, i64 -1, i64 %209
  br label %212

212:                                              ; preds = %208, %174, %72
  %213 = phi i64 [ %211, %208 ], [ %75, %72 ], [ %177, %174 ]
  ret i64 %213
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef nonnull captures(none) %0) unnamed_addr #0 {
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

27:                                               ; preds = %273, %8
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
  br i1 %38, label %.loopexit, label %39

39:                                               ; preds = %32
  %40 = sub nuw i32 %37, %34
  %41 = load i32, ptr %19, align 4, !tbaa !73
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %20, align 8, !tbaa !74
  %44 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %42, i64 %43), !nosanitize !45
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !45
  br i1 %45, label %46, label %47, !prof !46, !nosanitize !45

46:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

47:                                               ; preds = %39
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !45
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %51 = load i32, ptr %50, align 8, !tbaa !81
  %52 = and i64 %48, 4294967295
  %53 = zext i32 %51 to i64
  %54 = add nuw nsw i64 %52, %53
  %55 = icmp samesign ult i64 %54, 65535
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !45
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !45
  br i1 %58, label %59, label %60, !prof !46, !nosanitize !45

59:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

60:                                               ; preds = %56
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !45
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
  %71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !45
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !45
  br i1 %72, label %73, label %74, !prof !46, !nosanitize !45

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

74:                                               ; preds = %70
  %75 = extractvalue { i32, i1 } %71, 0, !nosanitize !45
  %76 = icmp eq i32 %64, %75
  br i1 %76, label %77, label %.loopexit

77:                                               ; preds = %74, %62
  br i1 %23, label %78, label %86

78:                                               ; preds = %77
  %79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !45
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !45
  br i1 %80, label %81, label %82, !prof !46, !nosanitize !45

81:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

82:                                               ; preds = %78
  %83 = extractvalue { i32, i1 } %79, 0, !nosanitize !45
  %84 = icmp eq i32 %64, %83
  %85 = zext i1 %84 to i32
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi i32 [ 0, %77 ], [ %85, %82 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %87) #11
  %88 = load i64, ptr %25, align 8, !tbaa !57
  %89 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %88, i64 4), !nosanitize !45
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !45
  br i1 %90, label %91, label %92, !prof !46, !nosanitize !45

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

92:                                               ; preds = %86
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !45
  %94 = load ptr, ptr %24, align 8, !tbaa !40
  %95 = trunc i32 %64 to i8
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 %93
  store i8 %95, ptr %96, align 1, !tbaa !8
  %97 = load i64, ptr %25, align 8, !tbaa !57
  %98 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %97, i64 3), !nosanitize !45
  %99 = extractvalue { i64, i1 } %98, 1, !nosanitize !45
  br i1 %99, label %100, label %101, !prof !46, !nosanitize !45

100:                                              ; preds = %92
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

101:                                              ; preds = %92
  %102 = extractvalue { i64, i1 } %98, 0, !nosanitize !45
  %103 = load ptr, ptr %24, align 8, !tbaa !40
  %104 = lshr i32 %64, 8
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds nuw i8, ptr %103, i64 %102
  store i8 %105, ptr %106, align 1, !tbaa !8
  %107 = load i64, ptr %25, align 8, !tbaa !57
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 2), !nosanitize !45
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !45
  br i1 %109, label %110, label %111, !prof !46, !nosanitize !45

110:                                              ; preds = %101
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

111:                                              ; preds = %101
  %112 = extractvalue { i64, i1 } %108, 0, !nosanitize !45
  %113 = load ptr, ptr %24, align 8, !tbaa !40
  %114 = xor i32 %64, -1
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds nuw i8, ptr %113, i64 %112
  store i8 %115, ptr %116, align 1, !tbaa !8
  %117 = load i64, ptr %25, align 8, !tbaa !57
  %118 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %117, i64 1), !nosanitize !45
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !45
  br i1 %119, label %120, label %121, !prof !46, !nosanitize !45

120:                                              ; preds = %111
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

121:                                              ; preds = %111
  %122 = extractvalue { i64, i1 } %118, 0, !nosanitize !45
  %123 = load ptr, ptr %24, align 8, !tbaa !40
  %124 = lshr i32 %114, 8
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds nuw i8, ptr %123, i64 %122
  store i8 %125, ptr %126, align 1, !tbaa !8
  %127 = load ptr, ptr %0, align 8, !tbaa !20
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 56
  %129 = load ptr, ptr %128, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %129) #11
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 40
  %131 = load i64, ptr %130, align 8, !tbaa !57
  %132 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %133 = load i32, ptr %132, align 8, !tbaa !107
  %134 = zext i32 %133 to i64
  %135 = tail call i64 @llvm.umin.i64(i64 %131, i64 %134)
  %136 = trunc nuw i64 %135 to i32
  %137 = icmp eq i64 %135, 0
  br i1 %137, label %170, label %138

138:                                              ; preds = %121
  %139 = getelementptr inbounds nuw i8, ptr %127, i64 24
  %140 = load ptr, ptr %139, align 8, !tbaa !106
  %141 = getelementptr inbounds nuw i8, ptr %129, i64 32
  %142 = load ptr, ptr %141, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %140, ptr align 1 %142, i64 %135, i1 false)
  %143 = load ptr, ptr %139, align 8, !tbaa !106
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 %135
  store ptr %144, ptr %139, align 8, !tbaa !106
  %145 = load ptr, ptr %141, align 8, !tbaa !58
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 %135
  store ptr %146, ptr %141, align 8, !tbaa !58
  %147 = getelementptr inbounds nuw i8, ptr %127, i64 40
  %148 = load i64, ptr %147, align 8, !tbaa !108
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %148, i64 %135), !nosanitize !45
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !45
  br i1 %150, label %151, label %152, !prof !46, !nosanitize !45

151:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

152:                                              ; preds = %138
  %153 = extractvalue { i64, i1 } %149, 0, !nosanitize !45
  store i64 %153, ptr %147, align 8, !tbaa !108
  %154 = load i32, ptr %132, align 8, !tbaa !107
  %155 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %154, i32 %136), !nosanitize !45
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !45
  br i1 %156, label %157, label %158, !prof !46, !nosanitize !45

157:                                              ; preds = %152
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

158:                                              ; preds = %152
  %159 = extractvalue { i32, i1 } %155, 0, !nosanitize !45
  store i32 %159, ptr %132, align 8, !tbaa !107
  %160 = load i64, ptr %130, align 8, !tbaa !57
  %161 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %160, i64 %135), !nosanitize !45
  %162 = extractvalue { i64, i1 } %161, 1, !nosanitize !45
  br i1 %162, label %163, label %164, !prof !46, !nosanitize !45

163:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

164:                                              ; preds = %158
  %165 = extractvalue { i64, i1 } %161, 0, !nosanitize !45
  store i64 %165, ptr %130, align 8, !tbaa !57
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = getelementptr inbounds nuw i8, ptr %129, i64 16
  %169 = load ptr, ptr %168, align 8, !tbaa !40
  store ptr %169, ptr %141, align 8, !tbaa !58
  br label %170

170:                                              ; preds = %167, %164, %121
  %171 = icmp eq i32 %49, 0
  br i1 %171, label %209, label %172

172:                                              ; preds = %170
  %173 = tail call i32 @llvm.umin.i32(i32 %64, i32 %49)
  %174 = load ptr, ptr %0, align 8, !tbaa !20
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 24
  %176 = load ptr, ptr %175, align 8, !tbaa !106
  %177 = load ptr, ptr %26, align 8, !tbaa !34
  %178 = load i64, ptr %20, align 8, !tbaa !74
  %179 = getelementptr inbounds i8, ptr %177, i64 %178
  %180 = zext i32 %173 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %176, ptr align 1 %179, i64 %180, i1 false)
  %181 = load ptr, ptr %0, align 8, !tbaa !20
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 24
  %183 = load ptr, ptr %182, align 8, !tbaa !106
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 %180
  store ptr %184, ptr %182, align 8, !tbaa !106
  %185 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %186 = load i32, ptr %185, align 8, !tbaa !107
  %187 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %186, i32 %173), !nosanitize !45
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !45
  br i1 %188, label %189, label %190, !prof !46, !nosanitize !45

189:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

190:                                              ; preds = %172
  %191 = extractvalue { i32, i1 } %187, 0, !nosanitize !45
  store i32 %191, ptr %185, align 8, !tbaa !107
  %192 = getelementptr inbounds nuw i8, ptr %181, i64 40
  %193 = load i64, ptr %192, align 8, !tbaa !108
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 %180), !nosanitize !45
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !45
  br i1 %195, label %196, label %197, !prof !46, !nosanitize !45

196:                                              ; preds = %197, %190
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

197:                                              ; preds = %190
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !45
  store i64 %198, ptr %192, align 8, !tbaa !108
  %199 = load i64, ptr %20, align 8, !tbaa !74
  %200 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %199, i64 %180), !nosanitize !45
  %201 = extractvalue { i64, i1 } %200, 1, !nosanitize !45
  br i1 %201, label %196, label %202, !prof !46, !nosanitize !45

202:                                              ; preds = %197
  %203 = extractvalue { i64, i1 } %200, 0, !nosanitize !45
  store i64 %203, ptr %20, align 8, !tbaa !74
  %204 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %64, i32 %173), !nosanitize !45
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !45
  br i1 %205, label %206, label %207, !prof !46, !nosanitize !45

206:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

207:                                              ; preds = %202
  %208 = extractvalue { i32, i1 } %204, 0, !nosanitize !45
  br label %209

209:                                              ; preds = %207, %170
  %210 = phi i32 [ %208, %207 ], [ %64, %170 ]
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %273, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %0, align 8, !tbaa !20
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 24
  %215 = load ptr, ptr %214, align 8, !tbaa !106
  %216 = getelementptr inbounds nuw i8, ptr %213, i64 8
  %217 = load i32, ptr %216, align 8, !tbaa !81
  %218 = tail call i32 @llvm.umin.i32(i32 %217, i32 %210)
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %253, label %220

220:                                              ; preds = %212
  %221 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %217, i32 %218), !nosanitize !45
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !45
  br i1 %222, label %223, label %224, !prof !46, !nosanitize !45

223:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

224:                                              ; preds = %220
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !45
  store i32 %225, ptr %216, align 8, !tbaa !81
  %226 = load ptr, ptr %213, align 8, !tbaa !82
  %227 = zext i32 %218 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %215, ptr align 1 %226, i64 %227, i1 false)
  %228 = getelementptr inbounds nuw i8, ptr %213, i64 56
  %229 = load ptr, ptr %228, align 8, !tbaa !19
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 48
  %231 = load i32, ptr %230, align 8, !tbaa !30
  switch i32 %231, label %240 [
    i32 1, label %232
    i32 2, label %236
  ]

232:                                              ; preds = %224
  %233 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %234 = load i64, ptr %233, align 8, !tbaa !59
  %235 = tail call i64 @adler32(i64 noundef %234, ptr noundef %215, i32 noundef %218) #11
  store i64 %235, ptr %233, align 8, !tbaa !59
  br label %240

236:                                              ; preds = %224
  %237 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %238 = load i64, ptr %237, align 8, !tbaa !59
  %239 = tail call i64 @crc32(i64 noundef %238, ptr noundef %215, i32 noundef %218) #11
  store i64 %239, ptr %237, align 8, !tbaa !59
  br label %240

240:                                              ; preds = %236, %232, %224
  %241 = load ptr, ptr %213, align 8, !tbaa !82
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 %227
  store ptr %242, ptr %213, align 8, !tbaa !82
  %243 = getelementptr inbounds nuw i8, ptr %213, i64 16
  %244 = load i64, ptr %243, align 8, !tbaa !55
  %245 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %244, i64 %227), !nosanitize !45
  %246 = extractvalue { i64, i1 } %245, 1, !nosanitize !45
  br i1 %246, label %247, label %248, !prof !46, !nosanitize !45

247:                                              ; preds = %240
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

248:                                              ; preds = %240
  %249 = extractvalue { i64, i1 } %245, 0, !nosanitize !45
  store i64 %249, ptr %243, align 8, !tbaa !55
  %250 = load ptr, ptr %0, align 8, !tbaa !20
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 24
  %252 = load ptr, ptr %251, align 8, !tbaa !106
  br label %253

253:                                              ; preds = %248, %212
  %254 = phi ptr [ %215, %212 ], [ %252, %248 ]
  %255 = phi ptr [ %213, %212 ], [ %250, %248 ]
  %256 = getelementptr inbounds nuw i8, ptr %255, i64 24
  %257 = zext i32 %210 to i64
  %258 = getelementptr inbounds nuw i8, ptr %254, i64 %257
  store ptr %258, ptr %256, align 8, !tbaa !106
  %259 = getelementptr inbounds nuw i8, ptr %255, i64 32
  %260 = load i32, ptr %259, align 8, !tbaa !107
  %261 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %260, i32 %210), !nosanitize !45
  %262 = extractvalue { i32, i1 } %261, 1, !nosanitize !45
  br i1 %262, label %263, label %264, !prof !46, !nosanitize !45

263:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

264:                                              ; preds = %253
  %265 = extractvalue { i32, i1 } %261, 0, !nosanitize !45
  store i32 %265, ptr %259, align 8, !tbaa !107
  %266 = getelementptr inbounds nuw i8, ptr %255, i64 40
  %267 = load i64, ptr %266, align 8, !tbaa !108
  %268 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %267, i64 %257), !nosanitize !45
  %269 = extractvalue { i64, i1 } %268, 1, !nosanitize !45
  br i1 %269, label %270, label %271, !prof !46, !nosanitize !45

270:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

271:                                              ; preds = %264
  %272 = extractvalue { i64, i1 } %268, 0, !nosanitize !45
  store i64 %272, ptr %266, align 8, !tbaa !108
  br label %273

273:                                              ; preds = %271, %209
  %274 = icmp eq i32 %87, 0
  br i1 %274, label %27, label %275, !llvm.loop !134

275:                                              ; preds = %273
  %276 = load ptr, ptr %0, align 8, !tbaa !20
  br label %.loopexit, !llvm.loop !134

.loopexit:                                        ; preds = %74, %66, %32, %275
  %277 = phi ptr [ %276, %275 ], [ %35, %32 ], [ %35, %66 ], [ %35, %74 ]
  %278 = phi i1 [ false, %275 ], [ true, %32 ], [ true, %66 ], [ true, %74 ]
  %279 = getelementptr inbounds nuw i8, ptr %277, i64 8
  %280 = load i32, ptr %279, align 8, !tbaa !81
  %281 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %280), !nosanitize !45
  %282 = extractvalue { i32, i1 } %281, 0, !nosanitize !45
  %283 = extractvalue { i32, i1 } %281, 1, !nosanitize !45
  br i1 %283, label %284, label %285, !prof !46, !nosanitize !45

284:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

285:                                              ; preds = %.loopexit
  %286 = icmp eq i32 %282, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %285
  %288 = load i32, ptr %19, align 4, !tbaa !73
  %289 = zext i32 %288 to i64
  br label %367

290:                                              ; preds = %285
  %291 = load i32, ptr %10, align 8, !tbaa !32
  %292 = icmp ult i32 %282, %291
  br i1 %292, label %302, label %293

293:                                              ; preds = %290
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %294, align 8, !tbaa !125
  %295 = load ptr, ptr %26, align 8, !tbaa !34
  %296 = load ptr, ptr %277, align 8, !tbaa !82
  %297 = zext i32 %291 to i64
  %298 = sub nsw i64 0, %297
  %299 = getelementptr inbounds i8, ptr %296, i64 %298
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %295, ptr align 1 %299, i64 %297, i1 false)
  %300 = load i32, ptr %10, align 8, !tbaa !32
  store i32 %300, ptr %19, align 4, !tbaa !73
  %301 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %300, ptr %301, align 4, !tbaa !76
  br label %364

302:                                              ; preds = %290
  %303 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %304 = load i64, ptr %303, align 8, !tbaa !61
  %305 = load i32, ptr %19, align 4, !tbaa !73
  %306 = zext i32 %305 to i64
  %307 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %304, i64 %306), !nosanitize !45
  %308 = extractvalue { i64, i1 } %307, 1, !nosanitize !45
  br i1 %308, label %309, label %310, !prof !46, !nosanitize !45

309:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

310:                                              ; preds = %302
  %311 = extractvalue { i64, i1 } %307, 0, !nosanitize !45
  %312 = zext i32 %282 to i64
  %313 = icmp ugt i64 %311, %312
  br i1 %313, label %335, label %314

314:                                              ; preds = %310
  %315 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %305, i32 %291), !nosanitize !45
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !45
  br i1 %316, label %317, label %318, !prof !46, !nosanitize !45

317:                                              ; preds = %314
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

318:                                              ; preds = %314
  %319 = extractvalue { i32, i1 } %315, 0, !nosanitize !45
  store i32 %319, ptr %19, align 4, !tbaa !73
  %320 = load ptr, ptr %26, align 8, !tbaa !34
  %321 = zext i32 %291 to i64
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 %321
  %323 = zext i32 %319 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %320, ptr nonnull align 1 %322, i64 %323, i1 false)
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %325 = load i32, ptr %324, align 8, !tbaa !125
  %326 = icmp ult i32 %325, 2
  br i1 %326, label %327, label %329

327:                                              ; preds = %318
  %328 = add nuw nsw i32 %325, 1
  store i32 %328, ptr %324, align 8, !tbaa !125
  br label %329

329:                                              ; preds = %327, %318
  %330 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %331 = load i32, ptr %330, align 4, !tbaa !76
  %332 = load i32, ptr %19, align 4, !tbaa !73
  %333 = icmp ugt i32 %331, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %329
  store i32 %332, ptr %330, align 4, !tbaa !76
  br label %335

335:                                              ; preds = %334, %329, %310
  %336 = phi i32 [ %332, %329 ], [ %332, %334 ], [ %305, %310 ]
  %337 = load ptr, ptr %26, align 8, !tbaa !34
  %338 = zext i32 %336 to i64
  %339 = getelementptr inbounds nuw i8, ptr %337, i64 %338
  %340 = load ptr, ptr %0, align 8, !tbaa !20
  %341 = load ptr, ptr %340, align 8, !tbaa !82
  %342 = sub nsw i64 0, %312
  %343 = getelementptr inbounds i8, ptr %341, i64 %342
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %339, ptr nonnull align 1 %343, i64 %312, i1 false)
  %344 = load i32, ptr %19, align 4, !tbaa !73
  %345 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %344, i32 %282), !nosanitize !45
  %346 = extractvalue { i32, i1 } %345, 1, !nosanitize !45
  br i1 %346, label %347, label %348, !prof !46, !nosanitize !45

347:                                              ; preds = %335
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

348:                                              ; preds = %335
  %349 = extractvalue { i32, i1 } %345, 0, !nosanitize !45
  store i32 %349, ptr %19, align 4, !tbaa !73
  %350 = load i32, ptr %10, align 8, !tbaa !32
  %351 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %352 = load i32, ptr %351, align 4, !tbaa !76
  %353 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %350, i32 %352), !nosanitize !45
  %354 = extractvalue { i32, i1 } %353, 1, !nosanitize !45
  br i1 %354, label %355, label %356, !prof !46, !nosanitize !45

355:                                              ; preds = %348
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

356:                                              ; preds = %348
  %357 = extractvalue { i32, i1 } %353, 0, !nosanitize !45
  %358 = tail call i32 @llvm.umin.i32(i32 %282, i32 %357)
  %359 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %352, i32 %358), !nosanitize !45
  %360 = extractvalue { i32, i1 } %359, 1, !nosanitize !45
  br i1 %360, label %361, label %362, !prof !46, !nosanitize !45

361:                                              ; preds = %356
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

362:                                              ; preds = %356
  %363 = extractvalue { i32, i1 } %359, 0, !nosanitize !45
  store i32 %363, ptr %351, align 4, !tbaa !76
  br label %364

364:                                              ; preds = %362, %293
  %365 = phi i32 [ %349, %362 ], [ %300, %293 ]
  %366 = zext i32 %365 to i64
  store i64 %366, ptr %20, align 8, !tbaa !74
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
  %378 = load ptr, ptr %0, align 8, !tbaa !20
  %379 = getelementptr inbounds nuw i8, ptr %378, i64 8
  %380 = load i32, ptr %379, align 8, !tbaa !81
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %377
  %383 = load i64, ptr %20, align 8, !tbaa !74
  %384 = icmp eq i64 %383, %368
  br i1 %384, label %601, label %385

385:                                              ; preds = %382, %377, %375, %375
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %387 = load i64, ptr %386, align 8, !tbaa !61
  %388 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %387, i64 %368), !nosanitize !45
  %389 = extractvalue { i64, i1 } %388, 1, !nosanitize !45
  br i1 %389, label %390, label %391, !prof !46, !nosanitize !45

390:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

391:                                              ; preds = %385
  %392 = extractvalue { i64, i1 } %388, 0, !nosanitize !45
  %393 = trunc i64 %392 to i32
  %394 = load ptr, ptr %0, align 8, !tbaa !20
  %395 = getelementptr inbounds nuw i8, ptr %394, i64 8
  %396 = load i32, ptr %395, align 8, !tbaa !81
  %397 = icmp ugt i32 %396, %393
  br i1 %397, label %398, label %430

398:                                              ; preds = %391
  %399 = load i64, ptr %20, align 8, !tbaa !74
  %400 = load i32, ptr %10, align 8, !tbaa !32
  %401 = zext i32 %400 to i64
  %402 = icmp slt i64 %399, %401
  br i1 %402, label %430, label %403

403:                                              ; preds = %398
  %404 = sub nsw i64 %399, %401
  store i64 %404, ptr %20, align 8, !tbaa !74
  %405 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %369, i32 %400), !nosanitize !45
  %406 = extractvalue { i32, i1 } %405, 1, !nosanitize !45
  br i1 %406, label %407, label %408, !prof !46, !nosanitize !45

407:                                              ; preds = %403
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

408:                                              ; preds = %403
  %409 = extractvalue { i32, i1 } %405, 0, !nosanitize !45
  store i32 %409, ptr %19, align 4, !tbaa !73
  %410 = load ptr, ptr %26, align 8, !tbaa !34
  %411 = getelementptr inbounds nuw i8, ptr %410, i64 %401
  %412 = zext i32 %409 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %410, ptr align 1 %411, i64 %412, i1 false)
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %414 = load i32, ptr %413, align 8, !tbaa !125
  %415 = icmp ult i32 %414, 2
  br i1 %415, label %416, label %418

416:                                              ; preds = %408
  %417 = add nuw nsw i32 %414, 1
  store i32 %417, ptr %413, align 8, !tbaa !125
  br label %418

418:                                              ; preds = %416, %408
  %419 = load i32, ptr %10, align 8, !tbaa !32
  %420 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %393, i32 %419), !nosanitize !45
  %421 = extractvalue { i32, i1 } %420, 0, !nosanitize !45
  %422 = extractvalue { i32, i1 } %420, 1, !nosanitize !45
  br i1 %422, label %423, label %424, !prof !46, !nosanitize !45

423:                                              ; preds = %418
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

424:                                              ; preds = %418
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %426 = load i32, ptr %425, align 4, !tbaa !76
  %427 = load i32, ptr %19, align 4, !tbaa !73
  %428 = icmp ugt i32 %426, %427
  br i1 %428, label %429, label %430

429:                                              ; preds = %424
  store i32 %427, ptr %425, align 4, !tbaa !76
  br label %430

430:                                              ; preds = %429, %424, %398, %391
  %431 = phi i32 [ %427, %429 ], [ %427, %424 ], [ %369, %398 ], [ %369, %391 ]
  %432 = phi i32 [ %421, %429 ], [ %421, %424 ], [ %393, %398 ], [ %393, %391 ]
  %433 = load ptr, ptr %0, align 8, !tbaa !20
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 8
  %435 = load i32, ptr %434, align 8, !tbaa !81
  %436 = tail call i32 @llvm.umin.i32(i32 %432, i32 %435)
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %491, label %438

438:                                              ; preds = %430
  %439 = load ptr, ptr %26, align 8, !tbaa !34
  %440 = zext i32 %431 to i64
  %441 = getelementptr inbounds nuw i8, ptr %439, i64 %440
  %442 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %435, i32 %436), !nosanitize !45
  %443 = extractvalue { i32, i1 } %442, 1, !nosanitize !45
  br i1 %443, label %444, label %445, !prof !46, !nosanitize !45

444:                                              ; preds = %438
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

445:                                              ; preds = %438
  %446 = extractvalue { i32, i1 } %442, 0, !nosanitize !45
  store i32 %446, ptr %434, align 8, !tbaa !81
  %447 = load ptr, ptr %433, align 8, !tbaa !82
  %448 = zext i32 %436 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %441, ptr align 1 %447, i64 %448, i1 false)
  %449 = getelementptr inbounds nuw i8, ptr %433, i64 56
  %450 = load ptr, ptr %449, align 8, !tbaa !19
  %451 = getelementptr inbounds nuw i8, ptr %450, i64 48
  %452 = load i32, ptr %451, align 8, !tbaa !30
  switch i32 %452, label %461 [
    i32 1, label %453
    i32 2, label %457
  ]

453:                                              ; preds = %445
  %454 = getelementptr inbounds nuw i8, ptr %433, i64 96
  %455 = load i64, ptr %454, align 8, !tbaa !59
  %456 = tail call i64 @adler32(i64 noundef %455, ptr noundef %441, i32 noundef %436) #11
  store i64 %456, ptr %454, align 8, !tbaa !59
  br label %461

457:                                              ; preds = %445
  %458 = getelementptr inbounds nuw i8, ptr %433, i64 96
  %459 = load i64, ptr %458, align 8, !tbaa !59
  %460 = tail call i64 @crc32(i64 noundef %459, ptr noundef %441, i32 noundef %436) #11
  store i64 %460, ptr %458, align 8, !tbaa !59
  br label %461

461:                                              ; preds = %457, %453, %445
  %462 = load ptr, ptr %433, align 8, !tbaa !82
  %463 = getelementptr inbounds nuw i8, ptr %462, i64 %448
  store ptr %463, ptr %433, align 8, !tbaa !82
  %464 = getelementptr inbounds nuw i8, ptr %433, i64 16
  %465 = load i64, ptr %464, align 8, !tbaa !55
  %466 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %465, i64 %448), !nosanitize !45
  %467 = extractvalue { i64, i1 } %466, 1, !nosanitize !45
  br i1 %467, label %468, label %469, !prof !46, !nosanitize !45

468:                                              ; preds = %461
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

469:                                              ; preds = %461
  %470 = extractvalue { i64, i1 } %466, 0, !nosanitize !45
  store i64 %470, ptr %464, align 8, !tbaa !55
  %471 = load i32, ptr %19, align 4, !tbaa !73
  %472 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %471, i32 %436), !nosanitize !45
  %473 = extractvalue { i32, i1 } %472, 1, !nosanitize !45
  br i1 %473, label %474, label %475, !prof !46, !nosanitize !45

474:                                              ; preds = %469
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

475:                                              ; preds = %469
  %476 = extractvalue { i32, i1 } %472, 0, !nosanitize !45
  store i32 %476, ptr %19, align 4, !tbaa !73
  %477 = load i32, ptr %10, align 8, !tbaa !32
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %479 = load i32, ptr %478, align 4, !tbaa !76
  %480 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %477, i32 %479), !nosanitize !45
  %481 = extractvalue { i32, i1 } %480, 1, !nosanitize !45
  br i1 %481, label %482, label %483, !prof !46, !nosanitize !45

482:                                              ; preds = %475
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

483:                                              ; preds = %475
  %484 = extractvalue { i32, i1 } %480, 0, !nosanitize !45
  %485 = tail call i32 @llvm.umin.i32(i32 %436, i32 %484)
  %486 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %479, i32 %485), !nosanitize !45
  %487 = extractvalue { i32, i1 } %486, 1, !nosanitize !45
  br i1 %487, label %488, label %489, !prof !46, !nosanitize !45

488:                                              ; preds = %483
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

489:                                              ; preds = %483
  %490 = extractvalue { i32, i1 } %486, 0, !nosanitize !45
  store i32 %490, ptr %478, align 4, !tbaa !76
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
  %498 = load i32, ptr %18, align 4, !tbaa !101
  %499 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %498, i32 42), !nosanitize !45
  %500 = extractvalue { i32, i1 } %499, 1, !nosanitize !45
  br i1 %500, label %501, label %502, !prof !46, !nosanitize !45

501:                                              ; preds = %543, %497
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

502:                                              ; preds = %497
  %503 = extractvalue { i32, i1 } %499, 0, !nosanitize !45
  %504 = lshr i32 %503, 3
  %505 = load i64, ptr %3, align 8, !tbaa !41
  %506 = zext nneg i32 %504 to i64
  %507 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %505, i64 %506), !nosanitize !45
  %508 = extractvalue { i64, i1 } %507, 1, !nosanitize !45
  br i1 %508, label %509, label %510, !prof !46, !nosanitize !45

509:                                              ; preds = %502
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

510:                                              ; preds = %502
  %511 = extractvalue { i64, i1 } %507, 0, !nosanitize !45
  %512 = tail call i64 @llvm.umin.i64(i64 %511, i64 65535)
  %513 = trunc nuw nsw i64 %512 to i32
  %514 = load i64, ptr %20, align 8, !tbaa !74
  %515 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %494, i64 %514), !nosanitize !45
  %516 = extractvalue { i64, i1 } %515, 1, !nosanitize !45
  br i1 %516, label %517, label %518, !prof !46, !nosanitize !45

517:                                              ; preds = %510
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

518:                                              ; preds = %510
  %519 = load i32, ptr %10, align 8, !tbaa !32
  %520 = tail call i32 @llvm.umin.i32(i32 %519, i32 %513)
  %521 = extractvalue { i64, i1 } %515, 0, !nosanitize !45
  %522 = trunc i64 %521 to i32
  %523 = icmp ugt i32 %520, %522
  br i1 %523, label %524, label %533

524:                                              ; preds = %518
  %525 = icmp ne i32 %522, 0
  %526 = or i1 %23, %525
  %527 = and i1 %376, %526
  br i1 %527, label %528, label %601

528:                                              ; preds = %524
  %529 = load ptr, ptr %0, align 8, !tbaa !20
  %530 = getelementptr inbounds nuw i8, ptr %529, i64 8
  %531 = load i32, ptr %530, align 8, !tbaa !81
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %601

533:                                              ; preds = %528, %518
  %534 = tail call i32 @llvm.umin.i32(i32 %513, i32 %522)
  br i1 %23, label %535, label %543

535:                                              ; preds = %533
  %536 = load ptr, ptr %0, align 8, !tbaa !20
  %537 = getelementptr inbounds nuw i8, ptr %536, i64 8
  %538 = load i32, ptr %537, align 8, !tbaa !81
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
  %548 = load i64, ptr %20, align 8, !tbaa !74
  %549 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %548, i64 %547), !nosanitize !45
  %550 = extractvalue { i64, i1 } %549, 1, !nosanitize !45
  br i1 %550, label %501, label %551, !prof !46, !nosanitize !45

551:                                              ; preds = %543
  %552 = extractvalue { i64, i1 } %549, 0, !nosanitize !45
  store i64 %552, ptr %20, align 8, !tbaa !74
  %553 = load ptr, ptr %0, align 8, !tbaa !20
  %554 = getelementptr inbounds nuw i8, ptr %553, i64 56
  %555 = load ptr, ptr %554, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %555) #11
  %556 = getelementptr inbounds nuw i8, ptr %555, i64 40
  %557 = load i64, ptr %556, align 8, !tbaa !57
  %558 = getelementptr inbounds nuw i8, ptr %553, i64 32
  %559 = load i32, ptr %558, align 8, !tbaa !107
  %560 = zext i32 %559 to i64
  %561 = tail call i64 @llvm.umin.i64(i64 %557, i64 %560)
  %562 = trunc nuw i64 %561 to i32
  %563 = icmp eq i64 %561, 0
  br i1 %563, label %596, label %564

564:                                              ; preds = %551
  %565 = getelementptr inbounds nuw i8, ptr %553, i64 24
  %566 = load ptr, ptr %565, align 8, !tbaa !106
  %567 = getelementptr inbounds nuw i8, ptr %555, i64 32
  %568 = load ptr, ptr %567, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %566, ptr align 1 %568, i64 %561, i1 false)
  %569 = load ptr, ptr %565, align 8, !tbaa !106
  %570 = getelementptr inbounds nuw i8, ptr %569, i64 %561
  store ptr %570, ptr %565, align 8, !tbaa !106
  %571 = load ptr, ptr %567, align 8, !tbaa !58
  %572 = getelementptr inbounds nuw i8, ptr %571, i64 %561
  store ptr %572, ptr %567, align 8, !tbaa !58
  %573 = getelementptr inbounds nuw i8, ptr %553, i64 40
  %574 = load i64, ptr %573, align 8, !tbaa !108
  %575 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %574, i64 %561), !nosanitize !45
  %576 = extractvalue { i64, i1 } %575, 1, !nosanitize !45
  br i1 %576, label %577, label %578, !prof !46, !nosanitize !45

577:                                              ; preds = %564
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

578:                                              ; preds = %564
  %579 = extractvalue { i64, i1 } %575, 0, !nosanitize !45
  store i64 %579, ptr %573, align 8, !tbaa !108
  %580 = load i32, ptr %558, align 8, !tbaa !107
  %581 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %580, i32 %562), !nosanitize !45
  %582 = extractvalue { i32, i1 } %581, 1, !nosanitize !45
  br i1 %582, label %583, label %584, !prof !46, !nosanitize !45

583:                                              ; preds = %578
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

584:                                              ; preds = %578
  %585 = extractvalue { i32, i1 } %581, 0, !nosanitize !45
  store i32 %585, ptr %558, align 8, !tbaa !107
  %586 = load i64, ptr %556, align 8, !tbaa !57
  %587 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %586, i64 %561), !nosanitize !45
  %588 = extractvalue { i64, i1 } %587, 1, !nosanitize !45
  br i1 %588, label %589, label %590, !prof !46, !nosanitize !45

589:                                              ; preds = %584
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

590:                                              ; preds = %584
  %591 = extractvalue { i64, i1 } %587, 0, !nosanitize !45
  store i64 %591, ptr %556, align 8, !tbaa !57
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %593, label %596

593:                                              ; preds = %590
  %594 = getelementptr inbounds nuw i8, ptr %555, i64 16
  %595 = load ptr, ptr %594, align 8, !tbaa !40
  store ptr %595, ptr %567, align 8, !tbaa !58
  br label %596

596:                                              ; preds = %593, %590, %551
  %597 = icmp eq i32 %544, 0
  br i1 %597, label %601, label %598

598:                                              ; preds = %596, %374
  %599 = phi i32 [ 3, %374 ], [ 2, %596 ]
  %600 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %600, align 8, !tbaa !102
  br label %601

601:                                              ; preds = %598, %596, %528, %524, %382
  %602 = phi i32 [ 0, %528 ], [ 1, %382 ], [ 0, %524 ], [ 0, %596 ], [ %599, %598 ]
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
  %26 = load i32, ptr %3, align 4, !tbaa !75
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %358

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 8, !tbaa !32
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %304, %28
  %32 = phi i32 [ %232, %304 ], [ 0, %28 ]
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
  br i1 %59, label %179, label %60

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

78:                                               ; preds = %79, %73
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

79:                                               ; preds = %73
  %80 = extractvalue { i32, i1 } %76, 0, !nosanitize !45
  store i32 %80, ptr %6, align 4, !tbaa !73
  %81 = load i64, ptr %9, align 8, !tbaa !74
  %82 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %81, i64 %30), !nosanitize !45
  %83 = extractvalue { i64, i1 } %82, 1, !nosanitize !45
  br i1 %83, label %78, label %84, !prof !46, !nosanitize !45

84:                                               ; preds = %79
  %85 = extractvalue { i64, i1 } %82, 0, !nosanitize !45
  store i64 %85, ptr %9, align 8, !tbaa !74
  %86 = load i32, ptr %10, align 4, !tbaa !76
  %87 = icmp ugt i32 %86, %80
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 %80, ptr %10, align 4, !tbaa !76
  br label %89

89:                                               ; preds = %88, %84
  %90 = load i32, ptr %4, align 8, !tbaa !32
  %91 = load i32, ptr %11, align 4, !tbaa !36
  %92 = load ptr, ptr %12, align 8, !tbaa !37
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds nuw [2 x i8], ptr %92, i64 %93
  %95 = icmp eq i32 %91, 0
  br i1 %95, label %119, label %96, !prof !46, !nosanitize !45

96:                                               ; preds = %89
  %97 = icmp ult i32 %91, 8
  br i1 %97, label %.preheader66, label %98

.preheader66:                                     ; preds = %113, %96
  %.ph67 = phi ptr [ %115, %113 ], [ %94, %96 ]
  %.ph68 = phi i32 [ %117, %113 ], [ %91, %96 ]
  br label %125

98:                                               ; preds = %96
  %99 = and i64 %93, 4294967288
  %100 = insertelement <8 x i32> poison, i32 %90, i64 0
  %101 = shufflevector <8 x i32> %100, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %102

102:                                              ; preds = %102, %98
  %103 = phi i64 [ 0, %98 ], [ %111, %102 ]
  %104 = mul nsw i64 %103, -2
  %105 = getelementptr i8, ptr %94, i64 %104
  %106 = getelementptr inbounds i8, ptr %105, i64 -16
  %107 = load <8 x i16>, ptr %106, align 2, !tbaa !62
  %108 = zext <8 x i16> %107 to <8 x i32>
  %109 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %108, <8 x i32> %101)
  %110 = trunc nuw <8 x i32> %109 to <8 x i16>
  store <8 x i16> %110, ptr %106, align 2, !tbaa !62
  %111 = add nuw nsw i64 %103, 8
  %112 = icmp eq i64 %111, %99
  br i1 %112, label %113, label %102, !llvm.loop !135

113:                                              ; preds = %102
  %114 = mul nsw i64 %99, -2
  %115 = getelementptr i8, ptr %94, i64 %114
  %116 = trunc nuw i64 %99 to i32
  %117 = sub i32 %91, %116
  %118 = icmp eq i64 %99, %93
  br i1 %118, label %.loopexit22, label %.preheader66

119:                                              ; preds = %89
  %120 = getelementptr inbounds i8, ptr %94, i64 -2
  %121 = load i16, ptr %120, align 2, !tbaa !62
  %122 = zext i16 %121 to i32
  %123 = tail call i32 @llvm.usub.sat.i32(i32 %122, i32 %90)
  %124 = trunc nuw i32 %123 to i16
  store i16 %124, ptr %120, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

125:                                              ; preds = %.preheader66, %125
  %126 = phi ptr [ %128, %125 ], [ %.ph67, %.preheader66 ]
  %127 = phi i32 [ %133, %125 ], [ %.ph68, %.preheader66 ]
  %128 = getelementptr inbounds i8, ptr %126, i64 -2
  %129 = load i16, ptr %128, align 2, !tbaa !62
  %130 = zext i16 %129 to i32
  %131 = tail call i32 @llvm.usub.sat.i32(i32 %130, i32 %90)
  %132 = trunc nuw i32 %131 to i16
  store i16 %132, ptr %128, align 2, !tbaa !62
  %133 = add i32 %127, -1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %.loopexit22, label %125, !llvm.loop !136

.loopexit22:                                      ; preds = %125, %113
  %135 = icmp eq i32 %90, 0
  br i1 %135, label %136, label %137, !prof !46, !nosanitize !45

136:                                              ; preds = %.loopexit22
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

137:                                              ; preds = %.loopexit22
  %138 = load ptr, ptr %13, align 8, !tbaa !35
  %139 = zext i32 %90 to i64
  %140 = getelementptr inbounds nuw [2 x i8], ptr %138, i64 %139
  %141 = icmp ult i32 %90, 8
  br i1 %141, label %.preheader, label %142

142:                                              ; preds = %137
  %143 = and i64 %139, 4294967288
  %144 = insertelement <8 x i32> poison, i32 %90, i64 0
  %145 = shufflevector <8 x i32> %144, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %146

146:                                              ; preds = %146, %142
  %147 = phi i64 [ 0, %142 ], [ %155, %146 ]
  %148 = mul nsw i64 %147, -2
  %149 = getelementptr i8, ptr %140, i64 %148
  %150 = getelementptr inbounds i8, ptr %149, i64 -16
  %151 = load <8 x i16>, ptr %150, align 2, !tbaa !62
  %152 = zext <8 x i16> %151 to <8 x i32>
  %153 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %152, <8 x i32> %145)
  %154 = trunc nuw <8 x i32> %153 to <8 x i16>
  store <8 x i16> %154, ptr %150, align 2, !tbaa !62
  %155 = add nuw nsw i64 %147, 8
  %156 = icmp eq i64 %155, %143
  br i1 %156, label %157, label %146, !llvm.loop !137

157:                                              ; preds = %146
  %158 = mul nsw i64 %143, -2
  %159 = getelementptr i8, ptr %140, i64 %158
  %160 = trunc nuw i64 %143 to i32
  %161 = sub i32 %90, %160
  %162 = icmp eq i64 %143, %139
  br i1 %162, label %.loopexit21, label %.preheader

.preheader:                                       ; preds = %157, %137
  %.ph = phi ptr [ %159, %157 ], [ %140, %137 ]
  %.ph65 = phi i32 [ %161, %157 ], [ %90, %137 ]
  br label %163

163:                                              ; preds = %.preheader, %163
  %164 = phi ptr [ %166, %163 ], [ %.ph, %.preheader ]
  %165 = phi i32 [ %171, %163 ], [ %.ph65, %.preheader ]
  %166 = getelementptr inbounds i8, ptr %164, i64 -2
  %167 = load i16, ptr %166, align 2, !tbaa !62
  %168 = zext i16 %167 to i32
  %169 = tail call i32 @llvm.usub.sat.i32(i32 %168, i32 %90)
  %170 = trunc nuw i32 %169 to i16
  store i16 %170, ptr %166, align 2, !tbaa !62
  %171 = add i32 %165, -1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %.loopexit21, label %163, !llvm.loop !138

.loopexit21:                                      ; preds = %163, %157
  store i32 1, ptr %14, align 8, !tbaa !63
  %173 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %47, i32 %29), !nosanitize !45
  %174 = extractvalue { i32, i1 } %173, 1, !nosanitize !45
  br i1 %174, label %175, label %176, !prof !46, !nosanitize !45

175:                                              ; preds = %.loopexit21
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

176:                                              ; preds = %.loopexit21
  %177 = extractvalue { i32, i1 } %173, 0, !nosanitize !45
  %178 = load i32, ptr %3, align 4, !tbaa !75
  br label %179

179:                                              ; preds = %176, %57
  %180 = phi i32 [ %178, %176 ], [ %32, %57 ]
  %181 = phi i32 [ %80, %176 ], [ %40, %57 ]
  %182 = phi i32 [ %177, %176 ], [ %47, %57 ]
  %183 = load ptr, ptr %0, align 8, !tbaa !20
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 8
  %185 = load i32, ptr %184, align 8, !tbaa !81
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %309, label %187

187:                                              ; preds = %179
  %188 = load ptr, ptr %7, align 8, !tbaa !34
  %189 = zext i32 %181 to i64
  %190 = getelementptr inbounds nuw i8, ptr %188, i64 %189
  %191 = zext i32 %180 to i64
  %192 = getelementptr inbounds nuw i8, ptr %190, i64 %191
  %193 = tail call i32 @llvm.umin.i32(i32 %185, i32 %182)
  %194 = icmp eq i32 %182, 0
  br i1 %194, label %226, label %195

195:                                              ; preds = %187
  %196 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %185, i32 %193), !nosanitize !45
  %197 = extractvalue { i32, i1 } %196, 1, !nosanitize !45
  br i1 %197, label %198, label %199, !prof !46, !nosanitize !45

198:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

199:                                              ; preds = %195
  %200 = extractvalue { i32, i1 } %196, 0, !nosanitize !45
  store i32 %200, ptr %184, align 8, !tbaa !81
  %201 = load ptr, ptr %183, align 8, !tbaa !82
  %202 = zext i32 %193 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %192, ptr align 1 %201, i64 %202, i1 false)
  %203 = getelementptr inbounds nuw i8, ptr %183, i64 56
  %204 = load ptr, ptr %203, align 8, !tbaa !19
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 48
  %206 = load i32, ptr %205, align 8, !tbaa !30
  switch i32 %206, label %215 [
    i32 1, label %207
    i32 2, label %211
  ]

207:                                              ; preds = %199
  %208 = getelementptr inbounds nuw i8, ptr %183, i64 96
  %209 = load i64, ptr %208, align 8, !tbaa !59
  %210 = tail call i64 @adler32(i64 noundef %209, ptr noundef %192, i32 noundef %193) #11
  store i64 %210, ptr %208, align 8, !tbaa !59
  br label %215

211:                                              ; preds = %199
  %212 = getelementptr inbounds nuw i8, ptr %183, i64 96
  %213 = load i64, ptr %212, align 8, !tbaa !59
  %214 = tail call i64 @crc32(i64 noundef %213, ptr noundef %192, i32 noundef %193) #11
  store i64 %214, ptr %212, align 8, !tbaa !59
  br label %215

215:                                              ; preds = %211, %207, %199
  %216 = load ptr, ptr %183, align 8, !tbaa !82
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 %202
  store ptr %217, ptr %183, align 8, !tbaa !82
  %218 = getelementptr inbounds nuw i8, ptr %183, i64 16
  %219 = load i64, ptr %218, align 8, !tbaa !55
  %220 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %219, i64 %202), !nosanitize !45
  %221 = extractvalue { i64, i1 } %220, 1, !nosanitize !45
  br i1 %221, label %222, label %223, !prof !46, !nosanitize !45

222:                                              ; preds = %215
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

223:                                              ; preds = %215
  %224 = extractvalue { i64, i1 } %220, 0, !nosanitize !45
  store i64 %224, ptr %218, align 8, !tbaa !55
  %225 = load i32, ptr %3, align 4, !tbaa !75
  br label %226

226:                                              ; preds = %223, %187
  %227 = phi i32 [ %180, %187 ], [ %225, %223 ]
  %228 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %193), !nosanitize !45
  %229 = extractvalue { i32, i1 } %228, 1, !nosanitize !45
  br i1 %229, label %230, label %231, !prof !46, !nosanitize !45

230:                                              ; preds = %226
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

231:                                              ; preds = %226
  %232 = extractvalue { i32, i1 } %228, 0, !nosanitize !45
  store i32 %232, ptr %3, align 4, !tbaa !75
  %233 = load i32, ptr %10, align 4, !tbaa !76
  %234 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %232, i32 %233), !nosanitize !45
  %235 = extractvalue { i32, i1 } %234, 1, !nosanitize !45
  br i1 %235, label %236, label %237, !prof !46, !nosanitize !45

236:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

237:                                              ; preds = %231
  %238 = extractvalue { i32, i1 } %234, 0, !nosanitize !45
  %239 = icmp ugt i32 %238, 2
  br i1 %239, label %240, label %.loopexit

240:                                              ; preds = %237
  %241 = load i32, ptr %6, align 4, !tbaa !73
  %242 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %241, i32 %233), !nosanitize !45
  %243 = extractvalue { i32, i1 } %242, 0, !nosanitize !45
  %244 = extractvalue { i32, i1 } %242, 1, !nosanitize !45
  br i1 %244, label %245, label %246, !prof !46, !nosanitize !45

245:                                              ; preds = %240
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

246:                                              ; preds = %240
  %247 = load ptr, ptr %7, align 8, !tbaa !34
  %248 = zext i32 %243 to i64
  %249 = getelementptr inbounds nuw i8, ptr %247, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !8
  %251 = zext i8 %250 to i32
  store i32 %251, ptr %15, align 8, !tbaa !80
  %252 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %243, i32 1), !nosanitize !45
  %253 = extractvalue { i32, i1 } %252, 1, !nosanitize !45
  br i1 %253, label %254, label %255, !prof !46, !nosanitize !45

254:                                              ; preds = %246
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

255:                                              ; preds = %246
  %256 = extractvalue { i32, i1 } %252, 0, !nosanitize !45
  %257 = load i32, ptr %16, align 8, !tbaa !53
  %258 = shl i32 %251, %257
  %259 = zext i32 %256 to i64
  %260 = getelementptr inbounds nuw i8, ptr %247, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !8
  %262 = zext i8 %261 to i32
  %263 = xor i32 %258, %262
  %264 = load i32, ptr %17, align 4, !tbaa !52
  %265 = and i32 %263, %264
  store i32 %265, ptr %15, align 8, !tbaa !80
  br label %266

266:                                              ; preds = %299, %255
  %267 = phi i32 [ %265, %255 ], [ %284, %299 ]
  %268 = phi i32 [ %233, %255 ], [ %295, %299 ]
  %269 = phi i32 [ %243, %255 ], [ %300, %299 ]
  %270 = icmp eq i32 %268, 0
  br i1 %270, label %.loopexit, label %271

271:                                              ; preds = %266
  %272 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %269, i32 3), !nosanitize !45
  %273 = extractvalue { i32, i1 } %272, 1, !nosanitize !45
  br i1 %273, label %274, label %275, !prof !46, !nosanitize !45

274:                                              ; preds = %271
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

275:                                              ; preds = %271
  %276 = shl i32 %267, %257
  %277 = extractvalue { i32, i1 } %272, 0, !nosanitize !45
  %278 = add i32 %277, -1
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds nuw i8, ptr %247, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !8
  %282 = zext i8 %281 to i32
  %283 = xor i32 %276, %282
  %284 = and i32 %283, %264
  store i32 %284, ptr %15, align 8, !tbaa !80
  %285 = load ptr, ptr %12, align 8, !tbaa !37
  %286 = zext i32 %284 to i64
  %287 = getelementptr inbounds nuw [2 x i8], ptr %285, i64 %286
  %288 = load i16, ptr %287, align 2, !tbaa !62
  %289 = load ptr, ptr %13, align 8, !tbaa !35
  %290 = load i32, ptr %18, align 8, !tbaa !33
  %291 = and i32 %290, %269
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds nuw [2 x i8], ptr %289, i64 %292
  store i16 %288, ptr %293, align 2, !tbaa !62
  %294 = trunc i32 %269 to i16
  store i16 %294, ptr %287, align 2, !tbaa !62
  %295 = add i32 %268, -1
  store i32 %295, ptr %10, align 4, !tbaa !76
  %296 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %232, i32 %295), !nosanitize !45
  %297 = extractvalue { i32, i1 } %296, 1, !nosanitize !45
  br i1 %297, label %298, label %299, !prof !46, !nosanitize !45

298:                                              ; preds = %275
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

299:                                              ; preds = %275
  %300 = add nuw i32 %269, 1
  %301 = extractvalue { i32, i1 } %296, 0, !nosanitize !45
  %302 = icmp ult i32 %301, 3
  br i1 %302, label %.loopexit, label %266, !llvm.loop !91

.loopexit:                                        ; preds = %299, %266, %237
  %303 = icmp ult i32 %232, 262
  br i1 %303, label %304, label %309

304:                                              ; preds = %.loopexit
  %305 = load ptr, ptr %0, align 8, !tbaa !20
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 8
  %307 = load i32, ptr %306, align 8, !tbaa !81
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %31, !llvm.loop !92

309:                                              ; preds = %304, %.loopexit, %179
  %310 = phi i32 [ %232, %304 ], [ %232, %.loopexit ], [ %180, %179 ]
  %311 = load i64, ptr %19, align 8, !tbaa !38
  %312 = load i64, ptr %5, align 8, !tbaa !61
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %314, label %353

314:                                              ; preds = %309
  %315 = load i32, ptr %6, align 4, !tbaa !73
  %316 = zext i32 %315 to i64
  %317 = zext i32 %310 to i64
  %318 = add nuw nsw i64 %316, %317
  %319 = icmp ult i64 %311, %318
  br i1 %319, label %320, label %330

320:                                              ; preds = %314
  %321 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %312, i64 %318), !nosanitize !45
  %322 = extractvalue { i64, i1 } %321, 1, !nosanitize !45
  br i1 %322, label %323, label %324, !prof !46, !nosanitize !45

323:                                              ; preds = %320
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

324:                                              ; preds = %320
  %325 = extractvalue { i64, i1 } %321, 0, !nosanitize !45
  %326 = tail call i64 @llvm.umin.i64(i64 %325, i64 258)
  %327 = load ptr, ptr %7, align 8, !tbaa !34
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 %318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %328, i8 0, i64 %326, i1 false)
  %329 = add nuw nsw i64 %326, %318
  br label %350

330:                                              ; preds = %314
  %331 = add nuw nsw i64 %318, 258
  %332 = icmp ult i64 %311, %331
  br i1 %332, label %333, label %353

333:                                              ; preds = %330
  %334 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %312, i64 %311), !nosanitize !45
  %335 = extractvalue { i64, i1 } %334, 1, !nosanitize !45
  br i1 %335, label %336, label %337, !prof !46, !nosanitize !45

336:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

337:                                              ; preds = %333
  %338 = sub nuw nsw i64 %331, %311
  %339 = extractvalue { i64, i1 } %334, 0, !nosanitize !45
  %340 = tail call i64 @llvm.umin.i64(i64 %338, i64 %339)
  %341 = load ptr, ptr %7, align 8, !tbaa !34
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 %311
  %343 = and i64 %340, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %342, i8 0, i64 %343, i1 false)
  %344 = load i64, ptr %19, align 8, !tbaa !38
  %345 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %344, i64 %340), !nosanitize !45
  %346 = extractvalue { i64, i1 } %345, 1, !nosanitize !45
  br i1 %346, label %347, label %348, !prof !46, !nosanitize !45

347:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

348:                                              ; preds = %337
  %349 = extractvalue { i64, i1 } %345, 0, !nosanitize !45
  br label %350

350:                                              ; preds = %348, %324
  %351 = phi i64 [ %329, %324 ], [ %349, %348 ]
  store i64 %351, ptr %19, align 8, !tbaa !38
  %352 = load i32, ptr %3, align 4, !tbaa !75
  br label %353

353:                                              ; preds = %350, %330, %309
  %354 = phi i32 [ %310, %309 ], [ %310, %330 ], [ %352, %350 ]
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %353
  %357 = icmp eq i32 %1, 0
  br i1 %357, label %.loopexit24, label %473

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
  br i1 %400, label %.loopexit23, label %401, !prof !46, !nosanitize !45

.loopexit23:                                      ; preds = %416, %386, %551, %482
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

401:                                              ; preds = %386
  %402 = extractvalue { i32, i1 } %399, 0, !nosanitize !45
  store i32 %402, ptr %3, align 4, !tbaa !75
  %403 = load i32, ptr %6, align 4, !tbaa !73
  %404 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %403, i32 1), !nosanitize !45
  %405 = extractvalue { i32, i1 } %404, 1, !nosanitize !45
  br i1 %405, label %406, label %407, !prof !46, !nosanitize !45

406:                                              ; preds = %401
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

407:                                              ; preds = %401
  %408 = extractvalue { i32, i1 } %404, 0, !nosanitize !45
  store i32 %408, ptr %6, align 4, !tbaa !73
  br i1 %397, label %409, label %.backedge

409:                                              ; preds = %407
  %410 = load i64, ptr %9, align 8, !tbaa !74
  %411 = icmp sgt i64 %410, -1
  br i1 %411, label %412, label %416

412:                                              ; preds = %409
  %413 = load ptr, ptr %7, align 8, !tbaa !34
  %414 = and i64 %410, 4294967295
  %415 = getelementptr inbounds nuw i8, ptr %413, i64 %414
  br label %416

416:                                              ; preds = %412, %409
  %417 = phi ptr [ %415, %412 ], [ null, %409 ]
  %418 = zext i32 %408 to i64
  %419 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %418, i64 %410), !nosanitize !45
  %420 = extractvalue { i64, i1 } %419, 1, !nosanitize !45
  br i1 %420, label %.loopexit23, label %421, !prof !46, !nosanitize !45

421:                                              ; preds = %416
  %422 = extractvalue { i64, i1 } %419, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %417, i64 noundef %422, i32 noundef 0) #11
  %423 = load i32, ptr %6, align 4, !tbaa !73
  %424 = zext i32 %423 to i64
  store i64 %424, ptr %9, align 8, !tbaa !74
  %425 = load ptr, ptr %0, align 8, !tbaa !20
  %426 = getelementptr inbounds nuw i8, ptr %425, i64 56
  %427 = load ptr, ptr %426, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %427) #11
  %428 = getelementptr inbounds nuw i8, ptr %427, i64 40
  %429 = load i64, ptr %428, align 8, !tbaa !57
  %430 = getelementptr inbounds nuw i8, ptr %425, i64 32
  %431 = load i32, ptr %430, align 8, !tbaa !107
  %432 = zext i32 %431 to i64
  %433 = tail call i64 @llvm.umin.i64(i64 %429, i64 %432)
  %434 = trunc nuw i64 %433 to i32
  %435 = icmp eq i64 %433, 0
  br i1 %435, label %468, label %436

436:                                              ; preds = %421
  %437 = getelementptr inbounds nuw i8, ptr %425, i64 24
  %438 = load ptr, ptr %437, align 8, !tbaa !106
  %439 = getelementptr inbounds nuw i8, ptr %427, i64 32
  %440 = load ptr, ptr %439, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %438, ptr align 1 %440, i64 %433, i1 false)
  %441 = load ptr, ptr %437, align 8, !tbaa !106
  %442 = getelementptr inbounds nuw i8, ptr %441, i64 %433
  store ptr %442, ptr %437, align 8, !tbaa !106
  %443 = load ptr, ptr %439, align 8, !tbaa !58
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 %433
  store ptr %444, ptr %439, align 8, !tbaa !58
  %445 = getelementptr inbounds nuw i8, ptr %425, i64 40
  %446 = load i64, ptr %445, align 8, !tbaa !108
  %447 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %446, i64 %433), !nosanitize !45
  %448 = extractvalue { i64, i1 } %447, 1, !nosanitize !45
  br i1 %448, label %449, label %450, !prof !46, !nosanitize !45

449:                                              ; preds = %436
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

450:                                              ; preds = %436
  %451 = extractvalue { i64, i1 } %447, 0, !nosanitize !45
  store i64 %451, ptr %445, align 8, !tbaa !108
  %452 = load i32, ptr %430, align 8, !tbaa !107
  %453 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %452, i32 %434), !nosanitize !45
  %454 = extractvalue { i32, i1 } %453, 1, !nosanitize !45
  br i1 %454, label %455, label %456, !prof !46, !nosanitize !45

455:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

456:                                              ; preds = %450
  %457 = extractvalue { i32, i1 } %453, 0, !nosanitize !45
  store i32 %457, ptr %430, align 8, !tbaa !107
  %458 = load i64, ptr %428, align 8, !tbaa !57
  %459 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %458, i64 %433), !nosanitize !45
  %460 = extractvalue { i64, i1 } %459, 1, !nosanitize !45
  br i1 %460, label %461, label %462, !prof !46, !nosanitize !45

461:                                              ; preds = %456
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

462:                                              ; preds = %456
  %463 = extractvalue { i64, i1 } %459, 0, !nosanitize !45
  store i64 %463, ptr %428, align 8, !tbaa !57
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %462
  %466 = getelementptr inbounds nuw i8, ptr %427, i64 16
  %467 = load ptr, ptr %466, align 8, !tbaa !40
  store ptr %467, ptr %439, align 8, !tbaa !58
  br label %468

468:                                              ; preds = %465, %462, %421
  %469 = load ptr, ptr %0, align 8, !tbaa !20
  %470 = getelementptr inbounds nuw i8, ptr %469, i64 32
  %471 = load i32, ptr %470, align 8, !tbaa !107
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %.loopexit24, label %.backedge

.backedge:                                        ; preds = %468, %407
  br label %25

473:                                              ; preds = %356
  store i32 0, ptr %10, align 4, !tbaa !76
  %474 = icmp eq i32 %1, 4
  br i1 %474, label %475, label %541

475:                                              ; preds = %473
  %476 = load i64, ptr %9, align 8, !tbaa !74
  %477 = icmp sgt i64 %476, -1
  br i1 %477, label %478, label %482

478:                                              ; preds = %475
  %479 = load ptr, ptr %7, align 8, !tbaa !34
  %480 = and i64 %476, 4294967295
  %481 = getelementptr inbounds nuw i8, ptr %479, i64 %480
  br label %482

482:                                              ; preds = %478, %475
  %483 = phi ptr [ %481, %478 ], [ null, %475 ]
  %484 = load i32, ptr %6, align 4, !tbaa !73
  %485 = zext i32 %484 to i64
  %486 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %485, i64 %476), !nosanitize !45
  %487 = extractvalue { i64, i1 } %486, 1, !nosanitize !45
  br i1 %487, label %.loopexit23, label %488, !prof !46, !nosanitize !45

488:                                              ; preds = %482
  %489 = extractvalue { i64, i1 } %486, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %483, i64 noundef %489, i32 noundef 1) #11
  %490 = load i32, ptr %6, align 4, !tbaa !73
  %491 = zext i32 %490 to i64
  store i64 %491, ptr %9, align 8, !tbaa !74
  %492 = load ptr, ptr %0, align 8, !tbaa !20
  %493 = getelementptr inbounds nuw i8, ptr %492, i64 56
  %494 = load ptr, ptr %493, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %494) #11
  %495 = getelementptr inbounds nuw i8, ptr %494, i64 40
  %496 = load i64, ptr %495, align 8, !tbaa !57
  %497 = getelementptr inbounds nuw i8, ptr %492, i64 32
  %498 = load i32, ptr %497, align 8, !tbaa !107
  %499 = zext i32 %498 to i64
  %500 = tail call i64 @llvm.umin.i64(i64 %496, i64 %499)
  %501 = trunc nuw i64 %500 to i32
  %502 = icmp eq i64 %500, 0
  br i1 %502, label %535, label %503

503:                                              ; preds = %488
  %504 = getelementptr inbounds nuw i8, ptr %492, i64 24
  %505 = load ptr, ptr %504, align 8, !tbaa !106
  %506 = getelementptr inbounds nuw i8, ptr %494, i64 32
  %507 = load ptr, ptr %506, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %505, ptr align 1 %507, i64 %500, i1 false)
  %508 = load ptr, ptr %504, align 8, !tbaa !106
  %509 = getelementptr inbounds nuw i8, ptr %508, i64 %500
  store ptr %509, ptr %504, align 8, !tbaa !106
  %510 = load ptr, ptr %506, align 8, !tbaa !58
  %511 = getelementptr inbounds nuw i8, ptr %510, i64 %500
  store ptr %511, ptr %506, align 8, !tbaa !58
  %512 = getelementptr inbounds nuw i8, ptr %492, i64 40
  %513 = load i64, ptr %512, align 8, !tbaa !108
  %514 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %513, i64 %500), !nosanitize !45
  %515 = extractvalue { i64, i1 } %514, 1, !nosanitize !45
  br i1 %515, label %516, label %517, !prof !46, !nosanitize !45

516:                                              ; preds = %503
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

517:                                              ; preds = %503
  %518 = extractvalue { i64, i1 } %514, 0, !nosanitize !45
  store i64 %518, ptr %512, align 8, !tbaa !108
  %519 = load i32, ptr %497, align 8, !tbaa !107
  %520 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %519, i32 %501), !nosanitize !45
  %521 = extractvalue { i32, i1 } %520, 1, !nosanitize !45
  br i1 %521, label %522, label %523, !prof !46, !nosanitize !45

522:                                              ; preds = %517
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

523:                                              ; preds = %517
  %524 = extractvalue { i32, i1 } %520, 0, !nosanitize !45
  store i32 %524, ptr %497, align 8, !tbaa !107
  %525 = load i64, ptr %495, align 8, !tbaa !57
  %526 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %525, i64 %500), !nosanitize !45
  %527 = extractvalue { i64, i1 } %526, 1, !nosanitize !45
  br i1 %527, label %528, label %529, !prof !46, !nosanitize !45

528:                                              ; preds = %523
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

529:                                              ; preds = %523
  %530 = extractvalue { i64, i1 } %526, 0, !nosanitize !45
  store i64 %530, ptr %495, align 8, !tbaa !57
  %531 = icmp eq i64 %530, 0
  br i1 %531, label %532, label %535

532:                                              ; preds = %529
  %533 = getelementptr inbounds nuw i8, ptr %494, i64 16
  %534 = load ptr, ptr %533, align 8, !tbaa !40
  store ptr %534, ptr %506, align 8, !tbaa !58
  br label %535

535:                                              ; preds = %532, %529, %488
  %536 = load ptr, ptr %0, align 8, !tbaa !20
  %537 = getelementptr inbounds nuw i8, ptr %536, i64 32
  %538 = load i32, ptr %537, align 8, !tbaa !107
  %539 = icmp eq i32 %538, 0
  %540 = select i1 %539, i32 2, i32 3
  br label %.loopexit24

541:                                              ; preds = %473
  %542 = load i32, ptr %22, align 4, !tbaa !139
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %609, label %544

544:                                              ; preds = %541
  %545 = load i64, ptr %9, align 8, !tbaa !74
  %546 = icmp sgt i64 %545, -1
  br i1 %546, label %547, label %551

547:                                              ; preds = %544
  %548 = load ptr, ptr %7, align 8, !tbaa !34
  %549 = and i64 %545, 4294967295
  %550 = getelementptr inbounds nuw i8, ptr %548, i64 %549
  br label %551

551:                                              ; preds = %547, %544
  %552 = phi ptr [ %550, %547 ], [ null, %544 ]
  %553 = load i32, ptr %6, align 4, !tbaa !73
  %554 = zext i32 %553 to i64
  %555 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %554, i64 %545), !nosanitize !45
  %556 = extractvalue { i64, i1 } %555, 1, !nosanitize !45
  br i1 %556, label %.loopexit23, label %557, !prof !46, !nosanitize !45

557:                                              ; preds = %551
  %558 = extractvalue { i64, i1 } %555, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %552, i64 noundef %558, i32 noundef 0) #11
  %559 = load i32, ptr %6, align 4, !tbaa !73
  %560 = zext i32 %559 to i64
  store i64 %560, ptr %9, align 8, !tbaa !74
  %561 = load ptr, ptr %0, align 8, !tbaa !20
  %562 = getelementptr inbounds nuw i8, ptr %561, i64 56
  %563 = load ptr, ptr %562, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %563) #11
  %564 = getelementptr inbounds nuw i8, ptr %563, i64 40
  %565 = load i64, ptr %564, align 8, !tbaa !57
  %566 = getelementptr inbounds nuw i8, ptr %561, i64 32
  %567 = load i32, ptr %566, align 8, !tbaa !107
  %568 = zext i32 %567 to i64
  %569 = tail call i64 @llvm.umin.i64(i64 %565, i64 %568)
  %570 = trunc nuw i64 %569 to i32
  %571 = icmp eq i64 %569, 0
  br i1 %571, label %604, label %572

572:                                              ; preds = %557
  %573 = getelementptr inbounds nuw i8, ptr %561, i64 24
  %574 = load ptr, ptr %573, align 8, !tbaa !106
  %575 = getelementptr inbounds nuw i8, ptr %563, i64 32
  %576 = load ptr, ptr %575, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %574, ptr align 1 %576, i64 %569, i1 false)
  %577 = load ptr, ptr %573, align 8, !tbaa !106
  %578 = getelementptr inbounds nuw i8, ptr %577, i64 %569
  store ptr %578, ptr %573, align 8, !tbaa !106
  %579 = load ptr, ptr %575, align 8, !tbaa !58
  %580 = getelementptr inbounds nuw i8, ptr %579, i64 %569
  store ptr %580, ptr %575, align 8, !tbaa !58
  %581 = getelementptr inbounds nuw i8, ptr %561, i64 40
  %582 = load i64, ptr %581, align 8, !tbaa !108
  %583 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %582, i64 %569), !nosanitize !45
  %584 = extractvalue { i64, i1 } %583, 1, !nosanitize !45
  br i1 %584, label %585, label %586, !prof !46, !nosanitize !45

585:                                              ; preds = %572
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

586:                                              ; preds = %572
  %587 = extractvalue { i64, i1 } %583, 0, !nosanitize !45
  store i64 %587, ptr %581, align 8, !tbaa !108
  %588 = load i32, ptr %566, align 8, !tbaa !107
  %589 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %588, i32 %570), !nosanitize !45
  %590 = extractvalue { i32, i1 } %589, 1, !nosanitize !45
  br i1 %590, label %591, label %592, !prof !46, !nosanitize !45

591:                                              ; preds = %586
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

592:                                              ; preds = %586
  %593 = extractvalue { i32, i1 } %589, 0, !nosanitize !45
  store i32 %593, ptr %566, align 8, !tbaa !107
  %594 = load i64, ptr %564, align 8, !tbaa !57
  %595 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %594, i64 %569), !nosanitize !45
  %596 = extractvalue { i64, i1 } %595, 1, !nosanitize !45
  br i1 %596, label %597, label %598, !prof !46, !nosanitize !45

597:                                              ; preds = %592
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

598:                                              ; preds = %592
  %599 = extractvalue { i64, i1 } %595, 0, !nosanitize !45
  store i64 %599, ptr %564, align 8, !tbaa !57
  %600 = icmp eq i64 %599, 0
  br i1 %600, label %601, label %604

601:                                              ; preds = %598
  %602 = getelementptr inbounds nuw i8, ptr %563, i64 16
  %603 = load ptr, ptr %602, align 8, !tbaa !40
  store ptr %603, ptr %575, align 8, !tbaa !58
  br label %604

604:                                              ; preds = %601, %598, %557
  %605 = load ptr, ptr %0, align 8, !tbaa !20
  %606 = getelementptr inbounds nuw i8, ptr %605, i64 32
  %607 = load i32, ptr %606, align 8, !tbaa !107
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %.loopexit24, label %609

609:                                              ; preds = %604, %541
  br label %.loopexit24

.loopexit24:                                      ; preds = %468, %609, %604, %535, %356
  %610 = phi i32 [ 0, %356 ], [ %540, %535 ], [ 0, %604 ], [ 1, %609 ], [ 0, %468 ]
  ret i32 %610
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
  %26 = getelementptr i8, ptr %0, i64 1240
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  br label %28

28:                                               ; preds = %.backedge, %2
  %29 = load i32, ptr %3, align 4, !tbaa !75
  %30 = icmp ult i32 %29, 259
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  store i32 0, ptr %4, align 8, !tbaa !78
  %32 = load i32, ptr %7, align 4, !tbaa !73
  %.pre.pre73.pre = load ptr, ptr %8, align 8, !tbaa !34
  br label %367

33:                                               ; preds = %28
  %34 = load i32, ptr %5, align 8, !tbaa !32
  %35 = zext i32 %34 to i64
  br label %36

36:                                               ; preds = %309, %33
  %37 = phi i32 [ %237, %309 ], [ %29, %33 ]
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
  br i1 %64, label %184, label %65

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

83:                                               ; preds = %84, %78
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

84:                                               ; preds = %78
  %85 = extractvalue { i32, i1 } %81, 0, !nosanitize !45
  store i32 %85, ptr %7, align 4, !tbaa !73
  %86 = load i64, ptr %10, align 8, !tbaa !74
  %87 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %86, i64 %35), !nosanitize !45
  %88 = extractvalue { i64, i1 } %87, 1, !nosanitize !45
  br i1 %88, label %83, label %89, !prof !46, !nosanitize !45

89:                                               ; preds = %84
  %90 = extractvalue { i64, i1 } %87, 0, !nosanitize !45
  store i64 %90, ptr %10, align 8, !tbaa !74
  %91 = load i32, ptr %11, align 4, !tbaa !76
  %92 = icmp ugt i32 %91, %85
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 %85, ptr %11, align 4, !tbaa !76
  br label %94

94:                                               ; preds = %93, %89
  %95 = load i32, ptr %5, align 8, !tbaa !32
  %96 = load i32, ptr %12, align 4, !tbaa !36
  %97 = load ptr, ptr %13, align 8, !tbaa !37
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds nuw [2 x i8], ptr %97, i64 %98
  %100 = icmp eq i32 %96, 0
  br i1 %100, label %124, label %101, !prof !46, !nosanitize !45

101:                                              ; preds = %94
  %102 = icmp ult i32 %96, 8
  br i1 %102, label %.preheader144, label %103

.preheader144:                                    ; preds = %118, %101
  %.ph145 = phi ptr [ %120, %118 ], [ %99, %101 ]
  %.ph146 = phi i32 [ %122, %118 ], [ %96, %101 ]
  br label %130

103:                                              ; preds = %101
  %104 = and i64 %98, 4294967288
  %105 = insertelement <8 x i32> poison, i32 %95, i64 0
  %106 = shufflevector <8 x i32> %105, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %107

107:                                              ; preds = %107, %103
  %108 = phi i64 [ 0, %103 ], [ %116, %107 ]
  %109 = mul nsw i64 %108, -2
  %110 = getelementptr i8, ptr %99, i64 %109
  %111 = getelementptr inbounds i8, ptr %110, i64 -16
  %112 = load <8 x i16>, ptr %111, align 2, !tbaa !62
  %113 = zext <8 x i16> %112 to <8 x i32>
  %114 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %113, <8 x i32> %106)
  %115 = trunc nuw <8 x i32> %114 to <8 x i16>
  store <8 x i16> %115, ptr %111, align 2, !tbaa !62
  %116 = add nuw nsw i64 %108, 8
  %117 = icmp eq i64 %116, %104
  br i1 %117, label %118, label %107, !llvm.loop !140

118:                                              ; preds = %107
  %119 = mul nsw i64 %104, -2
  %120 = getelementptr i8, ptr %99, i64 %119
  %121 = trunc nuw i64 %104 to i32
  %122 = sub i32 %96, %121
  %123 = icmp eq i64 %104, %98
  br i1 %123, label %.loopexit28, label %.preheader144

124:                                              ; preds = %94
  %125 = getelementptr inbounds i8, ptr %99, i64 -2
  %126 = load i16, ptr %125, align 2, !tbaa !62
  %127 = zext i16 %126 to i32
  %128 = tail call i32 @llvm.usub.sat.i32(i32 %127, i32 %95)
  %129 = trunc nuw i32 %128 to i16
  store i16 %129, ptr %125, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

130:                                              ; preds = %.preheader144, %130
  %131 = phi ptr [ %133, %130 ], [ %.ph145, %.preheader144 ]
  %132 = phi i32 [ %138, %130 ], [ %.ph146, %.preheader144 ]
  %133 = getelementptr inbounds i8, ptr %131, i64 -2
  %134 = load i16, ptr %133, align 2, !tbaa !62
  %135 = zext i16 %134 to i32
  %136 = tail call i32 @llvm.usub.sat.i32(i32 %135, i32 %95)
  %137 = trunc nuw i32 %136 to i16
  store i16 %137, ptr %133, align 2, !tbaa !62
  %138 = add i32 %132, -1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %.loopexit28, label %130, !llvm.loop !141

.loopexit28:                                      ; preds = %130, %118
  %140 = icmp eq i32 %95, 0
  br i1 %140, label %141, label %142, !prof !46, !nosanitize !45

141:                                              ; preds = %.loopexit28
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

142:                                              ; preds = %.loopexit28
  %143 = load ptr, ptr %14, align 8, !tbaa !35
  %144 = zext i32 %95 to i64
  %145 = getelementptr inbounds nuw [2 x i8], ptr %143, i64 %144
  %146 = icmp ult i32 %95, 8
  br i1 %146, label %.preheader, label %147

147:                                              ; preds = %142
  %148 = and i64 %144, 4294967288
  %149 = insertelement <8 x i32> poison, i32 %95, i64 0
  %150 = shufflevector <8 x i32> %149, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %151

151:                                              ; preds = %151, %147
  %152 = phi i64 [ 0, %147 ], [ %160, %151 ]
  %153 = mul nsw i64 %152, -2
  %154 = getelementptr i8, ptr %145, i64 %153
  %155 = getelementptr inbounds i8, ptr %154, i64 -16
  %156 = load <8 x i16>, ptr %155, align 2, !tbaa !62
  %157 = zext <8 x i16> %156 to <8 x i32>
  %158 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %157, <8 x i32> %150)
  %159 = trunc nuw <8 x i32> %158 to <8 x i16>
  store <8 x i16> %159, ptr %155, align 2, !tbaa !62
  %160 = add nuw nsw i64 %152, 8
  %161 = icmp eq i64 %160, %148
  br i1 %161, label %162, label %151, !llvm.loop !142

162:                                              ; preds = %151
  %163 = mul nsw i64 %148, -2
  %164 = getelementptr i8, ptr %145, i64 %163
  %165 = trunc nuw i64 %148 to i32
  %166 = sub i32 %95, %165
  %167 = icmp eq i64 %148, %144
  br i1 %167, label %.loopexit27, label %.preheader

.preheader:                                       ; preds = %162, %142
  %.ph = phi ptr [ %164, %162 ], [ %145, %142 ]
  %.ph143 = phi i32 [ %166, %162 ], [ %95, %142 ]
  br label %168

168:                                              ; preds = %.preheader, %168
  %169 = phi ptr [ %171, %168 ], [ %.ph, %.preheader ]
  %170 = phi i32 [ %176, %168 ], [ %.ph143, %.preheader ]
  %171 = getelementptr inbounds i8, ptr %169, i64 -2
  %172 = load i16, ptr %171, align 2, !tbaa !62
  %173 = zext i16 %172 to i32
  %174 = tail call i32 @llvm.usub.sat.i32(i32 %173, i32 %95)
  %175 = trunc nuw i32 %174 to i16
  store i16 %175, ptr %171, align 2, !tbaa !62
  %176 = add i32 %170, -1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %.loopexit27, label %168, !llvm.loop !143

.loopexit27:                                      ; preds = %168, %162
  store i32 1, ptr %15, align 8, !tbaa !63
  %178 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %52, i32 %34), !nosanitize !45
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !45
  br i1 %179, label %180, label %181, !prof !46, !nosanitize !45

180:                                              ; preds = %.loopexit27
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

181:                                              ; preds = %.loopexit27
  %182 = extractvalue { i32, i1 } %178, 0, !nosanitize !45
  %183 = load i32, ptr %3, align 4, !tbaa !75
  br label %184

184:                                              ; preds = %181, %62
  %185 = phi i32 [ %183, %181 ], [ %37, %62 ]
  %186 = phi i32 [ %85, %181 ], [ %45, %62 ]
  %187 = phi i32 [ %182, %181 ], [ %52, %62 ]
  %188 = load ptr, ptr %0, align 8, !tbaa !20
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 8
  %190 = load i32, ptr %189, align 8, !tbaa !81
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %314, label %192

192:                                              ; preds = %184
  %193 = load ptr, ptr %8, align 8, !tbaa !34
  %194 = zext i32 %186 to i64
  %195 = getelementptr inbounds nuw i8, ptr %193, i64 %194
  %196 = zext i32 %185 to i64
  %197 = getelementptr inbounds nuw i8, ptr %195, i64 %196
  %198 = tail call i32 @llvm.umin.i32(i32 %190, i32 %187)
  %199 = icmp eq i32 %187, 0
  br i1 %199, label %231, label %200

200:                                              ; preds = %192
  %201 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %190, i32 %198), !nosanitize !45
  %202 = extractvalue { i32, i1 } %201, 1, !nosanitize !45
  br i1 %202, label %203, label %204, !prof !46, !nosanitize !45

203:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

204:                                              ; preds = %200
  %205 = extractvalue { i32, i1 } %201, 0, !nosanitize !45
  store i32 %205, ptr %189, align 8, !tbaa !81
  %206 = load ptr, ptr %188, align 8, !tbaa !82
  %207 = zext i32 %198 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %197, ptr align 1 %206, i64 %207, i1 false)
  %208 = getelementptr inbounds nuw i8, ptr %188, i64 56
  %209 = load ptr, ptr %208, align 8, !tbaa !19
  %210 = getelementptr inbounds nuw i8, ptr %209, i64 48
  %211 = load i32, ptr %210, align 8, !tbaa !30
  switch i32 %211, label %220 [
    i32 1, label %212
    i32 2, label %216
  ]

212:                                              ; preds = %204
  %213 = getelementptr inbounds nuw i8, ptr %188, i64 96
  %214 = load i64, ptr %213, align 8, !tbaa !59
  %215 = tail call i64 @adler32(i64 noundef %214, ptr noundef %197, i32 noundef %198) #11
  store i64 %215, ptr %213, align 8, !tbaa !59
  br label %220

216:                                              ; preds = %204
  %217 = getelementptr inbounds nuw i8, ptr %188, i64 96
  %218 = load i64, ptr %217, align 8, !tbaa !59
  %219 = tail call i64 @crc32(i64 noundef %218, ptr noundef %197, i32 noundef %198) #11
  store i64 %219, ptr %217, align 8, !tbaa !59
  br label %220

220:                                              ; preds = %216, %212, %204
  %221 = load ptr, ptr %188, align 8, !tbaa !82
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 %207
  store ptr %222, ptr %188, align 8, !tbaa !82
  %223 = getelementptr inbounds nuw i8, ptr %188, i64 16
  %224 = load i64, ptr %223, align 8, !tbaa !55
  %225 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %224, i64 %207), !nosanitize !45
  %226 = extractvalue { i64, i1 } %225, 1, !nosanitize !45
  br i1 %226, label %227, label %228, !prof !46, !nosanitize !45

227:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

228:                                              ; preds = %220
  %229 = extractvalue { i64, i1 } %225, 0, !nosanitize !45
  store i64 %229, ptr %223, align 8, !tbaa !55
  %230 = load i32, ptr %3, align 4, !tbaa !75
  br label %231

231:                                              ; preds = %228, %192
  %232 = phi i32 [ %185, %192 ], [ %230, %228 ]
  %233 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %232, i32 %198), !nosanitize !45
  %234 = extractvalue { i32, i1 } %233, 1, !nosanitize !45
  br i1 %234, label %235, label %236, !prof !46, !nosanitize !45

235:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

236:                                              ; preds = %231
  %237 = extractvalue { i32, i1 } %233, 0, !nosanitize !45
  store i32 %237, ptr %3, align 4, !tbaa !75
  %238 = load i32, ptr %11, align 4, !tbaa !76
  %239 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %238), !nosanitize !45
  %240 = extractvalue { i32, i1 } %239, 1, !nosanitize !45
  br i1 %240, label %241, label %242, !prof !46, !nosanitize !45

241:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

242:                                              ; preds = %236
  %243 = extractvalue { i32, i1 } %239, 0, !nosanitize !45
  %244 = icmp ugt i32 %243, 2
  br i1 %244, label %245, label %.loopexit

245:                                              ; preds = %242
  %246 = load i32, ptr %7, align 4, !tbaa !73
  %247 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %246, i32 %238), !nosanitize !45
  %248 = extractvalue { i32, i1 } %247, 0, !nosanitize !45
  %249 = extractvalue { i32, i1 } %247, 1, !nosanitize !45
  br i1 %249, label %250, label %251, !prof !46, !nosanitize !45

250:                                              ; preds = %245
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

251:                                              ; preds = %245
  %252 = load ptr, ptr %8, align 8, !tbaa !34
  %253 = zext i32 %248 to i64
  %254 = getelementptr inbounds nuw i8, ptr %252, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !8
  %256 = zext i8 %255 to i32
  store i32 %256, ptr %16, align 8, !tbaa !80
  %257 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 1), !nosanitize !45
  %258 = extractvalue { i32, i1 } %257, 1, !nosanitize !45
  br i1 %258, label %259, label %260, !prof !46, !nosanitize !45

259:                                              ; preds = %251
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

260:                                              ; preds = %251
  %261 = extractvalue { i32, i1 } %257, 0, !nosanitize !45
  %262 = load i32, ptr %17, align 8, !tbaa !53
  %263 = shl i32 %256, %262
  %264 = zext i32 %261 to i64
  %265 = getelementptr inbounds nuw i8, ptr %252, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !8
  %267 = zext i8 %266 to i32
  %268 = xor i32 %263, %267
  %269 = load i32, ptr %18, align 4, !tbaa !52
  %270 = and i32 %268, %269
  store i32 %270, ptr %16, align 8, !tbaa !80
  br label %271

271:                                              ; preds = %304, %260
  %272 = phi i32 [ %270, %260 ], [ %289, %304 ]
  %273 = phi i32 [ %238, %260 ], [ %300, %304 ]
  %274 = phi i32 [ %248, %260 ], [ %305, %304 ]
  %275 = icmp eq i32 %273, 0
  br i1 %275, label %.loopexit, label %276

276:                                              ; preds = %271
  %277 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %274, i32 3), !nosanitize !45
  %278 = extractvalue { i32, i1 } %277, 1, !nosanitize !45
  br i1 %278, label %279, label %280, !prof !46, !nosanitize !45

279:                                              ; preds = %276
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

280:                                              ; preds = %276
  %281 = shl i32 %272, %262
  %282 = extractvalue { i32, i1 } %277, 0, !nosanitize !45
  %283 = add i32 %282, -1
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds nuw i8, ptr %252, i64 %284
  %286 = load i8, ptr %285, align 1, !tbaa !8
  %287 = zext i8 %286 to i32
  %288 = xor i32 %281, %287
  %289 = and i32 %288, %269
  store i32 %289, ptr %16, align 8, !tbaa !80
  %290 = load ptr, ptr %13, align 8, !tbaa !37
  %291 = zext i32 %289 to i64
  %292 = getelementptr inbounds nuw [2 x i8], ptr %290, i64 %291
  %293 = load i16, ptr %292, align 2, !tbaa !62
  %294 = load ptr, ptr %14, align 8, !tbaa !35
  %295 = load i32, ptr %19, align 8, !tbaa !33
  %296 = and i32 %295, %274
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds nuw [2 x i8], ptr %294, i64 %297
  store i16 %293, ptr %298, align 2, !tbaa !62
  %299 = trunc i32 %274 to i16
  store i16 %299, ptr %292, align 2, !tbaa !62
  %300 = add i32 %273, -1
  store i32 %300, ptr %11, align 4, !tbaa !76
  %301 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %300), !nosanitize !45
  %302 = extractvalue { i32, i1 } %301, 1, !nosanitize !45
  br i1 %302, label %303, label %304, !prof !46, !nosanitize !45

303:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

304:                                              ; preds = %280
  %305 = add nuw i32 %274, 1
  %306 = extractvalue { i32, i1 } %301, 0, !nosanitize !45
  %307 = icmp ult i32 %306, 3
  br i1 %307, label %.loopexit, label %271, !llvm.loop !91

.loopexit:                                        ; preds = %304, %271, %242
  %308 = icmp ult i32 %237, 262
  br i1 %308, label %309, label %314

309:                                              ; preds = %.loopexit
  %310 = load ptr, ptr %0, align 8, !tbaa !20
  %311 = getelementptr inbounds nuw i8, ptr %310, i64 8
  %312 = load i32, ptr %311, align 8, !tbaa !81
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %36, !llvm.loop !92

314:                                              ; preds = %309, %.loopexit, %184
  %315 = phi i32 [ %237, %309 ], [ %237, %.loopexit ], [ %185, %184 ]
  %316 = load i64, ptr %20, align 8, !tbaa !38
  %317 = load i64, ptr %6, align 8, !tbaa !61
  %318 = icmp ult i64 %316, %317
  br i1 %318, label %319, label %358

319:                                              ; preds = %314
  %320 = load i32, ptr %7, align 4, !tbaa !73
  %321 = zext i32 %320 to i64
  %322 = zext i32 %315 to i64
  %323 = add nuw nsw i64 %321, %322
  %324 = icmp ult i64 %316, %323
  br i1 %324, label %325, label %335

325:                                              ; preds = %319
  %326 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %317, i64 %323), !nosanitize !45
  %327 = extractvalue { i64, i1 } %326, 1, !nosanitize !45
  br i1 %327, label %328, label %329, !prof !46, !nosanitize !45

328:                                              ; preds = %325
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

329:                                              ; preds = %325
  %330 = extractvalue { i64, i1 } %326, 0, !nosanitize !45
  %331 = tail call i64 @llvm.umin.i64(i64 %330, i64 258)
  %332 = load ptr, ptr %8, align 8, !tbaa !34
  %333 = getelementptr inbounds nuw i8, ptr %332, i64 %323
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %333, i8 0, i64 %331, i1 false)
  %334 = add nuw nsw i64 %331, %323
  br label %355

335:                                              ; preds = %319
  %336 = add nuw nsw i64 %323, 258
  %337 = icmp ult i64 %316, %336
  br i1 %337, label %338, label %358

338:                                              ; preds = %335
  %339 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %317, i64 %316), !nosanitize !45
  %340 = extractvalue { i64, i1 } %339, 1, !nosanitize !45
  br i1 %340, label %341, label %342, !prof !46, !nosanitize !45

341:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

342:                                              ; preds = %338
  %343 = sub nuw nsw i64 %336, %316
  %344 = extractvalue { i64, i1 } %339, 0, !nosanitize !45
  %345 = tail call i64 @llvm.umin.i64(i64 %343, i64 %344)
  %346 = load ptr, ptr %8, align 8, !tbaa !34
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 %316
  %348 = and i64 %345, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %347, i8 0, i64 %348, i1 false)
  %349 = load i64, ptr %20, align 8, !tbaa !38
  %350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %349, i64 %345), !nosanitize !45
  %351 = extractvalue { i64, i1 } %350, 1, !nosanitize !45
  br i1 %351, label %352, label %353, !prof !46, !nosanitize !45

352:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

353:                                              ; preds = %342
  %354 = extractvalue { i64, i1 } %350, 0, !nosanitize !45
  br label %355

355:                                              ; preds = %353, %329
  %356 = phi i64 [ %334, %329 ], [ %354, %353 ]
  store i64 %356, ptr %20, align 8, !tbaa !38
  %357 = load i32, ptr %3, align 4, !tbaa !75
  br label %358

358:                                              ; preds = %355, %335, %314
  %359 = phi i32 [ %315, %314 ], [ %315, %335 ], [ %357, %355 ]
  %360 = icmp ult i32 %359, 259
  %361 = and i1 %21, %360
  br i1 %361, label %.loopexit29, label %362

362:                                              ; preds = %358
  %363 = icmp eq i32 %359, 0
  br i1 %363, label %619, label %364

364:                                              ; preds = %362
  store i32 0, ptr %4, align 8, !tbaa !78
  %365 = icmp ugt i32 %359, 2
  %366 = load i32, ptr %7, align 4, !tbaa !73
  %.pre.pre73.pre75 = load ptr, ptr %8, align 8, !tbaa !34
  br i1 %365, label %367, label %._crit_edge

367:                                              ; preds = %364, %31
  %.pre.pre73 = phi ptr [ %.pre.pre73.pre, %31 ], [ %.pre.pre73.pre75, %364 ]
  %368 = phi i32 [ %32, %31 ], [ %366, %364 ]
  %369 = phi i32 [ %29, %31 ], [ %359, %364 ]
  %370 = icmp eq i32 %368, 0
  br i1 %370, label %._crit_edge, label %371

371:                                              ; preds = %367
  %372 = zext i32 %368 to i64
  %373 = getelementptr inbounds nuw i8, ptr %.pre.pre73, i64 %372
  %374 = getelementptr inbounds i8, ptr %373, i64 -1
  %375 = load i8, ptr %374, align 1, !tbaa !8
  %376 = load i8, ptr %373, align 1, !tbaa !8
  %377 = icmp eq i8 %375, %376
  br i1 %377, label %378, label %._crit_edge

378:                                              ; preds = %371
  %379 = getelementptr inbounds nuw i8, ptr %373, i64 1
  %380 = load i8, ptr %379, align 1, !tbaa !8
  %381 = icmp eq i8 %375, %380
  br i1 %381, label %382, label %._crit_edge

382:                                              ; preds = %378
  %383 = getelementptr inbounds nuw i8, ptr %373, i64 2
  %384 = load i8, ptr %383, align 1, !tbaa !8
  %385 = icmp eq i8 %375, %384
  br i1 %385, label %386, label %._crit_edge

386:                                              ; preds = %382
  %387 = getelementptr inbounds nuw i8, ptr %373, i64 258
  br label %388

388:                                              ; preds = %418, %386
  %389 = phi i64 [ 2, %386 ], [ %419, %418 ]
  %390 = getelementptr inbounds nuw i8, ptr %373, i64 %389
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 1
  %392 = load i8, ptr %391, align 1, !tbaa !8
  %393 = icmp eq i8 %375, %392
  br i1 %393, label %394, label %.split.loop.exit.split.loop.exit

394:                                              ; preds = %388
  %395 = getelementptr inbounds nuw i8, ptr %390, i64 2
  %396 = load i8, ptr %395, align 1, !tbaa !8
  %397 = icmp eq i8 %375, %396
  br i1 %397, label %398, label %.split.loop.exit.split.loop.exit107

398:                                              ; preds = %394
  %399 = getelementptr inbounds nuw i8, ptr %390, i64 3
  %400 = load i8, ptr %399, align 1, !tbaa !8
  %401 = icmp eq i8 %375, %400
  br i1 %401, label %402, label %.split.loop.exit.split.loop.exit109

402:                                              ; preds = %398
  %403 = getelementptr inbounds nuw i8, ptr %390, i64 4
  %404 = load i8, ptr %403, align 1, !tbaa !8
  %405 = icmp eq i8 %375, %404
  br i1 %405, label %406, label %.split.loop.exit.split.loop.exit111

406:                                              ; preds = %402
  %407 = getelementptr inbounds nuw i8, ptr %390, i64 5
  %408 = load i8, ptr %407, align 1, !tbaa !8
  %409 = icmp eq i8 %375, %408
  br i1 %409, label %410, label %.split.loop.exit.split.loop.exit113

410:                                              ; preds = %406
  %411 = getelementptr inbounds nuw i8, ptr %390, i64 6
  %412 = load i8, ptr %411, align 1, !tbaa !8
  %413 = icmp eq i8 %375, %412
  br i1 %413, label %414, label %.split.loop.exit.split.loop.exit115

414:                                              ; preds = %410
  %415 = getelementptr inbounds nuw i8, ptr %390, i64 7
  %416 = load i8, ptr %415, align 1, !tbaa !8
  %417 = icmp eq i8 %375, %416
  br i1 %417, label %418, label %.split.loop.exit.split.loop.exit117

418:                                              ; preds = %414
  %419 = add nuw nsw i64 %389, 8
  %420 = getelementptr inbounds nuw i8, ptr %373, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !8
  %422 = icmp eq i8 %375, %421
  %423 = icmp samesign ult i64 %389, 250
  %424 = select i1 %422, i1 %423, i1 false
  br i1 %424, label %388, label %.split.loop.exit.split.loop.exit119, !llvm.loop !144

.split.loop.exit.split.loop.exit:                 ; preds = %388
  %425 = getelementptr inbounds nuw i8, ptr %390, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit107:              ; preds = %394
  %426 = getelementptr inbounds nuw i8, ptr %390, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit109:              ; preds = %398
  %427 = getelementptr inbounds nuw i8, ptr %390, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit111:              ; preds = %402
  %428 = getelementptr inbounds nuw i8, ptr %390, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit113:              ; preds = %406
  %429 = getelementptr inbounds nuw i8, ptr %390, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit115:              ; preds = %410
  %430 = getelementptr inbounds nuw i8, ptr %390, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit117:              ; preds = %414
  %431 = getelementptr inbounds nuw i8, ptr %390, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit119:              ; preds = %418
  %432 = getelementptr inbounds nuw i8, ptr %373, i64 %419
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit119, %.split.loop.exit.split.loop.exit117, %.split.loop.exit.split.loop.exit115, %.split.loop.exit.split.loop.exit113, %.split.loop.exit.split.loop.exit111, %.split.loop.exit.split.loop.exit109, %.split.loop.exit.split.loop.exit107, %.split.loop.exit.split.loop.exit
  %433 = phi ptr [ %426, %.split.loop.exit.split.loop.exit107 ], [ %427, %.split.loop.exit.split.loop.exit109 ], [ %425, %.split.loop.exit.split.loop.exit ], [ %431, %.split.loop.exit.split.loop.exit117 ], [ %430, %.split.loop.exit.split.loop.exit115 ], [ %429, %.split.loop.exit.split.loop.exit113 ], [ %428, %.split.loop.exit.split.loop.exit111 ], [ %432, %.split.loop.exit.split.loop.exit119 ]
  %434 = ptrtoint ptr %387 to i64
  %435 = ptrtoint ptr %433 to i64
  %436 = sub i64 %434, %435
  %437 = trunc i64 %436 to i32
  %438 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %437), !nosanitize !45
  %439 = extractvalue { i32, i1 } %438, 1, !nosanitize !45
  br i1 %439, label %440, label %441, !prof !46, !nosanitize !45

440:                                              ; preds = %.split.loop.exit
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

441:                                              ; preds = %.split.loop.exit
  %442 = extractvalue { i32, i1 } %438, 0, !nosanitize !45
  %443 = tail call i32 @llvm.umin.i32(i32 %442, i32 %369)
  store i32 %443, ptr %4, align 8
  %444 = icmp ugt i32 %443, 2
  %445 = load i32, ptr %23, align 4, !tbaa !139
  br i1 %444, label %446, label %505

446:                                              ; preds = %441
  %447 = trunc i32 %443 to i8
  %448 = add i8 %447, -3
  %449 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %445, i32 1), !nosanitize !45
  %450 = extractvalue { i32, i1 } %449, 1, !nosanitize !45
  br i1 %450, label %451, label %452, !prof !46, !nosanitize !45

451:                                              ; preds = %446
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

452:                                              ; preds = %446
  %453 = extractvalue { i32, i1 } %449, 0, !nosanitize !45
  %454 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %453, ptr %23, align 4, !tbaa !139
  %455 = zext i32 %445 to i64
  %456 = getelementptr inbounds nuw i8, ptr %454, i64 %455
  store i8 1, ptr %456, align 1, !tbaa !8
  %457 = load i32, ptr %23, align 4, !tbaa !139
  %458 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %457, i32 1), !nosanitize !45
  %459 = extractvalue { i32, i1 } %458, 1, !nosanitize !45
  br i1 %459, label %460, label %461, !prof !46, !nosanitize !45

460:                                              ; preds = %452
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

461:                                              ; preds = %452
  %462 = extractvalue { i32, i1 } %458, 0, !nosanitize !45
  %463 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %462, ptr %23, align 4, !tbaa !139
  %464 = zext i32 %457 to i64
  %465 = getelementptr inbounds nuw i8, ptr %463, i64 %464
  store i8 0, ptr %465, align 1, !tbaa !8
  %466 = load i32, ptr %23, align 4, !tbaa !139
  %467 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %466, i32 1), !nosanitize !45
  %468 = extractvalue { i32, i1 } %467, 1, !nosanitize !45
  br i1 %468, label %469, label %470, !prof !46, !nosanitize !45

469:                                              ; preds = %461
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

470:                                              ; preds = %461
  %471 = extractvalue { i32, i1 } %467, 0, !nosanitize !45
  %472 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %471, ptr %23, align 4, !tbaa !139
  %473 = zext i32 %466 to i64
  %474 = getelementptr inbounds nuw i8, ptr %472, i64 %473
  store i8 %448, ptr %474, align 1, !tbaa !8
  %475 = zext i8 %448 to i64
  %476 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %475
  %477 = load i8, ptr %476, align 1, !tbaa !8
  %478 = zext i8 %477 to i64
  %479 = getelementptr [4 x i8], ptr %26, i64 %478
  %480 = load i16, ptr %479, align 4, !tbaa !8
  %481 = add i16 %480, 1
  store i16 %481, ptr %479, align 4, !tbaa !8
  %482 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %483 = zext i8 %482 to i64
  %484 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %483
  %485 = load i16, ptr %484, align 4, !tbaa !8
  %486 = add i16 %485, 1
  store i16 %486, ptr %484, align 4, !tbaa !8
  %487 = load i32, ptr %23, align 4, !tbaa !139
  %488 = load i32, ptr %25, align 8, !tbaa !47
  %489 = icmp eq i32 %487, %488
  %490 = load i32, ptr %4, align 8, !tbaa !78
  %491 = load i32, ptr %3, align 4, !tbaa !75
  %492 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %491, i32 %490), !nosanitize !45
  %493 = extractvalue { i32, i1 } %492, 1, !nosanitize !45
  br i1 %493, label %494, label %495, !prof !46, !nosanitize !45

494:                                              ; preds = %470
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

495:                                              ; preds = %470
  %496 = extractvalue { i32, i1 } %492, 0, !nosanitize !45
  store i32 %496, ptr %3, align 4, !tbaa !75
  %497 = load i32, ptr %7, align 4, !tbaa !73
  %498 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %497, i32 %490), !nosanitize !45
  %499 = extractvalue { i32, i1 } %498, 1, !nosanitize !45
  br i1 %499, label %500, label %501, !prof !46, !nosanitize !45

500:                                              ; preds = %495
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

501:                                              ; preds = %495
  %502 = extractvalue { i32, i1 } %498, 0, !nosanitize !45
  store i32 %502, ptr %7, align 4, !tbaa !73
  store i32 0, ptr %4, align 8, !tbaa !78
  br i1 %489, label %554, label %.backedge

._crit_edge:                                      ; preds = %364, %382, %378, %371, %367
  %.pre = phi ptr [ %.pre.pre73, %371 ], [ %.pre.pre73, %367 ], [ %.pre.pre73, %382 ], [ %.pre.pre73, %378 ], [ %.pre.pre73.pre75, %364 ]
  %503 = phi i32 [ %368, %371 ], [ 0, %367 ], [ %368, %382 ], [ %368, %378 ], [ %366, %364 ]
  %504 = load i32, ptr %23, align 4, !tbaa !139
  %.pre72 = zext i32 %503 to i64
  br label %505

505:                                              ; preds = %._crit_edge, %441
  %.pre-phi = phi i64 [ %.pre72, %._crit_edge ], [ %372, %441 ]
  %506 = phi ptr [ %.pre, %._crit_edge ], [ %.pre.pre73, %441 ]
  %507 = phi i32 [ %504, %._crit_edge ], [ %445, %441 ]
  %508 = getelementptr inbounds nuw i8, ptr %506, i64 %.pre-phi
  %509 = load i8, ptr %508, align 1, !tbaa !8
  %510 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %507, i32 1), !nosanitize !45
  %511 = extractvalue { i32, i1 } %510, 1, !nosanitize !45
  br i1 %511, label %512, label %513, !prof !46, !nosanitize !45

512:                                              ; preds = %505
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

513:                                              ; preds = %505
  %514 = extractvalue { i32, i1 } %510, 0, !nosanitize !45
  %515 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %514, ptr %23, align 4, !tbaa !139
  %516 = zext i32 %507 to i64
  %517 = getelementptr inbounds nuw i8, ptr %515, i64 %516
  store i8 0, ptr %517, align 1, !tbaa !8
  %518 = load i32, ptr %23, align 4, !tbaa !139
  %519 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %518, i32 1), !nosanitize !45
  %520 = extractvalue { i32, i1 } %519, 1, !nosanitize !45
  br i1 %520, label %521, label %522, !prof !46, !nosanitize !45

521:                                              ; preds = %513
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

522:                                              ; preds = %513
  %523 = extractvalue { i32, i1 } %519, 0, !nosanitize !45
  %524 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %523, ptr %23, align 4, !tbaa !139
  %525 = zext i32 %518 to i64
  %526 = getelementptr inbounds nuw i8, ptr %524, i64 %525
  store i8 0, ptr %526, align 1, !tbaa !8
  %527 = load i32, ptr %23, align 4, !tbaa !139
  %528 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %527, i32 1), !nosanitize !45
  %529 = extractvalue { i32, i1 } %528, 1, !nosanitize !45
  br i1 %529, label %530, label %531, !prof !46, !nosanitize !45

530:                                              ; preds = %522
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

531:                                              ; preds = %522
  %532 = extractvalue { i32, i1 } %528, 0, !nosanitize !45
  %533 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %532, ptr %23, align 4, !tbaa !139
  %534 = zext i32 %527 to i64
  %535 = getelementptr inbounds nuw i8, ptr %533, i64 %534
  store i8 %509, ptr %535, align 1, !tbaa !8
  %536 = zext i8 %509 to i64
  %537 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %536
  %538 = load i16, ptr %537, align 4, !tbaa !8
  %539 = add i16 %538, 1
  store i16 %539, ptr %537, align 4, !tbaa !8
  %540 = load i32, ptr %23, align 4, !tbaa !139
  %541 = load i32, ptr %25, align 8, !tbaa !47
  %542 = icmp eq i32 %540, %541
  %543 = load i32, ptr %3, align 4, !tbaa !75
  %544 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %543, i32 1), !nosanitize !45
  %545 = extractvalue { i32, i1 } %544, 1, !nosanitize !45
  br i1 %545, label %.loopexit30, label %546, !prof !46, !nosanitize !45

.loopexit30:                                      ; preds = %562, %531, %697, %628
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

546:                                              ; preds = %531
  %547 = extractvalue { i32, i1 } %544, 0, !nosanitize !45
  store i32 %547, ptr %3, align 4, !tbaa !75
  %548 = load i32, ptr %7, align 4, !tbaa !73
  %549 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %548, i32 1), !nosanitize !45
  %550 = extractvalue { i32, i1 } %549, 1, !nosanitize !45
  br i1 %550, label %551, label %552, !prof !46, !nosanitize !45

551:                                              ; preds = %546
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

552:                                              ; preds = %546
  %553 = extractvalue { i32, i1 } %549, 0, !nosanitize !45
  store i32 %553, ptr %7, align 4, !tbaa !73
  br i1 %542, label %554, label %.backedge

554:                                              ; preds = %552, %501
  %555 = phi i32 [ %502, %501 ], [ %553, %552 ]
  %556 = load i64, ptr %10, align 8, !tbaa !74
  %557 = icmp sgt i64 %556, -1
  br i1 %557, label %558, label %562

558:                                              ; preds = %554
  %559 = load ptr, ptr %8, align 8, !tbaa !34
  %560 = and i64 %556, 4294967295
  %561 = getelementptr inbounds nuw i8, ptr %559, i64 %560
  br label %562

562:                                              ; preds = %558, %554
  %563 = phi ptr [ %561, %558 ], [ null, %554 ]
  %564 = zext i32 %555 to i64
  %565 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %564, i64 %556), !nosanitize !45
  %566 = extractvalue { i64, i1 } %565, 1, !nosanitize !45
  br i1 %566, label %.loopexit30, label %567, !prof !46, !nosanitize !45

567:                                              ; preds = %562
  %568 = extractvalue { i64, i1 } %565, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %563, i64 noundef %568, i32 noundef 0) #11
  %569 = load i32, ptr %7, align 4, !tbaa !73
  %570 = zext i32 %569 to i64
  store i64 %570, ptr %10, align 8, !tbaa !74
  %571 = load ptr, ptr %0, align 8, !tbaa !20
  %572 = getelementptr inbounds nuw i8, ptr %571, i64 56
  %573 = load ptr, ptr %572, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %573) #11
  %574 = getelementptr inbounds nuw i8, ptr %573, i64 40
  %575 = load i64, ptr %574, align 8, !tbaa !57
  %576 = getelementptr inbounds nuw i8, ptr %571, i64 32
  %577 = load i32, ptr %576, align 8, !tbaa !107
  %578 = zext i32 %577 to i64
  %579 = tail call i64 @llvm.umin.i64(i64 %575, i64 %578)
  %580 = trunc nuw i64 %579 to i32
  %581 = icmp eq i64 %579, 0
  br i1 %581, label %614, label %582

582:                                              ; preds = %567
  %583 = getelementptr inbounds nuw i8, ptr %571, i64 24
  %584 = load ptr, ptr %583, align 8, !tbaa !106
  %585 = getelementptr inbounds nuw i8, ptr %573, i64 32
  %586 = load ptr, ptr %585, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %584, ptr align 1 %586, i64 %579, i1 false)
  %587 = load ptr, ptr %583, align 8, !tbaa !106
  %588 = getelementptr inbounds nuw i8, ptr %587, i64 %579
  store ptr %588, ptr %583, align 8, !tbaa !106
  %589 = load ptr, ptr %585, align 8, !tbaa !58
  %590 = getelementptr inbounds nuw i8, ptr %589, i64 %579
  store ptr %590, ptr %585, align 8, !tbaa !58
  %591 = getelementptr inbounds nuw i8, ptr %571, i64 40
  %592 = load i64, ptr %591, align 8, !tbaa !108
  %593 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %592, i64 %579), !nosanitize !45
  %594 = extractvalue { i64, i1 } %593, 1, !nosanitize !45
  br i1 %594, label %595, label %596, !prof !46, !nosanitize !45

595:                                              ; preds = %582
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

596:                                              ; preds = %582
  %597 = extractvalue { i64, i1 } %593, 0, !nosanitize !45
  store i64 %597, ptr %591, align 8, !tbaa !108
  %598 = load i32, ptr %576, align 8, !tbaa !107
  %599 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %598, i32 %580), !nosanitize !45
  %600 = extractvalue { i32, i1 } %599, 1, !nosanitize !45
  br i1 %600, label %601, label %602, !prof !46, !nosanitize !45

601:                                              ; preds = %596
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

602:                                              ; preds = %596
  %603 = extractvalue { i32, i1 } %599, 0, !nosanitize !45
  store i32 %603, ptr %576, align 8, !tbaa !107
  %604 = load i64, ptr %574, align 8, !tbaa !57
  %605 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %604, i64 %579), !nosanitize !45
  %606 = extractvalue { i64, i1 } %605, 1, !nosanitize !45
  br i1 %606, label %607, label %608, !prof !46, !nosanitize !45

607:                                              ; preds = %602
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

608:                                              ; preds = %602
  %609 = extractvalue { i64, i1 } %605, 0, !nosanitize !45
  store i64 %609, ptr %574, align 8, !tbaa !57
  %610 = icmp eq i64 %609, 0
  br i1 %610, label %611, label %614

611:                                              ; preds = %608
  %612 = getelementptr inbounds nuw i8, ptr %573, i64 16
  %613 = load ptr, ptr %612, align 8, !tbaa !40
  store ptr %613, ptr %585, align 8, !tbaa !58
  br label %614

614:                                              ; preds = %611, %608, %567
  %615 = load ptr, ptr %0, align 8, !tbaa !20
  %616 = getelementptr inbounds nuw i8, ptr %615, i64 32
  %617 = load i32, ptr %616, align 8, !tbaa !107
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %.loopexit29, label %.backedge

.backedge:                                        ; preds = %614, %552, %501
  br label %28

619:                                              ; preds = %362
  store i32 0, ptr %11, align 4, !tbaa !76
  %620 = icmp eq i32 %1, 4
  br i1 %620, label %621, label %687

621:                                              ; preds = %619
  %622 = load i64, ptr %10, align 8, !tbaa !74
  %623 = icmp sgt i64 %622, -1
  br i1 %623, label %624, label %628

624:                                              ; preds = %621
  %625 = load ptr, ptr %8, align 8, !tbaa !34
  %626 = and i64 %622, 4294967295
  %627 = getelementptr inbounds nuw i8, ptr %625, i64 %626
  br label %628

628:                                              ; preds = %624, %621
  %629 = phi ptr [ %627, %624 ], [ null, %621 ]
  %630 = load i32, ptr %7, align 4, !tbaa !73
  %631 = zext i32 %630 to i64
  %632 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %631, i64 %622), !nosanitize !45
  %633 = extractvalue { i64, i1 } %632, 1, !nosanitize !45
  br i1 %633, label %.loopexit30, label %634, !prof !46, !nosanitize !45

634:                                              ; preds = %628
  %635 = extractvalue { i64, i1 } %632, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %629, i64 noundef %635, i32 noundef 1) #11
  %636 = load i32, ptr %7, align 4, !tbaa !73
  %637 = zext i32 %636 to i64
  store i64 %637, ptr %10, align 8, !tbaa !74
  %638 = load ptr, ptr %0, align 8, !tbaa !20
  %639 = getelementptr inbounds nuw i8, ptr %638, i64 56
  %640 = load ptr, ptr %639, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %640) #11
  %641 = getelementptr inbounds nuw i8, ptr %640, i64 40
  %642 = load i64, ptr %641, align 8, !tbaa !57
  %643 = getelementptr inbounds nuw i8, ptr %638, i64 32
  %644 = load i32, ptr %643, align 8, !tbaa !107
  %645 = zext i32 %644 to i64
  %646 = tail call i64 @llvm.umin.i64(i64 %642, i64 %645)
  %647 = trunc nuw i64 %646 to i32
  %648 = icmp eq i64 %646, 0
  br i1 %648, label %681, label %649

649:                                              ; preds = %634
  %650 = getelementptr inbounds nuw i8, ptr %638, i64 24
  %651 = load ptr, ptr %650, align 8, !tbaa !106
  %652 = getelementptr inbounds nuw i8, ptr %640, i64 32
  %653 = load ptr, ptr %652, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %651, ptr align 1 %653, i64 %646, i1 false)
  %654 = load ptr, ptr %650, align 8, !tbaa !106
  %655 = getelementptr inbounds nuw i8, ptr %654, i64 %646
  store ptr %655, ptr %650, align 8, !tbaa !106
  %656 = load ptr, ptr %652, align 8, !tbaa !58
  %657 = getelementptr inbounds nuw i8, ptr %656, i64 %646
  store ptr %657, ptr %652, align 8, !tbaa !58
  %658 = getelementptr inbounds nuw i8, ptr %638, i64 40
  %659 = load i64, ptr %658, align 8, !tbaa !108
  %660 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %659, i64 %646), !nosanitize !45
  %661 = extractvalue { i64, i1 } %660, 1, !nosanitize !45
  br i1 %661, label %662, label %663, !prof !46, !nosanitize !45

662:                                              ; preds = %649
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

663:                                              ; preds = %649
  %664 = extractvalue { i64, i1 } %660, 0, !nosanitize !45
  store i64 %664, ptr %658, align 8, !tbaa !108
  %665 = load i32, ptr %643, align 8, !tbaa !107
  %666 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %665, i32 %647), !nosanitize !45
  %667 = extractvalue { i32, i1 } %666, 1, !nosanitize !45
  br i1 %667, label %668, label %669, !prof !46, !nosanitize !45

668:                                              ; preds = %663
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

669:                                              ; preds = %663
  %670 = extractvalue { i32, i1 } %666, 0, !nosanitize !45
  store i32 %670, ptr %643, align 8, !tbaa !107
  %671 = load i64, ptr %641, align 8, !tbaa !57
  %672 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %671, i64 %646), !nosanitize !45
  %673 = extractvalue { i64, i1 } %672, 1, !nosanitize !45
  br i1 %673, label %674, label %675, !prof !46, !nosanitize !45

674:                                              ; preds = %669
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

675:                                              ; preds = %669
  %676 = extractvalue { i64, i1 } %672, 0, !nosanitize !45
  store i64 %676, ptr %641, align 8, !tbaa !57
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %678, label %681

678:                                              ; preds = %675
  %679 = getelementptr inbounds nuw i8, ptr %640, i64 16
  %680 = load ptr, ptr %679, align 8, !tbaa !40
  store ptr %680, ptr %652, align 8, !tbaa !58
  br label %681

681:                                              ; preds = %678, %675, %634
  %682 = load ptr, ptr %0, align 8, !tbaa !20
  %683 = getelementptr inbounds nuw i8, ptr %682, i64 32
  %684 = load i32, ptr %683, align 8, !tbaa !107
  %685 = icmp eq i32 %684, 0
  %686 = select i1 %685, i32 2, i32 3
  br label %.loopexit29

687:                                              ; preds = %619
  %688 = load i32, ptr %23, align 4, !tbaa !139
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %755, label %690

690:                                              ; preds = %687
  %691 = load i64, ptr %10, align 8, !tbaa !74
  %692 = icmp sgt i64 %691, -1
  br i1 %692, label %693, label %697

693:                                              ; preds = %690
  %694 = load ptr, ptr %8, align 8, !tbaa !34
  %695 = and i64 %691, 4294967295
  %696 = getelementptr inbounds nuw i8, ptr %694, i64 %695
  br label %697

697:                                              ; preds = %693, %690
  %698 = phi ptr [ %696, %693 ], [ null, %690 ]
  %699 = load i32, ptr %7, align 4, !tbaa !73
  %700 = zext i32 %699 to i64
  %701 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %700, i64 %691), !nosanitize !45
  %702 = extractvalue { i64, i1 } %701, 1, !nosanitize !45
  br i1 %702, label %.loopexit30, label %703, !prof !46, !nosanitize !45

703:                                              ; preds = %697
  %704 = extractvalue { i64, i1 } %701, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %698, i64 noundef %704, i32 noundef 0) #11
  %705 = load i32, ptr %7, align 4, !tbaa !73
  %706 = zext i32 %705 to i64
  store i64 %706, ptr %10, align 8, !tbaa !74
  %707 = load ptr, ptr %0, align 8, !tbaa !20
  %708 = getelementptr inbounds nuw i8, ptr %707, i64 56
  %709 = load ptr, ptr %708, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %709) #11
  %710 = getelementptr inbounds nuw i8, ptr %709, i64 40
  %711 = load i64, ptr %710, align 8, !tbaa !57
  %712 = getelementptr inbounds nuw i8, ptr %707, i64 32
  %713 = load i32, ptr %712, align 8, !tbaa !107
  %714 = zext i32 %713 to i64
  %715 = tail call i64 @llvm.umin.i64(i64 %711, i64 %714)
  %716 = trunc nuw i64 %715 to i32
  %717 = icmp eq i64 %715, 0
  br i1 %717, label %750, label %718

718:                                              ; preds = %703
  %719 = getelementptr inbounds nuw i8, ptr %707, i64 24
  %720 = load ptr, ptr %719, align 8, !tbaa !106
  %721 = getelementptr inbounds nuw i8, ptr %709, i64 32
  %722 = load ptr, ptr %721, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %720, ptr align 1 %722, i64 %715, i1 false)
  %723 = load ptr, ptr %719, align 8, !tbaa !106
  %724 = getelementptr inbounds nuw i8, ptr %723, i64 %715
  store ptr %724, ptr %719, align 8, !tbaa !106
  %725 = load ptr, ptr %721, align 8, !tbaa !58
  %726 = getelementptr inbounds nuw i8, ptr %725, i64 %715
  store ptr %726, ptr %721, align 8, !tbaa !58
  %727 = getelementptr inbounds nuw i8, ptr %707, i64 40
  %728 = load i64, ptr %727, align 8, !tbaa !108
  %729 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %728, i64 %715), !nosanitize !45
  %730 = extractvalue { i64, i1 } %729, 1, !nosanitize !45
  br i1 %730, label %731, label %732, !prof !46, !nosanitize !45

731:                                              ; preds = %718
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

732:                                              ; preds = %718
  %733 = extractvalue { i64, i1 } %729, 0, !nosanitize !45
  store i64 %733, ptr %727, align 8, !tbaa !108
  %734 = load i32, ptr %712, align 8, !tbaa !107
  %735 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %734, i32 %716), !nosanitize !45
  %736 = extractvalue { i32, i1 } %735, 1, !nosanitize !45
  br i1 %736, label %737, label %738, !prof !46, !nosanitize !45

737:                                              ; preds = %732
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

738:                                              ; preds = %732
  %739 = extractvalue { i32, i1 } %735, 0, !nosanitize !45
  store i32 %739, ptr %712, align 8, !tbaa !107
  %740 = load i64, ptr %710, align 8, !tbaa !57
  %741 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %740, i64 %715), !nosanitize !45
  %742 = extractvalue { i64, i1 } %741, 1, !nosanitize !45
  br i1 %742, label %743, label %744, !prof !46, !nosanitize !45

743:                                              ; preds = %738
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

744:                                              ; preds = %738
  %745 = extractvalue { i64, i1 } %741, 0, !nosanitize !45
  store i64 %745, ptr %710, align 8, !tbaa !57
  %746 = icmp eq i64 %745, 0
  br i1 %746, label %747, label %750

747:                                              ; preds = %744
  %748 = getelementptr inbounds nuw i8, ptr %709, i64 16
  %749 = load ptr, ptr %748, align 8, !tbaa !40
  store ptr %749, ptr %721, align 8, !tbaa !58
  br label %750

750:                                              ; preds = %747, %744, %703
  %751 = load ptr, ptr %0, align 8, !tbaa !20
  %752 = getelementptr inbounds nuw i8, ptr %751, i64 32
  %753 = load i32, ptr %752, align 8, !tbaa !107
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %.loopexit29, label %755

755:                                              ; preds = %750, %687
  br label %.loopexit29

.loopexit29:                                      ; preds = %614, %358, %755, %750, %681
  %756 = phi i32 [ 1, %755 ], [ %686, %681 ], [ 0, %750 ], [ 0, %358 ], [ 0, %614 ]
  ret i32 %756
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
  br i1 %35, label %36, label %369

36:                                               ; preds = %33
  %37 = load i32, ptr %4, align 8, !tbaa !32
  %38 = zext i32 %37 to i64
  br label %39

39:                                               ; preds = %312, %36
  %40 = phi i32 [ %240, %312 ], [ %34, %36 ]
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
  br i1 %67, label %187, label %68

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

86:                                               ; preds = %87, %81
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

87:                                               ; preds = %81
  %88 = extractvalue { i32, i1 } %84, 0, !nosanitize !45
  store i32 %88, ptr %6, align 4, !tbaa !73
  %89 = load i64, ptr %9, align 8, !tbaa !74
  %90 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %89, i64 %38), !nosanitize !45
  %91 = extractvalue { i64, i1 } %90, 1, !nosanitize !45
  br i1 %91, label %86, label %92, !prof !46, !nosanitize !45

92:                                               ; preds = %87
  %93 = extractvalue { i64, i1 } %90, 0, !nosanitize !45
  store i64 %93, ptr %9, align 8, !tbaa !74
  %94 = load i32, ptr %10, align 4, !tbaa !76
  %95 = icmp ugt i32 %94, %88
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 %88, ptr %10, align 4, !tbaa !76
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i32, ptr %4, align 8, !tbaa !32
  %99 = load i32, ptr %11, align 4, !tbaa !36
  %100 = load ptr, ptr %12, align 8, !tbaa !37
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds nuw [2 x i8], ptr %100, i64 %101
  %103 = icmp eq i32 %99, 0
  br i1 %103, label %127, label %104, !prof !46, !nosanitize !45

104:                                              ; preds = %97
  %105 = icmp ult i32 %99, 8
  br i1 %105, label %.preheader204, label %106

.preheader204:                                    ; preds = %121, %104
  %.ph205 = phi ptr [ %123, %121 ], [ %102, %104 ]
  %.ph206 = phi i32 [ %125, %121 ], [ %99, %104 ]
  br label %133

106:                                              ; preds = %104
  %107 = and i64 %101, 4294967288
  %108 = insertelement <8 x i32> poison, i32 %98, i64 0
  %109 = shufflevector <8 x i32> %108, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %110

110:                                              ; preds = %110, %106
  %111 = phi i64 [ 0, %106 ], [ %119, %110 ]
  %112 = mul nsw i64 %111, -2
  %113 = getelementptr i8, ptr %102, i64 %112
  %114 = getelementptr inbounds i8, ptr %113, i64 -16
  %115 = load <8 x i16>, ptr %114, align 2, !tbaa !62
  %116 = zext <8 x i16> %115 to <8 x i32>
  %117 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %116, <8 x i32> %109)
  %118 = trunc nuw <8 x i32> %117 to <8 x i16>
  store <8 x i16> %118, ptr %114, align 2, !tbaa !62
  %119 = add nuw nsw i64 %111, 8
  %120 = icmp eq i64 %119, %107
  br i1 %120, label %121, label %110, !llvm.loop !148

121:                                              ; preds = %110
  %122 = mul nsw i64 %107, -2
  %123 = getelementptr i8, ptr %102, i64 %122
  %124 = trunc nuw i64 %107 to i32
  %125 = sub i32 %99, %124
  %126 = icmp eq i64 %107, %101
  br i1 %126, label %.loopexit38, label %.preheader204

127:                                              ; preds = %97
  %128 = getelementptr inbounds i8, ptr %102, i64 -2
  %129 = load i16, ptr %128, align 2, !tbaa !62
  %130 = zext i16 %129 to i32
  %131 = tail call i32 @llvm.usub.sat.i32(i32 %130, i32 %98)
  %132 = trunc nuw i32 %131 to i16
  store i16 %132, ptr %128, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

133:                                              ; preds = %.preheader204, %133
  %134 = phi ptr [ %136, %133 ], [ %.ph205, %.preheader204 ]
  %135 = phi i32 [ %141, %133 ], [ %.ph206, %.preheader204 ]
  %136 = getelementptr inbounds i8, ptr %134, i64 -2
  %137 = load i16, ptr %136, align 2, !tbaa !62
  %138 = zext i16 %137 to i32
  %139 = tail call i32 @llvm.usub.sat.i32(i32 %138, i32 %98)
  %140 = trunc nuw i32 %139 to i16
  store i16 %140, ptr %136, align 2, !tbaa !62
  %141 = add i32 %135, -1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %.loopexit38, label %133, !llvm.loop !149

.loopexit38:                                      ; preds = %133, %121
  %143 = icmp eq i32 %98, 0
  br i1 %143, label %144, label %145, !prof !46, !nosanitize !45

144:                                              ; preds = %.loopexit38
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

145:                                              ; preds = %.loopexit38
  %146 = load ptr, ptr %13, align 8, !tbaa !35
  %147 = zext i32 %98 to i64
  %148 = getelementptr inbounds nuw [2 x i8], ptr %146, i64 %147
  %149 = icmp ult i32 %98, 8
  br i1 %149, label %.preheader, label %150

150:                                              ; preds = %145
  %151 = and i64 %147, 4294967288
  %152 = insertelement <8 x i32> poison, i32 %98, i64 0
  %153 = shufflevector <8 x i32> %152, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %154

154:                                              ; preds = %154, %150
  %155 = phi i64 [ 0, %150 ], [ %163, %154 ]
  %156 = mul nsw i64 %155, -2
  %157 = getelementptr i8, ptr %148, i64 %156
  %158 = getelementptr inbounds i8, ptr %157, i64 -16
  %159 = load <8 x i16>, ptr %158, align 2, !tbaa !62
  %160 = zext <8 x i16> %159 to <8 x i32>
  %161 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %160, <8 x i32> %153)
  %162 = trunc nuw <8 x i32> %161 to <8 x i16>
  store <8 x i16> %162, ptr %158, align 2, !tbaa !62
  %163 = add nuw nsw i64 %155, 8
  %164 = icmp eq i64 %163, %151
  br i1 %164, label %165, label %154, !llvm.loop !150

165:                                              ; preds = %154
  %166 = mul nsw i64 %151, -2
  %167 = getelementptr i8, ptr %148, i64 %166
  %168 = trunc nuw i64 %151 to i32
  %169 = sub i32 %98, %168
  %170 = icmp eq i64 %151, %147
  br i1 %170, label %.loopexit37, label %.preheader

.preheader:                                       ; preds = %165, %145
  %.ph = phi ptr [ %167, %165 ], [ %148, %145 ]
  %.ph203 = phi i32 [ %169, %165 ], [ %98, %145 ]
  br label %171

171:                                              ; preds = %.preheader, %171
  %172 = phi ptr [ %174, %171 ], [ %.ph, %.preheader ]
  %173 = phi i32 [ %179, %171 ], [ %.ph203, %.preheader ]
  %174 = getelementptr inbounds i8, ptr %172, i64 -2
  %175 = load i16, ptr %174, align 2, !tbaa !62
  %176 = zext i16 %175 to i32
  %177 = tail call i32 @llvm.usub.sat.i32(i32 %176, i32 %98)
  %178 = trunc nuw i32 %177 to i16
  store i16 %178, ptr %174, align 2, !tbaa !62
  %179 = add i32 %173, -1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %.loopexit37, label %171, !llvm.loop !151

.loopexit37:                                      ; preds = %171, %165
  store i32 1, ptr %14, align 8, !tbaa !63
  %181 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %55, i32 %37), !nosanitize !45
  %182 = extractvalue { i32, i1 } %181, 1, !nosanitize !45
  br i1 %182, label %183, label %184, !prof !46, !nosanitize !45

183:                                              ; preds = %.loopexit37
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

184:                                              ; preds = %.loopexit37
  %185 = extractvalue { i32, i1 } %181, 0, !nosanitize !45
  %186 = load i32, ptr %3, align 4, !tbaa !75
  br label %187

187:                                              ; preds = %184, %65
  %188 = phi i32 [ %186, %184 ], [ %40, %65 ]
  %189 = phi i32 [ %88, %184 ], [ %48, %65 ]
  %190 = phi i32 [ %185, %184 ], [ %55, %65 ]
  %191 = load ptr, ptr %0, align 8, !tbaa !20
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %193 = load i32, ptr %192, align 8, !tbaa !81
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %317, label %195

195:                                              ; preds = %187
  %196 = load ptr, ptr %7, align 8, !tbaa !34
  %197 = zext i32 %189 to i64
  %198 = getelementptr inbounds nuw i8, ptr %196, i64 %197
  %199 = zext i32 %188 to i64
  %200 = getelementptr inbounds nuw i8, ptr %198, i64 %199
  %201 = tail call i32 @llvm.umin.i32(i32 %193, i32 %190)
  %202 = icmp eq i32 %190, 0
  br i1 %202, label %234, label %203

203:                                              ; preds = %195
  %204 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %193, i32 %201), !nosanitize !45
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !45
  br i1 %205, label %206, label %207, !prof !46, !nosanitize !45

206:                                              ; preds = %203
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

207:                                              ; preds = %203
  %208 = extractvalue { i32, i1 } %204, 0, !nosanitize !45
  store i32 %208, ptr %192, align 8, !tbaa !81
  %209 = load ptr, ptr %191, align 8, !tbaa !82
  %210 = zext i32 %201 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %200, ptr align 1 %209, i64 %210, i1 false)
  %211 = getelementptr inbounds nuw i8, ptr %191, i64 56
  %212 = load ptr, ptr %211, align 8, !tbaa !19
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 48
  %214 = load i32, ptr %213, align 8, !tbaa !30
  switch i32 %214, label %223 [
    i32 1, label %215
    i32 2, label %219
  ]

215:                                              ; preds = %207
  %216 = getelementptr inbounds nuw i8, ptr %191, i64 96
  %217 = load i64, ptr %216, align 8, !tbaa !59
  %218 = tail call i64 @adler32(i64 noundef %217, ptr noundef %200, i32 noundef %201) #11
  store i64 %218, ptr %216, align 8, !tbaa !59
  br label %223

219:                                              ; preds = %207
  %220 = getelementptr inbounds nuw i8, ptr %191, i64 96
  %221 = load i64, ptr %220, align 8, !tbaa !59
  %222 = tail call i64 @crc32(i64 noundef %221, ptr noundef %200, i32 noundef %201) #11
  store i64 %222, ptr %220, align 8, !tbaa !59
  br label %223

223:                                              ; preds = %219, %215, %207
  %224 = load ptr, ptr %191, align 8, !tbaa !82
  %225 = getelementptr inbounds nuw i8, ptr %224, i64 %210
  store ptr %225, ptr %191, align 8, !tbaa !82
  %226 = getelementptr inbounds nuw i8, ptr %191, i64 16
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
  %233 = load i32, ptr %3, align 4, !tbaa !75
  br label %234

234:                                              ; preds = %231, %195
  %235 = phi i32 [ %188, %195 ], [ %233, %231 ]
  %236 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %235, i32 %201), !nosanitize !45
  %237 = extractvalue { i32, i1 } %236, 1, !nosanitize !45
  br i1 %237, label %238, label %239, !prof !46, !nosanitize !45

238:                                              ; preds = %234
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

239:                                              ; preds = %234
  %240 = extractvalue { i32, i1 } %236, 0, !nosanitize !45
  store i32 %240, ptr %3, align 4, !tbaa !75
  %241 = load i32, ptr %10, align 4, !tbaa !76
  %242 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 %241), !nosanitize !45
  %243 = extractvalue { i32, i1 } %242, 1, !nosanitize !45
  br i1 %243, label %244, label %245, !prof !46, !nosanitize !45

244:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

245:                                              ; preds = %239
  %246 = extractvalue { i32, i1 } %242, 0, !nosanitize !45
  %247 = icmp ugt i32 %246, 2
  br i1 %247, label %248, label %.loopexit

248:                                              ; preds = %245
  %249 = load i32, ptr %6, align 4, !tbaa !73
  %250 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %249, i32 %241), !nosanitize !45
  %251 = extractvalue { i32, i1 } %250, 0, !nosanitize !45
  %252 = extractvalue { i32, i1 } %250, 1, !nosanitize !45
  br i1 %252, label %253, label %254, !prof !46, !nosanitize !45

253:                                              ; preds = %248
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

254:                                              ; preds = %248
  %255 = load ptr, ptr %7, align 8, !tbaa !34
  %256 = zext i32 %251 to i64
  %257 = getelementptr inbounds nuw i8, ptr %255, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !8
  %259 = zext i8 %258 to i32
  store i32 %259, ptr %15, align 8, !tbaa !80
  %260 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %251, i32 1), !nosanitize !45
  %261 = extractvalue { i32, i1 } %260, 1, !nosanitize !45
  br i1 %261, label %262, label %263, !prof !46, !nosanitize !45

262:                                              ; preds = %254
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

263:                                              ; preds = %254
  %264 = extractvalue { i32, i1 } %260, 0, !nosanitize !45
  %265 = load i32, ptr %16, align 8, !tbaa !53
  %266 = shl i32 %259, %265
  %267 = zext i32 %264 to i64
  %268 = getelementptr inbounds nuw i8, ptr %255, i64 %267
  %269 = load i8, ptr %268, align 1, !tbaa !8
  %270 = zext i8 %269 to i32
  %271 = xor i32 %266, %270
  %272 = load i32, ptr %17, align 4, !tbaa !52
  %273 = and i32 %271, %272
  store i32 %273, ptr %15, align 8, !tbaa !80
  br label %274

274:                                              ; preds = %307, %263
  %275 = phi i32 [ %273, %263 ], [ %292, %307 ]
  %276 = phi i32 [ %241, %263 ], [ %303, %307 ]
  %277 = phi i32 [ %251, %263 ], [ %308, %307 ]
  %278 = icmp eq i32 %276, 0
  br i1 %278, label %.loopexit, label %279

279:                                              ; preds = %274
  %280 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %277, i32 3), !nosanitize !45
  %281 = extractvalue { i32, i1 } %280, 1, !nosanitize !45
  br i1 %281, label %282, label %283, !prof !46, !nosanitize !45

282:                                              ; preds = %279
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

283:                                              ; preds = %279
  %284 = shl i32 %275, %265
  %285 = extractvalue { i32, i1 } %280, 0, !nosanitize !45
  %286 = add i32 %285, -1
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds nuw i8, ptr %255, i64 %287
  %289 = load i8, ptr %288, align 1, !tbaa !8
  %290 = zext i8 %289 to i32
  %291 = xor i32 %284, %290
  %292 = and i32 %291, %272
  store i32 %292, ptr %15, align 8, !tbaa !80
  %293 = load ptr, ptr %12, align 8, !tbaa !37
  %294 = zext i32 %292 to i64
  %295 = getelementptr inbounds nuw [2 x i8], ptr %293, i64 %294
  %296 = load i16, ptr %295, align 2, !tbaa !62
  %297 = load ptr, ptr %13, align 8, !tbaa !35
  %298 = load i32, ptr %18, align 8, !tbaa !33
  %299 = and i32 %298, %277
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds nuw [2 x i8], ptr %297, i64 %300
  store i16 %296, ptr %301, align 2, !tbaa !62
  %302 = trunc i32 %277 to i16
  store i16 %302, ptr %295, align 2, !tbaa !62
  %303 = add i32 %276, -1
  store i32 %303, ptr %10, align 4, !tbaa !76
  %304 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 %303), !nosanitize !45
  %305 = extractvalue { i32, i1 } %304, 1, !nosanitize !45
  br i1 %305, label %306, label %307, !prof !46, !nosanitize !45

306:                                              ; preds = %283
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

307:                                              ; preds = %283
  %308 = add nuw i32 %277, 1
  %309 = extractvalue { i32, i1 } %304, 0, !nosanitize !45
  %310 = icmp ult i32 %309, 3
  br i1 %310, label %.loopexit, label %274, !llvm.loop !91

.loopexit:                                        ; preds = %307, %274, %245
  %311 = icmp ult i32 %240, 262
  br i1 %311, label %312, label %317

312:                                              ; preds = %.loopexit
  %313 = load ptr, ptr %0, align 8, !tbaa !20
  %314 = getelementptr inbounds nuw i8, ptr %313, i64 8
  %315 = load i32, ptr %314, align 8, !tbaa !81
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %39, !llvm.loop !92

317:                                              ; preds = %312, %.loopexit, %187
  %318 = phi i32 [ %240, %312 ], [ %240, %.loopexit ], [ %188, %187 ]
  %319 = load i64, ptr %19, align 8, !tbaa !38
  %320 = load i64, ptr %5, align 8, !tbaa !61
  %321 = icmp ult i64 %319, %320
  br i1 %321, label %322, label %361

322:                                              ; preds = %317
  %323 = load i32, ptr %6, align 4, !tbaa !73
  %324 = zext i32 %323 to i64
  %325 = zext i32 %318 to i64
  %326 = add nuw nsw i64 %324, %325
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
  %335 = load ptr, ptr %7, align 8, !tbaa !34
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 %326
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %336, i8 0, i64 %334, i1 false)
  %337 = add nuw nsw i64 %334, %326
  br label %358

338:                                              ; preds = %322
  %339 = add nuw nsw i64 %326, 258
  %340 = icmp ult i64 %319, %339
  br i1 %340, label %341, label %361

341:                                              ; preds = %338
  %342 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %320, i64 %319), !nosanitize !45
  %343 = extractvalue { i64, i1 } %342, 1, !nosanitize !45
  br i1 %343, label %344, label %345, !prof !46, !nosanitize !45

344:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

345:                                              ; preds = %341
  %346 = sub nuw nsw i64 %339, %319
  %347 = extractvalue { i64, i1 } %342, 0, !nosanitize !45
  %348 = tail call i64 @llvm.umin.i64(i64 %346, i64 %347)
  %349 = load ptr, ptr %7, align 8, !tbaa !34
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 %319
  %351 = and i64 %348, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %350, i8 0, i64 %351, i1 false)
  %352 = load i64, ptr %19, align 8, !tbaa !38
  %353 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %352, i64 %348), !nosanitize !45
  %354 = extractvalue { i64, i1 } %353, 1, !nosanitize !45
  br i1 %354, label %355, label %356, !prof !46, !nosanitize !45

355:                                              ; preds = %345
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

356:                                              ; preds = %345
  %357 = extractvalue { i64, i1 } %353, 0, !nosanitize !45
  br label %358

358:                                              ; preds = %356, %332
  %359 = phi i64 [ %337, %332 ], [ %357, %356 ]
  store i64 %359, ptr %19, align 8, !tbaa !38
  %360 = load i32, ptr %3, align 4, !tbaa !75
  br label %361

361:                                              ; preds = %358, %338, %317
  %362 = phi i32 [ %318, %317 ], [ %318, %338 ], [ %360, %358 ]
  %363 = icmp ult i32 %362, 262
  %364 = and i1 %20, %363
  br i1 %364, label %.loopexit40, label %365

365:                                              ; preds = %361
  %366 = icmp eq i32 %362, 0
  br i1 %366, label %860, label %367

367:                                              ; preds = %365
  %368 = icmp ugt i32 %362, 2
  br i1 %368, label %369, label %569

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
  br i1 %399, label %569, label %400

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
  br i1 %412, label %569, label %413

413:                                              ; preds = %410
  %414 = zext i32 %371 to i64
  %415 = getelementptr inbounds nuw i8, ptr %377, i64 %414
  %416 = load i32, ptr %21, align 8, !tbaa !77
  %417 = tail call i32 @llvm.usub.sat.i32(i32 %371, i32 %411)
  %418 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %416, i32 -1)
  %419 = extractvalue { i32, i1 } %418, 1, !nosanitize !45
  br i1 %419, label %.loopexit39, label %420, !prof !46, !nosanitize !45

.loopexit39:                                      ; preds = %413, %.split.loop.exit, %450
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

420:                                              ; preds = %413
  %421 = load i32, ptr %22, align 8, !tbaa !70
  %422 = load i32, ptr %23, align 4, !tbaa !72
  %423 = getelementptr inbounds nuw i8, ptr %415, i64 258
  %424 = extractvalue { i32, i1 } %418, 0, !nosanitize !45
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8, ptr %415, i64 %425
  %427 = load i8, ptr %426, align 1, !tbaa !8
  %428 = sext i32 %416 to i64
  %429 = getelementptr inbounds i8, ptr %415, i64 %428
  %430 = load i8, ptr %429, align 1, !tbaa !8
  %431 = load i32, ptr %24, align 4, !tbaa !68
  %432 = icmp ult i32 %416, %431
  %433 = lshr i32 %422, 2
  %434 = select i1 %432, i32 %422, i32 %433
  %435 = tail call i32 @llvm.umin.i32(i32 %421, i32 %370)
  %436 = getelementptr inbounds nuw i8, ptr %415, i64 1
  %437 = ptrtoint ptr %423 to i64
  br label %438

438:                                              ; preds = %563, %420
  %439 = phi i32 [ %416, %420 ], [ %550, %563 ]
  %440 = phi i32 [ %434, %420 ], [ %564, %563 ]
  %441 = phi i32 [ %397, %420 ], [ %557, %563 ]
  %442 = phi i8 [ %427, %420 ], [ %551, %563 ]
  %443 = phi i8 [ %430, %420 ], [ %552, %563 ]
  %444 = zext nneg i32 %441 to i64
  %445 = getelementptr inbounds nuw i8, ptr %377, i64 %444
  %446 = sext i32 %439 to i64
  %447 = getelementptr inbounds i8, ptr %445, i64 %446
  %448 = load i8, ptr %447, align 1, !tbaa !8
  %449 = icmp eq i8 %448, %443
  br i1 %449, label %450, label %549

450:                                              ; preds = %438
  %451 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %439, i32 -1)
  %452 = extractvalue { i32, i1 } %451, 1, !nosanitize !45
  br i1 %452, label %.loopexit39, label %453, !prof !46, !nosanitize !45

453:                                              ; preds = %450
  %454 = extractvalue { i32, i1 } %451, 0, !nosanitize !45
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i8, ptr %445, i64 %455
  %457 = load i8, ptr %456, align 1, !tbaa !8
  %458 = icmp eq i8 %457, %442
  br i1 %458, label %459, label %549

459:                                              ; preds = %453
  %460 = load i8, ptr %445, align 1, !tbaa !8
  %461 = load i8, ptr %415, align 1, !tbaa !8
  %462 = icmp eq i8 %460, %461
  br i1 %462, label %463, label %549

463:                                              ; preds = %459
  %464 = getelementptr inbounds nuw i8, ptr %445, i64 1
  %465 = load i8, ptr %464, align 1, !tbaa !8
  %466 = load i8, ptr %436, align 1, !tbaa !8
  %467 = icmp eq i8 %465, %466
  br i1 %467, label %468, label %549

468:                                              ; preds = %463
  %469 = getelementptr inbounds nuw i8, ptr %445, i64 2
  br label %470

470:                                              ; preds = %515, %468
  %471 = phi ptr [ %469, %468 ], [ %519, %515 ]
  %472 = phi i64 [ 2, %468 ], [ %516, %515 ]
  %473 = getelementptr inbounds nuw i8, ptr %415, i64 %472
  %474 = getelementptr inbounds nuw i8, ptr %473, i64 1
  %475 = load i8, ptr %474, align 1, !tbaa !8
  %476 = getelementptr inbounds nuw i8, ptr %471, i64 1
  %477 = load i8, ptr %476, align 1, !tbaa !8
  %478 = icmp eq i8 %475, %477
  br i1 %478, label %479, label %.split.loop.exit.split.loop.exit

479:                                              ; preds = %470
  %480 = getelementptr inbounds nuw i8, ptr %473, i64 2
  %481 = load i8, ptr %480, align 1, !tbaa !8
  %482 = getelementptr inbounds nuw i8, ptr %471, i64 2
  %483 = load i8, ptr %482, align 1, !tbaa !8
  %484 = icmp eq i8 %481, %483
  br i1 %484, label %485, label %.split.loop.exit.split.loop.exit162

485:                                              ; preds = %479
  %486 = getelementptr inbounds nuw i8, ptr %473, i64 3
  %487 = load i8, ptr %486, align 1, !tbaa !8
  %488 = getelementptr inbounds nuw i8, ptr %471, i64 3
  %489 = load i8, ptr %488, align 1, !tbaa !8
  %490 = icmp eq i8 %487, %489
  br i1 %490, label %491, label %.split.loop.exit.split.loop.exit164

491:                                              ; preds = %485
  %492 = getelementptr inbounds nuw i8, ptr %473, i64 4
  %493 = load i8, ptr %492, align 1, !tbaa !8
  %494 = getelementptr inbounds nuw i8, ptr %471, i64 4
  %495 = load i8, ptr %494, align 1, !tbaa !8
  %496 = icmp eq i8 %493, %495
  br i1 %496, label %497, label %.split.loop.exit.split.loop.exit166

497:                                              ; preds = %491
  %498 = getelementptr inbounds nuw i8, ptr %473, i64 5
  %499 = load i8, ptr %498, align 1, !tbaa !8
  %500 = getelementptr inbounds nuw i8, ptr %471, i64 5
  %501 = load i8, ptr %500, align 1, !tbaa !8
  %502 = icmp eq i8 %499, %501
  br i1 %502, label %503, label %.split.loop.exit.split.loop.exit168

503:                                              ; preds = %497
  %504 = getelementptr inbounds nuw i8, ptr %473, i64 6
  %505 = load i8, ptr %504, align 1, !tbaa !8
  %506 = getelementptr inbounds nuw i8, ptr %471, i64 6
  %507 = load i8, ptr %506, align 1, !tbaa !8
  %508 = icmp eq i8 %505, %507
  br i1 %508, label %509, label %.split.loop.exit.split.loop.exit170

509:                                              ; preds = %503
  %510 = getelementptr inbounds nuw i8, ptr %473, i64 7
  %511 = load i8, ptr %510, align 1, !tbaa !8
  %512 = getelementptr inbounds nuw i8, ptr %471, i64 7
  %513 = load i8, ptr %512, align 1, !tbaa !8
  %514 = icmp eq i8 %511, %513
  br i1 %514, label %515, label %.split.loop.exit.split.loop.exit172

515:                                              ; preds = %509
  %516 = add nuw nsw i64 %472, 8
  %517 = getelementptr inbounds nuw i8, ptr %415, i64 %516
  %518 = load i8, ptr %517, align 1, !tbaa !8
  %519 = getelementptr inbounds nuw i8, ptr %471, i64 8
  %520 = load i8, ptr %519, align 1, !tbaa !8
  %521 = icmp eq i8 %518, %520
  %522 = icmp samesign ult i64 %472, 250
  %523 = select i1 %521, i1 %522, i1 false
  br i1 %523, label %470, label %.split.loop.exit.split.loop.exit174, !llvm.loop !152

.split.loop.exit.split.loop.exit:                 ; preds = %470
  %524 = getelementptr inbounds nuw i8, ptr %473, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit162:              ; preds = %479
  %525 = getelementptr inbounds nuw i8, ptr %473, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit164:              ; preds = %485
  %526 = getelementptr inbounds nuw i8, ptr %473, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit166:              ; preds = %491
  %527 = getelementptr inbounds nuw i8, ptr %473, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit168:              ; preds = %497
  %528 = getelementptr inbounds nuw i8, ptr %473, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit170:              ; preds = %503
  %529 = getelementptr inbounds nuw i8, ptr %473, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit172:              ; preds = %509
  %530 = getelementptr inbounds nuw i8, ptr %473, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit174:              ; preds = %515
  %531 = getelementptr inbounds nuw i8, ptr %415, i64 %516
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit174, %.split.loop.exit.split.loop.exit172, %.split.loop.exit.split.loop.exit170, %.split.loop.exit.split.loop.exit168, %.split.loop.exit.split.loop.exit166, %.split.loop.exit.split.loop.exit164, %.split.loop.exit.split.loop.exit162, %.split.loop.exit.split.loop.exit
  %532 = phi ptr [ %525, %.split.loop.exit.split.loop.exit162 ], [ %526, %.split.loop.exit.split.loop.exit164 ], [ %524, %.split.loop.exit.split.loop.exit ], [ %530, %.split.loop.exit.split.loop.exit172 ], [ %529, %.split.loop.exit.split.loop.exit170 ], [ %528, %.split.loop.exit.split.loop.exit168 ], [ %527, %.split.loop.exit.split.loop.exit166 ], [ %531, %.split.loop.exit.split.loop.exit174 ]
  %533 = ptrtoint ptr %532 to i64
  %534 = sub i64 %437, %533
  %535 = trunc i64 %534 to i32
  %536 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %535), !nosanitize !45
  %537 = extractvalue { i32, i1 } %536, 0, !nosanitize !45
  %538 = extractvalue { i32, i1 } %536, 1, !nosanitize !45
  br i1 %538, label %.loopexit39, label %539, !prof !46, !nosanitize !45

539:                                              ; preds = %.split.loop.exit
  %540 = icmp sgt i32 %537, %439
  br i1 %540, label %541, label %549

541:                                              ; preds = %539
  store i32 %441, ptr %8, align 8, !tbaa !83
  %542 = icmp slt i32 %537, %435
  br i1 %542, label %543, label %566

543:                                              ; preds = %541
  %544 = sext i32 %537 to i64
  %545 = getelementptr i8, ptr %415, i64 %544
  %546 = getelementptr i8, ptr %545, i64 -1
  %547 = load i8, ptr %546, align 1, !tbaa !8
  %548 = load i8, ptr %545, align 1, !tbaa !8
  br label %549

549:                                              ; preds = %543, %539, %463, %459, %453, %438
  %550 = phi i32 [ %439, %438 ], [ %439, %453 ], [ %439, %459 ], [ %439, %463 ], [ %537, %543 ], [ %439, %539 ]
  %551 = phi i8 [ %442, %438 ], [ %442, %453 ], [ %442, %459 ], [ %442, %463 ], [ %547, %543 ], [ %442, %539 ]
  %552 = phi i8 [ %443, %438 ], [ %443, %453 ], [ %443, %459 ], [ %443, %463 ], [ %548, %543 ], [ %443, %539 ]
  %553 = and i32 %441, %393
  %554 = zext nneg i32 %553 to i64
  %555 = getelementptr inbounds nuw [2 x i8], ptr %392, i64 %554
  %556 = load i16, ptr %555, align 2, !tbaa !62
  %557 = zext i16 %556 to i32
  %558 = icmp ult i32 %417, %557
  br i1 %558, label %559, label %566

559:                                              ; preds = %549
  %560 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %440, i32 1), !nosanitize !45
  %561 = extractvalue { i32, i1 } %560, 1, !nosanitize !45
  br i1 %561, label %562, label %563, !prof !46, !nosanitize !45

562:                                              ; preds = %559
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

563:                                              ; preds = %559
  %564 = extractvalue { i32, i1 } %560, 0, !nosanitize !45
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %438, !llvm.loop !153

566:                                              ; preds = %563, %549, %541
  %567 = phi i32 [ %550, %563 ], [ %550, %549 ], [ %537, %541 ]
  %568 = tail call i32 @llvm.umin.i32(i32 %567, i32 %370)
  store i32 %568, ptr %25, align 8, !tbaa !78
  br label %571

569:                                              ; preds = %410, %375, %367
  %570 = load i32, ptr %25, align 8, !tbaa !78
  br label %571

571:                                              ; preds = %569, %566
  %572 = phi i32 [ %570, %569 ], [ %568, %566 ]
  %573 = icmp ugt i32 %572, 2
  br i1 %573, label %574, label %733

574:                                              ; preds = %571
  %575 = trunc i32 %572 to i8
  %576 = add i8 %575, -3
  %577 = load i32, ptr %6, align 4, !tbaa !73
  %578 = load i32, ptr %8, align 8, !tbaa !83
  %579 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %577, i32 %578), !nosanitize !45
  %580 = extractvalue { i32, i1 } %579, 1, !nosanitize !45
  br i1 %580, label %581, label %582, !prof !46, !nosanitize !45

581:                                              ; preds = %574
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

582:                                              ; preds = %574
  %583 = extractvalue { i32, i1 } %579, 0, !nosanitize !45
  %584 = trunc i32 %583 to i16
  %585 = load i32, ptr %27, align 4, !tbaa !139
  %586 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %585, i32 1), !nosanitize !45
  %587 = extractvalue { i32, i1 } %586, 1, !nosanitize !45
  br i1 %587, label %588, label %589, !prof !46, !nosanitize !45

588:                                              ; preds = %582
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

589:                                              ; preds = %582
  %590 = extractvalue { i32, i1 } %586, 0, !nosanitize !45
  %591 = load ptr, ptr %26, align 8, !tbaa !44
  %592 = trunc i32 %583 to i8
  store i32 %590, ptr %27, align 4, !tbaa !139
  %593 = zext i32 %585 to i64
  %594 = getelementptr inbounds nuw i8, ptr %591, i64 %593
  store i8 %592, ptr %594, align 1, !tbaa !8
  %595 = load i32, ptr %27, align 4, !tbaa !139
  %596 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %595, i32 1), !nosanitize !45
  %597 = extractvalue { i32, i1 } %596, 1, !nosanitize !45
  br i1 %597, label %598, label %599, !prof !46, !nosanitize !45

598:                                              ; preds = %589
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

599:                                              ; preds = %589
  %600 = extractvalue { i32, i1 } %596, 0, !nosanitize !45
  %601 = load ptr, ptr %26, align 8, !tbaa !44
  %602 = lshr i32 %583, 8
  %603 = trunc i32 %602 to i8
  store i32 %600, ptr %27, align 4, !tbaa !139
  %604 = zext i32 %595 to i64
  %605 = getelementptr inbounds nuw i8, ptr %601, i64 %604
  store i8 %603, ptr %605, align 1, !tbaa !8
  %606 = load i32, ptr %27, align 4, !tbaa !139
  %607 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %606, i32 1), !nosanitize !45
  %608 = extractvalue { i32, i1 } %607, 1, !nosanitize !45
  br i1 %608, label %609, label %610, !prof !46, !nosanitize !45

609:                                              ; preds = %599
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

610:                                              ; preds = %599
  %611 = extractvalue { i32, i1 } %607, 0, !nosanitize !45
  %612 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %611, ptr %27, align 4, !tbaa !139
  %613 = zext i32 %606 to i64
  %614 = getelementptr inbounds nuw i8, ptr %612, i64 %613
  store i8 %576, ptr %614, align 1, !tbaa !8
  %615 = add i16 %584, -1
  %616 = zext i8 %576 to i64
  %617 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %616
  %618 = load i8, ptr %617, align 1, !tbaa !8
  %619 = zext i8 %618 to i64
  %620 = getelementptr [4 x i8], ptr %30, i64 %619
  %621 = load i16, ptr %620, align 4, !tbaa !8
  %622 = add i16 %621, 1
  store i16 %622, ptr %620, align 4, !tbaa !8
  %623 = icmp ult i16 %615, 256
  br i1 %623, label %624, label %627

624:                                              ; preds = %610
  %625 = zext nneg i16 %615 to i64
  %626 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %625
  br label %632

627:                                              ; preds = %610
  %628 = lshr i16 %615, 7
  %629 = zext nneg i16 %628 to i64
  %630 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %629
  %631 = getelementptr inbounds nuw i8, ptr %630, i64 256
  br label %632

632:                                              ; preds = %627, %624
  %633 = phi ptr [ %626, %624 ], [ %631, %627 ]
  %634 = load i8, ptr %633, align 1, !tbaa !8
  %635 = zext i8 %634 to i64
  %636 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %635
  %637 = load i16, ptr %636, align 4, !tbaa !8
  %638 = add i16 %637, 1
  store i16 %638, ptr %636, align 4, !tbaa !8
  %639 = load i32, ptr %27, align 4, !tbaa !139
  %640 = load i32, ptr %29, align 8, !tbaa !47
  %641 = icmp eq i32 %639, %640
  %642 = load i32, ptr %25, align 8, !tbaa !78
  %643 = load i32, ptr %3, align 4, !tbaa !75
  %644 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %643, i32 %642), !nosanitize !45
  %645 = extractvalue { i32, i1 } %644, 1, !nosanitize !45
  br i1 %645, label %646, label %647, !prof !46, !nosanitize !45

646:                                              ; preds = %632
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

647:                                              ; preds = %632
  %648 = extractvalue { i32, i1 } %644, 0, !nosanitize !45
  store i32 %648, ptr %3, align 4, !tbaa !75
  %649 = load i32, ptr %32, align 8, !tbaa !66
  %650 = icmp ule i32 %642, %649
  %651 = icmp ugt i32 %648, 2
  %652 = select i1 %650, i1 %651, i1 false
  br i1 %652, label %653, label %718

653:                                              ; preds = %647
  %654 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %642, i32 1), !nosanitize !45
  %655 = extractvalue { i32, i1 } %654, 1, !nosanitize !45
  br i1 %655, label %656, label %657, !prof !46, !nosanitize !45

656:                                              ; preds = %653
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

657:                                              ; preds = %653
  %658 = extractvalue { i32, i1 } %654, 0, !nosanitize !45
  store i32 %658, ptr %25, align 8, !tbaa !78
  %659 = load i32, ptr %6, align 4, !tbaa !73
  %660 = xor i32 %659, -1
  %661 = add i32 %642, -2
  %umin = tail call i32 @llvm.umin.i32(i32 %658, i32 %661)
  %662 = freeze i32 %umin
  %663 = add i32 %659, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %663, i32 -2)
  %664 = xor i32 %659, -1
  %665 = add i32 %umax, %664
  %umin91 = tail call i32 @llvm.umin.i32(i32 %665, i32 %660)
  %umin92 = tail call i32 @llvm.umin.i32(i32 %662, i32 %umin91)
  %666 = icmp eq i32 %umin92, %660
  %667 = icmp eq i32 %658, %umin92
  br i1 %666, label %715, label %.split, !prof !46, !nosanitize !45

.split:                                           ; preds = %657
  %668 = icmp eq i32 %665, %umin92
  br i1 %668, label %.split.split.us, label %.split.split, !prof !46, !nosanitize !45

.split.split.us:                                  ; preds = %.split
  %669 = add i32 %659, 1
  store i32 %669, ptr %6, align 4, !tbaa !73
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

.split.split:                                     ; preds = %.split
  br i1 %667, label %.split.split.split.us, label %.split.split.split, !prof !46, !nosanitize !45

.split.split.split.us:                            ; preds = %.split.split
  %670 = add i32 %659, 1
  store i32 %670, ptr %6, align 4, !tbaa !73
  %671 = add i32 %659, 3
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
  %689 = and i32 %688, %670
  %690 = zext i32 %689 to i64
  %691 = getelementptr inbounds nuw [2 x i8], ptr %687, i64 %690
  store i16 %686, ptr %691, align 2, !tbaa !62
  %692 = trunc i32 %670 to i16
  store i16 %692, ptr %685, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

.split.split.split:                               ; preds = %.split.split
  %.pre = load ptr, ptr %7, align 8, !tbaa !34
  %.pre109 = load i32, ptr %15, align 8, !tbaa !80
  %.pre110 = load i32, ptr %16, align 8, !tbaa !53
  %.pre111 = load i32, ptr %17, align 4, !tbaa !52
  %.pre112 = load ptr, ptr %12, align 8, !tbaa !37
  %.pre113 = load ptr, ptr %13, align 8, !tbaa !35
  %.pre114 = load i32, ptr %18, align 8, !tbaa !33
  br label %693

693:                                              ; preds = %693, %.split.split.split
  %694 = phi i32 [ %705, %693 ], [ %.pre109, %.split.split.split ]
  %695 = phi i32 [ %713, %693 ], [ %658, %.split.split.split ]
  %696 = phi i32 [ %697, %693 ], [ %659, %.split.split.split ]
  %697 = add i32 %696, 1
  store i32 %697, ptr %6, align 4, !tbaa !73
  %698 = add i32 %696, 3
  %699 = shl i32 %694, %.pre110
  %700 = zext i32 %698 to i64
  %701 = getelementptr inbounds nuw i8, ptr %.pre, i64 %700
  %702 = load i8, ptr %701, align 1, !tbaa !8
  %703 = zext i8 %702 to i32
  %704 = xor i32 %699, %703
  %705 = and i32 %704, %.pre111
  store i32 %705, ptr %15, align 8, !tbaa !80
  %706 = zext i32 %705 to i64
  %707 = getelementptr inbounds nuw [2 x i8], ptr %.pre112, i64 %706
  %708 = load i16, ptr %707, align 2, !tbaa !62
  %709 = and i32 %.pre114, %697
  %710 = zext i32 %709 to i64
  %711 = getelementptr inbounds nuw [2 x i8], ptr %.pre113, i64 %710
  store i16 %708, ptr %711, align 2, !tbaa !62
  %712 = trunc i32 %697 to i16
  store i16 %712, ptr %707, align 2, !tbaa !62
  %713 = add i32 %695, -1
  store i32 %713, ptr %25, align 8, !tbaa !78
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %716, label %693, !llvm.loop !154

715:                                              ; preds = %657
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

716:                                              ; preds = %693
  %717 = add i32 %696, 2
  store i32 %717, ptr %6, align 4, !tbaa !73
  br i1 %641, label %795, label %.backedge

718:                                              ; preds = %647
  %719 = load i32, ptr %6, align 4, !tbaa !73
  %720 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %719, i32 %642), !nosanitize !45
  %721 = extractvalue { i32, i1 } %720, 1, !nosanitize !45
  br i1 %721, label %722, label %723, !prof !46, !nosanitize !45

722:                                              ; preds = %718
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

723:                                              ; preds = %718
  %724 = extractvalue { i32, i1 } %720, 0, !nosanitize !45
  store i32 %724, ptr %6, align 4, !tbaa !73
  store i32 0, ptr %25, align 8, !tbaa !78
  %725 = load ptr, ptr %7, align 8, !tbaa !34
  %726 = zext i32 %724 to i64
  %727 = getelementptr inbounds nuw i8, ptr %725, i64 %726
  %728 = load i8, ptr %727, align 1, !tbaa !8
  %729 = zext i8 %728 to i32
  store i32 %729, ptr %15, align 8, !tbaa !80
  %730 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %724, i32 1), !nosanitize !45
  %731 = extractvalue { i32, i1 } %730, 1, !nosanitize !45
  br i1 %731, label %732, label %784, !prof !46, !nosanitize !45

732:                                              ; preds = %723
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

733:                                              ; preds = %571
  %734 = load ptr, ptr %7, align 8, !tbaa !34
  %735 = load i32, ptr %6, align 4, !tbaa !73
  %736 = zext i32 %735 to i64
  %737 = getelementptr inbounds nuw i8, ptr %734, i64 %736
  %738 = load i8, ptr %737, align 1, !tbaa !8
  %739 = load i32, ptr %27, align 4, !tbaa !139
  %740 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %739, i32 1), !nosanitize !45
  %741 = extractvalue { i32, i1 } %740, 1, !nosanitize !45
  br i1 %741, label %742, label %743, !prof !46, !nosanitize !45

742:                                              ; preds = %733
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

743:                                              ; preds = %733
  %744 = extractvalue { i32, i1 } %740, 0, !nosanitize !45
  %745 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %744, ptr %27, align 4, !tbaa !139
  %746 = zext i32 %739 to i64
  %747 = getelementptr inbounds nuw i8, ptr %745, i64 %746
  store i8 0, ptr %747, align 1, !tbaa !8
  %748 = load i32, ptr %27, align 4, !tbaa !139
  %749 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %748, i32 1), !nosanitize !45
  %750 = extractvalue { i32, i1 } %749, 1, !nosanitize !45
  br i1 %750, label %751, label %752, !prof !46, !nosanitize !45

751:                                              ; preds = %743
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

752:                                              ; preds = %743
  %753 = extractvalue { i32, i1 } %749, 0, !nosanitize !45
  %754 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %753, ptr %27, align 4, !tbaa !139
  %755 = zext i32 %748 to i64
  %756 = getelementptr inbounds nuw i8, ptr %754, i64 %755
  store i8 0, ptr %756, align 1, !tbaa !8
  %757 = load i32, ptr %27, align 4, !tbaa !139
  %758 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %757, i32 1), !nosanitize !45
  %759 = extractvalue { i32, i1 } %758, 1, !nosanitize !45
  br i1 %759, label %760, label %761, !prof !46, !nosanitize !45

760:                                              ; preds = %752
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

761:                                              ; preds = %752
  %762 = extractvalue { i32, i1 } %758, 0, !nosanitize !45
  %763 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %762, ptr %27, align 4, !tbaa !139
  %764 = zext i32 %757 to i64
  %765 = getelementptr inbounds nuw i8, ptr %763, i64 %764
  store i8 %738, ptr %765, align 1, !tbaa !8
  %766 = zext i8 %738 to i64
  %767 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %766
  %768 = load i16, ptr %767, align 4, !tbaa !8
  %769 = add i16 %768, 1
  store i16 %769, ptr %767, align 4, !tbaa !8
  %770 = load i32, ptr %27, align 4, !tbaa !139
  %771 = load i32, ptr %29, align 8, !tbaa !47
  %772 = icmp eq i32 %770, %771
  %773 = load i32, ptr %3, align 4, !tbaa !75
  %774 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %773, i32 1), !nosanitize !45
  %775 = extractvalue { i32, i1 } %774, 1, !nosanitize !45
  br i1 %775, label %.loopexit42, label %776, !prof !46, !nosanitize !45

.loopexit42:                                      ; preds = %803, %761, %939, %871
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

776:                                              ; preds = %761
  %777 = extractvalue { i32, i1 } %774, 0, !nosanitize !45
  store i32 %777, ptr %3, align 4, !tbaa !75
  %778 = load i32, ptr %6, align 4, !tbaa !73
  %779 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %778, i32 1), !nosanitize !45
  %780 = extractvalue { i32, i1 } %779, 1, !nosanitize !45
  br i1 %780, label %781, label %782, !prof !46, !nosanitize !45

781:                                              ; preds = %776
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

782:                                              ; preds = %776
  %783 = extractvalue { i32, i1 } %779, 0, !nosanitize !45
  store i32 %783, ptr %6, align 4, !tbaa !73
  br i1 %772, label %795, label %.backedge

784:                                              ; preds = %723
  %785 = extractvalue { i32, i1 } %730, 0, !nosanitize !45
  %786 = load i32, ptr %16, align 8, !tbaa !53
  %787 = shl i32 %729, %786
  %788 = zext i32 %785 to i64
  %789 = getelementptr inbounds nuw i8, ptr %725, i64 %788
  %790 = load i8, ptr %789, align 1, !tbaa !8
  %791 = zext i8 %790 to i32
  %792 = xor i32 %787, %791
  %793 = load i32, ptr %17, align 4, !tbaa !52
  %794 = and i32 %792, %793
  store i32 %794, ptr %15, align 8, !tbaa !80
  br i1 %641, label %795, label %.backedge

795:                                              ; preds = %784, %782, %716
  %796 = phi i32 [ %783, %782 ], [ %717, %716 ], [ %724, %784 ]
  %797 = load i64, ptr %9, align 8, !tbaa !74
  %798 = icmp sgt i64 %797, -1
  br i1 %798, label %799, label %803

799:                                              ; preds = %795
  %800 = load ptr, ptr %7, align 8, !tbaa !34
  %801 = and i64 %797, 4294967295
  %802 = getelementptr inbounds nuw i8, ptr %800, i64 %801
  br label %803

803:                                              ; preds = %799, %795
  %804 = phi ptr [ %802, %799 ], [ null, %795 ]
  %805 = zext i32 %796 to i64
  %806 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %805, i64 %797), !nosanitize !45
  %807 = extractvalue { i64, i1 } %806, 1, !nosanitize !45
  br i1 %807, label %.loopexit42, label %808, !prof !46, !nosanitize !45

808:                                              ; preds = %803
  %809 = extractvalue { i64, i1 } %806, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %804, i64 noundef %809, i32 noundef 0) #11
  %810 = load i32, ptr %6, align 4, !tbaa !73
  %811 = zext i32 %810 to i64
  store i64 %811, ptr %9, align 8, !tbaa !74
  %812 = load ptr, ptr %0, align 8, !tbaa !20
  %813 = getelementptr inbounds nuw i8, ptr %812, i64 56
  %814 = load ptr, ptr %813, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %814) #11
  %815 = getelementptr inbounds nuw i8, ptr %814, i64 40
  %816 = load i64, ptr %815, align 8, !tbaa !57
  %817 = getelementptr inbounds nuw i8, ptr %812, i64 32
  %818 = load i32, ptr %817, align 8, !tbaa !107
  %819 = zext i32 %818 to i64
  %820 = tail call i64 @llvm.umin.i64(i64 %816, i64 %819)
  %821 = trunc nuw i64 %820 to i32
  %822 = icmp eq i64 %820, 0
  br i1 %822, label %855, label %823

823:                                              ; preds = %808
  %824 = getelementptr inbounds nuw i8, ptr %812, i64 24
  %825 = load ptr, ptr %824, align 8, !tbaa !106
  %826 = getelementptr inbounds nuw i8, ptr %814, i64 32
  %827 = load ptr, ptr %826, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %825, ptr align 1 %827, i64 %820, i1 false)
  %828 = load ptr, ptr %824, align 8, !tbaa !106
  %829 = getelementptr inbounds nuw i8, ptr %828, i64 %820
  store ptr %829, ptr %824, align 8, !tbaa !106
  %830 = load ptr, ptr %826, align 8, !tbaa !58
  %831 = getelementptr inbounds nuw i8, ptr %830, i64 %820
  store ptr %831, ptr %826, align 8, !tbaa !58
  %832 = getelementptr inbounds nuw i8, ptr %812, i64 40
  %833 = load i64, ptr %832, align 8, !tbaa !108
  %834 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %833, i64 %820), !nosanitize !45
  %835 = extractvalue { i64, i1 } %834, 1, !nosanitize !45
  br i1 %835, label %836, label %837, !prof !46, !nosanitize !45

836:                                              ; preds = %823
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

837:                                              ; preds = %823
  %838 = extractvalue { i64, i1 } %834, 0, !nosanitize !45
  store i64 %838, ptr %832, align 8, !tbaa !108
  %839 = load i32, ptr %817, align 8, !tbaa !107
  %840 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %839, i32 %821), !nosanitize !45
  %841 = extractvalue { i32, i1 } %840, 1, !nosanitize !45
  br i1 %841, label %842, label %843, !prof !46, !nosanitize !45

842:                                              ; preds = %837
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

843:                                              ; preds = %837
  %844 = extractvalue { i32, i1 } %840, 0, !nosanitize !45
  store i32 %844, ptr %817, align 8, !tbaa !107
  %845 = load i64, ptr %815, align 8, !tbaa !57
  %846 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %845, i64 %820), !nosanitize !45
  %847 = extractvalue { i64, i1 } %846, 1, !nosanitize !45
  br i1 %847, label %848, label %849, !prof !46, !nosanitize !45

848:                                              ; preds = %843
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

849:                                              ; preds = %843
  %850 = extractvalue { i64, i1 } %846, 0, !nosanitize !45
  store i64 %850, ptr %815, align 8, !tbaa !57
  %851 = icmp eq i64 %850, 0
  br i1 %851, label %852, label %855

852:                                              ; preds = %849
  %853 = getelementptr inbounds nuw i8, ptr %814, i64 16
  %854 = load ptr, ptr %853, align 8, !tbaa !40
  store ptr %854, ptr %826, align 8, !tbaa !58
  br label %855

855:                                              ; preds = %852, %849, %808
  %856 = load ptr, ptr %0, align 8, !tbaa !20
  %857 = getelementptr inbounds nuw i8, ptr %856, i64 32
  %858 = load i32, ptr %857, align 8, !tbaa !107
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %.loopexit40, label %.backedge

.backedge:                                        ; preds = %855, %784, %782, %716
  br label %33

860:                                              ; preds = %365
  %861 = load i32, ptr %6, align 4, !tbaa !73
  %862 = tail call i32 @llvm.umin.i32(i32 %861, i32 2)
  store i32 %862, ptr %10, align 4, !tbaa !76
  %863 = icmp eq i32 %1, 4
  br i1 %863, label %864, label %929

864:                                              ; preds = %860
  %865 = load i64, ptr %9, align 8, !tbaa !74
  %866 = icmp sgt i64 %865, -1
  br i1 %866, label %867, label %871

867:                                              ; preds = %864
  %868 = load ptr, ptr %7, align 8, !tbaa !34
  %869 = and i64 %865, 4294967295
  %870 = getelementptr inbounds nuw i8, ptr %868, i64 %869
  br label %871

871:                                              ; preds = %867, %864
  %872 = phi ptr [ %870, %867 ], [ null, %864 ]
  %873 = zext i32 %861 to i64
  %874 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %873, i64 %865), !nosanitize !45
  %875 = extractvalue { i64, i1 } %874, 1, !nosanitize !45
  br i1 %875, label %.loopexit42, label %876, !prof !46, !nosanitize !45

876:                                              ; preds = %871
  %877 = extractvalue { i64, i1 } %874, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %872, i64 noundef %877, i32 noundef 1) #11
  %878 = load i32, ptr %6, align 4, !tbaa !73
  %879 = zext i32 %878 to i64
  store i64 %879, ptr %9, align 8, !tbaa !74
  %880 = load ptr, ptr %0, align 8, !tbaa !20
  %881 = getelementptr inbounds nuw i8, ptr %880, i64 56
  %882 = load ptr, ptr %881, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %882) #11
  %883 = getelementptr inbounds nuw i8, ptr %882, i64 40
  %884 = load i64, ptr %883, align 8, !tbaa !57
  %885 = getelementptr inbounds nuw i8, ptr %880, i64 32
  %886 = load i32, ptr %885, align 8, !tbaa !107
  %887 = zext i32 %886 to i64
  %888 = tail call i64 @llvm.umin.i64(i64 %884, i64 %887)
  %889 = trunc nuw i64 %888 to i32
  %890 = icmp eq i64 %888, 0
  br i1 %890, label %923, label %891

891:                                              ; preds = %876
  %892 = getelementptr inbounds nuw i8, ptr %880, i64 24
  %893 = load ptr, ptr %892, align 8, !tbaa !106
  %894 = getelementptr inbounds nuw i8, ptr %882, i64 32
  %895 = load ptr, ptr %894, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %893, ptr align 1 %895, i64 %888, i1 false)
  %896 = load ptr, ptr %892, align 8, !tbaa !106
  %897 = getelementptr inbounds nuw i8, ptr %896, i64 %888
  store ptr %897, ptr %892, align 8, !tbaa !106
  %898 = load ptr, ptr %894, align 8, !tbaa !58
  %899 = getelementptr inbounds nuw i8, ptr %898, i64 %888
  store ptr %899, ptr %894, align 8, !tbaa !58
  %900 = getelementptr inbounds nuw i8, ptr %880, i64 40
  %901 = load i64, ptr %900, align 8, !tbaa !108
  %902 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %901, i64 %888), !nosanitize !45
  %903 = extractvalue { i64, i1 } %902, 1, !nosanitize !45
  br i1 %903, label %904, label %905, !prof !46, !nosanitize !45

904:                                              ; preds = %891
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

905:                                              ; preds = %891
  %906 = extractvalue { i64, i1 } %902, 0, !nosanitize !45
  store i64 %906, ptr %900, align 8, !tbaa !108
  %907 = load i32, ptr %885, align 8, !tbaa !107
  %908 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %907, i32 %889), !nosanitize !45
  %909 = extractvalue { i32, i1 } %908, 1, !nosanitize !45
  br i1 %909, label %910, label %911, !prof !46, !nosanitize !45

910:                                              ; preds = %905
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

911:                                              ; preds = %905
  %912 = extractvalue { i32, i1 } %908, 0, !nosanitize !45
  store i32 %912, ptr %885, align 8, !tbaa !107
  %913 = load i64, ptr %883, align 8, !tbaa !57
  %914 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %913, i64 %888), !nosanitize !45
  %915 = extractvalue { i64, i1 } %914, 1, !nosanitize !45
  br i1 %915, label %916, label %917, !prof !46, !nosanitize !45

916:                                              ; preds = %911
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

917:                                              ; preds = %911
  %918 = extractvalue { i64, i1 } %914, 0, !nosanitize !45
  store i64 %918, ptr %883, align 8, !tbaa !57
  %919 = icmp eq i64 %918, 0
  br i1 %919, label %920, label %923

920:                                              ; preds = %917
  %921 = getelementptr inbounds nuw i8, ptr %882, i64 16
  %922 = load ptr, ptr %921, align 8, !tbaa !40
  store ptr %922, ptr %894, align 8, !tbaa !58
  br label %923

923:                                              ; preds = %920, %917, %876
  %924 = load ptr, ptr %0, align 8, !tbaa !20
  %925 = getelementptr inbounds nuw i8, ptr %924, i64 32
  %926 = load i32, ptr %925, align 8, !tbaa !107
  %927 = icmp eq i32 %926, 0
  %928 = select i1 %927, i32 2, i32 3
  br label %.loopexit40

929:                                              ; preds = %860
  %930 = load i32, ptr %27, align 4, !tbaa !139
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %996, label %932

932:                                              ; preds = %929
  %933 = load i64, ptr %9, align 8, !tbaa !74
  %934 = icmp sgt i64 %933, -1
  br i1 %934, label %935, label %939

935:                                              ; preds = %932
  %936 = load ptr, ptr %7, align 8, !tbaa !34
  %937 = and i64 %933, 4294967295
  %938 = getelementptr inbounds nuw i8, ptr %936, i64 %937
  br label %939

939:                                              ; preds = %935, %932
  %940 = phi ptr [ %938, %935 ], [ null, %932 ]
  %941 = zext i32 %861 to i64
  %942 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %941, i64 %933), !nosanitize !45
  %943 = extractvalue { i64, i1 } %942, 1, !nosanitize !45
  br i1 %943, label %.loopexit42, label %944, !prof !46, !nosanitize !45

944:                                              ; preds = %939
  %945 = extractvalue { i64, i1 } %942, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %940, i64 noundef %945, i32 noundef 0) #11
  %946 = load i32, ptr %6, align 4, !tbaa !73
  %947 = zext i32 %946 to i64
  store i64 %947, ptr %9, align 8, !tbaa !74
  %948 = load ptr, ptr %0, align 8, !tbaa !20
  %949 = getelementptr inbounds nuw i8, ptr %948, i64 56
  %950 = load ptr, ptr %949, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %950) #11
  %951 = getelementptr inbounds nuw i8, ptr %950, i64 40
  %952 = load i64, ptr %951, align 8, !tbaa !57
  %953 = getelementptr inbounds nuw i8, ptr %948, i64 32
  %954 = load i32, ptr %953, align 8, !tbaa !107
  %955 = zext i32 %954 to i64
  %956 = tail call i64 @llvm.umin.i64(i64 %952, i64 %955)
  %957 = trunc nuw i64 %956 to i32
  %958 = icmp eq i64 %956, 0
  br i1 %958, label %991, label %959

959:                                              ; preds = %944
  %960 = getelementptr inbounds nuw i8, ptr %948, i64 24
  %961 = load ptr, ptr %960, align 8, !tbaa !106
  %962 = getelementptr inbounds nuw i8, ptr %950, i64 32
  %963 = load ptr, ptr %962, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %961, ptr align 1 %963, i64 %956, i1 false)
  %964 = load ptr, ptr %960, align 8, !tbaa !106
  %965 = getelementptr inbounds nuw i8, ptr %964, i64 %956
  store ptr %965, ptr %960, align 8, !tbaa !106
  %966 = load ptr, ptr %962, align 8, !tbaa !58
  %967 = getelementptr inbounds nuw i8, ptr %966, i64 %956
  store ptr %967, ptr %962, align 8, !tbaa !58
  %968 = getelementptr inbounds nuw i8, ptr %948, i64 40
  %969 = load i64, ptr %968, align 8, !tbaa !108
  %970 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %969, i64 %956), !nosanitize !45
  %971 = extractvalue { i64, i1 } %970, 1, !nosanitize !45
  br i1 %971, label %972, label %973, !prof !46, !nosanitize !45

972:                                              ; preds = %959
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

973:                                              ; preds = %959
  %974 = extractvalue { i64, i1 } %970, 0, !nosanitize !45
  store i64 %974, ptr %968, align 8, !tbaa !108
  %975 = load i32, ptr %953, align 8, !tbaa !107
  %976 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %975, i32 %957), !nosanitize !45
  %977 = extractvalue { i32, i1 } %976, 1, !nosanitize !45
  br i1 %977, label %978, label %979, !prof !46, !nosanitize !45

978:                                              ; preds = %973
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

979:                                              ; preds = %973
  %980 = extractvalue { i32, i1 } %976, 0, !nosanitize !45
  store i32 %980, ptr %953, align 8, !tbaa !107
  %981 = load i64, ptr %951, align 8, !tbaa !57
  %982 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %981, i64 %956), !nosanitize !45
  %983 = extractvalue { i64, i1 } %982, 1, !nosanitize !45
  br i1 %983, label %984, label %985, !prof !46, !nosanitize !45

984:                                              ; preds = %979
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

985:                                              ; preds = %979
  %986 = extractvalue { i64, i1 } %982, 0, !nosanitize !45
  store i64 %986, ptr %951, align 8, !tbaa !57
  %987 = icmp eq i64 %986, 0
  br i1 %987, label %988, label %991

988:                                              ; preds = %985
  %989 = getelementptr inbounds nuw i8, ptr %950, i64 16
  %990 = load ptr, ptr %989, align 8, !tbaa !40
  store ptr %990, ptr %962, align 8, !tbaa !58
  br label %991

991:                                              ; preds = %988, %985, %944
  %992 = load ptr, ptr %0, align 8, !tbaa !20
  %993 = getelementptr inbounds nuw i8, ptr %992, i64 32
  %994 = load i32, ptr %993, align 8, !tbaa !107
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %.loopexit40, label %996

996:                                              ; preds = %991, %929
  br label %.loopexit40

.loopexit40:                                      ; preds = %855, %361, %996, %991, %923
  %997 = phi i32 [ 1, %996 ], [ %928, %923 ], [ 0, %991 ], [ 0, %361 ], [ 0, %855 ]
  ret i32 %997
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
  br i1 %38, label %39, label %375

39:                                               ; preds = %36
  %40 = load i32, ptr %4, align 8, !tbaa !32
  %41 = zext i32 %40 to i64
  br label %42

42:                                               ; preds = %315, %39
  %43 = phi i32 [ %243, %315 ], [ %37, %39 ]
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
  br i1 %70, label %190, label %71

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

89:                                               ; preds = %90, %84
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

90:                                               ; preds = %84
  %91 = extractvalue { i32, i1 } %87, 0, !nosanitize !45
  store i32 %91, ptr %6, align 4, !tbaa !73
  %92 = load i64, ptr %9, align 8, !tbaa !74
  %93 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %92, i64 %41), !nosanitize !45
  %94 = extractvalue { i64, i1 } %93, 1, !nosanitize !45
  br i1 %94, label %89, label %95, !prof !46, !nosanitize !45

95:                                               ; preds = %90
  %96 = extractvalue { i64, i1 } %93, 0, !nosanitize !45
  store i64 %96, ptr %9, align 8, !tbaa !74
  %97 = load i32, ptr %10, align 4, !tbaa !76
  %98 = icmp ugt i32 %97, %91
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 %91, ptr %10, align 4, !tbaa !76
  br label %100

100:                                              ; preds = %99, %95
  %101 = load i32, ptr %4, align 8, !tbaa !32
  %102 = load i32, ptr %11, align 4, !tbaa !36
  %103 = load ptr, ptr %12, align 8, !tbaa !37
  %104 = zext i32 %102 to i64
  %105 = getelementptr inbounds nuw [2 x i8], ptr %103, i64 %104
  %106 = icmp eq i32 %102, 0
  br i1 %106, label %130, label %107, !prof !46, !nosanitize !45

107:                                              ; preds = %100
  %108 = icmp ult i32 %102, 8
  br i1 %108, label %.preheader197, label %109

.preheader197:                                    ; preds = %124, %107
  %.ph198 = phi ptr [ %126, %124 ], [ %105, %107 ]
  %.ph199 = phi i32 [ %128, %124 ], [ %102, %107 ]
  br label %136

109:                                              ; preds = %107
  %110 = and i64 %104, 4294967288
  %111 = insertelement <8 x i32> poison, i32 %101, i64 0
  %112 = shufflevector <8 x i32> %111, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %113

113:                                              ; preds = %113, %109
  %114 = phi i64 [ 0, %109 ], [ %122, %113 ]
  %115 = mul nsw i64 %114, -2
  %116 = getelementptr i8, ptr %105, i64 %115
  %117 = getelementptr inbounds i8, ptr %116, i64 -16
  %118 = load <8 x i16>, ptr %117, align 2, !tbaa !62
  %119 = zext <8 x i16> %118 to <8 x i32>
  %120 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %119, <8 x i32> %112)
  %121 = trunc nuw <8 x i32> %120 to <8 x i16>
  store <8 x i16> %121, ptr %117, align 2, !tbaa !62
  %122 = add nuw nsw i64 %114, 8
  %123 = icmp eq i64 %122, %110
  br i1 %123, label %124, label %113, !llvm.loop !155

124:                                              ; preds = %113
  %125 = mul nsw i64 %110, -2
  %126 = getelementptr i8, ptr %105, i64 %125
  %127 = trunc nuw i64 %110 to i32
  %128 = sub i32 %102, %127
  %129 = icmp eq i64 %110, %104
  br i1 %129, label %.loopexit44, label %.preheader197

130:                                              ; preds = %100
  %131 = getelementptr inbounds i8, ptr %105, i64 -2
  %132 = load i16, ptr %131, align 2, !tbaa !62
  %133 = zext i16 %132 to i32
  %134 = tail call i32 @llvm.usub.sat.i32(i32 %133, i32 %101)
  %135 = trunc nuw i32 %134 to i16
  store i16 %135, ptr %131, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

136:                                              ; preds = %.preheader197, %136
  %137 = phi ptr [ %139, %136 ], [ %.ph198, %.preheader197 ]
  %138 = phi i32 [ %144, %136 ], [ %.ph199, %.preheader197 ]
  %139 = getelementptr inbounds i8, ptr %137, i64 -2
  %140 = load i16, ptr %139, align 2, !tbaa !62
  %141 = zext i16 %140 to i32
  %142 = tail call i32 @llvm.usub.sat.i32(i32 %141, i32 %101)
  %143 = trunc nuw i32 %142 to i16
  store i16 %143, ptr %139, align 2, !tbaa !62
  %144 = add i32 %138, -1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %.loopexit44, label %136, !llvm.loop !156

.loopexit44:                                      ; preds = %136, %124
  %146 = icmp eq i32 %101, 0
  br i1 %146, label %147, label %148, !prof !46, !nosanitize !45

147:                                              ; preds = %.loopexit44
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

148:                                              ; preds = %.loopexit44
  %149 = load ptr, ptr %13, align 8, !tbaa !35
  %150 = zext i32 %101 to i64
  %151 = getelementptr inbounds nuw [2 x i8], ptr %149, i64 %150
  %152 = icmp ult i32 %101, 8
  br i1 %152, label %.preheader, label %153

153:                                              ; preds = %148
  %154 = and i64 %150, 4294967288
  %155 = insertelement <8 x i32> poison, i32 %101, i64 0
  %156 = shufflevector <8 x i32> %155, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %157

157:                                              ; preds = %157, %153
  %158 = phi i64 [ 0, %153 ], [ %166, %157 ]
  %159 = mul nsw i64 %158, -2
  %160 = getelementptr i8, ptr %151, i64 %159
  %161 = getelementptr inbounds i8, ptr %160, i64 -16
  %162 = load <8 x i16>, ptr %161, align 2, !tbaa !62
  %163 = zext <8 x i16> %162 to <8 x i32>
  %164 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %163, <8 x i32> %156)
  %165 = trunc nuw <8 x i32> %164 to <8 x i16>
  store <8 x i16> %165, ptr %161, align 2, !tbaa !62
  %166 = add nuw nsw i64 %158, 8
  %167 = icmp eq i64 %166, %154
  br i1 %167, label %168, label %157, !llvm.loop !157

168:                                              ; preds = %157
  %169 = mul nsw i64 %154, -2
  %170 = getelementptr i8, ptr %151, i64 %169
  %171 = trunc nuw i64 %154 to i32
  %172 = sub i32 %101, %171
  %173 = icmp eq i64 %154, %150
  br i1 %173, label %.loopexit43, label %.preheader

.preheader:                                       ; preds = %168, %148
  %.ph = phi ptr [ %170, %168 ], [ %151, %148 ]
  %.ph196 = phi i32 [ %172, %168 ], [ %101, %148 ]
  br label %174

174:                                              ; preds = %.preheader, %174
  %175 = phi ptr [ %177, %174 ], [ %.ph, %.preheader ]
  %176 = phi i32 [ %182, %174 ], [ %.ph196, %.preheader ]
  %177 = getelementptr inbounds i8, ptr %175, i64 -2
  %178 = load i16, ptr %177, align 2, !tbaa !62
  %179 = zext i16 %178 to i32
  %180 = tail call i32 @llvm.usub.sat.i32(i32 %179, i32 %101)
  %181 = trunc nuw i32 %180 to i16
  store i16 %181, ptr %177, align 2, !tbaa !62
  %182 = add i32 %176, -1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %.loopexit43, label %174, !llvm.loop !158

.loopexit43:                                      ; preds = %174, %168
  store i32 1, ptr %14, align 8, !tbaa !63
  %184 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %58, i32 %40), !nosanitize !45
  %185 = extractvalue { i32, i1 } %184, 1, !nosanitize !45
  br i1 %185, label %186, label %187, !prof !46, !nosanitize !45

186:                                              ; preds = %.loopexit43
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

187:                                              ; preds = %.loopexit43
  %188 = extractvalue { i32, i1 } %184, 0, !nosanitize !45
  %189 = load i32, ptr %3, align 4, !tbaa !75
  br label %190

190:                                              ; preds = %187, %68
  %191 = phi i32 [ %189, %187 ], [ %43, %68 ]
  %192 = phi i32 [ %91, %187 ], [ %51, %68 ]
  %193 = phi i32 [ %188, %187 ], [ %58, %68 ]
  %194 = load ptr, ptr %0, align 8, !tbaa !20
  %195 = getelementptr inbounds nuw i8, ptr %194, i64 8
  %196 = load i32, ptr %195, align 8, !tbaa !81
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %320, label %198

198:                                              ; preds = %190
  %199 = load ptr, ptr %7, align 8, !tbaa !34
  %200 = zext i32 %192 to i64
  %201 = getelementptr inbounds nuw i8, ptr %199, i64 %200
  %202 = zext i32 %191 to i64
  %203 = getelementptr inbounds nuw i8, ptr %201, i64 %202
  %204 = tail call i32 @llvm.umin.i32(i32 %196, i32 %193)
  %205 = icmp eq i32 %193, 0
  br i1 %205, label %237, label %206

206:                                              ; preds = %198
  %207 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %196, i32 %204), !nosanitize !45
  %208 = extractvalue { i32, i1 } %207, 1, !nosanitize !45
  br i1 %208, label %209, label %210, !prof !46, !nosanitize !45

209:                                              ; preds = %206
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

210:                                              ; preds = %206
  %211 = extractvalue { i32, i1 } %207, 0, !nosanitize !45
  store i32 %211, ptr %195, align 8, !tbaa !81
  %212 = load ptr, ptr %194, align 8, !tbaa !82
  %213 = zext i32 %204 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %203, ptr align 1 %212, i64 %213, i1 false)
  %214 = getelementptr inbounds nuw i8, ptr %194, i64 56
  %215 = load ptr, ptr %214, align 8, !tbaa !19
  %216 = getelementptr inbounds nuw i8, ptr %215, i64 48
  %217 = load i32, ptr %216, align 8, !tbaa !30
  switch i32 %217, label %226 [
    i32 1, label %218
    i32 2, label %222
  ]

218:                                              ; preds = %210
  %219 = getelementptr inbounds nuw i8, ptr %194, i64 96
  %220 = load i64, ptr %219, align 8, !tbaa !59
  %221 = tail call i64 @adler32(i64 noundef %220, ptr noundef %203, i32 noundef %204) #11
  store i64 %221, ptr %219, align 8, !tbaa !59
  br label %226

222:                                              ; preds = %210
  %223 = getelementptr inbounds nuw i8, ptr %194, i64 96
  %224 = load i64, ptr %223, align 8, !tbaa !59
  %225 = tail call i64 @crc32(i64 noundef %224, ptr noundef %203, i32 noundef %204) #11
  store i64 %225, ptr %223, align 8, !tbaa !59
  br label %226

226:                                              ; preds = %222, %218, %210
  %227 = load ptr, ptr %194, align 8, !tbaa !82
  %228 = getelementptr inbounds nuw i8, ptr %227, i64 %213
  store ptr %228, ptr %194, align 8, !tbaa !82
  %229 = getelementptr inbounds nuw i8, ptr %194, i64 16
  %230 = load i64, ptr %229, align 8, !tbaa !55
  %231 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %230, i64 %213), !nosanitize !45
  %232 = extractvalue { i64, i1 } %231, 1, !nosanitize !45
  br i1 %232, label %233, label %234, !prof !46, !nosanitize !45

233:                                              ; preds = %226
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

234:                                              ; preds = %226
  %235 = extractvalue { i64, i1 } %231, 0, !nosanitize !45
  store i64 %235, ptr %229, align 8, !tbaa !55
  %236 = load i32, ptr %3, align 4, !tbaa !75
  br label %237

237:                                              ; preds = %234, %198
  %238 = phi i32 [ %191, %198 ], [ %236, %234 ]
  %239 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %238, i32 %204), !nosanitize !45
  %240 = extractvalue { i32, i1 } %239, 1, !nosanitize !45
  br i1 %240, label %241, label %242, !prof !46, !nosanitize !45

241:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

242:                                              ; preds = %237
  %243 = extractvalue { i32, i1 } %239, 0, !nosanitize !45
  store i32 %243, ptr %3, align 4, !tbaa !75
  %244 = load i32, ptr %10, align 4, !tbaa !76
  %245 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %243, i32 %244), !nosanitize !45
  %246 = extractvalue { i32, i1 } %245, 1, !nosanitize !45
  br i1 %246, label %247, label %248, !prof !46, !nosanitize !45

247:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

248:                                              ; preds = %242
  %249 = extractvalue { i32, i1 } %245, 0, !nosanitize !45
  %250 = icmp ugt i32 %249, 2
  br i1 %250, label %251, label %.loopexit

251:                                              ; preds = %248
  %252 = load i32, ptr %6, align 4, !tbaa !73
  %253 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %252, i32 %244), !nosanitize !45
  %254 = extractvalue { i32, i1 } %253, 0, !nosanitize !45
  %255 = extractvalue { i32, i1 } %253, 1, !nosanitize !45
  br i1 %255, label %256, label %257, !prof !46, !nosanitize !45

256:                                              ; preds = %251
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

257:                                              ; preds = %251
  %258 = load ptr, ptr %7, align 8, !tbaa !34
  %259 = zext i32 %254 to i64
  %260 = getelementptr inbounds nuw i8, ptr %258, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !8
  %262 = zext i8 %261 to i32
  store i32 %262, ptr %15, align 8, !tbaa !80
  %263 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %254, i32 1), !nosanitize !45
  %264 = extractvalue { i32, i1 } %263, 1, !nosanitize !45
  br i1 %264, label %265, label %266, !prof !46, !nosanitize !45

265:                                              ; preds = %257
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

266:                                              ; preds = %257
  %267 = extractvalue { i32, i1 } %263, 0, !nosanitize !45
  %268 = load i32, ptr %16, align 8, !tbaa !53
  %269 = shl i32 %262, %268
  %270 = zext i32 %267 to i64
  %271 = getelementptr inbounds nuw i8, ptr %258, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !8
  %273 = zext i8 %272 to i32
  %274 = xor i32 %269, %273
  %275 = load i32, ptr %17, align 4, !tbaa !52
  %276 = and i32 %274, %275
  store i32 %276, ptr %15, align 8, !tbaa !80
  br label %277

277:                                              ; preds = %310, %266
  %278 = phi i32 [ %276, %266 ], [ %295, %310 ]
  %279 = phi i32 [ %244, %266 ], [ %306, %310 ]
  %280 = phi i32 [ %254, %266 ], [ %311, %310 ]
  %281 = icmp eq i32 %279, 0
  br i1 %281, label %.loopexit, label %282

282:                                              ; preds = %277
  %283 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %280, i32 3), !nosanitize !45
  %284 = extractvalue { i32, i1 } %283, 1, !nosanitize !45
  br i1 %284, label %285, label %286, !prof !46, !nosanitize !45

285:                                              ; preds = %282
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

286:                                              ; preds = %282
  %287 = shl i32 %278, %268
  %288 = extractvalue { i32, i1 } %283, 0, !nosanitize !45
  %289 = add i32 %288, -1
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds nuw i8, ptr %258, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !8
  %293 = zext i8 %292 to i32
  %294 = xor i32 %287, %293
  %295 = and i32 %294, %275
  store i32 %295, ptr %15, align 8, !tbaa !80
  %296 = load ptr, ptr %12, align 8, !tbaa !37
  %297 = zext i32 %295 to i64
  %298 = getelementptr inbounds nuw [2 x i8], ptr %296, i64 %297
  %299 = load i16, ptr %298, align 2, !tbaa !62
  %300 = load ptr, ptr %13, align 8, !tbaa !35
  %301 = load i32, ptr %18, align 8, !tbaa !33
  %302 = and i32 %301, %280
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds nuw [2 x i8], ptr %300, i64 %303
  store i16 %299, ptr %304, align 2, !tbaa !62
  %305 = trunc i32 %280 to i16
  store i16 %305, ptr %298, align 2, !tbaa !62
  %306 = add i32 %279, -1
  store i32 %306, ptr %10, align 4, !tbaa !76
  %307 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %243, i32 %306), !nosanitize !45
  %308 = extractvalue { i32, i1 } %307, 1, !nosanitize !45
  br i1 %308, label %309, label %310, !prof !46, !nosanitize !45

309:                                              ; preds = %286
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

310:                                              ; preds = %286
  %311 = add nuw i32 %280, 1
  %312 = extractvalue { i32, i1 } %307, 0, !nosanitize !45
  %313 = icmp ult i32 %312, 3
  br i1 %313, label %.loopexit, label %277, !llvm.loop !91

.loopexit:                                        ; preds = %310, %277, %248
  %314 = icmp ult i32 %243, 262
  br i1 %314, label %315, label %320

315:                                              ; preds = %.loopexit
  %316 = load ptr, ptr %0, align 8, !tbaa !20
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 8
  %318 = load i32, ptr %317, align 8, !tbaa !81
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %42, !llvm.loop !92

320:                                              ; preds = %315, %.loopexit, %190
  %321 = phi i32 [ %243, %315 ], [ %243, %.loopexit ], [ %191, %190 ]
  %322 = load i64, ptr %19, align 8, !tbaa !38
  %323 = load i64, ptr %5, align 8, !tbaa !61
  %324 = icmp ult i64 %322, %323
  br i1 %324, label %325, label %364

325:                                              ; preds = %320
  %326 = load i32, ptr %6, align 4, !tbaa !73
  %327 = zext i32 %326 to i64
  %328 = zext i32 %321 to i64
  %329 = add nuw nsw i64 %327, %328
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
  br label %361

341:                                              ; preds = %325
  %342 = add nuw nsw i64 %329, 258
  %343 = icmp ult i64 %322, %342
  br i1 %343, label %344, label %364

344:                                              ; preds = %341
  %345 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %323, i64 %322), !nosanitize !45
  %346 = extractvalue { i64, i1 } %345, 1, !nosanitize !45
  br i1 %346, label %347, label %348, !prof !46, !nosanitize !45

347:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

348:                                              ; preds = %344
  %349 = sub nuw nsw i64 %342, %322
  %350 = extractvalue { i64, i1 } %345, 0, !nosanitize !45
  %351 = tail call i64 @llvm.umin.i64(i64 %349, i64 %350)
  %352 = load ptr, ptr %7, align 8, !tbaa !34
  %353 = getelementptr inbounds nuw i8, ptr %352, i64 %322
  %354 = and i64 %351, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %353, i8 0, i64 %354, i1 false)
  %355 = load i64, ptr %19, align 8, !tbaa !38
  %356 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %355, i64 %351), !nosanitize !45
  %357 = extractvalue { i64, i1 } %356, 1, !nosanitize !45
  br i1 %357, label %358, label %359, !prof !46, !nosanitize !45

358:                                              ; preds = %348
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

359:                                              ; preds = %348
  %360 = extractvalue { i64, i1 } %356, 0, !nosanitize !45
  br label %361

361:                                              ; preds = %359, %335
  %362 = phi i64 [ %340, %335 ], [ %360, %359 ]
  store i64 %362, ptr %19, align 8, !tbaa !38
  %363 = load i32, ptr %3, align 4, !tbaa !75
  br label %364

364:                                              ; preds = %361, %341, %320
  %365 = phi i32 [ %321, %320 ], [ %321, %341 ], [ %363, %361 ]
  %366 = icmp ult i32 %365, 262
  %367 = and i1 %20, %366
  br i1 %367, label %.loopexit47, label %368

368:                                              ; preds = %364
  %369 = icmp eq i32 %365, 0
  br i1 %369, label %956, label %370

370:                                              ; preds = %368
  %371 = icmp ugt i32 %365, 2
  br i1 %371, label %375, label %372

372:                                              ; preds = %370
  %373 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %373, ptr %22, align 8, !tbaa !77
  %374 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %374, ptr %23, align 4, !tbaa !159
  br label %595

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
  br i1 %407, label %599, label %408

408:                                              ; preds = %381
  %409 = load i32, ptr %24, align 8, !tbaa !66
  %410 = icmp ult i32 %405, %409
  br i1 %410, label %411, label %599

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
  br i1 %423, label %599, label %424

424:                                              ; preds = %421
  %425 = zext i32 %377 to i64
  %426 = getelementptr inbounds nuw i8, ptr %383, i64 %425
  %427 = tail call i32 @llvm.usub.sat.i32(i32 %377, i32 %422)
  %428 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %405, i32 -1)
  %429 = extractvalue { i32, i1 } %428, 1, !nosanitize !45
  br i1 %429, label %.loopexit46, label %430, !prof !46, !nosanitize !45

.loopexit46:                                      ; preds = %424, %.split.loop.exit, %461
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

430:                                              ; preds = %424
  %431 = load i32, ptr %25, align 8, !tbaa !70
  %432 = load i32, ptr %26, align 4, !tbaa !72
  %433 = getelementptr inbounds nuw i8, ptr %426, i64 258
  %434 = extractvalue { i32, i1 } %428, 0, !nosanitize !45
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8, ptr %426, i64 %435
  %437 = load i8, ptr %436, align 1, !tbaa !8
  %438 = sext i32 %405 to i64
  %439 = getelementptr inbounds i8, ptr %426, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !8
  %441 = load i32, ptr %27, align 4, !tbaa !68
  %442 = icmp ult i32 %405, %441
  %443 = lshr i32 %432, 2
  %444 = select i1 %442, i32 %432, i32 %443
  %445 = tail call i32 @llvm.umin.i32(i32 %431, i32 %376)
  %446 = getelementptr inbounds nuw i8, ptr %426, i64 1
  %447 = ptrtoint ptr %433 to i64
  br label %448

448:                                              ; preds = %575, %430
  %449 = phi i32 [ %406, %430 ], [ %561, %575 ]
  %450 = phi i32 [ %405, %430 ], [ %562, %575 ]
  %451 = phi i32 [ %444, %430 ], [ %576, %575 ]
  %452 = phi i32 [ %403, %430 ], [ %569, %575 ]
  %453 = phi i8 [ %437, %430 ], [ %563, %575 ]
  %454 = phi i8 [ %440, %430 ], [ %564, %575 ]
  %455 = zext nneg i32 %452 to i64
  %456 = getelementptr inbounds nuw i8, ptr %383, i64 %455
  %457 = sext i32 %450 to i64
  %458 = getelementptr inbounds i8, ptr %456, i64 %457
  %459 = load i8, ptr %458, align 1, !tbaa !8
  %460 = icmp eq i8 %459, %454
  br i1 %460, label %461, label %560

461:                                              ; preds = %448
  %462 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %450, i32 -1)
  %463 = extractvalue { i32, i1 } %462, 1, !nosanitize !45
  br i1 %463, label %.loopexit46, label %464, !prof !46, !nosanitize !45

464:                                              ; preds = %461
  %465 = extractvalue { i32, i1 } %462, 0, !nosanitize !45
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i8, ptr %456, i64 %466
  %468 = load i8, ptr %467, align 1, !tbaa !8
  %469 = icmp eq i8 %468, %453
  br i1 %469, label %470, label %560

470:                                              ; preds = %464
  %471 = load i8, ptr %456, align 1, !tbaa !8
  %472 = load i8, ptr %426, align 1, !tbaa !8
  %473 = icmp eq i8 %471, %472
  br i1 %473, label %474, label %560

474:                                              ; preds = %470
  %475 = getelementptr inbounds nuw i8, ptr %456, i64 1
  %476 = load i8, ptr %475, align 1, !tbaa !8
  %477 = load i8, ptr %446, align 1, !tbaa !8
  %478 = icmp eq i8 %476, %477
  br i1 %478, label %479, label %560

479:                                              ; preds = %474
  %480 = getelementptr inbounds nuw i8, ptr %456, i64 2
  br label %481

481:                                              ; preds = %526, %479
  %482 = phi ptr [ %480, %479 ], [ %530, %526 ]
  %483 = phi i64 [ 2, %479 ], [ %527, %526 ]
  %484 = getelementptr inbounds nuw i8, ptr %426, i64 %483
  %485 = getelementptr inbounds nuw i8, ptr %484, i64 1
  %486 = load i8, ptr %485, align 1, !tbaa !8
  %487 = getelementptr inbounds nuw i8, ptr %482, i64 1
  %488 = load i8, ptr %487, align 1, !tbaa !8
  %489 = icmp eq i8 %486, %488
  br i1 %489, label %490, label %.split.loop.exit.split.loop.exit

490:                                              ; preds = %481
  %491 = getelementptr inbounds nuw i8, ptr %484, i64 2
  %492 = load i8, ptr %491, align 1, !tbaa !8
  %493 = getelementptr inbounds nuw i8, ptr %482, i64 2
  %494 = load i8, ptr %493, align 1, !tbaa !8
  %495 = icmp eq i8 %492, %494
  br i1 %495, label %496, label %.split.loop.exit.split.loop.exit154

496:                                              ; preds = %490
  %497 = getelementptr inbounds nuw i8, ptr %484, i64 3
  %498 = load i8, ptr %497, align 1, !tbaa !8
  %499 = getelementptr inbounds nuw i8, ptr %482, i64 3
  %500 = load i8, ptr %499, align 1, !tbaa !8
  %501 = icmp eq i8 %498, %500
  br i1 %501, label %502, label %.split.loop.exit.split.loop.exit156

502:                                              ; preds = %496
  %503 = getelementptr inbounds nuw i8, ptr %484, i64 4
  %504 = load i8, ptr %503, align 1, !tbaa !8
  %505 = getelementptr inbounds nuw i8, ptr %482, i64 4
  %506 = load i8, ptr %505, align 1, !tbaa !8
  %507 = icmp eq i8 %504, %506
  br i1 %507, label %508, label %.split.loop.exit.split.loop.exit158

508:                                              ; preds = %502
  %509 = getelementptr inbounds nuw i8, ptr %484, i64 5
  %510 = load i8, ptr %509, align 1, !tbaa !8
  %511 = getelementptr inbounds nuw i8, ptr %482, i64 5
  %512 = load i8, ptr %511, align 1, !tbaa !8
  %513 = icmp eq i8 %510, %512
  br i1 %513, label %514, label %.split.loop.exit.split.loop.exit160

514:                                              ; preds = %508
  %515 = getelementptr inbounds nuw i8, ptr %484, i64 6
  %516 = load i8, ptr %515, align 1, !tbaa !8
  %517 = getelementptr inbounds nuw i8, ptr %482, i64 6
  %518 = load i8, ptr %517, align 1, !tbaa !8
  %519 = icmp eq i8 %516, %518
  br i1 %519, label %520, label %.split.loop.exit.split.loop.exit162

520:                                              ; preds = %514
  %521 = getelementptr inbounds nuw i8, ptr %484, i64 7
  %522 = load i8, ptr %521, align 1, !tbaa !8
  %523 = getelementptr inbounds nuw i8, ptr %482, i64 7
  %524 = load i8, ptr %523, align 1, !tbaa !8
  %525 = icmp eq i8 %522, %524
  br i1 %525, label %526, label %.split.loop.exit.split.loop.exit164

526:                                              ; preds = %520
  %527 = add nuw nsw i64 %483, 8
  %528 = getelementptr inbounds nuw i8, ptr %426, i64 %527
  %529 = load i8, ptr %528, align 1, !tbaa !8
  %530 = getelementptr inbounds nuw i8, ptr %482, i64 8
  %531 = load i8, ptr %530, align 1, !tbaa !8
  %532 = icmp eq i8 %529, %531
  %533 = icmp samesign ult i64 %483, 250
  %534 = select i1 %532, i1 %533, i1 false
  br i1 %534, label %481, label %.split.loop.exit.split.loop.exit166, !llvm.loop !152

.split.loop.exit.split.loop.exit:                 ; preds = %481
  %535 = getelementptr inbounds nuw i8, ptr %484, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit154:              ; preds = %490
  %536 = getelementptr inbounds nuw i8, ptr %484, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit156:              ; preds = %496
  %537 = getelementptr inbounds nuw i8, ptr %484, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit158:              ; preds = %502
  %538 = getelementptr inbounds nuw i8, ptr %484, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit160:              ; preds = %508
  %539 = getelementptr inbounds nuw i8, ptr %484, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit162:              ; preds = %514
  %540 = getelementptr inbounds nuw i8, ptr %484, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit164:              ; preds = %520
  %541 = getelementptr inbounds nuw i8, ptr %484, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit166:              ; preds = %526
  %542 = getelementptr inbounds nuw i8, ptr %426, i64 %527
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit166, %.split.loop.exit.split.loop.exit164, %.split.loop.exit.split.loop.exit162, %.split.loop.exit.split.loop.exit160, %.split.loop.exit.split.loop.exit158, %.split.loop.exit.split.loop.exit156, %.split.loop.exit.split.loop.exit154, %.split.loop.exit.split.loop.exit
  %543 = phi ptr [ %536, %.split.loop.exit.split.loop.exit154 ], [ %537, %.split.loop.exit.split.loop.exit156 ], [ %535, %.split.loop.exit.split.loop.exit ], [ %541, %.split.loop.exit.split.loop.exit164 ], [ %540, %.split.loop.exit.split.loop.exit162 ], [ %539, %.split.loop.exit.split.loop.exit160 ], [ %538, %.split.loop.exit.split.loop.exit158 ], [ %542, %.split.loop.exit.split.loop.exit166 ]
  %544 = ptrtoint ptr %543 to i64
  %545 = sub i64 %447, %544
  %546 = trunc i64 %545 to i32
  %547 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %546), !nosanitize !45
  %548 = extractvalue { i32, i1 } %547, 0, !nosanitize !45
  %549 = extractvalue { i32, i1 } %547, 1, !nosanitize !45
  br i1 %549, label %.loopexit46, label %550, !prof !46, !nosanitize !45

550:                                              ; preds = %.split.loop.exit
  %551 = icmp sgt i32 %548, %450
  br i1 %551, label %552, label %560

552:                                              ; preds = %550
  store i32 %452, ptr %8, align 8, !tbaa !83
  %553 = icmp slt i32 %548, %445
  br i1 %553, label %554, label %578

554:                                              ; preds = %552
  %555 = sext i32 %548 to i64
  %556 = getelementptr i8, ptr %426, i64 %555
  %557 = getelementptr i8, ptr %556, i64 -1
  %558 = load i8, ptr %557, align 1, !tbaa !8
  %559 = load i8, ptr %556, align 1, !tbaa !8
  br label %560

560:                                              ; preds = %554, %550, %474, %470, %464, %448
  %561 = phi i32 [ %449, %448 ], [ %449, %464 ], [ %449, %470 ], [ %449, %474 ], [ %452, %554 ], [ %449, %550 ]
  %562 = phi i32 [ %450, %448 ], [ %450, %464 ], [ %450, %470 ], [ %450, %474 ], [ %548, %554 ], [ %450, %550 ]
  %563 = phi i8 [ %453, %448 ], [ %453, %464 ], [ %453, %470 ], [ %453, %474 ], [ %558, %554 ], [ %453, %550 ]
  %564 = phi i8 [ %454, %448 ], [ %454, %464 ], [ %454, %470 ], [ %454, %474 ], [ %559, %554 ], [ %454, %550 ]
  %565 = and i32 %452, %399
  %566 = zext nneg i32 %565 to i64
  %567 = getelementptr inbounds nuw [2 x i8], ptr %398, i64 %566
  %568 = load i16, ptr %567, align 2, !tbaa !62
  %569 = zext i16 %568 to i32
  %570 = icmp ult i32 %427, %569
  br i1 %570, label %571, label %578

571:                                              ; preds = %560
  %572 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %451, i32 1), !nosanitize !45
  %573 = extractvalue { i32, i1 } %572, 1, !nosanitize !45
  br i1 %573, label %574, label %575, !prof !46, !nosanitize !45

574:                                              ; preds = %571
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

575:                                              ; preds = %571
  %576 = extractvalue { i32, i1 } %572, 0, !nosanitize !45
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %448, !llvm.loop !153

578:                                              ; preds = %575, %560, %552
  %579 = phi i32 [ %561, %575 ], [ %561, %560 ], [ %452, %552 ]
  %580 = phi i32 [ %562, %575 ], [ %562, %560 ], [ %548, %552 ]
  %581 = tail call i32 @llvm.umin.i32(i32 %580, i32 %376)
  store i32 %581, ptr %21, align 8, !tbaa !78
  %582 = icmp ult i32 %581, 6
  br i1 %582, label %583, label %599

583:                                              ; preds = %578
  %584 = load i32, ptr %28, align 8, !tbaa !49
  %585 = icmp eq i32 %584, 1
  br i1 %585, label %595, label %586

586:                                              ; preds = %583
  %587 = icmp eq i32 %581, 3
  br i1 %587, label %588, label %599

588:                                              ; preds = %586
  %589 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %377, i32 %579), !nosanitize !45
  %590 = extractvalue { i32, i1 } %589, 1, !nosanitize !45
  br i1 %590, label %591, label %592, !prof !46, !nosanitize !45

591:                                              ; preds = %588
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

592:                                              ; preds = %588
  %593 = extractvalue { i32, i1 } %589, 0, !nosanitize !45
  %594 = icmp ugt i32 %593, 4096
  br i1 %594, label %595, label %599

595:                                              ; preds = %592, %583, %372
  %596 = phi i32 [ %374, %372 ], [ %406, %592 ], [ %406, %583 ]
  %597 = phi i32 [ %373, %372 ], [ %405, %592 ], [ %405, %583 ]
  %598 = phi i32 [ %365, %372 ], [ %376, %592 ], [ %376, %583 ]
  store i32 2, ptr %21, align 8, !tbaa !78
  br label %599

599:                                              ; preds = %595, %592, %586, %578, %421, %408, %381
  %600 = phi i32 [ 2, %408 ], [ %581, %578 ], [ %581, %586 ], [ 3, %592 ], [ 2, %381 ], [ 2, %421 ], [ 2, %595 ]
  %601 = phi i32 [ %406, %408 ], [ %406, %578 ], [ %406, %586 ], [ %406, %592 ], [ %406, %381 ], [ %406, %421 ], [ %596, %595 ]
  %602 = phi i32 [ %405, %408 ], [ %405, %578 ], [ %405, %586 ], [ %405, %592 ], [ %405, %381 ], [ %405, %421 ], [ %597, %595 ]
  %603 = phi i32 [ %376, %408 ], [ %376, %578 ], [ %376, %586 ], [ %376, %592 ], [ %376, %381 ], [ %376, %421 ], [ %598, %595 ]
  %604 = icmp ult i32 %602, 3
  %605 = icmp ugt i32 %600, %602
  %606 = or i1 %604, %605
  br i1 %606, label %819, label %607

607:                                              ; preds = %599
  %608 = load i32, ptr %6, align 4, !tbaa !73
  %609 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %608, i32 %603), !nosanitize !45
  %610 = extractvalue { i32, i1 } %609, 1, !nosanitize !45
  br i1 %610, label %611, label %612, !prof !46, !nosanitize !45

611:                                              ; preds = %607
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

612:                                              ; preds = %607
  %613 = extractvalue { i32, i1 } %609, 0, !nosanitize !45
  %614 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %613, i32 3), !nosanitize !45
  %615 = extractvalue { i32, i1 } %614, 0, !nosanitize !45
  %616 = extractvalue { i32, i1 } %614, 1, !nosanitize !45
  br i1 %616, label %617, label %618, !prof !46, !nosanitize !45

617:                                              ; preds = %612
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

618:                                              ; preds = %612
  %619 = trunc i32 %602 to i8
  %620 = add i8 %619, -3
  %621 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %608, i32 1), !nosanitize !45
  %622 = extractvalue { i32, i1 } %621, 1, !nosanitize !45
  br i1 %622, label %623, label %624, !prof !46, !nosanitize !45

623:                                              ; preds = %618
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

624:                                              ; preds = %618
  %625 = extractvalue { i32, i1 } %621, 0, !nosanitize !45
  %626 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %625, i32 %601), !nosanitize !45
  %627 = extractvalue { i32, i1 } %626, 1, !nosanitize !45
  br i1 %627, label %628, label %629, !prof !46, !nosanitize !45

628:                                              ; preds = %624
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

629:                                              ; preds = %624
  %630 = extractvalue { i32, i1 } %626, 0, !nosanitize !45
  %631 = trunc i32 %630 to i16
  %632 = load i32, ptr %30, align 4, !tbaa !139
  %633 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %632, i32 1), !nosanitize !45
  %634 = extractvalue { i32, i1 } %633, 1, !nosanitize !45
  br i1 %634, label %635, label %636, !prof !46, !nosanitize !45

635:                                              ; preds = %629
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

636:                                              ; preds = %629
  %637 = extractvalue { i32, i1 } %633, 0, !nosanitize !45
  %638 = load ptr, ptr %29, align 8, !tbaa !44
  %639 = trunc i32 %630 to i8
  store i32 %637, ptr %30, align 4, !tbaa !139
  %640 = zext i32 %632 to i64
  %641 = getelementptr inbounds nuw i8, ptr %638, i64 %640
  store i8 %639, ptr %641, align 1, !tbaa !8
  %642 = load i32, ptr %30, align 4, !tbaa !139
  %643 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %642, i32 1), !nosanitize !45
  %644 = extractvalue { i32, i1 } %643, 1, !nosanitize !45
  br i1 %644, label %645, label %646, !prof !46, !nosanitize !45

645:                                              ; preds = %636
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

646:                                              ; preds = %636
  %647 = extractvalue { i32, i1 } %643, 0, !nosanitize !45
  %648 = load ptr, ptr %29, align 8, !tbaa !44
  %649 = lshr i32 %630, 8
  %650 = trunc i32 %649 to i8
  store i32 %647, ptr %30, align 4, !tbaa !139
  %651 = zext i32 %642 to i64
  %652 = getelementptr inbounds nuw i8, ptr %648, i64 %651
  store i8 %650, ptr %652, align 1, !tbaa !8
  %653 = load i32, ptr %30, align 4, !tbaa !139
  %654 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %653, i32 1), !nosanitize !45
  %655 = extractvalue { i32, i1 } %654, 1, !nosanitize !45
  br i1 %655, label %656, label %657, !prof !46, !nosanitize !45

656:                                              ; preds = %646
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

657:                                              ; preds = %646
  %658 = extractvalue { i32, i1 } %654, 0, !nosanitize !45
  %659 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %658, ptr %30, align 4, !tbaa !139
  %660 = zext i32 %653 to i64
  %661 = getelementptr inbounds nuw i8, ptr %659, i64 %660
  store i8 %620, ptr %661, align 1, !tbaa !8
  %662 = add i16 %631, -1
  %663 = zext i8 %620 to i64
  %664 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %663
  %665 = load i8, ptr %664, align 1, !tbaa !8
  %666 = zext i8 %665 to i64
  %667 = getelementptr [4 x i8], ptr %31, i64 %666
  %668 = load i16, ptr %667, align 4, !tbaa !8
  %669 = add i16 %668, 1
  store i16 %669, ptr %667, align 4, !tbaa !8
  %670 = icmp ult i16 %662, 256
  br i1 %670, label %671, label %674

671:                                              ; preds = %657
  %672 = zext nneg i16 %662 to i64
  %673 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %672
  br label %679

674:                                              ; preds = %657
  %675 = lshr i16 %662, 7
  %676 = zext nneg i16 %675 to i64
  %677 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %676
  %678 = getelementptr inbounds nuw i8, ptr %677, i64 256
  br label %679

679:                                              ; preds = %674, %671
  %680 = phi ptr [ %673, %671 ], [ %678, %674 ]
  %681 = load i8, ptr %680, align 1, !tbaa !8
  %682 = zext i8 %681 to i64
  %683 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %682
  %684 = load i16, ptr %683, align 4, !tbaa !8
  %685 = add i16 %684, 1
  store i16 %685, ptr %683, align 4, !tbaa !8
  %686 = load i32, ptr %30, align 4, !tbaa !139
  %687 = load i32, ptr %33, align 8, !tbaa !47
  %688 = icmp eq i32 %686, %687
  %689 = load i32, ptr %22, align 8, !tbaa !77
  %690 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %689, i32 1), !nosanitize !45
  %691 = extractvalue { i32, i1 } %690, 1, !nosanitize !45
  br i1 %691, label %692, label %693, !prof !46, !nosanitize !45

692:                                              ; preds = %679
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

693:                                              ; preds = %679
  %694 = extractvalue { i32, i1 } %690, 0, !nosanitize !45
  %695 = load i32, ptr %3, align 4, !tbaa !75
  %696 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %695, i32 %694), !nosanitize !45
  %697 = extractvalue { i32, i1 } %696, 1, !nosanitize !45
  br i1 %697, label %698, label %699, !prof !46, !nosanitize !45

698:                                              ; preds = %693
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

699:                                              ; preds = %693
  %700 = extractvalue { i32, i1 } %696, 0, !nosanitize !45
  store i32 %700, ptr %3, align 4, !tbaa !75
  %701 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %689, i32 2), !nosanitize !45
  %702 = extractvalue { i32, i1 } %701, 1, !nosanitize !45
  br i1 %702, label %703, label %704, !prof !46, !nosanitize !45

703:                                              ; preds = %699
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

704:                                              ; preds = %699
  %705 = extractvalue { i32, i1 } %701, 0, !nosanitize !45
  store i32 %705, ptr %22, align 8, !tbaa !77
  %706 = load i32, ptr %6, align 4, !tbaa !73
  br label %707

707:                                              ; preds = %746, %704
  %708 = phi i32 [ %747, %746 ], [ %705, %704 ]
  %709 = phi i32 [ %711, %746 ], [ %706, %704 ]
  %710 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %709, i32 1), !nosanitize !45
  %711 = extractvalue { i32, i1 } %710, 0, !nosanitize !45
  %712 = extractvalue { i32, i1 } %710, 1, !nosanitize !45
  br i1 %712, label %713, label %714, !prof !46, !nosanitize !45

713:                                              ; preds = %707
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

714:                                              ; preds = %707
  store i32 %711, ptr %6, align 4, !tbaa !73
  %715 = icmp ugt i32 %711, %615
  br i1 %715, label %743, label %716

716:                                              ; preds = %714
  %717 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %711, i32 2), !nosanitize !45
  %718 = extractvalue { i32, i1 } %717, 1, !nosanitize !45
  br i1 %718, label %719, label %720, !prof !46, !nosanitize !45

719:                                              ; preds = %716
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

720:                                              ; preds = %716
  %721 = extractvalue { i32, i1 } %717, 0, !nosanitize !45
  %722 = load ptr, ptr %7, align 8, !tbaa !34
  %723 = load i32, ptr %15, align 8, !tbaa !80
  %724 = load i32, ptr %16, align 8, !tbaa !53
  %725 = shl i32 %723, %724
  %726 = zext i32 %721 to i64
  %727 = getelementptr inbounds nuw i8, ptr %722, i64 %726
  %728 = load i8, ptr %727, align 1, !tbaa !8
  %729 = zext i8 %728 to i32
  %730 = xor i32 %725, %729
  %731 = load i32, ptr %17, align 4, !tbaa !52
  %732 = and i32 %730, %731
  store i32 %732, ptr %15, align 8, !tbaa !80
  %733 = load ptr, ptr %12, align 8, !tbaa !37
  %734 = zext i32 %732 to i64
  %735 = getelementptr inbounds nuw [2 x i8], ptr %733, i64 %734
  %736 = load i16, ptr %735, align 2, !tbaa !62
  %737 = load ptr, ptr %13, align 8, !tbaa !35
  %738 = load i32, ptr %18, align 8, !tbaa !33
  %739 = and i32 %738, %711
  %740 = zext i32 %739 to i64
  %741 = getelementptr inbounds nuw [2 x i8], ptr %737, i64 %740
  store i16 %736, ptr %741, align 2, !tbaa !62
  %742 = trunc i32 %711 to i16
  store i16 %742, ptr %735, align 2, !tbaa !62
  br label %743

743:                                              ; preds = %720, %714
  %744 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %708, i32 1), !nosanitize !45
  %745 = extractvalue { i32, i1 } %744, 1, !nosanitize !45
  br i1 %745, label %.loopexit45, label %746, !prof !46, !nosanitize !45

.loopexit45:                                      ; preds = %762, %743
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

746:                                              ; preds = %743
  %747 = extractvalue { i32, i1 } %744, 0, !nosanitize !45
  store i32 %747, ptr %22, align 8, !tbaa !77
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %749, label %707, !llvm.loop !160

749:                                              ; preds = %746
  store i32 0, ptr %34, align 8, !tbaa !79
  store i32 2, ptr %21, align 8, !tbaa !78
  %750 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %711, i32 1), !nosanitize !45
  %751 = extractvalue { i32, i1 } %750, 1, !nosanitize !45
  br i1 %751, label %752, label %753, !prof !46, !nosanitize !45

752:                                              ; preds = %749
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

753:                                              ; preds = %749
  %754 = extractvalue { i32, i1 } %750, 0, !nosanitize !45
  store i32 %754, ptr %6, align 4, !tbaa !73
  br i1 %688, label %755, label %.backedge

755:                                              ; preds = %753
  %756 = load i64, ptr %9, align 8, !tbaa !74
  %757 = icmp sgt i64 %756, -1
  br i1 %757, label %758, label %762

758:                                              ; preds = %755
  %759 = load ptr, ptr %7, align 8, !tbaa !34
  %760 = and i64 %756, 4294967295
  %761 = getelementptr inbounds nuw i8, ptr %759, i64 %760
  br label %762

762:                                              ; preds = %758, %755
  %763 = phi ptr [ %761, %758 ], [ null, %755 ]
  %764 = zext i32 %754 to i64
  %765 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %764, i64 %756), !nosanitize !45
  %766 = extractvalue { i64, i1 } %765, 1, !nosanitize !45
  br i1 %766, label %.loopexit45, label %767, !prof !46, !nosanitize !45

767:                                              ; preds = %762
  %768 = extractvalue { i64, i1 } %765, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %763, i64 noundef %768, i32 noundef 0) #11
  %769 = load i32, ptr %6, align 4, !tbaa !73
  %770 = zext i32 %769 to i64
  store i64 %770, ptr %9, align 8, !tbaa !74
  %771 = load ptr, ptr %0, align 8, !tbaa !20
  %772 = getelementptr inbounds nuw i8, ptr %771, i64 56
  %773 = load ptr, ptr %772, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %773) #11
  %774 = getelementptr inbounds nuw i8, ptr %773, i64 40
  %775 = load i64, ptr %774, align 8, !tbaa !57
  %776 = getelementptr inbounds nuw i8, ptr %771, i64 32
  %777 = load i32, ptr %776, align 8, !tbaa !107
  %778 = zext i32 %777 to i64
  %779 = tail call i64 @llvm.umin.i64(i64 %775, i64 %778)
  %780 = trunc nuw i64 %779 to i32
  %781 = icmp eq i64 %779, 0
  br i1 %781, label %814, label %782

782:                                              ; preds = %767
  %783 = getelementptr inbounds nuw i8, ptr %771, i64 24
  %784 = load ptr, ptr %783, align 8, !tbaa !106
  %785 = getelementptr inbounds nuw i8, ptr %773, i64 32
  %786 = load ptr, ptr %785, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %784, ptr align 1 %786, i64 %779, i1 false)
  %787 = load ptr, ptr %783, align 8, !tbaa !106
  %788 = getelementptr inbounds nuw i8, ptr %787, i64 %779
  store ptr %788, ptr %783, align 8, !tbaa !106
  %789 = load ptr, ptr %785, align 8, !tbaa !58
  %790 = getelementptr inbounds nuw i8, ptr %789, i64 %779
  store ptr %790, ptr %785, align 8, !tbaa !58
  %791 = getelementptr inbounds nuw i8, ptr %771, i64 40
  %792 = load i64, ptr %791, align 8, !tbaa !108
  %793 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %792, i64 %779), !nosanitize !45
  %794 = extractvalue { i64, i1 } %793, 1, !nosanitize !45
  br i1 %794, label %795, label %796, !prof !46, !nosanitize !45

795:                                              ; preds = %782
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

796:                                              ; preds = %782
  %797 = extractvalue { i64, i1 } %793, 0, !nosanitize !45
  store i64 %797, ptr %791, align 8, !tbaa !108
  %798 = load i32, ptr %776, align 8, !tbaa !107
  %799 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %798, i32 %780), !nosanitize !45
  %800 = extractvalue { i32, i1 } %799, 1, !nosanitize !45
  br i1 %800, label %801, label %802, !prof !46, !nosanitize !45

801:                                              ; preds = %796
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

802:                                              ; preds = %796
  %803 = extractvalue { i32, i1 } %799, 0, !nosanitize !45
  store i32 %803, ptr %776, align 8, !tbaa !107
  %804 = load i64, ptr %774, align 8, !tbaa !57
  %805 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %804, i64 %779), !nosanitize !45
  %806 = extractvalue { i64, i1 } %805, 1, !nosanitize !45
  br i1 %806, label %807, label %808, !prof !46, !nosanitize !45

807:                                              ; preds = %802
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

808:                                              ; preds = %802
  %809 = extractvalue { i64, i1 } %805, 0, !nosanitize !45
  store i64 %809, ptr %774, align 8, !tbaa !57
  %810 = icmp eq i64 %809, 0
  br i1 %810, label %811, label %814

811:                                              ; preds = %808
  %812 = getelementptr inbounds nuw i8, ptr %773, i64 16
  %813 = load ptr, ptr %812, align 8, !tbaa !40
  store ptr %813, ptr %785, align 8, !tbaa !58
  br label %814

814:                                              ; preds = %811, %808, %767
  %815 = load ptr, ptr %0, align 8, !tbaa !20
  %816 = getelementptr inbounds nuw i8, ptr %815, i64 32
  %817 = load i32, ptr %816, align 8, !tbaa !107
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %.loopexit47, label %.backedge

819:                                              ; preds = %599
  %820 = load i32, ptr %34, align 8, !tbaa !79
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %944, label %822

822:                                              ; preds = %819
  %823 = load i32, ptr %6, align 4, !tbaa !73
  %824 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %823, i32 1), !nosanitize !45
  %825 = extractvalue { i32, i1 } %824, 1, !nosanitize !45
  br i1 %825, label %826, label %827, !prof !46, !nosanitize !45

826:                                              ; preds = %874, %822
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

827:                                              ; preds = %822
  %828 = extractvalue { i32, i1 } %824, 0, !nosanitize !45
  %829 = load ptr, ptr %7, align 8, !tbaa !34
  %830 = zext i32 %828 to i64
  %831 = getelementptr inbounds nuw i8, ptr %829, i64 %830
  %832 = load i8, ptr %831, align 1, !tbaa !8
  %833 = load i32, ptr %30, align 4, !tbaa !139
  %834 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %833, i32 1), !nosanitize !45
  %835 = extractvalue { i32, i1 } %834, 1, !nosanitize !45
  br i1 %835, label %836, label %837, !prof !46, !nosanitize !45

836:                                              ; preds = %827
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

837:                                              ; preds = %827
  %838 = extractvalue { i32, i1 } %834, 0, !nosanitize !45
  %839 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %838, ptr %30, align 4, !tbaa !139
  %840 = zext i32 %833 to i64
  %841 = getelementptr inbounds nuw i8, ptr %839, i64 %840
  store i8 0, ptr %841, align 1, !tbaa !8
  %842 = load i32, ptr %30, align 4, !tbaa !139
  %843 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %842, i32 1), !nosanitize !45
  %844 = extractvalue { i32, i1 } %843, 1, !nosanitize !45
  br i1 %844, label %845, label %846, !prof !46, !nosanitize !45

845:                                              ; preds = %837
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

846:                                              ; preds = %837
  %847 = extractvalue { i32, i1 } %843, 0, !nosanitize !45
  %848 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %847, ptr %30, align 4, !tbaa !139
  %849 = zext i32 %842 to i64
  %850 = getelementptr inbounds nuw i8, ptr %848, i64 %849
  store i8 0, ptr %850, align 1, !tbaa !8
  %851 = load i32, ptr %30, align 4, !tbaa !139
  %852 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %851, i32 1), !nosanitize !45
  %853 = extractvalue { i32, i1 } %852, 1, !nosanitize !45
  br i1 %853, label %854, label %855, !prof !46, !nosanitize !45

854:                                              ; preds = %846
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

855:                                              ; preds = %846
  %856 = extractvalue { i32, i1 } %852, 0, !nosanitize !45
  %857 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %856, ptr %30, align 4, !tbaa !139
  %858 = zext i32 %851 to i64
  %859 = getelementptr inbounds nuw i8, ptr %857, i64 %858
  store i8 %832, ptr %859, align 1, !tbaa !8
  %860 = zext i8 %832 to i64
  %861 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %860
  %862 = load i16, ptr %861, align 4, !tbaa !8
  %863 = add i16 %862, 1
  store i16 %863, ptr %861, align 4, !tbaa !8
  %864 = load i32, ptr %30, align 4, !tbaa !139
  %865 = load i32, ptr %33, align 8, !tbaa !47
  %866 = icmp eq i32 %864, %865
  br i1 %866, label %867, label %927

867:                                              ; preds = %855
  %868 = load i64, ptr %9, align 8, !tbaa !74
  %869 = icmp sgt i64 %868, -1
  br i1 %869, label %870, label %874

870:                                              ; preds = %867
  %871 = load ptr, ptr %7, align 8, !tbaa !34
  %872 = and i64 %868, 4294967295
  %873 = getelementptr inbounds nuw i8, ptr %871, i64 %872
  br label %874

874:                                              ; preds = %870, %867
  %875 = phi ptr [ %873, %870 ], [ null, %867 ]
  %876 = load i32, ptr %6, align 4, !tbaa !73
  %877 = zext i32 %876 to i64
  %878 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %877, i64 %868), !nosanitize !45
  %879 = extractvalue { i64, i1 } %878, 1, !nosanitize !45
  br i1 %879, label %826, label %880, !prof !46, !nosanitize !45

880:                                              ; preds = %874
  %881 = extractvalue { i64, i1 } %878, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %875, i64 noundef %881, i32 noundef 0) #11
  %882 = load i32, ptr %6, align 4, !tbaa !73
  %883 = zext i32 %882 to i64
  store i64 %883, ptr %9, align 8, !tbaa !74
  %884 = load ptr, ptr %0, align 8, !tbaa !20
  %885 = getelementptr inbounds nuw i8, ptr %884, i64 56
  %886 = load ptr, ptr %885, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %886) #11
  %887 = getelementptr inbounds nuw i8, ptr %886, i64 40
  %888 = load i64, ptr %887, align 8, !tbaa !57
  %889 = getelementptr inbounds nuw i8, ptr %884, i64 32
  %890 = load i32, ptr %889, align 8, !tbaa !107
  %891 = zext i32 %890 to i64
  %892 = tail call i64 @llvm.umin.i64(i64 %888, i64 %891)
  %893 = trunc nuw i64 %892 to i32
  %894 = icmp eq i64 %892, 0
  br i1 %894, label %927, label %895

895:                                              ; preds = %880
  %896 = getelementptr inbounds nuw i8, ptr %884, i64 24
  %897 = load ptr, ptr %896, align 8, !tbaa !106
  %898 = getelementptr inbounds nuw i8, ptr %886, i64 32
  %899 = load ptr, ptr %898, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %897, ptr align 1 %899, i64 %892, i1 false)
  %900 = load ptr, ptr %896, align 8, !tbaa !106
  %901 = getelementptr inbounds nuw i8, ptr %900, i64 %892
  store ptr %901, ptr %896, align 8, !tbaa !106
  %902 = load ptr, ptr %898, align 8, !tbaa !58
  %903 = getelementptr inbounds nuw i8, ptr %902, i64 %892
  store ptr %903, ptr %898, align 8, !tbaa !58
  %904 = getelementptr inbounds nuw i8, ptr %884, i64 40
  %905 = load i64, ptr %904, align 8, !tbaa !108
  %906 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %905, i64 %892), !nosanitize !45
  %907 = extractvalue { i64, i1 } %906, 1, !nosanitize !45
  br i1 %907, label %908, label %909, !prof !46, !nosanitize !45

908:                                              ; preds = %895
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

909:                                              ; preds = %895
  %910 = extractvalue { i64, i1 } %906, 0, !nosanitize !45
  store i64 %910, ptr %904, align 8, !tbaa !108
  %911 = load i32, ptr %889, align 8, !tbaa !107
  %912 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %911, i32 %893), !nosanitize !45
  %913 = extractvalue { i32, i1 } %912, 1, !nosanitize !45
  br i1 %913, label %914, label %915, !prof !46, !nosanitize !45

914:                                              ; preds = %909
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

915:                                              ; preds = %909
  %916 = extractvalue { i32, i1 } %912, 0, !nosanitize !45
  store i32 %916, ptr %889, align 8, !tbaa !107
  %917 = load i64, ptr %887, align 8, !tbaa !57
  %918 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %917, i64 %892), !nosanitize !45
  %919 = extractvalue { i64, i1 } %918, 1, !nosanitize !45
  br i1 %919, label %920, label %921, !prof !46, !nosanitize !45

920:                                              ; preds = %915
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

921:                                              ; preds = %915
  %922 = extractvalue { i64, i1 } %918, 0, !nosanitize !45
  store i64 %922, ptr %887, align 8, !tbaa !57
  %923 = icmp eq i64 %922, 0
  br i1 %923, label %924, label %927

924:                                              ; preds = %921
  %925 = getelementptr inbounds nuw i8, ptr %886, i64 16
  %926 = load ptr, ptr %925, align 8, !tbaa !40
  store ptr %926, ptr %898, align 8, !tbaa !58
  br label %927

927:                                              ; preds = %924, %921, %880, %855
  %928 = load i32, ptr %6, align 4, !tbaa !73
  %929 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %928, i32 1), !nosanitize !45
  %930 = extractvalue { i32, i1 } %929, 1, !nosanitize !45
  br i1 %930, label %931, label %932, !prof !46, !nosanitize !45

931:                                              ; preds = %927
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

932:                                              ; preds = %927
  %933 = extractvalue { i32, i1 } %929, 0, !nosanitize !45
  store i32 %933, ptr %6, align 4, !tbaa !73
  %934 = load i32, ptr %3, align 4, !tbaa !75
  %935 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %934, i32 1), !nosanitize !45
  %936 = extractvalue { i32, i1 } %935, 1, !nosanitize !45
  br i1 %936, label %937, label %938, !prof !46, !nosanitize !45

937:                                              ; preds = %932
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

938:                                              ; preds = %932
  %939 = extractvalue { i32, i1 } %935, 0, !nosanitize !45
  store i32 %939, ptr %3, align 4, !tbaa !75
  %940 = load ptr, ptr %0, align 8, !tbaa !20
  %941 = getelementptr inbounds nuw i8, ptr %940, i64 32
  %942 = load i32, ptr %941, align 8, !tbaa !107
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %.loopexit47, label %.backedge

944:                                              ; preds = %819
  store i32 1, ptr %34, align 8, !tbaa !79
  %945 = load i32, ptr %6, align 4, !tbaa !73
  %946 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %945, i32 1), !nosanitize !45
  %947 = extractvalue { i32, i1 } %946, 1, !nosanitize !45
  br i1 %947, label %948, label %949, !prof !46, !nosanitize !45

948:                                              ; preds = %944
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

949:                                              ; preds = %944
  %950 = extractvalue { i32, i1 } %946, 0, !nosanitize !45
  store i32 %950, ptr %6, align 4, !tbaa !73
  %951 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %603, i32 1), !nosanitize !45
  %952 = extractvalue { i32, i1 } %951, 1, !nosanitize !45
  br i1 %952, label %953, label %954, !prof !46, !nosanitize !45

953:                                              ; preds = %949
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

954:                                              ; preds = %949
  %955 = extractvalue { i32, i1 } %951, 0, !nosanitize !45
  store i32 %955, ptr %3, align 4, !tbaa !75
  br label %.backedge

.backedge:                                        ; preds = %954, %938, %814, %753
  br label %36

956:                                              ; preds = %368
  %957 = load i32, ptr %34, align 8, !tbaa !79
  %958 = icmp eq i32 %957, 0
  %959 = load i32, ptr %6, align 4, !tbaa !73
  br i1 %958, label %1002, label %960

960:                                              ; preds = %956
  %961 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %959, i32 1), !nosanitize !45
  %962 = extractvalue { i32, i1 } %961, 1, !nosanitize !45
  br i1 %962, label %963, label %964, !prof !46, !nosanitize !45

963:                                              ; preds = %1081, %1013, %960
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

964:                                              ; preds = %960
  %965 = extractvalue { i32, i1 } %961, 0, !nosanitize !45
  %966 = load ptr, ptr %7, align 8, !tbaa !34
  %967 = zext i32 %965 to i64
  %968 = getelementptr inbounds nuw i8, ptr %966, i64 %967
  %969 = load i8, ptr %968, align 1, !tbaa !8
  %970 = load i32, ptr %30, align 4, !tbaa !139
  %971 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %970, i32 1), !nosanitize !45
  %972 = extractvalue { i32, i1 } %971, 1, !nosanitize !45
  br i1 %972, label %973, label %974, !prof !46, !nosanitize !45

973:                                              ; preds = %964
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

974:                                              ; preds = %964
  %975 = extractvalue { i32, i1 } %971, 0, !nosanitize !45
  %976 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %975, ptr %30, align 4, !tbaa !139
  %977 = zext i32 %970 to i64
  %978 = getelementptr inbounds nuw i8, ptr %976, i64 %977
  store i8 0, ptr %978, align 1, !tbaa !8
  %979 = load i32, ptr %30, align 4, !tbaa !139
  %980 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %979, i32 1), !nosanitize !45
  %981 = extractvalue { i32, i1 } %980, 1, !nosanitize !45
  br i1 %981, label %982, label %983, !prof !46, !nosanitize !45

982:                                              ; preds = %974
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

983:                                              ; preds = %974
  %984 = extractvalue { i32, i1 } %980, 0, !nosanitize !45
  %985 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %984, ptr %30, align 4, !tbaa !139
  %986 = zext i32 %979 to i64
  %987 = getelementptr inbounds nuw i8, ptr %985, i64 %986
  store i8 0, ptr %987, align 1, !tbaa !8
  %988 = load i32, ptr %30, align 4, !tbaa !139
  %989 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %988, i32 1), !nosanitize !45
  %990 = extractvalue { i32, i1 } %989, 1, !nosanitize !45
  br i1 %990, label %991, label %992, !prof !46, !nosanitize !45

991:                                              ; preds = %983
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

992:                                              ; preds = %983
  %993 = extractvalue { i32, i1 } %989, 0, !nosanitize !45
  %994 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %993, ptr %30, align 4, !tbaa !139
  %995 = zext i32 %988 to i64
  %996 = getelementptr inbounds nuw i8, ptr %994, i64 %995
  store i8 %969, ptr %996, align 1, !tbaa !8
  %997 = zext i8 %969 to i64
  %998 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %997
  %999 = load i16, ptr %998, align 4, !tbaa !8
  %1000 = add i16 %999, 1
  store i16 %1000, ptr %998, align 4, !tbaa !8
  store i32 0, ptr %34, align 8, !tbaa !79
  %1001 = load i32, ptr %6, align 4, !tbaa !73
  br label %1002

1002:                                             ; preds = %992, %956
  %1003 = phi i32 [ %1001, %992 ], [ %959, %956 ]
  %1004 = tail call i32 @llvm.umin.i32(i32 %1003, i32 2)
  store i32 %1004, ptr %10, align 4, !tbaa !76
  %1005 = icmp eq i32 %1, 4
  br i1 %1005, label %1006, label %1071

1006:                                             ; preds = %1002
  %1007 = load i64, ptr %9, align 8, !tbaa !74
  %1008 = icmp sgt i64 %1007, -1
  br i1 %1008, label %1009, label %1013

1009:                                             ; preds = %1006
  %1010 = load ptr, ptr %7, align 8, !tbaa !34
  %1011 = and i64 %1007, 4294967295
  %1012 = getelementptr inbounds nuw i8, ptr %1010, i64 %1011
  br label %1013

1013:                                             ; preds = %1009, %1006
  %1014 = phi ptr [ %1012, %1009 ], [ null, %1006 ]
  %1015 = zext i32 %1003 to i64
  %1016 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1015, i64 %1007), !nosanitize !45
  %1017 = extractvalue { i64, i1 } %1016, 1, !nosanitize !45
  br i1 %1017, label %963, label %1018, !prof !46, !nosanitize !45

1018:                                             ; preds = %1013
  %1019 = extractvalue { i64, i1 } %1016, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1014, i64 noundef %1019, i32 noundef 1) #11
  %1020 = load i32, ptr %6, align 4, !tbaa !73
  %1021 = zext i32 %1020 to i64
  store i64 %1021, ptr %9, align 8, !tbaa !74
  %1022 = load ptr, ptr %0, align 8, !tbaa !20
  %1023 = getelementptr inbounds nuw i8, ptr %1022, i64 56
  %1024 = load ptr, ptr %1023, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1024) #11
  %1025 = getelementptr inbounds nuw i8, ptr %1024, i64 40
  %1026 = load i64, ptr %1025, align 8, !tbaa !57
  %1027 = getelementptr inbounds nuw i8, ptr %1022, i64 32
  %1028 = load i32, ptr %1027, align 8, !tbaa !107
  %1029 = zext i32 %1028 to i64
  %1030 = tail call i64 @llvm.umin.i64(i64 %1026, i64 %1029)
  %1031 = trunc nuw i64 %1030 to i32
  %1032 = icmp eq i64 %1030, 0
  br i1 %1032, label %1065, label %1033

1033:                                             ; preds = %1018
  %1034 = getelementptr inbounds nuw i8, ptr %1022, i64 24
  %1035 = load ptr, ptr %1034, align 8, !tbaa !106
  %1036 = getelementptr inbounds nuw i8, ptr %1024, i64 32
  %1037 = load ptr, ptr %1036, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1035, ptr align 1 %1037, i64 %1030, i1 false)
  %1038 = load ptr, ptr %1034, align 8, !tbaa !106
  %1039 = getelementptr inbounds nuw i8, ptr %1038, i64 %1030
  store ptr %1039, ptr %1034, align 8, !tbaa !106
  %1040 = load ptr, ptr %1036, align 8, !tbaa !58
  %1041 = getelementptr inbounds nuw i8, ptr %1040, i64 %1030
  store ptr %1041, ptr %1036, align 8, !tbaa !58
  %1042 = getelementptr inbounds nuw i8, ptr %1022, i64 40
  %1043 = load i64, ptr %1042, align 8, !tbaa !108
  %1044 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1043, i64 %1030), !nosanitize !45
  %1045 = extractvalue { i64, i1 } %1044, 1, !nosanitize !45
  br i1 %1045, label %1046, label %1047, !prof !46, !nosanitize !45

1046:                                             ; preds = %1033
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1047:                                             ; preds = %1033
  %1048 = extractvalue { i64, i1 } %1044, 0, !nosanitize !45
  store i64 %1048, ptr %1042, align 8, !tbaa !108
  %1049 = load i32, ptr %1027, align 8, !tbaa !107
  %1050 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1049, i32 %1031), !nosanitize !45
  %1051 = extractvalue { i32, i1 } %1050, 1, !nosanitize !45
  br i1 %1051, label %1052, label %1053, !prof !46, !nosanitize !45

1052:                                             ; preds = %1047
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1053:                                             ; preds = %1047
  %1054 = extractvalue { i32, i1 } %1050, 0, !nosanitize !45
  store i32 %1054, ptr %1027, align 8, !tbaa !107
  %1055 = load i64, ptr %1025, align 8, !tbaa !57
  %1056 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1055, i64 %1030), !nosanitize !45
  %1057 = extractvalue { i64, i1 } %1056, 1, !nosanitize !45
  br i1 %1057, label %1058, label %1059, !prof !46, !nosanitize !45

1058:                                             ; preds = %1053
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1059:                                             ; preds = %1053
  %1060 = extractvalue { i64, i1 } %1056, 0, !nosanitize !45
  store i64 %1060, ptr %1025, align 8, !tbaa !57
  %1061 = icmp eq i64 %1060, 0
  br i1 %1061, label %1062, label %1065

1062:                                             ; preds = %1059
  %1063 = getelementptr inbounds nuw i8, ptr %1024, i64 16
  %1064 = load ptr, ptr %1063, align 8, !tbaa !40
  store ptr %1064, ptr %1036, align 8, !tbaa !58
  br label %1065

1065:                                             ; preds = %1062, %1059, %1018
  %1066 = load ptr, ptr %0, align 8, !tbaa !20
  %1067 = getelementptr inbounds nuw i8, ptr %1066, i64 32
  %1068 = load i32, ptr %1067, align 8, !tbaa !107
  %1069 = icmp eq i32 %1068, 0
  %1070 = select i1 %1069, i32 2, i32 3
  br label %.loopexit47

1071:                                             ; preds = %1002
  %1072 = load i32, ptr %30, align 4, !tbaa !139
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1138, label %1074

1074:                                             ; preds = %1071
  %1075 = load i64, ptr %9, align 8, !tbaa !74
  %1076 = icmp sgt i64 %1075, -1
  br i1 %1076, label %1077, label %1081

1077:                                             ; preds = %1074
  %1078 = load ptr, ptr %7, align 8, !tbaa !34
  %1079 = and i64 %1075, 4294967295
  %1080 = getelementptr inbounds nuw i8, ptr %1078, i64 %1079
  br label %1081

1081:                                             ; preds = %1077, %1074
  %1082 = phi ptr [ %1080, %1077 ], [ null, %1074 ]
  %1083 = zext i32 %1003 to i64
  %1084 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1083, i64 %1075), !nosanitize !45
  %1085 = extractvalue { i64, i1 } %1084, 1, !nosanitize !45
  br i1 %1085, label %963, label %1086, !prof !46, !nosanitize !45

1086:                                             ; preds = %1081
  %1087 = extractvalue { i64, i1 } %1084, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1082, i64 noundef %1087, i32 noundef 0) #11
  %1088 = load i32, ptr %6, align 4, !tbaa !73
  %1089 = zext i32 %1088 to i64
  store i64 %1089, ptr %9, align 8, !tbaa !74
  %1090 = load ptr, ptr %0, align 8, !tbaa !20
  %1091 = getelementptr inbounds nuw i8, ptr %1090, i64 56
  %1092 = load ptr, ptr %1091, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1092) #11
  %1093 = getelementptr inbounds nuw i8, ptr %1092, i64 40
  %1094 = load i64, ptr %1093, align 8, !tbaa !57
  %1095 = getelementptr inbounds nuw i8, ptr %1090, i64 32
  %1096 = load i32, ptr %1095, align 8, !tbaa !107
  %1097 = zext i32 %1096 to i64
  %1098 = tail call i64 @llvm.umin.i64(i64 %1094, i64 %1097)
  %1099 = trunc nuw i64 %1098 to i32
  %1100 = icmp eq i64 %1098, 0
  br i1 %1100, label %1133, label %1101

1101:                                             ; preds = %1086
  %1102 = getelementptr inbounds nuw i8, ptr %1090, i64 24
  %1103 = load ptr, ptr %1102, align 8, !tbaa !106
  %1104 = getelementptr inbounds nuw i8, ptr %1092, i64 32
  %1105 = load ptr, ptr %1104, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1103, ptr align 1 %1105, i64 %1098, i1 false)
  %1106 = load ptr, ptr %1102, align 8, !tbaa !106
  %1107 = getelementptr inbounds nuw i8, ptr %1106, i64 %1098
  store ptr %1107, ptr %1102, align 8, !tbaa !106
  %1108 = load ptr, ptr %1104, align 8, !tbaa !58
  %1109 = getelementptr inbounds nuw i8, ptr %1108, i64 %1098
  store ptr %1109, ptr %1104, align 8, !tbaa !58
  %1110 = getelementptr inbounds nuw i8, ptr %1090, i64 40
  %1111 = load i64, ptr %1110, align 8, !tbaa !108
  %1112 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1111, i64 %1098), !nosanitize !45
  %1113 = extractvalue { i64, i1 } %1112, 1, !nosanitize !45
  br i1 %1113, label %1114, label %1115, !prof !46, !nosanitize !45

1114:                                             ; preds = %1101
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1115:                                             ; preds = %1101
  %1116 = extractvalue { i64, i1 } %1112, 0, !nosanitize !45
  store i64 %1116, ptr %1110, align 8, !tbaa !108
  %1117 = load i32, ptr %1095, align 8, !tbaa !107
  %1118 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1117, i32 %1099), !nosanitize !45
  %1119 = extractvalue { i32, i1 } %1118, 1, !nosanitize !45
  br i1 %1119, label %1120, label %1121, !prof !46, !nosanitize !45

1120:                                             ; preds = %1115
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1121:                                             ; preds = %1115
  %1122 = extractvalue { i32, i1 } %1118, 0, !nosanitize !45
  store i32 %1122, ptr %1095, align 8, !tbaa !107
  %1123 = load i64, ptr %1093, align 8, !tbaa !57
  %1124 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1123, i64 %1098), !nosanitize !45
  %1125 = extractvalue { i64, i1 } %1124, 1, !nosanitize !45
  br i1 %1125, label %1126, label %1127, !prof !46, !nosanitize !45

1126:                                             ; preds = %1121
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1127:                                             ; preds = %1121
  %1128 = extractvalue { i64, i1 } %1124, 0, !nosanitize !45
  store i64 %1128, ptr %1093, align 8, !tbaa !57
  %1129 = icmp eq i64 %1128, 0
  br i1 %1129, label %1130, label %1133

1130:                                             ; preds = %1127
  %1131 = getelementptr inbounds nuw i8, ptr %1092, i64 16
  %1132 = load ptr, ptr %1131, align 8, !tbaa !40
  store ptr %1132, ptr %1104, align 8, !tbaa !58
  br label %1133

1133:                                             ; preds = %1130, %1127, %1086
  %1134 = load ptr, ptr %0, align 8, !tbaa !20
  %1135 = getelementptr inbounds nuw i8, ptr %1134, i64 32
  %1136 = load i32, ptr %1135, align 8, !tbaa !107
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %.loopexit47, label %1138

1138:                                             ; preds = %1133, %1071
  br label %.loopexit47

.loopexit47:                                      ; preds = %938, %814, %364, %1138, %1133, %1065
  %1139 = phi i32 [ 0, %1133 ], [ %1070, %1065 ], [ 1, %1138 ], [ 0, %364 ], [ 0, %814 ], [ 0, %938 ]
  ret i32 %1139
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

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
!130 = !{!"branch_weights", i32 127, i32 134217473}
!131 = distinct !{!131, !85}
!132 = !{!"branch_weights", i32 1, i32 127}
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
