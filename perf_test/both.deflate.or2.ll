; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.deflate.or.ll'
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
  br i1 %4, label %792, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %792, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %792, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %792, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %792

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %792 [
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
  br i1 %24, label %792, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !30
  switch i32 %27, label %34 [
    i32 2, label %792
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %792

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !75
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %792

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !75
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %792

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

105:                                              ; preds = %374, %80
  %106 = phi i32 [ %302, %374 ], [ %104, %80 ]
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
  br i1 %260, label %379, label %261

261:                                              ; preds = %253
  %262 = load ptr, ptr %92, align 8, !tbaa !34
  %263 = zext i32 %255 to i64
  %264 = getelementptr inbounds nuw i8, ptr %262, i64 %263
  %265 = zext i32 %254 to i64
  %266 = getelementptr inbounds nuw i8, ptr %264, i64 %265
  %267 = tail call i32 @llvm.umin.i32(i32 %259, i32 %256)
  %268 = icmp eq i32 %256, 0
  br i1 %268, label %296, label %269

269:                                              ; preds = %261
  %270 = sub i32 %259, %267
  store i32 %270, ptr %258, align 8, !tbaa !81
  %271 = load ptr, ptr %257, align 8, !tbaa !82
  %272 = zext i32 %267 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %266, ptr align 1 %271, i64 %272, i1 false)
  %273 = getelementptr inbounds nuw i8, ptr %257, i64 56
  %274 = load ptr, ptr %273, align 8, !tbaa !19
  %275 = getelementptr inbounds nuw i8, ptr %274, i64 48
  %276 = load i32, ptr %275, align 8, !tbaa !30
  switch i32 %276, label %285 [
    i32 1, label %277
    i32 2, label %281
  ]

277:                                              ; preds = %269
  %278 = getelementptr inbounds nuw i8, ptr %257, i64 96
  %279 = load i64, ptr %278, align 8, !tbaa !59
  %280 = tail call i64 @adler32(i64 noundef %279, ptr noundef %266, i32 noundef %267) #11
  store i64 %280, ptr %278, align 8, !tbaa !59
  br label %285

281:                                              ; preds = %269
  %282 = getelementptr inbounds nuw i8, ptr %257, i64 96
  %283 = load i64, ptr %282, align 8, !tbaa !59
  %284 = tail call i64 @crc32(i64 noundef %283, ptr noundef %266, i32 noundef %267) #11
  store i64 %284, ptr %282, align 8, !tbaa !59
  br label %285

285:                                              ; preds = %281, %277, %269
  %286 = load ptr, ptr %257, align 8, !tbaa !82
  %287 = getelementptr inbounds nuw i8, ptr %286, i64 %272
  store ptr %287, ptr %257, align 8, !tbaa !82
  %288 = getelementptr inbounds nuw i8, ptr %257, i64 16
  %289 = load i64, ptr %288, align 8, !tbaa !55
  %290 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %289, i64 %272), !nosanitize !45
  %291 = extractvalue { i64, i1 } %290, 1, !nosanitize !45
  br i1 %291, label %292, label %293, !prof !46, !nosanitize !45

292:                                              ; preds = %285
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

293:                                              ; preds = %285
  %294 = extractvalue { i64, i1 } %290, 0, !nosanitize !45
  store i64 %294, ptr %288, align 8, !tbaa !55
  %295 = load i32, ptr %82, align 4, !tbaa !75
  br label %296

296:                                              ; preds = %293, %261
  %297 = phi i32 [ %254, %261 ], [ %295, %293 ]
  %298 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %297, i32 %267), !nosanitize !45
  %299 = extractvalue { i32, i1 } %298, 1, !nosanitize !45
  br i1 %299, label %300, label %301, !prof !46, !nosanitize !45

300:                                              ; preds = %296
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

301:                                              ; preds = %296
  %302 = extractvalue { i32, i1 } %298, 0, !nosanitize !45
  store i32 %302, ptr %82, align 4, !tbaa !75
  %303 = load i32, ptr %95, align 4, !tbaa !76
  %304 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %302, i32 %303), !nosanitize !45
  %305 = extractvalue { i32, i1 } %304, 1, !nosanitize !45
  br i1 %305, label %306, label %307, !prof !46, !nosanitize !45

306:                                              ; preds = %301
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

307:                                              ; preds = %301
  %308 = extractvalue { i32, i1 } %304, 0, !nosanitize !45
  %309 = icmp ugt i32 %308, 2
  br i1 %309, label %310, label %.loopexit45

310:                                              ; preds = %307
  %311 = load i32, ptr %90, align 4, !tbaa !73
  %312 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %311, i32 %303), !nosanitize !45
  %313 = extractvalue { i32, i1 } %312, 0, !nosanitize !45
  %314 = extractvalue { i32, i1 } %312, 1, !nosanitize !45
  br i1 %314, label %315, label %316, !prof !46, !nosanitize !45

315:                                              ; preds = %310
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

316:                                              ; preds = %310
  %317 = load ptr, ptr %92, align 8, !tbaa !34
  %318 = zext i32 %313 to i64
  %319 = getelementptr inbounds nuw i8, ptr %317, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !8
  %321 = zext i8 %320 to i32
  store i32 %321, ptr %100, align 8, !tbaa !80
  %322 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %313, i32 1), !nosanitize !45
  %323 = extractvalue { i32, i1 } %322, 1, !nosanitize !45
  br i1 %323, label %324, label %325, !prof !46, !nosanitize !45

324:                                              ; preds = %316
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

325:                                              ; preds = %316
  %326 = extractvalue { i32, i1 } %322, 0, !nosanitize !45
  %327 = load i32, ptr %101, align 8, !tbaa !53
  %328 = shl i32 %321, %327
  %329 = zext i32 %326 to i64
  %330 = getelementptr inbounds nuw i8, ptr %317, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !8
  %332 = zext i8 %331 to i32
  %333 = xor i32 %328, %332
  %334 = load i32, ptr %102, align 4, !tbaa !52
  %335 = and i32 %333, %334
  store i32 %335, ptr %100, align 8, !tbaa !80
  br label %336

336:                                              ; preds = %369, %325
  %337 = phi i32 [ %335, %325 ], [ %354, %369 ]
  %338 = phi i32 [ %303, %325 ], [ %365, %369 ]
  %339 = phi i32 [ %313, %325 ], [ %370, %369 ]
  %340 = icmp eq i32 %338, 0
  br i1 %340, label %.loopexit45, label %341

341:                                              ; preds = %336
  %342 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %339, i32 3), !nosanitize !45
  %343 = extractvalue { i32, i1 } %342, 1, !nosanitize !45
  br i1 %343, label %344, label %345, !prof !46, !nosanitize !45

344:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

345:                                              ; preds = %341
  %346 = shl i32 %337, %327
  %347 = extractvalue { i32, i1 } %342, 0, !nosanitize !45
  %348 = add i32 %347, -1
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds nuw i8, ptr %317, i64 %349
  %351 = load i8, ptr %350, align 1, !tbaa !8
  %352 = zext i8 %351 to i32
  %353 = xor i32 %346, %352
  %354 = and i32 %353, %334
  store i32 %354, ptr %100, align 8, !tbaa !80
  %355 = load ptr, ptr %97, align 8, !tbaa !37
  %356 = zext i32 %354 to i64
  %357 = getelementptr inbounds nuw [2 x i8], ptr %355, i64 %356
  %358 = load i16, ptr %357, align 2, !tbaa !62
  %359 = load ptr, ptr %98, align 8, !tbaa !35
  %360 = load i32, ptr %103, align 8, !tbaa !33
  %361 = and i32 %360, %339
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds nuw [2 x i8], ptr %359, i64 %362
  store i16 %358, ptr %363, align 2, !tbaa !62
  %364 = trunc i32 %339 to i16
  store i16 %364, ptr %357, align 2, !tbaa !62
  %365 = add i32 %338, -1
  store i32 %365, ptr %95, align 4, !tbaa !76
  %366 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %302, i32 %365), !nosanitize !45
  %367 = extractvalue { i32, i1 } %366, 1, !nosanitize !45
  br i1 %367, label %368, label %369, !prof !46, !nosanitize !45

368:                                              ; preds = %345
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

369:                                              ; preds = %345
  %370 = add nuw i32 %339, 1
  %371 = extractvalue { i32, i1 } %366, 0, !nosanitize !45
  %372 = icmp ult i32 %371, 3
  br i1 %372, label %.loopexit45, label %336, !llvm.loop !91

.loopexit45:                                      ; preds = %369, %336, %307
  %373 = icmp ult i32 %302, 262
  br i1 %373, label %374, label %379

374:                                              ; preds = %.loopexit45
  %375 = load ptr, ptr %15, align 8, !tbaa !20
  %376 = getelementptr inbounds nuw i8, ptr %375, i64 8
  %377 = load i32, ptr %376, align 8, !tbaa !81
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %105, !llvm.loop !92

379:                                              ; preds = %374, %.loopexit45, %253
  %380 = phi i32 [ %302, %374 ], [ %302, %.loopexit45 ], [ %254, %253 ]
  %381 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %382 = load i64, ptr %381, align 8, !tbaa !38
  %383 = load i64, ptr %89, align 8, !tbaa !61
  %384 = icmp ult i64 %382, %383
  br i1 %384, label %385, label %420

385:                                              ; preds = %379
  %386 = load i32, ptr %90, align 4, !tbaa !73
  %387 = zext i32 %386 to i64
  %388 = zext i32 %380 to i64
  %389 = add nuw nsw i64 %387, %388
  %390 = icmp ult i64 %382, %389
  br i1 %390, label %391, label %401

391:                                              ; preds = %385
  %392 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %383, i64 %389), !nosanitize !45
  %393 = extractvalue { i64, i1 } %392, 1, !nosanitize !45
  br i1 %393, label %394, label %395, !prof !46, !nosanitize !45

394:                                              ; preds = %391
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

395:                                              ; preds = %391
  %396 = extractvalue { i64, i1 } %392, 0, !nosanitize !45
  %397 = tail call i64 @llvm.umin.i64(i64 %396, i64 258)
  %398 = load ptr, ptr %92, align 8, !tbaa !34
  %399 = getelementptr inbounds nuw i8, ptr %398, i64 %389
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %399, i8 0, i64 %397, i1 false)
  %400 = add nuw nsw i64 %397, %389
  br label %417

401:                                              ; preds = %385
  %402 = add nuw nsw i64 %389, 258
  %403 = icmp ult i64 %382, %402
  br i1 %403, label %404, label %420

404:                                              ; preds = %401
  %405 = sub nuw nsw i64 %402, %382
  %406 = sub i64 %383, %382
  %407 = tail call i64 @llvm.umin.i64(i64 %405, i64 %406)
  %408 = load ptr, ptr %92, align 8, !tbaa !34
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 %382
  %410 = and i64 %407, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %409, i8 0, i64 %410, i1 false)
  %411 = load i64, ptr %381, align 8, !tbaa !38
  %412 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %411, i64 %407), !nosanitize !45
  %413 = extractvalue { i64, i1 } %412, 1, !nosanitize !45
  br i1 %413, label %414, label %415, !prof !46, !nosanitize !45

414:                                              ; preds = %404
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

415:                                              ; preds = %404
  %416 = extractvalue { i64, i1 } %412, 0, !nosanitize !45
  br label %417

417:                                              ; preds = %415, %395
  %418 = phi i64 [ %400, %395 ], [ %416, %415 ]
  store i64 %418, ptr %381, align 8, !tbaa !38
  %419 = load i32, ptr %82, align 4, !tbaa !75
  br label %420

420:                                              ; preds = %417, %401, %379
  %421 = phi i32 [ %380, %379 ], [ %380, %401 ], [ %419, %417 ]
  %422 = icmp ugt i32 %421, 2
  br i1 %422, label %.preheader, label %.loopexit44

.preheader:                                       ; preds = %420, %778
  %423 = phi i32 [ %779, %778 ], [ %421, %420 ]
  %424 = load i32, ptr %90, align 4, !tbaa !73
  %425 = load i32, ptr %101, align 8, !tbaa !53
  %426 = load ptr, ptr %92, align 8, !tbaa !34
  %427 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %424)
  %428 = add i32 %423, -3
  %429 = icmp ugt i32 %427, %428
  br i1 %429, label %430, label %459, !prof !93, !nosanitize !45

430:                                              ; preds = %.preheader
  %431 = load i32, ptr %100, align 8, !tbaa !80
  %432 = add i32 %423, -2
  %433 = load i32, ptr %102, align 4, !tbaa !52
  %434 = load ptr, ptr %97, align 8, !tbaa !37
  %435 = load ptr, ptr %98, align 8, !tbaa !35
  %436 = load i32, ptr %103, align 8, !tbaa !33
  %437 = zext i32 %424 to i64
  br label %438

438:                                              ; preds = %438, %430
  %indvars.iv = phi i64 [ %indvars.iv.next, %438 ], [ %437, %430 ]
  %439 = phi i32 [ %449, %438 ], [ %431, %430 ]
  %440 = phi i32 [ %457, %438 ], [ %432, %430 ]
  %441 = shl i32 %439, %425
  %442 = trunc nuw i64 %indvars.iv to i32
  %443 = add nuw i64 %indvars.iv, 2
  %444 = and i64 %443, 4294967295
  %445 = getelementptr inbounds nuw i8, ptr %426, i64 %444
  %446 = load i8, ptr %445, align 1, !tbaa !8
  %447 = zext i8 %446 to i32
  %448 = xor i32 %441, %447
  %449 = and i32 %448, %433
  store i32 %449, ptr %100, align 8, !tbaa !80
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds nuw [2 x i8], ptr %434, i64 %450
  %452 = load i16, ptr %451, align 2, !tbaa !62
  %453 = and i32 %436, %442
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds nuw [2 x i8], ptr %435, i64 %454
  store i16 %452, ptr %455, align 2, !tbaa !62
  %456 = trunc i64 %indvars.iv to i16
  store i16 %456, ptr %451, align 2, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %457 = add i32 %440, -1
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %460, label %438, !llvm.loop !94

459:                                              ; preds = %.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

460:                                              ; preds = %438
  %461 = trunc nuw i64 %indvars.iv.next to i32
  store i32 %461, ptr %90, align 4, !tbaa !73
  store i32 2, ptr %82, align 4, !tbaa !75
  %462 = load i32, ptr %81, align 8, !tbaa !32
  %463 = zext i32 %462 to i64
  br label %464

464:                                              ; preds = %733, %460
  %465 = phi i32 [ %661, %733 ], [ 2, %460 ]
  %466 = load i64, ptr %89, align 8, !tbaa !61
  %467 = zext nneg i32 %465 to i64
  %468 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %466, i64 %467), !nosanitize !45
  %469 = extractvalue { i64, i1 } %468, 1, !nosanitize !45
  br i1 %469, label %470, label %471, !prof !46, !nosanitize !45

470:                                              ; preds = %464
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

471:                                              ; preds = %464
  %472 = extractvalue { i64, i1 } %468, 0, !nosanitize !45
  %473 = load i32, ptr %90, align 4, !tbaa !73
  %474 = zext i32 %473 to i64
  %475 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %472, i64 %474), !nosanitize !45
  %476 = extractvalue { i64, i1 } %475, 1, !nosanitize !45
  br i1 %476, label %477, label %478, !prof !46, !nosanitize !45

477:                                              ; preds = %471
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

478:                                              ; preds = %471
  %479 = extractvalue { i64, i1 } %475, 0, !nosanitize !45
  %480 = trunc i64 %479 to i32
  %481 = load i32, ptr %81, align 8, !tbaa !32
  %482 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %481, i32 262), !nosanitize !45
  %483 = extractvalue { i32, i1 } %482, 1, !nosanitize !45
  br i1 %483, label %484, label %485, !prof !46, !nosanitize !45

484:                                              ; preds = %478
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

485:                                              ; preds = %478
  %486 = extractvalue { i32, i1 } %482, 0, !nosanitize !45
  %487 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %462, i32 %486), !nosanitize !45
  %488 = extractvalue { i32, i1 } %487, 1, !nosanitize !45
  br i1 %488, label %489, label %490, !prof !46, !nosanitize !45

489:                                              ; preds = %485
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

490:                                              ; preds = %485
  %491 = extractvalue { i32, i1 } %487, 0, !nosanitize !45
  %492 = icmp ult i32 %473, %491
  br i1 %492, label %612, label %493

493:                                              ; preds = %490
  %494 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %462, i32 %480), !nosanitize !45
  %495 = extractvalue { i32, i1 } %494, 1, !nosanitize !45
  br i1 %495, label %496, label %497, !prof !46, !nosanitize !45

496:                                              ; preds = %493
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

497:                                              ; preds = %493
  %498 = extractvalue { i32, i1 } %494, 0, !nosanitize !45
  %499 = load ptr, ptr %92, align 8, !tbaa !34
  %500 = getelementptr inbounds nuw i8, ptr %499, i64 %463
  %501 = zext i32 %498 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %499, ptr align 1 %500, i64 %501, i1 false)
  %502 = load i32, ptr %93, align 8, !tbaa !83
  %503 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %502, i32 %462), !nosanitize !45
  %504 = extractvalue { i32, i1 } %503, 1, !nosanitize !45
  br i1 %504, label %505, label %506, !prof !46, !nosanitize !45

505:                                              ; preds = %497
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

506:                                              ; preds = %497
  %507 = extractvalue { i32, i1 } %503, 0, !nosanitize !45
  store i32 %507, ptr %93, align 8, !tbaa !83
  %508 = load i32, ptr %90, align 4, !tbaa !73
  %509 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %508, i32 %462), !nosanitize !45
  %510 = extractvalue { i32, i1 } %509, 1, !nosanitize !45
  br i1 %510, label %511, label %512, !prof !46, !nosanitize !45

511:                                              ; preds = %512, %506
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

512:                                              ; preds = %506
  %513 = extractvalue { i32, i1 } %509, 0, !nosanitize !45
  store i32 %513, ptr %90, align 4, !tbaa !73
  %514 = load i64, ptr %94, align 8, !tbaa !74
  %515 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %514, i64 %463), !nosanitize !45
  %516 = extractvalue { i64, i1 } %515, 1, !nosanitize !45
  br i1 %516, label %511, label %517, !prof !46, !nosanitize !45

517:                                              ; preds = %512
  %518 = extractvalue { i64, i1 } %515, 0, !nosanitize !45
  store i64 %518, ptr %94, align 8, !tbaa !74
  %519 = load i32, ptr %95, align 4, !tbaa !76
  %520 = icmp ugt i32 %519, %513
  br i1 %520, label %521, label %522

521:                                              ; preds = %517
  store i32 %513, ptr %95, align 4, !tbaa !76
  br label %522

522:                                              ; preds = %521, %517
  %523 = load i32, ptr %81, align 8, !tbaa !32
  %524 = load i32, ptr %96, align 4, !tbaa !36
  %525 = load ptr, ptr %97, align 8, !tbaa !37
  %526 = zext i32 %524 to i64
  %527 = getelementptr inbounds nuw [2 x i8], ptr %525, i64 %526
  %528 = icmp eq i32 %524, 0
  br i1 %528, label %552, label %529, !prof !46, !nosanitize !45

529:                                              ; preds = %522
  %530 = icmp ult i32 %524, 8
  br i1 %530, label %.preheader142, label %531

.preheader142:                                    ; preds = %546, %529
  %.ph143 = phi ptr [ %548, %546 ], [ %527, %529 ]
  %.ph144 = phi i32 [ %550, %546 ], [ %524, %529 ]
  br label %558

531:                                              ; preds = %529
  %532 = and i64 %526, 4294967288
  %533 = insertelement <8 x i32> poison, i32 %523, i64 0
  %534 = shufflevector <8 x i32> %533, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %535

535:                                              ; preds = %535, %531
  %536 = phi i64 [ 0, %531 ], [ %544, %535 ]
  %537 = mul nsw i64 %536, -2
  %538 = getelementptr i8, ptr %527, i64 %537
  %539 = getelementptr inbounds i8, ptr %538, i64 -16
  %540 = load <8 x i16>, ptr %539, align 2, !tbaa !62
  %541 = zext <8 x i16> %540 to <8 x i32>
  %542 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %541, <8 x i32> %534)
  %543 = trunc nuw <8 x i32> %542 to <8 x i16>
  store <8 x i16> %543, ptr %539, align 2, !tbaa !62
  %544 = add nuw nsw i64 %536, 8
  %545 = icmp eq i64 %544, %532
  br i1 %545, label %546, label %535, !llvm.loop !95

546:                                              ; preds = %535
  %547 = mul nsw i64 %532, -2
  %548 = getelementptr i8, ptr %527, i64 %547
  %549 = trunc nuw i64 %532 to i32
  %550 = sub i32 %524, %549
  %551 = icmp eq i64 %532, %526
  br i1 %551, label %.loopexit43, label %.preheader142

552:                                              ; preds = %522
  %553 = getelementptr inbounds i8, ptr %527, i64 -2
  %554 = load i16, ptr %553, align 2, !tbaa !62
  %555 = zext i16 %554 to i32
  %556 = tail call i32 @llvm.usub.sat.i32(i32 %555, i32 %523)
  %557 = trunc nuw i32 %556 to i16
  store i16 %557, ptr %553, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

558:                                              ; preds = %.preheader142, %558
  %559 = phi ptr [ %561, %558 ], [ %.ph143, %.preheader142 ]
  %560 = phi i32 [ %566, %558 ], [ %.ph144, %.preheader142 ]
  %561 = getelementptr inbounds i8, ptr %559, i64 -2
  %562 = load i16, ptr %561, align 2, !tbaa !62
  %563 = zext i16 %562 to i32
  %564 = tail call i32 @llvm.usub.sat.i32(i32 %563, i32 %523)
  %565 = trunc nuw i32 %564 to i16
  store i16 %565, ptr %561, align 2, !tbaa !62
  %566 = add i32 %560, -1
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %.loopexit43, label %558, !llvm.loop !96

.loopexit43:                                      ; preds = %558, %546
  %568 = icmp eq i32 %523, 0
  br i1 %568, label %569, label %570, !prof !46, !nosanitize !45

569:                                              ; preds = %.loopexit43
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

570:                                              ; preds = %.loopexit43
  %571 = load ptr, ptr %98, align 8, !tbaa !35
  %572 = zext i32 %523 to i64
  %573 = getelementptr inbounds nuw [2 x i8], ptr %571, i64 %572
  %574 = icmp ult i32 %523, 8
  br i1 %574, label %.preheader140, label %575

575:                                              ; preds = %570
  %576 = and i64 %572, 4294967288
  %577 = insertelement <8 x i32> poison, i32 %523, i64 0
  %578 = shufflevector <8 x i32> %577, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %579

579:                                              ; preds = %579, %575
  %580 = phi i64 [ 0, %575 ], [ %588, %579 ]
  %581 = mul nsw i64 %580, -2
  %582 = getelementptr i8, ptr %573, i64 %581
  %583 = getelementptr inbounds i8, ptr %582, i64 -16
  %584 = load <8 x i16>, ptr %583, align 2, !tbaa !62
  %585 = zext <8 x i16> %584 to <8 x i32>
  %586 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %585, <8 x i32> %578)
  %587 = trunc nuw <8 x i32> %586 to <8 x i16>
  store <8 x i16> %587, ptr %583, align 2, !tbaa !62
  %588 = add nuw nsw i64 %580, 8
  %589 = icmp eq i64 %588, %576
  br i1 %589, label %590, label %579, !llvm.loop !97

590:                                              ; preds = %579
  %591 = mul nsw i64 %576, -2
  %592 = getelementptr i8, ptr %573, i64 %591
  %593 = trunc nuw i64 %576 to i32
  %594 = sub i32 %523, %593
  %595 = icmp eq i64 %576, %572
  br i1 %595, label %.loopexit42, label %.preheader140

.preheader140:                                    ; preds = %590, %570
  %.ph = phi ptr [ %592, %590 ], [ %573, %570 ]
  %.ph141 = phi i32 [ %594, %590 ], [ %523, %570 ]
  br label %596

596:                                              ; preds = %.preheader140, %596
  %597 = phi ptr [ %599, %596 ], [ %.ph, %.preheader140 ]
  %598 = phi i32 [ %604, %596 ], [ %.ph141, %.preheader140 ]
  %599 = getelementptr inbounds i8, ptr %597, i64 -2
  %600 = load i16, ptr %599, align 2, !tbaa !62
  %601 = zext i16 %600 to i32
  %602 = tail call i32 @llvm.usub.sat.i32(i32 %601, i32 %523)
  %603 = trunc nuw i32 %602 to i16
  store i16 %603, ptr %599, align 2, !tbaa !62
  %604 = add i32 %598, -1
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %.loopexit42, label %596, !llvm.loop !98

.loopexit42:                                      ; preds = %596, %590
  store i32 1, ptr %99, align 8, !tbaa !63
  %606 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %480, i32 %462), !nosanitize !45
  %607 = extractvalue { i32, i1 } %606, 1, !nosanitize !45
  br i1 %607, label %608, label %609, !prof !46, !nosanitize !45

608:                                              ; preds = %.loopexit42
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

609:                                              ; preds = %.loopexit42
  %610 = extractvalue { i32, i1 } %606, 0, !nosanitize !45
  %611 = load i32, ptr %82, align 4, !tbaa !75
  br label %612

612:                                              ; preds = %609, %490
  %613 = phi i32 [ %611, %609 ], [ %465, %490 ]
  %614 = phi i32 [ %513, %609 ], [ %473, %490 ]
  %615 = phi i32 [ %610, %609 ], [ %480, %490 ]
  %616 = load ptr, ptr %15, align 8, !tbaa !20
  %617 = getelementptr inbounds nuw i8, ptr %616, i64 8
  %618 = load i32, ptr %617, align 8, !tbaa !81
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %738, label %620

620:                                              ; preds = %612
  %621 = load ptr, ptr %92, align 8, !tbaa !34
  %622 = zext i32 %614 to i64
  %623 = getelementptr inbounds nuw i8, ptr %621, i64 %622
  %624 = zext i32 %613 to i64
  %625 = getelementptr inbounds nuw i8, ptr %623, i64 %624
  %626 = tail call i32 @llvm.umin.i32(i32 %618, i32 %615)
  %627 = icmp eq i32 %615, 0
  br i1 %627, label %655, label %628

628:                                              ; preds = %620
  %629 = sub i32 %618, %626
  store i32 %629, ptr %617, align 8, !tbaa !81
  %630 = load ptr, ptr %616, align 8, !tbaa !82
  %631 = zext i32 %626 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %625, ptr align 1 %630, i64 %631, i1 false)
  %632 = getelementptr inbounds nuw i8, ptr %616, i64 56
  %633 = load ptr, ptr %632, align 8, !tbaa !19
  %634 = getelementptr inbounds nuw i8, ptr %633, i64 48
  %635 = load i32, ptr %634, align 8, !tbaa !30
  switch i32 %635, label %644 [
    i32 1, label %636
    i32 2, label %640
  ]

636:                                              ; preds = %628
  %637 = getelementptr inbounds nuw i8, ptr %616, i64 96
  %638 = load i64, ptr %637, align 8, !tbaa !59
  %639 = tail call i64 @adler32(i64 noundef %638, ptr noundef %625, i32 noundef %626) #11
  store i64 %639, ptr %637, align 8, !tbaa !59
  br label %644

640:                                              ; preds = %628
  %641 = getelementptr inbounds nuw i8, ptr %616, i64 96
  %642 = load i64, ptr %641, align 8, !tbaa !59
  %643 = tail call i64 @crc32(i64 noundef %642, ptr noundef %625, i32 noundef %626) #11
  store i64 %643, ptr %641, align 8, !tbaa !59
  br label %644

644:                                              ; preds = %640, %636, %628
  %645 = load ptr, ptr %616, align 8, !tbaa !82
  %646 = getelementptr inbounds nuw i8, ptr %645, i64 %631
  store ptr %646, ptr %616, align 8, !tbaa !82
  %647 = getelementptr inbounds nuw i8, ptr %616, i64 16
  %648 = load i64, ptr %647, align 8, !tbaa !55
  %649 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %648, i64 %631), !nosanitize !45
  %650 = extractvalue { i64, i1 } %649, 1, !nosanitize !45
  br i1 %650, label %651, label %652, !prof !46, !nosanitize !45

651:                                              ; preds = %644
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

652:                                              ; preds = %644
  %653 = extractvalue { i64, i1 } %649, 0, !nosanitize !45
  store i64 %653, ptr %647, align 8, !tbaa !55
  %654 = load i32, ptr %82, align 4, !tbaa !75
  br label %655

655:                                              ; preds = %652, %620
  %656 = phi i32 [ %613, %620 ], [ %654, %652 ]
  %657 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %656, i32 %626), !nosanitize !45
  %658 = extractvalue { i32, i1 } %657, 1, !nosanitize !45
  br i1 %658, label %659, label %660, !prof !46, !nosanitize !45

659:                                              ; preds = %655
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

660:                                              ; preds = %655
  %661 = extractvalue { i32, i1 } %657, 0, !nosanitize !45
  store i32 %661, ptr %82, align 4, !tbaa !75
  %662 = load i32, ptr %95, align 4, !tbaa !76
  %663 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %661, i32 %662), !nosanitize !45
  %664 = extractvalue { i32, i1 } %663, 1, !nosanitize !45
  br i1 %664, label %665, label %666, !prof !46, !nosanitize !45

665:                                              ; preds = %660
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

666:                                              ; preds = %660
  %667 = extractvalue { i32, i1 } %663, 0, !nosanitize !45
  %668 = icmp ugt i32 %667, 2
  br i1 %668, label %669, label %.loopexit

669:                                              ; preds = %666
  %670 = load i32, ptr %90, align 4, !tbaa !73
  %671 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %670, i32 %662), !nosanitize !45
  %672 = extractvalue { i32, i1 } %671, 0, !nosanitize !45
  %673 = extractvalue { i32, i1 } %671, 1, !nosanitize !45
  br i1 %673, label %674, label %675, !prof !46, !nosanitize !45

674:                                              ; preds = %669
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

675:                                              ; preds = %669
  %676 = load ptr, ptr %92, align 8, !tbaa !34
  %677 = zext i32 %672 to i64
  %678 = getelementptr inbounds nuw i8, ptr %676, i64 %677
  %679 = load i8, ptr %678, align 1, !tbaa !8
  %680 = zext i8 %679 to i32
  store i32 %680, ptr %100, align 8, !tbaa !80
  %681 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %672, i32 1), !nosanitize !45
  %682 = extractvalue { i32, i1 } %681, 1, !nosanitize !45
  br i1 %682, label %683, label %684, !prof !46, !nosanitize !45

683:                                              ; preds = %675
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

684:                                              ; preds = %675
  %685 = extractvalue { i32, i1 } %681, 0, !nosanitize !45
  %686 = load i32, ptr %101, align 8, !tbaa !53
  %687 = shl i32 %680, %686
  %688 = zext i32 %685 to i64
  %689 = getelementptr inbounds nuw i8, ptr %676, i64 %688
  %690 = load i8, ptr %689, align 1, !tbaa !8
  %691 = zext i8 %690 to i32
  %692 = xor i32 %687, %691
  %693 = load i32, ptr %102, align 4, !tbaa !52
  %694 = and i32 %692, %693
  store i32 %694, ptr %100, align 8, !tbaa !80
  br label %695

695:                                              ; preds = %728, %684
  %696 = phi i32 [ %694, %684 ], [ %713, %728 ]
  %697 = phi i32 [ %662, %684 ], [ %724, %728 ]
  %698 = phi i32 [ %672, %684 ], [ %729, %728 ]
  %699 = icmp eq i32 %697, 0
  br i1 %699, label %.loopexit, label %700

700:                                              ; preds = %695
  %701 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %698, i32 3), !nosanitize !45
  %702 = extractvalue { i32, i1 } %701, 1, !nosanitize !45
  br i1 %702, label %703, label %704, !prof !46, !nosanitize !45

703:                                              ; preds = %700
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

704:                                              ; preds = %700
  %705 = shl i32 %696, %686
  %706 = extractvalue { i32, i1 } %701, 0, !nosanitize !45
  %707 = add i32 %706, -1
  %708 = zext i32 %707 to i64
  %709 = getelementptr inbounds nuw i8, ptr %676, i64 %708
  %710 = load i8, ptr %709, align 1, !tbaa !8
  %711 = zext i8 %710 to i32
  %712 = xor i32 %705, %711
  %713 = and i32 %712, %693
  store i32 %713, ptr %100, align 8, !tbaa !80
  %714 = load ptr, ptr %97, align 8, !tbaa !37
  %715 = zext i32 %713 to i64
  %716 = getelementptr inbounds nuw [2 x i8], ptr %714, i64 %715
  %717 = load i16, ptr %716, align 2, !tbaa !62
  %718 = load ptr, ptr %98, align 8, !tbaa !35
  %719 = load i32, ptr %103, align 8, !tbaa !33
  %720 = and i32 %719, %698
  %721 = zext i32 %720 to i64
  %722 = getelementptr inbounds nuw [2 x i8], ptr %718, i64 %721
  store i16 %717, ptr %722, align 2, !tbaa !62
  %723 = trunc i32 %698 to i16
  store i16 %723, ptr %716, align 2, !tbaa !62
  %724 = add i32 %697, -1
  store i32 %724, ptr %95, align 4, !tbaa !76
  %725 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %661, i32 %724), !nosanitize !45
  %726 = extractvalue { i32, i1 } %725, 1, !nosanitize !45
  br i1 %726, label %727, label %728, !prof !46, !nosanitize !45

727:                                              ; preds = %704
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

728:                                              ; preds = %704
  %729 = add nuw i32 %698, 1
  %730 = extractvalue { i32, i1 } %725, 0, !nosanitize !45
  %731 = icmp ult i32 %730, 3
  br i1 %731, label %.loopexit, label %695, !llvm.loop !91

.loopexit:                                        ; preds = %728, %695, %666
  %732 = icmp ult i32 %661, 262
  br i1 %732, label %733, label %738

733:                                              ; preds = %.loopexit
  %734 = load ptr, ptr %15, align 8, !tbaa !20
  %735 = getelementptr inbounds nuw i8, ptr %734, i64 8
  %736 = load i32, ptr %735, align 8, !tbaa !81
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %738, label %464, !llvm.loop !92

738:                                              ; preds = %733, %.loopexit, %612
  %739 = phi i32 [ %661, %733 ], [ %661, %.loopexit ], [ %613, %612 ]
  %740 = load i64, ptr %381, align 8, !tbaa !38
  %741 = load i64, ptr %89, align 8, !tbaa !61
  %742 = icmp ult i64 %740, %741
  br i1 %742, label %743, label %778

743:                                              ; preds = %738
  %744 = load i32, ptr %90, align 4, !tbaa !73
  %745 = zext i32 %744 to i64
  %746 = zext i32 %739 to i64
  %747 = add nuw nsw i64 %745, %746
  %748 = icmp ult i64 %740, %747
  br i1 %748, label %749, label %759

749:                                              ; preds = %743
  %750 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %741, i64 %747), !nosanitize !45
  %751 = extractvalue { i64, i1 } %750, 1, !nosanitize !45
  br i1 %751, label %752, label %753, !prof !46, !nosanitize !45

752:                                              ; preds = %749
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

753:                                              ; preds = %749
  %754 = extractvalue { i64, i1 } %750, 0, !nosanitize !45
  %755 = tail call i64 @llvm.umin.i64(i64 %754, i64 258)
  %756 = load ptr, ptr %92, align 8, !tbaa !34
  %757 = getelementptr inbounds nuw i8, ptr %756, i64 %747
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %757, i8 0, i64 %755, i1 false)
  %758 = add nuw nsw i64 %755, %747
  br label %775

759:                                              ; preds = %743
  %760 = add nuw nsw i64 %747, 258
  %761 = icmp ult i64 %740, %760
  br i1 %761, label %762, label %778

762:                                              ; preds = %759
  %763 = sub nuw nsw i64 %760, %740
  %764 = sub i64 %741, %740
  %765 = tail call i64 @llvm.umin.i64(i64 %763, i64 %764)
  %766 = load ptr, ptr %92, align 8, !tbaa !34
  %767 = getelementptr inbounds nuw i8, ptr %766, i64 %740
  %768 = and i64 %765, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %767, i8 0, i64 %768, i1 false)
  %769 = load i64, ptr %381, align 8, !tbaa !38
  %770 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %769, i64 %765), !nosanitize !45
  %771 = extractvalue { i64, i1 } %770, 1, !nosanitize !45
  br i1 %771, label %772, label %773, !prof !46, !nosanitize !45

772:                                              ; preds = %762
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

773:                                              ; preds = %762
  %774 = extractvalue { i64, i1 } %770, 0, !nosanitize !45
  br label %775

775:                                              ; preds = %773, %753
  %776 = phi i64 [ %758, %753 ], [ %774, %773 ]
  store i64 %776, ptr %381, align 8, !tbaa !38
  %777 = load i32, ptr %82, align 4, !tbaa !75
  br label %778

778:                                              ; preds = %775, %759, %738
  %779 = phi i32 [ %739, %738 ], [ %739, %759 ], [ %777, %775 ]
  %780 = icmp ugt i32 %779, 2
  br i1 %780, label %.preheader, label %.loopexit44, !llvm.loop !99

.loopexit44:                                      ; preds = %778, %420
  %781 = phi i32 [ %421, %420 ], [ %779, %778 ]
  %782 = load i32, ptr %90, align 4, !tbaa !73
  %783 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %782, i32 %781), !nosanitize !45
  %784 = extractvalue { i32, i1 } %783, 1, !nosanitize !45
  br i1 %784, label %785, label %786, !prof !46, !nosanitize !45

785:                                              ; preds = %.loopexit44
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

786:                                              ; preds = %.loopexit44
  %787 = extractvalue { i32, i1 } %783, 0, !nosanitize !45
  store i32 %787, ptr %90, align 4, !tbaa !73
  %788 = zext i32 %787 to i64
  store i64 %788, ptr %94, align 8, !tbaa !74
  store i32 %781, ptr %95, align 4, !tbaa !76
  store i32 0, ptr %82, align 4, !tbaa !75
  %789 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %789, align 8, !tbaa !77
  %790 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %790, align 8, !tbaa !78
  %791 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %791, align 8, !tbaa !79
  store ptr %88, ptr %0, align 8, !tbaa !82
  store i32 %87, ptr %86, align 8, !tbaa !81
  store i32 %27, ptr %26, align 8, !tbaa !30
  br label %792

792:                                              ; preds = %786, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
  %793 = phi i32 [ 0, %786 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %793
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
  br i1 %4, label %1093, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1093, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1093, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1093, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1093

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %1093 [
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
  br i1 %28, label %1093, label %29

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
  br i1 %44, label %1050, label %45

45:                                               ; preds = %34, %29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %47 = load i32, ptr %46, align 4, !tbaa !60
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %1050, label %49

49:                                               ; preds = %45
  switch i32 %22, label %1093 [
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
  br label %1093

68:                                               ; preds = %63, %58
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %70 = load i32, ptr %69, align 8, !tbaa !107
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %73, ptr %74, align 8, !tbaa !9
  br label %1027

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
  br label %137

123:                                              ; preds = %117
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1027

124:                                              ; preds = %75
  br i1 %57, label %126, label %137

125:                                              ; preds = %126
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !45
  unreachable, !nosanitize !45

126:                                              ; preds = %124
  %127 = add i32 %47, 1073741824
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %129, label %125, !prof !93, !nosanitize !45

129:                                              ; preds = %126
  %130 = shl nsw i32 %47, 1
  %131 = icmp sgt i32 %47, 4
  %.neg = select i1 %131, i32 -9, i32 0
  %132 = add i32 %.neg, %130
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %135, ptr %136, align 8, !tbaa !9
  br label %1027

137:                                              ; preds = %129, %124, %121
  %138 = phi i64 [ %118, %121 ], [ 0, %124 ], [ 0, %129 ]
  %139 = phi i32 [ %122, %121 ], [ %22, %124 ], [ %22, %129 ]
  switch i32 %139, label %253 [
    i32 666, label %140
    i32 42, label %146
  ]

140:                                              ; preds = %137
  %141 = load i32, ptr %55, align 8, !tbaa !81
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %985, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %144, ptr %145, align 8, !tbaa !9
  br label %1027

146:                                              ; preds = %137
  %147 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %148 = load i32, ptr %147, align 8, !tbaa !30
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 113, ptr %21, align 8, !tbaa !29
  br label %982

151:                                              ; preds = %146
  %152 = getelementptr inbounds nuw i8, ptr %15, i64 84
  %153 = load i32, ptr %152, align 4, !tbaa !31
  %154 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %153, i32 8), !nosanitize !45
  %155 = extractvalue { i32, i1 } %154, 1, !nosanitize !45
  br i1 %155, label %156, label %157, !prof !46, !nosanitize !45

156:                                              ; preds = %151
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

157:                                              ; preds = %151
  %158 = extractvalue { i32, i1 } %154, 0, !nosanitize !45
  %159 = shl i32 %158, 12
  %160 = load i32, ptr %31, align 8, !tbaa !49
  %161 = icmp sgt i32 %160, 1
  br i1 %161, label %170, label %162

162:                                              ; preds = %157
  %163 = load i32, ptr %30, align 4, !tbaa !48
  %164 = icmp slt i32 %163, 2
  br i1 %164, label %170, label %165

165:                                              ; preds = %162
  %166 = icmp samesign ult i32 %163, 6
  br i1 %166, label %170, label %167

167:                                              ; preds = %165
  %168 = icmp eq i32 %163, 6
  %169 = select i1 %168, i32 128, i32 192
  br label %170

170:                                              ; preds = %167, %165, %162, %157
  %171 = phi i32 [ 64, %165 ], [ 0, %157 ], [ %169, %167 ], [ 0, %162 ]
  %172 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %173 = or disjoint i32 %171, %159
  %174 = load i32, ptr %172, align 4, !tbaa !73
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %175, i32 2048, i32 2080
  %177 = or disjoint i32 %176, %173
  %178 = urem i32 %177, 31
  %179 = or disjoint i32 %178, %177
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %138, i64 1), !nosanitize !45
  %181 = extractvalue { i64, i1 } %180, 1, !nosanitize !45
  br i1 %181, label %182, label %183, !prof !46, !nosanitize !45

182:                                              ; preds = %170
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

183:                                              ; preds = %170
  %184 = extractvalue { i64, i1 } %180, 0, !nosanitize !45
  %185 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %186 = load ptr, ptr %185, align 8, !tbaa !40
  %187 = lshr i32 %177, 8
  %188 = trunc i32 %187 to i8
  store i64 %184, ptr %76, align 8, !tbaa !57
  %189 = getelementptr inbounds nuw i8, ptr %186, i64 %138
  store i8 %188, ptr %189, align 1, !tbaa !8
  %190 = load i64, ptr %76, align 8, !tbaa !57
  %191 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 1), !nosanitize !45
  %192 = extractvalue { i64, i1 } %191, 1, !nosanitize !45
  br i1 %192, label %193, label %194, !prof !46, !nosanitize !45

193:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

194:                                              ; preds = %183
  %195 = extractvalue { i64, i1 } %191, 0, !nosanitize !45
  %196 = load ptr, ptr %185, align 8, !tbaa !40
  %197 = trunc i32 %179 to i8
  %198 = xor i8 %197, 31
  store i64 %195, ptr %76, align 8, !tbaa !57
  %199 = getelementptr inbounds nuw i8, ptr %196, i64 %190
  store i8 %198, ptr %199, align 1, !tbaa !8
  %200 = load i32, ptr %172, align 4, !tbaa !73
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %245, label %202

202:                                              ; preds = %194
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %204 = load i64, ptr %203, align 8, !tbaa !59
  %205 = lshr i64 %204, 16
  %206 = load i64, ptr %76, align 8, !tbaa !57
  %207 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %206, i64 1), !nosanitize !45
  %208 = extractvalue { i64, i1 } %207, 1, !nosanitize !45
  br i1 %208, label %209, label %210, !prof !46, !nosanitize !45

209:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

210:                                              ; preds = %202
  %211 = extractvalue { i64, i1 } %207, 0, !nosanitize !45
  %212 = load ptr, ptr %185, align 8, !tbaa !40
  %213 = lshr i64 %204, 24
  %214 = trunc i64 %213 to i8
  store i64 %211, ptr %76, align 8, !tbaa !57
  %215 = getelementptr inbounds nuw i8, ptr %212, i64 %206
  store i8 %214, ptr %215, align 1, !tbaa !8
  %216 = load i64, ptr %76, align 8, !tbaa !57
  %217 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %216, i64 1), !nosanitize !45
  %218 = extractvalue { i64, i1 } %217, 1, !nosanitize !45
  br i1 %218, label %219, label %220, !prof !46, !nosanitize !45

219:                                              ; preds = %210
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

220:                                              ; preds = %210
  %221 = extractvalue { i64, i1 } %217, 0, !nosanitize !45
  %222 = load ptr, ptr %185, align 8, !tbaa !40
  %223 = trunc i64 %205 to i8
  store i64 %221, ptr %76, align 8, !tbaa !57
  %224 = getelementptr inbounds nuw i8, ptr %222, i64 %216
  store i8 %223, ptr %224, align 1, !tbaa !8
  %225 = load i64, ptr %203, align 8, !tbaa !59
  %226 = trunc i64 %225 to i8
  %227 = load i64, ptr %76, align 8, !tbaa !57
  %228 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %227, i64 1), !nosanitize !45
  %229 = extractvalue { i64, i1 } %228, 1, !nosanitize !45
  br i1 %229, label %230, label %231, !prof !46, !nosanitize !45

230:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

231:                                              ; preds = %220
  %232 = extractvalue { i64, i1 } %228, 0, !nosanitize !45
  %233 = load ptr, ptr %185, align 8, !tbaa !40
  %234 = lshr i64 %225, 8
  %235 = trunc i64 %234 to i8
  store i64 %232, ptr %76, align 8, !tbaa !57
  %236 = getelementptr inbounds nuw i8, ptr %233, i64 %227
  store i8 %235, ptr %236, align 1, !tbaa !8
  %237 = load i64, ptr %76, align 8, !tbaa !57
  %238 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %237, i64 1), !nosanitize !45
  %239 = extractvalue { i64, i1 } %238, 1, !nosanitize !45
  br i1 %239, label %240, label %241, !prof !46, !nosanitize !45

240:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

241:                                              ; preds = %231
  %242 = extractvalue { i64, i1 } %238, 0, !nosanitize !45
  %243 = load ptr, ptr %185, align 8, !tbaa !40
  store i64 %242, ptr %76, align 8, !tbaa !57
  %244 = getelementptr inbounds nuw i8, ptr %243, i64 %237
  store i8 %226, ptr %244, align 1, !tbaa !8
  br label %245

245:                                              ; preds = %241, %194
  %246 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %247 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %246, ptr %247, align 8, !tbaa !59
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %248 = load i64, ptr %76, align 8, !tbaa !57
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = load i32, ptr %21, align 8, !tbaa !29
  br label %253

252:                                              ; preds = %245
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1027

253:                                              ; preds = %250, %137
  %254 = phi i32 [ %251, %250 ], [ %139, %137 ]
  %255 = icmp eq i32 %254, 57
  br i1 %255, label %256, label %511

256:                                              ; preds = %253
  %257 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %257, ptr %258, align 8, !tbaa !59
  %259 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %260 = load i64, ptr %76, align 8, !tbaa !57
  %261 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %260, i64 1), !nosanitize !45
  %262 = extractvalue { i64, i1 } %261, 1, !nosanitize !45
  br i1 %262, label %263, label %264, !prof !46, !nosanitize !45

263:                                              ; preds = %256
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

264:                                              ; preds = %256
  %265 = extractvalue { i64, i1 } %261, 0, !nosanitize !45
  %266 = load ptr, ptr %259, align 8, !tbaa !40
  store i64 %265, ptr %76, align 8, !tbaa !57
  %267 = getelementptr inbounds nuw i8, ptr %266, i64 %260
  store i8 31, ptr %267, align 1, !tbaa !8
  %268 = load i64, ptr %76, align 8, !tbaa !57
  %269 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %268, i64 1), !nosanitize !45
  %270 = extractvalue { i64, i1 } %269, 1, !nosanitize !45
  br i1 %270, label %271, label %272, !prof !46, !nosanitize !45

271:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

272:                                              ; preds = %264
  %273 = extractvalue { i64, i1 } %269, 0, !nosanitize !45
  %274 = load ptr, ptr %259, align 8, !tbaa !40
  store i64 %273, ptr %76, align 8, !tbaa !57
  %275 = getelementptr inbounds nuw i8, ptr %274, i64 %268
  store i8 -117, ptr %275, align 1, !tbaa !8
  %276 = load i64, ptr %76, align 8, !tbaa !57
  %277 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %276, i64 1), !nosanitize !45
  %278 = extractvalue { i64, i1 } %277, 1, !nosanitize !45
  br i1 %278, label %279, label %280, !prof !46, !nosanitize !45

279:                                              ; preds = %272
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

280:                                              ; preds = %272
  %281 = extractvalue { i64, i1 } %277, 0, !nosanitize !45
  %282 = load ptr, ptr %259, align 8, !tbaa !40
  store i64 %281, ptr %76, align 8, !tbaa !57
  %283 = getelementptr inbounds nuw i8, ptr %282, i64 %276
  store i8 8, ptr %283, align 1, !tbaa !8
  %284 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %285 = load ptr, ptr %284, align 8, !tbaa !100
  %286 = icmp eq ptr %285, null
  %287 = load i64, ptr %76, align 8, !tbaa !57
  %288 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %287, i64 1), !nosanitize !45
  %289 = extractvalue { i64, i1 } %288, 1, !nosanitize !45
  br i1 %286, label %290, label %357

290:                                              ; preds = %280
  br i1 %289, label %291, label %292, !prof !46, !nosanitize !45

291:                                              ; preds = %290
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

292:                                              ; preds = %290
  %293 = extractvalue { i64, i1 } %288, 0, !nosanitize !45
  %294 = load ptr, ptr %259, align 8, !tbaa !40
  store i64 %293, ptr %76, align 8, !tbaa !57
  %295 = getelementptr inbounds nuw i8, ptr %294, i64 %287
  store i8 0, ptr %295, align 1, !tbaa !8
  %296 = load i64, ptr %76, align 8, !tbaa !57
  %297 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %296, i64 1), !nosanitize !45
  %298 = extractvalue { i64, i1 } %297, 1, !nosanitize !45
  br i1 %298, label %299, label %300, !prof !46, !nosanitize !45

299:                                              ; preds = %292
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

300:                                              ; preds = %292
  %301 = extractvalue { i64, i1 } %297, 0, !nosanitize !45
  %302 = load ptr, ptr %259, align 8, !tbaa !40
  store i64 %301, ptr %76, align 8, !tbaa !57
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 %296
  store i8 0, ptr %303, align 1, !tbaa !8
  %304 = load i64, ptr %76, align 8, !tbaa !57
  %305 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %304, i64 1), !nosanitize !45
  %306 = extractvalue { i64, i1 } %305, 1, !nosanitize !45
  br i1 %306, label %307, label %308, !prof !46, !nosanitize !45

307:                                              ; preds = %300
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

308:                                              ; preds = %300
  %309 = extractvalue { i64, i1 } %305, 0, !nosanitize !45
  %310 = load ptr, ptr %259, align 8, !tbaa !40
  store i64 %309, ptr %76, align 8, !tbaa !57
  %311 = getelementptr inbounds nuw i8, ptr %310, i64 %304
  store i8 0, ptr %311, align 1, !tbaa !8
  %312 = load i64, ptr %76, align 8, !tbaa !57
  %313 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %312, i64 1), !nosanitize !45
  %314 = extractvalue { i64, i1 } %313, 1, !nosanitize !45
  br i1 %314, label %315, label %316, !prof !46, !nosanitize !45

315:                                              ; preds = %308
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

316:                                              ; preds = %308
  %317 = extractvalue { i64, i1 } %313, 0, !nosanitize !45
  %318 = load ptr, ptr %259, align 8, !tbaa !40
  store i64 %317, ptr %76, align 8, !tbaa !57
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 %312
  store i8 0, ptr %319, align 1, !tbaa !8
  %320 = load i64, ptr %76, align 8, !tbaa !57
  %321 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %320, i64 1), !nosanitize !45
  %322 = extractvalue { i64, i1 } %321, 1, !nosanitize !45
  br i1 %322, label %323, label %324, !prof !46, !nosanitize !45

323:                                              ; preds = %316
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

324:                                              ; preds = %316
  %325 = extractvalue { i64, i1 } %321, 0, !nosanitize !45
  %326 = load ptr, ptr %259, align 8, !tbaa !40
  store i64 %325, ptr %76, align 8, !tbaa !57
  %327 = getelementptr inbounds nuw i8, ptr %326, i64 %320
  store i8 0, ptr %327, align 1, !tbaa !8
  %328 = load i32, ptr %30, align 4, !tbaa !48
  %329 = icmp eq i32 %328, 9
  br i1 %329, label %336, label %330

330:                                              ; preds = %324
  %331 = load i32, ptr %31, align 8, !tbaa !49
  %332 = icmp sgt i32 %331, 1
  %333 = icmp slt i32 %328, 2
  %334 = or i1 %333, %332
  %335 = select i1 %334, i8 4, i8 0
  br label %336

336:                                              ; preds = %330, %324
  %337 = phi i8 [ %335, %330 ], [ 2, %324 ]
  %338 = load i64, ptr %76, align 8, !tbaa !57
  %339 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %338, i64 1), !nosanitize !45
  %340 = extractvalue { i64, i1 } %339, 1, !nosanitize !45
  br i1 %340, label %341, label %342, !prof !46, !nosanitize !45

341:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

342:                                              ; preds = %336
  %343 = extractvalue { i64, i1 } %339, 0, !nosanitize !45
  %344 = load ptr, ptr %259, align 8, !tbaa !40
  store i64 %343, ptr %76, align 8, !tbaa !57
  %345 = getelementptr inbounds nuw i8, ptr %344, i64 %338
  store i8 %337, ptr %345, align 1, !tbaa !8
  %346 = load i64, ptr %76, align 8, !tbaa !57
  %347 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %346, i64 1), !nosanitize !45
  %348 = extractvalue { i64, i1 } %347, 1, !nosanitize !45
  br i1 %348, label %349, label %350, !prof !46, !nosanitize !45

349:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

350:                                              ; preds = %342
  %351 = extractvalue { i64, i1 } %347, 0, !nosanitize !45
  %352 = load ptr, ptr %259, align 8, !tbaa !40
  store i64 %351, ptr %76, align 8, !tbaa !57
  %353 = getelementptr inbounds nuw i8, ptr %352, i64 %346
  store i8 3, ptr %353, align 1, !tbaa !8
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %354 = load i64, ptr %76, align 8, !tbaa !57
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %509, label %356

356:                                              ; preds = %350
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1027

357:                                              ; preds = %280
  br i1 %289, label %358, label %359, !prof !46, !nosanitize !45

358:                                              ; preds = %357
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

359:                                              ; preds = %357
  %360 = extractvalue { i64, i1 } %288, 0, !nosanitize !45
  %361 = load ptr, ptr %259, align 8, !tbaa !40
  %362 = getelementptr inbounds nuw i8, ptr %285, i64 56
  %363 = load ptr, ptr %362, align 8, !tbaa !109
  %364 = icmp eq ptr %363, null
  %365 = getelementptr inbounds nuw i8, ptr %285, i64 40
  %366 = load ptr, ptr %365, align 8, !tbaa !111
  %367 = icmp eq ptr %366, null
  %368 = getelementptr inbounds nuw i8, ptr %285, i64 24
  %369 = load ptr, ptr %368, align 8, !tbaa !112
  %370 = icmp eq ptr %369, null
  %371 = load i32, ptr %285, align 8, !tbaa !113
  %372 = icmp ne i32 %371, 0
  %373 = getelementptr inbounds nuw i8, ptr %285, i64 68
  %374 = load i32, ptr %373, align 4, !tbaa !114
  %375 = icmp eq i32 %374, 0
  %376 = select i1 %375, i8 0, i8 2
  %377 = zext i1 %372 to i8
  %378 = select i1 %370, i8 0, i8 4
  %379 = select i1 %367, i8 0, i8 8
  %380 = select i1 %364, i8 0, i8 16
  %381 = or disjoint i8 %379, %380
  %382 = or disjoint i8 %381, %378
  %383 = or disjoint i8 %382, %377
  %384 = or disjoint i8 %383, %376
  store i64 %360, ptr %76, align 8, !tbaa !57
  %385 = getelementptr inbounds nuw i8, ptr %361, i64 %287
  store i8 %384, ptr %385, align 1, !tbaa !8
  %386 = load i64, ptr %76, align 8, !tbaa !57
  %387 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %386, i64 1), !nosanitize !45
  %388 = extractvalue { i64, i1 } %387, 1, !nosanitize !45
  br i1 %388, label %389, label %390, !prof !46, !nosanitize !45

389:                                              ; preds = %359
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

390:                                              ; preds = %359
  %391 = extractvalue { i64, i1 } %387, 0, !nosanitize !45
  %392 = load ptr, ptr %259, align 8, !tbaa !40
  %393 = load ptr, ptr %284, align 8, !tbaa !100
  %394 = getelementptr inbounds nuw i8, ptr %393, i64 8
  %395 = load i64, ptr %394, align 8, !tbaa !115
  %396 = trunc i64 %395 to i8
  store i64 %391, ptr %76, align 8, !tbaa !57
  %397 = getelementptr inbounds nuw i8, ptr %392, i64 %386
  store i8 %396, ptr %397, align 1, !tbaa !8
  %398 = load i64, ptr %76, align 8, !tbaa !57
  %399 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %398, i64 1), !nosanitize !45
  %400 = extractvalue { i64, i1 } %399, 1, !nosanitize !45
  br i1 %400, label %401, label %402, !prof !46, !nosanitize !45

401:                                              ; preds = %390
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

402:                                              ; preds = %390
  %403 = extractvalue { i64, i1 } %399, 0, !nosanitize !45
  %404 = load ptr, ptr %259, align 8, !tbaa !40
  %405 = load ptr, ptr %284, align 8, !tbaa !100
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 8
  %407 = load i64, ptr %406, align 8, !tbaa !115
  %408 = lshr i64 %407, 8
  %409 = trunc i64 %408 to i8
  store i64 %403, ptr %76, align 8, !tbaa !57
  %410 = getelementptr inbounds nuw i8, ptr %404, i64 %398
  store i8 %409, ptr %410, align 1, !tbaa !8
  %411 = load i64, ptr %76, align 8, !tbaa !57
  %412 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %411, i64 1), !nosanitize !45
  %413 = extractvalue { i64, i1 } %412, 1, !nosanitize !45
  br i1 %413, label %414, label %415, !prof !46, !nosanitize !45

414:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

415:                                              ; preds = %402
  %416 = extractvalue { i64, i1 } %412, 0, !nosanitize !45
  %417 = load ptr, ptr %259, align 8, !tbaa !40
  %418 = load ptr, ptr %284, align 8, !tbaa !100
  %419 = getelementptr inbounds nuw i8, ptr %418, i64 8
  %420 = load i64, ptr %419, align 8, !tbaa !115
  %421 = lshr i64 %420, 16
  %422 = trunc i64 %421 to i8
  store i64 %416, ptr %76, align 8, !tbaa !57
  %423 = getelementptr inbounds nuw i8, ptr %417, i64 %411
  store i8 %422, ptr %423, align 1, !tbaa !8
  %424 = load i64, ptr %76, align 8, !tbaa !57
  %425 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %424, i64 1), !nosanitize !45
  %426 = extractvalue { i64, i1 } %425, 1, !nosanitize !45
  br i1 %426, label %427, label %428, !prof !46, !nosanitize !45

427:                                              ; preds = %415
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

428:                                              ; preds = %415
  %429 = extractvalue { i64, i1 } %425, 0, !nosanitize !45
  %430 = load ptr, ptr %259, align 8, !tbaa !40
  %431 = load ptr, ptr %284, align 8, !tbaa !100
  %432 = getelementptr inbounds nuw i8, ptr %431, i64 8
  %433 = load i64, ptr %432, align 8, !tbaa !115
  %434 = lshr i64 %433, 24
  %435 = trunc i64 %434 to i8
  store i64 %429, ptr %76, align 8, !tbaa !57
  %436 = getelementptr inbounds nuw i8, ptr %430, i64 %424
  store i8 %435, ptr %436, align 1, !tbaa !8
  %437 = load i32, ptr %30, align 4, !tbaa !48
  %438 = icmp eq i32 %437, 9
  br i1 %438, label %445, label %439

439:                                              ; preds = %428
  %440 = load i32, ptr %31, align 8, !tbaa !49
  %441 = icmp sgt i32 %440, 1
  %442 = icmp slt i32 %437, 2
  %443 = or i1 %442, %441
  %444 = select i1 %443, i8 4, i8 0
  br label %445

445:                                              ; preds = %439, %428
  %446 = phi i8 [ %444, %439 ], [ 2, %428 ]
  %447 = load i64, ptr %76, align 8, !tbaa !57
  %448 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %447, i64 1), !nosanitize !45
  %449 = extractvalue { i64, i1 } %448, 1, !nosanitize !45
  br i1 %449, label %450, label %451, !prof !46, !nosanitize !45

450:                                              ; preds = %445
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

451:                                              ; preds = %445
  %452 = extractvalue { i64, i1 } %448, 0, !nosanitize !45
  %453 = load ptr, ptr %259, align 8, !tbaa !40
  store i64 %452, ptr %76, align 8, !tbaa !57
  %454 = getelementptr inbounds nuw i8, ptr %453, i64 %447
  store i8 %446, ptr %454, align 1, !tbaa !8
  %455 = load i64, ptr %76, align 8, !tbaa !57
  %456 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %455, i64 1), !nosanitize !45
  %457 = extractvalue { i64, i1 } %456, 1, !nosanitize !45
  br i1 %457, label %458, label %459, !prof !46, !nosanitize !45

458:                                              ; preds = %451
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

459:                                              ; preds = %451
  %460 = extractvalue { i64, i1 } %456, 0, !nosanitize !45
  %461 = load ptr, ptr %259, align 8, !tbaa !40
  %462 = load ptr, ptr %284, align 8, !tbaa !100
  %463 = getelementptr inbounds nuw i8, ptr %462, i64 20
  %464 = load i32, ptr %463, align 4, !tbaa !116
  %465 = trunc i32 %464 to i8
  store i64 %460, ptr %76, align 8, !tbaa !57
  %466 = getelementptr inbounds nuw i8, ptr %461, i64 %455
  store i8 %465, ptr %466, align 1, !tbaa !8
  %467 = load ptr, ptr %284, align 8, !tbaa !100
  %468 = getelementptr inbounds nuw i8, ptr %467, i64 24
  %469 = load ptr, ptr %468, align 8, !tbaa !112
  %470 = icmp eq ptr %469, null
  br i1 %470, label %497, label %471

471:                                              ; preds = %459
  %472 = load i64, ptr %76, align 8, !tbaa !57
  %473 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %472, i64 1), !nosanitize !45
  %474 = extractvalue { i64, i1 } %473, 1, !nosanitize !45
  br i1 %474, label %475, label %476, !prof !46, !nosanitize !45

475:                                              ; preds = %471
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

476:                                              ; preds = %471
  %477 = extractvalue { i64, i1 } %473, 0, !nosanitize !45
  %478 = load ptr, ptr %259, align 8, !tbaa !40
  %479 = getelementptr inbounds nuw i8, ptr %467, i64 32
  %480 = load i32, ptr %479, align 8, !tbaa !117
  %481 = trunc i32 %480 to i8
  store i64 %477, ptr %76, align 8, !tbaa !57
  %482 = getelementptr inbounds nuw i8, ptr %478, i64 %472
  store i8 %481, ptr %482, align 1, !tbaa !8
  %483 = load i64, ptr %76, align 8, !tbaa !57
  %484 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %483, i64 1), !nosanitize !45
  %485 = extractvalue { i64, i1 } %484, 1, !nosanitize !45
  br i1 %485, label %486, label %487, !prof !46, !nosanitize !45

486:                                              ; preds = %476
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

487:                                              ; preds = %476
  %488 = extractvalue { i64, i1 } %484, 0, !nosanitize !45
  %489 = load ptr, ptr %259, align 8, !tbaa !40
  %490 = load ptr, ptr %284, align 8, !tbaa !100
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 32
  %492 = load i32, ptr %491, align 8, !tbaa !117
  %493 = lshr i32 %492, 8
  %494 = trunc i32 %493 to i8
  store i64 %488, ptr %76, align 8, !tbaa !57
  %495 = getelementptr inbounds nuw i8, ptr %489, i64 %483
  store i8 %494, ptr %495, align 1, !tbaa !8
  %496 = load ptr, ptr %284, align 8, !tbaa !100
  br label %497

497:                                              ; preds = %487, %459
  %498 = phi ptr [ %496, %487 ], [ %467, %459 ]
  %499 = getelementptr inbounds nuw i8, ptr %498, i64 68
  %500 = load i32, ptr %499, align 4, !tbaa !114
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %507, label %502

502:                                              ; preds = %497
  %503 = load i64, ptr %258, align 8, !tbaa !59
  %504 = load ptr, ptr %259, align 8, !tbaa !40
  %505 = load i64, ptr %76, align 8, !tbaa !57
  %506 = tail call i64 @crc32_z(i64 noundef %503, ptr noundef %504, i64 noundef %505) #11
  store i64 %506, ptr %258, align 8, !tbaa !59
  br label %507

507:                                              ; preds = %502, %497
  %508 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 0, ptr %508, align 8, !tbaa !118
  store i32 69, ptr %21, align 8, !tbaa !29
  br label %513

509:                                              ; preds = %350
  %510 = load i32, ptr %21, align 8, !tbaa !29
  br label %511

511:                                              ; preds = %509, %253
  %512 = phi i32 [ %510, %509 ], [ %254, %253 ]
  switch i32 %512, label %982 [
    i32 69, label %513
    i32 73, label %714
    i32 91, label %826
    i32 103, label %937
  ]

513:                                              ; preds = %511, %507
  %514 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %515 = load ptr, ptr %514, align 8, !tbaa !100
  %516 = getelementptr inbounds nuw i8, ptr %515, i64 24
  %517 = load ptr, ptr %516, align 8, !tbaa !112
  %518 = icmp eq ptr %517, null
  br i1 %518, label %713, label %519

519:                                              ; preds = %513
  %520 = getelementptr inbounds nuw i8, ptr %515, i64 32
  %521 = load i32, ptr %520, align 8, !tbaa !117
  %522 = and i32 %521, 65535
  %523 = zext nneg i32 %522 to i64
  %524 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %525 = load i64, ptr %524, align 8, !tbaa !118
  %526 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %523, i64 %525), !nosanitize !45
  %527 = extractvalue { i64, i1 } %526, 1, !nosanitize !45
  br i1 %527, label %528, label %529, !prof !46, !nosanitize !45

528:                                              ; preds = %519
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

529:                                              ; preds = %519
  %530 = load i64, ptr %76, align 8, !tbaa !57
  %531 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %532 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %533 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %534 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %535 = extractvalue { i64, i1 } %526, 0
  %536 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %530, i64 %535), !nosanitize !45
  %537 = extractvalue { i64, i1 } %536, 1, !nosanitize !45
  br i1 %537, label %610, label %538, !prof !46, !nosanitize !45

538:                                              ; preds = %529
  %539 = extractvalue { i64, i1 } %536, 0, !nosanitize !45
  %540 = load i64, ptr %531, align 8, !tbaa !41
  %541 = icmp ugt i64 %539, %540
  br i1 %541, label %542, label %686

542:                                              ; preds = %538
  %543 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %540, i64 %530), !nosanitize !45
  %544 = extractvalue { i64, i1 } %543, 0, !nosanitize !45
  %545 = extractvalue { i64, i1 } %543, 1, !nosanitize !45
  br i1 %545, label %615, label %546, !prof !46, !nosanitize !45

546:                                              ; preds = %542
  %547 = load ptr, ptr %532, align 8, !tbaa !40
  %548 = getelementptr inbounds nuw i8, ptr %547, i64 %530
  %549 = getelementptr inbounds nuw i8, ptr %517, i64 %525
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %548, ptr nonnull align 1 %549, i64 %544, i1 false)
  %550 = load i64, ptr %531, align 8, !tbaa !41
  store i64 %550, ptr %76, align 8, !tbaa !57
  %551 = load ptr, ptr %514, align 8, !tbaa !100
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 68
  %553 = load i32, ptr %552, align 4, !tbaa !114
  %554 = icmp ne i32 %553, 0
  %555 = icmp ugt i64 %550, %530
  %556 = select i1 %554, i1 %555, i1 false
  br i1 %556, label %557, label %563

557:                                              ; preds = %546
  %558 = sub nuw i64 %550, %530
  %559 = load ptr, ptr %532, align 8, !tbaa !40
  %560 = getelementptr inbounds nuw i8, ptr %559, i64 %530
  %561 = load i64, ptr %533, align 8, !tbaa !59
  %562 = tail call i64 @crc32_z(i64 noundef %561, ptr noundef %560, i64 noundef %558) #11
  store i64 %562, ptr %533, align 8, !tbaa !59
  br label %563

563:                                              ; preds = %557, %546
  %564 = load i64, ptr %524, align 8, !tbaa !118
  %565 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %564, i64 %544), !nosanitize !45
  %566 = extractvalue { i64, i1 } %565, 1, !nosanitize !45
  br i1 %566, label %.loopexit, label %567, !prof !46, !nosanitize !45

567:                                              ; preds = %563
  %568 = extractvalue { i64, i1 } %565, 0, !nosanitize !45
  store i64 %568, ptr %524, align 8, !tbaa !118
  %569 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %569) #11
  %570 = getelementptr inbounds nuw i8, ptr %569, i64 40
  %571 = load i64, ptr %570, align 8, !tbaa !57
  %572 = load i32, ptr %69, align 8, !tbaa !107
  %573 = zext i32 %572 to i64
  %574 = tail call i64 @llvm.umin.i64(i64 %571, i64 %573)
  %575 = trunc nuw i64 %574 to i32
  %576 = icmp eq i64 %574, 0
  br i1 %576, label %604, label %577

577:                                              ; preds = %567
  %578 = load ptr, ptr %51, align 8, !tbaa !106
  %579 = getelementptr inbounds nuw i8, ptr %569, i64 32
  %580 = load ptr, ptr %579, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %578, ptr align 1 %580, i64 %574, i1 false)
  %581 = load ptr, ptr %51, align 8, !tbaa !106
  %582 = getelementptr inbounds nuw i8, ptr %581, i64 %574
  store ptr %582, ptr %51, align 8, !tbaa !106
  %583 = load ptr, ptr %579, align 8, !tbaa !58
  %584 = getelementptr inbounds nuw i8, ptr %583, i64 %574
  store ptr %584, ptr %579, align 8, !tbaa !58
  %585 = load i64, ptr %534, align 8, !tbaa !108
  %586 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %585, i64 %574), !nosanitize !45
  %587 = extractvalue { i64, i1 } %586, 1, !nosanitize !45
  br i1 %587, label %.loopexit37, label %588, !prof !46, !nosanitize !45

588:                                              ; preds = %577
  %589 = extractvalue { i64, i1 } %586, 0, !nosanitize !45
  store i64 %589, ptr %534, align 8, !tbaa !108
  %590 = load i32, ptr %69, align 8, !tbaa !107
  %591 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %590, i32 %575), !nosanitize !45
  %592 = extractvalue { i32, i1 } %591, 1, !nosanitize !45
  br i1 %592, label %.loopexit38, label %593, !prof !46, !nosanitize !45

593:                                              ; preds = %588
  %594 = extractvalue { i32, i1 } %591, 0, !nosanitize !45
  store i32 %594, ptr %69, align 8, !tbaa !107
  %595 = load i64, ptr %570, align 8, !tbaa !57
  %596 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %595, i64 %574), !nosanitize !45
  %597 = extractvalue { i64, i1 } %596, 1, !nosanitize !45
  br i1 %597, label %.loopexit39, label %598, !prof !46, !nosanitize !45

598:                                              ; preds = %593
  %599 = extractvalue { i64, i1 } %596, 0, !nosanitize !45
  store i64 %599, ptr %570, align 8, !tbaa !57
  %600 = icmp eq i64 %599, 0
  br i1 %600, label %601, label %604

601:                                              ; preds = %598
  %602 = getelementptr inbounds nuw i8, ptr %569, i64 16
  %603 = load ptr, ptr %602, align 8, !tbaa !40
  store ptr %603, ptr %579, align 8, !tbaa !58
  br label %604

604:                                              ; preds = %601, %598, %567
  %605 = load i64, ptr %76, align 8, !tbaa !57
  %606 = icmp eq i64 %605, 0
  br i1 %606, label %607, label %.loopexit40

607:                                              ; preds = %604
  %608 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %535, i64 %544), !nosanitize !45
  %609 = extractvalue { i64, i1 } %608, 1, !nosanitize !45
  br i1 %609, label %.loopexit41, label %.preheader, !prof !46, !nosanitize !45

610:                                              ; preds = %529
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

.preheader:                                       ; preds = %607, %678
  %611 = phi { i64, i1 } [ %679, %678 ], [ %608, %607 ]
  %612 = extractvalue { i64, i1 } %611, 0
  %613 = load i64, ptr %531, align 8, !tbaa !41
  %614 = icmp ugt i64 %612, %613
  br i1 %614, label %616, label %681

615:                                              ; preds = %542
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

616:                                              ; preds = %.preheader
  %617 = load ptr, ptr %532, align 8, !tbaa !40
  %618 = load ptr, ptr %514, align 8, !tbaa !100
  %619 = getelementptr inbounds nuw i8, ptr %618, i64 24
  %620 = load ptr, ptr %619, align 8, !tbaa !112
  %621 = load i64, ptr %524, align 8, !tbaa !118
  %622 = getelementptr inbounds nuw i8, ptr %620, i64 %621
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %617, ptr align 1 %622, i64 %613, i1 false)
  %623 = load i64, ptr %531, align 8, !tbaa !41
  store i64 %623, ptr %76, align 8, !tbaa !57
  %624 = load ptr, ptr %514, align 8, !tbaa !100
  %625 = getelementptr inbounds nuw i8, ptr %624, i64 68
  %626 = load i32, ptr %625, align 4, !tbaa !114
  %627 = icmp ne i32 %626, 0
  %628 = icmp ne i64 %623, 0
  %629 = select i1 %627, i1 %628, i1 false
  br i1 %629, label %630, label %634

630:                                              ; preds = %616
  %631 = load ptr, ptr %532, align 8, !tbaa !40
  %632 = load i64, ptr %533, align 8, !tbaa !59
  %633 = tail call i64 @crc32_z(i64 noundef %632, ptr noundef %631, i64 noundef %623) #11
  store i64 %633, ptr %533, align 8, !tbaa !59
  br label %634

634:                                              ; preds = %630, %616
  %635 = load i64, ptr %524, align 8, !tbaa !118
  %636 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %635, i64 %613), !nosanitize !45
  %637 = extractvalue { i64, i1 } %636, 1, !nosanitize !45
  br i1 %637, label %.loopexit, label %638, !prof !46, !nosanitize !45

.loopexit:                                        ; preds = %634, %563
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

638:                                              ; preds = %634
  %639 = extractvalue { i64, i1 } %636, 0, !nosanitize !45
  store i64 %639, ptr %524, align 8, !tbaa !118
  %640 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %640) #11
  %641 = getelementptr inbounds nuw i8, ptr %640, i64 40
  %642 = load i64, ptr %641, align 8, !tbaa !57
  %643 = load i32, ptr %69, align 8, !tbaa !107
  %644 = zext i32 %643 to i64
  %645 = tail call i64 @llvm.umin.i64(i64 %642, i64 %644)
  %646 = trunc nuw i64 %645 to i32
  %647 = icmp eq i64 %645, 0
  br i1 %647, label %675, label %648

648:                                              ; preds = %638
  %649 = load ptr, ptr %51, align 8, !tbaa !106
  %650 = getelementptr inbounds nuw i8, ptr %640, i64 32
  %651 = load ptr, ptr %650, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %649, ptr align 1 %651, i64 %645, i1 false)
  %652 = load ptr, ptr %51, align 8, !tbaa !106
  %653 = getelementptr inbounds nuw i8, ptr %652, i64 %645
  store ptr %653, ptr %51, align 8, !tbaa !106
  %654 = load ptr, ptr %650, align 8, !tbaa !58
  %655 = getelementptr inbounds nuw i8, ptr %654, i64 %645
  store ptr %655, ptr %650, align 8, !tbaa !58
  %656 = load i64, ptr %534, align 8, !tbaa !108
  %657 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %656, i64 %645), !nosanitize !45
  %658 = extractvalue { i64, i1 } %657, 1, !nosanitize !45
  br i1 %658, label %.loopexit37, label %659, !prof !46, !nosanitize !45

.loopexit37:                                      ; preds = %648, %577
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

659:                                              ; preds = %648
  %660 = extractvalue { i64, i1 } %657, 0, !nosanitize !45
  store i64 %660, ptr %534, align 8, !tbaa !108
  %661 = load i32, ptr %69, align 8, !tbaa !107
  %662 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %661, i32 %646), !nosanitize !45
  %663 = extractvalue { i32, i1 } %662, 1, !nosanitize !45
  br i1 %663, label %.loopexit38, label %664, !prof !46, !nosanitize !45

.loopexit38:                                      ; preds = %659, %588
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

664:                                              ; preds = %659
  %665 = extractvalue { i32, i1 } %662, 0, !nosanitize !45
  store i32 %665, ptr %69, align 8, !tbaa !107
  %666 = load i64, ptr %641, align 8, !tbaa !57
  %667 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %666, i64 %645), !nosanitize !45
  %668 = extractvalue { i64, i1 } %667, 1, !nosanitize !45
  br i1 %668, label %.loopexit39, label %669, !prof !46, !nosanitize !45

.loopexit39:                                      ; preds = %664, %593
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

669:                                              ; preds = %664
  %670 = extractvalue { i64, i1 } %667, 0, !nosanitize !45
  store i64 %670, ptr %641, align 8, !tbaa !57
  %671 = icmp eq i64 %670, 0
  br i1 %671, label %672, label %675

672:                                              ; preds = %669
  %673 = getelementptr inbounds nuw i8, ptr %640, i64 16
  %674 = load ptr, ptr %673, align 8, !tbaa !40
  store ptr %674, ptr %650, align 8, !tbaa !58
  br label %675

675:                                              ; preds = %672, %669, %638
  %676 = load i64, ptr %76, align 8, !tbaa !57
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %678, label %.loopexit40

.loopexit40:                                      ; preds = %675, %604
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1027

678:                                              ; preds = %675
  %679 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %612, i64 %613), !nosanitize !45
  %680 = extractvalue { i64, i1 } %679, 1, !nosanitize !45
  br i1 %680, label %.loopexit41, label %.preheader, !prof !46, !llvm.loop !119, !nosanitize !45

.loopexit41:                                      ; preds = %678, %607
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

681:                                              ; preds = %.preheader
  %682 = load ptr, ptr %514, align 8, !tbaa !100
  %683 = getelementptr inbounds nuw i8, ptr %682, i64 24
  %684 = load ptr, ptr %683, align 8, !tbaa !112
  %685 = load i64, ptr %524, align 8, !tbaa !118
  br label %686

686:                                              ; preds = %681, %538
  %687 = phi i64 [ %525, %538 ], [ %685, %681 ]
  %688 = phi ptr [ %517, %538 ], [ %684, %681 ]
  %689 = phi i64 [ %530, %538 ], [ 0, %681 ]
  %690 = phi i64 [ %535, %538 ], [ %612, %681 ]
  %691 = load ptr, ptr %532, align 8, !tbaa !40
  %692 = getelementptr inbounds nuw i8, ptr %691, i64 %689
  %693 = getelementptr inbounds nuw i8, ptr %688, i64 %687
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %692, ptr align 1 %693, i64 %690, i1 false)
  %694 = load i64, ptr %76, align 8, !tbaa !57
  %695 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %694, i64 %690), !nosanitize !45
  %696 = extractvalue { i64, i1 } %695, 0, !nosanitize !45
  %697 = extractvalue { i64, i1 } %695, 1, !nosanitize !45
  br i1 %697, label %698, label %699, !prof !46, !nosanitize !45

698:                                              ; preds = %686
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

699:                                              ; preds = %686
  store i64 %696, ptr %76, align 8, !tbaa !57
  %700 = load ptr, ptr %514, align 8, !tbaa !100
  %701 = getelementptr inbounds nuw i8, ptr %700, i64 68
  %702 = load i32, ptr %701, align 4, !tbaa !114
  %703 = icmp ne i32 %702, 0
  %704 = icmp ugt i64 %696, %689
  %705 = select i1 %703, i1 %704, i1 false
  br i1 %705, label %706, label %712

706:                                              ; preds = %699
  %707 = sub nuw i64 %696, %689
  %708 = load ptr, ptr %532, align 8, !tbaa !40
  %709 = getelementptr inbounds nuw i8, ptr %708, i64 %689
  %710 = load i64, ptr %533, align 8, !tbaa !59
  %711 = tail call i64 @crc32_z(i64 noundef %710, ptr noundef %709, i64 noundef %707) #11
  store i64 %711, ptr %533, align 8, !tbaa !59
  br label %712

712:                                              ; preds = %706, %699
  store i64 0, ptr %524, align 8, !tbaa !118
  br label %713

713:                                              ; preds = %712, %513
  store i32 73, ptr %21, align 8, !tbaa !29
  br label %714

714:                                              ; preds = %713, %511
  %715 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %716 = load ptr, ptr %715, align 8, !tbaa !100
  %717 = getelementptr inbounds nuw i8, ptr %716, i64 40
  %718 = load ptr, ptr %717, align 8, !tbaa !111
  %719 = icmp eq ptr %718, null
  br i1 %719, label %825, label %720

720:                                              ; preds = %714
  %721 = load i64, ptr %76, align 8, !tbaa !57
  %722 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %723 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %724 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %725 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %726 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %727

727:                                              ; preds = %803, %720
  %728 = phi i64 [ %721, %720 ], [ %790, %803 ]
  %729 = load i64, ptr %76, align 8, !tbaa !57
  %730 = load i64, ptr %722, align 8, !tbaa !41
  %731 = icmp eq i64 %729, %730
  br i1 %731, label %732, label %788

732:                                              ; preds = %727
  %733 = load ptr, ptr %715, align 8, !tbaa !100
  %734 = getelementptr inbounds nuw i8, ptr %733, i64 68
  %735 = load i32, ptr %734, align 4, !tbaa !114
  %736 = icmp ne i32 %735, 0
  %737 = icmp ugt i64 %729, %728
  %738 = select i1 %736, i1 %737, i1 false
  br i1 %738, label %739, label %745

739:                                              ; preds = %732
  %740 = sub nuw i64 %729, %728
  %741 = load ptr, ptr %723, align 8, !tbaa !40
  %742 = getelementptr inbounds nuw i8, ptr %741, i64 %728
  %743 = load i64, ptr %724, align 8, !tbaa !59
  %744 = tail call i64 @crc32_z(i64 noundef %743, ptr noundef %742, i64 noundef %740) #11
  store i64 %744, ptr %724, align 8, !tbaa !59
  br label %745

745:                                              ; preds = %739, %732
  %746 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %746) #11
  %747 = getelementptr inbounds nuw i8, ptr %746, i64 40
  %748 = load i64, ptr %747, align 8, !tbaa !57
  %749 = load i32, ptr %69, align 8, !tbaa !107
  %750 = zext i32 %749 to i64
  %751 = tail call i64 @llvm.umin.i64(i64 %748, i64 %750)
  %752 = trunc nuw i64 %751 to i32
  %753 = icmp eq i64 %751, 0
  br i1 %753, label %784, label %754

754:                                              ; preds = %745
  %755 = load ptr, ptr %51, align 8, !tbaa !106
  %756 = getelementptr inbounds nuw i8, ptr %746, i64 32
  %757 = load ptr, ptr %756, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %755, ptr align 1 %757, i64 %751, i1 false)
  %758 = load ptr, ptr %51, align 8, !tbaa !106
  %759 = getelementptr inbounds nuw i8, ptr %758, i64 %751
  store ptr %759, ptr %51, align 8, !tbaa !106
  %760 = load ptr, ptr %756, align 8, !tbaa !58
  %761 = getelementptr inbounds nuw i8, ptr %760, i64 %751
  store ptr %761, ptr %756, align 8, !tbaa !58
  %762 = load i64, ptr %725, align 8, !tbaa !108
  %763 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %762, i64 %751), !nosanitize !45
  %764 = extractvalue { i64, i1 } %763, 1, !nosanitize !45
  br i1 %764, label %765, label %766, !prof !46, !nosanitize !45

765:                                              ; preds = %754
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

766:                                              ; preds = %754
  %767 = extractvalue { i64, i1 } %763, 0, !nosanitize !45
  store i64 %767, ptr %725, align 8, !tbaa !108
  %768 = load i32, ptr %69, align 8, !tbaa !107
  %769 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %768, i32 %752), !nosanitize !45
  %770 = extractvalue { i32, i1 } %769, 1, !nosanitize !45
  br i1 %770, label %771, label %772, !prof !46, !nosanitize !45

771:                                              ; preds = %766
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

772:                                              ; preds = %766
  %773 = extractvalue { i32, i1 } %769, 0, !nosanitize !45
  store i32 %773, ptr %69, align 8, !tbaa !107
  %774 = load i64, ptr %747, align 8, !tbaa !57
  %775 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %774, i64 %751), !nosanitize !45
  %776 = extractvalue { i64, i1 } %775, 1, !nosanitize !45
  br i1 %776, label %777, label %778, !prof !46, !nosanitize !45

777:                                              ; preds = %772
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

778:                                              ; preds = %772
  %779 = extractvalue { i64, i1 } %775, 0, !nosanitize !45
  store i64 %779, ptr %747, align 8, !tbaa !57
  %780 = icmp eq i64 %779, 0
  br i1 %780, label %781, label %784

781:                                              ; preds = %778
  %782 = getelementptr inbounds nuw i8, ptr %746, i64 16
  %783 = load ptr, ptr %782, align 8, !tbaa !40
  store ptr %783, ptr %756, align 8, !tbaa !58
  br label %784

784:                                              ; preds = %781, %778, %745
  %785 = load i64, ptr %76, align 8, !tbaa !57
  %786 = icmp eq i64 %785, 0
  br i1 %786, label %788, label %787

787:                                              ; preds = %784
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1027

788:                                              ; preds = %784, %727
  %789 = phi i64 [ %729, %727 ], [ 0, %784 ]
  %790 = phi i64 [ %728, %727 ], [ 0, %784 ]
  %791 = load i64, ptr %726, align 8, !tbaa !118
  %792 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %791, i64 1), !nosanitize !45
  %793 = extractvalue { i64, i1 } %792, 1, !nosanitize !45
  br i1 %793, label %794, label %795, !prof !46, !nosanitize !45

794:                                              ; preds = %788
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

795:                                              ; preds = %788
  %796 = extractvalue { i64, i1 } %792, 0, !nosanitize !45
  %797 = load ptr, ptr %715, align 8, !tbaa !100
  %798 = getelementptr inbounds nuw i8, ptr %797, i64 40
  %799 = load ptr, ptr %798, align 8, !tbaa !111
  store i64 %796, ptr %726, align 8, !tbaa !118
  %800 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %789, i64 1), !nosanitize !45
  %801 = extractvalue { i64, i1 } %800, 1, !nosanitize !45
  br i1 %801, label %802, label %803, !prof !46, !nosanitize !45

802:                                              ; preds = %795
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

803:                                              ; preds = %795
  %804 = extractvalue { i64, i1 } %800, 0, !nosanitize !45
  %805 = load ptr, ptr %723, align 8, !tbaa !40
  %806 = getelementptr inbounds nuw i8, ptr %799, i64 %791
  %807 = load i8, ptr %806, align 1, !tbaa !8
  store i64 %804, ptr %76, align 8, !tbaa !57
  %808 = getelementptr inbounds nuw i8, ptr %805, i64 %789
  store i8 %807, ptr %808, align 1, !tbaa !8
  %809 = icmp eq i8 %807, 0
  br i1 %809, label %810, label %727, !llvm.loop !122

810:                                              ; preds = %803
  %811 = load ptr, ptr %715, align 8, !tbaa !100
  %812 = getelementptr inbounds nuw i8, ptr %811, i64 68
  %813 = load i32, ptr %812, align 4, !tbaa !114
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %824, label %815

815:                                              ; preds = %810
  %816 = load i64, ptr %76, align 8, !tbaa !57
  %817 = icmp ugt i64 %816, %790
  br i1 %817, label %818, label %824

818:                                              ; preds = %815
  %819 = sub nuw i64 %816, %790
  %820 = load ptr, ptr %723, align 8, !tbaa !40
  %821 = getelementptr inbounds nuw i8, ptr %820, i64 %790
  %822 = load i64, ptr %724, align 8, !tbaa !59
  %823 = tail call i64 @crc32_z(i64 noundef %822, ptr noundef %821, i64 noundef %819) #11
  store i64 %823, ptr %724, align 8, !tbaa !59
  br label %824

824:                                              ; preds = %818, %815, %810
  store i64 0, ptr %726, align 8, !tbaa !118
  br label %825

825:                                              ; preds = %824, %714
  store i32 91, ptr %21, align 8, !tbaa !29
  br label %826

826:                                              ; preds = %825, %511
  %827 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %828 = load ptr, ptr %827, align 8, !tbaa !100
  %829 = getelementptr inbounds nuw i8, ptr %828, i64 56
  %830 = load ptr, ptr %829, align 8, !tbaa !109
  %831 = icmp eq ptr %830, null
  br i1 %831, label %936, label %832

832:                                              ; preds = %826
  %833 = load i64, ptr %76, align 8, !tbaa !57
  %834 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %835 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %836 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %837 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %838 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %839

839:                                              ; preds = %915, %832
  %840 = phi i64 [ %833, %832 ], [ %902, %915 ]
  %841 = load i64, ptr %76, align 8, !tbaa !57
  %842 = load i64, ptr %834, align 8, !tbaa !41
  %843 = icmp eq i64 %841, %842
  br i1 %843, label %844, label %900

844:                                              ; preds = %839
  %845 = load ptr, ptr %827, align 8, !tbaa !100
  %846 = getelementptr inbounds nuw i8, ptr %845, i64 68
  %847 = load i32, ptr %846, align 4, !tbaa !114
  %848 = icmp ne i32 %847, 0
  %849 = icmp ugt i64 %841, %840
  %850 = select i1 %848, i1 %849, i1 false
  br i1 %850, label %851, label %857

851:                                              ; preds = %844
  %852 = sub nuw i64 %841, %840
  %853 = load ptr, ptr %835, align 8, !tbaa !40
  %854 = getelementptr inbounds nuw i8, ptr %853, i64 %840
  %855 = load i64, ptr %836, align 8, !tbaa !59
  %856 = tail call i64 @crc32_z(i64 noundef %855, ptr noundef %854, i64 noundef %852) #11
  store i64 %856, ptr %836, align 8, !tbaa !59
  br label %857

857:                                              ; preds = %851, %844
  %858 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %858) #11
  %859 = getelementptr inbounds nuw i8, ptr %858, i64 40
  %860 = load i64, ptr %859, align 8, !tbaa !57
  %861 = load i32, ptr %69, align 8, !tbaa !107
  %862 = zext i32 %861 to i64
  %863 = tail call i64 @llvm.umin.i64(i64 %860, i64 %862)
  %864 = trunc nuw i64 %863 to i32
  %865 = icmp eq i64 %863, 0
  br i1 %865, label %896, label %866

866:                                              ; preds = %857
  %867 = load ptr, ptr %51, align 8, !tbaa !106
  %868 = getelementptr inbounds nuw i8, ptr %858, i64 32
  %869 = load ptr, ptr %868, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %867, ptr align 1 %869, i64 %863, i1 false)
  %870 = load ptr, ptr %51, align 8, !tbaa !106
  %871 = getelementptr inbounds nuw i8, ptr %870, i64 %863
  store ptr %871, ptr %51, align 8, !tbaa !106
  %872 = load ptr, ptr %868, align 8, !tbaa !58
  %873 = getelementptr inbounds nuw i8, ptr %872, i64 %863
  store ptr %873, ptr %868, align 8, !tbaa !58
  %874 = load i64, ptr %837, align 8, !tbaa !108
  %875 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %874, i64 %863), !nosanitize !45
  %876 = extractvalue { i64, i1 } %875, 1, !nosanitize !45
  br i1 %876, label %877, label %878, !prof !46, !nosanitize !45

877:                                              ; preds = %866
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

878:                                              ; preds = %866
  %879 = extractvalue { i64, i1 } %875, 0, !nosanitize !45
  store i64 %879, ptr %837, align 8, !tbaa !108
  %880 = load i32, ptr %69, align 8, !tbaa !107
  %881 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %880, i32 %864), !nosanitize !45
  %882 = extractvalue { i32, i1 } %881, 1, !nosanitize !45
  br i1 %882, label %883, label %884, !prof !46, !nosanitize !45

883:                                              ; preds = %878
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

884:                                              ; preds = %878
  %885 = extractvalue { i32, i1 } %881, 0, !nosanitize !45
  store i32 %885, ptr %69, align 8, !tbaa !107
  %886 = load i64, ptr %859, align 8, !tbaa !57
  %887 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %886, i64 %863), !nosanitize !45
  %888 = extractvalue { i64, i1 } %887, 1, !nosanitize !45
  br i1 %888, label %889, label %890, !prof !46, !nosanitize !45

889:                                              ; preds = %884
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

890:                                              ; preds = %884
  %891 = extractvalue { i64, i1 } %887, 0, !nosanitize !45
  store i64 %891, ptr %859, align 8, !tbaa !57
  %892 = icmp eq i64 %891, 0
  br i1 %892, label %893, label %896

893:                                              ; preds = %890
  %894 = getelementptr inbounds nuw i8, ptr %858, i64 16
  %895 = load ptr, ptr %894, align 8, !tbaa !40
  store ptr %895, ptr %868, align 8, !tbaa !58
  br label %896

896:                                              ; preds = %893, %890, %857
  %897 = load i64, ptr %76, align 8, !tbaa !57
  %898 = icmp eq i64 %897, 0
  br i1 %898, label %900, label %899

899:                                              ; preds = %896
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1027

900:                                              ; preds = %896, %839
  %901 = phi i64 [ %841, %839 ], [ 0, %896 ]
  %902 = phi i64 [ %840, %839 ], [ 0, %896 ]
  %903 = load i64, ptr %838, align 8, !tbaa !118
  %904 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %903, i64 1), !nosanitize !45
  %905 = extractvalue { i64, i1 } %904, 1, !nosanitize !45
  br i1 %905, label %906, label %907, !prof !46, !nosanitize !45

906:                                              ; preds = %900
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

907:                                              ; preds = %900
  %908 = extractvalue { i64, i1 } %904, 0, !nosanitize !45
  %909 = load ptr, ptr %827, align 8, !tbaa !100
  %910 = getelementptr inbounds nuw i8, ptr %909, i64 56
  %911 = load ptr, ptr %910, align 8, !tbaa !109
  store i64 %908, ptr %838, align 8, !tbaa !118
  %912 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %901, i64 1), !nosanitize !45
  %913 = extractvalue { i64, i1 } %912, 1, !nosanitize !45
  br i1 %913, label %914, label %915, !prof !46, !nosanitize !45

914:                                              ; preds = %907
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

915:                                              ; preds = %907
  %916 = extractvalue { i64, i1 } %912, 0, !nosanitize !45
  %917 = load ptr, ptr %835, align 8, !tbaa !40
  %918 = getelementptr inbounds nuw i8, ptr %911, i64 %903
  %919 = load i8, ptr %918, align 1, !tbaa !8
  store i64 %916, ptr %76, align 8, !tbaa !57
  %920 = getelementptr inbounds nuw i8, ptr %917, i64 %901
  store i8 %919, ptr %920, align 1, !tbaa !8
  %921 = icmp eq i8 %919, 0
  br i1 %921, label %922, label %839, !llvm.loop !123

922:                                              ; preds = %915
  %923 = load ptr, ptr %827, align 8, !tbaa !100
  %924 = getelementptr inbounds nuw i8, ptr %923, i64 68
  %925 = load i32, ptr %924, align 4, !tbaa !114
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %936, label %927

927:                                              ; preds = %922
  %928 = load i64, ptr %76, align 8, !tbaa !57
  %929 = icmp ugt i64 %928, %902
  br i1 %929, label %930, label %936

930:                                              ; preds = %927
  %931 = sub nuw i64 %928, %902
  %932 = load ptr, ptr %835, align 8, !tbaa !40
  %933 = getelementptr inbounds nuw i8, ptr %932, i64 %902
  %934 = load i64, ptr %836, align 8, !tbaa !59
  %935 = tail call i64 @crc32_z(i64 noundef %934, ptr noundef %933, i64 noundef %931) #11
  store i64 %935, ptr %836, align 8, !tbaa !59
  br label %936

936:                                              ; preds = %930, %927, %922, %826
  store i32 103, ptr %21, align 8, !tbaa !29
  br label %937

937:                                              ; preds = %936, %511
  %938 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %939 = load ptr, ptr %938, align 8, !tbaa !100
  %940 = getelementptr inbounds nuw i8, ptr %939, i64 68
  %941 = load i32, ptr %940, align 4, !tbaa !114
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %978, label %943

943:                                              ; preds = %937
  %944 = load i64, ptr %76, align 8, !tbaa !57
  %945 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %944, i64 2), !nosanitize !45
  %946 = extractvalue { i64, i1 } %945, 1, !nosanitize !45
  br i1 %946, label %947, label %948, !prof !46, !nosanitize !45

947:                                              ; preds = %943
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

948:                                              ; preds = %943
  %949 = extractvalue { i64, i1 } %945, 0, !nosanitize !45
  %950 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %951 = load i64, ptr %950, align 8, !tbaa !41
  %952 = icmp ugt i64 %949, %951
  br i1 %952, label %953, label %957

953:                                              ; preds = %948
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %954 = load i64, ptr %76, align 8, !tbaa !57
  %955 = icmp eq i64 %954, 0
  br i1 %955, label %957, label %956

956:                                              ; preds = %953
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1027

957:                                              ; preds = %953, %948
  %958 = phi i64 [ 0, %953 ], [ %944, %948 ]
  %959 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %960 = add nuw i64 %958, 1
  %961 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %962 = load ptr, ptr %961, align 8, !tbaa !40
  %963 = load i64, ptr %959, align 8, !tbaa !59
  %964 = trunc i64 %963 to i8
  store i64 %960, ptr %76, align 8, !tbaa !57
  %965 = getelementptr inbounds nuw i8, ptr %962, i64 %958
  store i8 %964, ptr %965, align 1, !tbaa !8
  %966 = load i64, ptr %76, align 8, !tbaa !57
  %967 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %966, i64 1), !nosanitize !45
  %968 = extractvalue { i64, i1 } %967, 1, !nosanitize !45
  br i1 %968, label %969, label %970, !prof !46, !nosanitize !45

969:                                              ; preds = %957
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

970:                                              ; preds = %957
  %971 = extractvalue { i64, i1 } %967, 0, !nosanitize !45
  %972 = load ptr, ptr %961, align 8, !tbaa !40
  %973 = load i64, ptr %959, align 8, !tbaa !59
  %974 = lshr i64 %973, 8
  %975 = trunc i64 %974 to i8
  store i64 %971, ptr %76, align 8, !tbaa !57
  %976 = getelementptr inbounds nuw i8, ptr %972, i64 %966
  store i8 %975, ptr %976, align 1, !tbaa !8
  %977 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %977, ptr %959, align 8, !tbaa !59
  br label %978

978:                                              ; preds = %970, %937
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %979 = load i64, ptr %76, align 8, !tbaa !57
  %980 = icmp eq i64 %979, 0
  br i1 %980, label %982, label %981

981:                                              ; preds = %978
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1027

982:                                              ; preds = %978, %511, %150
  %983 = load i32, ptr %55, align 8, !tbaa !81
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %985, label %992

985:                                              ; preds = %982, %140
  %986 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %987 = load i32, ptr %986, align 4, !tbaa !75
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %989, label %992

989:                                              ; preds = %985
  %990 = load i32, ptr %21, align 8, !tbaa !29
  %991 = icmp eq i32 %990, 666
  br i1 %991, label %1027, label %992

992:                                              ; preds = %989, %985, %982
  %993 = load i32, ptr %30, align 4, !tbaa !48
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %995, label %997

995:                                              ; preds = %992
  %996 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %1009

997:                                              ; preds = %992
  %998 = load i32, ptr %31, align 8, !tbaa !49
  switch i32 %998, label %1003 [
    i32 2, label %999
    i32 3, label %1001
  ]

999:                                              ; preds = %997
  %1000 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %1009

1001:                                             ; preds = %997
  %1002 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %1009

1003:                                             ; preds = %997
  %1004 = sext i32 %993 to i64
  %1005 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1004
  %1006 = getelementptr inbounds nuw i8, ptr %1005, i64 8
  %1007 = load ptr, ptr %1006, align 8, !tbaa !105
  %1008 = tail call i32 %1007(ptr noundef nonnull %15, i32 noundef 5) #11, !inline_history !124
  br label %1009

1009:                                             ; preds = %1003, %1001, %999, %995
  %1010 = phi i32 [ %996, %995 ], [ %1000, %999 ], [ %1002, %1001 ], [ %1008, %1003 ]
  %1011 = and i32 %1010, -2
  %1012 = icmp eq i32 %1011, 2
  br i1 %1012, label %1013, label %1014

1013:                                             ; preds = %1009
  store i32 666, ptr %21, align 8, !tbaa !29
  br label %1014

1014:                                             ; preds = %1013, %1009
  %1015 = and i32 %1010, -3
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1017, label %1021

1017:                                             ; preds = %1014
  %1018 = load i32, ptr %69, align 8, !tbaa !107
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1020, label %1027

1020:                                             ; preds = %1017
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1027

1021:                                             ; preds = %1014
  %1022 = icmp eq i32 %1010, 1
  br i1 %1022, label %1023, label %1027

1023:                                             ; preds = %1021
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1024 = load i32, ptr %69, align 8, !tbaa !107
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1026, label %1027

1026:                                             ; preds = %1023
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1027

1027:                                             ; preds = %1026, %1023, %1021, %1020, %1017, %989, %981, %956, %899, %787, %.loopexit40, %356, %252, %143, %134, %123, %72
  %1028 = load i32, ptr %55, align 8, !tbaa !81
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1030, label %1093

1030:                                             ; preds = %1027
  %1031 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %1032 = load i32, ptr %1031, align 4, !tbaa !73
  %1033 = zext i32 %1032 to i64
  %1034 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %1035 = load i64, ptr %1034, align 8, !tbaa !74
  %1036 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1033, i64 %1035), !nosanitize !45
  %1037 = extractvalue { i64, i1 } %1036, 1, !nosanitize !45
  br i1 %1037, label %1038, label %1039, !prof !46, !nosanitize !45

1038:                                             ; preds = %1030
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1039:                                             ; preds = %1030
  %1040 = extractvalue { i64, i1 } %1036, 0, !nosanitize !45
  %1041 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %1042 = load i32, ptr %1041, align 4, !tbaa !75
  %1043 = zext i32 %1042 to i64
  %1044 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1040, i64 %1043), !nosanitize !45
  %1045 = extractvalue { i64, i1 } %1044, 1, !nosanitize !45
  br i1 %1045, label %1046, label %1047, !prof !46, !nosanitize !45

1046:                                             ; preds = %1039
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1047:                                             ; preds = %1039
  %1048 = extractvalue { i64, i1 } %1044, 0, !nosanitize !45
  %1049 = icmp eq i64 %1048, 0
  br i1 %1049, label %1050, label %1093

1050:                                             ; preds = %1047, %45, %34
  %1051 = load i32, ptr %30, align 4, !tbaa !48
  %1052 = icmp eq i32 %1051, %25
  br i1 %1052, label %1092, label %1053

1053:                                             ; preds = %1050
  %1054 = icmp eq i32 %1051, 0
  br i1 %1054, label %1055, label %1074

1055:                                             ; preds = %1053
  %1056 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %1057 = load i32, ptr %1056, align 8, !tbaa !125
  switch i32 %1057, label %1059 [
    i32 0, label %1074
    i32 1, label %1058
  ]

1058:                                             ; preds = %1055
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %1073

1059:                                             ; preds = %1055
  %1060 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %1061 = load i32, ptr %1060, align 4, !tbaa !36
  %1062 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1061, i32 1), !nosanitize !45
  %1063 = extractvalue { i32, i1 } %1062, 1, !nosanitize !45
  br i1 %1063, label %1064, label %1065, !prof !46, !nosanitize !45

1064:                                             ; preds = %1059
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1065:                                             ; preds = %1059
  %1066 = extractvalue { i32, i1 } %1062, 0, !nosanitize !45
  %1067 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %1068 = load ptr, ptr %1067, align 8, !tbaa !37
  %1069 = zext i32 %1066 to i64
  %1070 = getelementptr inbounds nuw [2 x i8], ptr %1068, i64 %1069
  store i16 0, ptr %1070, align 2, !tbaa !62
  %1071 = shl nuw nsw i64 %1069, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1068, i8 0, i64 %1071, i1 false)
  %1072 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %1072, align 8, !tbaa !63
  br label %1073

1073:                                             ; preds = %1065, %1058
  store i32 0, ptr %1056, align 8, !tbaa !125
  br label %1074

1074:                                             ; preds = %1073, %1055, %1053
  store i32 %25, ptr %30, align 4, !tbaa !48
  %1075 = zext nneg i32 %25 to i64
  %1076 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %1075
  %1077 = getelementptr inbounds nuw i8, ptr %1076, i64 2
  %1078 = load i16, ptr %1077, align 2, !tbaa !64
  %1079 = zext i16 %1078 to i32
  %1080 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %1079, ptr %1080, align 8, !tbaa !66
  %1081 = load i16, ptr %1076, align 16, !tbaa !67
  %1082 = zext i16 %1081 to i32
  %1083 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %1082, ptr %1083, align 4, !tbaa !68
  %1084 = getelementptr inbounds nuw i8, ptr %1076, i64 4
  %1085 = load i16, ptr %1084, align 4, !tbaa !69
  %1086 = zext i16 %1085 to i32
  %1087 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %1086, ptr %1087, align 8, !tbaa !70
  %1088 = getelementptr inbounds nuw i8, ptr %1076, i64 6
  %1089 = load i16, ptr %1088, align 2, !tbaa !71
  %1090 = zext i16 %1089 to i32
  %1091 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %1090, ptr %1091, align 4, !tbaa !72
  br label %1092

1092:                                             ; preds = %1074, %1050
  store i32 %2, ptr %31, align 8, !tbaa !49
  br label %1093

1093:                                             ; preds = %1092, %1047, %1027, %65, %49, %23, %20, %17, %13, %9, %5, %3
  %1094 = phi i32 [ -5, %1047 ], [ -2, %13 ], [ 0, %1092 ], [ -2, %23 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %65 ], [ -2, %49 ], [ -5, %1027 ]
  ret i32 %1094
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
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1192, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1192

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
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
  br label %1192

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !107
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !9
  br label %1192

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
  br label %118

99:                                               ; preds = %93
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1192

100:                                              ; preds = %49
  br i1 %31, label %102, label %118

101:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !45
  unreachable, !nosanitize !45

102:                                              ; preds = %100
  %103 = add i32 %51, 1073741824
  %104 = icmp sgt i32 %103, -1
  br i1 %104, label %105, label %101, !prof !93, !nosanitize !45

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
  store ptr %116, ptr %117, align 8, !tbaa !9
  br label %1192

118:                                              ; preds = %105, %100, %97
  %119 = phi i64 [ %94, %97 ], [ 0, %100 ], [ 0, %105 ]
  %120 = phi i32 [ %98, %97 ], [ %21, %100 ], [ %21, %105 ]
  switch i32 %120, label %236 [
    i32 666, label %121
    i32 42, label %127
  ]

121:                                              ; preds = %118
  %122 = load i32, ptr %29, align 8, !tbaa !81
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %972, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %125, ptr %126, align 8, !tbaa !9
  br label %1192

127:                                              ; preds = %118
  %128 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %129 = load i32, ptr %128, align 8, !tbaa !30
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 113, ptr %20, align 8, !tbaa !29
  br label %969

132:                                              ; preds = %127
  %133 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %134 = load i32, ptr %133, align 4, !tbaa !31
  %135 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %134, i32 8), !nosanitize !45
  %136 = extractvalue { i32, i1 } %135, 1, !nosanitize !45
  br i1 %136, label %137, label %138, !prof !46, !nosanitize !45

137:                                              ; preds = %132
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

138:                                              ; preds = %132
  %139 = extractvalue { i32, i1 } %135, 0, !nosanitize !45
  %140 = shl i32 %139, 12
  %141 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %142 = load i32, ptr %141, align 8, !tbaa !49
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %153, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %146 = load i32, ptr %145, align 4, !tbaa !48
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
  %154 = phi i32 [ 64, %148 ], [ 0, %138 ], [ %152, %150 ], [ 0, %144 ]
  %155 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %156 = or disjoint i32 %154, %140
  %157 = load i32, ptr %155, align 4, !tbaa !73
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, i32 2048, i32 2080
  %160 = or disjoint i32 %159, %156
  %161 = urem i32 %160, 31
  %162 = or disjoint i32 %161, %160
  %163 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %119, i64 1), !nosanitize !45
  %164 = extractvalue { i64, i1 } %163, 1, !nosanitize !45
  br i1 %164, label %165, label %166, !prof !46, !nosanitize !45

165:                                              ; preds = %153
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

166:                                              ; preds = %153
  %167 = extractvalue { i64, i1 } %163, 0, !nosanitize !45
  %168 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %169 = load ptr, ptr %168, align 8, !tbaa !40
  %170 = lshr i32 %160, 8
  %171 = trunc i32 %170 to i8
  store i64 %167, ptr %52, align 8, !tbaa !57
  %172 = getelementptr inbounds nuw i8, ptr %169, i64 %119
  store i8 %171, ptr %172, align 1, !tbaa !8
  %173 = load i64, ptr %52, align 8, !tbaa !57
  %174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %173, i64 1), !nosanitize !45
  %175 = extractvalue { i64, i1 } %174, 1, !nosanitize !45
  br i1 %175, label %176, label %177, !prof !46, !nosanitize !45

176:                                              ; preds = %166
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

177:                                              ; preds = %166
  %178 = extractvalue { i64, i1 } %174, 0, !nosanitize !45
  %179 = load ptr, ptr %168, align 8, !tbaa !40
  %180 = trunc i32 %162 to i8
  %181 = xor i8 %180, 31
  store i64 %178, ptr %52, align 8, !tbaa !57
  %182 = getelementptr inbounds nuw i8, ptr %179, i64 %173
  store i8 %181, ptr %182, align 1, !tbaa !8
  %183 = load i32, ptr %155, align 4, !tbaa !73
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %228, label %185

185:                                              ; preds = %177
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %187 = load i64, ptr %186, align 8, !tbaa !59
  %188 = lshr i64 %187, 16
  %189 = load i64, ptr %52, align 8, !tbaa !57
  %190 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %189, i64 1), !nosanitize !45
  %191 = extractvalue { i64, i1 } %190, 1, !nosanitize !45
  br i1 %191, label %192, label %193, !prof !46, !nosanitize !45

192:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

193:                                              ; preds = %185
  %194 = extractvalue { i64, i1 } %190, 0, !nosanitize !45
  %195 = load ptr, ptr %168, align 8, !tbaa !40
  %196 = lshr i64 %187, 24
  %197 = trunc i64 %196 to i8
  store i64 %194, ptr %52, align 8, !tbaa !57
  %198 = getelementptr inbounds nuw i8, ptr %195, i64 %189
  store i8 %197, ptr %198, align 1, !tbaa !8
  %199 = load i64, ptr %52, align 8, !tbaa !57
  %200 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %199, i64 1), !nosanitize !45
  %201 = extractvalue { i64, i1 } %200, 1, !nosanitize !45
  br i1 %201, label %202, label %203, !prof !46, !nosanitize !45

202:                                              ; preds = %193
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

203:                                              ; preds = %193
  %204 = extractvalue { i64, i1 } %200, 0, !nosanitize !45
  %205 = load ptr, ptr %168, align 8, !tbaa !40
  %206 = trunc i64 %188 to i8
  store i64 %204, ptr %52, align 8, !tbaa !57
  %207 = getelementptr inbounds nuw i8, ptr %205, i64 %199
  store i8 %206, ptr %207, align 1, !tbaa !8
  %208 = load i64, ptr %186, align 8, !tbaa !59
  %209 = trunc i64 %208 to i8
  %210 = load i64, ptr %52, align 8, !tbaa !57
  %211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %210, i64 1), !nosanitize !45
  %212 = extractvalue { i64, i1 } %211, 1, !nosanitize !45
  br i1 %212, label %213, label %214, !prof !46, !nosanitize !45

213:                                              ; preds = %203
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

214:                                              ; preds = %203
  %215 = extractvalue { i64, i1 } %211, 0, !nosanitize !45
  %216 = load ptr, ptr %168, align 8, !tbaa !40
  %217 = lshr i64 %208, 8
  %218 = trunc i64 %217 to i8
  store i64 %215, ptr %52, align 8, !tbaa !57
  %219 = getelementptr inbounds nuw i8, ptr %216, i64 %210
  store i8 %218, ptr %219, align 1, !tbaa !8
  %220 = load i64, ptr %52, align 8, !tbaa !57
  %221 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %220, i64 1), !nosanitize !45
  %222 = extractvalue { i64, i1 } %221, 1, !nosanitize !45
  br i1 %222, label %223, label %224, !prof !46, !nosanitize !45

223:                                              ; preds = %214
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

224:                                              ; preds = %214
  %225 = extractvalue { i64, i1 } %221, 0, !nosanitize !45
  %226 = load ptr, ptr %168, align 8, !tbaa !40
  store i64 %225, ptr %52, align 8, !tbaa !57
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 %220
  store i8 %209, ptr %227, align 1, !tbaa !8
  br label %228

228:                                              ; preds = %224, %177
  %229 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %229, ptr %230, align 8, !tbaa !59
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %231 = load i64, ptr %52, align 8, !tbaa !57
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load i32, ptr %20, align 8, !tbaa !29
  br label %236

235:                                              ; preds = %228
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1192

236:                                              ; preds = %233, %118
  %237 = phi i32 [ %234, %233 ], [ %120, %118 ]
  %238 = icmp eq i32 %237, 57
  br i1 %238, label %239, label %498

239:                                              ; preds = %236
  %240 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %240, ptr %241, align 8, !tbaa !59
  %242 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %243 = load i64, ptr %52, align 8, !tbaa !57
  %244 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %243, i64 1), !nosanitize !45
  %245 = extractvalue { i64, i1 } %244, 1, !nosanitize !45
  br i1 %245, label %246, label %247, !prof !46, !nosanitize !45

246:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

247:                                              ; preds = %239
  %248 = extractvalue { i64, i1 } %244, 0, !nosanitize !45
  %249 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %248, ptr %52, align 8, !tbaa !57
  %250 = getelementptr inbounds nuw i8, ptr %249, i64 %243
  store i8 31, ptr %250, align 1, !tbaa !8
  %251 = load i64, ptr %52, align 8, !tbaa !57
  %252 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %251, i64 1), !nosanitize !45
  %253 = extractvalue { i64, i1 } %252, 1, !nosanitize !45
  br i1 %253, label %254, label %255, !prof !46, !nosanitize !45

254:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

255:                                              ; preds = %247
  %256 = extractvalue { i64, i1 } %252, 0, !nosanitize !45
  %257 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %256, ptr %52, align 8, !tbaa !57
  %258 = getelementptr inbounds nuw i8, ptr %257, i64 %251
  store i8 -117, ptr %258, align 1, !tbaa !8
  %259 = load i64, ptr %52, align 8, !tbaa !57
  %260 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %259, i64 1), !nosanitize !45
  %261 = extractvalue { i64, i1 } %260, 1, !nosanitize !45
  br i1 %261, label %262, label %263, !prof !46, !nosanitize !45

262:                                              ; preds = %255
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

263:                                              ; preds = %255
  %264 = extractvalue { i64, i1 } %260, 0, !nosanitize !45
  %265 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %264, ptr %52, align 8, !tbaa !57
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 %259
  store i8 8, ptr %266, align 1, !tbaa !8
  %267 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %268 = load ptr, ptr %267, align 8, !tbaa !100
  %269 = icmp eq ptr %268, null
  %270 = load i64, ptr %52, align 8, !tbaa !57
  %271 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %270, i64 1), !nosanitize !45
  %272 = extractvalue { i64, i1 } %271, 1, !nosanitize !45
  br i1 %269, label %273, label %342

273:                                              ; preds = %263
  br i1 %272, label %274, label %275, !prof !46, !nosanitize !45

274:                                              ; preds = %273
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

275:                                              ; preds = %273
  %276 = extractvalue { i64, i1 } %271, 0, !nosanitize !45
  %277 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %276, ptr %52, align 8, !tbaa !57
  %278 = getelementptr inbounds nuw i8, ptr %277, i64 %270
  store i8 0, ptr %278, align 1, !tbaa !8
  %279 = load i64, ptr %52, align 8, !tbaa !57
  %280 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %279, i64 1), !nosanitize !45
  %281 = extractvalue { i64, i1 } %280, 1, !nosanitize !45
  br i1 %281, label %282, label %283, !prof !46, !nosanitize !45

282:                                              ; preds = %275
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

283:                                              ; preds = %275
  %284 = extractvalue { i64, i1 } %280, 0, !nosanitize !45
  %285 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %284, ptr %52, align 8, !tbaa !57
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 %279
  store i8 0, ptr %286, align 1, !tbaa !8
  %287 = load i64, ptr %52, align 8, !tbaa !57
  %288 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %287, i64 1), !nosanitize !45
  %289 = extractvalue { i64, i1 } %288, 1, !nosanitize !45
  br i1 %289, label %290, label %291, !prof !46, !nosanitize !45

290:                                              ; preds = %283
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

291:                                              ; preds = %283
  %292 = extractvalue { i64, i1 } %288, 0, !nosanitize !45
  %293 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %292, ptr %52, align 8, !tbaa !57
  %294 = getelementptr inbounds nuw i8, ptr %293, i64 %287
  store i8 0, ptr %294, align 1, !tbaa !8
  %295 = load i64, ptr %52, align 8, !tbaa !57
  %296 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %295, i64 1), !nosanitize !45
  %297 = extractvalue { i64, i1 } %296, 1, !nosanitize !45
  br i1 %297, label %298, label %299, !prof !46, !nosanitize !45

298:                                              ; preds = %291
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

299:                                              ; preds = %291
  %300 = extractvalue { i64, i1 } %296, 0, !nosanitize !45
  %301 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %300, ptr %52, align 8, !tbaa !57
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 %295
  store i8 0, ptr %302, align 1, !tbaa !8
  %303 = load i64, ptr %52, align 8, !tbaa !57
  %304 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %303, i64 1), !nosanitize !45
  %305 = extractvalue { i64, i1 } %304, 1, !nosanitize !45
  br i1 %305, label %306, label %307, !prof !46, !nosanitize !45

306:                                              ; preds = %299
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

307:                                              ; preds = %299
  %308 = extractvalue { i64, i1 } %304, 0, !nosanitize !45
  %309 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %308, ptr %52, align 8, !tbaa !57
  %310 = getelementptr inbounds nuw i8, ptr %309, i64 %303
  store i8 0, ptr %310, align 1, !tbaa !8
  %311 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %312 = load i32, ptr %311, align 4, !tbaa !48
  %313 = icmp eq i32 %312, 9
  br i1 %313, label %321, label %314

314:                                              ; preds = %307
  %315 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %316 = load i32, ptr %315, align 8, !tbaa !49
  %317 = icmp sgt i32 %316, 1
  %318 = icmp slt i32 %312, 2
  %319 = or i1 %318, %317
  %320 = select i1 %319, i8 4, i8 0
  br label %321

321:                                              ; preds = %314, %307
  %322 = phi i8 [ %320, %314 ], [ 2, %307 ]
  %323 = load i64, ptr %52, align 8, !tbaa !57
  %324 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %323, i64 1), !nosanitize !45
  %325 = extractvalue { i64, i1 } %324, 1, !nosanitize !45
  br i1 %325, label %326, label %327, !prof !46, !nosanitize !45

326:                                              ; preds = %321
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

327:                                              ; preds = %321
  %328 = extractvalue { i64, i1 } %324, 0, !nosanitize !45
  %329 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %328, ptr %52, align 8, !tbaa !57
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 %323
  store i8 %322, ptr %330, align 1, !tbaa !8
  %331 = load i64, ptr %52, align 8, !tbaa !57
  %332 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %331, i64 1), !nosanitize !45
  %333 = extractvalue { i64, i1 } %332, 1, !nosanitize !45
  br i1 %333, label %334, label %335, !prof !46, !nosanitize !45

334:                                              ; preds = %327
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

335:                                              ; preds = %327
  %336 = extractvalue { i64, i1 } %332, 0, !nosanitize !45
  %337 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %336, ptr %52, align 8, !tbaa !57
  %338 = getelementptr inbounds nuw i8, ptr %337, i64 %331
  store i8 3, ptr %338, align 1, !tbaa !8
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %339 = load i64, ptr %52, align 8, !tbaa !57
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %496, label %341

341:                                              ; preds = %335
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1192

342:                                              ; preds = %263
  br i1 %272, label %343, label %344, !prof !46, !nosanitize !45

343:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

344:                                              ; preds = %342
  %345 = extractvalue { i64, i1 } %271, 0, !nosanitize !45
  %346 = load ptr, ptr %242, align 8, !tbaa !40
  %347 = getelementptr inbounds nuw i8, ptr %268, i64 56
  %348 = load ptr, ptr %347, align 8, !tbaa !109
  %349 = icmp eq ptr %348, null
  %350 = getelementptr inbounds nuw i8, ptr %268, i64 40
  %351 = load ptr, ptr %350, align 8, !tbaa !111
  %352 = icmp eq ptr %351, null
  %353 = getelementptr inbounds nuw i8, ptr %268, i64 24
  %354 = load ptr, ptr %353, align 8, !tbaa !112
  %355 = icmp eq ptr %354, null
  %356 = load i32, ptr %268, align 8, !tbaa !113
  %357 = icmp ne i32 %356, 0
  %358 = getelementptr inbounds nuw i8, ptr %268, i64 68
  %359 = load i32, ptr %358, align 4, !tbaa !114
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
  store i64 %345, ptr %52, align 8, !tbaa !57
  %370 = getelementptr inbounds nuw i8, ptr %346, i64 %270
  store i8 %369, ptr %370, align 1, !tbaa !8
  %371 = load i64, ptr %52, align 8, !tbaa !57
  %372 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %371, i64 1), !nosanitize !45
  %373 = extractvalue { i64, i1 } %372, 1, !nosanitize !45
  br i1 %373, label %374, label %375, !prof !46, !nosanitize !45

374:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

375:                                              ; preds = %344
  %376 = extractvalue { i64, i1 } %372, 0, !nosanitize !45
  %377 = load ptr, ptr %242, align 8, !tbaa !40
  %378 = load ptr, ptr %267, align 8, !tbaa !100
  %379 = getelementptr inbounds nuw i8, ptr %378, i64 8
  %380 = load i64, ptr %379, align 8, !tbaa !115
  %381 = trunc i64 %380 to i8
  store i64 %376, ptr %52, align 8, !tbaa !57
  %382 = getelementptr inbounds nuw i8, ptr %377, i64 %371
  store i8 %381, ptr %382, align 1, !tbaa !8
  %383 = load i64, ptr %52, align 8, !tbaa !57
  %384 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %383, i64 1), !nosanitize !45
  %385 = extractvalue { i64, i1 } %384, 1, !nosanitize !45
  br i1 %385, label %386, label %387, !prof !46, !nosanitize !45

386:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

387:                                              ; preds = %375
  %388 = extractvalue { i64, i1 } %384, 0, !nosanitize !45
  %389 = load ptr, ptr %242, align 8, !tbaa !40
  %390 = load ptr, ptr %267, align 8, !tbaa !100
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 8
  %392 = load i64, ptr %391, align 8, !tbaa !115
  %393 = lshr i64 %392, 8
  %394 = trunc i64 %393 to i8
  store i64 %388, ptr %52, align 8, !tbaa !57
  %395 = getelementptr inbounds nuw i8, ptr %389, i64 %383
  store i8 %394, ptr %395, align 1, !tbaa !8
  %396 = load i64, ptr %52, align 8, !tbaa !57
  %397 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %396, i64 1), !nosanitize !45
  %398 = extractvalue { i64, i1 } %397, 1, !nosanitize !45
  br i1 %398, label %399, label %400, !prof !46, !nosanitize !45

399:                                              ; preds = %387
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

400:                                              ; preds = %387
  %401 = extractvalue { i64, i1 } %397, 0, !nosanitize !45
  %402 = load ptr, ptr %242, align 8, !tbaa !40
  %403 = load ptr, ptr %267, align 8, !tbaa !100
  %404 = getelementptr inbounds nuw i8, ptr %403, i64 8
  %405 = load i64, ptr %404, align 8, !tbaa !115
  %406 = lshr i64 %405, 16
  %407 = trunc i64 %406 to i8
  store i64 %401, ptr %52, align 8, !tbaa !57
  %408 = getelementptr inbounds nuw i8, ptr %402, i64 %396
  store i8 %407, ptr %408, align 1, !tbaa !8
  %409 = load i64, ptr %52, align 8, !tbaa !57
  %410 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %409, i64 1), !nosanitize !45
  %411 = extractvalue { i64, i1 } %410, 1, !nosanitize !45
  br i1 %411, label %412, label %413, !prof !46, !nosanitize !45

412:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

413:                                              ; preds = %400
  %414 = extractvalue { i64, i1 } %410, 0, !nosanitize !45
  %415 = load ptr, ptr %242, align 8, !tbaa !40
  %416 = load ptr, ptr %267, align 8, !tbaa !100
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 8
  %418 = load i64, ptr %417, align 8, !tbaa !115
  %419 = lshr i64 %418, 24
  %420 = trunc i64 %419 to i8
  store i64 %414, ptr %52, align 8, !tbaa !57
  %421 = getelementptr inbounds nuw i8, ptr %415, i64 %409
  store i8 %420, ptr %421, align 1, !tbaa !8
  %422 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %423 = load i32, ptr %422, align 4, !tbaa !48
  %424 = icmp eq i32 %423, 9
  br i1 %424, label %432, label %425

425:                                              ; preds = %413
  %426 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %427 = load i32, ptr %426, align 8, !tbaa !49
  %428 = icmp sgt i32 %427, 1
  %429 = icmp slt i32 %423, 2
  %430 = or i1 %429, %428
  %431 = select i1 %430, i8 4, i8 0
  br label %432

432:                                              ; preds = %425, %413
  %433 = phi i8 [ %431, %425 ], [ 2, %413 ]
  %434 = load i64, ptr %52, align 8, !tbaa !57
  %435 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %434, i64 1), !nosanitize !45
  %436 = extractvalue { i64, i1 } %435, 1, !nosanitize !45
  br i1 %436, label %437, label %438, !prof !46, !nosanitize !45

437:                                              ; preds = %432
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

438:                                              ; preds = %432
  %439 = extractvalue { i64, i1 } %435, 0, !nosanitize !45
  %440 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %439, ptr %52, align 8, !tbaa !57
  %441 = getelementptr inbounds nuw i8, ptr %440, i64 %434
  store i8 %433, ptr %441, align 1, !tbaa !8
  %442 = load i64, ptr %52, align 8, !tbaa !57
  %443 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %442, i64 1), !nosanitize !45
  %444 = extractvalue { i64, i1 } %443, 1, !nosanitize !45
  br i1 %444, label %445, label %446, !prof !46, !nosanitize !45

445:                                              ; preds = %438
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

446:                                              ; preds = %438
  %447 = extractvalue { i64, i1 } %443, 0, !nosanitize !45
  %448 = load ptr, ptr %242, align 8, !tbaa !40
  %449 = load ptr, ptr %267, align 8, !tbaa !100
  %450 = getelementptr inbounds nuw i8, ptr %449, i64 20
  %451 = load i32, ptr %450, align 4, !tbaa !116
  %452 = trunc i32 %451 to i8
  store i64 %447, ptr %52, align 8, !tbaa !57
  %453 = getelementptr inbounds nuw i8, ptr %448, i64 %442
  store i8 %452, ptr %453, align 1, !tbaa !8
  %454 = load ptr, ptr %267, align 8, !tbaa !100
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 24
  %456 = load ptr, ptr %455, align 8, !tbaa !112
  %457 = icmp eq ptr %456, null
  br i1 %457, label %484, label %458

458:                                              ; preds = %446
  %459 = load i64, ptr %52, align 8, !tbaa !57
  %460 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %459, i64 1), !nosanitize !45
  %461 = extractvalue { i64, i1 } %460, 1, !nosanitize !45
  br i1 %461, label %462, label %463, !prof !46, !nosanitize !45

462:                                              ; preds = %458
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

463:                                              ; preds = %458
  %464 = extractvalue { i64, i1 } %460, 0, !nosanitize !45
  %465 = load ptr, ptr %242, align 8, !tbaa !40
  %466 = getelementptr inbounds nuw i8, ptr %454, i64 32
  %467 = load i32, ptr %466, align 8, !tbaa !117
  %468 = trunc i32 %467 to i8
  store i64 %464, ptr %52, align 8, !tbaa !57
  %469 = getelementptr inbounds nuw i8, ptr %465, i64 %459
  store i8 %468, ptr %469, align 1, !tbaa !8
  %470 = load i64, ptr %52, align 8, !tbaa !57
  %471 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %470, i64 1), !nosanitize !45
  %472 = extractvalue { i64, i1 } %471, 1, !nosanitize !45
  br i1 %472, label %473, label %474, !prof !46, !nosanitize !45

473:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

474:                                              ; preds = %463
  %475 = extractvalue { i64, i1 } %471, 0, !nosanitize !45
  %476 = load ptr, ptr %242, align 8, !tbaa !40
  %477 = load ptr, ptr %267, align 8, !tbaa !100
  %478 = getelementptr inbounds nuw i8, ptr %477, i64 32
  %479 = load i32, ptr %478, align 8, !tbaa !117
  %480 = lshr i32 %479, 8
  %481 = trunc i32 %480 to i8
  store i64 %475, ptr %52, align 8, !tbaa !57
  %482 = getelementptr inbounds nuw i8, ptr %476, i64 %470
  store i8 %481, ptr %482, align 1, !tbaa !8
  %483 = load ptr, ptr %267, align 8, !tbaa !100
  br label %484

484:                                              ; preds = %474, %446
  %485 = phi ptr [ %483, %474 ], [ %454, %446 ]
  %486 = getelementptr inbounds nuw i8, ptr %485, i64 68
  %487 = load i32, ptr %486, align 4, !tbaa !114
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %494, label %489

489:                                              ; preds = %484
  %490 = load i64, ptr %241, align 8, !tbaa !59
  %491 = load ptr, ptr %242, align 8, !tbaa !40
  %492 = load i64, ptr %52, align 8, !tbaa !57
  %493 = tail call i64 @crc32_z(i64 noundef %490, ptr noundef %491, i64 noundef %492) #11
  store i64 %493, ptr %241, align 8, !tbaa !59
  br label %494

494:                                              ; preds = %489, %484
  %495 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %495, align 8, !tbaa !118
  store i32 69, ptr %20, align 8, !tbaa !29
  br label %500

496:                                              ; preds = %335
  %497 = load i32, ptr %20, align 8, !tbaa !29
  br label %498

498:                                              ; preds = %496, %236
  %499 = phi i32 [ %497, %496 ], [ %237, %236 ]
  switch i32 %499, label %969 [
    i32 69, label %500
    i32 73, label %701
    i32 91, label %813
    i32 103, label %924
  ]

500:                                              ; preds = %498, %494
  %501 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %502 = load ptr, ptr %501, align 8, !tbaa !100
  %503 = getelementptr inbounds nuw i8, ptr %502, i64 24
  %504 = load ptr, ptr %503, align 8, !tbaa !112
  %505 = icmp eq ptr %504, null
  br i1 %505, label %700, label %506

506:                                              ; preds = %500
  %507 = getelementptr inbounds nuw i8, ptr %502, i64 32
  %508 = load i32, ptr %507, align 8, !tbaa !117
  %509 = and i32 %508, 65535
  %510 = zext nneg i32 %509 to i64
  %511 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %512 = load i64, ptr %511, align 8, !tbaa !118
  %513 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %510, i64 %512), !nosanitize !45
  %514 = extractvalue { i64, i1 } %513, 1, !nosanitize !45
  br i1 %514, label %515, label %516, !prof !46, !nosanitize !45

515:                                              ; preds = %506
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

516:                                              ; preds = %506
  %517 = load i64, ptr %52, align 8, !tbaa !57
  %518 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %519 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %522 = extractvalue { i64, i1 } %513, 0
  %523 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %517, i64 %522), !nosanitize !45
  %524 = extractvalue { i64, i1 } %523, 1, !nosanitize !45
  br i1 %524, label %597, label %525, !prof !46, !nosanitize !45

525:                                              ; preds = %516
  %526 = extractvalue { i64, i1 } %523, 0, !nosanitize !45
  %527 = load i64, ptr %518, align 8, !tbaa !41
  %528 = icmp ugt i64 %526, %527
  br i1 %528, label %529, label %673

529:                                              ; preds = %525
  %530 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %527, i64 %517), !nosanitize !45
  %531 = extractvalue { i64, i1 } %530, 0, !nosanitize !45
  %532 = extractvalue { i64, i1 } %530, 1, !nosanitize !45
  br i1 %532, label %602, label %533, !prof !46, !nosanitize !45

533:                                              ; preds = %529
  %534 = load ptr, ptr %519, align 8, !tbaa !40
  %535 = getelementptr inbounds nuw i8, ptr %534, i64 %517
  %536 = getelementptr inbounds nuw i8, ptr %504, i64 %512
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %535, ptr nonnull align 1 %536, i64 %531, i1 false)
  %537 = load i64, ptr %518, align 8, !tbaa !41
  store i64 %537, ptr %52, align 8, !tbaa !57
  %538 = load ptr, ptr %501, align 8, !tbaa !100
  %539 = getelementptr inbounds nuw i8, ptr %538, i64 68
  %540 = load i32, ptr %539, align 4, !tbaa !114
  %541 = icmp ne i32 %540, 0
  %542 = icmp ugt i64 %537, %517
  %543 = select i1 %541, i1 %542, i1 false
  br i1 %543, label %544, label %550

544:                                              ; preds = %533
  %545 = sub nuw i64 %537, %517
  %546 = load ptr, ptr %519, align 8, !tbaa !40
  %547 = getelementptr inbounds nuw i8, ptr %546, i64 %517
  %548 = load i64, ptr %520, align 8, !tbaa !59
  %549 = tail call i64 @crc32_z(i64 noundef %548, ptr noundef %547, i64 noundef %545) #11
  store i64 %549, ptr %520, align 8, !tbaa !59
  br label %550

550:                                              ; preds = %544, %533
  %551 = load i64, ptr %511, align 8, !tbaa !118
  %552 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %551, i64 %531), !nosanitize !45
  %553 = extractvalue { i64, i1 } %552, 1, !nosanitize !45
  br i1 %553, label %.loopexit, label %554, !prof !46, !nosanitize !45

554:                                              ; preds = %550
  %555 = extractvalue { i64, i1 } %552, 0, !nosanitize !45
  store i64 %555, ptr %511, align 8, !tbaa !118
  %556 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %556) #11
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 40
  %558 = load i64, ptr %557, align 8, !tbaa !57
  %559 = load i32, ptr %43, align 8, !tbaa !107
  %560 = zext i32 %559 to i64
  %561 = tail call i64 @llvm.umin.i64(i64 %558, i64 %560)
  %562 = trunc nuw i64 %561 to i32
  %563 = icmp eq i64 %561, 0
  br i1 %563, label %591, label %564

564:                                              ; preds = %554
  %565 = load ptr, ptr %25, align 8, !tbaa !106
  %566 = getelementptr inbounds nuw i8, ptr %556, i64 32
  %567 = load ptr, ptr %566, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %565, ptr align 1 %567, i64 %561, i1 false)
  %568 = load ptr, ptr %25, align 8, !tbaa !106
  %569 = getelementptr inbounds nuw i8, ptr %568, i64 %561
  store ptr %569, ptr %25, align 8, !tbaa !106
  %570 = load ptr, ptr %566, align 8, !tbaa !58
  %571 = getelementptr inbounds nuw i8, ptr %570, i64 %561
  store ptr %571, ptr %566, align 8, !tbaa !58
  %572 = load i64, ptr %521, align 8, !tbaa !108
  %573 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %572, i64 %561), !nosanitize !45
  %574 = extractvalue { i64, i1 } %573, 1, !nosanitize !45
  br i1 %574, label %.loopexit36, label %575, !prof !46, !nosanitize !45

575:                                              ; preds = %564
  %576 = extractvalue { i64, i1 } %573, 0, !nosanitize !45
  store i64 %576, ptr %521, align 8, !tbaa !108
  %577 = load i32, ptr %43, align 8, !tbaa !107
  %578 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %577, i32 %562), !nosanitize !45
  %579 = extractvalue { i32, i1 } %578, 1, !nosanitize !45
  br i1 %579, label %.loopexit37, label %580, !prof !46, !nosanitize !45

580:                                              ; preds = %575
  %581 = extractvalue { i32, i1 } %578, 0, !nosanitize !45
  store i32 %581, ptr %43, align 8, !tbaa !107
  %582 = load i64, ptr %557, align 8, !tbaa !57
  %583 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %582, i64 %561), !nosanitize !45
  %584 = extractvalue { i64, i1 } %583, 1, !nosanitize !45
  br i1 %584, label %.loopexit38, label %585, !prof !46, !nosanitize !45

585:                                              ; preds = %580
  %586 = extractvalue { i64, i1 } %583, 0, !nosanitize !45
  store i64 %586, ptr %557, align 8, !tbaa !57
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %588, label %591

588:                                              ; preds = %585
  %589 = getelementptr inbounds nuw i8, ptr %556, i64 16
  %590 = load ptr, ptr %589, align 8, !tbaa !40
  store ptr %590, ptr %566, align 8, !tbaa !58
  br label %591

591:                                              ; preds = %588, %585, %554
  %592 = load i64, ptr %52, align 8, !tbaa !57
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %.loopexit39

594:                                              ; preds = %591
  %595 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %522, i64 %531), !nosanitize !45
  %596 = extractvalue { i64, i1 } %595, 1, !nosanitize !45
  br i1 %596, label %.loopexit40, label %.preheader, !prof !46, !nosanitize !45

597:                                              ; preds = %516
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

.preheader:                                       ; preds = %594, %665
  %598 = phi { i64, i1 } [ %666, %665 ], [ %595, %594 ]
  %599 = extractvalue { i64, i1 } %598, 0
  %600 = load i64, ptr %518, align 8, !tbaa !41
  %601 = icmp ugt i64 %599, %600
  br i1 %601, label %603, label %668

602:                                              ; preds = %529
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

603:                                              ; preds = %.preheader
  %604 = load ptr, ptr %519, align 8, !tbaa !40
  %605 = load ptr, ptr %501, align 8, !tbaa !100
  %606 = getelementptr inbounds nuw i8, ptr %605, i64 24
  %607 = load ptr, ptr %606, align 8, !tbaa !112
  %608 = load i64, ptr %511, align 8, !tbaa !118
  %609 = getelementptr inbounds nuw i8, ptr %607, i64 %608
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %604, ptr align 1 %609, i64 %600, i1 false)
  %610 = load i64, ptr %518, align 8, !tbaa !41
  store i64 %610, ptr %52, align 8, !tbaa !57
  %611 = load ptr, ptr %501, align 8, !tbaa !100
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 68
  %613 = load i32, ptr %612, align 4, !tbaa !114
  %614 = icmp ne i32 %613, 0
  %615 = icmp ne i64 %610, 0
  %616 = select i1 %614, i1 %615, i1 false
  br i1 %616, label %617, label %621

617:                                              ; preds = %603
  %618 = load ptr, ptr %519, align 8, !tbaa !40
  %619 = load i64, ptr %520, align 8, !tbaa !59
  %620 = tail call i64 @crc32_z(i64 noundef %619, ptr noundef %618, i64 noundef %610) #11
  store i64 %620, ptr %520, align 8, !tbaa !59
  br label %621

621:                                              ; preds = %617, %603
  %622 = load i64, ptr %511, align 8, !tbaa !118
  %623 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %622, i64 %600), !nosanitize !45
  %624 = extractvalue { i64, i1 } %623, 1, !nosanitize !45
  br i1 %624, label %.loopexit, label %625, !prof !46, !nosanitize !45

.loopexit:                                        ; preds = %621, %550
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

625:                                              ; preds = %621
  %626 = extractvalue { i64, i1 } %623, 0, !nosanitize !45
  store i64 %626, ptr %511, align 8, !tbaa !118
  %627 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %627) #11
  %628 = getelementptr inbounds nuw i8, ptr %627, i64 40
  %629 = load i64, ptr %628, align 8, !tbaa !57
  %630 = load i32, ptr %43, align 8, !tbaa !107
  %631 = zext i32 %630 to i64
  %632 = tail call i64 @llvm.umin.i64(i64 %629, i64 %631)
  %633 = trunc nuw i64 %632 to i32
  %634 = icmp eq i64 %632, 0
  br i1 %634, label %662, label %635

635:                                              ; preds = %625
  %636 = load ptr, ptr %25, align 8, !tbaa !106
  %637 = getelementptr inbounds nuw i8, ptr %627, i64 32
  %638 = load ptr, ptr %637, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %636, ptr align 1 %638, i64 %632, i1 false)
  %639 = load ptr, ptr %25, align 8, !tbaa !106
  %640 = getelementptr inbounds nuw i8, ptr %639, i64 %632
  store ptr %640, ptr %25, align 8, !tbaa !106
  %641 = load ptr, ptr %637, align 8, !tbaa !58
  %642 = getelementptr inbounds nuw i8, ptr %641, i64 %632
  store ptr %642, ptr %637, align 8, !tbaa !58
  %643 = load i64, ptr %521, align 8, !tbaa !108
  %644 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %643, i64 %632), !nosanitize !45
  %645 = extractvalue { i64, i1 } %644, 1, !nosanitize !45
  br i1 %645, label %.loopexit36, label %646, !prof !46, !nosanitize !45

.loopexit36:                                      ; preds = %635, %564
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

646:                                              ; preds = %635
  %647 = extractvalue { i64, i1 } %644, 0, !nosanitize !45
  store i64 %647, ptr %521, align 8, !tbaa !108
  %648 = load i32, ptr %43, align 8, !tbaa !107
  %649 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %648, i32 %633), !nosanitize !45
  %650 = extractvalue { i32, i1 } %649, 1, !nosanitize !45
  br i1 %650, label %.loopexit37, label %651, !prof !46, !nosanitize !45

.loopexit37:                                      ; preds = %646, %575
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

651:                                              ; preds = %646
  %652 = extractvalue { i32, i1 } %649, 0, !nosanitize !45
  store i32 %652, ptr %43, align 8, !tbaa !107
  %653 = load i64, ptr %628, align 8, !tbaa !57
  %654 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %653, i64 %632), !nosanitize !45
  %655 = extractvalue { i64, i1 } %654, 1, !nosanitize !45
  br i1 %655, label %.loopexit38, label %656, !prof !46, !nosanitize !45

.loopexit38:                                      ; preds = %651, %580
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

656:                                              ; preds = %651
  %657 = extractvalue { i64, i1 } %654, 0, !nosanitize !45
  store i64 %657, ptr %628, align 8, !tbaa !57
  %658 = icmp eq i64 %657, 0
  br i1 %658, label %659, label %662

659:                                              ; preds = %656
  %660 = getelementptr inbounds nuw i8, ptr %627, i64 16
  %661 = load ptr, ptr %660, align 8, !tbaa !40
  store ptr %661, ptr %637, align 8, !tbaa !58
  br label %662

662:                                              ; preds = %659, %656, %625
  %663 = load i64, ptr %52, align 8, !tbaa !57
  %664 = icmp eq i64 %663, 0
  br i1 %664, label %665, label %.loopexit39

.loopexit39:                                      ; preds = %662, %591
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1192

665:                                              ; preds = %662
  %666 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %599, i64 %600), !nosanitize !45
  %667 = extractvalue { i64, i1 } %666, 1, !nosanitize !45
  br i1 %667, label %.loopexit40, label %.preheader, !prof !46, !llvm.loop !119, !nosanitize !45

.loopexit40:                                      ; preds = %665, %594
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

668:                                              ; preds = %.preheader
  %669 = load ptr, ptr %501, align 8, !tbaa !100
  %670 = getelementptr inbounds nuw i8, ptr %669, i64 24
  %671 = load ptr, ptr %670, align 8, !tbaa !112
  %672 = load i64, ptr %511, align 8, !tbaa !118
  br label %673

673:                                              ; preds = %668, %525
  %674 = phi i64 [ %512, %525 ], [ %672, %668 ]
  %675 = phi ptr [ %504, %525 ], [ %671, %668 ]
  %676 = phi i64 [ %517, %525 ], [ 0, %668 ]
  %677 = phi i64 [ %522, %525 ], [ %599, %668 ]
  %678 = load ptr, ptr %519, align 8, !tbaa !40
  %679 = getelementptr inbounds nuw i8, ptr %678, i64 %676
  %680 = getelementptr inbounds nuw i8, ptr %675, i64 %674
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %679, ptr align 1 %680, i64 %677, i1 false)
  %681 = load i64, ptr %52, align 8, !tbaa !57
  %682 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %681, i64 %677), !nosanitize !45
  %683 = extractvalue { i64, i1 } %682, 0, !nosanitize !45
  %684 = extractvalue { i64, i1 } %682, 1, !nosanitize !45
  br i1 %684, label %685, label %686, !prof !46, !nosanitize !45

685:                                              ; preds = %673
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

686:                                              ; preds = %673
  store i64 %683, ptr %52, align 8, !tbaa !57
  %687 = load ptr, ptr %501, align 8, !tbaa !100
  %688 = getelementptr inbounds nuw i8, ptr %687, i64 68
  %689 = load i32, ptr %688, align 4, !tbaa !114
  %690 = icmp ne i32 %689, 0
  %691 = icmp ugt i64 %683, %676
  %692 = select i1 %690, i1 %691, i1 false
  br i1 %692, label %693, label %699

693:                                              ; preds = %686
  %694 = sub nuw i64 %683, %676
  %695 = load ptr, ptr %519, align 8, !tbaa !40
  %696 = getelementptr inbounds nuw i8, ptr %695, i64 %676
  %697 = load i64, ptr %520, align 8, !tbaa !59
  %698 = tail call i64 @crc32_z(i64 noundef %697, ptr noundef %696, i64 noundef %694) #11
  store i64 %698, ptr %520, align 8, !tbaa !59
  br label %699

699:                                              ; preds = %693, %686
  store i64 0, ptr %511, align 8, !tbaa !118
  br label %700

700:                                              ; preds = %699, %500
  store i32 73, ptr %20, align 8, !tbaa !29
  br label %701

701:                                              ; preds = %700, %498
  %702 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %703 = load ptr, ptr %702, align 8, !tbaa !100
  %704 = getelementptr inbounds nuw i8, ptr %703, i64 40
  %705 = load ptr, ptr %704, align 8, !tbaa !111
  %706 = icmp eq ptr %705, null
  br i1 %706, label %812, label %707

707:                                              ; preds = %701
  %708 = load i64, ptr %52, align 8, !tbaa !57
  %709 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %710 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %711 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %712 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %713 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %714

714:                                              ; preds = %790, %707
  %715 = phi i64 [ %708, %707 ], [ %777, %790 ]
  %716 = load i64, ptr %52, align 8, !tbaa !57
  %717 = load i64, ptr %709, align 8, !tbaa !41
  %718 = icmp eq i64 %716, %717
  br i1 %718, label %719, label %775

719:                                              ; preds = %714
  %720 = load ptr, ptr %702, align 8, !tbaa !100
  %721 = getelementptr inbounds nuw i8, ptr %720, i64 68
  %722 = load i32, ptr %721, align 4, !tbaa !114
  %723 = icmp ne i32 %722, 0
  %724 = icmp ugt i64 %716, %715
  %725 = select i1 %723, i1 %724, i1 false
  br i1 %725, label %726, label %732

726:                                              ; preds = %719
  %727 = sub nuw i64 %716, %715
  %728 = load ptr, ptr %710, align 8, !tbaa !40
  %729 = getelementptr inbounds nuw i8, ptr %728, i64 %715
  %730 = load i64, ptr %711, align 8, !tbaa !59
  %731 = tail call i64 @crc32_z(i64 noundef %730, ptr noundef %729, i64 noundef %727) #11
  store i64 %731, ptr %711, align 8, !tbaa !59
  br label %732

732:                                              ; preds = %726, %719
  %733 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %733) #11
  %734 = getelementptr inbounds nuw i8, ptr %733, i64 40
  %735 = load i64, ptr %734, align 8, !tbaa !57
  %736 = load i32, ptr %43, align 8, !tbaa !107
  %737 = zext i32 %736 to i64
  %738 = tail call i64 @llvm.umin.i64(i64 %735, i64 %737)
  %739 = trunc nuw i64 %738 to i32
  %740 = icmp eq i64 %738, 0
  br i1 %740, label %771, label %741

741:                                              ; preds = %732
  %742 = load ptr, ptr %25, align 8, !tbaa !106
  %743 = getelementptr inbounds nuw i8, ptr %733, i64 32
  %744 = load ptr, ptr %743, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %742, ptr align 1 %744, i64 %738, i1 false)
  %745 = load ptr, ptr %25, align 8, !tbaa !106
  %746 = getelementptr inbounds nuw i8, ptr %745, i64 %738
  store ptr %746, ptr %25, align 8, !tbaa !106
  %747 = load ptr, ptr %743, align 8, !tbaa !58
  %748 = getelementptr inbounds nuw i8, ptr %747, i64 %738
  store ptr %748, ptr %743, align 8, !tbaa !58
  %749 = load i64, ptr %712, align 8, !tbaa !108
  %750 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %749, i64 %738), !nosanitize !45
  %751 = extractvalue { i64, i1 } %750, 1, !nosanitize !45
  br i1 %751, label %752, label %753, !prof !46, !nosanitize !45

752:                                              ; preds = %741
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

753:                                              ; preds = %741
  %754 = extractvalue { i64, i1 } %750, 0, !nosanitize !45
  store i64 %754, ptr %712, align 8, !tbaa !108
  %755 = load i32, ptr %43, align 8, !tbaa !107
  %756 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %755, i32 %739), !nosanitize !45
  %757 = extractvalue { i32, i1 } %756, 1, !nosanitize !45
  br i1 %757, label %758, label %759, !prof !46, !nosanitize !45

758:                                              ; preds = %753
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

759:                                              ; preds = %753
  %760 = extractvalue { i32, i1 } %756, 0, !nosanitize !45
  store i32 %760, ptr %43, align 8, !tbaa !107
  %761 = load i64, ptr %734, align 8, !tbaa !57
  %762 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %761, i64 %738), !nosanitize !45
  %763 = extractvalue { i64, i1 } %762, 1, !nosanitize !45
  br i1 %763, label %764, label %765, !prof !46, !nosanitize !45

764:                                              ; preds = %759
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

765:                                              ; preds = %759
  %766 = extractvalue { i64, i1 } %762, 0, !nosanitize !45
  store i64 %766, ptr %734, align 8, !tbaa !57
  %767 = icmp eq i64 %766, 0
  br i1 %767, label %768, label %771

768:                                              ; preds = %765
  %769 = getelementptr inbounds nuw i8, ptr %733, i64 16
  %770 = load ptr, ptr %769, align 8, !tbaa !40
  store ptr %770, ptr %743, align 8, !tbaa !58
  br label %771

771:                                              ; preds = %768, %765, %732
  %772 = load i64, ptr %52, align 8, !tbaa !57
  %773 = icmp eq i64 %772, 0
  br i1 %773, label %775, label %774

774:                                              ; preds = %771
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1192

775:                                              ; preds = %771, %714
  %776 = phi i64 [ %716, %714 ], [ 0, %771 ]
  %777 = phi i64 [ %715, %714 ], [ 0, %771 ]
  %778 = load i64, ptr %713, align 8, !tbaa !118
  %779 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %778, i64 1), !nosanitize !45
  %780 = extractvalue { i64, i1 } %779, 1, !nosanitize !45
  br i1 %780, label %781, label %782, !prof !46, !nosanitize !45

781:                                              ; preds = %775
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

782:                                              ; preds = %775
  %783 = extractvalue { i64, i1 } %779, 0, !nosanitize !45
  %784 = load ptr, ptr %702, align 8, !tbaa !100
  %785 = getelementptr inbounds nuw i8, ptr %784, i64 40
  %786 = load ptr, ptr %785, align 8, !tbaa !111
  store i64 %783, ptr %713, align 8, !tbaa !118
  %787 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %776, i64 1), !nosanitize !45
  %788 = extractvalue { i64, i1 } %787, 1, !nosanitize !45
  br i1 %788, label %789, label %790, !prof !46, !nosanitize !45

789:                                              ; preds = %782
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

790:                                              ; preds = %782
  %791 = extractvalue { i64, i1 } %787, 0, !nosanitize !45
  %792 = load ptr, ptr %710, align 8, !tbaa !40
  %793 = getelementptr inbounds nuw i8, ptr %786, i64 %778
  %794 = load i8, ptr %793, align 1, !tbaa !8
  store i64 %791, ptr %52, align 8, !tbaa !57
  %795 = getelementptr inbounds nuw i8, ptr %792, i64 %776
  store i8 %794, ptr %795, align 1, !tbaa !8
  %796 = icmp eq i8 %794, 0
  br i1 %796, label %797, label %714, !llvm.loop !122

797:                                              ; preds = %790
  %798 = load ptr, ptr %702, align 8, !tbaa !100
  %799 = getelementptr inbounds nuw i8, ptr %798, i64 68
  %800 = load i32, ptr %799, align 4, !tbaa !114
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %811, label %802

802:                                              ; preds = %797
  %803 = load i64, ptr %52, align 8, !tbaa !57
  %804 = icmp ugt i64 %803, %777
  br i1 %804, label %805, label %811

805:                                              ; preds = %802
  %806 = sub nuw i64 %803, %777
  %807 = load ptr, ptr %710, align 8, !tbaa !40
  %808 = getelementptr inbounds nuw i8, ptr %807, i64 %777
  %809 = load i64, ptr %711, align 8, !tbaa !59
  %810 = tail call i64 @crc32_z(i64 noundef %809, ptr noundef %808, i64 noundef %806) #11
  store i64 %810, ptr %711, align 8, !tbaa !59
  br label %811

811:                                              ; preds = %805, %802, %797
  store i64 0, ptr %713, align 8, !tbaa !118
  br label %812

812:                                              ; preds = %811, %701
  store i32 91, ptr %20, align 8, !tbaa !29
  br label %813

813:                                              ; preds = %812, %498
  %814 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %815 = load ptr, ptr %814, align 8, !tbaa !100
  %816 = getelementptr inbounds nuw i8, ptr %815, i64 56
  %817 = load ptr, ptr %816, align 8, !tbaa !109
  %818 = icmp eq ptr %817, null
  br i1 %818, label %923, label %819

819:                                              ; preds = %813
  %820 = load i64, ptr %52, align 8, !tbaa !57
  %821 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %822 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %823 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %824 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %825 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %826

826:                                              ; preds = %902, %819
  %827 = phi i64 [ %820, %819 ], [ %889, %902 ]
  %828 = load i64, ptr %52, align 8, !tbaa !57
  %829 = load i64, ptr %821, align 8, !tbaa !41
  %830 = icmp eq i64 %828, %829
  br i1 %830, label %831, label %887

831:                                              ; preds = %826
  %832 = load ptr, ptr %814, align 8, !tbaa !100
  %833 = getelementptr inbounds nuw i8, ptr %832, i64 68
  %834 = load i32, ptr %833, align 4, !tbaa !114
  %835 = icmp ne i32 %834, 0
  %836 = icmp ugt i64 %828, %827
  %837 = select i1 %835, i1 %836, i1 false
  br i1 %837, label %838, label %844

838:                                              ; preds = %831
  %839 = sub nuw i64 %828, %827
  %840 = load ptr, ptr %822, align 8, !tbaa !40
  %841 = getelementptr inbounds nuw i8, ptr %840, i64 %827
  %842 = load i64, ptr %823, align 8, !tbaa !59
  %843 = tail call i64 @crc32_z(i64 noundef %842, ptr noundef %841, i64 noundef %839) #11
  store i64 %843, ptr %823, align 8, !tbaa !59
  br label %844

844:                                              ; preds = %838, %831
  %845 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %845) #11
  %846 = getelementptr inbounds nuw i8, ptr %845, i64 40
  %847 = load i64, ptr %846, align 8, !tbaa !57
  %848 = load i32, ptr %43, align 8, !tbaa !107
  %849 = zext i32 %848 to i64
  %850 = tail call i64 @llvm.umin.i64(i64 %847, i64 %849)
  %851 = trunc nuw i64 %850 to i32
  %852 = icmp eq i64 %850, 0
  br i1 %852, label %883, label %853

853:                                              ; preds = %844
  %854 = load ptr, ptr %25, align 8, !tbaa !106
  %855 = getelementptr inbounds nuw i8, ptr %845, i64 32
  %856 = load ptr, ptr %855, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %854, ptr align 1 %856, i64 %850, i1 false)
  %857 = load ptr, ptr %25, align 8, !tbaa !106
  %858 = getelementptr inbounds nuw i8, ptr %857, i64 %850
  store ptr %858, ptr %25, align 8, !tbaa !106
  %859 = load ptr, ptr %855, align 8, !tbaa !58
  %860 = getelementptr inbounds nuw i8, ptr %859, i64 %850
  store ptr %860, ptr %855, align 8, !tbaa !58
  %861 = load i64, ptr %824, align 8, !tbaa !108
  %862 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %861, i64 %850), !nosanitize !45
  %863 = extractvalue { i64, i1 } %862, 1, !nosanitize !45
  br i1 %863, label %864, label %865, !prof !46, !nosanitize !45

864:                                              ; preds = %853
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

865:                                              ; preds = %853
  %866 = extractvalue { i64, i1 } %862, 0, !nosanitize !45
  store i64 %866, ptr %824, align 8, !tbaa !108
  %867 = load i32, ptr %43, align 8, !tbaa !107
  %868 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %867, i32 %851), !nosanitize !45
  %869 = extractvalue { i32, i1 } %868, 1, !nosanitize !45
  br i1 %869, label %870, label %871, !prof !46, !nosanitize !45

870:                                              ; preds = %865
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

871:                                              ; preds = %865
  %872 = extractvalue { i32, i1 } %868, 0, !nosanitize !45
  store i32 %872, ptr %43, align 8, !tbaa !107
  %873 = load i64, ptr %846, align 8, !tbaa !57
  %874 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %873, i64 %850), !nosanitize !45
  %875 = extractvalue { i64, i1 } %874, 1, !nosanitize !45
  br i1 %875, label %876, label %877, !prof !46, !nosanitize !45

876:                                              ; preds = %871
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

877:                                              ; preds = %871
  %878 = extractvalue { i64, i1 } %874, 0, !nosanitize !45
  store i64 %878, ptr %846, align 8, !tbaa !57
  %879 = icmp eq i64 %878, 0
  br i1 %879, label %880, label %883

880:                                              ; preds = %877
  %881 = getelementptr inbounds nuw i8, ptr %845, i64 16
  %882 = load ptr, ptr %881, align 8, !tbaa !40
  store ptr %882, ptr %855, align 8, !tbaa !58
  br label %883

883:                                              ; preds = %880, %877, %844
  %884 = load i64, ptr %52, align 8, !tbaa !57
  %885 = icmp eq i64 %884, 0
  br i1 %885, label %887, label %886

886:                                              ; preds = %883
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1192

887:                                              ; preds = %883, %826
  %888 = phi i64 [ %828, %826 ], [ 0, %883 ]
  %889 = phi i64 [ %827, %826 ], [ 0, %883 ]
  %890 = load i64, ptr %825, align 8, !tbaa !118
  %891 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %890, i64 1), !nosanitize !45
  %892 = extractvalue { i64, i1 } %891, 1, !nosanitize !45
  br i1 %892, label %893, label %894, !prof !46, !nosanitize !45

893:                                              ; preds = %887
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

894:                                              ; preds = %887
  %895 = extractvalue { i64, i1 } %891, 0, !nosanitize !45
  %896 = load ptr, ptr %814, align 8, !tbaa !100
  %897 = getelementptr inbounds nuw i8, ptr %896, i64 56
  %898 = load ptr, ptr %897, align 8, !tbaa !109
  store i64 %895, ptr %825, align 8, !tbaa !118
  %899 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %888, i64 1), !nosanitize !45
  %900 = extractvalue { i64, i1 } %899, 1, !nosanitize !45
  br i1 %900, label %901, label %902, !prof !46, !nosanitize !45

901:                                              ; preds = %894
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

902:                                              ; preds = %894
  %903 = extractvalue { i64, i1 } %899, 0, !nosanitize !45
  %904 = load ptr, ptr %822, align 8, !tbaa !40
  %905 = getelementptr inbounds nuw i8, ptr %898, i64 %890
  %906 = load i8, ptr %905, align 1, !tbaa !8
  store i64 %903, ptr %52, align 8, !tbaa !57
  %907 = getelementptr inbounds nuw i8, ptr %904, i64 %888
  store i8 %906, ptr %907, align 1, !tbaa !8
  %908 = icmp eq i8 %906, 0
  br i1 %908, label %909, label %826, !llvm.loop !123

909:                                              ; preds = %902
  %910 = load ptr, ptr %814, align 8, !tbaa !100
  %911 = getelementptr inbounds nuw i8, ptr %910, i64 68
  %912 = load i32, ptr %911, align 4, !tbaa !114
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %923, label %914

914:                                              ; preds = %909
  %915 = load i64, ptr %52, align 8, !tbaa !57
  %916 = icmp ugt i64 %915, %889
  br i1 %916, label %917, label %923

917:                                              ; preds = %914
  %918 = sub nuw i64 %915, %889
  %919 = load ptr, ptr %822, align 8, !tbaa !40
  %920 = getelementptr inbounds nuw i8, ptr %919, i64 %889
  %921 = load i64, ptr %823, align 8, !tbaa !59
  %922 = tail call i64 @crc32_z(i64 noundef %921, ptr noundef %920, i64 noundef %918) #11
  store i64 %922, ptr %823, align 8, !tbaa !59
  br label %923

923:                                              ; preds = %917, %914, %909, %813
  store i32 103, ptr %20, align 8, !tbaa !29
  br label %924

924:                                              ; preds = %923, %498
  %925 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %926 = load ptr, ptr %925, align 8, !tbaa !100
  %927 = getelementptr inbounds nuw i8, ptr %926, i64 68
  %928 = load i32, ptr %927, align 4, !tbaa !114
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %965, label %930

930:                                              ; preds = %924
  %931 = load i64, ptr %52, align 8, !tbaa !57
  %932 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %931, i64 2), !nosanitize !45
  %933 = extractvalue { i64, i1 } %932, 1, !nosanitize !45
  br i1 %933, label %934, label %935, !prof !46, !nosanitize !45

934:                                              ; preds = %930
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

935:                                              ; preds = %930
  %936 = extractvalue { i64, i1 } %932, 0, !nosanitize !45
  %937 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %938 = load i64, ptr %937, align 8, !tbaa !41
  %939 = icmp ugt i64 %936, %938
  br i1 %939, label %940, label %944

940:                                              ; preds = %935
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %941 = load i64, ptr %52, align 8, !tbaa !57
  %942 = icmp eq i64 %941, 0
  br i1 %942, label %944, label %943

943:                                              ; preds = %940
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1192

944:                                              ; preds = %940, %935
  %945 = phi i64 [ 0, %940 ], [ %931, %935 ]
  %946 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %947 = add nuw i64 %945, 1
  %948 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %949 = load ptr, ptr %948, align 8, !tbaa !40
  %950 = load i64, ptr %946, align 8, !tbaa !59
  %951 = trunc i64 %950 to i8
  store i64 %947, ptr %52, align 8, !tbaa !57
  %952 = getelementptr inbounds nuw i8, ptr %949, i64 %945
  store i8 %951, ptr %952, align 1, !tbaa !8
  %953 = load i64, ptr %52, align 8, !tbaa !57
  %954 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %953, i64 1), !nosanitize !45
  %955 = extractvalue { i64, i1 } %954, 1, !nosanitize !45
  br i1 %955, label %956, label %957, !prof !46, !nosanitize !45

956:                                              ; preds = %944
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

957:                                              ; preds = %944
  %958 = extractvalue { i64, i1 } %954, 0, !nosanitize !45
  %959 = load ptr, ptr %948, align 8, !tbaa !40
  %960 = load i64, ptr %946, align 8, !tbaa !59
  %961 = lshr i64 %960, 8
  %962 = trunc i64 %961 to i8
  store i64 %958, ptr %52, align 8, !tbaa !57
  %963 = getelementptr inbounds nuw i8, ptr %959, i64 %953
  store i8 %962, ptr %963, align 1, !tbaa !8
  %964 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %964, ptr %946, align 8, !tbaa !59
  br label %965

965:                                              ; preds = %957, %924
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %966 = load i64, ptr %52, align 8, !tbaa !57
  %967 = icmp eq i64 %966, 0
  br i1 %967, label %969, label %968

968:                                              ; preds = %965
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1192

969:                                              ; preds = %965, %498, %131
  %970 = load i32, ptr %29, align 8, !tbaa !81
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %981

972:                                              ; preds = %969, %121
  %973 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %974 = load i32, ptr %973, align 4, !tbaa !75
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %981

976:                                              ; preds = %972
  %977 = icmp eq i32 %1, 0
  br i1 %977, label %1192, label %978

978:                                              ; preds = %976
  %979 = load i32, ptr %20, align 8, !tbaa !29
  %980 = icmp eq i32 %979, 666
  br i1 %980, label %1043, label %981

981:                                              ; preds = %978, %972, %969
  %982 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %983 = load i32, ptr %982, align 4, !tbaa !48
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %985, label %987

985:                                              ; preds = %981
  %986 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %1000

987:                                              ; preds = %981
  %988 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %989 = load i32, ptr %988, align 8, !tbaa !49
  switch i32 %989, label %994 [
    i32 2, label %990
    i32 3, label %992
  ]

990:                                              ; preds = %987
  %991 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %1000

992:                                              ; preds = %987
  %993 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %1000

994:                                              ; preds = %987
  %995 = sext i32 %983 to i64
  %996 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %995
  %997 = getelementptr inbounds nuw i8, ptr %996, i64 8
  %998 = load ptr, ptr %997, align 8, !tbaa !105
  %999 = tail call i32 %998(ptr noundef nonnull %14, i32 noundef %1) #11
  br label %1000

1000:                                             ; preds = %994, %992, %990, %985
  %1001 = phi i32 [ %986, %985 ], [ %991, %990 ], [ %993, %992 ], [ %999, %994 ]
  %1002 = and i32 %1001, -2
  %1003 = icmp eq i32 %1002, 2
  br i1 %1003, label %1004, label %1005

1004:                                             ; preds = %1000
  store i32 666, ptr %20, align 8, !tbaa !29
  br label %1005

1005:                                             ; preds = %1004, %1000
  %1006 = and i32 %1001, -3
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1008, label %1012

1008:                                             ; preds = %1005
  %1009 = load i32, ptr %43, align 8, !tbaa !107
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1011, label %1192

1011:                                             ; preds = %1008
  store i32 -1, ptr %50, align 4, !tbaa !60
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
  %1021 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1020, i32 1), !nosanitize !45
  %1022 = extractvalue { i32, i1 } %1021, 1, !nosanitize !45
  br i1 %1022, label %1023, label %1024, !prof !46, !nosanitize !45

1023:                                             ; preds = %1018
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1024:                                             ; preds = %1018
  %1025 = extractvalue { i32, i1 } %1021, 0, !nosanitize !45
  %1026 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %1027 = load ptr, ptr %1026, align 8, !tbaa !37
  %1028 = zext i32 %1025 to i64
  %1029 = getelementptr inbounds nuw [2 x i8], ptr %1027, i64 %1028
  store i16 0, ptr %1029, align 2, !tbaa !62
  %1030 = shl nuw nsw i64 %1028, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1027, i8 0, i64 %1030, i1 false)
  %1031 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %1031, align 8, !tbaa !63
  %1032 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %1033 = load i32, ptr %1032, align 4, !tbaa !75
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1035, label %1039

1035:                                             ; preds = %1024
  %1036 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %1036, align 4, !tbaa !73
  %1037 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %1037, align 8, !tbaa !74
  %1038 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %1038, align 4, !tbaa !76
  br label %1039

1039:                                             ; preds = %1035, %1024, %1016, %1015, %1014
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1040 = load i32, ptr %43, align 8, !tbaa !107
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1042, label %1043

1042:                                             ; preds = %1039
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1192

1043:                                             ; preds = %1039, %1012, %978
  br i1 %37, label %1192, label %1044

1044:                                             ; preds = %1043
  %1045 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %1046 = load i32, ptr %1045, align 8, !tbaa !30
  %1047 = icmp slt i32 %1046, 1
  br i1 %1047, label %1192, label %1048

1048:                                             ; preds = %1044
  %1049 = icmp eq i32 %1046, 2
  %1050 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1049, label %1051, label %1140

1051:                                             ; preds = %1048
  %1052 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1053 = load i64, ptr %52, align 8, !tbaa !57
  %1054 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1053, i64 1), !nosanitize !45
  %1055 = extractvalue { i64, i1 } %1054, 1, !nosanitize !45
  br i1 %1055, label %1056, label %1057, !prof !46, !nosanitize !45

1056:                                             ; preds = %1051
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1057:                                             ; preds = %1051
  %1058 = extractvalue { i64, i1 } %1054, 0, !nosanitize !45
  %1059 = load ptr, ptr %1052, align 8, !tbaa !40
  %1060 = load i64, ptr %1050, align 8, !tbaa !59
  %1061 = trunc i64 %1060 to i8
  store i64 %1058, ptr %52, align 8, !tbaa !57
  %1062 = getelementptr inbounds nuw i8, ptr %1059, i64 %1053
  store i8 %1061, ptr %1062, align 1, !tbaa !8
  %1063 = load i64, ptr %52, align 8, !tbaa !57
  %1064 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1063, i64 1), !nosanitize !45
  %1065 = extractvalue { i64, i1 } %1064, 1, !nosanitize !45
  br i1 %1065, label %1066, label %1067, !prof !46, !nosanitize !45

1066:                                             ; preds = %1057
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1067:                                             ; preds = %1057
  %1068 = extractvalue { i64, i1 } %1064, 0, !nosanitize !45
  %1069 = load ptr, ptr %1052, align 8, !tbaa !40
  %1070 = load i64, ptr %1050, align 8, !tbaa !59
  %1071 = lshr i64 %1070, 8
  %1072 = trunc i64 %1071 to i8
  store i64 %1068, ptr %52, align 8, !tbaa !57
  %1073 = getelementptr inbounds nuw i8, ptr %1069, i64 %1063
  store i8 %1072, ptr %1073, align 1, !tbaa !8
  %1074 = load i64, ptr %52, align 8, !tbaa !57
  %1075 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1074, i64 1), !nosanitize !45
  %1076 = extractvalue { i64, i1 } %1075, 1, !nosanitize !45
  br i1 %1076, label %1077, label %1078, !prof !46, !nosanitize !45

1077:                                             ; preds = %1067
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1078:                                             ; preds = %1067
  %1079 = extractvalue { i64, i1 } %1075, 0, !nosanitize !45
  %1080 = load ptr, ptr %1052, align 8, !tbaa !40
  %1081 = load i64, ptr %1050, align 8, !tbaa !59
  %1082 = lshr i64 %1081, 16
  %1083 = trunc i64 %1082 to i8
  store i64 %1079, ptr %52, align 8, !tbaa !57
  %1084 = getelementptr inbounds nuw i8, ptr %1080, i64 %1074
  store i8 %1083, ptr %1084, align 1, !tbaa !8
  %1085 = load i64, ptr %52, align 8, !tbaa !57
  %1086 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1085, i64 1), !nosanitize !45
  %1087 = extractvalue { i64, i1 } %1086, 1, !nosanitize !45
  br i1 %1087, label %1088, label %1089, !prof !46, !nosanitize !45

1088:                                             ; preds = %1078
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1089:                                             ; preds = %1078
  %1090 = extractvalue { i64, i1 } %1086, 0, !nosanitize !45
  %1091 = load ptr, ptr %1052, align 8, !tbaa !40
  %1092 = load i64, ptr %1050, align 8, !tbaa !59
  %1093 = lshr i64 %1092, 24
  %1094 = trunc i64 %1093 to i8
  store i64 %1090, ptr %52, align 8, !tbaa !57
  %1095 = getelementptr inbounds nuw i8, ptr %1091, i64 %1085
  store i8 %1094, ptr %1095, align 1, !tbaa !8
  %1096 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1097 = load i64, ptr %52, align 8, !tbaa !57
  %1098 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1097, i64 1), !nosanitize !45
  %1099 = extractvalue { i64, i1 } %1098, 1, !nosanitize !45
  br i1 %1099, label %1100, label %1101, !prof !46, !nosanitize !45

1100:                                             ; preds = %1089
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1101:                                             ; preds = %1089
  %1102 = extractvalue { i64, i1 } %1098, 0, !nosanitize !45
  %1103 = load ptr, ptr %1052, align 8, !tbaa !40
  %1104 = load i64, ptr %1096, align 8, !tbaa !55
  %1105 = trunc i64 %1104 to i8
  store i64 %1102, ptr %52, align 8, !tbaa !57
  %1106 = getelementptr inbounds nuw i8, ptr %1103, i64 %1097
  store i8 %1105, ptr %1106, align 1, !tbaa !8
  %1107 = load i64, ptr %52, align 8, !tbaa !57
  %1108 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1107, i64 1), !nosanitize !45
  %1109 = extractvalue { i64, i1 } %1108, 1, !nosanitize !45
  br i1 %1109, label %1110, label %1111, !prof !46, !nosanitize !45

1110:                                             ; preds = %1101
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1111:                                             ; preds = %1101
  %1112 = extractvalue { i64, i1 } %1108, 0, !nosanitize !45
  %1113 = load ptr, ptr %1052, align 8, !tbaa !40
  %1114 = load i64, ptr %1096, align 8, !tbaa !55
  %1115 = lshr i64 %1114, 8
  %1116 = trunc i64 %1115 to i8
  store i64 %1112, ptr %52, align 8, !tbaa !57
  %1117 = getelementptr inbounds nuw i8, ptr %1113, i64 %1107
  store i8 %1116, ptr %1117, align 1, !tbaa !8
  %1118 = load i64, ptr %52, align 8, !tbaa !57
  %1119 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1118, i64 1), !nosanitize !45
  %1120 = extractvalue { i64, i1 } %1119, 1, !nosanitize !45
  br i1 %1120, label %1121, label %1122, !prof !46, !nosanitize !45

1121:                                             ; preds = %1111
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1122:                                             ; preds = %1111
  %1123 = extractvalue { i64, i1 } %1119, 0, !nosanitize !45
  %1124 = load ptr, ptr %1052, align 8, !tbaa !40
  %1125 = load i64, ptr %1096, align 8, !tbaa !55
  %1126 = lshr i64 %1125, 16
  %1127 = trunc i64 %1126 to i8
  store i64 %1123, ptr %52, align 8, !tbaa !57
  %1128 = getelementptr inbounds nuw i8, ptr %1124, i64 %1118
  store i8 %1127, ptr %1128, align 1, !tbaa !8
  %1129 = load i64, ptr %52, align 8, !tbaa !57
  %1130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1129, i64 1), !nosanitize !45
  %1131 = extractvalue { i64, i1 } %1130, 1, !nosanitize !45
  br i1 %1131, label %1132, label %1133, !prof !46, !nosanitize !45

1132:                                             ; preds = %1122
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1133:                                             ; preds = %1122
  %1134 = extractvalue { i64, i1 } %1130, 0, !nosanitize !45
  %1135 = load ptr, ptr %1052, align 8, !tbaa !40
  %1136 = load i64, ptr %1096, align 8, !tbaa !55
  %1137 = lshr i64 %1136, 24
  %1138 = trunc i64 %1137 to i8
  store i64 %1134, ptr %52, align 8, !tbaa !57
  %1139 = getelementptr inbounds nuw i8, ptr %1135, i64 %1129
  store i8 %1138, ptr %1139, align 1, !tbaa !8
  br label %1183

1140:                                             ; preds = %1048
  %1141 = load i64, ptr %1050, align 8, !tbaa !59
  %1142 = lshr i64 %1141, 16
  %1143 = load i64, ptr %52, align 8, !tbaa !57
  %1144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1143, i64 1), !nosanitize !45
  %1145 = extractvalue { i64, i1 } %1144, 1, !nosanitize !45
  br i1 %1145, label %1146, label %1147, !prof !46, !nosanitize !45

1146:                                             ; preds = %1140
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1147:                                             ; preds = %1140
  %1148 = extractvalue { i64, i1 } %1144, 0, !nosanitize !45
  %1149 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1150 = load ptr, ptr %1149, align 8, !tbaa !40
  %1151 = lshr i64 %1141, 24
  %1152 = trunc i64 %1151 to i8
  store i64 %1148, ptr %52, align 8, !tbaa !57
  %1153 = getelementptr inbounds nuw i8, ptr %1150, i64 %1143
  store i8 %1152, ptr %1153, align 1, !tbaa !8
  %1154 = load i64, ptr %52, align 8, !tbaa !57
  %1155 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1154, i64 1), !nosanitize !45
  %1156 = extractvalue { i64, i1 } %1155, 1, !nosanitize !45
  br i1 %1156, label %1157, label %1158, !prof !46, !nosanitize !45

1157:                                             ; preds = %1147
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1158:                                             ; preds = %1147
  %1159 = extractvalue { i64, i1 } %1155, 0, !nosanitize !45
  %1160 = load ptr, ptr %1149, align 8, !tbaa !40
  %1161 = trunc i64 %1142 to i8
  store i64 %1159, ptr %52, align 8, !tbaa !57
  %1162 = getelementptr inbounds nuw i8, ptr %1160, i64 %1154
  store i8 %1161, ptr %1162, align 1, !tbaa !8
  %1163 = load i64, ptr %1050, align 8, !tbaa !59
  %1164 = trunc i64 %1163 to i8
  %1165 = load i64, ptr %52, align 8, !tbaa !57
  %1166 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1165, i64 1), !nosanitize !45
  %1167 = extractvalue { i64, i1 } %1166, 1, !nosanitize !45
  br i1 %1167, label %1168, label %1169, !prof !46, !nosanitize !45

1168:                                             ; preds = %1158
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1169:                                             ; preds = %1158
  %1170 = extractvalue { i64, i1 } %1166, 0, !nosanitize !45
  %1171 = load ptr, ptr %1149, align 8, !tbaa !40
  %1172 = lshr i64 %1163, 8
  %1173 = trunc i64 %1172 to i8
  store i64 %1170, ptr %52, align 8, !tbaa !57
  %1174 = getelementptr inbounds nuw i8, ptr %1171, i64 %1165
  store i8 %1173, ptr %1174, align 1, !tbaa !8
  %1175 = load i64, ptr %52, align 8, !tbaa !57
  %1176 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1175, i64 1), !nosanitize !45
  %1177 = extractvalue { i64, i1 } %1176, 1, !nosanitize !45
  br i1 %1177, label %1178, label %1179, !prof !46, !nosanitize !45

1178:                                             ; preds = %1169
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1179:                                             ; preds = %1169
  %1180 = extractvalue { i64, i1 } %1176, 0, !nosanitize !45
  %1181 = load ptr, ptr %1149, align 8, !tbaa !40
  store i64 %1180, ptr %52, align 8, !tbaa !57
  %1182 = getelementptr inbounds nuw i8, ptr %1181, i64 %1175
  store i8 %1164, ptr %1182, align 1, !tbaa !8
  br label %1183

1183:                                             ; preds = %1179, %1133
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1184 = load i32, ptr %1045, align 8, !tbaa !30
  %1185 = icmp sgt i32 %1184, 0
  br i1 %1185, label %1186, label %1188

1186:                                             ; preds = %1183
  %1187 = sub nsw i32 0, %1184
  store i32 %1187, ptr %1045, align 8, !tbaa !30
  br label %1188

1188:                                             ; preds = %1186, %1183
  %1189 = load i64, ptr %52, align 8, !tbaa !57
  %1190 = icmp eq i64 %1189, 0
  %1191 = zext i1 %1190 to i32
  br label %1192

1192:                                             ; preds = %1188, %1044, %1043, %1042, %1011, %1008, %976, %968, %943, %886, %774, %.loopexit39, %341, %235, %124, %115, %99, %46, %39, %22, %19, %16, %12, %8, %4, %2
  %1193 = phi i32 [ -5, %115 ], [ -2, %39 ], [ -5, %46 ], [ 0, %99 ], [ -5, %124 ], [ 0, %341 ], [ 0, %943 ], [ 0, %968 ], [ -2, %22 ], [ 0, %1043 ], [ %1191, %1188 ], [ 1, %1044 ], [ 0, %886 ], [ 0, %774 ], [ 0, %.loopexit39 ], [ 0, %235 ], [ 0, %1011 ], [ 0, %1042 ], [ 0, %1008 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ 0, %976 ]
  ret i32 %1193
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
  %48 = load ptr, ptr %47, align 8, !tbaa !19
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %48, align 8, !tbaa !20
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %55 = load i32, ptr %54, align 8, !tbaa !29
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
  %58 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %57, i64 18), !nosanitize !45
  %59 = extractvalue { i64, i1 } %58, 0, !nosanitize !45
  %60 = extractvalue { i64, i1 } %58, 1, !nosanitize !45
  br i1 %60, label %61, label %178, !prof !46, !nosanitize !45

61:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

62:                                               ; preds = %53, %53, %53, %53, %53, %53, %53, %53
  %63 = getelementptr inbounds nuw i8, ptr %48, i64 48
  %64 = load i32, ptr %63, align 8, !tbaa !30
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %64), !nosanitize !45
  %68 = extractvalue { i32, i1 } %67, 0, !nosanitize !45
  %69 = extractvalue { i32, i1 } %67, 1, !nosanitize !45
  br i1 %69, label %70, label %71, !prof !46, !nosanitize !45

70:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !45
  unreachable, !nosanitize !45

71:                                               ; preds = %66, %62
  %72 = phi i32 [ %68, %66 ], [ %64, %62 ]
  switch i32 %72, label %141 [
    i32 0, label %142
    i32 1, label %73
    i32 2, label %78
  ]

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %48, i64 172
  %75 = load i32, ptr %74, align 4, !tbaa !73
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i64 6, i64 10
  br label %142

78:                                               ; preds = %71
  %79 = getelementptr inbounds nuw i8, ptr %48, i64 56
  %80 = load ptr, ptr %79, align 8, !tbaa !100
  %81 = icmp eq ptr %80, null
  br i1 %81, label %142, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 24
  %84 = load ptr, ptr %83, align 8, !tbaa !112
  %85 = icmp eq ptr %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %88 = load i32, ptr %87, align 8, !tbaa !117
  %89 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %88, i32 2), !nosanitize !45
  %90 = extractvalue { i32, i1 } %89, 1, !nosanitize !45
  br i1 %90, label %91, label %92, !prof !46, !nosanitize !45

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

92:                                               ; preds = %86
  %93 = extractvalue { i32, i1 } %89, 0, !nosanitize !45
  %94 = zext i32 %93 to i64
  %95 = add nuw nsw i64 %94, 18
  br label %96

96:                                               ; preds = %92, %82
  %97 = phi i64 [ %95, %92 ], [ 18, %82 ]
  %98 = getelementptr inbounds nuw i8, ptr %80, i64 40
  %99 = load ptr, ptr %98, align 8, !tbaa !111
  %100 = icmp eq ptr %99, null
  br i1 %100, label %.loopexit7, label %101

101:                                              ; preds = %96
  %102 = add nuw nsw i64 %97, 1
  %103 = insertvalue { i64, i1 } { i64 poison, i1 false }, i64 %102, 0
  br label %109

104:                                              ; preds = %109
  %105 = getelementptr inbounds nuw i8, ptr %111, i64 1
  %106 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %112, i64 1), !nosanitize !45
  %107 = extractvalue { i64, i1 } %106, 1, !nosanitize !45
  br i1 %107, label %108, label %109, !prof !130, !llvm.loop !131, !nosanitize !45

108:                                              ; preds = %104
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

109:                                              ; preds = %101, %104
  %110 = phi { i64, i1 } [ %106, %104 ], [ %103, %101 ]
  %111 = phi ptr [ %105, %104 ], [ %99, %101 ]
  %112 = extractvalue { i64, i1 } %110, 0, !nosanitize !45
  %113 = load i8, ptr %111, align 1, !tbaa !8
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %.loopexit7, label %104, !llvm.loop !131

.loopexit7:                                       ; preds = %109, %96
  %115 = phi i64 [ %97, %96 ], [ %112, %109 ]
  %116 = getelementptr inbounds nuw i8, ptr %80, i64 56
  %117 = load ptr, ptr %116, align 8, !tbaa !109
  %118 = icmp eq ptr %117, null
  br i1 %118, label %.loopexit, label %119

119:                                              ; preds = %.loopexit7
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %115, i64 1), !nosanitize !45
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !45
  br i1 %121, label %.loopexit6, label %.preheader, !prof !132, !nosanitize !45

122:                                              ; preds = %.preheader
  %123 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %124 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %128, i64 1), !nosanitize !45
  %125 = extractvalue { i64, i1 } %124, 1, !nosanitize !45
  br i1 %125, label %.loopexit6, label %.preheader, !prof !130, !llvm.loop !133, !nosanitize !45

.loopexit6:                                       ; preds = %122, %119
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

.preheader:                                       ; preds = %119, %122
  %126 = phi { i64, i1 } [ %124, %122 ], [ %120, %119 ]
  %127 = phi ptr [ %123, %122 ], [ %117, %119 ]
  %128 = extractvalue { i64, i1 } %126, 0, !nosanitize !45
  %129 = load i8, ptr %127, align 1, !tbaa !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %.loopexit, label %122, !llvm.loop !133

.loopexit:                                        ; preds = %.preheader, %.loopexit7
  %131 = phi i64 [ %115, %.loopexit7 ], [ %128, %.preheader ]
  %132 = getelementptr inbounds nuw i8, ptr %80, i64 68
  %133 = load i32, ptr %132, align 4, !tbaa !114
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %.loopexit
  %136 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %131, i64 2), !nosanitize !45
  %137 = extractvalue { i64, i1 } %136, 1, !nosanitize !45
  br i1 %137, label %138, label %139, !prof !46, !nosanitize !45

138:                                              ; preds = %135
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

139:                                              ; preds = %135
  %140 = extractvalue { i64, i1 } %136, 0, !nosanitize !45
  br label %142

141:                                              ; preds = %71
  br label %142

142:                                              ; preds = %141, %139, %.loopexit, %78, %73, %71
  %143 = phi i64 [ 18, %141 ], [ 18, %78 ], [ %77, %73 ], [ 0, %71 ], [ %140, %139 ], [ %131, %.loopexit ]
  %144 = getelementptr inbounds nuw i8, ptr %48, i64 84
  %145 = load i32, ptr %144, align 4, !tbaa !31
  %146 = icmp eq i32 %145, 15
  %147 = getelementptr inbounds nuw i8, ptr %48, i64 136
  %148 = load i32, ptr %147, align 8, !tbaa !51
  %149 = icmp eq i32 %148, 15
  %150 = select i1 %146, i1 %149, i1 false
  br i1 %150, label %164, label %151

151:                                              ; preds = %142
  %152 = icmp ugt i32 %145, %148
  br i1 %152, label %157, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds nuw i8, ptr %48, i64 196
  %155 = load i32, ptr %154, align 4, !tbaa !48
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153, %151
  br label %158

158:                                              ; preds = %157, %153
  %159 = phi i64 [ %36, %157 ], [ %27, %153 ]
  %160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %159, i64 %143), !nosanitize !45
  %161 = extractvalue { i64, i1 } %160, 0, !nosanitize !45
  %162 = extractvalue { i64, i1 } %160, 1, !nosanitize !45
  br i1 %162, label %163, label %178, !prof !46, !nosanitize !45

163:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

164:                                              ; preds = %142
  %165 = lshr i64 %1, 12
  %166 = lshr i64 %1, 14
  %167 = lshr i64 %1, 25
  %168 = add i64 %31, %165
  %169 = add i64 %168, %166
  %170 = add i64 %169, %167
  %171 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %170, i64 %143), !nosanitize !45
  %172 = extractvalue { i64, i1 } %171, 1, !nosanitize !45
  br i1 %172, label %173, label %174, !prof !46, !nosanitize !45

173:                                              ; preds = %164
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

174:                                              ; preds = %164
  %175 = extractvalue { i64, i1 } %171, 0, !nosanitize !45
  %176 = icmp ult i64 %175, %1
  %177 = select i1 %176, i64 -1, i64 %175
  br label %178

178:                                              ; preds = %174, %158, %56
  %179 = phi i64 [ %177, %174 ], [ %59, %56 ], [ %161, %158 ]
  ret i64 %179
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
  %48 = load ptr, ptr %47, align 8, !tbaa !19
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %48, align 8, !tbaa !20
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %55 = load i32, ptr %54, align 8, !tbaa !29
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
  %58 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %57, i64 18), !nosanitize !45
  %59 = extractvalue { i64, i1 } %58, 0, !nosanitize !45
  %60 = extractvalue { i64, i1 } %58, 1, !nosanitize !45
  br i1 %60, label %61, label %178, !prof !46, !nosanitize !45

61:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

62:                                               ; preds = %53, %53, %53, %53, %53, %53, %53, %53
  %63 = getelementptr inbounds nuw i8, ptr %48, i64 48
  %64 = load i32, ptr %63, align 8, !tbaa !30
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %64), !nosanitize !45
  %68 = extractvalue { i32, i1 } %67, 0, !nosanitize !45
  %69 = extractvalue { i32, i1 } %67, 1, !nosanitize !45
  br i1 %69, label %70, label %71, !prof !46, !nosanitize !45

70:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !45
  unreachable, !nosanitize !45

71:                                               ; preds = %66, %62
  %72 = phi i32 [ %68, %66 ], [ %64, %62 ]
  switch i32 %72, label %141 [
    i32 0, label %142
    i32 1, label %73
    i32 2, label %78
  ]

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %48, i64 172
  %75 = load i32, ptr %74, align 4, !tbaa !73
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i64 6, i64 10
  br label %142

78:                                               ; preds = %71
  %79 = getelementptr inbounds nuw i8, ptr %48, i64 56
  %80 = load ptr, ptr %79, align 8, !tbaa !100
  %81 = icmp eq ptr %80, null
  br i1 %81, label %142, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 24
  %84 = load ptr, ptr %83, align 8, !tbaa !112
  %85 = icmp eq ptr %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %88 = load i32, ptr %87, align 8, !tbaa !117
  %89 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %88, i32 2), !nosanitize !45
  %90 = extractvalue { i32, i1 } %89, 1, !nosanitize !45
  br i1 %90, label %91, label %92, !prof !46, !nosanitize !45

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

92:                                               ; preds = %86
  %93 = extractvalue { i32, i1 } %89, 0, !nosanitize !45
  %94 = zext i32 %93 to i64
  %95 = add nuw nsw i64 %94, 18
  br label %96

96:                                               ; preds = %92, %82
  %97 = phi i64 [ %95, %92 ], [ 18, %82 ]
  %98 = getelementptr inbounds nuw i8, ptr %80, i64 40
  %99 = load ptr, ptr %98, align 8, !tbaa !111
  %100 = icmp eq ptr %99, null
  br i1 %100, label %.loopexit7, label %101

101:                                              ; preds = %96
  %102 = add nuw nsw i64 %97, 1
  %103 = insertvalue { i64, i1 } { i64 poison, i1 false }, i64 %102, 0
  br label %109

104:                                              ; preds = %109
  %105 = getelementptr inbounds nuw i8, ptr %111, i64 1
  %106 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %112, i64 1), !nosanitize !45
  %107 = extractvalue { i64, i1 } %106, 1, !nosanitize !45
  br i1 %107, label %108, label %109, !prof !130, !llvm.loop !131, !nosanitize !45

108:                                              ; preds = %104
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

109:                                              ; preds = %101, %104
  %110 = phi { i64, i1 } [ %106, %104 ], [ %103, %101 ]
  %111 = phi ptr [ %105, %104 ], [ %99, %101 ]
  %112 = extractvalue { i64, i1 } %110, 0, !nosanitize !45
  %113 = load i8, ptr %111, align 1, !tbaa !8
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %.loopexit7, label %104, !llvm.loop !131

.loopexit7:                                       ; preds = %109, %96
  %115 = phi i64 [ %97, %96 ], [ %112, %109 ]
  %116 = getelementptr inbounds nuw i8, ptr %80, i64 56
  %117 = load ptr, ptr %116, align 8, !tbaa !109
  %118 = icmp eq ptr %117, null
  br i1 %118, label %.loopexit, label %119

119:                                              ; preds = %.loopexit7
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %115, i64 1), !nosanitize !45
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !45
  br i1 %121, label %.loopexit6, label %.preheader, !prof !132, !nosanitize !45

122:                                              ; preds = %.preheader
  %123 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %124 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %128, i64 1), !nosanitize !45
  %125 = extractvalue { i64, i1 } %124, 1, !nosanitize !45
  br i1 %125, label %.loopexit6, label %.preheader, !prof !130, !llvm.loop !133, !nosanitize !45

.loopexit6:                                       ; preds = %122, %119
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

.preheader:                                       ; preds = %119, %122
  %126 = phi { i64, i1 } [ %124, %122 ], [ %120, %119 ]
  %127 = phi ptr [ %123, %122 ], [ %117, %119 ]
  %128 = extractvalue { i64, i1 } %126, 0, !nosanitize !45
  %129 = load i8, ptr %127, align 1, !tbaa !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %.loopexit, label %122, !llvm.loop !133

.loopexit:                                        ; preds = %.preheader, %.loopexit7
  %131 = phi i64 [ %115, %.loopexit7 ], [ %128, %.preheader ]
  %132 = getelementptr inbounds nuw i8, ptr %80, i64 68
  %133 = load i32, ptr %132, align 4, !tbaa !114
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %.loopexit
  %136 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %131, i64 2), !nosanitize !45
  %137 = extractvalue { i64, i1 } %136, 1, !nosanitize !45
  br i1 %137, label %138, label %139, !prof !46, !nosanitize !45

138:                                              ; preds = %135
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

139:                                              ; preds = %135
  %140 = extractvalue { i64, i1 } %136, 0, !nosanitize !45
  br label %142

141:                                              ; preds = %71
  br label %142

142:                                              ; preds = %141, %139, %.loopexit, %78, %73, %71
  %143 = phi i64 [ 18, %141 ], [ 18, %78 ], [ %77, %73 ], [ 0, %71 ], [ %140, %139 ], [ %131, %.loopexit ]
  %144 = getelementptr inbounds nuw i8, ptr %48, i64 84
  %145 = load i32, ptr %144, align 4, !tbaa !31
  %146 = icmp eq i32 %145, 15
  %147 = getelementptr inbounds nuw i8, ptr %48, i64 136
  %148 = load i32, ptr %147, align 8, !tbaa !51
  %149 = icmp eq i32 %148, 15
  %150 = select i1 %146, i1 %149, i1 false
  br i1 %150, label %164, label %151

151:                                              ; preds = %142
  %152 = icmp ugt i32 %145, %148
  br i1 %152, label %157, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds nuw i8, ptr %48, i64 196
  %155 = load i32, ptr %154, align 4, !tbaa !48
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153, %151
  br label %158

158:                                              ; preds = %157, %153
  %159 = phi i64 [ %36, %157 ], [ %27, %153 ]
  %160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %159, i64 %143), !nosanitize !45
  %161 = extractvalue { i64, i1 } %160, 0, !nosanitize !45
  %162 = extractvalue { i64, i1 } %160, 1, !nosanitize !45
  br i1 %162, label %163, label %178, !prof !46, !nosanitize !45

163:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

164:                                              ; preds = %142
  %165 = lshr i64 %1, 12
  %166 = lshr i64 %1, 14
  %167 = lshr i64 %1, 25
  %168 = add i64 %31, %165
  %169 = add i64 %168, %166
  %170 = add i64 %169, %167
  %171 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %170, i64 %143), !nosanitize !45
  %172 = extractvalue { i64, i1 } %171, 1, !nosanitize !45
  br i1 %172, label %173, label %174, !prof !46, !nosanitize !45

173:                                              ; preds = %164
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

174:                                              ; preds = %164
  %175 = extractvalue { i64, i1 } %171, 0, !nosanitize !45
  %176 = icmp ult i64 %175, %1
  %177 = select i1 %176, i64 -1, i64 %175
  br label %178

178:                                              ; preds = %174, %158, %56
  %179 = phi i64 [ %177, %174 ], [ %59, %56 ], [ %161, %158 ]
  ret i64 %179
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
  br i1 %38, label %.loopexit, label %39

39:                                               ; preds = %32
  %40 = load i32, ptr %19, align 4, !tbaa !73
  %41 = zext i32 %40 to i64
  %42 = load i64, ptr %20, align 8, !tbaa !74
  %43 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %41, i64 %42), !nosanitize !45
  %44 = extractvalue { i64, i1 } %43, 1, !nosanitize !45
  br i1 %44, label %45, label %46, !prof !46, !nosanitize !45

45:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

46:                                               ; preds = %39
  %47 = sub nuw i32 %37, %34
  %48 = extractvalue { i64, i1 } %43, 0, !nosanitize !45
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %51 = load i32, ptr %50, align 8, !tbaa !81
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
  %64 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !45
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !45
  br i1 %65, label %66, label %67, !prof !46, !nosanitize !45

66:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

67:                                               ; preds = %63
  %68 = icmp eq i32 %57, %56
  br i1 %68, label %69, label %.loopexit

69:                                               ; preds = %67, %46
  br i1 %23, label %70, label %77

70:                                               ; preds = %69
  %71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !45
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !45
  br i1 %72, label %73, label %74, !prof !46, !nosanitize !45

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

74:                                               ; preds = %70
  %75 = icmp eq i32 %57, %56
  %76 = zext i1 %75 to i32
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi i32 [ 0, %69 ], [ %76, %74 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %78) #11
  %79 = load i64, ptr %25, align 8, !tbaa !57
  %80 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %79, i64 4), !nosanitize !45
  %81 = extractvalue { i64, i1 } %80, 1, !nosanitize !45
  br i1 %81, label %82, label %83, !prof !46, !nosanitize !45

82:                                               ; preds = %77
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

83:                                               ; preds = %77
  %84 = extractvalue { i64, i1 } %80, 0, !nosanitize !45
  %85 = load ptr, ptr %24, align 8, !tbaa !40
  %86 = trunc i32 %57 to i8
  %87 = getelementptr inbounds nuw i8, ptr %85, i64 %84
  store i8 %86, ptr %87, align 1, !tbaa !8
  %88 = load i64, ptr %25, align 8, !tbaa !57
  %89 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %88, i64 3), !nosanitize !45
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !45
  br i1 %90, label %91, label %92, !prof !46, !nosanitize !45

91:                                               ; preds = %83
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

92:                                               ; preds = %83
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !45
  %94 = load ptr, ptr %24, align 8, !tbaa !40
  %95 = lshr i32 %57, 8
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds nuw i8, ptr %94, i64 %93
  store i8 %96, ptr %97, align 1, !tbaa !8
  %98 = load i64, ptr %25, align 8, !tbaa !57
  %99 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %98, i64 2), !nosanitize !45
  %100 = extractvalue { i64, i1 } %99, 1, !nosanitize !45
  br i1 %100, label %101, label %102, !prof !46, !nosanitize !45

101:                                              ; preds = %92
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

102:                                              ; preds = %92
  %103 = extractvalue { i64, i1 } %99, 0, !nosanitize !45
  %104 = load ptr, ptr %24, align 8, !tbaa !40
  %105 = xor i32 %57, -1
  %106 = trunc i32 %105 to i8
  %107 = getelementptr inbounds nuw i8, ptr %104, i64 %103
  store i8 %106, ptr %107, align 1, !tbaa !8
  %108 = load i64, ptr %25, align 8, !tbaa !57
  %109 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %108, i64 1), !nosanitize !45
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !45
  br i1 %110, label %111, label %112, !prof !46, !nosanitize !45

111:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

112:                                              ; preds = %102
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !45
  %114 = load ptr, ptr %24, align 8, !tbaa !40
  %115 = lshr i32 %105, 8
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds nuw i8, ptr %114, i64 %113
  store i8 %116, ptr %117, align 1, !tbaa !8
  %118 = load ptr, ptr %0, align 8, !tbaa !20
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 56
  %120 = load ptr, ptr %119, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %120) #11
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 40
  %122 = load i64, ptr %121, align 8, !tbaa !57
  %123 = getelementptr inbounds nuw i8, ptr %118, i64 32
  %124 = load i32, ptr %123, align 8, !tbaa !107
  %125 = zext i32 %124 to i64
  %126 = tail call i64 @llvm.umin.i64(i64 %122, i64 %125)
  %127 = trunc nuw i64 %126 to i32
  %128 = icmp eq i64 %126, 0
  br i1 %128, label %161, label %129

129:                                              ; preds = %112
  %130 = getelementptr inbounds nuw i8, ptr %118, i64 24
  %131 = load ptr, ptr %130, align 8, !tbaa !106
  %132 = getelementptr inbounds nuw i8, ptr %120, i64 32
  %133 = load ptr, ptr %132, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %131, ptr align 1 %133, i64 %126, i1 false)
  %134 = load ptr, ptr %130, align 8, !tbaa !106
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 %126
  store ptr %135, ptr %130, align 8, !tbaa !106
  %136 = load ptr, ptr %132, align 8, !tbaa !58
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 %126
  store ptr %137, ptr %132, align 8, !tbaa !58
  %138 = getelementptr inbounds nuw i8, ptr %118, i64 40
  %139 = load i64, ptr %138, align 8, !tbaa !108
  %140 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %139, i64 %126), !nosanitize !45
  %141 = extractvalue { i64, i1 } %140, 1, !nosanitize !45
  br i1 %141, label %142, label %143, !prof !46, !nosanitize !45

142:                                              ; preds = %129
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

143:                                              ; preds = %129
  %144 = extractvalue { i64, i1 } %140, 0, !nosanitize !45
  store i64 %144, ptr %138, align 8, !tbaa !108
  %145 = load i32, ptr %123, align 8, !tbaa !107
  %146 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %145, i32 %127), !nosanitize !45
  %147 = extractvalue { i32, i1 } %146, 1, !nosanitize !45
  br i1 %147, label %148, label %149, !prof !46, !nosanitize !45

148:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

149:                                              ; preds = %143
  %150 = extractvalue { i32, i1 } %146, 0, !nosanitize !45
  store i32 %150, ptr %123, align 8, !tbaa !107
  %151 = load i64, ptr %121, align 8, !tbaa !57
  %152 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %151, i64 %126), !nosanitize !45
  %153 = extractvalue { i64, i1 } %152, 1, !nosanitize !45
  br i1 %153, label %154, label %155, !prof !46, !nosanitize !45

154:                                              ; preds = %149
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

155:                                              ; preds = %149
  %156 = extractvalue { i64, i1 } %152, 0, !nosanitize !45
  store i64 %156, ptr %121, align 8, !tbaa !57
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = getelementptr inbounds nuw i8, ptr %120, i64 16
  %160 = load ptr, ptr %159, align 8, !tbaa !40
  store ptr %160, ptr %132, align 8, !tbaa !58
  br label %161

161:                                              ; preds = %158, %155, %112
  %162 = icmp eq i32 %49, 0
  br i1 %162, label %196, label %163

163:                                              ; preds = %161
  %164 = tail call i32 @llvm.umin.i32(i32 %57, i32 %49)
  %165 = load ptr, ptr %0, align 8, !tbaa !20
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 24
  %167 = load ptr, ptr %166, align 8, !tbaa !106
  %168 = load ptr, ptr %26, align 8, !tbaa !34
  %169 = load i64, ptr %20, align 8, !tbaa !74
  %170 = getelementptr inbounds i8, ptr %168, i64 %169
  %171 = zext i32 %164 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %167, ptr align 1 %170, i64 %171, i1 false)
  %172 = load ptr, ptr %0, align 8, !tbaa !20
  %173 = getelementptr inbounds nuw i8, ptr %172, i64 24
  %174 = load ptr, ptr %173, align 8, !tbaa !106
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 %171
  store ptr %175, ptr %173, align 8, !tbaa !106
  %176 = getelementptr inbounds nuw i8, ptr %172, i64 32
  %177 = load i32, ptr %176, align 8, !tbaa !107
  %178 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %177, i32 %164), !nosanitize !45
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !45
  br i1 %179, label %180, label %181, !prof !46, !nosanitize !45

180:                                              ; preds = %163
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

181:                                              ; preds = %163
  %182 = extractvalue { i32, i1 } %178, 0, !nosanitize !45
  store i32 %182, ptr %176, align 8, !tbaa !107
  %183 = getelementptr inbounds nuw i8, ptr %172, i64 40
  %184 = load i64, ptr %183, align 8, !tbaa !108
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 %171), !nosanitize !45
  %186 = extractvalue { i64, i1 } %185, 1, !nosanitize !45
  br i1 %186, label %187, label %188, !prof !46, !nosanitize !45

187:                                              ; preds = %188, %181
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

188:                                              ; preds = %181
  %189 = extractvalue { i64, i1 } %185, 0, !nosanitize !45
  store i64 %189, ptr %183, align 8, !tbaa !108
  %190 = load i64, ptr %20, align 8, !tbaa !74
  %191 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %190, i64 %171), !nosanitize !45
  %192 = extractvalue { i64, i1 } %191, 1, !nosanitize !45
  br i1 %192, label %187, label %193, !prof !46, !nosanitize !45

193:                                              ; preds = %188
  %194 = extractvalue { i64, i1 } %191, 0, !nosanitize !45
  store i64 %194, ptr %20, align 8, !tbaa !74
  %195 = sub i32 %57, %164
  br label %196

196:                                              ; preds = %193, %161
  %197 = phi i32 [ %195, %193 ], [ %57, %161 ]
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %256, label %199

199:                                              ; preds = %196
  %200 = load ptr, ptr %0, align 8, !tbaa !20
  %201 = getelementptr inbounds nuw i8, ptr %200, i64 24
  %202 = load ptr, ptr %201, align 8, !tbaa !106
  %203 = getelementptr inbounds nuw i8, ptr %200, i64 8
  %204 = load i32, ptr %203, align 8, !tbaa !81
  %205 = tail call i32 @llvm.umin.i32(i32 %204, i32 %197)
  %206 = icmp eq i32 %204, 0
  br i1 %206, label %236, label %207

207:                                              ; preds = %199
  %208 = sub i32 %204, %205
  store i32 %208, ptr %203, align 8, !tbaa !81
  %209 = load ptr, ptr %200, align 8, !tbaa !82
  %210 = zext i32 %205 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %202, ptr align 1 %209, i64 %210, i1 false)
  %211 = getelementptr inbounds nuw i8, ptr %200, i64 56
  %212 = load ptr, ptr %211, align 8, !tbaa !19
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 48
  %214 = load i32, ptr %213, align 8, !tbaa !30
  switch i32 %214, label %223 [
    i32 1, label %215
    i32 2, label %219
  ]

215:                                              ; preds = %207
  %216 = getelementptr inbounds nuw i8, ptr %200, i64 96
  %217 = load i64, ptr %216, align 8, !tbaa !59
  %218 = tail call i64 @adler32(i64 noundef %217, ptr noundef %202, i32 noundef %205) #11
  store i64 %218, ptr %216, align 8, !tbaa !59
  br label %223

219:                                              ; preds = %207
  %220 = getelementptr inbounds nuw i8, ptr %200, i64 96
  %221 = load i64, ptr %220, align 8, !tbaa !59
  %222 = tail call i64 @crc32(i64 noundef %221, ptr noundef %202, i32 noundef %205) #11
  store i64 %222, ptr %220, align 8, !tbaa !59
  br label %223

223:                                              ; preds = %219, %215, %207
  %224 = load ptr, ptr %200, align 8, !tbaa !82
  %225 = getelementptr inbounds nuw i8, ptr %224, i64 %210
  store ptr %225, ptr %200, align 8, !tbaa !82
  %226 = getelementptr inbounds nuw i8, ptr %200, i64 16
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

236:                                              ; preds = %231, %199
  %237 = phi ptr [ %202, %199 ], [ %235, %231 ]
  %238 = phi ptr [ %200, %199 ], [ %233, %231 ]
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 24
  %240 = zext i32 %197 to i64
  %241 = getelementptr inbounds nuw i8, ptr %237, i64 %240
  store ptr %241, ptr %239, align 8, !tbaa !106
  %242 = getelementptr inbounds nuw i8, ptr %238, i64 32
  %243 = load i32, ptr %242, align 8, !tbaa !107
  %244 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %243, i32 %197), !nosanitize !45
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

256:                                              ; preds = %254, %196
  %257 = icmp eq i32 %78, 0
  br i1 %257, label %27, label %258, !llvm.loop !134

258:                                              ; preds = %256
  %259 = load ptr, ptr %0, align 8, !tbaa !20
  br label %.loopexit, !llvm.loop !134

.loopexit:                                        ; preds = %67, %59, %32, %258
  %260 = phi ptr [ %259, %258 ], [ %35, %32 ], [ %35, %59 ], [ %35, %67 ]
  %261 = phi i1 [ false, %258 ], [ true, %32 ], [ true, %59 ], [ true, %67 ]
  %262 = getelementptr inbounds nuw i8, ptr %260, i64 8
  %263 = load i32, ptr %262, align 8, !tbaa !81
  %264 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %263), !nosanitize !45
  %265 = extractvalue { i32, i1 } %264, 0, !nosanitize !45
  %266 = extractvalue { i32, i1 } %264, 1, !nosanitize !45
  br i1 %266, label %267, label %268, !prof !46, !nosanitize !45

267:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

268:                                              ; preds = %.loopexit
  %269 = icmp eq i32 %265, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %268
  %271 = load i32, ptr %19, align 4, !tbaa !73
  %272 = zext i32 %271 to i64
  br label %350

273:                                              ; preds = %268
  %274 = load i32, ptr %10, align 8, !tbaa !32
  %275 = icmp ult i32 %265, %274
  br i1 %275, label %285, label %276

276:                                              ; preds = %273
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %277, align 8, !tbaa !125
  %278 = load ptr, ptr %26, align 8, !tbaa !34
  %279 = load ptr, ptr %260, align 8, !tbaa !82
  %280 = zext i32 %274 to i64
  %281 = sub nsw i64 0, %280
  %282 = getelementptr inbounds i8, ptr %279, i64 %281
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %278, ptr align 1 %282, i64 %280, i1 false)
  %283 = load i32, ptr %10, align 8, !tbaa !32
  store i32 %283, ptr %19, align 4, !tbaa !73
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %283, ptr %284, align 4, !tbaa !76
  br label %347

285:                                              ; preds = %273
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %287 = load i64, ptr %286, align 8, !tbaa !61
  %288 = load i32, ptr %19, align 4, !tbaa !73
  %289 = zext i32 %288 to i64
  %290 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %287, i64 %289), !nosanitize !45
  %291 = extractvalue { i64, i1 } %290, 1, !nosanitize !45
  br i1 %291, label %292, label %293, !prof !46, !nosanitize !45

292:                                              ; preds = %285
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

293:                                              ; preds = %285
  %294 = extractvalue { i64, i1 } %290, 0, !nosanitize !45
  %295 = zext i32 %265 to i64
  %296 = icmp ugt i64 %294, %295
  br i1 %296, label %318, label %297

297:                                              ; preds = %293
  %298 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %288, i32 %274), !nosanitize !45
  %299 = extractvalue { i32, i1 } %298, 1, !nosanitize !45
  br i1 %299, label %300, label %301, !prof !46, !nosanitize !45

300:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

301:                                              ; preds = %297
  %302 = extractvalue { i32, i1 } %298, 0, !nosanitize !45
  store i32 %302, ptr %19, align 4, !tbaa !73
  %303 = load ptr, ptr %26, align 8, !tbaa !34
  %304 = zext i32 %274 to i64
  %305 = getelementptr inbounds nuw i8, ptr %303, i64 %304
  %306 = zext i32 %302 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %303, ptr nonnull align 1 %305, i64 %306, i1 false)
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %308 = load i32, ptr %307, align 8, !tbaa !125
  %309 = icmp ult i32 %308, 2
  br i1 %309, label %310, label %312

310:                                              ; preds = %301
  %311 = add nuw nsw i32 %308, 1
  store i32 %311, ptr %307, align 8, !tbaa !125
  br label %312

312:                                              ; preds = %310, %301
  %313 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %314 = load i32, ptr %313, align 4, !tbaa !76
  %315 = load i32, ptr %19, align 4, !tbaa !73
  %316 = icmp ugt i32 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  store i32 %315, ptr %313, align 4, !tbaa !76
  br label %318

318:                                              ; preds = %317, %312, %293
  %319 = phi i32 [ %315, %312 ], [ %315, %317 ], [ %288, %293 ]
  %320 = load ptr, ptr %26, align 8, !tbaa !34
  %321 = zext i32 %319 to i64
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 %321
  %323 = load ptr, ptr %0, align 8, !tbaa !20
  %324 = load ptr, ptr %323, align 8, !tbaa !82
  %325 = sub nsw i64 0, %295
  %326 = getelementptr inbounds i8, ptr %324, i64 %325
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %322, ptr nonnull align 1 %326, i64 %295, i1 false)
  %327 = load i32, ptr %19, align 4, !tbaa !73
  %328 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %327, i32 %265), !nosanitize !45
  %329 = extractvalue { i32, i1 } %328, 1, !nosanitize !45
  br i1 %329, label %330, label %331, !prof !46, !nosanitize !45

330:                                              ; preds = %318
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

331:                                              ; preds = %318
  %332 = extractvalue { i32, i1 } %328, 0, !nosanitize !45
  store i32 %332, ptr %19, align 4, !tbaa !73
  %333 = load i32, ptr %10, align 8, !tbaa !32
  %334 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %335 = load i32, ptr %334, align 4, !tbaa !76
  %336 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %333, i32 %335), !nosanitize !45
  %337 = extractvalue { i32, i1 } %336, 1, !nosanitize !45
  br i1 %337, label %338, label %339, !prof !46, !nosanitize !45

338:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

339:                                              ; preds = %331
  %340 = extractvalue { i32, i1 } %336, 0, !nosanitize !45
  %341 = tail call i32 @llvm.umin.i32(i32 %265, i32 %340)
  %342 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %335, i32 %341), !nosanitize !45
  %343 = extractvalue { i32, i1 } %342, 1, !nosanitize !45
  br i1 %343, label %344, label %345, !prof !46, !nosanitize !45

344:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

345:                                              ; preds = %339
  %346 = extractvalue { i32, i1 } %342, 0, !nosanitize !45
  store i32 %346, ptr %334, align 4, !tbaa !76
  br label %347

347:                                              ; preds = %345, %276
  %348 = phi i32 [ %332, %345 ], [ %283, %276 ]
  %349 = zext i32 %348 to i64
  store i64 %349, ptr %20, align 8, !tbaa !74
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
  %361 = load ptr, ptr %0, align 8, !tbaa !20
  %362 = getelementptr inbounds nuw i8, ptr %361, i64 8
  %363 = load i32, ptr %362, align 8, !tbaa !81
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %360
  %366 = load i64, ptr %20, align 8, !tbaa !74
  %367 = icmp eq i64 %366, %351
  br i1 %367, label %580, label %368

368:                                              ; preds = %365, %360, %358, %358
  %369 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %370 = load i64, ptr %369, align 8, !tbaa !61
  %371 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %370, i64 %351), !nosanitize !45
  %372 = extractvalue { i64, i1 } %371, 1, !nosanitize !45
  br i1 %372, label %373, label %374, !prof !46, !nosanitize !45

373:                                              ; preds = %368
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

374:                                              ; preds = %368
  %375 = extractvalue { i64, i1 } %371, 0, !nosanitize !45
  %376 = trunc i64 %375 to i32
  %377 = load ptr, ptr %0, align 8, !tbaa !20
  %378 = getelementptr inbounds nuw i8, ptr %377, i64 8
  %379 = load i32, ptr %378, align 8, !tbaa !81
  %380 = icmp ugt i32 %379, %376
  br i1 %380, label %381, label %413

381:                                              ; preds = %374
  %382 = load i64, ptr %20, align 8, !tbaa !74
  %383 = load i32, ptr %10, align 8, !tbaa !32
  %384 = zext i32 %383 to i64
  %385 = icmp slt i64 %382, %384
  br i1 %385, label %413, label %386

386:                                              ; preds = %381
  %387 = sub nsw i64 %382, %384
  store i64 %387, ptr %20, align 8, !tbaa !74
  %388 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %352, i32 %383), !nosanitize !45
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !45
  br i1 %389, label %390, label %391, !prof !46, !nosanitize !45

390:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

391:                                              ; preds = %386
  %392 = extractvalue { i32, i1 } %388, 0, !nosanitize !45
  store i32 %392, ptr %19, align 4, !tbaa !73
  %393 = load ptr, ptr %26, align 8, !tbaa !34
  %394 = getelementptr inbounds nuw i8, ptr %393, i64 %384
  %395 = zext i32 %392 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %393, ptr align 1 %394, i64 %395, i1 false)
  %396 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %397 = load i32, ptr %396, align 8, !tbaa !125
  %398 = icmp ult i32 %397, 2
  br i1 %398, label %399, label %401

399:                                              ; preds = %391
  %400 = add nuw nsw i32 %397, 1
  store i32 %400, ptr %396, align 8, !tbaa !125
  br label %401

401:                                              ; preds = %399, %391
  %402 = load i32, ptr %10, align 8, !tbaa !32
  %403 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %376, i32 %402), !nosanitize !45
  %404 = extractvalue { i32, i1 } %403, 0, !nosanitize !45
  %405 = extractvalue { i32, i1 } %403, 1, !nosanitize !45
  br i1 %405, label %406, label %407, !prof !46, !nosanitize !45

406:                                              ; preds = %401
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

407:                                              ; preds = %401
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %409 = load i32, ptr %408, align 4, !tbaa !76
  %410 = load i32, ptr %19, align 4, !tbaa !73
  %411 = icmp ugt i32 %409, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %407
  store i32 %410, ptr %408, align 4, !tbaa !76
  br label %413

413:                                              ; preds = %412, %407, %381, %374
  %414 = phi i32 [ %410, %412 ], [ %410, %407 ], [ %352, %381 ], [ %352, %374 ]
  %415 = phi i32 [ %404, %412 ], [ %404, %407 ], [ %376, %381 ], [ %376, %374 ]
  %416 = load ptr, ptr %0, align 8, !tbaa !20
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 8
  %418 = load i32, ptr %417, align 8, !tbaa !81
  %419 = tail call i32 @llvm.umin.i32(i32 %415, i32 %418)
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %470, label %421

421:                                              ; preds = %413
  %422 = load ptr, ptr %26, align 8, !tbaa !34
  %423 = zext i32 %414 to i64
  %424 = getelementptr inbounds nuw i8, ptr %422, i64 %423
  %425 = sub i32 %418, %419
  store i32 %425, ptr %417, align 8, !tbaa !81
  %426 = load ptr, ptr %416, align 8, !tbaa !82
  %427 = zext i32 %419 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %424, ptr align 1 %426, i64 %427, i1 false)
  %428 = getelementptr inbounds nuw i8, ptr %416, i64 56
  %429 = load ptr, ptr %428, align 8, !tbaa !19
  %430 = getelementptr inbounds nuw i8, ptr %429, i64 48
  %431 = load i32, ptr %430, align 8, !tbaa !30
  switch i32 %431, label %440 [
    i32 1, label %432
    i32 2, label %436
  ]

432:                                              ; preds = %421
  %433 = getelementptr inbounds nuw i8, ptr %416, i64 96
  %434 = load i64, ptr %433, align 8, !tbaa !59
  %435 = tail call i64 @adler32(i64 noundef %434, ptr noundef %424, i32 noundef %419) #11
  store i64 %435, ptr %433, align 8, !tbaa !59
  br label %440

436:                                              ; preds = %421
  %437 = getelementptr inbounds nuw i8, ptr %416, i64 96
  %438 = load i64, ptr %437, align 8, !tbaa !59
  %439 = tail call i64 @crc32(i64 noundef %438, ptr noundef %424, i32 noundef %419) #11
  store i64 %439, ptr %437, align 8, !tbaa !59
  br label %440

440:                                              ; preds = %436, %432, %421
  %441 = load ptr, ptr %416, align 8, !tbaa !82
  %442 = getelementptr inbounds nuw i8, ptr %441, i64 %427
  store ptr %442, ptr %416, align 8, !tbaa !82
  %443 = getelementptr inbounds nuw i8, ptr %416, i64 16
  %444 = load i64, ptr %443, align 8, !tbaa !55
  %445 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %444, i64 %427), !nosanitize !45
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !45
  br i1 %446, label %447, label %448, !prof !46, !nosanitize !45

447:                                              ; preds = %440
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

448:                                              ; preds = %440
  %449 = extractvalue { i64, i1 } %445, 0, !nosanitize !45
  store i64 %449, ptr %443, align 8, !tbaa !55
  %450 = load i32, ptr %19, align 4, !tbaa !73
  %451 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %450, i32 %419), !nosanitize !45
  %452 = extractvalue { i32, i1 } %451, 1, !nosanitize !45
  br i1 %452, label %453, label %454, !prof !46, !nosanitize !45

453:                                              ; preds = %448
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

454:                                              ; preds = %448
  %455 = extractvalue { i32, i1 } %451, 0, !nosanitize !45
  store i32 %455, ptr %19, align 4, !tbaa !73
  %456 = load i32, ptr %10, align 8, !tbaa !32
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %458 = load i32, ptr %457, align 4, !tbaa !76
  %459 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %456, i32 %458), !nosanitize !45
  %460 = extractvalue { i32, i1 } %459, 1, !nosanitize !45
  br i1 %460, label %461, label %462, !prof !46, !nosanitize !45

461:                                              ; preds = %454
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

462:                                              ; preds = %454
  %463 = extractvalue { i32, i1 } %459, 0, !nosanitize !45
  %464 = tail call i32 @llvm.umin.i32(i32 %419, i32 %463)
  %465 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %458, i32 %464), !nosanitize !45
  %466 = extractvalue { i32, i1 } %465, 1, !nosanitize !45
  br i1 %466, label %467, label %468, !prof !46, !nosanitize !45

467:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

468:                                              ; preds = %462
  %469 = extractvalue { i32, i1 } %465, 0, !nosanitize !45
  store i32 %469, ptr %457, align 4, !tbaa !76
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
  %477 = load i32, ptr %18, align 4, !tbaa !101
  %478 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %477, i32 42), !nosanitize !45
  %479 = extractvalue { i32, i1 } %478, 1, !nosanitize !45
  br i1 %479, label %480, label %481, !prof !46, !nosanitize !45

480:                                              ; preds = %522, %476
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

481:                                              ; preds = %476
  %482 = extractvalue { i32, i1 } %478, 0, !nosanitize !45
  %483 = lshr i32 %482, 3
  %484 = load i64, ptr %3, align 8, !tbaa !41
  %485 = zext nneg i32 %483 to i64
  %486 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %484, i64 %485), !nosanitize !45
  %487 = extractvalue { i64, i1 } %486, 1, !nosanitize !45
  br i1 %487, label %488, label %489, !prof !46, !nosanitize !45

488:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

489:                                              ; preds = %481
  %490 = extractvalue { i64, i1 } %486, 0, !nosanitize !45
  %491 = tail call i64 @llvm.umin.i64(i64 %490, i64 65535)
  %492 = trunc nuw nsw i64 %491 to i32
  %493 = load i64, ptr %20, align 8, !tbaa !74
  %494 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %473, i64 %493), !nosanitize !45
  %495 = extractvalue { i64, i1 } %494, 1, !nosanitize !45
  br i1 %495, label %496, label %497, !prof !46, !nosanitize !45

496:                                              ; preds = %489
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

497:                                              ; preds = %489
  %498 = load i32, ptr %10, align 8, !tbaa !32
  %499 = tail call i32 @llvm.umin.i32(i32 %498, i32 %492)
  %500 = extractvalue { i64, i1 } %494, 0, !nosanitize !45
  %501 = trunc i64 %500 to i32
  %502 = icmp ugt i32 %499, %501
  br i1 %502, label %503, label %512

503:                                              ; preds = %497
  %504 = icmp ne i32 %501, 0
  %505 = or i1 %23, %504
  %506 = and i1 %359, %505
  br i1 %506, label %507, label %580

507:                                              ; preds = %503
  %508 = load ptr, ptr %0, align 8, !tbaa !20
  %509 = getelementptr inbounds nuw i8, ptr %508, i64 8
  %510 = load i32, ptr %509, align 8, !tbaa !81
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %580

512:                                              ; preds = %507, %497
  %513 = tail call i32 @llvm.umin.i32(i32 %492, i32 %501)
  br i1 %23, label %514, label %522

514:                                              ; preds = %512
  %515 = load ptr, ptr %0, align 8, !tbaa !20
  %516 = getelementptr inbounds nuw i8, ptr %515, i64 8
  %517 = load i32, ptr %516, align 8, !tbaa !81
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
  %527 = load i64, ptr %20, align 8, !tbaa !74
  %528 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %527, i64 %526), !nosanitize !45
  %529 = extractvalue { i64, i1 } %528, 1, !nosanitize !45
  br i1 %529, label %480, label %530, !prof !46, !nosanitize !45

530:                                              ; preds = %522
  %531 = extractvalue { i64, i1 } %528, 0, !nosanitize !45
  store i64 %531, ptr %20, align 8, !tbaa !74
  %532 = load ptr, ptr %0, align 8, !tbaa !20
  %533 = getelementptr inbounds nuw i8, ptr %532, i64 56
  %534 = load ptr, ptr %533, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %534) #11
  %535 = getelementptr inbounds nuw i8, ptr %534, i64 40
  %536 = load i64, ptr %535, align 8, !tbaa !57
  %537 = getelementptr inbounds nuw i8, ptr %532, i64 32
  %538 = load i32, ptr %537, align 8, !tbaa !107
  %539 = zext i32 %538 to i64
  %540 = tail call i64 @llvm.umin.i64(i64 %536, i64 %539)
  %541 = trunc nuw i64 %540 to i32
  %542 = icmp eq i64 %540, 0
  br i1 %542, label %575, label %543

543:                                              ; preds = %530
  %544 = getelementptr inbounds nuw i8, ptr %532, i64 24
  %545 = load ptr, ptr %544, align 8, !tbaa !106
  %546 = getelementptr inbounds nuw i8, ptr %534, i64 32
  %547 = load ptr, ptr %546, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %545, ptr align 1 %547, i64 %540, i1 false)
  %548 = load ptr, ptr %544, align 8, !tbaa !106
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 %540
  store ptr %549, ptr %544, align 8, !tbaa !106
  %550 = load ptr, ptr %546, align 8, !tbaa !58
  %551 = getelementptr inbounds nuw i8, ptr %550, i64 %540
  store ptr %551, ptr %546, align 8, !tbaa !58
  %552 = getelementptr inbounds nuw i8, ptr %532, i64 40
  %553 = load i64, ptr %552, align 8, !tbaa !108
  %554 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %553, i64 %540), !nosanitize !45
  %555 = extractvalue { i64, i1 } %554, 1, !nosanitize !45
  br i1 %555, label %556, label %557, !prof !46, !nosanitize !45

556:                                              ; preds = %543
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

557:                                              ; preds = %543
  %558 = extractvalue { i64, i1 } %554, 0, !nosanitize !45
  store i64 %558, ptr %552, align 8, !tbaa !108
  %559 = load i32, ptr %537, align 8, !tbaa !107
  %560 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %559, i32 %541), !nosanitize !45
  %561 = extractvalue { i32, i1 } %560, 1, !nosanitize !45
  br i1 %561, label %562, label %563, !prof !46, !nosanitize !45

562:                                              ; preds = %557
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

563:                                              ; preds = %557
  %564 = extractvalue { i32, i1 } %560, 0, !nosanitize !45
  store i32 %564, ptr %537, align 8, !tbaa !107
  %565 = load i64, ptr %535, align 8, !tbaa !57
  %566 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %565, i64 %540), !nosanitize !45
  %567 = extractvalue { i64, i1 } %566, 1, !nosanitize !45
  br i1 %567, label %568, label %569, !prof !46, !nosanitize !45

568:                                              ; preds = %563
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

569:                                              ; preds = %563
  %570 = extractvalue { i64, i1 } %566, 0, !nosanitize !45
  store i64 %570, ptr %535, align 8, !tbaa !57
  %571 = icmp eq i64 %570, 0
  br i1 %571, label %572, label %575

572:                                              ; preds = %569
  %573 = getelementptr inbounds nuw i8, ptr %534, i64 16
  %574 = load ptr, ptr %573, align 8, !tbaa !40
  store ptr %574, ptr %546, align 8, !tbaa !58
  br label %575

575:                                              ; preds = %572, %569, %530
  %576 = icmp eq i32 %523, 0
  br i1 %576, label %580, label %577

577:                                              ; preds = %575, %357
  %578 = phi i32 [ 3, %357 ], [ 2, %575 ]
  %579 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %579, align 8, !tbaa !102
  br label %580

580:                                              ; preds = %577, %575, %507, %503, %365
  %581 = phi i32 [ 0, %507 ], [ 1, %365 ], [ 0, %503 ], [ 0, %575 ], [ %578, %577 ]
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
  %26 = load i32, ptr %3, align 4, !tbaa !75
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %350

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 8, !tbaa !32
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %300, %28
  %32 = phi i32 [ %228, %300 ], [ 0, %28 ]
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
  br i1 %186, label %305, label %187

187:                                              ; preds = %179
  %188 = load ptr, ptr %7, align 8, !tbaa !34
  %189 = zext i32 %181 to i64
  %190 = getelementptr inbounds nuw i8, ptr %188, i64 %189
  %191 = zext i32 %180 to i64
  %192 = getelementptr inbounds nuw i8, ptr %190, i64 %191
  %193 = tail call i32 @llvm.umin.i32(i32 %185, i32 %182)
  %194 = icmp eq i32 %182, 0
  br i1 %194, label %222, label %195

195:                                              ; preds = %187
  %196 = sub i32 %185, %193
  store i32 %196, ptr %184, align 8, !tbaa !81
  %197 = load ptr, ptr %183, align 8, !tbaa !82
  %198 = zext i32 %193 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %192, ptr align 1 %197, i64 %198, i1 false)
  %199 = getelementptr inbounds nuw i8, ptr %183, i64 56
  %200 = load ptr, ptr %199, align 8, !tbaa !19
  %201 = getelementptr inbounds nuw i8, ptr %200, i64 48
  %202 = load i32, ptr %201, align 8, !tbaa !30
  switch i32 %202, label %211 [
    i32 1, label %203
    i32 2, label %207
  ]

203:                                              ; preds = %195
  %204 = getelementptr inbounds nuw i8, ptr %183, i64 96
  %205 = load i64, ptr %204, align 8, !tbaa !59
  %206 = tail call i64 @adler32(i64 noundef %205, ptr noundef %192, i32 noundef %193) #11
  store i64 %206, ptr %204, align 8, !tbaa !59
  br label %211

207:                                              ; preds = %195
  %208 = getelementptr inbounds nuw i8, ptr %183, i64 96
  %209 = load i64, ptr %208, align 8, !tbaa !59
  %210 = tail call i64 @crc32(i64 noundef %209, ptr noundef %192, i32 noundef %193) #11
  store i64 %210, ptr %208, align 8, !tbaa !59
  br label %211

211:                                              ; preds = %207, %203, %195
  %212 = load ptr, ptr %183, align 8, !tbaa !82
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 %198
  store ptr %213, ptr %183, align 8, !tbaa !82
  %214 = getelementptr inbounds nuw i8, ptr %183, i64 16
  %215 = load i64, ptr %214, align 8, !tbaa !55
  %216 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %215, i64 %198), !nosanitize !45
  %217 = extractvalue { i64, i1 } %216, 1, !nosanitize !45
  br i1 %217, label %218, label %219, !prof !46, !nosanitize !45

218:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

219:                                              ; preds = %211
  %220 = extractvalue { i64, i1 } %216, 0, !nosanitize !45
  store i64 %220, ptr %214, align 8, !tbaa !55
  %221 = load i32, ptr %3, align 4, !tbaa !75
  br label %222

222:                                              ; preds = %219, %187
  %223 = phi i32 [ %180, %187 ], [ %221, %219 ]
  %224 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %223, i32 %193), !nosanitize !45
  %225 = extractvalue { i32, i1 } %224, 1, !nosanitize !45
  br i1 %225, label %226, label %227, !prof !46, !nosanitize !45

226:                                              ; preds = %222
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

227:                                              ; preds = %222
  %228 = extractvalue { i32, i1 } %224, 0, !nosanitize !45
  store i32 %228, ptr %3, align 4, !tbaa !75
  %229 = load i32, ptr %10, align 4, !tbaa !76
  %230 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %228, i32 %229), !nosanitize !45
  %231 = extractvalue { i32, i1 } %230, 1, !nosanitize !45
  br i1 %231, label %232, label %233, !prof !46, !nosanitize !45

232:                                              ; preds = %227
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

233:                                              ; preds = %227
  %234 = extractvalue { i32, i1 } %230, 0, !nosanitize !45
  %235 = icmp ugt i32 %234, 2
  br i1 %235, label %236, label %.loopexit

236:                                              ; preds = %233
  %237 = load i32, ptr %6, align 4, !tbaa !73
  %238 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %237, i32 %229), !nosanitize !45
  %239 = extractvalue { i32, i1 } %238, 0, !nosanitize !45
  %240 = extractvalue { i32, i1 } %238, 1, !nosanitize !45
  br i1 %240, label %241, label %242, !prof !46, !nosanitize !45

241:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

242:                                              ; preds = %236
  %243 = load ptr, ptr %7, align 8, !tbaa !34
  %244 = zext i32 %239 to i64
  %245 = getelementptr inbounds nuw i8, ptr %243, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !8
  %247 = zext i8 %246 to i32
  store i32 %247, ptr %15, align 8, !tbaa !80
  %248 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %239, i32 1), !nosanitize !45
  %249 = extractvalue { i32, i1 } %248, 1, !nosanitize !45
  br i1 %249, label %250, label %251, !prof !46, !nosanitize !45

250:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

251:                                              ; preds = %242
  %252 = extractvalue { i32, i1 } %248, 0, !nosanitize !45
  %253 = load i32, ptr %16, align 8, !tbaa !53
  %254 = shl i32 %247, %253
  %255 = zext i32 %252 to i64
  %256 = getelementptr inbounds nuw i8, ptr %243, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !8
  %258 = zext i8 %257 to i32
  %259 = xor i32 %254, %258
  %260 = load i32, ptr %17, align 4, !tbaa !52
  %261 = and i32 %259, %260
  store i32 %261, ptr %15, align 8, !tbaa !80
  br label %262

262:                                              ; preds = %295, %251
  %263 = phi i32 [ %261, %251 ], [ %280, %295 ]
  %264 = phi i32 [ %229, %251 ], [ %291, %295 ]
  %265 = phi i32 [ %239, %251 ], [ %296, %295 ]
  %266 = icmp eq i32 %264, 0
  br i1 %266, label %.loopexit, label %267

267:                                              ; preds = %262
  %268 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %265, i32 3), !nosanitize !45
  %269 = extractvalue { i32, i1 } %268, 1, !nosanitize !45
  br i1 %269, label %270, label %271, !prof !46, !nosanitize !45

270:                                              ; preds = %267
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

271:                                              ; preds = %267
  %272 = shl i32 %263, %253
  %273 = extractvalue { i32, i1 } %268, 0, !nosanitize !45
  %274 = add i32 %273, -1
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds nuw i8, ptr %243, i64 %275
  %277 = load i8, ptr %276, align 1, !tbaa !8
  %278 = zext i8 %277 to i32
  %279 = xor i32 %272, %278
  %280 = and i32 %279, %260
  store i32 %280, ptr %15, align 8, !tbaa !80
  %281 = load ptr, ptr %12, align 8, !tbaa !37
  %282 = zext i32 %280 to i64
  %283 = getelementptr inbounds nuw [2 x i8], ptr %281, i64 %282
  %284 = load i16, ptr %283, align 2, !tbaa !62
  %285 = load ptr, ptr %13, align 8, !tbaa !35
  %286 = load i32, ptr %18, align 8, !tbaa !33
  %287 = and i32 %286, %265
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds nuw [2 x i8], ptr %285, i64 %288
  store i16 %284, ptr %289, align 2, !tbaa !62
  %290 = trunc i32 %265 to i16
  store i16 %290, ptr %283, align 2, !tbaa !62
  %291 = add i32 %264, -1
  store i32 %291, ptr %10, align 4, !tbaa !76
  %292 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %228, i32 %291), !nosanitize !45
  %293 = extractvalue { i32, i1 } %292, 1, !nosanitize !45
  br i1 %293, label %294, label %295, !prof !46, !nosanitize !45

294:                                              ; preds = %271
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

295:                                              ; preds = %271
  %296 = add nuw i32 %265, 1
  %297 = extractvalue { i32, i1 } %292, 0, !nosanitize !45
  %298 = icmp ult i32 %297, 3
  br i1 %298, label %.loopexit, label %262, !llvm.loop !91

.loopexit:                                        ; preds = %295, %262, %233
  %299 = icmp ult i32 %228, 262
  br i1 %299, label %300, label %305

300:                                              ; preds = %.loopexit
  %301 = load ptr, ptr %0, align 8, !tbaa !20
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 8
  %303 = load i32, ptr %302, align 8, !tbaa !81
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %31, !llvm.loop !92

305:                                              ; preds = %300, %.loopexit, %179
  %306 = phi i32 [ %228, %300 ], [ %228, %.loopexit ], [ %180, %179 ]
  %307 = load i64, ptr %19, align 8, !tbaa !38
  %308 = load i64, ptr %5, align 8, !tbaa !61
  %309 = icmp ult i64 %307, %308
  br i1 %309, label %310, label %345

310:                                              ; preds = %305
  %311 = load i32, ptr %6, align 4, !tbaa !73
  %312 = zext i32 %311 to i64
  %313 = zext i32 %306 to i64
  %314 = add nuw nsw i64 %312, %313
  %315 = icmp ult i64 %307, %314
  br i1 %315, label %316, label %326

316:                                              ; preds = %310
  %317 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %308, i64 %314), !nosanitize !45
  %318 = extractvalue { i64, i1 } %317, 1, !nosanitize !45
  br i1 %318, label %319, label %320, !prof !46, !nosanitize !45

319:                                              ; preds = %316
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

320:                                              ; preds = %316
  %321 = extractvalue { i64, i1 } %317, 0, !nosanitize !45
  %322 = tail call i64 @llvm.umin.i64(i64 %321, i64 258)
  %323 = load ptr, ptr %7, align 8, !tbaa !34
  %324 = getelementptr inbounds nuw i8, ptr %323, i64 %314
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %324, i8 0, i64 %322, i1 false)
  %325 = add nuw nsw i64 %322, %314
  br label %342

326:                                              ; preds = %310
  %327 = add nuw nsw i64 %314, 258
  %328 = icmp ult i64 %307, %327
  br i1 %328, label %329, label %345

329:                                              ; preds = %326
  %330 = sub nuw nsw i64 %327, %307
  %331 = sub i64 %308, %307
  %332 = tail call i64 @llvm.umin.i64(i64 %330, i64 %331)
  %333 = load ptr, ptr %7, align 8, !tbaa !34
  %334 = getelementptr inbounds nuw i8, ptr %333, i64 %307
  %335 = and i64 %332, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %334, i8 0, i64 %335, i1 false)
  %336 = load i64, ptr %19, align 8, !tbaa !38
  %337 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %336, i64 %332), !nosanitize !45
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !45
  br i1 %338, label %339, label %340, !prof !46, !nosanitize !45

339:                                              ; preds = %329
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

340:                                              ; preds = %329
  %341 = extractvalue { i64, i1 } %337, 0, !nosanitize !45
  br label %342

342:                                              ; preds = %340, %320
  %343 = phi i64 [ %325, %320 ], [ %341, %340 ]
  store i64 %343, ptr %19, align 8, !tbaa !38
  %344 = load i32, ptr %3, align 4, !tbaa !75
  br label %345

345:                                              ; preds = %342, %326, %305
  %346 = phi i32 [ %306, %305 ], [ %306, %326 ], [ %344, %342 ]
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %345
  %349 = icmp eq i32 %1, 0
  br i1 %349, label %.loopexit24, label %465

350:                                              ; preds = %345, %25
  store i32 0, ptr %20, align 8, !tbaa !78
  %351 = load ptr, ptr %7, align 8, !tbaa !34
  %352 = load i32, ptr %6, align 4, !tbaa !73
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds nuw i8, ptr %351, i64 %353
  %355 = load i8, ptr %354, align 1, !tbaa !8
  %356 = load i32, ptr %22, align 4, !tbaa !139
  %357 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %356, i32 1), !nosanitize !45
  %358 = extractvalue { i32, i1 } %357, 1, !nosanitize !45
  br i1 %358, label %359, label %360, !prof !46, !nosanitize !45

359:                                              ; preds = %350
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

360:                                              ; preds = %350
  %361 = extractvalue { i32, i1 } %357, 0, !nosanitize !45
  %362 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %361, ptr %22, align 4, !tbaa !139
  %363 = zext i32 %356 to i64
  %364 = getelementptr inbounds nuw i8, ptr %362, i64 %363
  store i8 0, ptr %364, align 1, !tbaa !8
  %365 = load i32, ptr %22, align 4, !tbaa !139
  %366 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %365, i32 1), !nosanitize !45
  %367 = extractvalue { i32, i1 } %366, 1, !nosanitize !45
  br i1 %367, label %368, label %369, !prof !46, !nosanitize !45

368:                                              ; preds = %360
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

369:                                              ; preds = %360
  %370 = extractvalue { i32, i1 } %366, 0, !nosanitize !45
  %371 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %370, ptr %22, align 4, !tbaa !139
  %372 = zext i32 %365 to i64
  %373 = getelementptr inbounds nuw i8, ptr %371, i64 %372
  store i8 0, ptr %373, align 1, !tbaa !8
  %374 = load i32, ptr %22, align 4, !tbaa !139
  %375 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %374, i32 1), !nosanitize !45
  %376 = extractvalue { i32, i1 } %375, 1, !nosanitize !45
  br i1 %376, label %377, label %378, !prof !46, !nosanitize !45

377:                                              ; preds = %369
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

378:                                              ; preds = %369
  %379 = extractvalue { i32, i1 } %375, 0, !nosanitize !45
  %380 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %379, ptr %22, align 4, !tbaa !139
  %381 = zext i32 %374 to i64
  %382 = getelementptr inbounds nuw i8, ptr %380, i64 %381
  store i8 %355, ptr %382, align 1, !tbaa !8
  %383 = zext i8 %355 to i64
  %384 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %383
  %385 = load i16, ptr %384, align 4, !tbaa !8
  %386 = add i16 %385, 1
  store i16 %386, ptr %384, align 4, !tbaa !8
  %387 = load i32, ptr %22, align 4, !tbaa !139
  %388 = load i32, ptr %24, align 8, !tbaa !47
  %389 = icmp eq i32 %387, %388
  %390 = load i32, ptr %3, align 4, !tbaa !75
  %391 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %390, i32 1), !nosanitize !45
  %392 = extractvalue { i32, i1 } %391, 1, !nosanitize !45
  br i1 %392, label %.loopexit23, label %393, !prof !46, !nosanitize !45

.loopexit23:                                      ; preds = %408, %378, %543, %474
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

393:                                              ; preds = %378
  %394 = extractvalue { i32, i1 } %391, 0, !nosanitize !45
  store i32 %394, ptr %3, align 4, !tbaa !75
  %395 = load i32, ptr %6, align 4, !tbaa !73
  %396 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %395, i32 1), !nosanitize !45
  %397 = extractvalue { i32, i1 } %396, 1, !nosanitize !45
  br i1 %397, label %398, label %399, !prof !46, !nosanitize !45

398:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

399:                                              ; preds = %393
  %400 = extractvalue { i32, i1 } %396, 0, !nosanitize !45
  store i32 %400, ptr %6, align 4, !tbaa !73
  br i1 %389, label %401, label %.backedge

401:                                              ; preds = %399
  %402 = load i64, ptr %9, align 8, !tbaa !74
  %403 = icmp sgt i64 %402, -1
  br i1 %403, label %404, label %408

404:                                              ; preds = %401
  %405 = load ptr, ptr %7, align 8, !tbaa !34
  %406 = and i64 %402, 4294967295
  %407 = getelementptr inbounds nuw i8, ptr %405, i64 %406
  br label %408

408:                                              ; preds = %404, %401
  %409 = phi ptr [ %407, %404 ], [ null, %401 ]
  %410 = zext i32 %400 to i64
  %411 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %410, i64 %402), !nosanitize !45
  %412 = extractvalue { i64, i1 } %411, 1, !nosanitize !45
  br i1 %412, label %.loopexit23, label %413, !prof !46, !nosanitize !45

413:                                              ; preds = %408
  %414 = extractvalue { i64, i1 } %411, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %409, i64 noundef %414, i32 noundef 0) #11
  %415 = load i32, ptr %6, align 4, !tbaa !73
  %416 = zext i32 %415 to i64
  store i64 %416, ptr %9, align 8, !tbaa !74
  %417 = load ptr, ptr %0, align 8, !tbaa !20
  %418 = getelementptr inbounds nuw i8, ptr %417, i64 56
  %419 = load ptr, ptr %418, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %419) #11
  %420 = getelementptr inbounds nuw i8, ptr %419, i64 40
  %421 = load i64, ptr %420, align 8, !tbaa !57
  %422 = getelementptr inbounds nuw i8, ptr %417, i64 32
  %423 = load i32, ptr %422, align 8, !tbaa !107
  %424 = zext i32 %423 to i64
  %425 = tail call i64 @llvm.umin.i64(i64 %421, i64 %424)
  %426 = trunc nuw i64 %425 to i32
  %427 = icmp eq i64 %425, 0
  br i1 %427, label %460, label %428

428:                                              ; preds = %413
  %429 = getelementptr inbounds nuw i8, ptr %417, i64 24
  %430 = load ptr, ptr %429, align 8, !tbaa !106
  %431 = getelementptr inbounds nuw i8, ptr %419, i64 32
  %432 = load ptr, ptr %431, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %430, ptr align 1 %432, i64 %425, i1 false)
  %433 = load ptr, ptr %429, align 8, !tbaa !106
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 %425
  store ptr %434, ptr %429, align 8, !tbaa !106
  %435 = load ptr, ptr %431, align 8, !tbaa !58
  %436 = getelementptr inbounds nuw i8, ptr %435, i64 %425
  store ptr %436, ptr %431, align 8, !tbaa !58
  %437 = getelementptr inbounds nuw i8, ptr %417, i64 40
  %438 = load i64, ptr %437, align 8, !tbaa !108
  %439 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %438, i64 %425), !nosanitize !45
  %440 = extractvalue { i64, i1 } %439, 1, !nosanitize !45
  br i1 %440, label %441, label %442, !prof !46, !nosanitize !45

441:                                              ; preds = %428
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

442:                                              ; preds = %428
  %443 = extractvalue { i64, i1 } %439, 0, !nosanitize !45
  store i64 %443, ptr %437, align 8, !tbaa !108
  %444 = load i32, ptr %422, align 8, !tbaa !107
  %445 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %444, i32 %426), !nosanitize !45
  %446 = extractvalue { i32, i1 } %445, 1, !nosanitize !45
  br i1 %446, label %447, label %448, !prof !46, !nosanitize !45

447:                                              ; preds = %442
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

448:                                              ; preds = %442
  %449 = extractvalue { i32, i1 } %445, 0, !nosanitize !45
  store i32 %449, ptr %422, align 8, !tbaa !107
  %450 = load i64, ptr %420, align 8, !tbaa !57
  %451 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %450, i64 %425), !nosanitize !45
  %452 = extractvalue { i64, i1 } %451, 1, !nosanitize !45
  br i1 %452, label %453, label %454, !prof !46, !nosanitize !45

453:                                              ; preds = %448
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

454:                                              ; preds = %448
  %455 = extractvalue { i64, i1 } %451, 0, !nosanitize !45
  store i64 %455, ptr %420, align 8, !tbaa !57
  %456 = icmp eq i64 %455, 0
  br i1 %456, label %457, label %460

457:                                              ; preds = %454
  %458 = getelementptr inbounds nuw i8, ptr %419, i64 16
  %459 = load ptr, ptr %458, align 8, !tbaa !40
  store ptr %459, ptr %431, align 8, !tbaa !58
  br label %460

460:                                              ; preds = %457, %454, %413
  %461 = load ptr, ptr %0, align 8, !tbaa !20
  %462 = getelementptr inbounds nuw i8, ptr %461, i64 32
  %463 = load i32, ptr %462, align 8, !tbaa !107
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %.loopexit24, label %.backedge

.backedge:                                        ; preds = %460, %399
  br label %25

465:                                              ; preds = %348
  store i32 0, ptr %10, align 4, !tbaa !76
  %466 = icmp eq i32 %1, 4
  br i1 %466, label %467, label %533

467:                                              ; preds = %465
  %468 = load i64, ptr %9, align 8, !tbaa !74
  %469 = icmp sgt i64 %468, -1
  br i1 %469, label %470, label %474

470:                                              ; preds = %467
  %471 = load ptr, ptr %7, align 8, !tbaa !34
  %472 = and i64 %468, 4294967295
  %473 = getelementptr inbounds nuw i8, ptr %471, i64 %472
  br label %474

474:                                              ; preds = %470, %467
  %475 = phi ptr [ %473, %470 ], [ null, %467 ]
  %476 = load i32, ptr %6, align 4, !tbaa !73
  %477 = zext i32 %476 to i64
  %478 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %477, i64 %468), !nosanitize !45
  %479 = extractvalue { i64, i1 } %478, 1, !nosanitize !45
  br i1 %479, label %.loopexit23, label %480, !prof !46, !nosanitize !45

480:                                              ; preds = %474
  %481 = extractvalue { i64, i1 } %478, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %475, i64 noundef %481, i32 noundef 1) #11
  %482 = load i32, ptr %6, align 4, !tbaa !73
  %483 = zext i32 %482 to i64
  store i64 %483, ptr %9, align 8, !tbaa !74
  %484 = load ptr, ptr %0, align 8, !tbaa !20
  %485 = getelementptr inbounds nuw i8, ptr %484, i64 56
  %486 = load ptr, ptr %485, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %486) #11
  %487 = getelementptr inbounds nuw i8, ptr %486, i64 40
  %488 = load i64, ptr %487, align 8, !tbaa !57
  %489 = getelementptr inbounds nuw i8, ptr %484, i64 32
  %490 = load i32, ptr %489, align 8, !tbaa !107
  %491 = zext i32 %490 to i64
  %492 = tail call i64 @llvm.umin.i64(i64 %488, i64 %491)
  %493 = trunc nuw i64 %492 to i32
  %494 = icmp eq i64 %492, 0
  br i1 %494, label %527, label %495

495:                                              ; preds = %480
  %496 = getelementptr inbounds nuw i8, ptr %484, i64 24
  %497 = load ptr, ptr %496, align 8, !tbaa !106
  %498 = getelementptr inbounds nuw i8, ptr %486, i64 32
  %499 = load ptr, ptr %498, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %497, ptr align 1 %499, i64 %492, i1 false)
  %500 = load ptr, ptr %496, align 8, !tbaa !106
  %501 = getelementptr inbounds nuw i8, ptr %500, i64 %492
  store ptr %501, ptr %496, align 8, !tbaa !106
  %502 = load ptr, ptr %498, align 8, !tbaa !58
  %503 = getelementptr inbounds nuw i8, ptr %502, i64 %492
  store ptr %503, ptr %498, align 8, !tbaa !58
  %504 = getelementptr inbounds nuw i8, ptr %484, i64 40
  %505 = load i64, ptr %504, align 8, !tbaa !108
  %506 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %505, i64 %492), !nosanitize !45
  %507 = extractvalue { i64, i1 } %506, 1, !nosanitize !45
  br i1 %507, label %508, label %509, !prof !46, !nosanitize !45

508:                                              ; preds = %495
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

509:                                              ; preds = %495
  %510 = extractvalue { i64, i1 } %506, 0, !nosanitize !45
  store i64 %510, ptr %504, align 8, !tbaa !108
  %511 = load i32, ptr %489, align 8, !tbaa !107
  %512 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %511, i32 %493), !nosanitize !45
  %513 = extractvalue { i32, i1 } %512, 1, !nosanitize !45
  br i1 %513, label %514, label %515, !prof !46, !nosanitize !45

514:                                              ; preds = %509
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

515:                                              ; preds = %509
  %516 = extractvalue { i32, i1 } %512, 0, !nosanitize !45
  store i32 %516, ptr %489, align 8, !tbaa !107
  %517 = load i64, ptr %487, align 8, !tbaa !57
  %518 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %517, i64 %492), !nosanitize !45
  %519 = extractvalue { i64, i1 } %518, 1, !nosanitize !45
  br i1 %519, label %520, label %521, !prof !46, !nosanitize !45

520:                                              ; preds = %515
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

521:                                              ; preds = %515
  %522 = extractvalue { i64, i1 } %518, 0, !nosanitize !45
  store i64 %522, ptr %487, align 8, !tbaa !57
  %523 = icmp eq i64 %522, 0
  br i1 %523, label %524, label %527

524:                                              ; preds = %521
  %525 = getelementptr inbounds nuw i8, ptr %486, i64 16
  %526 = load ptr, ptr %525, align 8, !tbaa !40
  store ptr %526, ptr %498, align 8, !tbaa !58
  br label %527

527:                                              ; preds = %524, %521, %480
  %528 = load ptr, ptr %0, align 8, !tbaa !20
  %529 = getelementptr inbounds nuw i8, ptr %528, i64 32
  %530 = load i32, ptr %529, align 8, !tbaa !107
  %531 = icmp eq i32 %530, 0
  %532 = select i1 %531, i32 2, i32 3
  br label %.loopexit24

533:                                              ; preds = %465
  %534 = load i32, ptr %22, align 4, !tbaa !139
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %601, label %536

536:                                              ; preds = %533
  %537 = load i64, ptr %9, align 8, !tbaa !74
  %538 = icmp sgt i64 %537, -1
  br i1 %538, label %539, label %543

539:                                              ; preds = %536
  %540 = load ptr, ptr %7, align 8, !tbaa !34
  %541 = and i64 %537, 4294967295
  %542 = getelementptr inbounds nuw i8, ptr %540, i64 %541
  br label %543

543:                                              ; preds = %539, %536
  %544 = phi ptr [ %542, %539 ], [ null, %536 ]
  %545 = load i32, ptr %6, align 4, !tbaa !73
  %546 = zext i32 %545 to i64
  %547 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %546, i64 %537), !nosanitize !45
  %548 = extractvalue { i64, i1 } %547, 1, !nosanitize !45
  br i1 %548, label %.loopexit23, label %549, !prof !46, !nosanitize !45

549:                                              ; preds = %543
  %550 = extractvalue { i64, i1 } %547, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %544, i64 noundef %550, i32 noundef 0) #11
  %551 = load i32, ptr %6, align 4, !tbaa !73
  %552 = zext i32 %551 to i64
  store i64 %552, ptr %9, align 8, !tbaa !74
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

564:                                              ; preds = %549
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

596:                                              ; preds = %593, %590, %549
  %597 = load ptr, ptr %0, align 8, !tbaa !20
  %598 = getelementptr inbounds nuw i8, ptr %597, i64 32
  %599 = load i32, ptr %598, align 8, !tbaa !107
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %.loopexit24, label %601

601:                                              ; preds = %596, %533
  br label %.loopexit24

.loopexit24:                                      ; preds = %460, %601, %596, %527, %348
  %602 = phi i32 [ 0, %348 ], [ %532, %527 ], [ 0, %596 ], [ 1, %601 ], [ 0, %460 ]
  ret i32 %602
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
  br label %359

33:                                               ; preds = %28
  %34 = load i32, ptr %5, align 8, !tbaa !32
  %35 = zext i32 %34 to i64
  br label %36

36:                                               ; preds = %305, %33
  %37 = phi i32 [ %233, %305 ], [ %29, %33 ]
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
  br i1 %191, label %310, label %192

192:                                              ; preds = %184
  %193 = load ptr, ptr %8, align 8, !tbaa !34
  %194 = zext i32 %186 to i64
  %195 = getelementptr inbounds nuw i8, ptr %193, i64 %194
  %196 = zext i32 %185 to i64
  %197 = getelementptr inbounds nuw i8, ptr %195, i64 %196
  %198 = tail call i32 @llvm.umin.i32(i32 %190, i32 %187)
  %199 = icmp eq i32 %187, 0
  br i1 %199, label %227, label %200

200:                                              ; preds = %192
  %201 = sub i32 %190, %198
  store i32 %201, ptr %189, align 8, !tbaa !81
  %202 = load ptr, ptr %188, align 8, !tbaa !82
  %203 = zext i32 %198 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %197, ptr align 1 %202, i64 %203, i1 false)
  %204 = getelementptr inbounds nuw i8, ptr %188, i64 56
  %205 = load ptr, ptr %204, align 8, !tbaa !19
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 48
  %207 = load i32, ptr %206, align 8, !tbaa !30
  switch i32 %207, label %216 [
    i32 1, label %208
    i32 2, label %212
  ]

208:                                              ; preds = %200
  %209 = getelementptr inbounds nuw i8, ptr %188, i64 96
  %210 = load i64, ptr %209, align 8, !tbaa !59
  %211 = tail call i64 @adler32(i64 noundef %210, ptr noundef %197, i32 noundef %198) #11
  store i64 %211, ptr %209, align 8, !tbaa !59
  br label %216

212:                                              ; preds = %200
  %213 = getelementptr inbounds nuw i8, ptr %188, i64 96
  %214 = load i64, ptr %213, align 8, !tbaa !59
  %215 = tail call i64 @crc32(i64 noundef %214, ptr noundef %197, i32 noundef %198) #11
  store i64 %215, ptr %213, align 8, !tbaa !59
  br label %216

216:                                              ; preds = %212, %208, %200
  %217 = load ptr, ptr %188, align 8, !tbaa !82
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 %203
  store ptr %218, ptr %188, align 8, !tbaa !82
  %219 = getelementptr inbounds nuw i8, ptr %188, i64 16
  %220 = load i64, ptr %219, align 8, !tbaa !55
  %221 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %220, i64 %203), !nosanitize !45
  %222 = extractvalue { i64, i1 } %221, 1, !nosanitize !45
  br i1 %222, label %223, label %224, !prof !46, !nosanitize !45

223:                                              ; preds = %216
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

224:                                              ; preds = %216
  %225 = extractvalue { i64, i1 } %221, 0, !nosanitize !45
  store i64 %225, ptr %219, align 8, !tbaa !55
  %226 = load i32, ptr %3, align 4, !tbaa !75
  br label %227

227:                                              ; preds = %224, %192
  %228 = phi i32 [ %185, %192 ], [ %226, %224 ]
  %229 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %228, i32 %198), !nosanitize !45
  %230 = extractvalue { i32, i1 } %229, 1, !nosanitize !45
  br i1 %230, label %231, label %232, !prof !46, !nosanitize !45

231:                                              ; preds = %227
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

232:                                              ; preds = %227
  %233 = extractvalue { i32, i1 } %229, 0, !nosanitize !45
  store i32 %233, ptr %3, align 4, !tbaa !75
  %234 = load i32, ptr %11, align 4, !tbaa !76
  %235 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %233, i32 %234), !nosanitize !45
  %236 = extractvalue { i32, i1 } %235, 1, !nosanitize !45
  br i1 %236, label %237, label %238, !prof !46, !nosanitize !45

237:                                              ; preds = %232
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

238:                                              ; preds = %232
  %239 = extractvalue { i32, i1 } %235, 0, !nosanitize !45
  %240 = icmp ugt i32 %239, 2
  br i1 %240, label %241, label %.loopexit

241:                                              ; preds = %238
  %242 = load i32, ptr %7, align 4, !tbaa !73
  %243 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %242, i32 %234), !nosanitize !45
  %244 = extractvalue { i32, i1 } %243, 0, !nosanitize !45
  %245 = extractvalue { i32, i1 } %243, 1, !nosanitize !45
  br i1 %245, label %246, label %247, !prof !46, !nosanitize !45

246:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

247:                                              ; preds = %241
  %248 = load ptr, ptr %8, align 8, !tbaa !34
  %249 = zext i32 %244 to i64
  %250 = getelementptr inbounds nuw i8, ptr %248, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !8
  %252 = zext i8 %251 to i32
  store i32 %252, ptr %16, align 8, !tbaa !80
  %253 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %244, i32 1), !nosanitize !45
  %254 = extractvalue { i32, i1 } %253, 1, !nosanitize !45
  br i1 %254, label %255, label %256, !prof !46, !nosanitize !45

255:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

256:                                              ; preds = %247
  %257 = extractvalue { i32, i1 } %253, 0, !nosanitize !45
  %258 = load i32, ptr %17, align 8, !tbaa !53
  %259 = shl i32 %252, %258
  %260 = zext i32 %257 to i64
  %261 = getelementptr inbounds nuw i8, ptr %248, i64 %260
  %262 = load i8, ptr %261, align 1, !tbaa !8
  %263 = zext i8 %262 to i32
  %264 = xor i32 %259, %263
  %265 = load i32, ptr %18, align 4, !tbaa !52
  %266 = and i32 %264, %265
  store i32 %266, ptr %16, align 8, !tbaa !80
  br label %267

267:                                              ; preds = %300, %256
  %268 = phi i32 [ %266, %256 ], [ %285, %300 ]
  %269 = phi i32 [ %234, %256 ], [ %296, %300 ]
  %270 = phi i32 [ %244, %256 ], [ %301, %300 ]
  %271 = icmp eq i32 %269, 0
  br i1 %271, label %.loopexit, label %272

272:                                              ; preds = %267
  %273 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %270, i32 3), !nosanitize !45
  %274 = extractvalue { i32, i1 } %273, 1, !nosanitize !45
  br i1 %274, label %275, label %276, !prof !46, !nosanitize !45

275:                                              ; preds = %272
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

276:                                              ; preds = %272
  %277 = shl i32 %268, %258
  %278 = extractvalue { i32, i1 } %273, 0, !nosanitize !45
  %279 = add i32 %278, -1
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds nuw i8, ptr %248, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !8
  %283 = zext i8 %282 to i32
  %284 = xor i32 %277, %283
  %285 = and i32 %284, %265
  store i32 %285, ptr %16, align 8, !tbaa !80
  %286 = load ptr, ptr %13, align 8, !tbaa !37
  %287 = zext i32 %285 to i64
  %288 = getelementptr inbounds nuw [2 x i8], ptr %286, i64 %287
  %289 = load i16, ptr %288, align 2, !tbaa !62
  %290 = load ptr, ptr %14, align 8, !tbaa !35
  %291 = load i32, ptr %19, align 8, !tbaa !33
  %292 = and i32 %291, %270
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds nuw [2 x i8], ptr %290, i64 %293
  store i16 %289, ptr %294, align 2, !tbaa !62
  %295 = trunc i32 %270 to i16
  store i16 %295, ptr %288, align 2, !tbaa !62
  %296 = add i32 %269, -1
  store i32 %296, ptr %11, align 4, !tbaa !76
  %297 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %233, i32 %296), !nosanitize !45
  %298 = extractvalue { i32, i1 } %297, 1, !nosanitize !45
  br i1 %298, label %299, label %300, !prof !46, !nosanitize !45

299:                                              ; preds = %276
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

300:                                              ; preds = %276
  %301 = add nuw i32 %270, 1
  %302 = extractvalue { i32, i1 } %297, 0, !nosanitize !45
  %303 = icmp ult i32 %302, 3
  br i1 %303, label %.loopexit, label %267, !llvm.loop !91

.loopexit:                                        ; preds = %300, %267, %238
  %304 = icmp ult i32 %233, 262
  br i1 %304, label %305, label %310

305:                                              ; preds = %.loopexit
  %306 = load ptr, ptr %0, align 8, !tbaa !20
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 8
  %308 = load i32, ptr %307, align 8, !tbaa !81
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %36, !llvm.loop !92

310:                                              ; preds = %305, %.loopexit, %184
  %311 = phi i32 [ %233, %305 ], [ %233, %.loopexit ], [ %185, %184 ]
  %312 = load i64, ptr %20, align 8, !tbaa !38
  %313 = load i64, ptr %6, align 8, !tbaa !61
  %314 = icmp ult i64 %312, %313
  br i1 %314, label %315, label %350

315:                                              ; preds = %310
  %316 = load i32, ptr %7, align 4, !tbaa !73
  %317 = zext i32 %316 to i64
  %318 = zext i32 %311 to i64
  %319 = add nuw nsw i64 %317, %318
  %320 = icmp ult i64 %312, %319
  br i1 %320, label %321, label %331

321:                                              ; preds = %315
  %322 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %313, i64 %319), !nosanitize !45
  %323 = extractvalue { i64, i1 } %322, 1, !nosanitize !45
  br i1 %323, label %324, label %325, !prof !46, !nosanitize !45

324:                                              ; preds = %321
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

325:                                              ; preds = %321
  %326 = extractvalue { i64, i1 } %322, 0, !nosanitize !45
  %327 = tail call i64 @llvm.umin.i64(i64 %326, i64 258)
  %328 = load ptr, ptr %8, align 8, !tbaa !34
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 %319
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %329, i8 0, i64 %327, i1 false)
  %330 = add nuw nsw i64 %327, %319
  br label %347

331:                                              ; preds = %315
  %332 = add nuw nsw i64 %319, 258
  %333 = icmp ult i64 %312, %332
  br i1 %333, label %334, label %350

334:                                              ; preds = %331
  %335 = sub nuw nsw i64 %332, %312
  %336 = sub i64 %313, %312
  %337 = tail call i64 @llvm.umin.i64(i64 %335, i64 %336)
  %338 = load ptr, ptr %8, align 8, !tbaa !34
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 %312
  %340 = and i64 %337, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %339, i8 0, i64 %340, i1 false)
  %341 = load i64, ptr %20, align 8, !tbaa !38
  %342 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %341, i64 %337), !nosanitize !45
  %343 = extractvalue { i64, i1 } %342, 1, !nosanitize !45
  br i1 %343, label %344, label %345, !prof !46, !nosanitize !45

344:                                              ; preds = %334
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

345:                                              ; preds = %334
  %346 = extractvalue { i64, i1 } %342, 0, !nosanitize !45
  br label %347

347:                                              ; preds = %345, %325
  %348 = phi i64 [ %330, %325 ], [ %346, %345 ]
  store i64 %348, ptr %20, align 8, !tbaa !38
  %349 = load i32, ptr %3, align 4, !tbaa !75
  br label %350

350:                                              ; preds = %347, %331, %310
  %351 = phi i32 [ %311, %310 ], [ %311, %331 ], [ %349, %347 ]
  %352 = icmp ult i32 %351, 259
  %353 = and i1 %21, %352
  br i1 %353, label %.loopexit29, label %354

354:                                              ; preds = %350
  %355 = icmp eq i32 %351, 0
  br i1 %355, label %611, label %356

356:                                              ; preds = %354
  store i32 0, ptr %4, align 8, !tbaa !78
  %357 = icmp ugt i32 %351, 2
  %358 = load i32, ptr %7, align 4, !tbaa !73
  %.pre.pre73.pre75 = load ptr, ptr %8, align 8, !tbaa !34
  br i1 %357, label %359, label %._crit_edge

359:                                              ; preds = %356, %31
  %.pre.pre73 = phi ptr [ %.pre.pre73.pre, %31 ], [ %.pre.pre73.pre75, %356 ]
  %360 = phi i32 [ %32, %31 ], [ %358, %356 ]
  %361 = phi i32 [ %29, %31 ], [ %351, %356 ]
  %362 = icmp eq i32 %360, 0
  br i1 %362, label %._crit_edge, label %363

363:                                              ; preds = %359
  %364 = zext i32 %360 to i64
  %365 = getelementptr inbounds nuw i8, ptr %.pre.pre73, i64 %364
  %366 = getelementptr inbounds i8, ptr %365, i64 -1
  %367 = load i8, ptr %366, align 1, !tbaa !8
  %368 = load i8, ptr %365, align 1, !tbaa !8
  %369 = icmp eq i8 %367, %368
  br i1 %369, label %370, label %._crit_edge

370:                                              ; preds = %363
  %371 = getelementptr inbounds nuw i8, ptr %365, i64 1
  %372 = load i8, ptr %371, align 1, !tbaa !8
  %373 = icmp eq i8 %367, %372
  br i1 %373, label %374, label %._crit_edge

374:                                              ; preds = %370
  %375 = getelementptr inbounds nuw i8, ptr %365, i64 2
  %376 = load i8, ptr %375, align 1, !tbaa !8
  %377 = icmp eq i8 %367, %376
  br i1 %377, label %378, label %._crit_edge

378:                                              ; preds = %374
  %379 = getelementptr inbounds nuw i8, ptr %365, i64 258
  br label %380

380:                                              ; preds = %410, %378
  %381 = phi i64 [ 2, %378 ], [ %411, %410 ]
  %382 = getelementptr inbounds nuw i8, ptr %365, i64 %381
  %383 = getelementptr inbounds nuw i8, ptr %382, i64 1
  %384 = load i8, ptr %383, align 1, !tbaa !8
  %385 = icmp eq i8 %367, %384
  br i1 %385, label %386, label %.split.loop.exit.split.loop.exit

386:                                              ; preds = %380
  %387 = getelementptr inbounds nuw i8, ptr %382, i64 2
  %388 = load i8, ptr %387, align 1, !tbaa !8
  %389 = icmp eq i8 %367, %388
  br i1 %389, label %390, label %.split.loop.exit.split.loop.exit107

390:                                              ; preds = %386
  %391 = getelementptr inbounds nuw i8, ptr %382, i64 3
  %392 = load i8, ptr %391, align 1, !tbaa !8
  %393 = icmp eq i8 %367, %392
  br i1 %393, label %394, label %.split.loop.exit.split.loop.exit109

394:                                              ; preds = %390
  %395 = getelementptr inbounds nuw i8, ptr %382, i64 4
  %396 = load i8, ptr %395, align 1, !tbaa !8
  %397 = icmp eq i8 %367, %396
  br i1 %397, label %398, label %.split.loop.exit.split.loop.exit111

398:                                              ; preds = %394
  %399 = getelementptr inbounds nuw i8, ptr %382, i64 5
  %400 = load i8, ptr %399, align 1, !tbaa !8
  %401 = icmp eq i8 %367, %400
  br i1 %401, label %402, label %.split.loop.exit.split.loop.exit113

402:                                              ; preds = %398
  %403 = getelementptr inbounds nuw i8, ptr %382, i64 6
  %404 = load i8, ptr %403, align 1, !tbaa !8
  %405 = icmp eq i8 %367, %404
  br i1 %405, label %406, label %.split.loop.exit.split.loop.exit115

406:                                              ; preds = %402
  %407 = getelementptr inbounds nuw i8, ptr %382, i64 7
  %408 = load i8, ptr %407, align 1, !tbaa !8
  %409 = icmp eq i8 %367, %408
  br i1 %409, label %410, label %.split.loop.exit.split.loop.exit117

410:                                              ; preds = %406
  %411 = add nuw nsw i64 %381, 8
  %412 = getelementptr inbounds nuw i8, ptr %365, i64 %411
  %413 = load i8, ptr %412, align 1, !tbaa !8
  %414 = icmp eq i8 %367, %413
  %415 = icmp samesign ult i64 %381, 250
  %416 = select i1 %414, i1 %415, i1 false
  br i1 %416, label %380, label %.split.loop.exit.split.loop.exit119, !llvm.loop !144

.split.loop.exit.split.loop.exit:                 ; preds = %380
  %417 = getelementptr inbounds nuw i8, ptr %382, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit107:              ; preds = %386
  %418 = getelementptr inbounds nuw i8, ptr %382, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit109:              ; preds = %390
  %419 = getelementptr inbounds nuw i8, ptr %382, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit111:              ; preds = %394
  %420 = getelementptr inbounds nuw i8, ptr %382, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit113:              ; preds = %398
  %421 = getelementptr inbounds nuw i8, ptr %382, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit115:              ; preds = %402
  %422 = getelementptr inbounds nuw i8, ptr %382, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit117:              ; preds = %406
  %423 = getelementptr inbounds nuw i8, ptr %382, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit119:              ; preds = %410
  %424 = getelementptr inbounds nuw i8, ptr %365, i64 %411
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit119, %.split.loop.exit.split.loop.exit117, %.split.loop.exit.split.loop.exit115, %.split.loop.exit.split.loop.exit113, %.split.loop.exit.split.loop.exit111, %.split.loop.exit.split.loop.exit109, %.split.loop.exit.split.loop.exit107, %.split.loop.exit.split.loop.exit
  %425 = phi ptr [ %418, %.split.loop.exit.split.loop.exit107 ], [ %419, %.split.loop.exit.split.loop.exit109 ], [ %417, %.split.loop.exit.split.loop.exit ], [ %423, %.split.loop.exit.split.loop.exit117 ], [ %422, %.split.loop.exit.split.loop.exit115 ], [ %421, %.split.loop.exit.split.loop.exit113 ], [ %420, %.split.loop.exit.split.loop.exit111 ], [ %424, %.split.loop.exit.split.loop.exit119 ]
  %426 = ptrtoint ptr %379 to i64
  %427 = ptrtoint ptr %425 to i64
  %428 = sub i64 %426, %427
  %429 = trunc i64 %428 to i32
  %430 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %429), !nosanitize !45
  %431 = extractvalue { i32, i1 } %430, 1, !nosanitize !45
  br i1 %431, label %432, label %433, !prof !46, !nosanitize !45

432:                                              ; preds = %.split.loop.exit
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

433:                                              ; preds = %.split.loop.exit
  %434 = extractvalue { i32, i1 } %430, 0, !nosanitize !45
  %435 = tail call i32 @llvm.umin.i32(i32 %434, i32 %361)
  store i32 %435, ptr %4, align 8
  %436 = icmp ugt i32 %435, 2
  %437 = load i32, ptr %23, align 4, !tbaa !139
  br i1 %436, label %438, label %497

438:                                              ; preds = %433
  %439 = trunc i32 %435 to i8
  %440 = add i8 %439, -3
  %441 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %437, i32 1), !nosanitize !45
  %442 = extractvalue { i32, i1 } %441, 1, !nosanitize !45
  br i1 %442, label %443, label %444, !prof !46, !nosanitize !45

443:                                              ; preds = %438
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

444:                                              ; preds = %438
  %445 = extractvalue { i32, i1 } %441, 0, !nosanitize !45
  %446 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %445, ptr %23, align 4, !tbaa !139
  %447 = zext i32 %437 to i64
  %448 = getelementptr inbounds nuw i8, ptr %446, i64 %447
  store i8 1, ptr %448, align 1, !tbaa !8
  %449 = load i32, ptr %23, align 4, !tbaa !139
  %450 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %449, i32 1), !nosanitize !45
  %451 = extractvalue { i32, i1 } %450, 1, !nosanitize !45
  br i1 %451, label %452, label %453, !prof !46, !nosanitize !45

452:                                              ; preds = %444
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

453:                                              ; preds = %444
  %454 = extractvalue { i32, i1 } %450, 0, !nosanitize !45
  %455 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %454, ptr %23, align 4, !tbaa !139
  %456 = zext i32 %449 to i64
  %457 = getelementptr inbounds nuw i8, ptr %455, i64 %456
  store i8 0, ptr %457, align 1, !tbaa !8
  %458 = load i32, ptr %23, align 4, !tbaa !139
  %459 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %458, i32 1), !nosanitize !45
  %460 = extractvalue { i32, i1 } %459, 1, !nosanitize !45
  br i1 %460, label %461, label %462, !prof !46, !nosanitize !45

461:                                              ; preds = %453
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

462:                                              ; preds = %453
  %463 = extractvalue { i32, i1 } %459, 0, !nosanitize !45
  %464 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %463, ptr %23, align 4, !tbaa !139
  %465 = zext i32 %458 to i64
  %466 = getelementptr inbounds nuw i8, ptr %464, i64 %465
  store i8 %440, ptr %466, align 1, !tbaa !8
  %467 = zext i8 %440 to i64
  %468 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %467
  %469 = load i8, ptr %468, align 1, !tbaa !8
  %470 = zext i8 %469 to i64
  %471 = getelementptr [4 x i8], ptr %26, i64 %470
  %472 = load i16, ptr %471, align 4, !tbaa !8
  %473 = add i16 %472, 1
  store i16 %473, ptr %471, align 4, !tbaa !8
  %474 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %475 = zext i8 %474 to i64
  %476 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %475
  %477 = load i16, ptr %476, align 4, !tbaa !8
  %478 = add i16 %477, 1
  store i16 %478, ptr %476, align 4, !tbaa !8
  %479 = load i32, ptr %23, align 4, !tbaa !139
  %480 = load i32, ptr %25, align 8, !tbaa !47
  %481 = icmp eq i32 %479, %480
  %482 = load i32, ptr %4, align 8, !tbaa !78
  %483 = load i32, ptr %3, align 4, !tbaa !75
  %484 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %483, i32 %482), !nosanitize !45
  %485 = extractvalue { i32, i1 } %484, 1, !nosanitize !45
  br i1 %485, label %486, label %487, !prof !46, !nosanitize !45

486:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

487:                                              ; preds = %462
  %488 = extractvalue { i32, i1 } %484, 0, !nosanitize !45
  store i32 %488, ptr %3, align 4, !tbaa !75
  %489 = load i32, ptr %7, align 4, !tbaa !73
  %490 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %489, i32 %482), !nosanitize !45
  %491 = extractvalue { i32, i1 } %490, 1, !nosanitize !45
  br i1 %491, label %492, label %493, !prof !46, !nosanitize !45

492:                                              ; preds = %487
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

493:                                              ; preds = %487
  %494 = extractvalue { i32, i1 } %490, 0, !nosanitize !45
  store i32 %494, ptr %7, align 4, !tbaa !73
  store i32 0, ptr %4, align 8, !tbaa !78
  br i1 %481, label %546, label %.backedge

._crit_edge:                                      ; preds = %356, %374, %370, %363, %359
  %.pre = phi ptr [ %.pre.pre73, %363 ], [ %.pre.pre73, %359 ], [ %.pre.pre73, %374 ], [ %.pre.pre73, %370 ], [ %.pre.pre73.pre75, %356 ]
  %495 = phi i32 [ %360, %363 ], [ 0, %359 ], [ %360, %374 ], [ %360, %370 ], [ %358, %356 ]
  %496 = load i32, ptr %23, align 4, !tbaa !139
  %.pre72 = zext i32 %495 to i64
  br label %497

497:                                              ; preds = %._crit_edge, %433
  %.pre-phi = phi i64 [ %.pre72, %._crit_edge ], [ %364, %433 ]
  %498 = phi ptr [ %.pre, %._crit_edge ], [ %.pre.pre73, %433 ]
  %499 = phi i32 [ %496, %._crit_edge ], [ %437, %433 ]
  %500 = getelementptr inbounds nuw i8, ptr %498, i64 %.pre-phi
  %501 = load i8, ptr %500, align 1, !tbaa !8
  %502 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %499, i32 1), !nosanitize !45
  %503 = extractvalue { i32, i1 } %502, 1, !nosanitize !45
  br i1 %503, label %504, label %505, !prof !46, !nosanitize !45

504:                                              ; preds = %497
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

505:                                              ; preds = %497
  %506 = extractvalue { i32, i1 } %502, 0, !nosanitize !45
  %507 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %506, ptr %23, align 4, !tbaa !139
  %508 = zext i32 %499 to i64
  %509 = getelementptr inbounds nuw i8, ptr %507, i64 %508
  store i8 0, ptr %509, align 1, !tbaa !8
  %510 = load i32, ptr %23, align 4, !tbaa !139
  %511 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %510, i32 1), !nosanitize !45
  %512 = extractvalue { i32, i1 } %511, 1, !nosanitize !45
  br i1 %512, label %513, label %514, !prof !46, !nosanitize !45

513:                                              ; preds = %505
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

514:                                              ; preds = %505
  %515 = extractvalue { i32, i1 } %511, 0, !nosanitize !45
  %516 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %515, ptr %23, align 4, !tbaa !139
  %517 = zext i32 %510 to i64
  %518 = getelementptr inbounds nuw i8, ptr %516, i64 %517
  store i8 0, ptr %518, align 1, !tbaa !8
  %519 = load i32, ptr %23, align 4, !tbaa !139
  %520 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %519, i32 1), !nosanitize !45
  %521 = extractvalue { i32, i1 } %520, 1, !nosanitize !45
  br i1 %521, label %522, label %523, !prof !46, !nosanitize !45

522:                                              ; preds = %514
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

523:                                              ; preds = %514
  %524 = extractvalue { i32, i1 } %520, 0, !nosanitize !45
  %525 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %524, ptr %23, align 4, !tbaa !139
  %526 = zext i32 %519 to i64
  %527 = getelementptr inbounds nuw i8, ptr %525, i64 %526
  store i8 %501, ptr %527, align 1, !tbaa !8
  %528 = zext i8 %501 to i64
  %529 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %528
  %530 = load i16, ptr %529, align 4, !tbaa !8
  %531 = add i16 %530, 1
  store i16 %531, ptr %529, align 4, !tbaa !8
  %532 = load i32, ptr %23, align 4, !tbaa !139
  %533 = load i32, ptr %25, align 8, !tbaa !47
  %534 = icmp eq i32 %532, %533
  %535 = load i32, ptr %3, align 4, !tbaa !75
  %536 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %535, i32 1), !nosanitize !45
  %537 = extractvalue { i32, i1 } %536, 1, !nosanitize !45
  br i1 %537, label %.loopexit30, label %538, !prof !46, !nosanitize !45

.loopexit30:                                      ; preds = %554, %523, %689, %620
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

538:                                              ; preds = %523
  %539 = extractvalue { i32, i1 } %536, 0, !nosanitize !45
  store i32 %539, ptr %3, align 4, !tbaa !75
  %540 = load i32, ptr %7, align 4, !tbaa !73
  %541 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %540, i32 1), !nosanitize !45
  %542 = extractvalue { i32, i1 } %541, 1, !nosanitize !45
  br i1 %542, label %543, label %544, !prof !46, !nosanitize !45

543:                                              ; preds = %538
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

544:                                              ; preds = %538
  %545 = extractvalue { i32, i1 } %541, 0, !nosanitize !45
  store i32 %545, ptr %7, align 4, !tbaa !73
  br i1 %534, label %546, label %.backedge

546:                                              ; preds = %544, %493
  %547 = phi i32 [ %494, %493 ], [ %545, %544 ]
  %548 = load i64, ptr %10, align 8, !tbaa !74
  %549 = icmp sgt i64 %548, -1
  br i1 %549, label %550, label %554

550:                                              ; preds = %546
  %551 = load ptr, ptr %8, align 8, !tbaa !34
  %552 = and i64 %548, 4294967295
  %553 = getelementptr inbounds nuw i8, ptr %551, i64 %552
  br label %554

554:                                              ; preds = %550, %546
  %555 = phi ptr [ %553, %550 ], [ null, %546 ]
  %556 = zext i32 %547 to i64
  %557 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %556, i64 %548), !nosanitize !45
  %558 = extractvalue { i64, i1 } %557, 1, !nosanitize !45
  br i1 %558, label %.loopexit30, label %559, !prof !46, !nosanitize !45

559:                                              ; preds = %554
  %560 = extractvalue { i64, i1 } %557, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %555, i64 noundef %560, i32 noundef 0) #11
  %561 = load i32, ptr %7, align 4, !tbaa !73
  %562 = zext i32 %561 to i64
  store i64 %562, ptr %10, align 8, !tbaa !74
  %563 = load ptr, ptr %0, align 8, !tbaa !20
  %564 = getelementptr inbounds nuw i8, ptr %563, i64 56
  %565 = load ptr, ptr %564, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %565) #11
  %566 = getelementptr inbounds nuw i8, ptr %565, i64 40
  %567 = load i64, ptr %566, align 8, !tbaa !57
  %568 = getelementptr inbounds nuw i8, ptr %563, i64 32
  %569 = load i32, ptr %568, align 8, !tbaa !107
  %570 = zext i32 %569 to i64
  %571 = tail call i64 @llvm.umin.i64(i64 %567, i64 %570)
  %572 = trunc nuw i64 %571 to i32
  %573 = icmp eq i64 %571, 0
  br i1 %573, label %606, label %574

574:                                              ; preds = %559
  %575 = getelementptr inbounds nuw i8, ptr %563, i64 24
  %576 = load ptr, ptr %575, align 8, !tbaa !106
  %577 = getelementptr inbounds nuw i8, ptr %565, i64 32
  %578 = load ptr, ptr %577, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %576, ptr align 1 %578, i64 %571, i1 false)
  %579 = load ptr, ptr %575, align 8, !tbaa !106
  %580 = getelementptr inbounds nuw i8, ptr %579, i64 %571
  store ptr %580, ptr %575, align 8, !tbaa !106
  %581 = load ptr, ptr %577, align 8, !tbaa !58
  %582 = getelementptr inbounds nuw i8, ptr %581, i64 %571
  store ptr %582, ptr %577, align 8, !tbaa !58
  %583 = getelementptr inbounds nuw i8, ptr %563, i64 40
  %584 = load i64, ptr %583, align 8, !tbaa !108
  %585 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %584, i64 %571), !nosanitize !45
  %586 = extractvalue { i64, i1 } %585, 1, !nosanitize !45
  br i1 %586, label %587, label %588, !prof !46, !nosanitize !45

587:                                              ; preds = %574
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

588:                                              ; preds = %574
  %589 = extractvalue { i64, i1 } %585, 0, !nosanitize !45
  store i64 %589, ptr %583, align 8, !tbaa !108
  %590 = load i32, ptr %568, align 8, !tbaa !107
  %591 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %590, i32 %572), !nosanitize !45
  %592 = extractvalue { i32, i1 } %591, 1, !nosanitize !45
  br i1 %592, label %593, label %594, !prof !46, !nosanitize !45

593:                                              ; preds = %588
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

594:                                              ; preds = %588
  %595 = extractvalue { i32, i1 } %591, 0, !nosanitize !45
  store i32 %595, ptr %568, align 8, !tbaa !107
  %596 = load i64, ptr %566, align 8, !tbaa !57
  %597 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %596, i64 %571), !nosanitize !45
  %598 = extractvalue { i64, i1 } %597, 1, !nosanitize !45
  br i1 %598, label %599, label %600, !prof !46, !nosanitize !45

599:                                              ; preds = %594
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

600:                                              ; preds = %594
  %601 = extractvalue { i64, i1 } %597, 0, !nosanitize !45
  store i64 %601, ptr %566, align 8, !tbaa !57
  %602 = icmp eq i64 %601, 0
  br i1 %602, label %603, label %606

603:                                              ; preds = %600
  %604 = getelementptr inbounds nuw i8, ptr %565, i64 16
  %605 = load ptr, ptr %604, align 8, !tbaa !40
  store ptr %605, ptr %577, align 8, !tbaa !58
  br label %606

606:                                              ; preds = %603, %600, %559
  %607 = load ptr, ptr %0, align 8, !tbaa !20
  %608 = getelementptr inbounds nuw i8, ptr %607, i64 32
  %609 = load i32, ptr %608, align 8, !tbaa !107
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %.loopexit29, label %.backedge

.backedge:                                        ; preds = %606, %544, %493
  br label %28

611:                                              ; preds = %354
  store i32 0, ptr %11, align 4, !tbaa !76
  %612 = icmp eq i32 %1, 4
  br i1 %612, label %613, label %679

613:                                              ; preds = %611
  %614 = load i64, ptr %10, align 8, !tbaa !74
  %615 = icmp sgt i64 %614, -1
  br i1 %615, label %616, label %620

616:                                              ; preds = %613
  %617 = load ptr, ptr %8, align 8, !tbaa !34
  %618 = and i64 %614, 4294967295
  %619 = getelementptr inbounds nuw i8, ptr %617, i64 %618
  br label %620

620:                                              ; preds = %616, %613
  %621 = phi ptr [ %619, %616 ], [ null, %613 ]
  %622 = load i32, ptr %7, align 4, !tbaa !73
  %623 = zext i32 %622 to i64
  %624 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %623, i64 %614), !nosanitize !45
  %625 = extractvalue { i64, i1 } %624, 1, !nosanitize !45
  br i1 %625, label %.loopexit30, label %626, !prof !46, !nosanitize !45

626:                                              ; preds = %620
  %627 = extractvalue { i64, i1 } %624, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %621, i64 noundef %627, i32 noundef 1) #11
  %628 = load i32, ptr %7, align 4, !tbaa !73
  %629 = zext i32 %628 to i64
  store i64 %629, ptr %10, align 8, !tbaa !74
  %630 = load ptr, ptr %0, align 8, !tbaa !20
  %631 = getelementptr inbounds nuw i8, ptr %630, i64 56
  %632 = load ptr, ptr %631, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %632) #11
  %633 = getelementptr inbounds nuw i8, ptr %632, i64 40
  %634 = load i64, ptr %633, align 8, !tbaa !57
  %635 = getelementptr inbounds nuw i8, ptr %630, i64 32
  %636 = load i32, ptr %635, align 8, !tbaa !107
  %637 = zext i32 %636 to i64
  %638 = tail call i64 @llvm.umin.i64(i64 %634, i64 %637)
  %639 = trunc nuw i64 %638 to i32
  %640 = icmp eq i64 %638, 0
  br i1 %640, label %673, label %641

641:                                              ; preds = %626
  %642 = getelementptr inbounds nuw i8, ptr %630, i64 24
  %643 = load ptr, ptr %642, align 8, !tbaa !106
  %644 = getelementptr inbounds nuw i8, ptr %632, i64 32
  %645 = load ptr, ptr %644, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %643, ptr align 1 %645, i64 %638, i1 false)
  %646 = load ptr, ptr %642, align 8, !tbaa !106
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 %638
  store ptr %647, ptr %642, align 8, !tbaa !106
  %648 = load ptr, ptr %644, align 8, !tbaa !58
  %649 = getelementptr inbounds nuw i8, ptr %648, i64 %638
  store ptr %649, ptr %644, align 8, !tbaa !58
  %650 = getelementptr inbounds nuw i8, ptr %630, i64 40
  %651 = load i64, ptr %650, align 8, !tbaa !108
  %652 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %651, i64 %638), !nosanitize !45
  %653 = extractvalue { i64, i1 } %652, 1, !nosanitize !45
  br i1 %653, label %654, label %655, !prof !46, !nosanitize !45

654:                                              ; preds = %641
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

655:                                              ; preds = %641
  %656 = extractvalue { i64, i1 } %652, 0, !nosanitize !45
  store i64 %656, ptr %650, align 8, !tbaa !108
  %657 = load i32, ptr %635, align 8, !tbaa !107
  %658 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %657, i32 %639), !nosanitize !45
  %659 = extractvalue { i32, i1 } %658, 1, !nosanitize !45
  br i1 %659, label %660, label %661, !prof !46, !nosanitize !45

660:                                              ; preds = %655
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

661:                                              ; preds = %655
  %662 = extractvalue { i32, i1 } %658, 0, !nosanitize !45
  store i32 %662, ptr %635, align 8, !tbaa !107
  %663 = load i64, ptr %633, align 8, !tbaa !57
  %664 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %663, i64 %638), !nosanitize !45
  %665 = extractvalue { i64, i1 } %664, 1, !nosanitize !45
  br i1 %665, label %666, label %667, !prof !46, !nosanitize !45

666:                                              ; preds = %661
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

667:                                              ; preds = %661
  %668 = extractvalue { i64, i1 } %664, 0, !nosanitize !45
  store i64 %668, ptr %633, align 8, !tbaa !57
  %669 = icmp eq i64 %668, 0
  br i1 %669, label %670, label %673

670:                                              ; preds = %667
  %671 = getelementptr inbounds nuw i8, ptr %632, i64 16
  %672 = load ptr, ptr %671, align 8, !tbaa !40
  store ptr %672, ptr %644, align 8, !tbaa !58
  br label %673

673:                                              ; preds = %670, %667, %626
  %674 = load ptr, ptr %0, align 8, !tbaa !20
  %675 = getelementptr inbounds nuw i8, ptr %674, i64 32
  %676 = load i32, ptr %675, align 8, !tbaa !107
  %677 = icmp eq i32 %676, 0
  %678 = select i1 %677, i32 2, i32 3
  br label %.loopexit29

679:                                              ; preds = %611
  %680 = load i32, ptr %23, align 4, !tbaa !139
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %747, label %682

682:                                              ; preds = %679
  %683 = load i64, ptr %10, align 8, !tbaa !74
  %684 = icmp sgt i64 %683, -1
  br i1 %684, label %685, label %689

685:                                              ; preds = %682
  %686 = load ptr, ptr %8, align 8, !tbaa !34
  %687 = and i64 %683, 4294967295
  %688 = getelementptr inbounds nuw i8, ptr %686, i64 %687
  br label %689

689:                                              ; preds = %685, %682
  %690 = phi ptr [ %688, %685 ], [ null, %682 ]
  %691 = load i32, ptr %7, align 4, !tbaa !73
  %692 = zext i32 %691 to i64
  %693 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %692, i64 %683), !nosanitize !45
  %694 = extractvalue { i64, i1 } %693, 1, !nosanitize !45
  br i1 %694, label %.loopexit30, label %695, !prof !46, !nosanitize !45

695:                                              ; preds = %689
  %696 = extractvalue { i64, i1 } %693, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %690, i64 noundef %696, i32 noundef 0) #11
  %697 = load i32, ptr %7, align 4, !tbaa !73
  %698 = zext i32 %697 to i64
  store i64 %698, ptr %10, align 8, !tbaa !74
  %699 = load ptr, ptr %0, align 8, !tbaa !20
  %700 = getelementptr inbounds nuw i8, ptr %699, i64 56
  %701 = load ptr, ptr %700, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %701) #11
  %702 = getelementptr inbounds nuw i8, ptr %701, i64 40
  %703 = load i64, ptr %702, align 8, !tbaa !57
  %704 = getelementptr inbounds nuw i8, ptr %699, i64 32
  %705 = load i32, ptr %704, align 8, !tbaa !107
  %706 = zext i32 %705 to i64
  %707 = tail call i64 @llvm.umin.i64(i64 %703, i64 %706)
  %708 = trunc nuw i64 %707 to i32
  %709 = icmp eq i64 %707, 0
  br i1 %709, label %742, label %710

710:                                              ; preds = %695
  %711 = getelementptr inbounds nuw i8, ptr %699, i64 24
  %712 = load ptr, ptr %711, align 8, !tbaa !106
  %713 = getelementptr inbounds nuw i8, ptr %701, i64 32
  %714 = load ptr, ptr %713, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %712, ptr align 1 %714, i64 %707, i1 false)
  %715 = load ptr, ptr %711, align 8, !tbaa !106
  %716 = getelementptr inbounds nuw i8, ptr %715, i64 %707
  store ptr %716, ptr %711, align 8, !tbaa !106
  %717 = load ptr, ptr %713, align 8, !tbaa !58
  %718 = getelementptr inbounds nuw i8, ptr %717, i64 %707
  store ptr %718, ptr %713, align 8, !tbaa !58
  %719 = getelementptr inbounds nuw i8, ptr %699, i64 40
  %720 = load i64, ptr %719, align 8, !tbaa !108
  %721 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %720, i64 %707), !nosanitize !45
  %722 = extractvalue { i64, i1 } %721, 1, !nosanitize !45
  br i1 %722, label %723, label %724, !prof !46, !nosanitize !45

723:                                              ; preds = %710
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

724:                                              ; preds = %710
  %725 = extractvalue { i64, i1 } %721, 0, !nosanitize !45
  store i64 %725, ptr %719, align 8, !tbaa !108
  %726 = load i32, ptr %704, align 8, !tbaa !107
  %727 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %726, i32 %708), !nosanitize !45
  %728 = extractvalue { i32, i1 } %727, 1, !nosanitize !45
  br i1 %728, label %729, label %730, !prof !46, !nosanitize !45

729:                                              ; preds = %724
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

730:                                              ; preds = %724
  %731 = extractvalue { i32, i1 } %727, 0, !nosanitize !45
  store i32 %731, ptr %704, align 8, !tbaa !107
  %732 = load i64, ptr %702, align 8, !tbaa !57
  %733 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %732, i64 %707), !nosanitize !45
  %734 = extractvalue { i64, i1 } %733, 1, !nosanitize !45
  br i1 %734, label %735, label %736, !prof !46, !nosanitize !45

735:                                              ; preds = %730
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

736:                                              ; preds = %730
  %737 = extractvalue { i64, i1 } %733, 0, !nosanitize !45
  store i64 %737, ptr %702, align 8, !tbaa !57
  %738 = icmp eq i64 %737, 0
  br i1 %738, label %739, label %742

739:                                              ; preds = %736
  %740 = getelementptr inbounds nuw i8, ptr %701, i64 16
  %741 = load ptr, ptr %740, align 8, !tbaa !40
  store ptr %741, ptr %713, align 8, !tbaa !58
  br label %742

742:                                              ; preds = %739, %736, %695
  %743 = load ptr, ptr %0, align 8, !tbaa !20
  %744 = getelementptr inbounds nuw i8, ptr %743, i64 32
  %745 = load i32, ptr %744, align 8, !tbaa !107
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %.loopexit29, label %747

747:                                              ; preds = %742, %679
  br label %.loopexit29

.loopexit29:                                      ; preds = %606, %350, %747, %742, %673
  %748 = phi i32 [ 1, %747 ], [ %678, %673 ], [ 0, %742 ], [ 0, %350 ], [ 0, %606 ]
  ret i32 %748
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
  br i1 %35, label %36, label %361

36:                                               ; preds = %33
  %37 = load i32, ptr %4, align 8, !tbaa !32
  %38 = zext i32 %37 to i64
  br label %39

39:                                               ; preds = %308, %36
  %40 = phi i32 [ %236, %308 ], [ %34, %36 ]
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
  br i1 %194, label %313, label %195

195:                                              ; preds = %187
  %196 = load ptr, ptr %7, align 8, !tbaa !34
  %197 = zext i32 %189 to i64
  %198 = getelementptr inbounds nuw i8, ptr %196, i64 %197
  %199 = zext i32 %188 to i64
  %200 = getelementptr inbounds nuw i8, ptr %198, i64 %199
  %201 = tail call i32 @llvm.umin.i32(i32 %193, i32 %190)
  %202 = icmp eq i32 %190, 0
  br i1 %202, label %230, label %203

203:                                              ; preds = %195
  %204 = sub i32 %193, %201
  store i32 %204, ptr %192, align 8, !tbaa !81
  %205 = load ptr, ptr %191, align 8, !tbaa !82
  %206 = zext i32 %201 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %200, ptr align 1 %205, i64 %206, i1 false)
  %207 = getelementptr inbounds nuw i8, ptr %191, i64 56
  %208 = load ptr, ptr %207, align 8, !tbaa !19
  %209 = getelementptr inbounds nuw i8, ptr %208, i64 48
  %210 = load i32, ptr %209, align 8, !tbaa !30
  switch i32 %210, label %219 [
    i32 1, label %211
    i32 2, label %215
  ]

211:                                              ; preds = %203
  %212 = getelementptr inbounds nuw i8, ptr %191, i64 96
  %213 = load i64, ptr %212, align 8, !tbaa !59
  %214 = tail call i64 @adler32(i64 noundef %213, ptr noundef %200, i32 noundef %201) #11
  store i64 %214, ptr %212, align 8, !tbaa !59
  br label %219

215:                                              ; preds = %203
  %216 = getelementptr inbounds nuw i8, ptr %191, i64 96
  %217 = load i64, ptr %216, align 8, !tbaa !59
  %218 = tail call i64 @crc32(i64 noundef %217, ptr noundef %200, i32 noundef %201) #11
  store i64 %218, ptr %216, align 8, !tbaa !59
  br label %219

219:                                              ; preds = %215, %211, %203
  %220 = load ptr, ptr %191, align 8, !tbaa !82
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 %206
  store ptr %221, ptr %191, align 8, !tbaa !82
  %222 = getelementptr inbounds nuw i8, ptr %191, i64 16
  %223 = load i64, ptr %222, align 8, !tbaa !55
  %224 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %223, i64 %206), !nosanitize !45
  %225 = extractvalue { i64, i1 } %224, 1, !nosanitize !45
  br i1 %225, label %226, label %227, !prof !46, !nosanitize !45

226:                                              ; preds = %219
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

227:                                              ; preds = %219
  %228 = extractvalue { i64, i1 } %224, 0, !nosanitize !45
  store i64 %228, ptr %222, align 8, !tbaa !55
  %229 = load i32, ptr %3, align 4, !tbaa !75
  br label %230

230:                                              ; preds = %227, %195
  %231 = phi i32 [ %188, %195 ], [ %229, %227 ]
  %232 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %231, i32 %201), !nosanitize !45
  %233 = extractvalue { i32, i1 } %232, 1, !nosanitize !45
  br i1 %233, label %234, label %235, !prof !46, !nosanitize !45

234:                                              ; preds = %230
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

235:                                              ; preds = %230
  %236 = extractvalue { i32, i1 } %232, 0, !nosanitize !45
  store i32 %236, ptr %3, align 4, !tbaa !75
  %237 = load i32, ptr %10, align 4, !tbaa !76
  %238 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %236, i32 %237), !nosanitize !45
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !45
  br i1 %239, label %240, label %241, !prof !46, !nosanitize !45

240:                                              ; preds = %235
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

241:                                              ; preds = %235
  %242 = extractvalue { i32, i1 } %238, 0, !nosanitize !45
  %243 = icmp ugt i32 %242, 2
  br i1 %243, label %244, label %.loopexit

244:                                              ; preds = %241
  %245 = load i32, ptr %6, align 4, !tbaa !73
  %246 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %245, i32 %237), !nosanitize !45
  %247 = extractvalue { i32, i1 } %246, 0, !nosanitize !45
  %248 = extractvalue { i32, i1 } %246, 1, !nosanitize !45
  br i1 %248, label %249, label %250, !prof !46, !nosanitize !45

249:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

250:                                              ; preds = %244
  %251 = load ptr, ptr %7, align 8, !tbaa !34
  %252 = zext i32 %247 to i64
  %253 = getelementptr inbounds nuw i8, ptr %251, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !8
  %255 = zext i8 %254 to i32
  store i32 %255, ptr %15, align 8, !tbaa !80
  %256 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %247, i32 1), !nosanitize !45
  %257 = extractvalue { i32, i1 } %256, 1, !nosanitize !45
  br i1 %257, label %258, label %259, !prof !46, !nosanitize !45

258:                                              ; preds = %250
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

259:                                              ; preds = %250
  %260 = extractvalue { i32, i1 } %256, 0, !nosanitize !45
  %261 = load i32, ptr %16, align 8, !tbaa !53
  %262 = shl i32 %255, %261
  %263 = zext i32 %260 to i64
  %264 = getelementptr inbounds nuw i8, ptr %251, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !8
  %266 = zext i8 %265 to i32
  %267 = xor i32 %262, %266
  %268 = load i32, ptr %17, align 4, !tbaa !52
  %269 = and i32 %267, %268
  store i32 %269, ptr %15, align 8, !tbaa !80
  br label %270

270:                                              ; preds = %303, %259
  %271 = phi i32 [ %269, %259 ], [ %288, %303 ]
  %272 = phi i32 [ %237, %259 ], [ %299, %303 ]
  %273 = phi i32 [ %247, %259 ], [ %304, %303 ]
  %274 = icmp eq i32 %272, 0
  br i1 %274, label %.loopexit, label %275

275:                                              ; preds = %270
  %276 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %273, i32 3), !nosanitize !45
  %277 = extractvalue { i32, i1 } %276, 1, !nosanitize !45
  br i1 %277, label %278, label %279, !prof !46, !nosanitize !45

278:                                              ; preds = %275
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

279:                                              ; preds = %275
  %280 = shl i32 %271, %261
  %281 = extractvalue { i32, i1 } %276, 0, !nosanitize !45
  %282 = add i32 %281, -1
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds nuw i8, ptr %251, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !8
  %286 = zext i8 %285 to i32
  %287 = xor i32 %280, %286
  %288 = and i32 %287, %268
  store i32 %288, ptr %15, align 8, !tbaa !80
  %289 = load ptr, ptr %12, align 8, !tbaa !37
  %290 = zext i32 %288 to i64
  %291 = getelementptr inbounds nuw [2 x i8], ptr %289, i64 %290
  %292 = load i16, ptr %291, align 2, !tbaa !62
  %293 = load ptr, ptr %13, align 8, !tbaa !35
  %294 = load i32, ptr %18, align 8, !tbaa !33
  %295 = and i32 %294, %273
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds nuw [2 x i8], ptr %293, i64 %296
  store i16 %292, ptr %297, align 2, !tbaa !62
  %298 = trunc i32 %273 to i16
  store i16 %298, ptr %291, align 2, !tbaa !62
  %299 = add i32 %272, -1
  store i32 %299, ptr %10, align 4, !tbaa !76
  %300 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %236, i32 %299), !nosanitize !45
  %301 = extractvalue { i32, i1 } %300, 1, !nosanitize !45
  br i1 %301, label %302, label %303, !prof !46, !nosanitize !45

302:                                              ; preds = %279
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

303:                                              ; preds = %279
  %304 = add nuw i32 %273, 1
  %305 = extractvalue { i32, i1 } %300, 0, !nosanitize !45
  %306 = icmp ult i32 %305, 3
  br i1 %306, label %.loopexit, label %270, !llvm.loop !91

.loopexit:                                        ; preds = %303, %270, %241
  %307 = icmp ult i32 %236, 262
  br i1 %307, label %308, label %313

308:                                              ; preds = %.loopexit
  %309 = load ptr, ptr %0, align 8, !tbaa !20
  %310 = getelementptr inbounds nuw i8, ptr %309, i64 8
  %311 = load i32, ptr %310, align 8, !tbaa !81
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %39, !llvm.loop !92

313:                                              ; preds = %308, %.loopexit, %187
  %314 = phi i32 [ %236, %308 ], [ %236, %.loopexit ], [ %188, %187 ]
  %315 = load i64, ptr %19, align 8, !tbaa !38
  %316 = load i64, ptr %5, align 8, !tbaa !61
  %317 = icmp ult i64 %315, %316
  br i1 %317, label %318, label %353

318:                                              ; preds = %313
  %319 = load i32, ptr %6, align 4, !tbaa !73
  %320 = zext i32 %319 to i64
  %321 = zext i32 %314 to i64
  %322 = add nuw nsw i64 %320, %321
  %323 = icmp ult i64 %315, %322
  br i1 %323, label %324, label %334

324:                                              ; preds = %318
  %325 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %316, i64 %322), !nosanitize !45
  %326 = extractvalue { i64, i1 } %325, 1, !nosanitize !45
  br i1 %326, label %327, label %328, !prof !46, !nosanitize !45

327:                                              ; preds = %324
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

328:                                              ; preds = %324
  %329 = extractvalue { i64, i1 } %325, 0, !nosanitize !45
  %330 = tail call i64 @llvm.umin.i64(i64 %329, i64 258)
  %331 = load ptr, ptr %7, align 8, !tbaa !34
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 %322
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %332, i8 0, i64 %330, i1 false)
  %333 = add nuw nsw i64 %330, %322
  br label %350

334:                                              ; preds = %318
  %335 = add nuw nsw i64 %322, 258
  %336 = icmp ult i64 %315, %335
  br i1 %336, label %337, label %353

337:                                              ; preds = %334
  %338 = sub nuw nsw i64 %335, %315
  %339 = sub i64 %316, %315
  %340 = tail call i64 @llvm.umin.i64(i64 %338, i64 %339)
  %341 = load ptr, ptr %7, align 8, !tbaa !34
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 %315
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

350:                                              ; preds = %348, %328
  %351 = phi i64 [ %333, %328 ], [ %349, %348 ]
  store i64 %351, ptr %19, align 8, !tbaa !38
  %352 = load i32, ptr %3, align 4, !tbaa !75
  br label %353

353:                                              ; preds = %350, %334, %313
  %354 = phi i32 [ %314, %313 ], [ %314, %334 ], [ %352, %350 ]
  %355 = icmp ult i32 %354, 262
  %356 = and i1 %20, %355
  br i1 %356, label %.loopexit40, label %357

357:                                              ; preds = %353
  %358 = icmp eq i32 %354, 0
  br i1 %358, label %852, label %359

359:                                              ; preds = %357
  %360 = icmp ugt i32 %354, 2
  br i1 %360, label %361, label %561

361:                                              ; preds = %359, %33
  %362 = phi i32 [ %354, %359 ], [ %34, %33 ]
  %363 = load i32, ptr %6, align 4, !tbaa !73
  %364 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %363, i32 2), !nosanitize !45
  %365 = extractvalue { i32, i1 } %364, 1, !nosanitize !45
  br i1 %365, label %366, label %367, !prof !46, !nosanitize !45

366:                                              ; preds = %361
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

367:                                              ; preds = %361
  %368 = extractvalue { i32, i1 } %364, 0, !nosanitize !45
  %369 = load ptr, ptr %7, align 8, !tbaa !34
  %370 = load i32, ptr %15, align 8, !tbaa !80
  %371 = load i32, ptr %16, align 8, !tbaa !53
  %372 = shl i32 %370, %371
  %373 = zext i32 %368 to i64
  %374 = getelementptr inbounds nuw i8, ptr %369, i64 %373
  %375 = load i8, ptr %374, align 1, !tbaa !8
  %376 = zext i8 %375 to i32
  %377 = xor i32 %372, %376
  %378 = load i32, ptr %17, align 4, !tbaa !52
  %379 = and i32 %377, %378
  store i32 %379, ptr %15, align 8, !tbaa !80
  %380 = load ptr, ptr %12, align 8, !tbaa !37
  %381 = zext i32 %379 to i64
  %382 = getelementptr inbounds nuw [2 x i8], ptr %380, i64 %381
  %383 = load i16, ptr %382, align 2, !tbaa !62
  %384 = load ptr, ptr %13, align 8, !tbaa !35
  %385 = load i32, ptr %18, align 8, !tbaa !33
  %386 = and i32 %385, %363
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds nuw [2 x i8], ptr %384, i64 %387
  store i16 %383, ptr %388, align 2, !tbaa !62
  %389 = zext i16 %383 to i32
  %390 = trunc i32 %363 to i16
  store i16 %390, ptr %382, align 2, !tbaa !62
  %391 = icmp eq i16 %383, 0
  br i1 %391, label %561, label %392

392:                                              ; preds = %367
  %393 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %363, i32 %389), !nosanitize !45
  %394 = extractvalue { i32, i1 } %393, 0, !nosanitize !45
  %395 = extractvalue { i32, i1 } %393, 1, !nosanitize !45
  br i1 %395, label %396, label %397, !prof !46, !nosanitize !45

396:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

397:                                              ; preds = %392
  %398 = load i32, ptr %4, align 8, !tbaa !32
  %399 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %398, i32 262), !nosanitize !45
  %400 = extractvalue { i32, i1 } %399, 1, !nosanitize !45
  br i1 %400, label %401, label %402, !prof !46, !nosanitize !45

401:                                              ; preds = %397
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

402:                                              ; preds = %397
  %403 = extractvalue { i32, i1 } %399, 0, !nosanitize !45
  %404 = icmp ugt i32 %394, %403
  br i1 %404, label %561, label %405

405:                                              ; preds = %402
  %406 = zext i32 %363 to i64
  %407 = getelementptr inbounds nuw i8, ptr %369, i64 %406
  %408 = load i32, ptr %21, align 8, !tbaa !77
  %409 = tail call i32 @llvm.usub.sat.i32(i32 %363, i32 %403)
  %410 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %408, i32 -1)
  %411 = extractvalue { i32, i1 } %410, 1, !nosanitize !45
  br i1 %411, label %.loopexit39, label %412, !prof !46, !nosanitize !45

.loopexit39:                                      ; preds = %405, %.split.loop.exit, %442
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

412:                                              ; preds = %405
  %413 = load i32, ptr %22, align 8, !tbaa !70
  %414 = load i32, ptr %23, align 4, !tbaa !72
  %415 = getelementptr inbounds nuw i8, ptr %407, i64 258
  %416 = extractvalue { i32, i1 } %410, 0, !nosanitize !45
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i8, ptr %407, i64 %417
  %419 = load i8, ptr %418, align 1, !tbaa !8
  %420 = sext i32 %408 to i64
  %421 = getelementptr inbounds i8, ptr %407, i64 %420
  %422 = load i8, ptr %421, align 1, !tbaa !8
  %423 = load i32, ptr %24, align 4, !tbaa !68
  %424 = icmp ult i32 %408, %423
  %425 = lshr i32 %414, 2
  %426 = select i1 %424, i32 %414, i32 %425
  %427 = tail call i32 @llvm.umin.i32(i32 %413, i32 %362)
  %428 = getelementptr inbounds nuw i8, ptr %407, i64 1
  %429 = ptrtoint ptr %415 to i64
  br label %430

430:                                              ; preds = %555, %412
  %431 = phi i32 [ %408, %412 ], [ %542, %555 ]
  %432 = phi i32 [ %426, %412 ], [ %556, %555 ]
  %433 = phi i32 [ %389, %412 ], [ %549, %555 ]
  %434 = phi i8 [ %419, %412 ], [ %543, %555 ]
  %435 = phi i8 [ %422, %412 ], [ %544, %555 ]
  %436 = zext nneg i32 %433 to i64
  %437 = getelementptr inbounds nuw i8, ptr %369, i64 %436
  %438 = sext i32 %431 to i64
  %439 = getelementptr inbounds i8, ptr %437, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !8
  %441 = icmp eq i8 %440, %435
  br i1 %441, label %442, label %541

442:                                              ; preds = %430
  %443 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %431, i32 -1)
  %444 = extractvalue { i32, i1 } %443, 1, !nosanitize !45
  br i1 %444, label %.loopexit39, label %445, !prof !46, !nosanitize !45

445:                                              ; preds = %442
  %446 = extractvalue { i32, i1 } %443, 0, !nosanitize !45
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i8, ptr %437, i64 %447
  %449 = load i8, ptr %448, align 1, !tbaa !8
  %450 = icmp eq i8 %449, %434
  br i1 %450, label %451, label %541

451:                                              ; preds = %445
  %452 = load i8, ptr %437, align 1, !tbaa !8
  %453 = load i8, ptr %407, align 1, !tbaa !8
  %454 = icmp eq i8 %452, %453
  br i1 %454, label %455, label %541

455:                                              ; preds = %451
  %456 = getelementptr inbounds nuw i8, ptr %437, i64 1
  %457 = load i8, ptr %456, align 1, !tbaa !8
  %458 = load i8, ptr %428, align 1, !tbaa !8
  %459 = icmp eq i8 %457, %458
  br i1 %459, label %460, label %541

460:                                              ; preds = %455
  %461 = getelementptr inbounds nuw i8, ptr %437, i64 2
  br label %462

462:                                              ; preds = %507, %460
  %463 = phi ptr [ %461, %460 ], [ %511, %507 ]
  %464 = phi i64 [ 2, %460 ], [ %508, %507 ]
  %465 = getelementptr inbounds nuw i8, ptr %407, i64 %464
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 1
  %467 = load i8, ptr %466, align 1, !tbaa !8
  %468 = getelementptr inbounds nuw i8, ptr %463, i64 1
  %469 = load i8, ptr %468, align 1, !tbaa !8
  %470 = icmp eq i8 %467, %469
  br i1 %470, label %471, label %.split.loop.exit.split.loop.exit

471:                                              ; preds = %462
  %472 = getelementptr inbounds nuw i8, ptr %465, i64 2
  %473 = load i8, ptr %472, align 1, !tbaa !8
  %474 = getelementptr inbounds nuw i8, ptr %463, i64 2
  %475 = load i8, ptr %474, align 1, !tbaa !8
  %476 = icmp eq i8 %473, %475
  br i1 %476, label %477, label %.split.loop.exit.split.loop.exit162

477:                                              ; preds = %471
  %478 = getelementptr inbounds nuw i8, ptr %465, i64 3
  %479 = load i8, ptr %478, align 1, !tbaa !8
  %480 = getelementptr inbounds nuw i8, ptr %463, i64 3
  %481 = load i8, ptr %480, align 1, !tbaa !8
  %482 = icmp eq i8 %479, %481
  br i1 %482, label %483, label %.split.loop.exit.split.loop.exit164

483:                                              ; preds = %477
  %484 = getelementptr inbounds nuw i8, ptr %465, i64 4
  %485 = load i8, ptr %484, align 1, !tbaa !8
  %486 = getelementptr inbounds nuw i8, ptr %463, i64 4
  %487 = load i8, ptr %486, align 1, !tbaa !8
  %488 = icmp eq i8 %485, %487
  br i1 %488, label %489, label %.split.loop.exit.split.loop.exit166

489:                                              ; preds = %483
  %490 = getelementptr inbounds nuw i8, ptr %465, i64 5
  %491 = load i8, ptr %490, align 1, !tbaa !8
  %492 = getelementptr inbounds nuw i8, ptr %463, i64 5
  %493 = load i8, ptr %492, align 1, !tbaa !8
  %494 = icmp eq i8 %491, %493
  br i1 %494, label %495, label %.split.loop.exit.split.loop.exit168

495:                                              ; preds = %489
  %496 = getelementptr inbounds nuw i8, ptr %465, i64 6
  %497 = load i8, ptr %496, align 1, !tbaa !8
  %498 = getelementptr inbounds nuw i8, ptr %463, i64 6
  %499 = load i8, ptr %498, align 1, !tbaa !8
  %500 = icmp eq i8 %497, %499
  br i1 %500, label %501, label %.split.loop.exit.split.loop.exit170

501:                                              ; preds = %495
  %502 = getelementptr inbounds nuw i8, ptr %465, i64 7
  %503 = load i8, ptr %502, align 1, !tbaa !8
  %504 = getelementptr inbounds nuw i8, ptr %463, i64 7
  %505 = load i8, ptr %504, align 1, !tbaa !8
  %506 = icmp eq i8 %503, %505
  br i1 %506, label %507, label %.split.loop.exit.split.loop.exit172

507:                                              ; preds = %501
  %508 = add nuw nsw i64 %464, 8
  %509 = getelementptr inbounds nuw i8, ptr %407, i64 %508
  %510 = load i8, ptr %509, align 1, !tbaa !8
  %511 = getelementptr inbounds nuw i8, ptr %463, i64 8
  %512 = load i8, ptr %511, align 1, !tbaa !8
  %513 = icmp eq i8 %510, %512
  %514 = icmp samesign ult i64 %464, 250
  %515 = select i1 %513, i1 %514, i1 false
  br i1 %515, label %462, label %.split.loop.exit.split.loop.exit174, !llvm.loop !152

.split.loop.exit.split.loop.exit:                 ; preds = %462
  %516 = getelementptr inbounds nuw i8, ptr %465, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit162:              ; preds = %471
  %517 = getelementptr inbounds nuw i8, ptr %465, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit164:              ; preds = %477
  %518 = getelementptr inbounds nuw i8, ptr %465, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit166:              ; preds = %483
  %519 = getelementptr inbounds nuw i8, ptr %465, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit168:              ; preds = %489
  %520 = getelementptr inbounds nuw i8, ptr %465, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit170:              ; preds = %495
  %521 = getelementptr inbounds nuw i8, ptr %465, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit172:              ; preds = %501
  %522 = getelementptr inbounds nuw i8, ptr %465, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit174:              ; preds = %507
  %523 = getelementptr inbounds nuw i8, ptr %407, i64 %508
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit174, %.split.loop.exit.split.loop.exit172, %.split.loop.exit.split.loop.exit170, %.split.loop.exit.split.loop.exit168, %.split.loop.exit.split.loop.exit166, %.split.loop.exit.split.loop.exit164, %.split.loop.exit.split.loop.exit162, %.split.loop.exit.split.loop.exit
  %524 = phi ptr [ %517, %.split.loop.exit.split.loop.exit162 ], [ %518, %.split.loop.exit.split.loop.exit164 ], [ %516, %.split.loop.exit.split.loop.exit ], [ %522, %.split.loop.exit.split.loop.exit172 ], [ %521, %.split.loop.exit.split.loop.exit170 ], [ %520, %.split.loop.exit.split.loop.exit168 ], [ %519, %.split.loop.exit.split.loop.exit166 ], [ %523, %.split.loop.exit.split.loop.exit174 ]
  %525 = ptrtoint ptr %524 to i64
  %526 = sub i64 %429, %525
  %527 = trunc i64 %526 to i32
  %528 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %527), !nosanitize !45
  %529 = extractvalue { i32, i1 } %528, 0, !nosanitize !45
  %530 = extractvalue { i32, i1 } %528, 1, !nosanitize !45
  br i1 %530, label %.loopexit39, label %531, !prof !46, !nosanitize !45

531:                                              ; preds = %.split.loop.exit
  %532 = icmp sgt i32 %529, %431
  br i1 %532, label %533, label %541

533:                                              ; preds = %531
  store i32 %433, ptr %8, align 8, !tbaa !83
  %534 = icmp slt i32 %529, %427
  br i1 %534, label %535, label %558

535:                                              ; preds = %533
  %536 = sext i32 %529 to i64
  %537 = getelementptr i8, ptr %407, i64 %536
  %538 = getelementptr i8, ptr %537, i64 -1
  %539 = load i8, ptr %538, align 1, !tbaa !8
  %540 = load i8, ptr %537, align 1, !tbaa !8
  br label %541

541:                                              ; preds = %535, %531, %455, %451, %445, %430
  %542 = phi i32 [ %431, %430 ], [ %431, %445 ], [ %431, %451 ], [ %431, %455 ], [ %529, %535 ], [ %431, %531 ]
  %543 = phi i8 [ %434, %430 ], [ %434, %445 ], [ %434, %451 ], [ %434, %455 ], [ %539, %535 ], [ %434, %531 ]
  %544 = phi i8 [ %435, %430 ], [ %435, %445 ], [ %435, %451 ], [ %435, %455 ], [ %540, %535 ], [ %435, %531 ]
  %545 = and i32 %433, %385
  %546 = zext nneg i32 %545 to i64
  %547 = getelementptr inbounds nuw [2 x i8], ptr %384, i64 %546
  %548 = load i16, ptr %547, align 2, !tbaa !62
  %549 = zext i16 %548 to i32
  %550 = icmp ult i32 %409, %549
  br i1 %550, label %551, label %558

551:                                              ; preds = %541
  %552 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %432, i32 1), !nosanitize !45
  %553 = extractvalue { i32, i1 } %552, 1, !nosanitize !45
  br i1 %553, label %554, label %555, !prof !46, !nosanitize !45

554:                                              ; preds = %551
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

555:                                              ; preds = %551
  %556 = extractvalue { i32, i1 } %552, 0, !nosanitize !45
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %430, !llvm.loop !153

558:                                              ; preds = %555, %541, %533
  %559 = phi i32 [ %542, %555 ], [ %542, %541 ], [ %529, %533 ]
  %560 = tail call i32 @llvm.umin.i32(i32 %559, i32 %362)
  store i32 %560, ptr %25, align 8, !tbaa !78
  br label %563

561:                                              ; preds = %402, %367, %359
  %562 = load i32, ptr %25, align 8, !tbaa !78
  br label %563

563:                                              ; preds = %561, %558
  %564 = phi i32 [ %562, %561 ], [ %560, %558 ]
  %565 = icmp ugt i32 %564, 2
  br i1 %565, label %566, label %725

566:                                              ; preds = %563
  %567 = trunc i32 %564 to i8
  %568 = add i8 %567, -3
  %569 = load i32, ptr %6, align 4, !tbaa !73
  %570 = load i32, ptr %8, align 8, !tbaa !83
  %571 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %569, i32 %570), !nosanitize !45
  %572 = extractvalue { i32, i1 } %571, 1, !nosanitize !45
  br i1 %572, label %573, label %574, !prof !46, !nosanitize !45

573:                                              ; preds = %566
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

574:                                              ; preds = %566
  %575 = extractvalue { i32, i1 } %571, 0, !nosanitize !45
  %576 = trunc i32 %575 to i16
  %577 = load i32, ptr %27, align 4, !tbaa !139
  %578 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %577, i32 1), !nosanitize !45
  %579 = extractvalue { i32, i1 } %578, 1, !nosanitize !45
  br i1 %579, label %580, label %581, !prof !46, !nosanitize !45

580:                                              ; preds = %574
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

581:                                              ; preds = %574
  %582 = extractvalue { i32, i1 } %578, 0, !nosanitize !45
  %583 = load ptr, ptr %26, align 8, !tbaa !44
  %584 = trunc i32 %575 to i8
  store i32 %582, ptr %27, align 4, !tbaa !139
  %585 = zext i32 %577 to i64
  %586 = getelementptr inbounds nuw i8, ptr %583, i64 %585
  store i8 %584, ptr %586, align 1, !tbaa !8
  %587 = load i32, ptr %27, align 4, !tbaa !139
  %588 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %587, i32 1), !nosanitize !45
  %589 = extractvalue { i32, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %590, label %591, !prof !46, !nosanitize !45

590:                                              ; preds = %581
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

591:                                              ; preds = %581
  %592 = extractvalue { i32, i1 } %588, 0, !nosanitize !45
  %593 = load ptr, ptr %26, align 8, !tbaa !44
  %594 = lshr i32 %575, 8
  %595 = trunc i32 %594 to i8
  store i32 %592, ptr %27, align 4, !tbaa !139
  %596 = zext i32 %587 to i64
  %597 = getelementptr inbounds nuw i8, ptr %593, i64 %596
  store i8 %595, ptr %597, align 1, !tbaa !8
  %598 = load i32, ptr %27, align 4, !tbaa !139
  %599 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %598, i32 1), !nosanitize !45
  %600 = extractvalue { i32, i1 } %599, 1, !nosanitize !45
  br i1 %600, label %601, label %602, !prof !46, !nosanitize !45

601:                                              ; preds = %591
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

602:                                              ; preds = %591
  %603 = extractvalue { i32, i1 } %599, 0, !nosanitize !45
  %604 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %603, ptr %27, align 4, !tbaa !139
  %605 = zext i32 %598 to i64
  %606 = getelementptr inbounds nuw i8, ptr %604, i64 %605
  store i8 %568, ptr %606, align 1, !tbaa !8
  %607 = add i16 %576, -1
  %608 = zext i8 %568 to i64
  %609 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %608
  %610 = load i8, ptr %609, align 1, !tbaa !8
  %611 = zext i8 %610 to i64
  %612 = getelementptr [4 x i8], ptr %30, i64 %611
  %613 = load i16, ptr %612, align 4, !tbaa !8
  %614 = add i16 %613, 1
  store i16 %614, ptr %612, align 4, !tbaa !8
  %615 = icmp ult i16 %607, 256
  br i1 %615, label %616, label %619

616:                                              ; preds = %602
  %617 = zext nneg i16 %607 to i64
  %618 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %617
  br label %624

619:                                              ; preds = %602
  %620 = lshr i16 %607, 7
  %621 = zext nneg i16 %620 to i64
  %622 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %621
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 256
  br label %624

624:                                              ; preds = %619, %616
  %625 = phi ptr [ %618, %616 ], [ %623, %619 ]
  %626 = load i8, ptr %625, align 1, !tbaa !8
  %627 = zext i8 %626 to i64
  %628 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %627
  %629 = load i16, ptr %628, align 4, !tbaa !8
  %630 = add i16 %629, 1
  store i16 %630, ptr %628, align 4, !tbaa !8
  %631 = load i32, ptr %27, align 4, !tbaa !139
  %632 = load i32, ptr %29, align 8, !tbaa !47
  %633 = icmp eq i32 %631, %632
  %634 = load i32, ptr %25, align 8, !tbaa !78
  %635 = load i32, ptr %3, align 4, !tbaa !75
  %636 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %635, i32 %634), !nosanitize !45
  %637 = extractvalue { i32, i1 } %636, 1, !nosanitize !45
  br i1 %637, label %638, label %639, !prof !46, !nosanitize !45

638:                                              ; preds = %624
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

639:                                              ; preds = %624
  %640 = extractvalue { i32, i1 } %636, 0, !nosanitize !45
  store i32 %640, ptr %3, align 4, !tbaa !75
  %641 = load i32, ptr %32, align 8, !tbaa !66
  %642 = icmp ule i32 %634, %641
  %643 = icmp ugt i32 %640, 2
  %644 = select i1 %642, i1 %643, i1 false
  br i1 %644, label %645, label %710

645:                                              ; preds = %639
  %646 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %634, i32 1), !nosanitize !45
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !45
  br i1 %647, label %648, label %649, !prof !46, !nosanitize !45

648:                                              ; preds = %645
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

649:                                              ; preds = %645
  %650 = extractvalue { i32, i1 } %646, 0, !nosanitize !45
  store i32 %650, ptr %25, align 8, !tbaa !78
  %651 = load i32, ptr %6, align 4, !tbaa !73
  %652 = xor i32 %651, -1
  %653 = add i32 %634, -2
  %umin = tail call i32 @llvm.umin.i32(i32 %650, i32 %653)
  %654 = freeze i32 %umin
  %655 = add i32 %651, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %655, i32 -2)
  %656 = xor i32 %651, -1
  %657 = add i32 %umax, %656
  %umin91 = tail call i32 @llvm.umin.i32(i32 %657, i32 %652)
  %umin92 = tail call i32 @llvm.umin.i32(i32 %654, i32 %umin91)
  %658 = icmp eq i32 %umin92, %652
  %659 = icmp eq i32 %650, %umin92
  br i1 %658, label %707, label %.split, !prof !46, !nosanitize !45

.split:                                           ; preds = %649
  %660 = icmp eq i32 %657, %umin92
  br i1 %660, label %.split.split.us, label %.split.split, !prof !46, !nosanitize !45

.split.split.us:                                  ; preds = %.split
  %661 = add i32 %651, 1
  store i32 %661, ptr %6, align 4, !tbaa !73
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

.split.split:                                     ; preds = %.split
  br i1 %659, label %.split.split.split.us, label %.split.split.split, !prof !46, !nosanitize !45

.split.split.split.us:                            ; preds = %.split.split
  %662 = add i32 %651, 1
  store i32 %662, ptr %6, align 4, !tbaa !73
  %663 = add i32 %651, 3
  %664 = load ptr, ptr %7, align 8, !tbaa !34
  %665 = load i32, ptr %15, align 8, !tbaa !80
  %666 = load i32, ptr %16, align 8, !tbaa !53
  %667 = shl i32 %665, %666
  %668 = zext i32 %663 to i64
  %669 = getelementptr inbounds nuw i8, ptr %664, i64 %668
  %670 = load i8, ptr %669, align 1, !tbaa !8
  %671 = zext i8 %670 to i32
  %672 = xor i32 %667, %671
  %673 = load i32, ptr %17, align 4, !tbaa !52
  %674 = and i32 %672, %673
  store i32 %674, ptr %15, align 8, !tbaa !80
  %675 = load ptr, ptr %12, align 8, !tbaa !37
  %676 = zext i32 %674 to i64
  %677 = getelementptr inbounds nuw [2 x i8], ptr %675, i64 %676
  %678 = load i16, ptr %677, align 2, !tbaa !62
  %679 = load ptr, ptr %13, align 8, !tbaa !35
  %680 = load i32, ptr %18, align 8, !tbaa !33
  %681 = and i32 %680, %662
  %682 = zext i32 %681 to i64
  %683 = getelementptr inbounds nuw [2 x i8], ptr %679, i64 %682
  store i16 %678, ptr %683, align 2, !tbaa !62
  %684 = trunc i32 %662 to i16
  store i16 %684, ptr %677, align 2, !tbaa !62
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
  br label %685

685:                                              ; preds = %685, %.split.split.split
  %686 = phi i32 [ %697, %685 ], [ %.pre109, %.split.split.split ]
  %687 = phi i32 [ %705, %685 ], [ %650, %.split.split.split ]
  %688 = phi i32 [ %689, %685 ], [ %651, %.split.split.split ]
  %689 = add i32 %688, 1
  store i32 %689, ptr %6, align 4, !tbaa !73
  %690 = add i32 %688, 3
  %691 = shl i32 %686, %.pre110
  %692 = zext i32 %690 to i64
  %693 = getelementptr inbounds nuw i8, ptr %.pre, i64 %692
  %694 = load i8, ptr %693, align 1, !tbaa !8
  %695 = zext i8 %694 to i32
  %696 = xor i32 %691, %695
  %697 = and i32 %696, %.pre111
  store i32 %697, ptr %15, align 8, !tbaa !80
  %698 = zext i32 %697 to i64
  %699 = getelementptr inbounds nuw [2 x i8], ptr %.pre112, i64 %698
  %700 = load i16, ptr %699, align 2, !tbaa !62
  %701 = and i32 %.pre114, %689
  %702 = zext i32 %701 to i64
  %703 = getelementptr inbounds nuw [2 x i8], ptr %.pre113, i64 %702
  store i16 %700, ptr %703, align 2, !tbaa !62
  %704 = trunc i32 %689 to i16
  store i16 %704, ptr %699, align 2, !tbaa !62
  %705 = add i32 %687, -1
  store i32 %705, ptr %25, align 8, !tbaa !78
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %708, label %685, !llvm.loop !154

707:                                              ; preds = %649
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

708:                                              ; preds = %685
  %709 = add i32 %688, 2
  store i32 %709, ptr %6, align 4, !tbaa !73
  br i1 %633, label %787, label %.backedge

710:                                              ; preds = %639
  %711 = load i32, ptr %6, align 4, !tbaa !73
  %712 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %711, i32 %634), !nosanitize !45
  %713 = extractvalue { i32, i1 } %712, 1, !nosanitize !45
  br i1 %713, label %714, label %715, !prof !46, !nosanitize !45

714:                                              ; preds = %710
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

715:                                              ; preds = %710
  %716 = extractvalue { i32, i1 } %712, 0, !nosanitize !45
  store i32 %716, ptr %6, align 4, !tbaa !73
  store i32 0, ptr %25, align 8, !tbaa !78
  %717 = load ptr, ptr %7, align 8, !tbaa !34
  %718 = zext i32 %716 to i64
  %719 = getelementptr inbounds nuw i8, ptr %717, i64 %718
  %720 = load i8, ptr %719, align 1, !tbaa !8
  %721 = zext i8 %720 to i32
  store i32 %721, ptr %15, align 8, !tbaa !80
  %722 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %716, i32 1), !nosanitize !45
  %723 = extractvalue { i32, i1 } %722, 1, !nosanitize !45
  br i1 %723, label %724, label %776, !prof !46, !nosanitize !45

724:                                              ; preds = %715
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

725:                                              ; preds = %563
  %726 = load ptr, ptr %7, align 8, !tbaa !34
  %727 = load i32, ptr %6, align 4, !tbaa !73
  %728 = zext i32 %727 to i64
  %729 = getelementptr inbounds nuw i8, ptr %726, i64 %728
  %730 = load i8, ptr %729, align 1, !tbaa !8
  %731 = load i32, ptr %27, align 4, !tbaa !139
  %732 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %731, i32 1), !nosanitize !45
  %733 = extractvalue { i32, i1 } %732, 1, !nosanitize !45
  br i1 %733, label %734, label %735, !prof !46, !nosanitize !45

734:                                              ; preds = %725
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

735:                                              ; preds = %725
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
  store i8 0, ptr %748, align 1, !tbaa !8
  %749 = load i32, ptr %27, align 4, !tbaa !139
  %750 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %749, i32 1), !nosanitize !45
  %751 = extractvalue { i32, i1 } %750, 1, !nosanitize !45
  br i1 %751, label %752, label %753, !prof !46, !nosanitize !45

752:                                              ; preds = %744
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

753:                                              ; preds = %744
  %754 = extractvalue { i32, i1 } %750, 0, !nosanitize !45
  %755 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %754, ptr %27, align 4, !tbaa !139
  %756 = zext i32 %749 to i64
  %757 = getelementptr inbounds nuw i8, ptr %755, i64 %756
  store i8 %730, ptr %757, align 1, !tbaa !8
  %758 = zext i8 %730 to i64
  %759 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %758
  %760 = load i16, ptr %759, align 4, !tbaa !8
  %761 = add i16 %760, 1
  store i16 %761, ptr %759, align 4, !tbaa !8
  %762 = load i32, ptr %27, align 4, !tbaa !139
  %763 = load i32, ptr %29, align 8, !tbaa !47
  %764 = icmp eq i32 %762, %763
  %765 = load i32, ptr %3, align 4, !tbaa !75
  %766 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %765, i32 1), !nosanitize !45
  %767 = extractvalue { i32, i1 } %766, 1, !nosanitize !45
  br i1 %767, label %.loopexit42, label %768, !prof !46, !nosanitize !45

.loopexit42:                                      ; preds = %795, %753, %931, %863
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

768:                                              ; preds = %753
  %769 = extractvalue { i32, i1 } %766, 0, !nosanitize !45
  store i32 %769, ptr %3, align 4, !tbaa !75
  %770 = load i32, ptr %6, align 4, !tbaa !73
  %771 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %770, i32 1), !nosanitize !45
  %772 = extractvalue { i32, i1 } %771, 1, !nosanitize !45
  br i1 %772, label %773, label %774, !prof !46, !nosanitize !45

773:                                              ; preds = %768
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

774:                                              ; preds = %768
  %775 = extractvalue { i32, i1 } %771, 0, !nosanitize !45
  store i32 %775, ptr %6, align 4, !tbaa !73
  br i1 %764, label %787, label %.backedge

776:                                              ; preds = %715
  %777 = extractvalue { i32, i1 } %722, 0, !nosanitize !45
  %778 = load i32, ptr %16, align 8, !tbaa !53
  %779 = shl i32 %721, %778
  %780 = zext i32 %777 to i64
  %781 = getelementptr inbounds nuw i8, ptr %717, i64 %780
  %782 = load i8, ptr %781, align 1, !tbaa !8
  %783 = zext i8 %782 to i32
  %784 = xor i32 %779, %783
  %785 = load i32, ptr %17, align 4, !tbaa !52
  %786 = and i32 %784, %785
  store i32 %786, ptr %15, align 8, !tbaa !80
  br i1 %633, label %787, label %.backedge

787:                                              ; preds = %776, %774, %708
  %788 = phi i32 [ %775, %774 ], [ %709, %708 ], [ %716, %776 ]
  %789 = load i64, ptr %9, align 8, !tbaa !74
  %790 = icmp sgt i64 %789, -1
  br i1 %790, label %791, label %795

791:                                              ; preds = %787
  %792 = load ptr, ptr %7, align 8, !tbaa !34
  %793 = and i64 %789, 4294967295
  %794 = getelementptr inbounds nuw i8, ptr %792, i64 %793
  br label %795

795:                                              ; preds = %791, %787
  %796 = phi ptr [ %794, %791 ], [ null, %787 ]
  %797 = zext i32 %788 to i64
  %798 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %797, i64 %789), !nosanitize !45
  %799 = extractvalue { i64, i1 } %798, 1, !nosanitize !45
  br i1 %799, label %.loopexit42, label %800, !prof !46, !nosanitize !45

800:                                              ; preds = %795
  %801 = extractvalue { i64, i1 } %798, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %796, i64 noundef %801, i32 noundef 0) #11
  %802 = load i32, ptr %6, align 4, !tbaa !73
  %803 = zext i32 %802 to i64
  store i64 %803, ptr %9, align 8, !tbaa !74
  %804 = load ptr, ptr %0, align 8, !tbaa !20
  %805 = getelementptr inbounds nuw i8, ptr %804, i64 56
  %806 = load ptr, ptr %805, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %806) #11
  %807 = getelementptr inbounds nuw i8, ptr %806, i64 40
  %808 = load i64, ptr %807, align 8, !tbaa !57
  %809 = getelementptr inbounds nuw i8, ptr %804, i64 32
  %810 = load i32, ptr %809, align 8, !tbaa !107
  %811 = zext i32 %810 to i64
  %812 = tail call i64 @llvm.umin.i64(i64 %808, i64 %811)
  %813 = trunc nuw i64 %812 to i32
  %814 = icmp eq i64 %812, 0
  br i1 %814, label %847, label %815

815:                                              ; preds = %800
  %816 = getelementptr inbounds nuw i8, ptr %804, i64 24
  %817 = load ptr, ptr %816, align 8, !tbaa !106
  %818 = getelementptr inbounds nuw i8, ptr %806, i64 32
  %819 = load ptr, ptr %818, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %817, ptr align 1 %819, i64 %812, i1 false)
  %820 = load ptr, ptr %816, align 8, !tbaa !106
  %821 = getelementptr inbounds nuw i8, ptr %820, i64 %812
  store ptr %821, ptr %816, align 8, !tbaa !106
  %822 = load ptr, ptr %818, align 8, !tbaa !58
  %823 = getelementptr inbounds nuw i8, ptr %822, i64 %812
  store ptr %823, ptr %818, align 8, !tbaa !58
  %824 = getelementptr inbounds nuw i8, ptr %804, i64 40
  %825 = load i64, ptr %824, align 8, !tbaa !108
  %826 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %825, i64 %812), !nosanitize !45
  %827 = extractvalue { i64, i1 } %826, 1, !nosanitize !45
  br i1 %827, label %828, label %829, !prof !46, !nosanitize !45

828:                                              ; preds = %815
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

829:                                              ; preds = %815
  %830 = extractvalue { i64, i1 } %826, 0, !nosanitize !45
  store i64 %830, ptr %824, align 8, !tbaa !108
  %831 = load i32, ptr %809, align 8, !tbaa !107
  %832 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %831, i32 %813), !nosanitize !45
  %833 = extractvalue { i32, i1 } %832, 1, !nosanitize !45
  br i1 %833, label %834, label %835, !prof !46, !nosanitize !45

834:                                              ; preds = %829
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

835:                                              ; preds = %829
  %836 = extractvalue { i32, i1 } %832, 0, !nosanitize !45
  store i32 %836, ptr %809, align 8, !tbaa !107
  %837 = load i64, ptr %807, align 8, !tbaa !57
  %838 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %837, i64 %812), !nosanitize !45
  %839 = extractvalue { i64, i1 } %838, 1, !nosanitize !45
  br i1 %839, label %840, label %841, !prof !46, !nosanitize !45

840:                                              ; preds = %835
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

841:                                              ; preds = %835
  %842 = extractvalue { i64, i1 } %838, 0, !nosanitize !45
  store i64 %842, ptr %807, align 8, !tbaa !57
  %843 = icmp eq i64 %842, 0
  br i1 %843, label %844, label %847

844:                                              ; preds = %841
  %845 = getelementptr inbounds nuw i8, ptr %806, i64 16
  %846 = load ptr, ptr %845, align 8, !tbaa !40
  store ptr %846, ptr %818, align 8, !tbaa !58
  br label %847

847:                                              ; preds = %844, %841, %800
  %848 = load ptr, ptr %0, align 8, !tbaa !20
  %849 = getelementptr inbounds nuw i8, ptr %848, i64 32
  %850 = load i32, ptr %849, align 8, !tbaa !107
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %.loopexit40, label %.backedge

.backedge:                                        ; preds = %847, %776, %774, %708
  br label %33

852:                                              ; preds = %357
  %853 = load i32, ptr %6, align 4, !tbaa !73
  %854 = tail call i32 @llvm.umin.i32(i32 %853, i32 2)
  store i32 %854, ptr %10, align 4, !tbaa !76
  %855 = icmp eq i32 %1, 4
  br i1 %855, label %856, label %921

856:                                              ; preds = %852
  %857 = load i64, ptr %9, align 8, !tbaa !74
  %858 = icmp sgt i64 %857, -1
  br i1 %858, label %859, label %863

859:                                              ; preds = %856
  %860 = load ptr, ptr %7, align 8, !tbaa !34
  %861 = and i64 %857, 4294967295
  %862 = getelementptr inbounds nuw i8, ptr %860, i64 %861
  br label %863

863:                                              ; preds = %859, %856
  %864 = phi ptr [ %862, %859 ], [ null, %856 ]
  %865 = zext i32 %853 to i64
  %866 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %865, i64 %857), !nosanitize !45
  %867 = extractvalue { i64, i1 } %866, 1, !nosanitize !45
  br i1 %867, label %.loopexit42, label %868, !prof !46, !nosanitize !45

868:                                              ; preds = %863
  %869 = extractvalue { i64, i1 } %866, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %864, i64 noundef %869, i32 noundef 1) #11
  %870 = load i32, ptr %6, align 4, !tbaa !73
  %871 = zext i32 %870 to i64
  store i64 %871, ptr %9, align 8, !tbaa !74
  %872 = load ptr, ptr %0, align 8, !tbaa !20
  %873 = getelementptr inbounds nuw i8, ptr %872, i64 56
  %874 = load ptr, ptr %873, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %874) #11
  %875 = getelementptr inbounds nuw i8, ptr %874, i64 40
  %876 = load i64, ptr %875, align 8, !tbaa !57
  %877 = getelementptr inbounds nuw i8, ptr %872, i64 32
  %878 = load i32, ptr %877, align 8, !tbaa !107
  %879 = zext i32 %878 to i64
  %880 = tail call i64 @llvm.umin.i64(i64 %876, i64 %879)
  %881 = trunc nuw i64 %880 to i32
  %882 = icmp eq i64 %880, 0
  br i1 %882, label %915, label %883

883:                                              ; preds = %868
  %884 = getelementptr inbounds nuw i8, ptr %872, i64 24
  %885 = load ptr, ptr %884, align 8, !tbaa !106
  %886 = getelementptr inbounds nuw i8, ptr %874, i64 32
  %887 = load ptr, ptr %886, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %885, ptr align 1 %887, i64 %880, i1 false)
  %888 = load ptr, ptr %884, align 8, !tbaa !106
  %889 = getelementptr inbounds nuw i8, ptr %888, i64 %880
  store ptr %889, ptr %884, align 8, !tbaa !106
  %890 = load ptr, ptr %886, align 8, !tbaa !58
  %891 = getelementptr inbounds nuw i8, ptr %890, i64 %880
  store ptr %891, ptr %886, align 8, !tbaa !58
  %892 = getelementptr inbounds nuw i8, ptr %872, i64 40
  %893 = load i64, ptr %892, align 8, !tbaa !108
  %894 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %893, i64 %880), !nosanitize !45
  %895 = extractvalue { i64, i1 } %894, 1, !nosanitize !45
  br i1 %895, label %896, label %897, !prof !46, !nosanitize !45

896:                                              ; preds = %883
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

897:                                              ; preds = %883
  %898 = extractvalue { i64, i1 } %894, 0, !nosanitize !45
  store i64 %898, ptr %892, align 8, !tbaa !108
  %899 = load i32, ptr %877, align 8, !tbaa !107
  %900 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %899, i32 %881), !nosanitize !45
  %901 = extractvalue { i32, i1 } %900, 1, !nosanitize !45
  br i1 %901, label %902, label %903, !prof !46, !nosanitize !45

902:                                              ; preds = %897
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

903:                                              ; preds = %897
  %904 = extractvalue { i32, i1 } %900, 0, !nosanitize !45
  store i32 %904, ptr %877, align 8, !tbaa !107
  %905 = load i64, ptr %875, align 8, !tbaa !57
  %906 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %905, i64 %880), !nosanitize !45
  %907 = extractvalue { i64, i1 } %906, 1, !nosanitize !45
  br i1 %907, label %908, label %909, !prof !46, !nosanitize !45

908:                                              ; preds = %903
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

909:                                              ; preds = %903
  %910 = extractvalue { i64, i1 } %906, 0, !nosanitize !45
  store i64 %910, ptr %875, align 8, !tbaa !57
  %911 = icmp eq i64 %910, 0
  br i1 %911, label %912, label %915

912:                                              ; preds = %909
  %913 = getelementptr inbounds nuw i8, ptr %874, i64 16
  %914 = load ptr, ptr %913, align 8, !tbaa !40
  store ptr %914, ptr %886, align 8, !tbaa !58
  br label %915

915:                                              ; preds = %912, %909, %868
  %916 = load ptr, ptr %0, align 8, !tbaa !20
  %917 = getelementptr inbounds nuw i8, ptr %916, i64 32
  %918 = load i32, ptr %917, align 8, !tbaa !107
  %919 = icmp eq i32 %918, 0
  %920 = select i1 %919, i32 2, i32 3
  br label %.loopexit40

921:                                              ; preds = %852
  %922 = load i32, ptr %27, align 4, !tbaa !139
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %988, label %924

924:                                              ; preds = %921
  %925 = load i64, ptr %9, align 8, !tbaa !74
  %926 = icmp sgt i64 %925, -1
  br i1 %926, label %927, label %931

927:                                              ; preds = %924
  %928 = load ptr, ptr %7, align 8, !tbaa !34
  %929 = and i64 %925, 4294967295
  %930 = getelementptr inbounds nuw i8, ptr %928, i64 %929
  br label %931

931:                                              ; preds = %927, %924
  %932 = phi ptr [ %930, %927 ], [ null, %924 ]
  %933 = zext i32 %853 to i64
  %934 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %933, i64 %925), !nosanitize !45
  %935 = extractvalue { i64, i1 } %934, 1, !nosanitize !45
  br i1 %935, label %.loopexit42, label %936, !prof !46, !nosanitize !45

936:                                              ; preds = %931
  %937 = extractvalue { i64, i1 } %934, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %932, i64 noundef %937, i32 noundef 0) #11
  %938 = load i32, ptr %6, align 4, !tbaa !73
  %939 = zext i32 %938 to i64
  store i64 %939, ptr %9, align 8, !tbaa !74
  %940 = load ptr, ptr %0, align 8, !tbaa !20
  %941 = getelementptr inbounds nuw i8, ptr %940, i64 56
  %942 = load ptr, ptr %941, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %942) #11
  %943 = getelementptr inbounds nuw i8, ptr %942, i64 40
  %944 = load i64, ptr %943, align 8, !tbaa !57
  %945 = getelementptr inbounds nuw i8, ptr %940, i64 32
  %946 = load i32, ptr %945, align 8, !tbaa !107
  %947 = zext i32 %946 to i64
  %948 = tail call i64 @llvm.umin.i64(i64 %944, i64 %947)
  %949 = trunc nuw i64 %948 to i32
  %950 = icmp eq i64 %948, 0
  br i1 %950, label %983, label %951

951:                                              ; preds = %936
  %952 = getelementptr inbounds nuw i8, ptr %940, i64 24
  %953 = load ptr, ptr %952, align 8, !tbaa !106
  %954 = getelementptr inbounds nuw i8, ptr %942, i64 32
  %955 = load ptr, ptr %954, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %953, ptr align 1 %955, i64 %948, i1 false)
  %956 = load ptr, ptr %952, align 8, !tbaa !106
  %957 = getelementptr inbounds nuw i8, ptr %956, i64 %948
  store ptr %957, ptr %952, align 8, !tbaa !106
  %958 = load ptr, ptr %954, align 8, !tbaa !58
  %959 = getelementptr inbounds nuw i8, ptr %958, i64 %948
  store ptr %959, ptr %954, align 8, !tbaa !58
  %960 = getelementptr inbounds nuw i8, ptr %940, i64 40
  %961 = load i64, ptr %960, align 8, !tbaa !108
  %962 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %961, i64 %948), !nosanitize !45
  %963 = extractvalue { i64, i1 } %962, 1, !nosanitize !45
  br i1 %963, label %964, label %965, !prof !46, !nosanitize !45

964:                                              ; preds = %951
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

965:                                              ; preds = %951
  %966 = extractvalue { i64, i1 } %962, 0, !nosanitize !45
  store i64 %966, ptr %960, align 8, !tbaa !108
  %967 = load i32, ptr %945, align 8, !tbaa !107
  %968 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %967, i32 %949), !nosanitize !45
  %969 = extractvalue { i32, i1 } %968, 1, !nosanitize !45
  br i1 %969, label %970, label %971, !prof !46, !nosanitize !45

970:                                              ; preds = %965
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

971:                                              ; preds = %965
  %972 = extractvalue { i32, i1 } %968, 0, !nosanitize !45
  store i32 %972, ptr %945, align 8, !tbaa !107
  %973 = load i64, ptr %943, align 8, !tbaa !57
  %974 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %973, i64 %948), !nosanitize !45
  %975 = extractvalue { i64, i1 } %974, 1, !nosanitize !45
  br i1 %975, label %976, label %977, !prof !46, !nosanitize !45

976:                                              ; preds = %971
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

977:                                              ; preds = %971
  %978 = extractvalue { i64, i1 } %974, 0, !nosanitize !45
  store i64 %978, ptr %943, align 8, !tbaa !57
  %979 = icmp eq i64 %978, 0
  br i1 %979, label %980, label %983

980:                                              ; preds = %977
  %981 = getelementptr inbounds nuw i8, ptr %942, i64 16
  %982 = load ptr, ptr %981, align 8, !tbaa !40
  store ptr %982, ptr %954, align 8, !tbaa !58
  br label %983

983:                                              ; preds = %980, %977, %936
  %984 = load ptr, ptr %0, align 8, !tbaa !20
  %985 = getelementptr inbounds nuw i8, ptr %984, i64 32
  %986 = load i32, ptr %985, align 8, !tbaa !107
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %.loopexit40, label %988

988:                                              ; preds = %983, %921
  br label %.loopexit40

.loopexit40:                                      ; preds = %847, %353, %988, %983, %915
  %989 = phi i32 [ 1, %988 ], [ %920, %915 ], [ 0, %983 ], [ 0, %353 ], [ 0, %847 ]
  ret i32 %989
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
  br i1 %38, label %39, label %367

39:                                               ; preds = %36
  %40 = load i32, ptr %4, align 8, !tbaa !32
  %41 = zext i32 %40 to i64
  br label %42

42:                                               ; preds = %311, %39
  %43 = phi i32 [ %239, %311 ], [ %37, %39 ]
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
  br i1 %108, label %.preheader192, label %109

.preheader192:                                    ; preds = %124, %107
  %.ph193 = phi ptr [ %126, %124 ], [ %105, %107 ]
  %.ph194 = phi i32 [ %128, %124 ], [ %102, %107 ]
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
  br i1 %129, label %.loopexit44, label %.preheader192

130:                                              ; preds = %100
  %131 = getelementptr inbounds i8, ptr %105, i64 -2
  %132 = load i16, ptr %131, align 2, !tbaa !62
  %133 = zext i16 %132 to i32
  %134 = tail call i32 @llvm.usub.sat.i32(i32 %133, i32 %101)
  %135 = trunc nuw i32 %134 to i16
  store i16 %135, ptr %131, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

136:                                              ; preds = %.preheader192, %136
  %137 = phi ptr [ %139, %136 ], [ %.ph193, %.preheader192 ]
  %138 = phi i32 [ %144, %136 ], [ %.ph194, %.preheader192 ]
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
  %.ph191 = phi i32 [ %172, %168 ], [ %101, %148 ]
  br label %174

174:                                              ; preds = %.preheader, %174
  %175 = phi ptr [ %177, %174 ], [ %.ph, %.preheader ]
  %176 = phi i32 [ %182, %174 ], [ %.ph191, %.preheader ]
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
  br i1 %197, label %316, label %198

198:                                              ; preds = %190
  %199 = load ptr, ptr %7, align 8, !tbaa !34
  %200 = zext i32 %192 to i64
  %201 = getelementptr inbounds nuw i8, ptr %199, i64 %200
  %202 = zext i32 %191 to i64
  %203 = getelementptr inbounds nuw i8, ptr %201, i64 %202
  %204 = tail call i32 @llvm.umin.i32(i32 %196, i32 %193)
  %205 = icmp eq i32 %193, 0
  br i1 %205, label %233, label %206

206:                                              ; preds = %198
  %207 = sub i32 %196, %204
  store i32 %207, ptr %195, align 8, !tbaa !81
  %208 = load ptr, ptr %194, align 8, !tbaa !82
  %209 = zext i32 %204 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %203, ptr align 1 %208, i64 %209, i1 false)
  %210 = getelementptr inbounds nuw i8, ptr %194, i64 56
  %211 = load ptr, ptr %210, align 8, !tbaa !19
  %212 = getelementptr inbounds nuw i8, ptr %211, i64 48
  %213 = load i32, ptr %212, align 8, !tbaa !30
  switch i32 %213, label %222 [
    i32 1, label %214
    i32 2, label %218
  ]

214:                                              ; preds = %206
  %215 = getelementptr inbounds nuw i8, ptr %194, i64 96
  %216 = load i64, ptr %215, align 8, !tbaa !59
  %217 = tail call i64 @adler32(i64 noundef %216, ptr noundef %203, i32 noundef %204) #11
  store i64 %217, ptr %215, align 8, !tbaa !59
  br label %222

218:                                              ; preds = %206
  %219 = getelementptr inbounds nuw i8, ptr %194, i64 96
  %220 = load i64, ptr %219, align 8, !tbaa !59
  %221 = tail call i64 @crc32(i64 noundef %220, ptr noundef %203, i32 noundef %204) #11
  store i64 %221, ptr %219, align 8, !tbaa !59
  br label %222

222:                                              ; preds = %218, %214, %206
  %223 = load ptr, ptr %194, align 8, !tbaa !82
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 %209
  store ptr %224, ptr %194, align 8, !tbaa !82
  %225 = getelementptr inbounds nuw i8, ptr %194, i64 16
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

233:                                              ; preds = %230, %198
  %234 = phi i32 [ %191, %198 ], [ %232, %230 ]
  %235 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 %204), !nosanitize !45
  %236 = extractvalue { i32, i1 } %235, 1, !nosanitize !45
  br i1 %236, label %237, label %238, !prof !46, !nosanitize !45

237:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

238:                                              ; preds = %233
  %239 = extractvalue { i32, i1 } %235, 0, !nosanitize !45
  store i32 %239, ptr %3, align 4, !tbaa !75
  %240 = load i32, ptr %10, align 4, !tbaa !76
  %241 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %239, i32 %240), !nosanitize !45
  %242 = extractvalue { i32, i1 } %241, 1, !nosanitize !45
  br i1 %242, label %243, label %244, !prof !46, !nosanitize !45

243:                                              ; preds = %238
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

244:                                              ; preds = %238
  %245 = extractvalue { i32, i1 } %241, 0, !nosanitize !45
  %246 = icmp ugt i32 %245, 2
  br i1 %246, label %247, label %.loopexit

247:                                              ; preds = %244
  %248 = load i32, ptr %6, align 4, !tbaa !73
  %249 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %248, i32 %240), !nosanitize !45
  %250 = extractvalue { i32, i1 } %249, 0, !nosanitize !45
  %251 = extractvalue { i32, i1 } %249, 1, !nosanitize !45
  br i1 %251, label %252, label %253, !prof !46, !nosanitize !45

252:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

253:                                              ; preds = %247
  %254 = load ptr, ptr %7, align 8, !tbaa !34
  %255 = zext i32 %250 to i64
  %256 = getelementptr inbounds nuw i8, ptr %254, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !8
  %258 = zext i8 %257 to i32
  store i32 %258, ptr %15, align 8, !tbaa !80
  %259 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %250, i32 1), !nosanitize !45
  %260 = extractvalue { i32, i1 } %259, 1, !nosanitize !45
  br i1 %260, label %261, label %262, !prof !46, !nosanitize !45

261:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

262:                                              ; preds = %253
  %263 = extractvalue { i32, i1 } %259, 0, !nosanitize !45
  %264 = load i32, ptr %16, align 8, !tbaa !53
  %265 = shl i32 %258, %264
  %266 = zext i32 %263 to i64
  %267 = getelementptr inbounds nuw i8, ptr %254, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !8
  %269 = zext i8 %268 to i32
  %270 = xor i32 %265, %269
  %271 = load i32, ptr %17, align 4, !tbaa !52
  %272 = and i32 %270, %271
  store i32 %272, ptr %15, align 8, !tbaa !80
  br label %273

273:                                              ; preds = %306, %262
  %274 = phi i32 [ %272, %262 ], [ %291, %306 ]
  %275 = phi i32 [ %240, %262 ], [ %302, %306 ]
  %276 = phi i32 [ %250, %262 ], [ %307, %306 ]
  %277 = icmp eq i32 %275, 0
  br i1 %277, label %.loopexit, label %278

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
  store i32 %291, ptr %15, align 8, !tbaa !80
  %292 = load ptr, ptr %12, align 8, !tbaa !37
  %293 = zext i32 %291 to i64
  %294 = getelementptr inbounds nuw [2 x i8], ptr %292, i64 %293
  %295 = load i16, ptr %294, align 2, !tbaa !62
  %296 = load ptr, ptr %13, align 8, !tbaa !35
  %297 = load i32, ptr %18, align 8, !tbaa !33
  %298 = and i32 %297, %276
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds nuw [2 x i8], ptr %296, i64 %299
  store i16 %295, ptr %300, align 2, !tbaa !62
  %301 = trunc i32 %276 to i16
  store i16 %301, ptr %294, align 2, !tbaa !62
  %302 = add i32 %275, -1
  store i32 %302, ptr %10, align 4, !tbaa !76
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
  br i1 %309, label %.loopexit, label %273, !llvm.loop !91

.loopexit:                                        ; preds = %306, %273, %244
  %310 = icmp ult i32 %239, 262
  br i1 %310, label %311, label %316

311:                                              ; preds = %.loopexit
  %312 = load ptr, ptr %0, align 8, !tbaa !20
  %313 = getelementptr inbounds nuw i8, ptr %312, i64 8
  %314 = load i32, ptr %313, align 8, !tbaa !81
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %42, !llvm.loop !92

316:                                              ; preds = %311, %.loopexit, %190
  %317 = phi i32 [ %239, %311 ], [ %239, %.loopexit ], [ %191, %190 ]
  %318 = load i64, ptr %19, align 8, !tbaa !38
  %319 = load i64, ptr %5, align 8, !tbaa !61
  %320 = icmp ult i64 %318, %319
  br i1 %320, label %321, label %356

321:                                              ; preds = %316
  %322 = load i32, ptr %6, align 4, !tbaa !73
  %323 = zext i32 %322 to i64
  %324 = zext i32 %317 to i64
  %325 = add nuw nsw i64 %323, %324
  %326 = icmp ult i64 %318, %325
  br i1 %326, label %327, label %337

327:                                              ; preds = %321
  %328 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %319, i64 %325), !nosanitize !45
  %329 = extractvalue { i64, i1 } %328, 1, !nosanitize !45
  br i1 %329, label %330, label %331, !prof !46, !nosanitize !45

330:                                              ; preds = %327
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

331:                                              ; preds = %327
  %332 = extractvalue { i64, i1 } %328, 0, !nosanitize !45
  %333 = tail call i64 @llvm.umin.i64(i64 %332, i64 258)
  %334 = load ptr, ptr %7, align 8, !tbaa !34
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 %325
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %335, i8 0, i64 %333, i1 false)
  %336 = add nuw nsw i64 %333, %325
  br label %353

337:                                              ; preds = %321
  %338 = add nuw nsw i64 %325, 258
  %339 = icmp ult i64 %318, %338
  br i1 %339, label %340, label %356

340:                                              ; preds = %337
  %341 = sub nuw nsw i64 %338, %318
  %342 = sub i64 %319, %318
  %343 = tail call i64 @llvm.umin.i64(i64 %341, i64 %342)
  %344 = load ptr, ptr %7, align 8, !tbaa !34
  %345 = getelementptr inbounds nuw i8, ptr %344, i64 %318
  %346 = and i64 %343, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %345, i8 0, i64 %346, i1 false)
  %347 = load i64, ptr %19, align 8, !tbaa !38
  %348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %347, i64 %343), !nosanitize !45
  %349 = extractvalue { i64, i1 } %348, 1, !nosanitize !45
  br i1 %349, label %350, label %351, !prof !46, !nosanitize !45

350:                                              ; preds = %340
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

351:                                              ; preds = %340
  %352 = extractvalue { i64, i1 } %348, 0, !nosanitize !45
  br label %353

353:                                              ; preds = %351, %331
  %354 = phi i64 [ %336, %331 ], [ %352, %351 ]
  store i64 %354, ptr %19, align 8, !tbaa !38
  %355 = load i32, ptr %3, align 4, !tbaa !75
  br label %356

356:                                              ; preds = %353, %337, %316
  %357 = phi i32 [ %317, %316 ], [ %317, %337 ], [ %355, %353 ]
  %358 = icmp ult i32 %357, 262
  %359 = and i1 %20, %358
  br i1 %359, label %.loopexit47, label %360

360:                                              ; preds = %356
  %361 = icmp eq i32 %357, 0
  br i1 %361, label %943, label %362

362:                                              ; preds = %360
  %363 = icmp ugt i32 %357, 2
  br i1 %363, label %367, label %364

364:                                              ; preds = %362
  %365 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %365, ptr %22, align 8, !tbaa !77
  %366 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %366, ptr %23, align 4, !tbaa !159
  br label %587

367:                                              ; preds = %362, %36
  %368 = phi i32 [ %357, %362 ], [ %37, %36 ]
  %369 = load i32, ptr %6, align 4, !tbaa !73
  %370 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %369, i32 2), !nosanitize !45
  %371 = extractvalue { i32, i1 } %370, 1, !nosanitize !45
  br i1 %371, label %372, label %373, !prof !46, !nosanitize !45

372:                                              ; preds = %367
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

373:                                              ; preds = %367
  %374 = extractvalue { i32, i1 } %370, 0, !nosanitize !45
  %375 = load ptr, ptr %7, align 8, !tbaa !34
  %376 = load i32, ptr %15, align 8, !tbaa !80
  %377 = load i32, ptr %16, align 8, !tbaa !53
  %378 = shl i32 %376, %377
  %379 = zext i32 %374 to i64
  %380 = getelementptr inbounds nuw i8, ptr %375, i64 %379
  %381 = load i8, ptr %380, align 1, !tbaa !8
  %382 = zext i8 %381 to i32
  %383 = xor i32 %378, %382
  %384 = load i32, ptr %17, align 4, !tbaa !52
  %385 = and i32 %383, %384
  store i32 %385, ptr %15, align 8, !tbaa !80
  %386 = load ptr, ptr %12, align 8, !tbaa !37
  %387 = zext i32 %385 to i64
  %388 = getelementptr inbounds nuw [2 x i8], ptr %386, i64 %387
  %389 = load i16, ptr %388, align 2, !tbaa !62
  %390 = load ptr, ptr %13, align 8, !tbaa !35
  %391 = load i32, ptr %18, align 8, !tbaa !33
  %392 = and i32 %391, %369
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds nuw [2 x i8], ptr %390, i64 %393
  store i16 %389, ptr %394, align 2, !tbaa !62
  %395 = zext i16 %389 to i32
  %396 = trunc i32 %369 to i16
  store i16 %396, ptr %388, align 2, !tbaa !62
  %397 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %397, ptr %22, align 8, !tbaa !77
  %398 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %398, ptr %23, align 4, !tbaa !159
  store i32 2, ptr %21, align 8, !tbaa !78
  %399 = icmp eq i16 %389, 0
  br i1 %399, label %591, label %400

400:                                              ; preds = %373
  %401 = load i32, ptr %24, align 8, !tbaa !66
  %402 = icmp ult i32 %397, %401
  br i1 %402, label %403, label %591

403:                                              ; preds = %400
  %404 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %369, i32 %395), !nosanitize !45
  %405 = extractvalue { i32, i1 } %404, 0, !nosanitize !45
  %406 = extractvalue { i32, i1 } %404, 1, !nosanitize !45
  br i1 %406, label %407, label %408, !prof !46, !nosanitize !45

407:                                              ; preds = %403
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

408:                                              ; preds = %403
  %409 = load i32, ptr %4, align 8, !tbaa !32
  %410 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %409, i32 262), !nosanitize !45
  %411 = extractvalue { i32, i1 } %410, 1, !nosanitize !45
  br i1 %411, label %412, label %413, !prof !46, !nosanitize !45

412:                                              ; preds = %408
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

413:                                              ; preds = %408
  %414 = extractvalue { i32, i1 } %410, 0, !nosanitize !45
  %415 = icmp ugt i32 %405, %414
  br i1 %415, label %591, label %416

416:                                              ; preds = %413
  %417 = zext i32 %369 to i64
  %418 = getelementptr inbounds nuw i8, ptr %375, i64 %417
  %419 = tail call i32 @llvm.usub.sat.i32(i32 %369, i32 %414)
  %420 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %397, i32 -1)
  %421 = extractvalue { i32, i1 } %420, 1, !nosanitize !45
  br i1 %421, label %.loopexit46, label %422, !prof !46, !nosanitize !45

.loopexit46:                                      ; preds = %416, %.split.loop.exit, %453
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

422:                                              ; preds = %416
  %423 = load i32, ptr %25, align 8, !tbaa !70
  %424 = load i32, ptr %26, align 4, !tbaa !72
  %425 = getelementptr inbounds nuw i8, ptr %418, i64 258
  %426 = extractvalue { i32, i1 } %420, 0, !nosanitize !45
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8, ptr %418, i64 %427
  %429 = load i8, ptr %428, align 1, !tbaa !8
  %430 = sext i32 %397 to i64
  %431 = getelementptr inbounds i8, ptr %418, i64 %430
  %432 = load i8, ptr %431, align 1, !tbaa !8
  %433 = load i32, ptr %27, align 4, !tbaa !68
  %434 = icmp ult i32 %397, %433
  %435 = lshr i32 %424, 2
  %436 = select i1 %434, i32 %424, i32 %435
  %437 = tail call i32 @llvm.umin.i32(i32 %423, i32 %368)
  %438 = getelementptr inbounds nuw i8, ptr %418, i64 1
  %439 = ptrtoint ptr %425 to i64
  br label %440

440:                                              ; preds = %567, %422
  %441 = phi i32 [ %398, %422 ], [ %553, %567 ]
  %442 = phi i32 [ %397, %422 ], [ %554, %567 ]
  %443 = phi i32 [ %436, %422 ], [ %568, %567 ]
  %444 = phi i32 [ %395, %422 ], [ %561, %567 ]
  %445 = phi i8 [ %429, %422 ], [ %555, %567 ]
  %446 = phi i8 [ %432, %422 ], [ %556, %567 ]
  %447 = zext nneg i32 %444 to i64
  %448 = getelementptr inbounds nuw i8, ptr %375, i64 %447
  %449 = sext i32 %442 to i64
  %450 = getelementptr inbounds i8, ptr %448, i64 %449
  %451 = load i8, ptr %450, align 1, !tbaa !8
  %452 = icmp eq i8 %451, %446
  br i1 %452, label %453, label %552

453:                                              ; preds = %440
  %454 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %442, i32 -1)
  %455 = extractvalue { i32, i1 } %454, 1, !nosanitize !45
  br i1 %455, label %.loopexit46, label %456, !prof !46, !nosanitize !45

456:                                              ; preds = %453
  %457 = extractvalue { i32, i1 } %454, 0, !nosanitize !45
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i8, ptr %448, i64 %458
  %460 = load i8, ptr %459, align 1, !tbaa !8
  %461 = icmp eq i8 %460, %445
  br i1 %461, label %462, label %552

462:                                              ; preds = %456
  %463 = load i8, ptr %448, align 1, !tbaa !8
  %464 = load i8, ptr %418, align 1, !tbaa !8
  %465 = icmp eq i8 %463, %464
  br i1 %465, label %466, label %552

466:                                              ; preds = %462
  %467 = getelementptr inbounds nuw i8, ptr %448, i64 1
  %468 = load i8, ptr %467, align 1, !tbaa !8
  %469 = load i8, ptr %438, align 1, !tbaa !8
  %470 = icmp eq i8 %468, %469
  br i1 %470, label %471, label %552

471:                                              ; preds = %466
  %472 = getelementptr inbounds nuw i8, ptr %448, i64 2
  br label %473

473:                                              ; preds = %518, %471
  %474 = phi ptr [ %472, %471 ], [ %522, %518 ]
  %475 = phi i64 [ 2, %471 ], [ %519, %518 ]
  %476 = getelementptr inbounds nuw i8, ptr %418, i64 %475
  %477 = getelementptr inbounds nuw i8, ptr %476, i64 1
  %478 = load i8, ptr %477, align 1, !tbaa !8
  %479 = getelementptr inbounds nuw i8, ptr %474, i64 1
  %480 = load i8, ptr %479, align 1, !tbaa !8
  %481 = icmp eq i8 %478, %480
  br i1 %481, label %482, label %.split.loop.exit.split.loop.exit

482:                                              ; preds = %473
  %483 = getelementptr inbounds nuw i8, ptr %476, i64 2
  %484 = load i8, ptr %483, align 1, !tbaa !8
  %485 = getelementptr inbounds nuw i8, ptr %474, i64 2
  %486 = load i8, ptr %485, align 1, !tbaa !8
  %487 = icmp eq i8 %484, %486
  br i1 %487, label %488, label %.split.loop.exit.split.loop.exit151

488:                                              ; preds = %482
  %489 = getelementptr inbounds nuw i8, ptr %476, i64 3
  %490 = load i8, ptr %489, align 1, !tbaa !8
  %491 = getelementptr inbounds nuw i8, ptr %474, i64 3
  %492 = load i8, ptr %491, align 1, !tbaa !8
  %493 = icmp eq i8 %490, %492
  br i1 %493, label %494, label %.split.loop.exit.split.loop.exit153

494:                                              ; preds = %488
  %495 = getelementptr inbounds nuw i8, ptr %476, i64 4
  %496 = load i8, ptr %495, align 1, !tbaa !8
  %497 = getelementptr inbounds nuw i8, ptr %474, i64 4
  %498 = load i8, ptr %497, align 1, !tbaa !8
  %499 = icmp eq i8 %496, %498
  br i1 %499, label %500, label %.split.loop.exit.split.loop.exit155

500:                                              ; preds = %494
  %501 = getelementptr inbounds nuw i8, ptr %476, i64 5
  %502 = load i8, ptr %501, align 1, !tbaa !8
  %503 = getelementptr inbounds nuw i8, ptr %474, i64 5
  %504 = load i8, ptr %503, align 1, !tbaa !8
  %505 = icmp eq i8 %502, %504
  br i1 %505, label %506, label %.split.loop.exit.split.loop.exit157

506:                                              ; preds = %500
  %507 = getelementptr inbounds nuw i8, ptr %476, i64 6
  %508 = load i8, ptr %507, align 1, !tbaa !8
  %509 = getelementptr inbounds nuw i8, ptr %474, i64 6
  %510 = load i8, ptr %509, align 1, !tbaa !8
  %511 = icmp eq i8 %508, %510
  br i1 %511, label %512, label %.split.loop.exit.split.loop.exit159

512:                                              ; preds = %506
  %513 = getelementptr inbounds nuw i8, ptr %476, i64 7
  %514 = load i8, ptr %513, align 1, !tbaa !8
  %515 = getelementptr inbounds nuw i8, ptr %474, i64 7
  %516 = load i8, ptr %515, align 1, !tbaa !8
  %517 = icmp eq i8 %514, %516
  br i1 %517, label %518, label %.split.loop.exit.split.loop.exit161

518:                                              ; preds = %512
  %519 = add nuw nsw i64 %475, 8
  %520 = getelementptr inbounds nuw i8, ptr %418, i64 %519
  %521 = load i8, ptr %520, align 1, !tbaa !8
  %522 = getelementptr inbounds nuw i8, ptr %474, i64 8
  %523 = load i8, ptr %522, align 1, !tbaa !8
  %524 = icmp eq i8 %521, %523
  %525 = icmp samesign ult i64 %475, 250
  %526 = select i1 %524, i1 %525, i1 false
  br i1 %526, label %473, label %.split.loop.exit.split.loop.exit163, !llvm.loop !152

.split.loop.exit.split.loop.exit:                 ; preds = %473
  %527 = getelementptr inbounds nuw i8, ptr %476, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit151:              ; preds = %482
  %528 = getelementptr inbounds nuw i8, ptr %476, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit153:              ; preds = %488
  %529 = getelementptr inbounds nuw i8, ptr %476, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit155:              ; preds = %494
  %530 = getelementptr inbounds nuw i8, ptr %476, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit157:              ; preds = %500
  %531 = getelementptr inbounds nuw i8, ptr %476, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit159:              ; preds = %506
  %532 = getelementptr inbounds nuw i8, ptr %476, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit161:              ; preds = %512
  %533 = getelementptr inbounds nuw i8, ptr %476, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit163:              ; preds = %518
  %534 = getelementptr inbounds nuw i8, ptr %418, i64 %519
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit163, %.split.loop.exit.split.loop.exit161, %.split.loop.exit.split.loop.exit159, %.split.loop.exit.split.loop.exit157, %.split.loop.exit.split.loop.exit155, %.split.loop.exit.split.loop.exit153, %.split.loop.exit.split.loop.exit151, %.split.loop.exit.split.loop.exit
  %535 = phi ptr [ %528, %.split.loop.exit.split.loop.exit151 ], [ %529, %.split.loop.exit.split.loop.exit153 ], [ %527, %.split.loop.exit.split.loop.exit ], [ %533, %.split.loop.exit.split.loop.exit161 ], [ %532, %.split.loop.exit.split.loop.exit159 ], [ %531, %.split.loop.exit.split.loop.exit157 ], [ %530, %.split.loop.exit.split.loop.exit155 ], [ %534, %.split.loop.exit.split.loop.exit163 ]
  %536 = ptrtoint ptr %535 to i64
  %537 = sub i64 %439, %536
  %538 = trunc i64 %537 to i32
  %539 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %538), !nosanitize !45
  %540 = extractvalue { i32, i1 } %539, 0, !nosanitize !45
  %541 = extractvalue { i32, i1 } %539, 1, !nosanitize !45
  br i1 %541, label %.loopexit46, label %542, !prof !46, !nosanitize !45

542:                                              ; preds = %.split.loop.exit
  %543 = icmp sgt i32 %540, %442
  br i1 %543, label %544, label %552

544:                                              ; preds = %542
  store i32 %444, ptr %8, align 8, !tbaa !83
  %545 = icmp slt i32 %540, %437
  br i1 %545, label %546, label %570

546:                                              ; preds = %544
  %547 = sext i32 %540 to i64
  %548 = getelementptr i8, ptr %418, i64 %547
  %549 = getelementptr i8, ptr %548, i64 -1
  %550 = load i8, ptr %549, align 1, !tbaa !8
  %551 = load i8, ptr %548, align 1, !tbaa !8
  br label %552

552:                                              ; preds = %546, %542, %466, %462, %456, %440
  %553 = phi i32 [ %441, %440 ], [ %441, %456 ], [ %441, %462 ], [ %441, %466 ], [ %444, %546 ], [ %441, %542 ]
  %554 = phi i32 [ %442, %440 ], [ %442, %456 ], [ %442, %462 ], [ %442, %466 ], [ %540, %546 ], [ %442, %542 ]
  %555 = phi i8 [ %445, %440 ], [ %445, %456 ], [ %445, %462 ], [ %445, %466 ], [ %550, %546 ], [ %445, %542 ]
  %556 = phi i8 [ %446, %440 ], [ %446, %456 ], [ %446, %462 ], [ %446, %466 ], [ %551, %546 ], [ %446, %542 ]
  %557 = and i32 %444, %391
  %558 = zext nneg i32 %557 to i64
  %559 = getelementptr inbounds nuw [2 x i8], ptr %390, i64 %558
  %560 = load i16, ptr %559, align 2, !tbaa !62
  %561 = zext i16 %560 to i32
  %562 = icmp ult i32 %419, %561
  br i1 %562, label %563, label %570

563:                                              ; preds = %552
  %564 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %443, i32 1), !nosanitize !45
  %565 = extractvalue { i32, i1 } %564, 1, !nosanitize !45
  br i1 %565, label %566, label %567, !prof !46, !nosanitize !45

566:                                              ; preds = %563
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

567:                                              ; preds = %563
  %568 = extractvalue { i32, i1 } %564, 0, !nosanitize !45
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %440, !llvm.loop !153

570:                                              ; preds = %567, %552, %544
  %571 = phi i32 [ %553, %567 ], [ %553, %552 ], [ %444, %544 ]
  %572 = phi i32 [ %554, %567 ], [ %554, %552 ], [ %540, %544 ]
  %573 = tail call i32 @llvm.umin.i32(i32 %572, i32 %368)
  store i32 %573, ptr %21, align 8, !tbaa !78
  %574 = icmp ult i32 %573, 6
  br i1 %574, label %575, label %591

575:                                              ; preds = %570
  %576 = load i32, ptr %28, align 8, !tbaa !49
  %577 = icmp eq i32 %576, 1
  br i1 %577, label %587, label %578

578:                                              ; preds = %575
  %579 = icmp eq i32 %573, 3
  br i1 %579, label %580, label %591

580:                                              ; preds = %578
  %581 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %369, i32 %571), !nosanitize !45
  %582 = extractvalue { i32, i1 } %581, 1, !nosanitize !45
  br i1 %582, label %583, label %584, !prof !46, !nosanitize !45

583:                                              ; preds = %580
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

584:                                              ; preds = %580
  %585 = extractvalue { i32, i1 } %581, 0, !nosanitize !45
  %586 = icmp ugt i32 %585, 4096
  br i1 %586, label %587, label %591

587:                                              ; preds = %584, %575, %364
  %588 = phi i32 [ %366, %364 ], [ %398, %584 ], [ %398, %575 ]
  %589 = phi i32 [ %365, %364 ], [ %397, %584 ], [ %397, %575 ]
  %590 = phi i32 [ %357, %364 ], [ %368, %584 ], [ %368, %575 ]
  store i32 2, ptr %21, align 8, !tbaa !78
  br label %591

591:                                              ; preds = %587, %584, %578, %570, %413, %400, %373
  %592 = phi i32 [ 2, %400 ], [ %573, %570 ], [ %573, %578 ], [ 3, %584 ], [ 2, %373 ], [ 2, %413 ], [ 2, %587 ]
  %593 = phi i32 [ %398, %400 ], [ %398, %570 ], [ %398, %578 ], [ %398, %584 ], [ %398, %373 ], [ %398, %413 ], [ %588, %587 ]
  %594 = phi i32 [ %397, %400 ], [ %397, %570 ], [ %397, %578 ], [ %397, %584 ], [ %397, %373 ], [ %397, %413 ], [ %589, %587 ]
  %595 = phi i32 [ %368, %400 ], [ %368, %570 ], [ %368, %578 ], [ %368, %584 ], [ %368, %373 ], [ %368, %413 ], [ %590, %587 ]
  %596 = icmp ult i32 %594, 3
  %597 = icmp ugt i32 %592, %594
  %598 = or i1 %596, %597
  br i1 %598, label %806, label %599

599:                                              ; preds = %591
  %600 = load i32, ptr %6, align 4, !tbaa !73
  %601 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %600, i32 %595), !nosanitize !45
  %602 = extractvalue { i32, i1 } %601, 1, !nosanitize !45
  br i1 %602, label %603, label %604, !prof !46, !nosanitize !45

603:                                              ; preds = %599
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

604:                                              ; preds = %599
  %605 = extractvalue { i32, i1 } %601, 0, !nosanitize !45
  %606 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %605, i32 3), !nosanitize !45
  %607 = extractvalue { i32, i1 } %606, 0, !nosanitize !45
  %608 = extractvalue { i32, i1 } %606, 1, !nosanitize !45
  br i1 %608, label %609, label %610, !prof !46, !nosanitize !45

609:                                              ; preds = %604
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

610:                                              ; preds = %604
  %611 = trunc i32 %594 to i8
  %612 = add i8 %611, -3
  %613 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %600, i32 1), !nosanitize !45
  %614 = extractvalue { i32, i1 } %613, 1, !nosanitize !45
  br i1 %614, label %615, label %616, !prof !46, !nosanitize !45

615:                                              ; preds = %610
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

616:                                              ; preds = %610
  %617 = extractvalue { i32, i1 } %613, 0, !nosanitize !45
  %618 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %617, i32 %593), !nosanitize !45
  %619 = extractvalue { i32, i1 } %618, 1, !nosanitize !45
  br i1 %619, label %620, label %621, !prof !46, !nosanitize !45

620:                                              ; preds = %616
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

621:                                              ; preds = %616
  %622 = extractvalue { i32, i1 } %618, 0, !nosanitize !45
  %623 = trunc i32 %622 to i16
  %624 = load i32, ptr %30, align 4, !tbaa !139
  %625 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %624, i32 1), !nosanitize !45
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !45
  br i1 %626, label %627, label %628, !prof !46, !nosanitize !45

627:                                              ; preds = %621
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

628:                                              ; preds = %621
  %629 = extractvalue { i32, i1 } %625, 0, !nosanitize !45
  %630 = load ptr, ptr %29, align 8, !tbaa !44
  %631 = trunc i32 %622 to i8
  store i32 %629, ptr %30, align 4, !tbaa !139
  %632 = zext i32 %624 to i64
  %633 = getelementptr inbounds nuw i8, ptr %630, i64 %632
  store i8 %631, ptr %633, align 1, !tbaa !8
  %634 = load i32, ptr %30, align 4, !tbaa !139
  %635 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %634, i32 1), !nosanitize !45
  %636 = extractvalue { i32, i1 } %635, 1, !nosanitize !45
  br i1 %636, label %637, label %638, !prof !46, !nosanitize !45

637:                                              ; preds = %628
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

638:                                              ; preds = %628
  %639 = extractvalue { i32, i1 } %635, 0, !nosanitize !45
  %640 = load ptr, ptr %29, align 8, !tbaa !44
  %641 = lshr i32 %622, 8
  %642 = trunc i32 %641 to i8
  store i32 %639, ptr %30, align 4, !tbaa !139
  %643 = zext i32 %634 to i64
  %644 = getelementptr inbounds nuw i8, ptr %640, i64 %643
  store i8 %642, ptr %644, align 1, !tbaa !8
  %645 = load i32, ptr %30, align 4, !tbaa !139
  %646 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %645, i32 1), !nosanitize !45
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !45
  br i1 %647, label %648, label %649, !prof !46, !nosanitize !45

648:                                              ; preds = %638
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

649:                                              ; preds = %638
  %650 = extractvalue { i32, i1 } %646, 0, !nosanitize !45
  %651 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %650, ptr %30, align 4, !tbaa !139
  %652 = zext i32 %645 to i64
  %653 = getelementptr inbounds nuw i8, ptr %651, i64 %652
  store i8 %612, ptr %653, align 1, !tbaa !8
  %654 = add i16 %623, -1
  %655 = zext i8 %612 to i64
  %656 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %655
  %657 = load i8, ptr %656, align 1, !tbaa !8
  %658 = zext i8 %657 to i64
  %659 = getelementptr [4 x i8], ptr %31, i64 %658
  %660 = load i16, ptr %659, align 4, !tbaa !8
  %661 = add i16 %660, 1
  store i16 %661, ptr %659, align 4, !tbaa !8
  %662 = icmp ult i16 %654, 256
  br i1 %662, label %663, label %666

663:                                              ; preds = %649
  %664 = zext nneg i16 %654 to i64
  %665 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %664
  br label %671

666:                                              ; preds = %649
  %667 = lshr i16 %654, 7
  %668 = zext nneg i16 %667 to i64
  %669 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %668
  %670 = getelementptr inbounds nuw i8, ptr %669, i64 256
  br label %671

671:                                              ; preds = %666, %663
  %672 = phi ptr [ %665, %663 ], [ %670, %666 ]
  %673 = load i8, ptr %672, align 1, !tbaa !8
  %674 = zext i8 %673 to i64
  %675 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %674
  %676 = load i16, ptr %675, align 4, !tbaa !8
  %677 = add i16 %676, 1
  store i16 %677, ptr %675, align 4, !tbaa !8
  %678 = load i32, ptr %30, align 4, !tbaa !139
  %679 = load i32, ptr %33, align 8, !tbaa !47
  %680 = icmp eq i32 %678, %679
  %681 = load i32, ptr %22, align 8, !tbaa !77
  %682 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %681, i32 1), !nosanitize !45
  %683 = extractvalue { i32, i1 } %682, 1, !nosanitize !45
  br i1 %683, label %684, label %685, !prof !46, !nosanitize !45

684:                                              ; preds = %671
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

685:                                              ; preds = %671
  %686 = extractvalue { i32, i1 } %682, 0, !nosanitize !45
  %687 = load i32, ptr %3, align 4, !tbaa !75
  %688 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %687, i32 %686), !nosanitize !45
  %689 = extractvalue { i32, i1 } %688, 1, !nosanitize !45
  br i1 %689, label %690, label %691, !prof !46, !nosanitize !45

690:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

691:                                              ; preds = %685
  %692 = extractvalue { i32, i1 } %688, 0, !nosanitize !45
  store i32 %692, ptr %3, align 4, !tbaa !75
  %693 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %681, i32 2), !nosanitize !45
  %694 = extractvalue { i32, i1 } %693, 1, !nosanitize !45
  br i1 %694, label %695, label %696, !prof !46, !nosanitize !45

695:                                              ; preds = %691
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

696:                                              ; preds = %691
  %697 = extractvalue { i32, i1 } %693, 0, !nosanitize !45
  store i32 %697, ptr %22, align 8, !tbaa !77
  %698 = load i32, ptr %6, align 4, !tbaa !73
  %699 = xor i32 %698, -1
  %700 = add i32 %681, -3
  %umin = tail call i32 @llvm.umin.i32(i32 %697, i32 %700)
  %701 = freeze i32 %umin
  %.not = icmp ult i32 %701, %699
  br i1 %.not, label %.split, label %706, !prof !93, !nosanitize !45

.split:                                           ; preds = %696, %733
  %702 = phi i32 [ %734, %733 ], [ %697, %696 ]
  %703 = phi i32 [ %704, %733 ], [ %698, %696 ]
  %704 = add i32 %703, 1
  store i32 %704, ptr %6, align 4, !tbaa !73
  %705 = icmp ugt i32 %704, %607
  br i1 %705, label %730, label %707

706:                                              ; preds = %696
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

707:                                              ; preds = %.split
  %708 = add i32 %703, 3
  %709 = load ptr, ptr %7, align 8, !tbaa !34
  %710 = load i32, ptr %15, align 8, !tbaa !80
  %711 = load i32, ptr %16, align 8, !tbaa !53
  %712 = shl i32 %710, %711
  %713 = zext i32 %708 to i64
  %714 = getelementptr inbounds nuw i8, ptr %709, i64 %713
  %715 = load i8, ptr %714, align 1, !tbaa !8
  %716 = zext i8 %715 to i32
  %717 = xor i32 %712, %716
  %718 = load i32, ptr %17, align 4, !tbaa !52
  %719 = and i32 %717, %718
  store i32 %719, ptr %15, align 8, !tbaa !80
  %720 = load ptr, ptr %12, align 8, !tbaa !37
  %721 = zext i32 %719 to i64
  %722 = getelementptr inbounds nuw [2 x i8], ptr %720, i64 %721
  %723 = load i16, ptr %722, align 2, !tbaa !62
  %724 = load ptr, ptr %13, align 8, !tbaa !35
  %725 = load i32, ptr %18, align 8, !tbaa !33
  %726 = and i32 %725, %704
  %727 = zext i32 %726 to i64
  %728 = getelementptr inbounds nuw [2 x i8], ptr %724, i64 %727
  store i16 %723, ptr %728, align 2, !tbaa !62
  %729 = trunc i32 %704 to i16
  store i16 %729, ptr %722, align 2, !tbaa !62
  br label %730

730:                                              ; preds = %707, %.split
  %731 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %702, i32 1), !nosanitize !45
  %732 = extractvalue { i32, i1 } %731, 1, !nosanitize !45
  br i1 %732, label %.loopexit45, label %733, !prof !46, !nosanitize !45

.loopexit45:                                      ; preds = %749, %730
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

733:                                              ; preds = %730
  %734 = extractvalue { i32, i1 } %731, 0, !nosanitize !45
  store i32 %734, ptr %22, align 8, !tbaa !77
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %.split, !llvm.loop !160

736:                                              ; preds = %733
  store i32 0, ptr %34, align 8, !tbaa !79
  store i32 2, ptr %21, align 8, !tbaa !78
  %737 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %704, i32 1), !nosanitize !45
  %738 = extractvalue { i32, i1 } %737, 1, !nosanitize !45
  br i1 %738, label %739, label %740, !prof !46, !nosanitize !45

739:                                              ; preds = %736
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

740:                                              ; preds = %736
  %741 = extractvalue { i32, i1 } %737, 0, !nosanitize !45
  store i32 %741, ptr %6, align 4, !tbaa !73
  br i1 %680, label %742, label %.backedge

742:                                              ; preds = %740
  %743 = load i64, ptr %9, align 8, !tbaa !74
  %744 = icmp sgt i64 %743, -1
  br i1 %744, label %745, label %749

745:                                              ; preds = %742
  %746 = load ptr, ptr %7, align 8, !tbaa !34
  %747 = and i64 %743, 4294967295
  %748 = getelementptr inbounds nuw i8, ptr %746, i64 %747
  br label %749

749:                                              ; preds = %745, %742
  %750 = phi ptr [ %748, %745 ], [ null, %742 ]
  %751 = zext i32 %741 to i64
  %752 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %751, i64 %743), !nosanitize !45
  %753 = extractvalue { i64, i1 } %752, 1, !nosanitize !45
  br i1 %753, label %.loopexit45, label %754, !prof !46, !nosanitize !45

754:                                              ; preds = %749
  %755 = extractvalue { i64, i1 } %752, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %750, i64 noundef %755, i32 noundef 0) #11
  %756 = load i32, ptr %6, align 4, !tbaa !73
  %757 = zext i32 %756 to i64
  store i64 %757, ptr %9, align 8, !tbaa !74
  %758 = load ptr, ptr %0, align 8, !tbaa !20
  %759 = getelementptr inbounds nuw i8, ptr %758, i64 56
  %760 = load ptr, ptr %759, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %760) #11
  %761 = getelementptr inbounds nuw i8, ptr %760, i64 40
  %762 = load i64, ptr %761, align 8, !tbaa !57
  %763 = getelementptr inbounds nuw i8, ptr %758, i64 32
  %764 = load i32, ptr %763, align 8, !tbaa !107
  %765 = zext i32 %764 to i64
  %766 = tail call i64 @llvm.umin.i64(i64 %762, i64 %765)
  %767 = trunc nuw i64 %766 to i32
  %768 = icmp eq i64 %766, 0
  br i1 %768, label %801, label %769

769:                                              ; preds = %754
  %770 = getelementptr inbounds nuw i8, ptr %758, i64 24
  %771 = load ptr, ptr %770, align 8, !tbaa !106
  %772 = getelementptr inbounds nuw i8, ptr %760, i64 32
  %773 = load ptr, ptr %772, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %771, ptr align 1 %773, i64 %766, i1 false)
  %774 = load ptr, ptr %770, align 8, !tbaa !106
  %775 = getelementptr inbounds nuw i8, ptr %774, i64 %766
  store ptr %775, ptr %770, align 8, !tbaa !106
  %776 = load ptr, ptr %772, align 8, !tbaa !58
  %777 = getelementptr inbounds nuw i8, ptr %776, i64 %766
  store ptr %777, ptr %772, align 8, !tbaa !58
  %778 = getelementptr inbounds nuw i8, ptr %758, i64 40
  %779 = load i64, ptr %778, align 8, !tbaa !108
  %780 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %779, i64 %766), !nosanitize !45
  %781 = extractvalue { i64, i1 } %780, 1, !nosanitize !45
  br i1 %781, label %782, label %783, !prof !46, !nosanitize !45

782:                                              ; preds = %769
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

783:                                              ; preds = %769
  %784 = extractvalue { i64, i1 } %780, 0, !nosanitize !45
  store i64 %784, ptr %778, align 8, !tbaa !108
  %785 = load i32, ptr %763, align 8, !tbaa !107
  %786 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %785, i32 %767), !nosanitize !45
  %787 = extractvalue { i32, i1 } %786, 1, !nosanitize !45
  br i1 %787, label %788, label %789, !prof !46, !nosanitize !45

788:                                              ; preds = %783
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

789:                                              ; preds = %783
  %790 = extractvalue { i32, i1 } %786, 0, !nosanitize !45
  store i32 %790, ptr %763, align 8, !tbaa !107
  %791 = load i64, ptr %761, align 8, !tbaa !57
  %792 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %791, i64 %766), !nosanitize !45
  %793 = extractvalue { i64, i1 } %792, 1, !nosanitize !45
  br i1 %793, label %794, label %795, !prof !46, !nosanitize !45

794:                                              ; preds = %789
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

795:                                              ; preds = %789
  %796 = extractvalue { i64, i1 } %792, 0, !nosanitize !45
  store i64 %796, ptr %761, align 8, !tbaa !57
  %797 = icmp eq i64 %796, 0
  br i1 %797, label %798, label %801

798:                                              ; preds = %795
  %799 = getelementptr inbounds nuw i8, ptr %760, i64 16
  %800 = load ptr, ptr %799, align 8, !tbaa !40
  store ptr %800, ptr %772, align 8, !tbaa !58
  br label %801

801:                                              ; preds = %798, %795, %754
  %802 = load ptr, ptr %0, align 8, !tbaa !20
  %803 = getelementptr inbounds nuw i8, ptr %802, i64 32
  %804 = load i32, ptr %803, align 8, !tbaa !107
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %.loopexit47, label %.backedge

806:                                              ; preds = %591
  %807 = load i32, ptr %34, align 8, !tbaa !79
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %931, label %809

809:                                              ; preds = %806
  %810 = load i32, ptr %6, align 4, !tbaa !73
  %811 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %810, i32 1), !nosanitize !45
  %812 = extractvalue { i32, i1 } %811, 1, !nosanitize !45
  br i1 %812, label %813, label %814, !prof !46, !nosanitize !45

813:                                              ; preds = %861, %809
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

814:                                              ; preds = %809
  %815 = extractvalue { i32, i1 } %811, 0, !nosanitize !45
  %816 = load ptr, ptr %7, align 8, !tbaa !34
  %817 = zext i32 %815 to i64
  %818 = getelementptr inbounds nuw i8, ptr %816, i64 %817
  %819 = load i8, ptr %818, align 1, !tbaa !8
  %820 = load i32, ptr %30, align 4, !tbaa !139
  %821 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %820, i32 1), !nosanitize !45
  %822 = extractvalue { i32, i1 } %821, 1, !nosanitize !45
  br i1 %822, label %823, label %824, !prof !46, !nosanitize !45

823:                                              ; preds = %814
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

824:                                              ; preds = %814
  %825 = extractvalue { i32, i1 } %821, 0, !nosanitize !45
  %826 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %825, ptr %30, align 4, !tbaa !139
  %827 = zext i32 %820 to i64
  %828 = getelementptr inbounds nuw i8, ptr %826, i64 %827
  store i8 0, ptr %828, align 1, !tbaa !8
  %829 = load i32, ptr %30, align 4, !tbaa !139
  %830 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %829, i32 1), !nosanitize !45
  %831 = extractvalue { i32, i1 } %830, 1, !nosanitize !45
  br i1 %831, label %832, label %833, !prof !46, !nosanitize !45

832:                                              ; preds = %824
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

833:                                              ; preds = %824
  %834 = extractvalue { i32, i1 } %830, 0, !nosanitize !45
  %835 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %834, ptr %30, align 4, !tbaa !139
  %836 = zext i32 %829 to i64
  %837 = getelementptr inbounds nuw i8, ptr %835, i64 %836
  store i8 0, ptr %837, align 1, !tbaa !8
  %838 = load i32, ptr %30, align 4, !tbaa !139
  %839 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %838, i32 1), !nosanitize !45
  %840 = extractvalue { i32, i1 } %839, 1, !nosanitize !45
  br i1 %840, label %841, label %842, !prof !46, !nosanitize !45

841:                                              ; preds = %833
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

842:                                              ; preds = %833
  %843 = extractvalue { i32, i1 } %839, 0, !nosanitize !45
  %844 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %843, ptr %30, align 4, !tbaa !139
  %845 = zext i32 %838 to i64
  %846 = getelementptr inbounds nuw i8, ptr %844, i64 %845
  store i8 %819, ptr %846, align 1, !tbaa !8
  %847 = zext i8 %819 to i64
  %848 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %847
  %849 = load i16, ptr %848, align 4, !tbaa !8
  %850 = add i16 %849, 1
  store i16 %850, ptr %848, align 4, !tbaa !8
  %851 = load i32, ptr %30, align 4, !tbaa !139
  %852 = load i32, ptr %33, align 8, !tbaa !47
  %853 = icmp eq i32 %851, %852
  br i1 %853, label %854, label %914

854:                                              ; preds = %842
  %855 = load i64, ptr %9, align 8, !tbaa !74
  %856 = icmp sgt i64 %855, -1
  br i1 %856, label %857, label %861

857:                                              ; preds = %854
  %858 = load ptr, ptr %7, align 8, !tbaa !34
  %859 = and i64 %855, 4294967295
  %860 = getelementptr inbounds nuw i8, ptr %858, i64 %859
  br label %861

861:                                              ; preds = %857, %854
  %862 = phi ptr [ %860, %857 ], [ null, %854 ]
  %863 = load i32, ptr %6, align 4, !tbaa !73
  %864 = zext i32 %863 to i64
  %865 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %864, i64 %855), !nosanitize !45
  %866 = extractvalue { i64, i1 } %865, 1, !nosanitize !45
  br i1 %866, label %813, label %867, !prof !46, !nosanitize !45

867:                                              ; preds = %861
  %868 = extractvalue { i64, i1 } %865, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %862, i64 noundef %868, i32 noundef 0) #11
  %869 = load i32, ptr %6, align 4, !tbaa !73
  %870 = zext i32 %869 to i64
  store i64 %870, ptr %9, align 8, !tbaa !74
  %871 = load ptr, ptr %0, align 8, !tbaa !20
  %872 = getelementptr inbounds nuw i8, ptr %871, i64 56
  %873 = load ptr, ptr %872, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %873) #11
  %874 = getelementptr inbounds nuw i8, ptr %873, i64 40
  %875 = load i64, ptr %874, align 8, !tbaa !57
  %876 = getelementptr inbounds nuw i8, ptr %871, i64 32
  %877 = load i32, ptr %876, align 8, !tbaa !107
  %878 = zext i32 %877 to i64
  %879 = tail call i64 @llvm.umin.i64(i64 %875, i64 %878)
  %880 = trunc nuw i64 %879 to i32
  %881 = icmp eq i64 %879, 0
  br i1 %881, label %914, label %882

882:                                              ; preds = %867
  %883 = getelementptr inbounds nuw i8, ptr %871, i64 24
  %884 = load ptr, ptr %883, align 8, !tbaa !106
  %885 = getelementptr inbounds nuw i8, ptr %873, i64 32
  %886 = load ptr, ptr %885, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %884, ptr align 1 %886, i64 %879, i1 false)
  %887 = load ptr, ptr %883, align 8, !tbaa !106
  %888 = getelementptr inbounds nuw i8, ptr %887, i64 %879
  store ptr %888, ptr %883, align 8, !tbaa !106
  %889 = load ptr, ptr %885, align 8, !tbaa !58
  %890 = getelementptr inbounds nuw i8, ptr %889, i64 %879
  store ptr %890, ptr %885, align 8, !tbaa !58
  %891 = getelementptr inbounds nuw i8, ptr %871, i64 40
  %892 = load i64, ptr %891, align 8, !tbaa !108
  %893 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %892, i64 %879), !nosanitize !45
  %894 = extractvalue { i64, i1 } %893, 1, !nosanitize !45
  br i1 %894, label %895, label %896, !prof !46, !nosanitize !45

895:                                              ; preds = %882
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

896:                                              ; preds = %882
  %897 = extractvalue { i64, i1 } %893, 0, !nosanitize !45
  store i64 %897, ptr %891, align 8, !tbaa !108
  %898 = load i32, ptr %876, align 8, !tbaa !107
  %899 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %898, i32 %880), !nosanitize !45
  %900 = extractvalue { i32, i1 } %899, 1, !nosanitize !45
  br i1 %900, label %901, label %902, !prof !46, !nosanitize !45

901:                                              ; preds = %896
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

902:                                              ; preds = %896
  %903 = extractvalue { i32, i1 } %899, 0, !nosanitize !45
  store i32 %903, ptr %876, align 8, !tbaa !107
  %904 = load i64, ptr %874, align 8, !tbaa !57
  %905 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %904, i64 %879), !nosanitize !45
  %906 = extractvalue { i64, i1 } %905, 1, !nosanitize !45
  br i1 %906, label %907, label %908, !prof !46, !nosanitize !45

907:                                              ; preds = %902
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

908:                                              ; preds = %902
  %909 = extractvalue { i64, i1 } %905, 0, !nosanitize !45
  store i64 %909, ptr %874, align 8, !tbaa !57
  %910 = icmp eq i64 %909, 0
  br i1 %910, label %911, label %914

911:                                              ; preds = %908
  %912 = getelementptr inbounds nuw i8, ptr %873, i64 16
  %913 = load ptr, ptr %912, align 8, !tbaa !40
  store ptr %913, ptr %885, align 8, !tbaa !58
  br label %914

914:                                              ; preds = %911, %908, %867, %842
  %915 = load i32, ptr %6, align 4, !tbaa !73
  %916 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %915, i32 1), !nosanitize !45
  %917 = extractvalue { i32, i1 } %916, 1, !nosanitize !45
  br i1 %917, label %918, label %919, !prof !46, !nosanitize !45

918:                                              ; preds = %914
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

919:                                              ; preds = %914
  %920 = extractvalue { i32, i1 } %916, 0, !nosanitize !45
  store i32 %920, ptr %6, align 4, !tbaa !73
  %921 = load i32, ptr %3, align 4, !tbaa !75
  %922 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %921, i32 1), !nosanitize !45
  %923 = extractvalue { i32, i1 } %922, 1, !nosanitize !45
  br i1 %923, label %924, label %925, !prof !46, !nosanitize !45

924:                                              ; preds = %919
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

925:                                              ; preds = %919
  %926 = extractvalue { i32, i1 } %922, 0, !nosanitize !45
  store i32 %926, ptr %3, align 4, !tbaa !75
  %927 = load ptr, ptr %0, align 8, !tbaa !20
  %928 = getelementptr inbounds nuw i8, ptr %927, i64 32
  %929 = load i32, ptr %928, align 8, !tbaa !107
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %.loopexit47, label %.backedge

931:                                              ; preds = %806
  store i32 1, ptr %34, align 8, !tbaa !79
  %932 = load i32, ptr %6, align 4, !tbaa !73
  %933 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %932, i32 1), !nosanitize !45
  %934 = extractvalue { i32, i1 } %933, 1, !nosanitize !45
  br i1 %934, label %935, label %936, !prof !46, !nosanitize !45

935:                                              ; preds = %931
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

936:                                              ; preds = %931
  %937 = extractvalue { i32, i1 } %933, 0, !nosanitize !45
  store i32 %937, ptr %6, align 4, !tbaa !73
  %938 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %595, i32 1), !nosanitize !45
  %939 = extractvalue { i32, i1 } %938, 1, !nosanitize !45
  br i1 %939, label %940, label %941, !prof !46, !nosanitize !45

940:                                              ; preds = %936
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

941:                                              ; preds = %936
  %942 = extractvalue { i32, i1 } %938, 0, !nosanitize !45
  store i32 %942, ptr %3, align 4, !tbaa !75
  br label %.backedge

.backedge:                                        ; preds = %941, %925, %801, %740
  br label %36

943:                                              ; preds = %360
  %944 = load i32, ptr %34, align 8, !tbaa !79
  %945 = icmp eq i32 %944, 0
  %946 = load i32, ptr %6, align 4, !tbaa !73
  br i1 %945, label %989, label %947

947:                                              ; preds = %943
  %948 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %946, i32 1), !nosanitize !45
  %949 = extractvalue { i32, i1 } %948, 1, !nosanitize !45
  br i1 %949, label %950, label %951, !prof !46, !nosanitize !45

950:                                              ; preds = %1068, %1000, %947
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

951:                                              ; preds = %947
  %952 = extractvalue { i32, i1 } %948, 0, !nosanitize !45
  %953 = load ptr, ptr %7, align 8, !tbaa !34
  %954 = zext i32 %952 to i64
  %955 = getelementptr inbounds nuw i8, ptr %953, i64 %954
  %956 = load i8, ptr %955, align 1, !tbaa !8
  %957 = load i32, ptr %30, align 4, !tbaa !139
  %958 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %957, i32 1), !nosanitize !45
  %959 = extractvalue { i32, i1 } %958, 1, !nosanitize !45
  br i1 %959, label %960, label %961, !prof !46, !nosanitize !45

960:                                              ; preds = %951
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

961:                                              ; preds = %951
  %962 = extractvalue { i32, i1 } %958, 0, !nosanitize !45
  %963 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %962, ptr %30, align 4, !tbaa !139
  %964 = zext i32 %957 to i64
  %965 = getelementptr inbounds nuw i8, ptr %963, i64 %964
  store i8 0, ptr %965, align 1, !tbaa !8
  %966 = load i32, ptr %30, align 4, !tbaa !139
  %967 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %966, i32 1), !nosanitize !45
  %968 = extractvalue { i32, i1 } %967, 1, !nosanitize !45
  br i1 %968, label %969, label %970, !prof !46, !nosanitize !45

969:                                              ; preds = %961
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

970:                                              ; preds = %961
  %971 = extractvalue { i32, i1 } %967, 0, !nosanitize !45
  %972 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %971, ptr %30, align 4, !tbaa !139
  %973 = zext i32 %966 to i64
  %974 = getelementptr inbounds nuw i8, ptr %972, i64 %973
  store i8 0, ptr %974, align 1, !tbaa !8
  %975 = load i32, ptr %30, align 4, !tbaa !139
  %976 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %975, i32 1), !nosanitize !45
  %977 = extractvalue { i32, i1 } %976, 1, !nosanitize !45
  br i1 %977, label %978, label %979, !prof !46, !nosanitize !45

978:                                              ; preds = %970
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

979:                                              ; preds = %970
  %980 = extractvalue { i32, i1 } %976, 0, !nosanitize !45
  %981 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %980, ptr %30, align 4, !tbaa !139
  %982 = zext i32 %975 to i64
  %983 = getelementptr inbounds nuw i8, ptr %981, i64 %982
  store i8 %956, ptr %983, align 1, !tbaa !8
  %984 = zext i8 %956 to i64
  %985 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %984
  %986 = load i16, ptr %985, align 4, !tbaa !8
  %987 = add i16 %986, 1
  store i16 %987, ptr %985, align 4, !tbaa !8
  store i32 0, ptr %34, align 8, !tbaa !79
  %988 = load i32, ptr %6, align 4, !tbaa !73
  br label %989

989:                                              ; preds = %979, %943
  %990 = phi i32 [ %988, %979 ], [ %946, %943 ]
  %991 = tail call i32 @llvm.umin.i32(i32 %990, i32 2)
  store i32 %991, ptr %10, align 4, !tbaa !76
  %992 = icmp eq i32 %1, 4
  br i1 %992, label %993, label %1058

993:                                              ; preds = %989
  %994 = load i64, ptr %9, align 8, !tbaa !74
  %995 = icmp sgt i64 %994, -1
  br i1 %995, label %996, label %1000

996:                                              ; preds = %993
  %997 = load ptr, ptr %7, align 8, !tbaa !34
  %998 = and i64 %994, 4294967295
  %999 = getelementptr inbounds nuw i8, ptr %997, i64 %998
  br label %1000

1000:                                             ; preds = %996, %993
  %1001 = phi ptr [ %999, %996 ], [ null, %993 ]
  %1002 = zext i32 %990 to i64
  %1003 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1002, i64 %994), !nosanitize !45
  %1004 = extractvalue { i64, i1 } %1003, 1, !nosanitize !45
  br i1 %1004, label %950, label %1005, !prof !46, !nosanitize !45

1005:                                             ; preds = %1000
  %1006 = extractvalue { i64, i1 } %1003, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1001, i64 noundef %1006, i32 noundef 1) #11
  %1007 = load i32, ptr %6, align 4, !tbaa !73
  %1008 = zext i32 %1007 to i64
  store i64 %1008, ptr %9, align 8, !tbaa !74
  %1009 = load ptr, ptr %0, align 8, !tbaa !20
  %1010 = getelementptr inbounds nuw i8, ptr %1009, i64 56
  %1011 = load ptr, ptr %1010, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1011) #11
  %1012 = getelementptr inbounds nuw i8, ptr %1011, i64 40
  %1013 = load i64, ptr %1012, align 8, !tbaa !57
  %1014 = getelementptr inbounds nuw i8, ptr %1009, i64 32
  %1015 = load i32, ptr %1014, align 8, !tbaa !107
  %1016 = zext i32 %1015 to i64
  %1017 = tail call i64 @llvm.umin.i64(i64 %1013, i64 %1016)
  %1018 = trunc nuw i64 %1017 to i32
  %1019 = icmp eq i64 %1017, 0
  br i1 %1019, label %1052, label %1020

1020:                                             ; preds = %1005
  %1021 = getelementptr inbounds nuw i8, ptr %1009, i64 24
  %1022 = load ptr, ptr %1021, align 8, !tbaa !106
  %1023 = getelementptr inbounds nuw i8, ptr %1011, i64 32
  %1024 = load ptr, ptr %1023, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1022, ptr align 1 %1024, i64 %1017, i1 false)
  %1025 = load ptr, ptr %1021, align 8, !tbaa !106
  %1026 = getelementptr inbounds nuw i8, ptr %1025, i64 %1017
  store ptr %1026, ptr %1021, align 8, !tbaa !106
  %1027 = load ptr, ptr %1023, align 8, !tbaa !58
  %1028 = getelementptr inbounds nuw i8, ptr %1027, i64 %1017
  store ptr %1028, ptr %1023, align 8, !tbaa !58
  %1029 = getelementptr inbounds nuw i8, ptr %1009, i64 40
  %1030 = load i64, ptr %1029, align 8, !tbaa !108
  %1031 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1030, i64 %1017), !nosanitize !45
  %1032 = extractvalue { i64, i1 } %1031, 1, !nosanitize !45
  br i1 %1032, label %1033, label %1034, !prof !46, !nosanitize !45

1033:                                             ; preds = %1020
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1034:                                             ; preds = %1020
  %1035 = extractvalue { i64, i1 } %1031, 0, !nosanitize !45
  store i64 %1035, ptr %1029, align 8, !tbaa !108
  %1036 = load i32, ptr %1014, align 8, !tbaa !107
  %1037 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1036, i32 %1018), !nosanitize !45
  %1038 = extractvalue { i32, i1 } %1037, 1, !nosanitize !45
  br i1 %1038, label %1039, label %1040, !prof !46, !nosanitize !45

1039:                                             ; preds = %1034
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1040:                                             ; preds = %1034
  %1041 = extractvalue { i32, i1 } %1037, 0, !nosanitize !45
  store i32 %1041, ptr %1014, align 8, !tbaa !107
  %1042 = load i64, ptr %1012, align 8, !tbaa !57
  %1043 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1042, i64 %1017), !nosanitize !45
  %1044 = extractvalue { i64, i1 } %1043, 1, !nosanitize !45
  br i1 %1044, label %1045, label %1046, !prof !46, !nosanitize !45

1045:                                             ; preds = %1040
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1046:                                             ; preds = %1040
  %1047 = extractvalue { i64, i1 } %1043, 0, !nosanitize !45
  store i64 %1047, ptr %1012, align 8, !tbaa !57
  %1048 = icmp eq i64 %1047, 0
  br i1 %1048, label %1049, label %1052

1049:                                             ; preds = %1046
  %1050 = getelementptr inbounds nuw i8, ptr %1011, i64 16
  %1051 = load ptr, ptr %1050, align 8, !tbaa !40
  store ptr %1051, ptr %1023, align 8, !tbaa !58
  br label %1052

1052:                                             ; preds = %1049, %1046, %1005
  %1053 = load ptr, ptr %0, align 8, !tbaa !20
  %1054 = getelementptr inbounds nuw i8, ptr %1053, i64 32
  %1055 = load i32, ptr %1054, align 8, !tbaa !107
  %1056 = icmp eq i32 %1055, 0
  %1057 = select i1 %1056, i32 2, i32 3
  br label %.loopexit47

1058:                                             ; preds = %989
  %1059 = load i32, ptr %30, align 4, !tbaa !139
  %1060 = icmp eq i32 %1059, 0
  br i1 %1060, label %1125, label %1061

1061:                                             ; preds = %1058
  %1062 = load i64, ptr %9, align 8, !tbaa !74
  %1063 = icmp sgt i64 %1062, -1
  br i1 %1063, label %1064, label %1068

1064:                                             ; preds = %1061
  %1065 = load ptr, ptr %7, align 8, !tbaa !34
  %1066 = and i64 %1062, 4294967295
  %1067 = getelementptr inbounds nuw i8, ptr %1065, i64 %1066
  br label %1068

1068:                                             ; preds = %1064, %1061
  %1069 = phi ptr [ %1067, %1064 ], [ null, %1061 ]
  %1070 = zext i32 %990 to i64
  %1071 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1070, i64 %1062), !nosanitize !45
  %1072 = extractvalue { i64, i1 } %1071, 1, !nosanitize !45
  br i1 %1072, label %950, label %1073, !prof !46, !nosanitize !45

1073:                                             ; preds = %1068
  %1074 = extractvalue { i64, i1 } %1071, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1069, i64 noundef %1074, i32 noundef 0) #11
  %1075 = load i32, ptr %6, align 4, !tbaa !73
  %1076 = zext i32 %1075 to i64
  store i64 %1076, ptr %9, align 8, !tbaa !74
  %1077 = load ptr, ptr %0, align 8, !tbaa !20
  %1078 = getelementptr inbounds nuw i8, ptr %1077, i64 56
  %1079 = load ptr, ptr %1078, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1079) #11
  %1080 = getelementptr inbounds nuw i8, ptr %1079, i64 40
  %1081 = load i64, ptr %1080, align 8, !tbaa !57
  %1082 = getelementptr inbounds nuw i8, ptr %1077, i64 32
  %1083 = load i32, ptr %1082, align 8, !tbaa !107
  %1084 = zext i32 %1083 to i64
  %1085 = tail call i64 @llvm.umin.i64(i64 %1081, i64 %1084)
  %1086 = trunc nuw i64 %1085 to i32
  %1087 = icmp eq i64 %1085, 0
  br i1 %1087, label %1120, label %1088

1088:                                             ; preds = %1073
  %1089 = getelementptr inbounds nuw i8, ptr %1077, i64 24
  %1090 = load ptr, ptr %1089, align 8, !tbaa !106
  %1091 = getelementptr inbounds nuw i8, ptr %1079, i64 32
  %1092 = load ptr, ptr %1091, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1090, ptr align 1 %1092, i64 %1085, i1 false)
  %1093 = load ptr, ptr %1089, align 8, !tbaa !106
  %1094 = getelementptr inbounds nuw i8, ptr %1093, i64 %1085
  store ptr %1094, ptr %1089, align 8, !tbaa !106
  %1095 = load ptr, ptr %1091, align 8, !tbaa !58
  %1096 = getelementptr inbounds nuw i8, ptr %1095, i64 %1085
  store ptr %1096, ptr %1091, align 8, !tbaa !58
  %1097 = getelementptr inbounds nuw i8, ptr %1077, i64 40
  %1098 = load i64, ptr %1097, align 8, !tbaa !108
  %1099 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1098, i64 %1085), !nosanitize !45
  %1100 = extractvalue { i64, i1 } %1099, 1, !nosanitize !45
  br i1 %1100, label %1101, label %1102, !prof !46, !nosanitize !45

1101:                                             ; preds = %1088
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1102:                                             ; preds = %1088
  %1103 = extractvalue { i64, i1 } %1099, 0, !nosanitize !45
  store i64 %1103, ptr %1097, align 8, !tbaa !108
  %1104 = load i32, ptr %1082, align 8, !tbaa !107
  %1105 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1104, i32 %1086), !nosanitize !45
  %1106 = extractvalue { i32, i1 } %1105, 1, !nosanitize !45
  br i1 %1106, label %1107, label %1108, !prof !46, !nosanitize !45

1107:                                             ; preds = %1102
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1108:                                             ; preds = %1102
  %1109 = extractvalue { i32, i1 } %1105, 0, !nosanitize !45
  store i32 %1109, ptr %1082, align 8, !tbaa !107
  %1110 = load i64, ptr %1080, align 8, !tbaa !57
  %1111 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1110, i64 %1085), !nosanitize !45
  %1112 = extractvalue { i64, i1 } %1111, 1, !nosanitize !45
  br i1 %1112, label %1113, label %1114, !prof !46, !nosanitize !45

1113:                                             ; preds = %1108
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1114:                                             ; preds = %1108
  %1115 = extractvalue { i64, i1 } %1111, 0, !nosanitize !45
  store i64 %1115, ptr %1080, align 8, !tbaa !57
  %1116 = icmp eq i64 %1115, 0
  br i1 %1116, label %1117, label %1120

1117:                                             ; preds = %1114
  %1118 = getelementptr inbounds nuw i8, ptr %1079, i64 16
  %1119 = load ptr, ptr %1118, align 8, !tbaa !40
  store ptr %1119, ptr %1091, align 8, !tbaa !58
  br label %1120

1120:                                             ; preds = %1117, %1114, %1073
  %1121 = load ptr, ptr %0, align 8, !tbaa !20
  %1122 = getelementptr inbounds nuw i8, ptr %1121, i64 32
  %1123 = load i32, ptr %1122, align 8, !tbaa !107
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %.loopexit47, label %1125

1125:                                             ; preds = %1120, %1058
  br label %.loopexit47

.loopexit47:                                      ; preds = %925, %801, %356, %1125, %1120, %1052
  %1126 = phi i32 [ 0, %1120 ], [ %1057, %1052 ], [ 1, %1125 ], [ 0, %356 ], [ 0, %801 ], [ 0, %925 ]
  ret i32 %1126
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
