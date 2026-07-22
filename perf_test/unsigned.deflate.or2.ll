; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.deflate.or.ll'
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
  %33 = tail call ptr %21(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #12, !inline_history !18
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
  br label %153

135:                                              ; preds = %72
  %136 = getelementptr inbounds nuw i8, ptr %61, i64 %64
  %137 = getelementptr inbounds nuw i8, ptr %33, i64 5888
  store ptr %136, ptr %137, align 8, !tbaa !44
  %138 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %63, i32 1), !nosanitize !45
  %139 = extractvalue { i32, i1 } %138, 1, !nosanitize !45
  br i1 %139, label %140, label %141, !prof !46, !nosanitize !45

140:                                              ; preds = %135
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

141:                                              ; preds = %135
  %142 = extractvalue { i32, i1 } %138, 0, !nosanitize !45
  %143 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %142, i32 3), !nosanitize !45
  %144 = extractvalue { i32, i1 } %143, 1, !nosanitize !45
  br i1 %144, label %145, label %146, !prof !46, !nosanitize !45

145:                                              ; preds = %141
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !45
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
  %63 = tail call ptr %25(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #12
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
  %88 = tail call ptr %86(ptr noundef %87, i32 noundef %71, i32 noundef 2) #12
  %89 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %88, ptr %89, align 8, !tbaa !34
  %90 = load ptr, ptr %19, align 8, !tbaa !15
  %91 = load ptr, ptr %61, align 8, !tbaa !16
  %92 = load i32, ptr %72, align 8, !tbaa !32
  %93 = tail call ptr %90(ptr noundef %91, i32 noundef %92, i32 noundef 2) #12
  %94 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %93, ptr %94, align 8, !tbaa !35
  %95 = load ptr, ptr %19, align 8, !tbaa !15
  %96 = load ptr, ptr %61, align 8, !tbaa !16
  %97 = load i32, ptr %78, align 4, !tbaa !36
  %98 = tail call ptr %95(ptr noundef %96, i32 noundef %97, i32 noundef 2) #12
  %99 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %98, ptr %99, align 8, !tbaa !37
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %100, align 8, !tbaa !38
  %101 = shl nuw nsw i32 64, %4
  %102 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %101, ptr %102, align 8, !tbaa !39
  %103 = load ptr, ptr %19, align 8, !tbaa !15
  %104 = load ptr, ptr %61, align 8, !tbaa !16
  %105 = tail call ptr %103(ptr noundef %104, i32 noundef %101, i32 noundef 4) #12
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
  tail call void %126(ptr noundef %142, ptr noundef nonnull %139) #12, !inline_history !54
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
  tail call void %146(ptr noundef %152, ptr noundef nonnull %149) #12, !inline_history !54
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
  tail call void %156(ptr noundef %162, ptr noundef nonnull %159) #12, !inline_history !54
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
  tail call void %166(ptr noundef %172, ptr noundef nonnull %169) #12, !inline_history !54
  %173 = load ptr, ptr %26, align 8, !tbaa !17
  %174 = load ptr, ptr %68, align 8, !tbaa !19
  br label %175

175:                                              ; preds = %171, %165
  %176 = phi ptr [ %174, %171 ], [ %167, %165 ]
  %177 = phi ptr [ %173, %171 ], [ %166, %165 ]
  %178 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %177(ptr noundef %178, ptr noundef %176) #12, !inline_history !54
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

185:                                              ; preds = %179
  %186 = extractvalue { i32, i1 } %182, 0, !nosanitize !45
  %187 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %186, i32 3), !nosanitize !45
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !45
  br i1 %188, label %189, label %190, !prof !46, !nosanitize !45

189:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !45
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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
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

70:                                               ; preds = %63, %18, %15, %11, %7, %3, %1
  %71 = phi i32 [ %69, %63 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %71
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
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
  %39 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %42

40:                                               ; preds = %34
  %41 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %43, ptr %44, align 8, !tbaa !59
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %45, align 4, !tbaa !60
  tail call void @_tr_init(ptr noundef nonnull %13) #12
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  br i1 %4, label %786, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %786, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %786, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %786, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %786

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %786 [
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
  br i1 %24, label %786, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !30
  switch i32 %27, label %34 [
    i32 2, label %786
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %786

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !75
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %786

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !75
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %786

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !30
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %40 = load i32, ptr %39, align 8, !tbaa !32
  %41 = icmp ult i32 %2, %40
  br i1 %41, label %80, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !59
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #12
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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

105:                                              ; preds = %371, %80
  %106 = phi i32 [ %299, %371 ], [ %104, %80 ]
  %107 = load i64, ptr %89, align 8, !tbaa !61
  %108 = zext i32 %106 to i64
  %109 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 %108), !nosanitize !45
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !45
  br i1 %110, label %111, label %112, !prof !46, !nosanitize !45

111:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

112:                                              ; preds = %105
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !45
  %114 = load i32, ptr %90, align 4, !tbaa !73
  %115 = zext i32 %114 to i64
  %116 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %113, i64 %115), !nosanitize !45
  %117 = extractvalue { i64, i1 } %116, 1, !nosanitize !45
  br i1 %117, label %118, label %119, !prof !46, !nosanitize !45

118:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

119:                                              ; preds = %112
  %120 = extractvalue { i64, i1 } %116, 0, !nosanitize !45
  %121 = trunc i64 %120 to i32
  %122 = load i32, ptr %81, align 8, !tbaa !32
  %123 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %122, i32 262), !nosanitize !45
  %124 = extractvalue { i32, i1 } %123, 1, !nosanitize !45
  br i1 %124, label %125, label %126, !prof !46, !nosanitize !45

125:                                              ; preds = %119
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

126:                                              ; preds = %119
  %127 = extractvalue { i32, i1 } %123, 0, !nosanitize !45
  %128 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %83, i32 %127), !nosanitize !45
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !45
  br i1 %129, label %130, label %131, !prof !46, !nosanitize !45

130:                                              ; preds = %126
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

131:                                              ; preds = %126
  %132 = extractvalue { i32, i1 } %128, 0, !nosanitize !45
  %133 = icmp ult i32 %114, %132
  br i1 %133, label %250, label %134

134:                                              ; preds = %131
  %135 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %121), !nosanitize !45
  %136 = extractvalue { i32, i1 } %135, 1, !nosanitize !45
  br i1 %136, label %137, label %138, !prof !46, !nosanitize !45

137:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

147:                                              ; preds = %138
  %148 = extractvalue { i32, i1 } %144, 0, !nosanitize !45
  store i32 %148, ptr %93, align 8, !tbaa !83
  %149 = load i32, ptr %90, align 4, !tbaa !73
  %150 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %83), !nosanitize !45
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !45
  br i1 %151, label %152, label %153, !prof !46, !nosanitize !45

152:                                              ; preds = %147
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  br i1 %166, label %190, label %167, !prof !46, !nosanitize !45

167:                                              ; preds = %160
  %168 = icmp ult i32 %162, 8
  br i1 %168, label %.preheader154, label %169

.preheader154:                                    ; preds = %184, %167
  %.ph155 = phi ptr [ %186, %184 ], [ %165, %167 ]
  %.ph156 = phi i32 [ %188, %184 ], [ %162, %167 ]
  br label %196

169:                                              ; preds = %167
  %170 = and i64 %164, 4294967288
  %171 = insertelement <8 x i32> poison, i32 %161, i64 0
  %172 = shufflevector <8 x i32> %171, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %173

173:                                              ; preds = %173, %169
  %174 = phi i64 [ 0, %169 ], [ %182, %173 ]
  %175 = mul nsw i64 %174, -2
  %176 = getelementptr i8, ptr %165, i64 %175
  %177 = getelementptr inbounds i8, ptr %176, i64 -16
  %178 = load <8 x i16>, ptr %177, align 2, !tbaa !62
  %179 = zext <8 x i16> %178 to <8 x i32>
  %180 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %179, <8 x i32> %172)
  %181 = trunc nuw <8 x i32> %180 to <8 x i16>
  store <8 x i16> %181, ptr %177, align 2, !tbaa !62
  %182 = add nuw nsw i64 %174, 8
  %183 = icmp eq i64 %182, %170
  br i1 %183, label %184, label %173, !llvm.loop !84

184:                                              ; preds = %173
  %185 = mul nsw i64 %170, -2
  %186 = getelementptr i8, ptr %165, i64 %185
  %187 = trunc nuw i64 %170 to i32
  %188 = sub i32 %162, %187
  %189 = icmp eq i64 %170, %164
  br i1 %189, label %.loopexit47, label %.preheader154

190:                                              ; preds = %160
  %191 = getelementptr inbounds i8, ptr %165, i64 -2
  %192 = load i16, ptr %191, align 2, !tbaa !62
  %193 = zext i16 %192 to i32
  %194 = tail call i32 @llvm.usub.sat.i32(i32 %193, i32 %161)
  %195 = trunc nuw i32 %194 to i16
  store i16 %195, ptr %191, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

196:                                              ; preds = %.preheader154, %196
  %197 = phi ptr [ %199, %196 ], [ %.ph155, %.preheader154 ]
  %198 = phi i32 [ %204, %196 ], [ %.ph156, %.preheader154 ]
  %199 = getelementptr inbounds i8, ptr %197, i64 -2
  %200 = load i16, ptr %199, align 2, !tbaa !62
  %201 = zext i16 %200 to i32
  %202 = tail call i32 @llvm.usub.sat.i32(i32 %201, i32 %161)
  %203 = trunc nuw i32 %202 to i16
  store i16 %203, ptr %199, align 2, !tbaa !62
  %204 = add i32 %198, -1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %.loopexit47, label %196, !llvm.loop !88

.loopexit47:                                      ; preds = %196, %184
  %206 = icmp eq i32 %161, 0
  br i1 %206, label %207, label %208, !prof !46, !nosanitize !45

207:                                              ; preds = %.loopexit47
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

208:                                              ; preds = %.loopexit47
  %209 = load ptr, ptr %98, align 8, !tbaa !35
  %210 = zext i32 %161 to i64
  %211 = getelementptr inbounds nuw [2 x i8], ptr %209, i64 %210
  %212 = icmp ult i32 %161, 8
  br i1 %212, label %.preheader151, label %213

213:                                              ; preds = %208
  %214 = and i64 %210, 4294967288
  %215 = insertelement <8 x i32> poison, i32 %161, i64 0
  %216 = shufflevector <8 x i32> %215, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %217

217:                                              ; preds = %217, %213
  %218 = phi i64 [ 0, %213 ], [ %226, %217 ]
  %219 = mul nsw i64 %218, -2
  %220 = getelementptr i8, ptr %211, i64 %219
  %221 = getelementptr inbounds i8, ptr %220, i64 -16
  %222 = load <8 x i16>, ptr %221, align 2, !tbaa !62
  %223 = zext <8 x i16> %222 to <8 x i32>
  %224 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %223, <8 x i32> %216)
  %225 = trunc nuw <8 x i32> %224 to <8 x i16>
  store <8 x i16> %225, ptr %221, align 2, !tbaa !62
  %226 = add nuw nsw i64 %218, 8
  %227 = icmp eq i64 %226, %214
  br i1 %227, label %228, label %217, !llvm.loop !89

228:                                              ; preds = %217
  %229 = mul nsw i64 %214, -2
  %230 = getelementptr i8, ptr %211, i64 %229
  %231 = trunc nuw i64 %214 to i32
  %232 = sub i32 %161, %231
  %233 = icmp eq i64 %214, %210
  br i1 %233, label %.loopexit46, label %.preheader151

.preheader151:                                    ; preds = %228, %208
  %.ph152 = phi ptr [ %230, %228 ], [ %211, %208 ]
  %.ph153 = phi i32 [ %232, %228 ], [ %161, %208 ]
  br label %234

234:                                              ; preds = %.preheader151, %234
  %235 = phi ptr [ %237, %234 ], [ %.ph152, %.preheader151 ]
  %236 = phi i32 [ %242, %234 ], [ %.ph153, %.preheader151 ]
  %237 = getelementptr inbounds i8, ptr %235, i64 -2
  %238 = load i16, ptr %237, align 2, !tbaa !62
  %239 = zext i16 %238 to i32
  %240 = tail call i32 @llvm.usub.sat.i32(i32 %239, i32 %161)
  %241 = trunc nuw i32 %240 to i16
  store i16 %241, ptr %237, align 2, !tbaa !62
  %242 = add i32 %236, -1
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %.loopexit46, label %234, !llvm.loop !90

.loopexit46:                                      ; preds = %234, %228
  store i32 1, ptr %99, align 8, !tbaa !63
  %244 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %121, i32 %83), !nosanitize !45
  %245 = extractvalue { i32, i1 } %244, 1, !nosanitize !45
  br i1 %245, label %246, label %247, !prof !46, !nosanitize !45

246:                                              ; preds = %.loopexit46
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

247:                                              ; preds = %.loopexit46
  %248 = extractvalue { i32, i1 } %244, 0, !nosanitize !45
  %249 = load i32, ptr %82, align 4, !tbaa !75
  br label %250

250:                                              ; preds = %247, %131
  %251 = phi i32 [ %249, %247 ], [ %106, %131 ]
  %252 = phi i32 [ %154, %247 ], [ %114, %131 ]
  %253 = phi i32 [ %248, %247 ], [ %121, %131 ]
  %254 = load ptr, ptr %15, align 8, !tbaa !20
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 8
  %256 = load i32, ptr %255, align 8, !tbaa !81
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %376, label %258

258:                                              ; preds = %250
  %259 = load ptr, ptr %92, align 8, !tbaa !34
  %260 = zext i32 %252 to i64
  %261 = getelementptr inbounds nuw i8, ptr %259, i64 %260
  %262 = zext i32 %251 to i64
  %263 = getelementptr inbounds nuw i8, ptr %261, i64 %262
  %264 = tail call i32 @llvm.umin.i32(i32 %256, i32 %253)
  %265 = icmp eq i32 %253, 0
  br i1 %265, label %293, label %266

266:                                              ; preds = %258
  %267 = sub i32 %256, %264
  store i32 %267, ptr %255, align 8, !tbaa !81
  %268 = load ptr, ptr %254, align 8, !tbaa !82
  %269 = zext i32 %264 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %263, ptr align 1 %268, i64 %269, i1 false)
  %270 = getelementptr inbounds nuw i8, ptr %254, i64 56
  %271 = load ptr, ptr %270, align 8, !tbaa !19
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 48
  %273 = load i32, ptr %272, align 8, !tbaa !30
  switch i32 %273, label %282 [
    i32 1, label %274
    i32 2, label %278
  ]

274:                                              ; preds = %266
  %275 = getelementptr inbounds nuw i8, ptr %254, i64 96
  %276 = load i64, ptr %275, align 8, !tbaa !59
  %277 = tail call i64 @adler32(i64 noundef %276, ptr noundef %263, i32 noundef %264) #12
  store i64 %277, ptr %275, align 8, !tbaa !59
  br label %282

278:                                              ; preds = %266
  %279 = getelementptr inbounds nuw i8, ptr %254, i64 96
  %280 = load i64, ptr %279, align 8, !tbaa !59
  %281 = tail call i64 @crc32(i64 noundef %280, ptr noundef %263, i32 noundef %264) #12
  store i64 %281, ptr %279, align 8, !tbaa !59
  br label %282

282:                                              ; preds = %278, %274, %266
  %283 = load ptr, ptr %254, align 8, !tbaa !82
  %284 = getelementptr inbounds nuw i8, ptr %283, i64 %269
  store ptr %284, ptr %254, align 8, !tbaa !82
  %285 = getelementptr inbounds nuw i8, ptr %254, i64 16
  %286 = load i64, ptr %285, align 8, !tbaa !55
  %287 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %286, i64 %269), !nosanitize !45
  %288 = extractvalue { i64, i1 } %287, 1, !nosanitize !45
  br i1 %288, label %289, label %290, !prof !46, !nosanitize !45

289:                                              ; preds = %282
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

290:                                              ; preds = %282
  %291 = extractvalue { i64, i1 } %287, 0, !nosanitize !45
  store i64 %291, ptr %285, align 8, !tbaa !55
  %292 = load i32, ptr %82, align 4, !tbaa !75
  br label %293

293:                                              ; preds = %290, %258
  %294 = phi i32 [ %251, %258 ], [ %292, %290 ]
  %295 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %294, i32 %264), !nosanitize !45
  %296 = extractvalue { i32, i1 } %295, 1, !nosanitize !45
  br i1 %296, label %297, label %298, !prof !46, !nosanitize !45

297:                                              ; preds = %293
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

298:                                              ; preds = %293
  %299 = extractvalue { i32, i1 } %295, 0, !nosanitize !45
  store i32 %299, ptr %82, align 4, !tbaa !75
  %300 = load i32, ptr %95, align 4, !tbaa !76
  %301 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %299, i32 %300), !nosanitize !45
  %302 = extractvalue { i32, i1 } %301, 1, !nosanitize !45
  br i1 %302, label %303, label %304, !prof !46, !nosanitize !45

303:                                              ; preds = %298
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

304:                                              ; preds = %298
  %305 = extractvalue { i32, i1 } %301, 0, !nosanitize !45
  %306 = icmp ugt i32 %305, 2
  br i1 %306, label %307, label %.loopexit45

307:                                              ; preds = %304
  %308 = load i32, ptr %90, align 4, !tbaa !73
  %309 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %308, i32 %300), !nosanitize !45
  %310 = extractvalue { i32, i1 } %309, 0, !nosanitize !45
  %311 = extractvalue { i32, i1 } %309, 1, !nosanitize !45
  br i1 %311, label %312, label %313, !prof !46, !nosanitize !45

312:                                              ; preds = %307
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

313:                                              ; preds = %307
  %314 = load ptr, ptr %92, align 8, !tbaa !34
  %315 = zext i32 %310 to i64
  %316 = getelementptr inbounds nuw i8, ptr %314, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !8
  %318 = zext i8 %317 to i32
  store i32 %318, ptr %100, align 8, !tbaa !80
  %319 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %310, i32 1), !nosanitize !45
  %320 = extractvalue { i32, i1 } %319, 1, !nosanitize !45
  br i1 %320, label %321, label %322, !prof !46, !nosanitize !45

321:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

322:                                              ; preds = %313
  %323 = extractvalue { i32, i1 } %319, 0, !nosanitize !45
  %324 = load i32, ptr %101, align 8, !tbaa !53
  %325 = shl i32 %318, %324
  %326 = zext i32 %323 to i64
  %327 = getelementptr inbounds nuw i8, ptr %314, i64 %326
  %328 = load i8, ptr %327, align 1, !tbaa !8
  %329 = zext i8 %328 to i32
  %330 = xor i32 %325, %329
  %331 = load i32, ptr %102, align 4, !tbaa !52
  %332 = and i32 %330, %331
  store i32 %332, ptr %100, align 8, !tbaa !80
  br label %333

333:                                              ; preds = %366, %322
  %334 = phi i32 [ %332, %322 ], [ %351, %366 ]
  %335 = phi i32 [ %300, %322 ], [ %362, %366 ]
  %336 = phi i32 [ %310, %322 ], [ %367, %366 ]
  %337 = icmp eq i32 %335, 0
  br i1 %337, label %.loopexit45, label %338

338:                                              ; preds = %333
  %339 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %336, i32 3), !nosanitize !45
  %340 = extractvalue { i32, i1 } %339, 1, !nosanitize !45
  br i1 %340, label %341, label %342, !prof !46, !nosanitize !45

341:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

342:                                              ; preds = %338
  %343 = shl i32 %334, %324
  %344 = extractvalue { i32, i1 } %339, 0, !nosanitize !45
  %345 = add i32 %344, -1
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds nuw i8, ptr %314, i64 %346
  %348 = load i8, ptr %347, align 1, !tbaa !8
  %349 = zext i8 %348 to i32
  %350 = xor i32 %343, %349
  %351 = and i32 %350, %331
  store i32 %351, ptr %100, align 8, !tbaa !80
  %352 = load ptr, ptr %97, align 8, !tbaa !37
  %353 = zext i32 %351 to i64
  %354 = getelementptr inbounds nuw [2 x i8], ptr %352, i64 %353
  %355 = load i16, ptr %354, align 2, !tbaa !62
  %356 = load ptr, ptr %98, align 8, !tbaa !35
  %357 = load i32, ptr %103, align 8, !tbaa !33
  %358 = and i32 %357, %336
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds nuw [2 x i8], ptr %356, i64 %359
  store i16 %355, ptr %360, align 2, !tbaa !62
  %361 = trunc i32 %336 to i16
  store i16 %361, ptr %354, align 2, !tbaa !62
  %362 = add i32 %335, -1
  store i32 %362, ptr %95, align 4, !tbaa !76
  %363 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %299, i32 %362), !nosanitize !45
  %364 = extractvalue { i32, i1 } %363, 1, !nosanitize !45
  br i1 %364, label %365, label %366, !prof !46, !nosanitize !45

365:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

366:                                              ; preds = %342
  %367 = add nuw i32 %336, 1
  %368 = extractvalue { i32, i1 } %363, 0, !nosanitize !45
  %369 = icmp ult i32 %368, 3
  br i1 %369, label %.loopexit45, label %333, !llvm.loop !91

.loopexit45:                                      ; preds = %366, %333, %304
  %370 = icmp ult i32 %299, 262
  br i1 %370, label %371, label %376

371:                                              ; preds = %.loopexit45
  %372 = load ptr, ptr %15, align 8, !tbaa !20
  %373 = getelementptr inbounds nuw i8, ptr %372, i64 8
  %374 = load i32, ptr %373, align 8, !tbaa !81
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %105, !llvm.loop !92

376:                                              ; preds = %371, %.loopexit45, %250
  %377 = phi i32 [ %299, %371 ], [ %299, %.loopexit45 ], [ %251, %250 ]
  %378 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %379 = load i64, ptr %378, align 8, !tbaa !38
  %380 = load i64, ptr %89, align 8, !tbaa !61
  %381 = icmp ult i64 %379, %380
  br i1 %381, label %382, label %417

382:                                              ; preds = %376
  %383 = load i32, ptr %90, align 4, !tbaa !73
  %384 = zext i32 %383 to i64
  %385 = zext i32 %377 to i64
  %386 = add nuw nsw i64 %384, %385
  %387 = icmp ult i64 %379, %386
  br i1 %387, label %388, label %398

388:                                              ; preds = %382
  %389 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %380, i64 %386), !nosanitize !45
  %390 = extractvalue { i64, i1 } %389, 1, !nosanitize !45
  br i1 %390, label %391, label %392, !prof !46, !nosanitize !45

391:                                              ; preds = %388
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

392:                                              ; preds = %388
  %393 = extractvalue { i64, i1 } %389, 0, !nosanitize !45
  %394 = tail call i64 @llvm.umin.i64(i64 %393, i64 258)
  %395 = load ptr, ptr %92, align 8, !tbaa !34
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 %386
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %396, i8 0, i64 %394, i1 false)
  %397 = add nuw nsw i64 %394, %386
  br label %414

398:                                              ; preds = %382
  %399 = add nuw nsw i64 %386, 258
  %400 = icmp ult i64 %379, %399
  br i1 %400, label %401, label %417

401:                                              ; preds = %398
  %402 = sub nuw nsw i64 %399, %379
  %403 = sub i64 %380, %379
  %404 = tail call i64 @llvm.umin.i64(i64 %402, i64 %403)
  %405 = load ptr, ptr %92, align 8, !tbaa !34
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 %379
  %407 = and i64 %404, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %406, i8 0, i64 %407, i1 false)
  %408 = load i64, ptr %378, align 8, !tbaa !38
  %409 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %408, i64 %404), !nosanitize !45
  %410 = extractvalue { i64, i1 } %409, 1, !nosanitize !45
  br i1 %410, label %411, label %412, !prof !46, !nosanitize !45

411:                                              ; preds = %401
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

412:                                              ; preds = %401
  %413 = extractvalue { i64, i1 } %409, 0, !nosanitize !45
  br label %414

414:                                              ; preds = %412, %392
  %415 = phi i64 [ %397, %392 ], [ %413, %412 ]
  store i64 %415, ptr %378, align 8, !tbaa !38
  %416 = load i32, ptr %82, align 4, !tbaa !75
  br label %417

417:                                              ; preds = %414, %398, %376
  %418 = phi i32 [ %377, %376 ], [ %377, %398 ], [ %416, %414 ]
  %419 = icmp ugt i32 %418, 2
  br i1 %419, label %.preheader, label %.loopexit44

.preheader:                                       ; preds = %417, %772
  %420 = phi i32 [ %773, %772 ], [ %418, %417 ]
  %421 = load i32, ptr %90, align 4, !tbaa !73
  %422 = load i32, ptr %101, align 8, !tbaa !53
  %423 = load ptr, ptr %92, align 8, !tbaa !34
  %424 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %421)
  %425 = add i32 %420, -3
  %426 = icmp ugt i32 %424, %425
  br i1 %426, label %427, label %456, !prof !93, !nosanitize !45

427:                                              ; preds = %.preheader
  %428 = load i32, ptr %100, align 8, !tbaa !80
  %429 = add i32 %420, -2
  %430 = load i32, ptr %102, align 4, !tbaa !52
  %431 = load ptr, ptr %97, align 8, !tbaa !37
  %432 = load ptr, ptr %98, align 8, !tbaa !35
  %433 = load i32, ptr %103, align 8, !tbaa !33
  %434 = zext i32 %421 to i64
  br label %435

435:                                              ; preds = %435, %427
  %indvars.iv = phi i64 [ %indvars.iv.next, %435 ], [ %434, %427 ]
  %436 = phi i32 [ %446, %435 ], [ %428, %427 ]
  %437 = phi i32 [ %454, %435 ], [ %429, %427 ]
  %438 = shl i32 %436, %422
  %439 = trunc nuw i64 %indvars.iv to i32
  %440 = add nuw i64 %indvars.iv, 2
  %441 = and i64 %440, 4294967295
  %442 = getelementptr inbounds nuw i8, ptr %423, i64 %441
  %443 = load i8, ptr %442, align 1, !tbaa !8
  %444 = zext i8 %443 to i32
  %445 = xor i32 %438, %444
  %446 = and i32 %445, %430
  store i32 %446, ptr %100, align 8, !tbaa !80
  %447 = zext i32 %446 to i64
  %448 = getelementptr inbounds nuw [2 x i8], ptr %431, i64 %447
  %449 = load i16, ptr %448, align 2, !tbaa !62
  %450 = and i32 %433, %439
  %451 = zext i32 %450 to i64
  %452 = getelementptr inbounds nuw [2 x i8], ptr %432, i64 %451
  store i16 %449, ptr %452, align 2, !tbaa !62
  %453 = trunc i64 %indvars.iv to i16
  store i16 %453, ptr %448, align 2, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %454 = add i32 %437, -1
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %457, label %435, !llvm.loop !94

456:                                              ; preds = %.preheader
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

457:                                              ; preds = %435
  %458 = trunc nuw i64 %indvars.iv.next to i32
  store i32 %458, ptr %90, align 4, !tbaa !73
  store i32 2, ptr %82, align 4, !tbaa !75
  %459 = load i32, ptr %81, align 8, !tbaa !32
  %460 = zext i32 %459 to i64
  br label %461

461:                                              ; preds = %727, %457
  %462 = phi i32 [ %655, %727 ], [ 2, %457 ]
  %463 = load i64, ptr %89, align 8, !tbaa !61
  %464 = zext nneg i32 %462 to i64
  %465 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %463, i64 %464), !nosanitize !45
  %466 = extractvalue { i64, i1 } %465, 1, !nosanitize !45
  br i1 %466, label %467, label %468, !prof !46, !nosanitize !45

467:                                              ; preds = %461
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

468:                                              ; preds = %461
  %469 = extractvalue { i64, i1 } %465, 0, !nosanitize !45
  %470 = load i32, ptr %90, align 4, !tbaa !73
  %471 = zext i32 %470 to i64
  %472 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %469, i64 %471), !nosanitize !45
  %473 = extractvalue { i64, i1 } %472, 1, !nosanitize !45
  br i1 %473, label %474, label %475, !prof !46, !nosanitize !45

474:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

475:                                              ; preds = %468
  %476 = extractvalue { i64, i1 } %472, 0, !nosanitize !45
  %477 = trunc i64 %476 to i32
  %478 = load i32, ptr %81, align 8, !tbaa !32
  %479 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %478, i32 262), !nosanitize !45
  %480 = extractvalue { i32, i1 } %479, 1, !nosanitize !45
  br i1 %480, label %481, label %482, !prof !46, !nosanitize !45

481:                                              ; preds = %475
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

482:                                              ; preds = %475
  %483 = extractvalue { i32, i1 } %479, 0, !nosanitize !45
  %484 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %459, i32 %483), !nosanitize !45
  %485 = extractvalue { i32, i1 } %484, 1, !nosanitize !45
  br i1 %485, label %486, label %487, !prof !46, !nosanitize !45

486:                                              ; preds = %482
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

487:                                              ; preds = %482
  %488 = extractvalue { i32, i1 } %484, 0, !nosanitize !45
  %489 = icmp ult i32 %470, %488
  br i1 %489, label %606, label %490

490:                                              ; preds = %487
  %491 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %459, i32 %477), !nosanitize !45
  %492 = extractvalue { i32, i1 } %491, 1, !nosanitize !45
  br i1 %492, label %493, label %494, !prof !46, !nosanitize !45

493:                                              ; preds = %490
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

494:                                              ; preds = %490
  %495 = extractvalue { i32, i1 } %491, 0, !nosanitize !45
  %496 = load ptr, ptr %92, align 8, !tbaa !34
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 %460
  %498 = zext i32 %495 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %496, ptr align 1 %497, i64 %498, i1 false)
  %499 = load i32, ptr %93, align 8, !tbaa !83
  %500 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %499, i32 %459), !nosanitize !45
  %501 = extractvalue { i32, i1 } %500, 1, !nosanitize !45
  br i1 %501, label %502, label %503, !prof !46, !nosanitize !45

502:                                              ; preds = %494
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

503:                                              ; preds = %494
  %504 = extractvalue { i32, i1 } %500, 0, !nosanitize !45
  store i32 %504, ptr %93, align 8, !tbaa !83
  %505 = load i32, ptr %90, align 4, !tbaa !73
  %506 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %505, i32 %459), !nosanitize !45
  %507 = extractvalue { i32, i1 } %506, 1, !nosanitize !45
  br i1 %507, label %508, label %509, !prof !46, !nosanitize !45

508:                                              ; preds = %503
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

509:                                              ; preds = %503
  %510 = extractvalue { i32, i1 } %506, 0, !nosanitize !45
  store i32 %510, ptr %90, align 4, !tbaa !73
  %511 = load i64, ptr %94, align 8, !tbaa !74
  %512 = sub nsw i64 %511, %460
  store i64 %512, ptr %94, align 8, !tbaa !74
  %513 = load i32, ptr %95, align 4, !tbaa !76
  %514 = icmp ugt i32 %513, %510
  br i1 %514, label %515, label %516

515:                                              ; preds = %509
  store i32 %510, ptr %95, align 4, !tbaa !76
  br label %516

516:                                              ; preds = %515, %509
  %517 = load i32, ptr %81, align 8, !tbaa !32
  %518 = load i32, ptr %96, align 4, !tbaa !36
  %519 = load ptr, ptr %97, align 8, !tbaa !37
  %520 = zext i32 %518 to i64
  %521 = getelementptr inbounds nuw [2 x i8], ptr %519, i64 %520
  %522 = icmp eq i32 %518, 0
  br i1 %522, label %546, label %523, !prof !46, !nosanitize !45

523:                                              ; preds = %516
  %524 = icmp ult i32 %518, 8
  br i1 %524, label %.preheader142, label %525

.preheader142:                                    ; preds = %540, %523
  %.ph143 = phi ptr [ %542, %540 ], [ %521, %523 ]
  %.ph144 = phi i32 [ %544, %540 ], [ %518, %523 ]
  br label %552

525:                                              ; preds = %523
  %526 = and i64 %520, 4294967288
  %527 = insertelement <8 x i32> poison, i32 %517, i64 0
  %528 = shufflevector <8 x i32> %527, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %529

529:                                              ; preds = %529, %525
  %530 = phi i64 [ 0, %525 ], [ %538, %529 ]
  %531 = mul nsw i64 %530, -2
  %532 = getelementptr i8, ptr %521, i64 %531
  %533 = getelementptr inbounds i8, ptr %532, i64 -16
  %534 = load <8 x i16>, ptr %533, align 2, !tbaa !62
  %535 = zext <8 x i16> %534 to <8 x i32>
  %536 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %535, <8 x i32> %528)
  %537 = trunc nuw <8 x i32> %536 to <8 x i16>
  store <8 x i16> %537, ptr %533, align 2, !tbaa !62
  %538 = add nuw nsw i64 %530, 8
  %539 = icmp eq i64 %538, %526
  br i1 %539, label %540, label %529, !llvm.loop !95

540:                                              ; preds = %529
  %541 = mul nsw i64 %526, -2
  %542 = getelementptr i8, ptr %521, i64 %541
  %543 = trunc nuw i64 %526 to i32
  %544 = sub i32 %518, %543
  %545 = icmp eq i64 %526, %520
  br i1 %545, label %.loopexit43, label %.preheader142

546:                                              ; preds = %516
  %547 = getelementptr inbounds i8, ptr %521, i64 -2
  %548 = load i16, ptr %547, align 2, !tbaa !62
  %549 = zext i16 %548 to i32
  %550 = tail call i32 @llvm.usub.sat.i32(i32 %549, i32 %517)
  %551 = trunc nuw i32 %550 to i16
  store i16 %551, ptr %547, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

552:                                              ; preds = %.preheader142, %552
  %553 = phi ptr [ %555, %552 ], [ %.ph143, %.preheader142 ]
  %554 = phi i32 [ %560, %552 ], [ %.ph144, %.preheader142 ]
  %555 = getelementptr inbounds i8, ptr %553, i64 -2
  %556 = load i16, ptr %555, align 2, !tbaa !62
  %557 = zext i16 %556 to i32
  %558 = tail call i32 @llvm.usub.sat.i32(i32 %557, i32 %517)
  %559 = trunc nuw i32 %558 to i16
  store i16 %559, ptr %555, align 2, !tbaa !62
  %560 = add i32 %554, -1
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %.loopexit43, label %552, !llvm.loop !96

.loopexit43:                                      ; preds = %552, %540
  %562 = icmp eq i32 %517, 0
  br i1 %562, label %563, label %564, !prof !46, !nosanitize !45

563:                                              ; preds = %.loopexit43
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

564:                                              ; preds = %.loopexit43
  %565 = load ptr, ptr %98, align 8, !tbaa !35
  %566 = zext i32 %517 to i64
  %567 = getelementptr inbounds nuw [2 x i8], ptr %565, i64 %566
  %568 = icmp ult i32 %517, 8
  br i1 %568, label %.preheader140, label %569

569:                                              ; preds = %564
  %570 = and i64 %566, 4294967288
  %571 = insertelement <8 x i32> poison, i32 %517, i64 0
  %572 = shufflevector <8 x i32> %571, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %573

573:                                              ; preds = %573, %569
  %574 = phi i64 [ 0, %569 ], [ %582, %573 ]
  %575 = mul nsw i64 %574, -2
  %576 = getelementptr i8, ptr %567, i64 %575
  %577 = getelementptr inbounds i8, ptr %576, i64 -16
  %578 = load <8 x i16>, ptr %577, align 2, !tbaa !62
  %579 = zext <8 x i16> %578 to <8 x i32>
  %580 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %579, <8 x i32> %572)
  %581 = trunc nuw <8 x i32> %580 to <8 x i16>
  store <8 x i16> %581, ptr %577, align 2, !tbaa !62
  %582 = add nuw nsw i64 %574, 8
  %583 = icmp eq i64 %582, %570
  br i1 %583, label %584, label %573, !llvm.loop !97

584:                                              ; preds = %573
  %585 = mul nsw i64 %570, -2
  %586 = getelementptr i8, ptr %567, i64 %585
  %587 = trunc nuw i64 %570 to i32
  %588 = sub i32 %517, %587
  %589 = icmp eq i64 %570, %566
  br i1 %589, label %.loopexit42, label %.preheader140

.preheader140:                                    ; preds = %584, %564
  %.ph = phi ptr [ %586, %584 ], [ %567, %564 ]
  %.ph141 = phi i32 [ %588, %584 ], [ %517, %564 ]
  br label %590

590:                                              ; preds = %.preheader140, %590
  %591 = phi ptr [ %593, %590 ], [ %.ph, %.preheader140 ]
  %592 = phi i32 [ %598, %590 ], [ %.ph141, %.preheader140 ]
  %593 = getelementptr inbounds i8, ptr %591, i64 -2
  %594 = load i16, ptr %593, align 2, !tbaa !62
  %595 = zext i16 %594 to i32
  %596 = tail call i32 @llvm.usub.sat.i32(i32 %595, i32 %517)
  %597 = trunc nuw i32 %596 to i16
  store i16 %597, ptr %593, align 2, !tbaa !62
  %598 = add i32 %592, -1
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %.loopexit42, label %590, !llvm.loop !98

.loopexit42:                                      ; preds = %590, %584
  store i32 1, ptr %99, align 8, !tbaa !63
  %600 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %477, i32 %459), !nosanitize !45
  %601 = extractvalue { i32, i1 } %600, 1, !nosanitize !45
  br i1 %601, label %602, label %603, !prof !46, !nosanitize !45

602:                                              ; preds = %.loopexit42
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

603:                                              ; preds = %.loopexit42
  %604 = extractvalue { i32, i1 } %600, 0, !nosanitize !45
  %605 = load i32, ptr %82, align 4, !tbaa !75
  br label %606

606:                                              ; preds = %603, %487
  %607 = phi i32 [ %605, %603 ], [ %462, %487 ]
  %608 = phi i32 [ %510, %603 ], [ %470, %487 ]
  %609 = phi i32 [ %604, %603 ], [ %477, %487 ]
  %610 = load ptr, ptr %15, align 8, !tbaa !20
  %611 = getelementptr inbounds nuw i8, ptr %610, i64 8
  %612 = load i32, ptr %611, align 8, !tbaa !81
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %732, label %614

614:                                              ; preds = %606
  %615 = load ptr, ptr %92, align 8, !tbaa !34
  %616 = zext i32 %608 to i64
  %617 = getelementptr inbounds nuw i8, ptr %615, i64 %616
  %618 = zext i32 %607 to i64
  %619 = getelementptr inbounds nuw i8, ptr %617, i64 %618
  %620 = tail call i32 @llvm.umin.i32(i32 %612, i32 %609)
  %621 = icmp eq i32 %609, 0
  br i1 %621, label %649, label %622

622:                                              ; preds = %614
  %623 = sub i32 %612, %620
  store i32 %623, ptr %611, align 8, !tbaa !81
  %624 = load ptr, ptr %610, align 8, !tbaa !82
  %625 = zext i32 %620 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %619, ptr align 1 %624, i64 %625, i1 false)
  %626 = getelementptr inbounds nuw i8, ptr %610, i64 56
  %627 = load ptr, ptr %626, align 8, !tbaa !19
  %628 = getelementptr inbounds nuw i8, ptr %627, i64 48
  %629 = load i32, ptr %628, align 8, !tbaa !30
  switch i32 %629, label %638 [
    i32 1, label %630
    i32 2, label %634
  ]

630:                                              ; preds = %622
  %631 = getelementptr inbounds nuw i8, ptr %610, i64 96
  %632 = load i64, ptr %631, align 8, !tbaa !59
  %633 = tail call i64 @adler32(i64 noundef %632, ptr noundef %619, i32 noundef %620) #12
  store i64 %633, ptr %631, align 8, !tbaa !59
  br label %638

634:                                              ; preds = %622
  %635 = getelementptr inbounds nuw i8, ptr %610, i64 96
  %636 = load i64, ptr %635, align 8, !tbaa !59
  %637 = tail call i64 @crc32(i64 noundef %636, ptr noundef %619, i32 noundef %620) #12
  store i64 %637, ptr %635, align 8, !tbaa !59
  br label %638

638:                                              ; preds = %634, %630, %622
  %639 = load ptr, ptr %610, align 8, !tbaa !82
  %640 = getelementptr inbounds nuw i8, ptr %639, i64 %625
  store ptr %640, ptr %610, align 8, !tbaa !82
  %641 = getelementptr inbounds nuw i8, ptr %610, i64 16
  %642 = load i64, ptr %641, align 8, !tbaa !55
  %643 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %642, i64 %625), !nosanitize !45
  %644 = extractvalue { i64, i1 } %643, 1, !nosanitize !45
  br i1 %644, label %645, label %646, !prof !46, !nosanitize !45

645:                                              ; preds = %638
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

646:                                              ; preds = %638
  %647 = extractvalue { i64, i1 } %643, 0, !nosanitize !45
  store i64 %647, ptr %641, align 8, !tbaa !55
  %648 = load i32, ptr %82, align 4, !tbaa !75
  br label %649

649:                                              ; preds = %646, %614
  %650 = phi i32 [ %607, %614 ], [ %648, %646 ]
  %651 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %650, i32 %620), !nosanitize !45
  %652 = extractvalue { i32, i1 } %651, 1, !nosanitize !45
  br i1 %652, label %653, label %654, !prof !46, !nosanitize !45

653:                                              ; preds = %649
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

654:                                              ; preds = %649
  %655 = extractvalue { i32, i1 } %651, 0, !nosanitize !45
  store i32 %655, ptr %82, align 4, !tbaa !75
  %656 = load i32, ptr %95, align 4, !tbaa !76
  %657 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %655, i32 %656), !nosanitize !45
  %658 = extractvalue { i32, i1 } %657, 1, !nosanitize !45
  br i1 %658, label %659, label %660, !prof !46, !nosanitize !45

659:                                              ; preds = %654
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

660:                                              ; preds = %654
  %661 = extractvalue { i32, i1 } %657, 0, !nosanitize !45
  %662 = icmp ugt i32 %661, 2
  br i1 %662, label %663, label %.loopexit

663:                                              ; preds = %660
  %664 = load i32, ptr %90, align 4, !tbaa !73
  %665 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %664, i32 %656), !nosanitize !45
  %666 = extractvalue { i32, i1 } %665, 0, !nosanitize !45
  %667 = extractvalue { i32, i1 } %665, 1, !nosanitize !45
  br i1 %667, label %668, label %669, !prof !46, !nosanitize !45

668:                                              ; preds = %663
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

669:                                              ; preds = %663
  %670 = load ptr, ptr %92, align 8, !tbaa !34
  %671 = zext i32 %666 to i64
  %672 = getelementptr inbounds nuw i8, ptr %670, i64 %671
  %673 = load i8, ptr %672, align 1, !tbaa !8
  %674 = zext i8 %673 to i32
  store i32 %674, ptr %100, align 8, !tbaa !80
  %675 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %666, i32 1), !nosanitize !45
  %676 = extractvalue { i32, i1 } %675, 1, !nosanitize !45
  br i1 %676, label %677, label %678, !prof !46, !nosanitize !45

677:                                              ; preds = %669
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

678:                                              ; preds = %669
  %679 = extractvalue { i32, i1 } %675, 0, !nosanitize !45
  %680 = load i32, ptr %101, align 8, !tbaa !53
  %681 = shl i32 %674, %680
  %682 = zext i32 %679 to i64
  %683 = getelementptr inbounds nuw i8, ptr %670, i64 %682
  %684 = load i8, ptr %683, align 1, !tbaa !8
  %685 = zext i8 %684 to i32
  %686 = xor i32 %681, %685
  %687 = load i32, ptr %102, align 4, !tbaa !52
  %688 = and i32 %686, %687
  store i32 %688, ptr %100, align 8, !tbaa !80
  br label %689

689:                                              ; preds = %722, %678
  %690 = phi i32 [ %688, %678 ], [ %707, %722 ]
  %691 = phi i32 [ %656, %678 ], [ %718, %722 ]
  %692 = phi i32 [ %666, %678 ], [ %723, %722 ]
  %693 = icmp eq i32 %691, 0
  br i1 %693, label %.loopexit, label %694

694:                                              ; preds = %689
  %695 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %692, i32 3), !nosanitize !45
  %696 = extractvalue { i32, i1 } %695, 1, !nosanitize !45
  br i1 %696, label %697, label %698, !prof !46, !nosanitize !45

697:                                              ; preds = %694
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

698:                                              ; preds = %694
  %699 = shl i32 %690, %680
  %700 = extractvalue { i32, i1 } %695, 0, !nosanitize !45
  %701 = add i32 %700, -1
  %702 = zext i32 %701 to i64
  %703 = getelementptr inbounds nuw i8, ptr %670, i64 %702
  %704 = load i8, ptr %703, align 1, !tbaa !8
  %705 = zext i8 %704 to i32
  %706 = xor i32 %699, %705
  %707 = and i32 %706, %687
  store i32 %707, ptr %100, align 8, !tbaa !80
  %708 = load ptr, ptr %97, align 8, !tbaa !37
  %709 = zext i32 %707 to i64
  %710 = getelementptr inbounds nuw [2 x i8], ptr %708, i64 %709
  %711 = load i16, ptr %710, align 2, !tbaa !62
  %712 = load ptr, ptr %98, align 8, !tbaa !35
  %713 = load i32, ptr %103, align 8, !tbaa !33
  %714 = and i32 %713, %692
  %715 = zext i32 %714 to i64
  %716 = getelementptr inbounds nuw [2 x i8], ptr %712, i64 %715
  store i16 %711, ptr %716, align 2, !tbaa !62
  %717 = trunc i32 %692 to i16
  store i16 %717, ptr %710, align 2, !tbaa !62
  %718 = add i32 %691, -1
  store i32 %718, ptr %95, align 4, !tbaa !76
  %719 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %655, i32 %718), !nosanitize !45
  %720 = extractvalue { i32, i1 } %719, 1, !nosanitize !45
  br i1 %720, label %721, label %722, !prof !46, !nosanitize !45

721:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

722:                                              ; preds = %698
  %723 = add nuw i32 %692, 1
  %724 = extractvalue { i32, i1 } %719, 0, !nosanitize !45
  %725 = icmp ult i32 %724, 3
  br i1 %725, label %.loopexit, label %689, !llvm.loop !91

.loopexit:                                        ; preds = %722, %689, %660
  %726 = icmp ult i32 %655, 262
  br i1 %726, label %727, label %732

727:                                              ; preds = %.loopexit
  %728 = load ptr, ptr %15, align 8, !tbaa !20
  %729 = getelementptr inbounds nuw i8, ptr %728, i64 8
  %730 = load i32, ptr %729, align 8, !tbaa !81
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %732, label %461, !llvm.loop !92

732:                                              ; preds = %727, %.loopexit, %606
  %733 = phi i32 [ %655, %727 ], [ %655, %.loopexit ], [ %607, %606 ]
  %734 = load i64, ptr %378, align 8, !tbaa !38
  %735 = load i64, ptr %89, align 8, !tbaa !61
  %736 = icmp ult i64 %734, %735
  br i1 %736, label %737, label %772

737:                                              ; preds = %732
  %738 = load i32, ptr %90, align 4, !tbaa !73
  %739 = zext i32 %738 to i64
  %740 = zext i32 %733 to i64
  %741 = add nuw nsw i64 %739, %740
  %742 = icmp ult i64 %734, %741
  br i1 %742, label %743, label %753

743:                                              ; preds = %737
  %744 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %735, i64 %741), !nosanitize !45
  %745 = extractvalue { i64, i1 } %744, 1, !nosanitize !45
  br i1 %745, label %746, label %747, !prof !46, !nosanitize !45

746:                                              ; preds = %743
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

747:                                              ; preds = %743
  %748 = extractvalue { i64, i1 } %744, 0, !nosanitize !45
  %749 = tail call i64 @llvm.umin.i64(i64 %748, i64 258)
  %750 = load ptr, ptr %92, align 8, !tbaa !34
  %751 = getelementptr inbounds nuw i8, ptr %750, i64 %741
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %751, i8 0, i64 %749, i1 false)
  %752 = add nuw nsw i64 %749, %741
  br label %769

753:                                              ; preds = %737
  %754 = add nuw nsw i64 %741, 258
  %755 = icmp ult i64 %734, %754
  br i1 %755, label %756, label %772

756:                                              ; preds = %753
  %757 = sub nuw nsw i64 %754, %734
  %758 = sub i64 %735, %734
  %759 = tail call i64 @llvm.umin.i64(i64 %757, i64 %758)
  %760 = load ptr, ptr %92, align 8, !tbaa !34
  %761 = getelementptr inbounds nuw i8, ptr %760, i64 %734
  %762 = and i64 %759, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %761, i8 0, i64 %762, i1 false)
  %763 = load i64, ptr %378, align 8, !tbaa !38
  %764 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %763, i64 %759), !nosanitize !45
  %765 = extractvalue { i64, i1 } %764, 1, !nosanitize !45
  br i1 %765, label %766, label %767, !prof !46, !nosanitize !45

766:                                              ; preds = %756
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

767:                                              ; preds = %756
  %768 = extractvalue { i64, i1 } %764, 0, !nosanitize !45
  br label %769

769:                                              ; preds = %767, %747
  %770 = phi i64 [ %752, %747 ], [ %768, %767 ]
  store i64 %770, ptr %378, align 8, !tbaa !38
  %771 = load i32, ptr %82, align 4, !tbaa !75
  br label %772

772:                                              ; preds = %769, %753, %732
  %773 = phi i32 [ %733, %732 ], [ %733, %753 ], [ %771, %769 ]
  %774 = icmp ugt i32 %773, 2
  br i1 %774, label %.preheader, label %.loopexit44, !llvm.loop !99

.loopexit44:                                      ; preds = %772, %417
  %775 = phi i32 [ %418, %417 ], [ %773, %772 ]
  %776 = load i32, ptr %90, align 4, !tbaa !73
  %777 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %776, i32 %775), !nosanitize !45
  %778 = extractvalue { i32, i1 } %777, 1, !nosanitize !45
  br i1 %778, label %779, label %780, !prof !46, !nosanitize !45

779:                                              ; preds = %.loopexit44
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

780:                                              ; preds = %.loopexit44
  %781 = extractvalue { i32, i1 } %777, 0, !nosanitize !45
  store i32 %781, ptr %90, align 4, !tbaa !73
  %782 = zext i32 %781 to i64
  store i64 %782, ptr %94, align 8, !tbaa !74
  store i32 %775, ptr %95, align 4, !tbaa !76
  store i32 0, ptr %82, align 4, !tbaa !75
  %783 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %783, align 8, !tbaa !77
  %784 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %784, align 8, !tbaa !78
  %785 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %785, align 8, !tbaa !79
  store ptr %88, ptr %0, align 8, !tbaa !82
  store i32 %87, ptr %86, align 8, !tbaa !81
  store i32 %27, ptr %26, align 8, !tbaa !30
  br label %786

786:                                              ; preds = %780, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
  %787 = phi i32 [ 0, %780 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %787
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  %39 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %42

40:                                               ; preds = %34
  %41 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %43, ptr %44, align 8, !tbaa !59
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %45, align 4, !tbaa !60
  tail call void @_tr_init(ptr noundef nonnull %13) #12
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
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #12
  %49 = ashr i32 %37, %40
  %50 = sub nsw i32 %36, %40
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %.loopexit, label %35, !llvm.loop !104

.loopexit:                                        ; preds = %35, %25, %23, %20, %17, %13, %9, %5, %3
  %52 = phi i32 [ -5, %23 ], [ -2, %13 ], [ -5, %25 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ 0, %35 ]
  ret i32 %52
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1082, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1082, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1082, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1082, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1082

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %1082 [
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
  br i1 %28, label %1082, label %29

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
  br i1 %44, label %1039, label %45

45:                                               ; preds = %34, %29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %47 = load i32, ptr %46, align 4, !tbaa !60
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %1039, label %49

49:                                               ; preds = %45
  switch i32 %22, label %1082 [
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
  br label %1082

68:                                               ; preds = %63, %58
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %70 = load i32, ptr %69, align 8, !tbaa !107
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %73, ptr %74, align 8, !tbaa !9
  br label %1024

75:                                               ; preds = %68
  store i32 5, ptr %46, align 4, !tbaa !60
  %76 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %77 = load i64, ptr %76, align 8, !tbaa !57
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %124, label %79

79:                                               ; preds = %75
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #12
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

99:                                               ; preds = %86
  %100 = extractvalue { i64, i1 } %96, 0, !nosanitize !45
  store i64 %100, ptr %94, align 8, !tbaa !108
  %101 = load i32, ptr %69, align 8, !tbaa !107
  %102 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %101, i32 %84), !nosanitize !45
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !45
  br i1 %103, label %104, label %105, !prof !46, !nosanitize !45

104:                                              ; preds = %99
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

105:                                              ; preds = %99
  %106 = extractvalue { i32, i1 } %102, 0, !nosanitize !45
  store i32 %106, ptr %69, align 8, !tbaa !107
  %107 = load i64, ptr %76, align 8, !tbaa !57
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 %83), !nosanitize !45
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !45
  br i1 %109, label %110, label %111, !prof !46, !nosanitize !45

110:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  br label %1024

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
  br label %1024

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
  br i1 %139, label %982, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %141, ptr %142, align 8, !tbaa !9
  br label %1024

143:                                              ; preds = %134
  %144 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %145 = load i32, ptr %144, align 8, !tbaa !30
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 113, ptr %21, align 8, !tbaa !29
  br label %979

148:                                              ; preds = %143
  %149 = getelementptr inbounds nuw i8, ptr %15, i64 84
  %150 = load i32, ptr %149, align 4, !tbaa !31
  %151 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %150, i32 8), !nosanitize !45
  %152 = extractvalue { i32, i1 } %151, 1, !nosanitize !45
  br i1 %152, label %153, label %154, !prof !46, !nosanitize !45

153:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

238:                                              ; preds = %228
  %239 = extractvalue { i64, i1 } %235, 0, !nosanitize !45
  %240 = load ptr, ptr %182, align 8, !tbaa !40
  store i64 %239, ptr %76, align 8, !tbaa !57
  %241 = getelementptr inbounds nuw i8, ptr %240, i64 %234
  store i8 %223, ptr %241, align 1, !tbaa !8
  br label %242

242:                                              ; preds = %238, %191
  %243 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
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
  br label %1024

250:                                              ; preds = %247, %134
  %251 = phi i32 [ %248, %247 ], [ %136, %134 ]
  %252 = icmp eq i32 %251, 57
  br i1 %252, label %253, label %508

253:                                              ; preds = %250
  %254 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %254, ptr %255, align 8, !tbaa !59
  %256 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %257 = load i64, ptr %76, align 8, !tbaa !57
  %258 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %257, i64 1), !nosanitize !45
  %259 = extractvalue { i64, i1 } %258, 1, !nosanitize !45
  br i1 %259, label %260, label %261, !prof !46, !nosanitize !45

260:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  br label %1024

354:                                              ; preds = %277
  br i1 %286, label %355, label %356, !prof !46, !nosanitize !45

355:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  %503 = tail call i64 @crc32_z(i64 noundef %500, ptr noundef %501, i64 noundef %502) #12
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
  switch i32 %509, label %979 [
    i32 69, label %510
    i32 73, label %711
    i32 91, label %823
    i32 103, label %934
  ]

510:                                              ; preds = %508, %504
  %511 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %512 = load ptr, ptr %511, align 8, !tbaa !100
  %513 = getelementptr inbounds nuw i8, ptr %512, i64 24
  %514 = load ptr, ptr %513, align 8, !tbaa !112
  %515 = icmp eq ptr %514, null
  br i1 %515, label %710, label %516

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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  br i1 %538, label %539, label %683

539:                                              ; preds = %535
  %540 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %537, i64 %527), !nosanitize !45
  %541 = extractvalue { i64, i1 } %540, 0, !nosanitize !45
  %542 = extractvalue { i64, i1 } %540, 1, !nosanitize !45
  br i1 %542, label %612, label %543, !prof !46, !nosanitize !45

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
  %559 = tail call i64 @crc32_z(i64 noundef %558, ptr noundef %557, i64 noundef %555) #12
  store i64 %559, ptr %530, align 8, !tbaa !59
  br label %560

560:                                              ; preds = %554, %543
  %561 = load i64, ptr %521, align 8, !tbaa !118
  %562 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %561, i64 %541), !nosanitize !45
  %563 = extractvalue { i64, i1 } %562, 1, !nosanitize !45
  br i1 %563, label %.loopexit, label %564, !prof !46, !nosanitize !45

564:                                              ; preds = %560
  %565 = extractvalue { i64, i1 } %562, 0, !nosanitize !45
  store i64 %565, ptr %521, align 8, !tbaa !118
  %566 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %566) #12
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
  br i1 %584, label %.loopexit37, label %585, !prof !46, !nosanitize !45

585:                                              ; preds = %574
  %586 = extractvalue { i64, i1 } %583, 0, !nosanitize !45
  store i64 %586, ptr %531, align 8, !tbaa !108
  %587 = load i32, ptr %69, align 8, !tbaa !107
  %588 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %587, i32 %572), !nosanitize !45
  %589 = extractvalue { i32, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %.loopexit38, label %590, !prof !46, !nosanitize !45

590:                                              ; preds = %585
  %591 = extractvalue { i32, i1 } %588, 0, !nosanitize !45
  store i32 %591, ptr %69, align 8, !tbaa !107
  %592 = load i64, ptr %567, align 8, !tbaa !57
  %593 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %592, i64 %571), !nosanitize !45
  %594 = extractvalue { i64, i1 } %593, 1, !nosanitize !45
  br i1 %594, label %.loopexit39, label %595, !prof !46, !nosanitize !45

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
  br i1 %603, label %604, label %.loopexit40

604:                                              ; preds = %601
  %605 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %532, i64 %541), !nosanitize !45
  %606 = extractvalue { i64, i1 } %605, 1, !nosanitize !45
  br i1 %606, label %.loopexit41, label %.preheader, !prof !46, !nosanitize !45

607:                                              ; preds = %526
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

.preheader:                                       ; preds = %604, %675
  %608 = phi { i64, i1 } [ %676, %675 ], [ %605, %604 ]
  %609 = extractvalue { i64, i1 } %608, 0
  %610 = load i64, ptr %528, align 8, !tbaa !41
  %611 = icmp ugt i64 %609, %610
  br i1 %611, label %613, label %678

612:                                              ; preds = %539
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

613:                                              ; preds = %.preheader
  %614 = load ptr, ptr %529, align 8, !tbaa !40
  %615 = load ptr, ptr %511, align 8, !tbaa !100
  %616 = getelementptr inbounds nuw i8, ptr %615, i64 24
  %617 = load ptr, ptr %616, align 8, !tbaa !112
  %618 = load i64, ptr %521, align 8, !tbaa !118
  %619 = getelementptr inbounds nuw i8, ptr %617, i64 %618
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %614, ptr align 1 %619, i64 %610, i1 false)
  %620 = load i64, ptr %528, align 8, !tbaa !41
  store i64 %620, ptr %76, align 8, !tbaa !57
  %621 = load ptr, ptr %511, align 8, !tbaa !100
  %622 = getelementptr inbounds nuw i8, ptr %621, i64 68
  %623 = load i32, ptr %622, align 4, !tbaa !114
  %624 = icmp ne i32 %623, 0
  %625 = icmp ne i64 %620, 0
  %626 = select i1 %624, i1 %625, i1 false
  br i1 %626, label %627, label %631

627:                                              ; preds = %613
  %628 = load ptr, ptr %529, align 8, !tbaa !40
  %629 = load i64, ptr %530, align 8, !tbaa !59
  %630 = tail call i64 @crc32_z(i64 noundef %629, ptr noundef %628, i64 noundef %620) #12
  store i64 %630, ptr %530, align 8, !tbaa !59
  br label %631

631:                                              ; preds = %627, %613
  %632 = load i64, ptr %521, align 8, !tbaa !118
  %633 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %632, i64 %610), !nosanitize !45
  %634 = extractvalue { i64, i1 } %633, 1, !nosanitize !45
  br i1 %634, label %.loopexit, label %635, !prof !46, !nosanitize !45

.loopexit:                                        ; preds = %631, %560
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

635:                                              ; preds = %631
  %636 = extractvalue { i64, i1 } %633, 0, !nosanitize !45
  store i64 %636, ptr %521, align 8, !tbaa !118
  %637 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %637) #12
  %638 = getelementptr inbounds nuw i8, ptr %637, i64 40
  %639 = load i64, ptr %638, align 8, !tbaa !57
  %640 = load i32, ptr %69, align 8, !tbaa !107
  %641 = zext i32 %640 to i64
  %642 = tail call i64 @llvm.umin.i64(i64 %639, i64 %641)
  %643 = trunc nuw i64 %642 to i32
  %644 = icmp eq i64 %642, 0
  br i1 %644, label %672, label %645

645:                                              ; preds = %635
  %646 = load ptr, ptr %51, align 8, !tbaa !106
  %647 = getelementptr inbounds nuw i8, ptr %637, i64 32
  %648 = load ptr, ptr %647, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %646, ptr align 1 %648, i64 %642, i1 false)
  %649 = load ptr, ptr %51, align 8, !tbaa !106
  %650 = getelementptr inbounds nuw i8, ptr %649, i64 %642
  store ptr %650, ptr %51, align 8, !tbaa !106
  %651 = load ptr, ptr %647, align 8, !tbaa !58
  %652 = getelementptr inbounds nuw i8, ptr %651, i64 %642
  store ptr %652, ptr %647, align 8, !tbaa !58
  %653 = load i64, ptr %531, align 8, !tbaa !108
  %654 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %653, i64 %642), !nosanitize !45
  %655 = extractvalue { i64, i1 } %654, 1, !nosanitize !45
  br i1 %655, label %.loopexit37, label %656, !prof !46, !nosanitize !45

.loopexit37:                                      ; preds = %645, %574
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

656:                                              ; preds = %645
  %657 = extractvalue { i64, i1 } %654, 0, !nosanitize !45
  store i64 %657, ptr %531, align 8, !tbaa !108
  %658 = load i32, ptr %69, align 8, !tbaa !107
  %659 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %658, i32 %643), !nosanitize !45
  %660 = extractvalue { i32, i1 } %659, 1, !nosanitize !45
  br i1 %660, label %.loopexit38, label %661, !prof !46, !nosanitize !45

.loopexit38:                                      ; preds = %656, %585
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

661:                                              ; preds = %656
  %662 = extractvalue { i32, i1 } %659, 0, !nosanitize !45
  store i32 %662, ptr %69, align 8, !tbaa !107
  %663 = load i64, ptr %638, align 8, !tbaa !57
  %664 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %663, i64 %642), !nosanitize !45
  %665 = extractvalue { i64, i1 } %664, 1, !nosanitize !45
  br i1 %665, label %.loopexit39, label %666, !prof !46, !nosanitize !45

.loopexit39:                                      ; preds = %661, %590
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

666:                                              ; preds = %661
  %667 = extractvalue { i64, i1 } %664, 0, !nosanitize !45
  store i64 %667, ptr %638, align 8, !tbaa !57
  %668 = icmp eq i64 %667, 0
  br i1 %668, label %669, label %672

669:                                              ; preds = %666
  %670 = getelementptr inbounds nuw i8, ptr %637, i64 16
  %671 = load ptr, ptr %670, align 8, !tbaa !40
  store ptr %671, ptr %647, align 8, !tbaa !58
  br label %672

672:                                              ; preds = %669, %666, %635
  %673 = load i64, ptr %76, align 8, !tbaa !57
  %674 = icmp eq i64 %673, 0
  br i1 %674, label %675, label %.loopexit40

.loopexit40:                                      ; preds = %672, %601
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1024

675:                                              ; preds = %672
  %676 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %609, i64 %610), !nosanitize !45
  %677 = extractvalue { i64, i1 } %676, 1, !nosanitize !45
  br i1 %677, label %.loopexit41, label %.preheader, !prof !46, !llvm.loop !119, !nosanitize !45

.loopexit41:                                      ; preds = %675, %604
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

678:                                              ; preds = %.preheader
  %679 = load ptr, ptr %511, align 8, !tbaa !100
  %680 = getelementptr inbounds nuw i8, ptr %679, i64 24
  %681 = load ptr, ptr %680, align 8, !tbaa !112
  %682 = load i64, ptr %521, align 8, !tbaa !118
  br label %683

683:                                              ; preds = %678, %535
  %684 = phi i64 [ %522, %535 ], [ %682, %678 ]
  %685 = phi ptr [ %514, %535 ], [ %681, %678 ]
  %686 = phi i64 [ %527, %535 ], [ 0, %678 ]
  %687 = phi i64 [ %532, %535 ], [ %609, %678 ]
  %688 = load ptr, ptr %529, align 8, !tbaa !40
  %689 = getelementptr inbounds nuw i8, ptr %688, i64 %686
  %690 = getelementptr inbounds nuw i8, ptr %685, i64 %684
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %689, ptr align 1 %690, i64 %687, i1 false)
  %691 = load i64, ptr %76, align 8, !tbaa !57
  %692 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %691, i64 %687), !nosanitize !45
  %693 = extractvalue { i64, i1 } %692, 0, !nosanitize !45
  %694 = extractvalue { i64, i1 } %692, 1, !nosanitize !45
  br i1 %694, label %695, label %696, !prof !46, !nosanitize !45

695:                                              ; preds = %683
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

696:                                              ; preds = %683
  store i64 %693, ptr %76, align 8, !tbaa !57
  %697 = load ptr, ptr %511, align 8, !tbaa !100
  %698 = getelementptr inbounds nuw i8, ptr %697, i64 68
  %699 = load i32, ptr %698, align 4, !tbaa !114
  %700 = icmp ne i32 %699, 0
  %701 = icmp ugt i64 %693, %686
  %702 = select i1 %700, i1 %701, i1 false
  br i1 %702, label %703, label %709

703:                                              ; preds = %696
  %704 = sub nuw i64 %693, %686
  %705 = load ptr, ptr %529, align 8, !tbaa !40
  %706 = getelementptr inbounds nuw i8, ptr %705, i64 %686
  %707 = load i64, ptr %530, align 8, !tbaa !59
  %708 = tail call i64 @crc32_z(i64 noundef %707, ptr noundef %706, i64 noundef %704) #12
  store i64 %708, ptr %530, align 8, !tbaa !59
  br label %709

709:                                              ; preds = %703, %696
  store i64 0, ptr %521, align 8, !tbaa !118
  br label %710

710:                                              ; preds = %709, %510
  store i32 73, ptr %21, align 8, !tbaa !29
  br label %711

711:                                              ; preds = %710, %508
  %712 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %713 = load ptr, ptr %712, align 8, !tbaa !100
  %714 = getelementptr inbounds nuw i8, ptr %713, i64 40
  %715 = load ptr, ptr %714, align 8, !tbaa !111
  %716 = icmp eq ptr %715, null
  br i1 %716, label %822, label %717

717:                                              ; preds = %711
  %718 = load i64, ptr %76, align 8, !tbaa !57
  %719 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %720 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %721 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %722 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %723 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %724

724:                                              ; preds = %800, %717
  %725 = phi i64 [ %718, %717 ], [ %787, %800 ]
  %726 = load i64, ptr %76, align 8, !tbaa !57
  %727 = load i64, ptr %719, align 8, !tbaa !41
  %728 = icmp eq i64 %726, %727
  br i1 %728, label %729, label %785

729:                                              ; preds = %724
  %730 = load ptr, ptr %712, align 8, !tbaa !100
  %731 = getelementptr inbounds nuw i8, ptr %730, i64 68
  %732 = load i32, ptr %731, align 4, !tbaa !114
  %733 = icmp ne i32 %732, 0
  %734 = icmp ugt i64 %726, %725
  %735 = select i1 %733, i1 %734, i1 false
  br i1 %735, label %736, label %742

736:                                              ; preds = %729
  %737 = sub nuw i64 %726, %725
  %738 = load ptr, ptr %720, align 8, !tbaa !40
  %739 = getelementptr inbounds nuw i8, ptr %738, i64 %725
  %740 = load i64, ptr %721, align 8, !tbaa !59
  %741 = tail call i64 @crc32_z(i64 noundef %740, ptr noundef %739, i64 noundef %737) #12
  store i64 %741, ptr %721, align 8, !tbaa !59
  br label %742

742:                                              ; preds = %736, %729
  %743 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %743) #12
  %744 = getelementptr inbounds nuw i8, ptr %743, i64 40
  %745 = load i64, ptr %744, align 8, !tbaa !57
  %746 = load i32, ptr %69, align 8, !tbaa !107
  %747 = zext i32 %746 to i64
  %748 = tail call i64 @llvm.umin.i64(i64 %745, i64 %747)
  %749 = trunc nuw i64 %748 to i32
  %750 = icmp eq i64 %748, 0
  br i1 %750, label %781, label %751

751:                                              ; preds = %742
  %752 = load ptr, ptr %51, align 8, !tbaa !106
  %753 = getelementptr inbounds nuw i8, ptr %743, i64 32
  %754 = load ptr, ptr %753, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %752, ptr align 1 %754, i64 %748, i1 false)
  %755 = load ptr, ptr %51, align 8, !tbaa !106
  %756 = getelementptr inbounds nuw i8, ptr %755, i64 %748
  store ptr %756, ptr %51, align 8, !tbaa !106
  %757 = load ptr, ptr %753, align 8, !tbaa !58
  %758 = getelementptr inbounds nuw i8, ptr %757, i64 %748
  store ptr %758, ptr %753, align 8, !tbaa !58
  %759 = load i64, ptr %722, align 8, !tbaa !108
  %760 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %759, i64 %748), !nosanitize !45
  %761 = extractvalue { i64, i1 } %760, 1, !nosanitize !45
  br i1 %761, label %762, label %763, !prof !46, !nosanitize !45

762:                                              ; preds = %751
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

763:                                              ; preds = %751
  %764 = extractvalue { i64, i1 } %760, 0, !nosanitize !45
  store i64 %764, ptr %722, align 8, !tbaa !108
  %765 = load i32, ptr %69, align 8, !tbaa !107
  %766 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %765, i32 %749), !nosanitize !45
  %767 = extractvalue { i32, i1 } %766, 1, !nosanitize !45
  br i1 %767, label %768, label %769, !prof !46, !nosanitize !45

768:                                              ; preds = %763
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

769:                                              ; preds = %763
  %770 = extractvalue { i32, i1 } %766, 0, !nosanitize !45
  store i32 %770, ptr %69, align 8, !tbaa !107
  %771 = load i64, ptr %744, align 8, !tbaa !57
  %772 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %771, i64 %748), !nosanitize !45
  %773 = extractvalue { i64, i1 } %772, 1, !nosanitize !45
  br i1 %773, label %774, label %775, !prof !46, !nosanitize !45

774:                                              ; preds = %769
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

775:                                              ; preds = %769
  %776 = extractvalue { i64, i1 } %772, 0, !nosanitize !45
  store i64 %776, ptr %744, align 8, !tbaa !57
  %777 = icmp eq i64 %776, 0
  br i1 %777, label %778, label %781

778:                                              ; preds = %775
  %779 = getelementptr inbounds nuw i8, ptr %743, i64 16
  %780 = load ptr, ptr %779, align 8, !tbaa !40
  store ptr %780, ptr %753, align 8, !tbaa !58
  br label %781

781:                                              ; preds = %778, %775, %742
  %782 = load i64, ptr %76, align 8, !tbaa !57
  %783 = icmp eq i64 %782, 0
  br i1 %783, label %785, label %784

784:                                              ; preds = %781
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1024

785:                                              ; preds = %781, %724
  %786 = phi i64 [ %726, %724 ], [ 0, %781 ]
  %787 = phi i64 [ %725, %724 ], [ 0, %781 ]
  %788 = load i64, ptr %723, align 8, !tbaa !118
  %789 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %788, i64 1), !nosanitize !45
  %790 = extractvalue { i64, i1 } %789, 1, !nosanitize !45
  br i1 %790, label %791, label %792, !prof !46, !nosanitize !45

791:                                              ; preds = %785
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

792:                                              ; preds = %785
  %793 = extractvalue { i64, i1 } %789, 0, !nosanitize !45
  %794 = load ptr, ptr %712, align 8, !tbaa !100
  %795 = getelementptr inbounds nuw i8, ptr %794, i64 40
  %796 = load ptr, ptr %795, align 8, !tbaa !111
  store i64 %793, ptr %723, align 8, !tbaa !118
  %797 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %786, i64 1), !nosanitize !45
  %798 = extractvalue { i64, i1 } %797, 1, !nosanitize !45
  br i1 %798, label %799, label %800, !prof !46, !nosanitize !45

799:                                              ; preds = %792
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

800:                                              ; preds = %792
  %801 = extractvalue { i64, i1 } %797, 0, !nosanitize !45
  %802 = load ptr, ptr %720, align 8, !tbaa !40
  %803 = getelementptr inbounds nuw i8, ptr %796, i64 %788
  %804 = load i8, ptr %803, align 1, !tbaa !8
  store i64 %801, ptr %76, align 8, !tbaa !57
  %805 = getelementptr inbounds nuw i8, ptr %802, i64 %786
  store i8 %804, ptr %805, align 1, !tbaa !8
  %806 = icmp eq i8 %804, 0
  br i1 %806, label %807, label %724, !llvm.loop !122

807:                                              ; preds = %800
  %808 = load ptr, ptr %712, align 8, !tbaa !100
  %809 = getelementptr inbounds nuw i8, ptr %808, i64 68
  %810 = load i32, ptr %809, align 4, !tbaa !114
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %821, label %812

812:                                              ; preds = %807
  %813 = load i64, ptr %76, align 8, !tbaa !57
  %814 = icmp ugt i64 %813, %787
  br i1 %814, label %815, label %821

815:                                              ; preds = %812
  %816 = sub nuw i64 %813, %787
  %817 = load ptr, ptr %720, align 8, !tbaa !40
  %818 = getelementptr inbounds nuw i8, ptr %817, i64 %787
  %819 = load i64, ptr %721, align 8, !tbaa !59
  %820 = tail call i64 @crc32_z(i64 noundef %819, ptr noundef %818, i64 noundef %816) #12
  store i64 %820, ptr %721, align 8, !tbaa !59
  br label %821

821:                                              ; preds = %815, %812, %807
  store i64 0, ptr %723, align 8, !tbaa !118
  br label %822

822:                                              ; preds = %821, %711
  store i32 91, ptr %21, align 8, !tbaa !29
  br label %823

823:                                              ; preds = %822, %508
  %824 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %825 = load ptr, ptr %824, align 8, !tbaa !100
  %826 = getelementptr inbounds nuw i8, ptr %825, i64 56
  %827 = load ptr, ptr %826, align 8, !tbaa !109
  %828 = icmp eq ptr %827, null
  br i1 %828, label %933, label %829

829:                                              ; preds = %823
  %830 = load i64, ptr %76, align 8, !tbaa !57
  %831 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %832 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %833 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %834 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %835 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %836

836:                                              ; preds = %912, %829
  %837 = phi i64 [ %830, %829 ], [ %899, %912 ]
  %838 = load i64, ptr %76, align 8, !tbaa !57
  %839 = load i64, ptr %831, align 8, !tbaa !41
  %840 = icmp eq i64 %838, %839
  br i1 %840, label %841, label %897

841:                                              ; preds = %836
  %842 = load ptr, ptr %824, align 8, !tbaa !100
  %843 = getelementptr inbounds nuw i8, ptr %842, i64 68
  %844 = load i32, ptr %843, align 4, !tbaa !114
  %845 = icmp ne i32 %844, 0
  %846 = icmp ugt i64 %838, %837
  %847 = select i1 %845, i1 %846, i1 false
  br i1 %847, label %848, label %854

848:                                              ; preds = %841
  %849 = sub nuw i64 %838, %837
  %850 = load ptr, ptr %832, align 8, !tbaa !40
  %851 = getelementptr inbounds nuw i8, ptr %850, i64 %837
  %852 = load i64, ptr %833, align 8, !tbaa !59
  %853 = tail call i64 @crc32_z(i64 noundef %852, ptr noundef %851, i64 noundef %849) #12
  store i64 %853, ptr %833, align 8, !tbaa !59
  br label %854

854:                                              ; preds = %848, %841
  %855 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %855) #12
  %856 = getelementptr inbounds nuw i8, ptr %855, i64 40
  %857 = load i64, ptr %856, align 8, !tbaa !57
  %858 = load i32, ptr %69, align 8, !tbaa !107
  %859 = zext i32 %858 to i64
  %860 = tail call i64 @llvm.umin.i64(i64 %857, i64 %859)
  %861 = trunc nuw i64 %860 to i32
  %862 = icmp eq i64 %860, 0
  br i1 %862, label %893, label %863

863:                                              ; preds = %854
  %864 = load ptr, ptr %51, align 8, !tbaa !106
  %865 = getelementptr inbounds nuw i8, ptr %855, i64 32
  %866 = load ptr, ptr %865, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %864, ptr align 1 %866, i64 %860, i1 false)
  %867 = load ptr, ptr %51, align 8, !tbaa !106
  %868 = getelementptr inbounds nuw i8, ptr %867, i64 %860
  store ptr %868, ptr %51, align 8, !tbaa !106
  %869 = load ptr, ptr %865, align 8, !tbaa !58
  %870 = getelementptr inbounds nuw i8, ptr %869, i64 %860
  store ptr %870, ptr %865, align 8, !tbaa !58
  %871 = load i64, ptr %834, align 8, !tbaa !108
  %872 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %871, i64 %860), !nosanitize !45
  %873 = extractvalue { i64, i1 } %872, 1, !nosanitize !45
  br i1 %873, label %874, label %875, !prof !46, !nosanitize !45

874:                                              ; preds = %863
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

875:                                              ; preds = %863
  %876 = extractvalue { i64, i1 } %872, 0, !nosanitize !45
  store i64 %876, ptr %834, align 8, !tbaa !108
  %877 = load i32, ptr %69, align 8, !tbaa !107
  %878 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %877, i32 %861), !nosanitize !45
  %879 = extractvalue { i32, i1 } %878, 1, !nosanitize !45
  br i1 %879, label %880, label %881, !prof !46, !nosanitize !45

880:                                              ; preds = %875
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

881:                                              ; preds = %875
  %882 = extractvalue { i32, i1 } %878, 0, !nosanitize !45
  store i32 %882, ptr %69, align 8, !tbaa !107
  %883 = load i64, ptr %856, align 8, !tbaa !57
  %884 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %883, i64 %860), !nosanitize !45
  %885 = extractvalue { i64, i1 } %884, 1, !nosanitize !45
  br i1 %885, label %886, label %887, !prof !46, !nosanitize !45

886:                                              ; preds = %881
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

887:                                              ; preds = %881
  %888 = extractvalue { i64, i1 } %884, 0, !nosanitize !45
  store i64 %888, ptr %856, align 8, !tbaa !57
  %889 = icmp eq i64 %888, 0
  br i1 %889, label %890, label %893

890:                                              ; preds = %887
  %891 = getelementptr inbounds nuw i8, ptr %855, i64 16
  %892 = load ptr, ptr %891, align 8, !tbaa !40
  store ptr %892, ptr %865, align 8, !tbaa !58
  br label %893

893:                                              ; preds = %890, %887, %854
  %894 = load i64, ptr %76, align 8, !tbaa !57
  %895 = icmp eq i64 %894, 0
  br i1 %895, label %897, label %896

896:                                              ; preds = %893
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1024

897:                                              ; preds = %893, %836
  %898 = phi i64 [ %838, %836 ], [ 0, %893 ]
  %899 = phi i64 [ %837, %836 ], [ 0, %893 ]
  %900 = load i64, ptr %835, align 8, !tbaa !118
  %901 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %900, i64 1), !nosanitize !45
  %902 = extractvalue { i64, i1 } %901, 1, !nosanitize !45
  br i1 %902, label %903, label %904, !prof !46, !nosanitize !45

903:                                              ; preds = %897
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

904:                                              ; preds = %897
  %905 = extractvalue { i64, i1 } %901, 0, !nosanitize !45
  %906 = load ptr, ptr %824, align 8, !tbaa !100
  %907 = getelementptr inbounds nuw i8, ptr %906, i64 56
  %908 = load ptr, ptr %907, align 8, !tbaa !109
  store i64 %905, ptr %835, align 8, !tbaa !118
  %909 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %898, i64 1), !nosanitize !45
  %910 = extractvalue { i64, i1 } %909, 1, !nosanitize !45
  br i1 %910, label %911, label %912, !prof !46, !nosanitize !45

911:                                              ; preds = %904
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

912:                                              ; preds = %904
  %913 = extractvalue { i64, i1 } %909, 0, !nosanitize !45
  %914 = load ptr, ptr %832, align 8, !tbaa !40
  %915 = getelementptr inbounds nuw i8, ptr %908, i64 %900
  %916 = load i8, ptr %915, align 1, !tbaa !8
  store i64 %913, ptr %76, align 8, !tbaa !57
  %917 = getelementptr inbounds nuw i8, ptr %914, i64 %898
  store i8 %916, ptr %917, align 1, !tbaa !8
  %918 = icmp eq i8 %916, 0
  br i1 %918, label %919, label %836, !llvm.loop !123

919:                                              ; preds = %912
  %920 = load ptr, ptr %824, align 8, !tbaa !100
  %921 = getelementptr inbounds nuw i8, ptr %920, i64 68
  %922 = load i32, ptr %921, align 4, !tbaa !114
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %933, label %924

924:                                              ; preds = %919
  %925 = load i64, ptr %76, align 8, !tbaa !57
  %926 = icmp ugt i64 %925, %899
  br i1 %926, label %927, label %933

927:                                              ; preds = %924
  %928 = sub nuw i64 %925, %899
  %929 = load ptr, ptr %832, align 8, !tbaa !40
  %930 = getelementptr inbounds nuw i8, ptr %929, i64 %899
  %931 = load i64, ptr %833, align 8, !tbaa !59
  %932 = tail call i64 @crc32_z(i64 noundef %931, ptr noundef %930, i64 noundef %928) #12
  store i64 %932, ptr %833, align 8, !tbaa !59
  br label %933

933:                                              ; preds = %927, %924, %919, %823
  store i32 103, ptr %21, align 8, !tbaa !29
  br label %934

934:                                              ; preds = %933, %508
  %935 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %936 = load ptr, ptr %935, align 8, !tbaa !100
  %937 = getelementptr inbounds nuw i8, ptr %936, i64 68
  %938 = load i32, ptr %937, align 4, !tbaa !114
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %975, label %940

940:                                              ; preds = %934
  %941 = load i64, ptr %76, align 8, !tbaa !57
  %942 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %941, i64 2), !nosanitize !45
  %943 = extractvalue { i64, i1 } %942, 1, !nosanitize !45
  br i1 %943, label %944, label %945, !prof !46, !nosanitize !45

944:                                              ; preds = %940
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

945:                                              ; preds = %940
  %946 = extractvalue { i64, i1 } %942, 0, !nosanitize !45
  %947 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %948 = load i64, ptr %947, align 8, !tbaa !41
  %949 = icmp ugt i64 %946, %948
  br i1 %949, label %950, label %954

950:                                              ; preds = %945
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %951 = load i64, ptr %76, align 8, !tbaa !57
  %952 = icmp eq i64 %951, 0
  br i1 %952, label %954, label %953

953:                                              ; preds = %950
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1024

954:                                              ; preds = %950, %945
  %955 = phi i64 [ 0, %950 ], [ %941, %945 ]
  %956 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %957 = add nuw i64 %955, 1
  %958 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %959 = load ptr, ptr %958, align 8, !tbaa !40
  %960 = load i64, ptr %956, align 8, !tbaa !59
  %961 = trunc i64 %960 to i8
  store i64 %957, ptr %76, align 8, !tbaa !57
  %962 = getelementptr inbounds nuw i8, ptr %959, i64 %955
  store i8 %961, ptr %962, align 1, !tbaa !8
  %963 = load i64, ptr %76, align 8, !tbaa !57
  %964 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %963, i64 1), !nosanitize !45
  %965 = extractvalue { i64, i1 } %964, 1, !nosanitize !45
  br i1 %965, label %966, label %967, !prof !46, !nosanitize !45

966:                                              ; preds = %954
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

967:                                              ; preds = %954
  %968 = extractvalue { i64, i1 } %964, 0, !nosanitize !45
  %969 = load ptr, ptr %958, align 8, !tbaa !40
  %970 = load i64, ptr %956, align 8, !tbaa !59
  %971 = lshr i64 %970, 8
  %972 = trunc i64 %971 to i8
  store i64 %968, ptr %76, align 8, !tbaa !57
  %973 = getelementptr inbounds nuw i8, ptr %969, i64 %963
  store i8 %972, ptr %973, align 1, !tbaa !8
  %974 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %974, ptr %956, align 8, !tbaa !59
  br label %975

975:                                              ; preds = %967, %934
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %976 = load i64, ptr %76, align 8, !tbaa !57
  %977 = icmp eq i64 %976, 0
  br i1 %977, label %979, label %978

978:                                              ; preds = %975
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1024

979:                                              ; preds = %975, %508, %147
  %980 = load i32, ptr %55, align 8, !tbaa !81
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %982, label %989

982:                                              ; preds = %979, %137
  %983 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %984 = load i32, ptr %983, align 4, !tbaa !75
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %986, label %989

986:                                              ; preds = %982
  %987 = load i32, ptr %21, align 8, !tbaa !29
  %988 = icmp eq i32 %987, 666
  br i1 %988, label %1024, label %989

989:                                              ; preds = %986, %982, %979
  %990 = load i32, ptr %30, align 4, !tbaa !48
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %992, label %994

992:                                              ; preds = %989
  %993 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %1006

994:                                              ; preds = %989
  %995 = load i32, ptr %31, align 8, !tbaa !49
  switch i32 %995, label %1000 [
    i32 2, label %996
    i32 3, label %998
  ]

996:                                              ; preds = %994
  %997 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %1006

998:                                              ; preds = %994
  %999 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %1006

1000:                                             ; preds = %994
  %1001 = sext i32 %990 to i64
  %1002 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1001
  %1003 = getelementptr inbounds nuw i8, ptr %1002, i64 8
  %1004 = load ptr, ptr %1003, align 8, !tbaa !105
  %1005 = tail call i32 %1004(ptr noundef nonnull %15, i32 noundef 5) #12, !inline_history !124
  br label %1006

1006:                                             ; preds = %1000, %998, %996, %992
  %1007 = phi i32 [ %993, %992 ], [ %997, %996 ], [ %999, %998 ], [ %1005, %1000 ]
  %1008 = and i32 %1007, -2
  %1009 = icmp eq i32 %1008, 2
  br i1 %1009, label %1010, label %1011

1010:                                             ; preds = %1006
  store i32 666, ptr %21, align 8, !tbaa !29
  br label %1011

1011:                                             ; preds = %1010, %1006
  %1012 = and i32 %1007, -3
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1014, label %1018

1014:                                             ; preds = %1011
  %1015 = load i32, ptr %69, align 8, !tbaa !107
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1017, label %1024

1017:                                             ; preds = %1014
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1024

1018:                                             ; preds = %1011
  %1019 = icmp eq i32 %1007, 1
  br i1 %1019, label %1020, label %1024

1020:                                             ; preds = %1018
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1021 = load i32, ptr %69, align 8, !tbaa !107
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1023, label %1024

1023:                                             ; preds = %1020
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1024

1024:                                             ; preds = %1023, %1020, %1018, %1017, %1014, %986, %978, %953, %896, %784, %.loopexit40, %353, %249, %140, %131, %123, %72
  %1025 = load i32, ptr %55, align 8, !tbaa !81
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1027, label %1082

1027:                                             ; preds = %1024
  %1028 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %1029 = load i32, ptr %1028, align 4, !tbaa !73
  %1030 = zext i32 %1029 to i64
  %1031 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %1032 = load i64, ptr %1031, align 8, !tbaa !74
  %1033 = sub nsw i64 %1030, %1032
  %1034 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %1035 = load i32, ptr %1034, align 4, !tbaa !75
  %1036 = zext i32 %1035 to i64
  %1037 = sub nsw i64 0, %1036
  %1038 = icmp eq i64 %1033, %1037
  br i1 %1038, label %1039, label %1082

1039:                                             ; preds = %1027, %45, %34
  %1040 = load i32, ptr %30, align 4, !tbaa !48
  %1041 = icmp eq i32 %1040, %25
  br i1 %1041, label %1081, label %1042

1042:                                             ; preds = %1039
  %1043 = icmp eq i32 %1040, 0
  br i1 %1043, label %1044, label %1063

1044:                                             ; preds = %1042
  %1045 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %1046 = load i32, ptr %1045, align 8, !tbaa !125
  switch i32 %1046, label %1048 [
    i32 0, label %1063
    i32 1, label %1047
  ]

1047:                                             ; preds = %1044
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %1062

1048:                                             ; preds = %1044
  %1049 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %1050 = load i32, ptr %1049, align 4, !tbaa !36
  %1051 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1050, i32 1), !nosanitize !45
  %1052 = extractvalue { i32, i1 } %1051, 1, !nosanitize !45
  br i1 %1052, label %1053, label %1054, !prof !46, !nosanitize !45

1053:                                             ; preds = %1048
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1054:                                             ; preds = %1048
  %1055 = extractvalue { i32, i1 } %1051, 0, !nosanitize !45
  %1056 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %1057 = load ptr, ptr %1056, align 8, !tbaa !37
  %1058 = zext i32 %1055 to i64
  %1059 = getelementptr inbounds nuw [2 x i8], ptr %1057, i64 %1058
  store i16 0, ptr %1059, align 2, !tbaa !62
  %1060 = shl nuw nsw i64 %1058, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1057, i8 0, i64 %1060, i1 false)
  %1061 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %1061, align 8, !tbaa !63
  br label %1062

1062:                                             ; preds = %1054, %1047
  store i32 0, ptr %1045, align 8, !tbaa !125
  br label %1063

1063:                                             ; preds = %1062, %1044, %1042
  store i32 %25, ptr %30, align 4, !tbaa !48
  %1064 = zext nneg i32 %25 to i64
  %1065 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %1064
  %1066 = getelementptr inbounds nuw i8, ptr %1065, i64 2
  %1067 = load i16, ptr %1066, align 2, !tbaa !64
  %1068 = zext i16 %1067 to i32
  %1069 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %1068, ptr %1069, align 8, !tbaa !66
  %1070 = load i16, ptr %1065, align 16, !tbaa !67
  %1071 = zext i16 %1070 to i32
  %1072 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %1071, ptr %1072, align 4, !tbaa !68
  %1073 = getelementptr inbounds nuw i8, ptr %1065, i64 4
  %1074 = load i16, ptr %1073, align 4, !tbaa !69
  %1075 = zext i16 %1074 to i32
  %1076 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %1075, ptr %1076, align 8, !tbaa !70
  %1077 = getelementptr inbounds nuw i8, ptr %1065, i64 6
  %1078 = load i16, ptr %1077, align 2, !tbaa !71
  %1079 = zext i16 %1078 to i32
  %1080 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %1079, ptr %1080, align 4, !tbaa !72
  br label %1081

1081:                                             ; preds = %1063, %1039
  store i32 %2, ptr %31, align 8, !tbaa !49
  br label %1082

1082:                                             ; preds = %1081, %1027, %1024, %65, %49, %23, %20, %17, %13, %9, %5, %3
  %1083 = phi i32 [ -5, %1027 ], [ -2, %13 ], [ 0, %1081 ], [ -2, %23 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %65 ], [ -2, %49 ], [ -5, %1024 ]
  ret i32 %1083
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1189, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1189, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1189, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1189, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1189

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %1189 [
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
  br i1 %23, label %1189, label %24

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
  br label %1189

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !107
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !9
  br label %1189

49:                                               ; preds = %42
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 76
  %51 = load i32, ptr %50, align 4, !tbaa !60
  store i32 %1, ptr %50, align 4, !tbaa !60
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !57
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %100, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #12
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

75:                                               ; preds = %62
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !45
  store i64 %76, ptr %70, align 8, !tbaa !108
  %77 = load i32, ptr %43, align 8, !tbaa !107
  %78 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %77, i32 %60), !nosanitize !45
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !45
  br i1 %79, label %80, label %81, !prof !46, !nosanitize !45

80:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

81:                                               ; preds = %75
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !45
  store i32 %82, ptr %43, align 8, !tbaa !107
  %83 = load i64, ptr %52, align 8, !tbaa !57
  %84 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 %59), !nosanitize !45
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  br label %1189

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
  br label %1189

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
  br i1 %120, label %969, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %122, ptr %123, align 8, !tbaa !9
  br label %1189

124:                                              ; preds = %115
  %125 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %126 = load i32, ptr %125, align 8, !tbaa !30
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 113, ptr %20, align 8, !tbaa !29
  br label %966

129:                                              ; preds = %124
  %130 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %131 = load i32, ptr %130, align 4, !tbaa !31
  %132 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %131, i32 8), !nosanitize !45
  %133 = extractvalue { i32, i1 } %132, 1, !nosanitize !45
  br i1 %133, label %134, label %135, !prof !46, !nosanitize !45

134:                                              ; preds = %129
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

221:                                              ; preds = %211
  %222 = extractvalue { i64, i1 } %218, 0, !nosanitize !45
  %223 = load ptr, ptr %165, align 8, !tbaa !40
  store i64 %222, ptr %52, align 8, !tbaa !57
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 %217
  store i8 %206, ptr %224, align 1, !tbaa !8
  br label %225

225:                                              ; preds = %221, %174
  %226 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
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
  br label %1189

233:                                              ; preds = %230, %115
  %234 = phi i32 [ %231, %230 ], [ %117, %115 ]
  %235 = icmp eq i32 %234, 57
  br i1 %235, label %236, label %495

236:                                              ; preds = %233
  %237 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %237, ptr %238, align 8, !tbaa !59
  %239 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %240 = load i64, ptr %52, align 8, !tbaa !57
  %241 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %240, i64 1), !nosanitize !45
  %242 = extractvalue { i64, i1 } %241, 1, !nosanitize !45
  br i1 %242, label %243, label %244, !prof !46, !nosanitize !45

243:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  br label %1189

339:                                              ; preds = %260
  br i1 %269, label %340, label %341, !prof !46, !nosanitize !45

340:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  %490 = tail call i64 @crc32_z(i64 noundef %487, ptr noundef %488, i64 noundef %489) #12
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
  switch i32 %496, label %966 [
    i32 69, label %497
    i32 73, label %698
    i32 91, label %810
    i32 103, label %921
  ]

497:                                              ; preds = %495, %491
  %498 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %499 = load ptr, ptr %498, align 8, !tbaa !100
  %500 = getelementptr inbounds nuw i8, ptr %499, i64 24
  %501 = load ptr, ptr %500, align 8, !tbaa !112
  %502 = icmp eq ptr %501, null
  br i1 %502, label %697, label %503

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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  br i1 %525, label %526, label %670

526:                                              ; preds = %522
  %527 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %524, i64 %514), !nosanitize !45
  %528 = extractvalue { i64, i1 } %527, 0, !nosanitize !45
  %529 = extractvalue { i64, i1 } %527, 1, !nosanitize !45
  br i1 %529, label %599, label %530, !prof !46, !nosanitize !45

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
  %546 = tail call i64 @crc32_z(i64 noundef %545, ptr noundef %544, i64 noundef %542) #12
  store i64 %546, ptr %517, align 8, !tbaa !59
  br label %547

547:                                              ; preds = %541, %530
  %548 = load i64, ptr %508, align 8, !tbaa !118
  %549 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %548, i64 %528), !nosanitize !45
  %550 = extractvalue { i64, i1 } %549, 1, !nosanitize !45
  br i1 %550, label %.loopexit, label %551, !prof !46, !nosanitize !45

551:                                              ; preds = %547
  %552 = extractvalue { i64, i1 } %549, 0, !nosanitize !45
  store i64 %552, ptr %508, align 8, !tbaa !118
  %553 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %553) #12
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
  br i1 %571, label %.loopexit36, label %572, !prof !46, !nosanitize !45

572:                                              ; preds = %561
  %573 = extractvalue { i64, i1 } %570, 0, !nosanitize !45
  store i64 %573, ptr %518, align 8, !tbaa !108
  %574 = load i32, ptr %43, align 8, !tbaa !107
  %575 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %574, i32 %559), !nosanitize !45
  %576 = extractvalue { i32, i1 } %575, 1, !nosanitize !45
  br i1 %576, label %.loopexit37, label %577, !prof !46, !nosanitize !45

577:                                              ; preds = %572
  %578 = extractvalue { i32, i1 } %575, 0, !nosanitize !45
  store i32 %578, ptr %43, align 8, !tbaa !107
  %579 = load i64, ptr %554, align 8, !tbaa !57
  %580 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %579, i64 %558), !nosanitize !45
  %581 = extractvalue { i64, i1 } %580, 1, !nosanitize !45
  br i1 %581, label %.loopexit38, label %582, !prof !46, !nosanitize !45

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
  br i1 %590, label %591, label %.loopexit39

591:                                              ; preds = %588
  %592 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %519, i64 %528), !nosanitize !45
  %593 = extractvalue { i64, i1 } %592, 1, !nosanitize !45
  br i1 %593, label %.loopexit40, label %.preheader, !prof !46, !nosanitize !45

594:                                              ; preds = %513
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

.preheader:                                       ; preds = %591, %662
  %595 = phi { i64, i1 } [ %663, %662 ], [ %592, %591 ]
  %596 = extractvalue { i64, i1 } %595, 0
  %597 = load i64, ptr %515, align 8, !tbaa !41
  %598 = icmp ugt i64 %596, %597
  br i1 %598, label %600, label %665

599:                                              ; preds = %526
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

600:                                              ; preds = %.preheader
  %601 = load ptr, ptr %516, align 8, !tbaa !40
  %602 = load ptr, ptr %498, align 8, !tbaa !100
  %603 = getelementptr inbounds nuw i8, ptr %602, i64 24
  %604 = load ptr, ptr %603, align 8, !tbaa !112
  %605 = load i64, ptr %508, align 8, !tbaa !118
  %606 = getelementptr inbounds nuw i8, ptr %604, i64 %605
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %601, ptr align 1 %606, i64 %597, i1 false)
  %607 = load i64, ptr %515, align 8, !tbaa !41
  store i64 %607, ptr %52, align 8, !tbaa !57
  %608 = load ptr, ptr %498, align 8, !tbaa !100
  %609 = getelementptr inbounds nuw i8, ptr %608, i64 68
  %610 = load i32, ptr %609, align 4, !tbaa !114
  %611 = icmp ne i32 %610, 0
  %612 = icmp ne i64 %607, 0
  %613 = select i1 %611, i1 %612, i1 false
  br i1 %613, label %614, label %618

614:                                              ; preds = %600
  %615 = load ptr, ptr %516, align 8, !tbaa !40
  %616 = load i64, ptr %517, align 8, !tbaa !59
  %617 = tail call i64 @crc32_z(i64 noundef %616, ptr noundef %615, i64 noundef %607) #12
  store i64 %617, ptr %517, align 8, !tbaa !59
  br label %618

618:                                              ; preds = %614, %600
  %619 = load i64, ptr %508, align 8, !tbaa !118
  %620 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %619, i64 %597), !nosanitize !45
  %621 = extractvalue { i64, i1 } %620, 1, !nosanitize !45
  br i1 %621, label %.loopexit, label %622, !prof !46, !nosanitize !45

.loopexit:                                        ; preds = %618, %547
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

622:                                              ; preds = %618
  %623 = extractvalue { i64, i1 } %620, 0, !nosanitize !45
  store i64 %623, ptr %508, align 8, !tbaa !118
  %624 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %624) #12
  %625 = getelementptr inbounds nuw i8, ptr %624, i64 40
  %626 = load i64, ptr %625, align 8, !tbaa !57
  %627 = load i32, ptr %43, align 8, !tbaa !107
  %628 = zext i32 %627 to i64
  %629 = tail call i64 @llvm.umin.i64(i64 %626, i64 %628)
  %630 = trunc nuw i64 %629 to i32
  %631 = icmp eq i64 %629, 0
  br i1 %631, label %659, label %632

632:                                              ; preds = %622
  %633 = load ptr, ptr %25, align 8, !tbaa !106
  %634 = getelementptr inbounds nuw i8, ptr %624, i64 32
  %635 = load ptr, ptr %634, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %633, ptr align 1 %635, i64 %629, i1 false)
  %636 = load ptr, ptr %25, align 8, !tbaa !106
  %637 = getelementptr inbounds nuw i8, ptr %636, i64 %629
  store ptr %637, ptr %25, align 8, !tbaa !106
  %638 = load ptr, ptr %634, align 8, !tbaa !58
  %639 = getelementptr inbounds nuw i8, ptr %638, i64 %629
  store ptr %639, ptr %634, align 8, !tbaa !58
  %640 = load i64, ptr %518, align 8, !tbaa !108
  %641 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %640, i64 %629), !nosanitize !45
  %642 = extractvalue { i64, i1 } %641, 1, !nosanitize !45
  br i1 %642, label %.loopexit36, label %643, !prof !46, !nosanitize !45

.loopexit36:                                      ; preds = %632, %561
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

643:                                              ; preds = %632
  %644 = extractvalue { i64, i1 } %641, 0, !nosanitize !45
  store i64 %644, ptr %518, align 8, !tbaa !108
  %645 = load i32, ptr %43, align 8, !tbaa !107
  %646 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %645, i32 %630), !nosanitize !45
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !45
  br i1 %647, label %.loopexit37, label %648, !prof !46, !nosanitize !45

.loopexit37:                                      ; preds = %643, %572
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

648:                                              ; preds = %643
  %649 = extractvalue { i32, i1 } %646, 0, !nosanitize !45
  store i32 %649, ptr %43, align 8, !tbaa !107
  %650 = load i64, ptr %625, align 8, !tbaa !57
  %651 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %650, i64 %629), !nosanitize !45
  %652 = extractvalue { i64, i1 } %651, 1, !nosanitize !45
  br i1 %652, label %.loopexit38, label %653, !prof !46, !nosanitize !45

.loopexit38:                                      ; preds = %648, %577
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

653:                                              ; preds = %648
  %654 = extractvalue { i64, i1 } %651, 0, !nosanitize !45
  store i64 %654, ptr %625, align 8, !tbaa !57
  %655 = icmp eq i64 %654, 0
  br i1 %655, label %656, label %659

656:                                              ; preds = %653
  %657 = getelementptr inbounds nuw i8, ptr %624, i64 16
  %658 = load ptr, ptr %657, align 8, !tbaa !40
  store ptr %658, ptr %634, align 8, !tbaa !58
  br label %659

659:                                              ; preds = %656, %653, %622
  %660 = load i64, ptr %52, align 8, !tbaa !57
  %661 = icmp eq i64 %660, 0
  br i1 %661, label %662, label %.loopexit39

.loopexit39:                                      ; preds = %659, %588
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1189

662:                                              ; preds = %659
  %663 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %596, i64 %597), !nosanitize !45
  %664 = extractvalue { i64, i1 } %663, 1, !nosanitize !45
  br i1 %664, label %.loopexit40, label %.preheader, !prof !46, !llvm.loop !119, !nosanitize !45

.loopexit40:                                      ; preds = %662, %591
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

665:                                              ; preds = %.preheader
  %666 = load ptr, ptr %498, align 8, !tbaa !100
  %667 = getelementptr inbounds nuw i8, ptr %666, i64 24
  %668 = load ptr, ptr %667, align 8, !tbaa !112
  %669 = load i64, ptr %508, align 8, !tbaa !118
  br label %670

670:                                              ; preds = %665, %522
  %671 = phi i64 [ %509, %522 ], [ %669, %665 ]
  %672 = phi ptr [ %501, %522 ], [ %668, %665 ]
  %673 = phi i64 [ %514, %522 ], [ 0, %665 ]
  %674 = phi i64 [ %519, %522 ], [ %596, %665 ]
  %675 = load ptr, ptr %516, align 8, !tbaa !40
  %676 = getelementptr inbounds nuw i8, ptr %675, i64 %673
  %677 = getelementptr inbounds nuw i8, ptr %672, i64 %671
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %676, ptr align 1 %677, i64 %674, i1 false)
  %678 = load i64, ptr %52, align 8, !tbaa !57
  %679 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %678, i64 %674), !nosanitize !45
  %680 = extractvalue { i64, i1 } %679, 0, !nosanitize !45
  %681 = extractvalue { i64, i1 } %679, 1, !nosanitize !45
  br i1 %681, label %682, label %683, !prof !46, !nosanitize !45

682:                                              ; preds = %670
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

683:                                              ; preds = %670
  store i64 %680, ptr %52, align 8, !tbaa !57
  %684 = load ptr, ptr %498, align 8, !tbaa !100
  %685 = getelementptr inbounds nuw i8, ptr %684, i64 68
  %686 = load i32, ptr %685, align 4, !tbaa !114
  %687 = icmp ne i32 %686, 0
  %688 = icmp ugt i64 %680, %673
  %689 = select i1 %687, i1 %688, i1 false
  br i1 %689, label %690, label %696

690:                                              ; preds = %683
  %691 = sub nuw i64 %680, %673
  %692 = load ptr, ptr %516, align 8, !tbaa !40
  %693 = getelementptr inbounds nuw i8, ptr %692, i64 %673
  %694 = load i64, ptr %517, align 8, !tbaa !59
  %695 = tail call i64 @crc32_z(i64 noundef %694, ptr noundef %693, i64 noundef %691) #12
  store i64 %695, ptr %517, align 8, !tbaa !59
  br label %696

696:                                              ; preds = %690, %683
  store i64 0, ptr %508, align 8, !tbaa !118
  br label %697

697:                                              ; preds = %696, %497
  store i32 73, ptr %20, align 8, !tbaa !29
  br label %698

698:                                              ; preds = %697, %495
  %699 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %700 = load ptr, ptr %699, align 8, !tbaa !100
  %701 = getelementptr inbounds nuw i8, ptr %700, i64 40
  %702 = load ptr, ptr %701, align 8, !tbaa !111
  %703 = icmp eq ptr %702, null
  br i1 %703, label %809, label %704

704:                                              ; preds = %698
  %705 = load i64, ptr %52, align 8, !tbaa !57
  %706 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %707 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %708 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %709 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %710 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %711

711:                                              ; preds = %787, %704
  %712 = phi i64 [ %705, %704 ], [ %774, %787 ]
  %713 = load i64, ptr %52, align 8, !tbaa !57
  %714 = load i64, ptr %706, align 8, !tbaa !41
  %715 = icmp eq i64 %713, %714
  br i1 %715, label %716, label %772

716:                                              ; preds = %711
  %717 = load ptr, ptr %699, align 8, !tbaa !100
  %718 = getelementptr inbounds nuw i8, ptr %717, i64 68
  %719 = load i32, ptr %718, align 4, !tbaa !114
  %720 = icmp ne i32 %719, 0
  %721 = icmp ugt i64 %713, %712
  %722 = select i1 %720, i1 %721, i1 false
  br i1 %722, label %723, label %729

723:                                              ; preds = %716
  %724 = sub nuw i64 %713, %712
  %725 = load ptr, ptr %707, align 8, !tbaa !40
  %726 = getelementptr inbounds nuw i8, ptr %725, i64 %712
  %727 = load i64, ptr %708, align 8, !tbaa !59
  %728 = tail call i64 @crc32_z(i64 noundef %727, ptr noundef %726, i64 noundef %724) #12
  store i64 %728, ptr %708, align 8, !tbaa !59
  br label %729

729:                                              ; preds = %723, %716
  %730 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %730) #12
  %731 = getelementptr inbounds nuw i8, ptr %730, i64 40
  %732 = load i64, ptr %731, align 8, !tbaa !57
  %733 = load i32, ptr %43, align 8, !tbaa !107
  %734 = zext i32 %733 to i64
  %735 = tail call i64 @llvm.umin.i64(i64 %732, i64 %734)
  %736 = trunc nuw i64 %735 to i32
  %737 = icmp eq i64 %735, 0
  br i1 %737, label %768, label %738

738:                                              ; preds = %729
  %739 = load ptr, ptr %25, align 8, !tbaa !106
  %740 = getelementptr inbounds nuw i8, ptr %730, i64 32
  %741 = load ptr, ptr %740, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %739, ptr align 1 %741, i64 %735, i1 false)
  %742 = load ptr, ptr %25, align 8, !tbaa !106
  %743 = getelementptr inbounds nuw i8, ptr %742, i64 %735
  store ptr %743, ptr %25, align 8, !tbaa !106
  %744 = load ptr, ptr %740, align 8, !tbaa !58
  %745 = getelementptr inbounds nuw i8, ptr %744, i64 %735
  store ptr %745, ptr %740, align 8, !tbaa !58
  %746 = load i64, ptr %709, align 8, !tbaa !108
  %747 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %746, i64 %735), !nosanitize !45
  %748 = extractvalue { i64, i1 } %747, 1, !nosanitize !45
  br i1 %748, label %749, label %750, !prof !46, !nosanitize !45

749:                                              ; preds = %738
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

750:                                              ; preds = %738
  %751 = extractvalue { i64, i1 } %747, 0, !nosanitize !45
  store i64 %751, ptr %709, align 8, !tbaa !108
  %752 = load i32, ptr %43, align 8, !tbaa !107
  %753 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %752, i32 %736), !nosanitize !45
  %754 = extractvalue { i32, i1 } %753, 1, !nosanitize !45
  br i1 %754, label %755, label %756, !prof !46, !nosanitize !45

755:                                              ; preds = %750
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

756:                                              ; preds = %750
  %757 = extractvalue { i32, i1 } %753, 0, !nosanitize !45
  store i32 %757, ptr %43, align 8, !tbaa !107
  %758 = load i64, ptr %731, align 8, !tbaa !57
  %759 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %758, i64 %735), !nosanitize !45
  %760 = extractvalue { i64, i1 } %759, 1, !nosanitize !45
  br i1 %760, label %761, label %762, !prof !46, !nosanitize !45

761:                                              ; preds = %756
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

762:                                              ; preds = %756
  %763 = extractvalue { i64, i1 } %759, 0, !nosanitize !45
  store i64 %763, ptr %731, align 8, !tbaa !57
  %764 = icmp eq i64 %763, 0
  br i1 %764, label %765, label %768

765:                                              ; preds = %762
  %766 = getelementptr inbounds nuw i8, ptr %730, i64 16
  %767 = load ptr, ptr %766, align 8, !tbaa !40
  store ptr %767, ptr %740, align 8, !tbaa !58
  br label %768

768:                                              ; preds = %765, %762, %729
  %769 = load i64, ptr %52, align 8, !tbaa !57
  %770 = icmp eq i64 %769, 0
  br i1 %770, label %772, label %771

771:                                              ; preds = %768
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1189

772:                                              ; preds = %768, %711
  %773 = phi i64 [ %713, %711 ], [ 0, %768 ]
  %774 = phi i64 [ %712, %711 ], [ 0, %768 ]
  %775 = load i64, ptr %710, align 8, !tbaa !118
  %776 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %775, i64 1), !nosanitize !45
  %777 = extractvalue { i64, i1 } %776, 1, !nosanitize !45
  br i1 %777, label %778, label %779, !prof !46, !nosanitize !45

778:                                              ; preds = %772
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

779:                                              ; preds = %772
  %780 = extractvalue { i64, i1 } %776, 0, !nosanitize !45
  %781 = load ptr, ptr %699, align 8, !tbaa !100
  %782 = getelementptr inbounds nuw i8, ptr %781, i64 40
  %783 = load ptr, ptr %782, align 8, !tbaa !111
  store i64 %780, ptr %710, align 8, !tbaa !118
  %784 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %773, i64 1), !nosanitize !45
  %785 = extractvalue { i64, i1 } %784, 1, !nosanitize !45
  br i1 %785, label %786, label %787, !prof !46, !nosanitize !45

786:                                              ; preds = %779
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

787:                                              ; preds = %779
  %788 = extractvalue { i64, i1 } %784, 0, !nosanitize !45
  %789 = load ptr, ptr %707, align 8, !tbaa !40
  %790 = getelementptr inbounds nuw i8, ptr %783, i64 %775
  %791 = load i8, ptr %790, align 1, !tbaa !8
  store i64 %788, ptr %52, align 8, !tbaa !57
  %792 = getelementptr inbounds nuw i8, ptr %789, i64 %773
  store i8 %791, ptr %792, align 1, !tbaa !8
  %793 = icmp eq i8 %791, 0
  br i1 %793, label %794, label %711, !llvm.loop !122

794:                                              ; preds = %787
  %795 = load ptr, ptr %699, align 8, !tbaa !100
  %796 = getelementptr inbounds nuw i8, ptr %795, i64 68
  %797 = load i32, ptr %796, align 4, !tbaa !114
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %808, label %799

799:                                              ; preds = %794
  %800 = load i64, ptr %52, align 8, !tbaa !57
  %801 = icmp ugt i64 %800, %774
  br i1 %801, label %802, label %808

802:                                              ; preds = %799
  %803 = sub nuw i64 %800, %774
  %804 = load ptr, ptr %707, align 8, !tbaa !40
  %805 = getelementptr inbounds nuw i8, ptr %804, i64 %774
  %806 = load i64, ptr %708, align 8, !tbaa !59
  %807 = tail call i64 @crc32_z(i64 noundef %806, ptr noundef %805, i64 noundef %803) #12
  store i64 %807, ptr %708, align 8, !tbaa !59
  br label %808

808:                                              ; preds = %802, %799, %794
  store i64 0, ptr %710, align 8, !tbaa !118
  br label %809

809:                                              ; preds = %808, %698
  store i32 91, ptr %20, align 8, !tbaa !29
  br label %810

810:                                              ; preds = %809, %495
  %811 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %812 = load ptr, ptr %811, align 8, !tbaa !100
  %813 = getelementptr inbounds nuw i8, ptr %812, i64 56
  %814 = load ptr, ptr %813, align 8, !tbaa !109
  %815 = icmp eq ptr %814, null
  br i1 %815, label %920, label %816

816:                                              ; preds = %810
  %817 = load i64, ptr %52, align 8, !tbaa !57
  %818 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %819 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %820 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %821 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %822 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %823

823:                                              ; preds = %899, %816
  %824 = phi i64 [ %817, %816 ], [ %886, %899 ]
  %825 = load i64, ptr %52, align 8, !tbaa !57
  %826 = load i64, ptr %818, align 8, !tbaa !41
  %827 = icmp eq i64 %825, %826
  br i1 %827, label %828, label %884

828:                                              ; preds = %823
  %829 = load ptr, ptr %811, align 8, !tbaa !100
  %830 = getelementptr inbounds nuw i8, ptr %829, i64 68
  %831 = load i32, ptr %830, align 4, !tbaa !114
  %832 = icmp ne i32 %831, 0
  %833 = icmp ugt i64 %825, %824
  %834 = select i1 %832, i1 %833, i1 false
  br i1 %834, label %835, label %841

835:                                              ; preds = %828
  %836 = sub nuw i64 %825, %824
  %837 = load ptr, ptr %819, align 8, !tbaa !40
  %838 = getelementptr inbounds nuw i8, ptr %837, i64 %824
  %839 = load i64, ptr %820, align 8, !tbaa !59
  %840 = tail call i64 @crc32_z(i64 noundef %839, ptr noundef %838, i64 noundef %836) #12
  store i64 %840, ptr %820, align 8, !tbaa !59
  br label %841

841:                                              ; preds = %835, %828
  %842 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %842) #12
  %843 = getelementptr inbounds nuw i8, ptr %842, i64 40
  %844 = load i64, ptr %843, align 8, !tbaa !57
  %845 = load i32, ptr %43, align 8, !tbaa !107
  %846 = zext i32 %845 to i64
  %847 = tail call i64 @llvm.umin.i64(i64 %844, i64 %846)
  %848 = trunc nuw i64 %847 to i32
  %849 = icmp eq i64 %847, 0
  br i1 %849, label %880, label %850

850:                                              ; preds = %841
  %851 = load ptr, ptr %25, align 8, !tbaa !106
  %852 = getelementptr inbounds nuw i8, ptr %842, i64 32
  %853 = load ptr, ptr %852, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %851, ptr align 1 %853, i64 %847, i1 false)
  %854 = load ptr, ptr %25, align 8, !tbaa !106
  %855 = getelementptr inbounds nuw i8, ptr %854, i64 %847
  store ptr %855, ptr %25, align 8, !tbaa !106
  %856 = load ptr, ptr %852, align 8, !tbaa !58
  %857 = getelementptr inbounds nuw i8, ptr %856, i64 %847
  store ptr %857, ptr %852, align 8, !tbaa !58
  %858 = load i64, ptr %821, align 8, !tbaa !108
  %859 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %858, i64 %847), !nosanitize !45
  %860 = extractvalue { i64, i1 } %859, 1, !nosanitize !45
  br i1 %860, label %861, label %862, !prof !46, !nosanitize !45

861:                                              ; preds = %850
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

862:                                              ; preds = %850
  %863 = extractvalue { i64, i1 } %859, 0, !nosanitize !45
  store i64 %863, ptr %821, align 8, !tbaa !108
  %864 = load i32, ptr %43, align 8, !tbaa !107
  %865 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %864, i32 %848), !nosanitize !45
  %866 = extractvalue { i32, i1 } %865, 1, !nosanitize !45
  br i1 %866, label %867, label %868, !prof !46, !nosanitize !45

867:                                              ; preds = %862
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

868:                                              ; preds = %862
  %869 = extractvalue { i32, i1 } %865, 0, !nosanitize !45
  store i32 %869, ptr %43, align 8, !tbaa !107
  %870 = load i64, ptr %843, align 8, !tbaa !57
  %871 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %870, i64 %847), !nosanitize !45
  %872 = extractvalue { i64, i1 } %871, 1, !nosanitize !45
  br i1 %872, label %873, label %874, !prof !46, !nosanitize !45

873:                                              ; preds = %868
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

874:                                              ; preds = %868
  %875 = extractvalue { i64, i1 } %871, 0, !nosanitize !45
  store i64 %875, ptr %843, align 8, !tbaa !57
  %876 = icmp eq i64 %875, 0
  br i1 %876, label %877, label %880

877:                                              ; preds = %874
  %878 = getelementptr inbounds nuw i8, ptr %842, i64 16
  %879 = load ptr, ptr %878, align 8, !tbaa !40
  store ptr %879, ptr %852, align 8, !tbaa !58
  br label %880

880:                                              ; preds = %877, %874, %841
  %881 = load i64, ptr %52, align 8, !tbaa !57
  %882 = icmp eq i64 %881, 0
  br i1 %882, label %884, label %883

883:                                              ; preds = %880
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1189

884:                                              ; preds = %880, %823
  %885 = phi i64 [ %825, %823 ], [ 0, %880 ]
  %886 = phi i64 [ %824, %823 ], [ 0, %880 ]
  %887 = load i64, ptr %822, align 8, !tbaa !118
  %888 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %887, i64 1), !nosanitize !45
  %889 = extractvalue { i64, i1 } %888, 1, !nosanitize !45
  br i1 %889, label %890, label %891, !prof !46, !nosanitize !45

890:                                              ; preds = %884
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

891:                                              ; preds = %884
  %892 = extractvalue { i64, i1 } %888, 0, !nosanitize !45
  %893 = load ptr, ptr %811, align 8, !tbaa !100
  %894 = getelementptr inbounds nuw i8, ptr %893, i64 56
  %895 = load ptr, ptr %894, align 8, !tbaa !109
  store i64 %892, ptr %822, align 8, !tbaa !118
  %896 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %885, i64 1), !nosanitize !45
  %897 = extractvalue { i64, i1 } %896, 1, !nosanitize !45
  br i1 %897, label %898, label %899, !prof !46, !nosanitize !45

898:                                              ; preds = %891
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

899:                                              ; preds = %891
  %900 = extractvalue { i64, i1 } %896, 0, !nosanitize !45
  %901 = load ptr, ptr %819, align 8, !tbaa !40
  %902 = getelementptr inbounds nuw i8, ptr %895, i64 %887
  %903 = load i8, ptr %902, align 1, !tbaa !8
  store i64 %900, ptr %52, align 8, !tbaa !57
  %904 = getelementptr inbounds nuw i8, ptr %901, i64 %885
  store i8 %903, ptr %904, align 1, !tbaa !8
  %905 = icmp eq i8 %903, 0
  br i1 %905, label %906, label %823, !llvm.loop !123

906:                                              ; preds = %899
  %907 = load ptr, ptr %811, align 8, !tbaa !100
  %908 = getelementptr inbounds nuw i8, ptr %907, i64 68
  %909 = load i32, ptr %908, align 4, !tbaa !114
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %920, label %911

911:                                              ; preds = %906
  %912 = load i64, ptr %52, align 8, !tbaa !57
  %913 = icmp ugt i64 %912, %886
  br i1 %913, label %914, label %920

914:                                              ; preds = %911
  %915 = sub nuw i64 %912, %886
  %916 = load ptr, ptr %819, align 8, !tbaa !40
  %917 = getelementptr inbounds nuw i8, ptr %916, i64 %886
  %918 = load i64, ptr %820, align 8, !tbaa !59
  %919 = tail call i64 @crc32_z(i64 noundef %918, ptr noundef %917, i64 noundef %915) #12
  store i64 %919, ptr %820, align 8, !tbaa !59
  br label %920

920:                                              ; preds = %914, %911, %906, %810
  store i32 103, ptr %20, align 8, !tbaa !29
  br label %921

921:                                              ; preds = %920, %495
  %922 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %923 = load ptr, ptr %922, align 8, !tbaa !100
  %924 = getelementptr inbounds nuw i8, ptr %923, i64 68
  %925 = load i32, ptr %924, align 4, !tbaa !114
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %962, label %927

927:                                              ; preds = %921
  %928 = load i64, ptr %52, align 8, !tbaa !57
  %929 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %928, i64 2), !nosanitize !45
  %930 = extractvalue { i64, i1 } %929, 1, !nosanitize !45
  br i1 %930, label %931, label %932, !prof !46, !nosanitize !45

931:                                              ; preds = %927
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

932:                                              ; preds = %927
  %933 = extractvalue { i64, i1 } %929, 0, !nosanitize !45
  %934 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %935 = load i64, ptr %934, align 8, !tbaa !41
  %936 = icmp ugt i64 %933, %935
  br i1 %936, label %937, label %941

937:                                              ; preds = %932
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %938 = load i64, ptr %52, align 8, !tbaa !57
  %939 = icmp eq i64 %938, 0
  br i1 %939, label %941, label %940

940:                                              ; preds = %937
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1189

941:                                              ; preds = %937, %932
  %942 = phi i64 [ 0, %937 ], [ %928, %932 ]
  %943 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %944 = add nuw i64 %942, 1
  %945 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %946 = load ptr, ptr %945, align 8, !tbaa !40
  %947 = load i64, ptr %943, align 8, !tbaa !59
  %948 = trunc i64 %947 to i8
  store i64 %944, ptr %52, align 8, !tbaa !57
  %949 = getelementptr inbounds nuw i8, ptr %946, i64 %942
  store i8 %948, ptr %949, align 1, !tbaa !8
  %950 = load i64, ptr %52, align 8, !tbaa !57
  %951 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %950, i64 1), !nosanitize !45
  %952 = extractvalue { i64, i1 } %951, 1, !nosanitize !45
  br i1 %952, label %953, label %954, !prof !46, !nosanitize !45

953:                                              ; preds = %941
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

954:                                              ; preds = %941
  %955 = extractvalue { i64, i1 } %951, 0, !nosanitize !45
  %956 = load ptr, ptr %945, align 8, !tbaa !40
  %957 = load i64, ptr %943, align 8, !tbaa !59
  %958 = lshr i64 %957, 8
  %959 = trunc i64 %958 to i8
  store i64 %955, ptr %52, align 8, !tbaa !57
  %960 = getelementptr inbounds nuw i8, ptr %956, i64 %950
  store i8 %959, ptr %960, align 1, !tbaa !8
  %961 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %961, ptr %943, align 8, !tbaa !59
  br label %962

962:                                              ; preds = %954, %921
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %963 = load i64, ptr %52, align 8, !tbaa !57
  %964 = icmp eq i64 %963, 0
  br i1 %964, label %966, label %965

965:                                              ; preds = %962
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1189

966:                                              ; preds = %962, %495, %128
  %967 = load i32, ptr %29, align 8, !tbaa !81
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %969, label %978

969:                                              ; preds = %966, %118
  %970 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %971 = load i32, ptr %970, align 4, !tbaa !75
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %973, label %978

973:                                              ; preds = %969
  %974 = icmp eq i32 %1, 0
  br i1 %974, label %1189, label %975

975:                                              ; preds = %973
  %976 = load i32, ptr %20, align 8, !tbaa !29
  %977 = icmp eq i32 %976, 666
  br i1 %977, label %1040, label %978

978:                                              ; preds = %975, %969, %966
  %979 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %980 = load i32, ptr %979, align 4, !tbaa !48
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %982, label %984

982:                                              ; preds = %978
  %983 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %997

984:                                              ; preds = %978
  %985 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %986 = load i32, ptr %985, align 8, !tbaa !49
  switch i32 %986, label %991 [
    i32 2, label %987
    i32 3, label %989
  ]

987:                                              ; preds = %984
  %988 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %997

989:                                              ; preds = %984
  %990 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %997

991:                                              ; preds = %984
  %992 = sext i32 %980 to i64
  %993 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %992
  %994 = getelementptr inbounds nuw i8, ptr %993, i64 8
  %995 = load ptr, ptr %994, align 8, !tbaa !105
  %996 = tail call i32 %995(ptr noundef nonnull %14, i32 noundef %1) #12
  br label %997

997:                                              ; preds = %991, %989, %987, %982
  %998 = phi i32 [ %983, %982 ], [ %988, %987 ], [ %990, %989 ], [ %996, %991 ]
  %999 = and i32 %998, -2
  %1000 = icmp eq i32 %999, 2
  br i1 %1000, label %1001, label %1002

1001:                                             ; preds = %997
  store i32 666, ptr %20, align 8, !tbaa !29
  br label %1002

1002:                                             ; preds = %1001, %997
  %1003 = and i32 %998, -3
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1005, label %1009

1005:                                             ; preds = %1002
  %1006 = load i32, ptr %43, align 8, !tbaa !107
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1008, label %1189

1008:                                             ; preds = %1005
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1189

1009:                                             ; preds = %1002
  %1010 = icmp eq i32 %998, 1
  br i1 %1010, label %1011, label %1040

1011:                                             ; preds = %1009
  switch i32 %1, label %1013 [
    i32 1, label %1012
    i32 5, label %1036
  ]

1012:                                             ; preds = %1011
  tail call void @_tr_align(ptr noundef nonnull %14) #12
  br label %1036

1013:                                             ; preds = %1011
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #12
  %1014 = icmp eq i32 %1, 3
  br i1 %1014, label %1015, label %1036

1015:                                             ; preds = %1013
  %1016 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %1017 = load i32, ptr %1016, align 4, !tbaa !36
  %1018 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1017, i32 1), !nosanitize !45
  %1019 = extractvalue { i32, i1 } %1018, 1, !nosanitize !45
  br i1 %1019, label %1020, label %1021, !prof !46, !nosanitize !45

1020:                                             ; preds = %1015
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1021:                                             ; preds = %1015
  %1022 = extractvalue { i32, i1 } %1018, 0, !nosanitize !45
  %1023 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %1024 = load ptr, ptr %1023, align 8, !tbaa !37
  %1025 = zext i32 %1022 to i64
  %1026 = getelementptr inbounds nuw [2 x i8], ptr %1024, i64 %1025
  store i16 0, ptr %1026, align 2, !tbaa !62
  %1027 = shl nuw nsw i64 %1025, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1024, i8 0, i64 %1027, i1 false)
  %1028 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %1028, align 8, !tbaa !63
  %1029 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %1030 = load i32, ptr %1029, align 4, !tbaa !75
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1032, label %1036

1032:                                             ; preds = %1021
  %1033 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %1033, align 4, !tbaa !73
  %1034 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %1034, align 8, !tbaa !74
  %1035 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %1035, align 4, !tbaa !76
  br label %1036

1036:                                             ; preds = %1032, %1021, %1013, %1012, %1011
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1037 = load i32, ptr %43, align 8, !tbaa !107
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1039, label %1040

1039:                                             ; preds = %1036
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1189

1040:                                             ; preds = %1036, %1009, %975
  br i1 %37, label %1189, label %1041

1041:                                             ; preds = %1040
  %1042 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %1043 = load i32, ptr %1042, align 8, !tbaa !30
  %1044 = icmp slt i32 %1043, 1
  br i1 %1044, label %1189, label %1045

1045:                                             ; preds = %1041
  %1046 = icmp eq i32 %1043, 2
  %1047 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1046, label %1048, label %1137

1048:                                             ; preds = %1045
  %1049 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1050 = load i64, ptr %52, align 8, !tbaa !57
  %1051 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1050, i64 1), !nosanitize !45
  %1052 = extractvalue { i64, i1 } %1051, 1, !nosanitize !45
  br i1 %1052, label %1053, label %1054, !prof !46, !nosanitize !45

1053:                                             ; preds = %1048
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1054:                                             ; preds = %1048
  %1055 = extractvalue { i64, i1 } %1051, 0, !nosanitize !45
  %1056 = load ptr, ptr %1049, align 8, !tbaa !40
  %1057 = load i64, ptr %1047, align 8, !tbaa !59
  %1058 = trunc i64 %1057 to i8
  store i64 %1055, ptr %52, align 8, !tbaa !57
  %1059 = getelementptr inbounds nuw i8, ptr %1056, i64 %1050
  store i8 %1058, ptr %1059, align 1, !tbaa !8
  %1060 = load i64, ptr %52, align 8, !tbaa !57
  %1061 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1060, i64 1), !nosanitize !45
  %1062 = extractvalue { i64, i1 } %1061, 1, !nosanitize !45
  br i1 %1062, label %1063, label %1064, !prof !46, !nosanitize !45

1063:                                             ; preds = %1054
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1064:                                             ; preds = %1054
  %1065 = extractvalue { i64, i1 } %1061, 0, !nosanitize !45
  %1066 = load ptr, ptr %1049, align 8, !tbaa !40
  %1067 = load i64, ptr %1047, align 8, !tbaa !59
  %1068 = lshr i64 %1067, 8
  %1069 = trunc i64 %1068 to i8
  store i64 %1065, ptr %52, align 8, !tbaa !57
  %1070 = getelementptr inbounds nuw i8, ptr %1066, i64 %1060
  store i8 %1069, ptr %1070, align 1, !tbaa !8
  %1071 = load i64, ptr %52, align 8, !tbaa !57
  %1072 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1071, i64 1), !nosanitize !45
  %1073 = extractvalue { i64, i1 } %1072, 1, !nosanitize !45
  br i1 %1073, label %1074, label %1075, !prof !46, !nosanitize !45

1074:                                             ; preds = %1064
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1075:                                             ; preds = %1064
  %1076 = extractvalue { i64, i1 } %1072, 0, !nosanitize !45
  %1077 = load ptr, ptr %1049, align 8, !tbaa !40
  %1078 = load i64, ptr %1047, align 8, !tbaa !59
  %1079 = lshr i64 %1078, 16
  %1080 = trunc i64 %1079 to i8
  store i64 %1076, ptr %52, align 8, !tbaa !57
  %1081 = getelementptr inbounds nuw i8, ptr %1077, i64 %1071
  store i8 %1080, ptr %1081, align 1, !tbaa !8
  %1082 = load i64, ptr %52, align 8, !tbaa !57
  %1083 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1082, i64 1), !nosanitize !45
  %1084 = extractvalue { i64, i1 } %1083, 1, !nosanitize !45
  br i1 %1084, label %1085, label %1086, !prof !46, !nosanitize !45

1085:                                             ; preds = %1075
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1086:                                             ; preds = %1075
  %1087 = extractvalue { i64, i1 } %1083, 0, !nosanitize !45
  %1088 = load ptr, ptr %1049, align 8, !tbaa !40
  %1089 = load i64, ptr %1047, align 8, !tbaa !59
  %1090 = lshr i64 %1089, 24
  %1091 = trunc i64 %1090 to i8
  store i64 %1087, ptr %52, align 8, !tbaa !57
  %1092 = getelementptr inbounds nuw i8, ptr %1088, i64 %1082
  store i8 %1091, ptr %1092, align 1, !tbaa !8
  %1093 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1094 = load i64, ptr %52, align 8, !tbaa !57
  %1095 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1094, i64 1), !nosanitize !45
  %1096 = extractvalue { i64, i1 } %1095, 1, !nosanitize !45
  br i1 %1096, label %1097, label %1098, !prof !46, !nosanitize !45

1097:                                             ; preds = %1086
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1098:                                             ; preds = %1086
  %1099 = extractvalue { i64, i1 } %1095, 0, !nosanitize !45
  %1100 = load ptr, ptr %1049, align 8, !tbaa !40
  %1101 = load i64, ptr %1093, align 8, !tbaa !55
  %1102 = trunc i64 %1101 to i8
  store i64 %1099, ptr %52, align 8, !tbaa !57
  %1103 = getelementptr inbounds nuw i8, ptr %1100, i64 %1094
  store i8 %1102, ptr %1103, align 1, !tbaa !8
  %1104 = load i64, ptr %52, align 8, !tbaa !57
  %1105 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1104, i64 1), !nosanitize !45
  %1106 = extractvalue { i64, i1 } %1105, 1, !nosanitize !45
  br i1 %1106, label %1107, label %1108, !prof !46, !nosanitize !45

1107:                                             ; preds = %1098
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1108:                                             ; preds = %1098
  %1109 = extractvalue { i64, i1 } %1105, 0, !nosanitize !45
  %1110 = load ptr, ptr %1049, align 8, !tbaa !40
  %1111 = load i64, ptr %1093, align 8, !tbaa !55
  %1112 = lshr i64 %1111, 8
  %1113 = trunc i64 %1112 to i8
  store i64 %1109, ptr %52, align 8, !tbaa !57
  %1114 = getelementptr inbounds nuw i8, ptr %1110, i64 %1104
  store i8 %1113, ptr %1114, align 1, !tbaa !8
  %1115 = load i64, ptr %52, align 8, !tbaa !57
  %1116 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1115, i64 1), !nosanitize !45
  %1117 = extractvalue { i64, i1 } %1116, 1, !nosanitize !45
  br i1 %1117, label %1118, label %1119, !prof !46, !nosanitize !45

1118:                                             ; preds = %1108
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1119:                                             ; preds = %1108
  %1120 = extractvalue { i64, i1 } %1116, 0, !nosanitize !45
  %1121 = load ptr, ptr %1049, align 8, !tbaa !40
  %1122 = load i64, ptr %1093, align 8, !tbaa !55
  %1123 = lshr i64 %1122, 16
  %1124 = trunc i64 %1123 to i8
  store i64 %1120, ptr %52, align 8, !tbaa !57
  %1125 = getelementptr inbounds nuw i8, ptr %1121, i64 %1115
  store i8 %1124, ptr %1125, align 1, !tbaa !8
  %1126 = load i64, ptr %52, align 8, !tbaa !57
  %1127 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1126, i64 1), !nosanitize !45
  %1128 = extractvalue { i64, i1 } %1127, 1, !nosanitize !45
  br i1 %1128, label %1129, label %1130, !prof !46, !nosanitize !45

1129:                                             ; preds = %1119
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1130:                                             ; preds = %1119
  %1131 = extractvalue { i64, i1 } %1127, 0, !nosanitize !45
  %1132 = load ptr, ptr %1049, align 8, !tbaa !40
  %1133 = load i64, ptr %1093, align 8, !tbaa !55
  %1134 = lshr i64 %1133, 24
  %1135 = trunc i64 %1134 to i8
  store i64 %1131, ptr %52, align 8, !tbaa !57
  %1136 = getelementptr inbounds nuw i8, ptr %1132, i64 %1126
  store i8 %1135, ptr %1136, align 1, !tbaa !8
  br label %1180

1137:                                             ; preds = %1045
  %1138 = load i64, ptr %1047, align 8, !tbaa !59
  %1139 = lshr i64 %1138, 16
  %1140 = load i64, ptr %52, align 8, !tbaa !57
  %1141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1140, i64 1), !nosanitize !45
  %1142 = extractvalue { i64, i1 } %1141, 1, !nosanitize !45
  br i1 %1142, label %1143, label %1144, !prof !46, !nosanitize !45

1143:                                             ; preds = %1137
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1144:                                             ; preds = %1137
  %1145 = extractvalue { i64, i1 } %1141, 0, !nosanitize !45
  %1146 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1147 = load ptr, ptr %1146, align 8, !tbaa !40
  %1148 = lshr i64 %1138, 24
  %1149 = trunc i64 %1148 to i8
  store i64 %1145, ptr %52, align 8, !tbaa !57
  %1150 = getelementptr inbounds nuw i8, ptr %1147, i64 %1140
  store i8 %1149, ptr %1150, align 1, !tbaa !8
  %1151 = load i64, ptr %52, align 8, !tbaa !57
  %1152 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1151, i64 1), !nosanitize !45
  %1153 = extractvalue { i64, i1 } %1152, 1, !nosanitize !45
  br i1 %1153, label %1154, label %1155, !prof !46, !nosanitize !45

1154:                                             ; preds = %1144
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1155:                                             ; preds = %1144
  %1156 = extractvalue { i64, i1 } %1152, 0, !nosanitize !45
  %1157 = load ptr, ptr %1146, align 8, !tbaa !40
  %1158 = trunc i64 %1139 to i8
  store i64 %1156, ptr %52, align 8, !tbaa !57
  %1159 = getelementptr inbounds nuw i8, ptr %1157, i64 %1151
  store i8 %1158, ptr %1159, align 1, !tbaa !8
  %1160 = load i64, ptr %1047, align 8, !tbaa !59
  %1161 = trunc i64 %1160 to i8
  %1162 = load i64, ptr %52, align 8, !tbaa !57
  %1163 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1162, i64 1), !nosanitize !45
  %1164 = extractvalue { i64, i1 } %1163, 1, !nosanitize !45
  br i1 %1164, label %1165, label %1166, !prof !46, !nosanitize !45

1165:                                             ; preds = %1155
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1166:                                             ; preds = %1155
  %1167 = extractvalue { i64, i1 } %1163, 0, !nosanitize !45
  %1168 = load ptr, ptr %1146, align 8, !tbaa !40
  %1169 = lshr i64 %1160, 8
  %1170 = trunc i64 %1169 to i8
  store i64 %1167, ptr %52, align 8, !tbaa !57
  %1171 = getelementptr inbounds nuw i8, ptr %1168, i64 %1162
  store i8 %1170, ptr %1171, align 1, !tbaa !8
  %1172 = load i64, ptr %52, align 8, !tbaa !57
  %1173 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1172, i64 1), !nosanitize !45
  %1174 = extractvalue { i64, i1 } %1173, 1, !nosanitize !45
  br i1 %1174, label %1175, label %1176, !prof !46, !nosanitize !45

1175:                                             ; preds = %1166
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1176:                                             ; preds = %1166
  %1177 = extractvalue { i64, i1 } %1173, 0, !nosanitize !45
  %1178 = load ptr, ptr %1146, align 8, !tbaa !40
  store i64 %1177, ptr %52, align 8, !tbaa !57
  %1179 = getelementptr inbounds nuw i8, ptr %1178, i64 %1172
  store i8 %1161, ptr %1179, align 1, !tbaa !8
  br label %1180

1180:                                             ; preds = %1176, %1130
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1181 = load i32, ptr %1042, align 8, !tbaa !30
  %1182 = icmp sgt i32 %1181, 0
  br i1 %1182, label %1183, label %1185

1183:                                             ; preds = %1180
  %1184 = sub nsw i32 0, %1181
  store i32 %1184, ptr %1042, align 8, !tbaa !30
  br label %1185

1185:                                             ; preds = %1183, %1180
  %1186 = load i64, ptr %52, align 8, !tbaa !57
  %1187 = icmp eq i64 %1186, 0
  %1188 = zext i1 %1187 to i32
  br label %1189

1189:                                             ; preds = %1185, %1041, %1040, %1039, %1008, %1005, %973, %965, %940, %883, %771, %.loopexit39, %338, %232, %121, %112, %99, %46, %39, %22, %19, %16, %12, %8, %4, %2
  %1190 = phi i32 [ -5, %112 ], [ -2, %39 ], [ -5, %46 ], [ 0, %99 ], [ -5, %121 ], [ 0, %338 ], [ 0, %940 ], [ 0, %965 ], [ -2, %22 ], [ 0, %1040 ], [ %1188, %1185 ], [ 1, %1041 ], [ 0, %883 ], [ 0, %771 ], [ 0, %.loopexit39 ], [ 0, %232 ], [ 0, %1008 ], [ 0, %1039 ], [ 0, %1005 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ 0, %973 ]
  ret i32 %1190
}

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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !45
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !45
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !45
  br i1 %11, label %12, label %13, !prof !46, !nosanitize !45

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !45
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !45
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !45
  br i1 %17, label %18, label %19, !prof !46, !nosanitize !45

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !45
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !45
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !45
  br i1 %22, label %23, label %24, !prof !46, !nosanitize !45

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  br i1 %60, label %61, label %171, !prof !46, !nosanitize !45

61:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

62:                                               ; preds = %53, %53, %53, %53, %53, %53, %53, %53
  %63 = getelementptr inbounds nuw i8, ptr %48, i64 48
  %64 = load i32, ptr %63, align 8, !tbaa !30
  %65 = tail call i32 @llvm.abs.i32(i32 %64, i1 true)
  switch i32 %65, label %134 [
    i32 0, label %135
    i32 1, label %66
    i32 2, label %71
  ]

66:                                               ; preds = %62
  %67 = getelementptr inbounds nuw i8, ptr %48, i64 172
  %68 = load i32, ptr %67, align 4, !tbaa !73
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i64 6, i64 10
  br label %135

71:                                               ; preds = %62
  %72 = getelementptr inbounds nuw i8, ptr %48, i64 56
  %73 = load ptr, ptr %72, align 8, !tbaa !100
  %74 = icmp eq ptr %73, null
  br i1 %74, label %135, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds nuw i8, ptr %73, i64 24
  %77 = load ptr, ptr %76, align 8, !tbaa !112
  %78 = icmp eq ptr %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %73, i64 32
  %81 = load i32, ptr %80, align 8, !tbaa !117
  %82 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 2), !nosanitize !45
  %83 = extractvalue { i32, i1 } %82, 1, !nosanitize !45
  br i1 %83, label %84, label %85, !prof !46, !nosanitize !45

84:                                               ; preds = %79
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

85:                                               ; preds = %79
  %86 = extractvalue { i32, i1 } %82, 0, !nosanitize !45
  %87 = zext i32 %86 to i64
  %88 = add nuw nsw i64 %87, 18
  br label %89

89:                                               ; preds = %85, %75
  %90 = phi i64 [ %88, %85 ], [ 18, %75 ]
  %91 = getelementptr inbounds nuw i8, ptr %73, i64 40
  %92 = load ptr, ptr %91, align 8, !tbaa !111
  %93 = icmp eq ptr %92, null
  br i1 %93, label %.loopexit6, label %94

94:                                               ; preds = %89
  %95 = add nuw nsw i64 %90, 1
  %96 = insertvalue { i64, i1 } { i64 poison, i1 false }, i64 %95, 0
  br label %102

97:                                               ; preds = %102
  %98 = getelementptr inbounds nuw i8, ptr %104, i64 1
  %99 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %105, i64 1), !nosanitize !45
  %100 = extractvalue { i64, i1 } %99, 1, !nosanitize !45
  br i1 %100, label %101, label %102, !prof !130, !llvm.loop !131, !nosanitize !45

101:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

102:                                              ; preds = %94, %97
  %103 = phi { i64, i1 } [ %99, %97 ], [ %96, %94 ]
  %104 = phi ptr [ %98, %97 ], [ %92, %94 ]
  %105 = extractvalue { i64, i1 } %103, 0, !nosanitize !45
  %106 = load i8, ptr %104, align 1, !tbaa !8
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %.loopexit6, label %97, !llvm.loop !131

.loopexit6:                                       ; preds = %102, %89
  %108 = phi i64 [ %90, %89 ], [ %105, %102 ]
  %109 = getelementptr inbounds nuw i8, ptr %73, i64 56
  %110 = load ptr, ptr %109, align 8, !tbaa !109
  %111 = icmp eq ptr %110, null
  br i1 %111, label %.loopexit, label %112

112:                                              ; preds = %.loopexit6
  %113 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %108, i64 1), !nosanitize !45
  %114 = extractvalue { i64, i1 } %113, 1, !nosanitize !45
  br i1 %114, label %.loopexit5, label %.preheader, !prof !132, !nosanitize !45

115:                                              ; preds = %.preheader
  %116 = getelementptr inbounds nuw i8, ptr %120, i64 1
  %117 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %121, i64 1), !nosanitize !45
  %118 = extractvalue { i64, i1 } %117, 1, !nosanitize !45
  br i1 %118, label %.loopexit5, label %.preheader, !prof !130, !llvm.loop !133, !nosanitize !45

.loopexit5:                                       ; preds = %115, %112
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

.preheader:                                       ; preds = %112, %115
  %119 = phi { i64, i1 } [ %117, %115 ], [ %113, %112 ]
  %120 = phi ptr [ %116, %115 ], [ %110, %112 ]
  %121 = extractvalue { i64, i1 } %119, 0, !nosanitize !45
  %122 = load i8, ptr %120, align 1, !tbaa !8
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %.loopexit, label %115, !llvm.loop !133

.loopexit:                                        ; preds = %.preheader, %.loopexit6
  %124 = phi i64 [ %108, %.loopexit6 ], [ %121, %.preheader ]
  %125 = getelementptr inbounds nuw i8, ptr %73, i64 68
  %126 = load i32, ptr %125, align 4, !tbaa !114
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %.loopexit
  %129 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 2), !nosanitize !45
  %130 = extractvalue { i64, i1 } %129, 1, !nosanitize !45
  br i1 %130, label %131, label %132, !prof !46, !nosanitize !45

131:                                              ; preds = %128
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

132:                                              ; preds = %128
  %133 = extractvalue { i64, i1 } %129, 0, !nosanitize !45
  br label %135

134:                                              ; preds = %62
  br label %135

135:                                              ; preds = %134, %132, %.loopexit, %71, %66, %62
  %136 = phi i64 [ 18, %134 ], [ 18, %71 ], [ %70, %66 ], [ 0, %62 ], [ %133, %132 ], [ %124, %.loopexit ]
  %137 = getelementptr inbounds nuw i8, ptr %48, i64 84
  %138 = load i32, ptr %137, align 4, !tbaa !31
  %139 = icmp eq i32 %138, 15
  %140 = getelementptr inbounds nuw i8, ptr %48, i64 136
  %141 = load i32, ptr %140, align 8, !tbaa !51
  %142 = icmp eq i32 %141, 15
  %143 = select i1 %139, i1 %142, i1 false
  br i1 %143, label %157, label %144

144:                                              ; preds = %135
  %145 = icmp ugt i32 %138, %141
  br i1 %145, label %150, label %146

146:                                              ; preds = %144
  %147 = getelementptr inbounds nuw i8, ptr %48, i64 196
  %148 = load i32, ptr %147, align 4, !tbaa !48
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146, %144
  br label %151

151:                                              ; preds = %150, %146
  %152 = phi i64 [ %36, %150 ], [ %27, %146 ]
  %153 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %152, i64 %136), !nosanitize !45
  %154 = extractvalue { i64, i1 } %153, 0, !nosanitize !45
  %155 = extractvalue { i64, i1 } %153, 1, !nosanitize !45
  br i1 %155, label %156, label %171, !prof !46, !nosanitize !45

156:                                              ; preds = %151
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

157:                                              ; preds = %135
  %158 = lshr i64 %1, 12
  %159 = lshr i64 %1, 14
  %160 = lshr i64 %1, 25
  %161 = add i64 %31, %158
  %162 = add i64 %161, %159
  %163 = add i64 %162, %160
  %164 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %163, i64 %136), !nosanitize !45
  %165 = extractvalue { i64, i1 } %164, 1, !nosanitize !45
  br i1 %165, label %166, label %167, !prof !46, !nosanitize !45

166:                                              ; preds = %157
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

167:                                              ; preds = %157
  %168 = extractvalue { i64, i1 } %164, 0, !nosanitize !45
  %169 = icmp ult i64 %168, %1
  %170 = select i1 %169, i64 -1, i64 %168
  br label %171

171:                                              ; preds = %167, %151, %56
  %172 = phi i64 [ %170, %167 ], [ %59, %56 ], [ %154, %151 ]
  ret i64 %172
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !45
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !45
  br i1 %5, label %6, label %7, !prof !46, !nosanitize !45

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !45
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !45
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !45
  br i1 %11, label %12, label %13, !prof !46, !nosanitize !45

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !45
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !45
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !45
  br i1 %17, label %18, label %19, !prof !46, !nosanitize !45

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !45
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !45
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !45
  br i1 %22, label %23, label %24, !prof !46, !nosanitize !45

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  br i1 %60, label %61, label %171, !prof !46, !nosanitize !45

61:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

62:                                               ; preds = %53, %53, %53, %53, %53, %53, %53, %53
  %63 = getelementptr inbounds nuw i8, ptr %48, i64 48
  %64 = load i32, ptr %63, align 8, !tbaa !30
  %65 = tail call i32 @llvm.abs.i32(i32 %64, i1 true)
  switch i32 %65, label %134 [
    i32 0, label %135
    i32 1, label %66
    i32 2, label %71
  ]

66:                                               ; preds = %62
  %67 = getelementptr inbounds nuw i8, ptr %48, i64 172
  %68 = load i32, ptr %67, align 4, !tbaa !73
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i64 6, i64 10
  br label %135

71:                                               ; preds = %62
  %72 = getelementptr inbounds nuw i8, ptr %48, i64 56
  %73 = load ptr, ptr %72, align 8, !tbaa !100
  %74 = icmp eq ptr %73, null
  br i1 %74, label %135, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds nuw i8, ptr %73, i64 24
  %77 = load ptr, ptr %76, align 8, !tbaa !112
  %78 = icmp eq ptr %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %73, i64 32
  %81 = load i32, ptr %80, align 8, !tbaa !117
  %82 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 2), !nosanitize !45
  %83 = extractvalue { i32, i1 } %82, 1, !nosanitize !45
  br i1 %83, label %84, label %85, !prof !46, !nosanitize !45

84:                                               ; preds = %79
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

85:                                               ; preds = %79
  %86 = extractvalue { i32, i1 } %82, 0, !nosanitize !45
  %87 = zext i32 %86 to i64
  %88 = add nuw nsw i64 %87, 18
  br label %89

89:                                               ; preds = %85, %75
  %90 = phi i64 [ %88, %85 ], [ 18, %75 ]
  %91 = getelementptr inbounds nuw i8, ptr %73, i64 40
  %92 = load ptr, ptr %91, align 8, !tbaa !111
  %93 = icmp eq ptr %92, null
  br i1 %93, label %.loopexit6, label %94

94:                                               ; preds = %89
  %95 = add nuw nsw i64 %90, 1
  %96 = insertvalue { i64, i1 } { i64 poison, i1 false }, i64 %95, 0
  br label %102

97:                                               ; preds = %102
  %98 = getelementptr inbounds nuw i8, ptr %104, i64 1
  %99 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %105, i64 1), !nosanitize !45
  %100 = extractvalue { i64, i1 } %99, 1, !nosanitize !45
  br i1 %100, label %101, label %102, !prof !130, !llvm.loop !131, !nosanitize !45

101:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

102:                                              ; preds = %94, %97
  %103 = phi { i64, i1 } [ %99, %97 ], [ %96, %94 ]
  %104 = phi ptr [ %98, %97 ], [ %92, %94 ]
  %105 = extractvalue { i64, i1 } %103, 0, !nosanitize !45
  %106 = load i8, ptr %104, align 1, !tbaa !8
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %.loopexit6, label %97, !llvm.loop !131

.loopexit6:                                       ; preds = %102, %89
  %108 = phi i64 [ %90, %89 ], [ %105, %102 ]
  %109 = getelementptr inbounds nuw i8, ptr %73, i64 56
  %110 = load ptr, ptr %109, align 8, !tbaa !109
  %111 = icmp eq ptr %110, null
  br i1 %111, label %.loopexit, label %112

112:                                              ; preds = %.loopexit6
  %113 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %108, i64 1), !nosanitize !45
  %114 = extractvalue { i64, i1 } %113, 1, !nosanitize !45
  br i1 %114, label %.loopexit5, label %.preheader, !prof !132, !nosanitize !45

115:                                              ; preds = %.preheader
  %116 = getelementptr inbounds nuw i8, ptr %120, i64 1
  %117 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %121, i64 1), !nosanitize !45
  %118 = extractvalue { i64, i1 } %117, 1, !nosanitize !45
  br i1 %118, label %.loopexit5, label %.preheader, !prof !130, !llvm.loop !133, !nosanitize !45

.loopexit5:                                       ; preds = %115, %112
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

.preheader:                                       ; preds = %112, %115
  %119 = phi { i64, i1 } [ %117, %115 ], [ %113, %112 ]
  %120 = phi ptr [ %116, %115 ], [ %110, %112 ]
  %121 = extractvalue { i64, i1 } %119, 0, !nosanitize !45
  %122 = load i8, ptr %120, align 1, !tbaa !8
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %.loopexit, label %115, !llvm.loop !133

.loopexit:                                        ; preds = %.preheader, %.loopexit6
  %124 = phi i64 [ %108, %.loopexit6 ], [ %121, %.preheader ]
  %125 = getelementptr inbounds nuw i8, ptr %73, i64 68
  %126 = load i32, ptr %125, align 4, !tbaa !114
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %.loopexit
  %129 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 2), !nosanitize !45
  %130 = extractvalue { i64, i1 } %129, 1, !nosanitize !45
  br i1 %130, label %131, label %132, !prof !46, !nosanitize !45

131:                                              ; preds = %128
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

132:                                              ; preds = %128
  %133 = extractvalue { i64, i1 } %129, 0, !nosanitize !45
  br label %135

134:                                              ; preds = %62
  br label %135

135:                                              ; preds = %134, %132, %.loopexit, %71, %66, %62
  %136 = phi i64 [ 18, %134 ], [ 18, %71 ], [ %70, %66 ], [ 0, %62 ], [ %133, %132 ], [ %124, %.loopexit ]
  %137 = getelementptr inbounds nuw i8, ptr %48, i64 84
  %138 = load i32, ptr %137, align 4, !tbaa !31
  %139 = icmp eq i32 %138, 15
  %140 = getelementptr inbounds nuw i8, ptr %48, i64 136
  %141 = load i32, ptr %140, align 8, !tbaa !51
  %142 = icmp eq i32 %141, 15
  %143 = select i1 %139, i1 %142, i1 false
  br i1 %143, label %157, label %144

144:                                              ; preds = %135
  %145 = icmp ugt i32 %138, %141
  br i1 %145, label %150, label %146

146:                                              ; preds = %144
  %147 = getelementptr inbounds nuw i8, ptr %48, i64 196
  %148 = load i32, ptr %147, align 4, !tbaa !48
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146, %144
  br label %151

151:                                              ; preds = %150, %146
  %152 = phi i64 [ %36, %150 ], [ %27, %146 ]
  %153 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %152, i64 %136), !nosanitize !45
  %154 = extractvalue { i64, i1 } %153, 0, !nosanitize !45
  %155 = extractvalue { i64, i1 } %153, 1, !nosanitize !45
  br i1 %155, label %156, label %171, !prof !46, !nosanitize !45

156:                                              ; preds = %151
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

157:                                              ; preds = %135
  %158 = lshr i64 %1, 12
  %159 = lshr i64 %1, 14
  %160 = lshr i64 %1, 25
  %161 = add i64 %31, %158
  %162 = add i64 %161, %159
  %163 = add i64 %162, %160
  %164 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %163, i64 %136), !nosanitize !45
  %165 = extractvalue { i64, i1 } %164, 1, !nosanitize !45
  br i1 %165, label %166, label %167, !prof !46, !nosanitize !45

166:                                              ; preds = %157
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

167:                                              ; preds = %157
  %168 = extractvalue { i64, i1 } %164, 0, !nosanitize !45
  %169 = icmp ult i64 %168, %1
  %170 = select i1 %169, i64 -1, i64 %168
  br label %171

171:                                              ; preds = %167, %151, %56
  %172 = phi i64 [ %170, %167 ], [ %59, %56 ], [ %154, %151 ]
  ret i64 %172
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef nonnull captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %3) #12
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

26:                                               ; preds = %12
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !45
  store i64 %27, ptr %21, align 8, !tbaa !108
  %28 = load i32, ptr %6, align 8, !tbaa !107
  %29 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %10), !nosanitize !45
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !45
  br i1 %30, label %31, label %32, !prof !46, !nosanitize !45

31:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !45
  store i32 %33, ptr %6, align 8, !tbaa !107
  %34 = load i64, ptr %4, align 8, !tbaa !57
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %9), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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

27:                                               ; preds = %248, %8
  %28 = load i32, ptr %18, align 4, !tbaa !101
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 42), !nosanitize !45
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !45
  br i1 %30, label %31, label %32, !prof !46, !nosanitize !45

31:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  %42 = load i64, ptr %20, align 8, !tbaa !74
  %43 = trunc i64 %42 to i32
  %44 = sub i32 %41, %43
  %45 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %46 = load i32, ptr %45, align 8, !tbaa !81
  %47 = zext i32 %44 to i64
  %48 = zext i32 %46 to i64
  %49 = add nuw nsw i64 %47, %48
  %50 = icmp samesign ult i64 %49, 65535
  %51 = add i32 %44, %46
  %spec.select = select i1 %50, i32 %51, i32 65535
  %52 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %40)
  %53 = icmp ult i32 %52, %14
  br i1 %53, label %54, label %64

54:                                               ; preds = %39
  %55 = icmp eq i32 %52, 0
  %56 = and i1 %21, %55
  %57 = or i1 %22, %56
  br i1 %57, label %.loopexit, label %58

58:                                               ; preds = %54
  %59 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !45
  %60 = extractvalue { i32, i1 } %59, 1, !nosanitize !45
  br i1 %60, label %61, label %62, !prof !46, !nosanitize !45

61:                                               ; preds = %58
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

62:                                               ; preds = %58
  %63 = icmp eq i32 %52, %51
  br i1 %63, label %64, label %.loopexit

64:                                               ; preds = %62, %39
  br i1 %23, label %65, label %72

65:                                               ; preds = %64
  %66 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !45
  %67 = extractvalue { i32, i1 } %66, 1, !nosanitize !45
  br i1 %67, label %68, label %69, !prof !46, !nosanitize !45

68:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

69:                                               ; preds = %65
  %70 = icmp eq i32 %52, %51
  %71 = zext i1 %70 to i32
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i32 [ 0, %64 ], [ %71, %69 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %73) #12
  %74 = load i64, ptr %25, align 8, !tbaa !57
  %75 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %74, i64 4), !nosanitize !45
  %76 = extractvalue { i64, i1 } %75, 1, !nosanitize !45
  br i1 %76, label %77, label %78, !prof !46, !nosanitize !45

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

78:                                               ; preds = %72
  %79 = extractvalue { i64, i1 } %75, 0, !nosanitize !45
  %80 = load ptr, ptr %24, align 8, !tbaa !40
  %81 = trunc i32 %52 to i8
  %82 = getelementptr inbounds nuw i8, ptr %80, i64 %79
  store i8 %81, ptr %82, align 1, !tbaa !8
  %83 = load i64, ptr %25, align 8, !tbaa !57
  %84 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 3), !nosanitize !45
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

87:                                               ; preds = %78
  %88 = extractvalue { i64, i1 } %84, 0, !nosanitize !45
  %89 = load ptr, ptr %24, align 8, !tbaa !40
  %90 = lshr i32 %52, 8
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds nuw i8, ptr %89, i64 %88
  store i8 %91, ptr %92, align 1, !tbaa !8
  %93 = load i64, ptr %25, align 8, !tbaa !57
  %94 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %93, i64 2), !nosanitize !45
  %95 = extractvalue { i64, i1 } %94, 1, !nosanitize !45
  br i1 %95, label %96, label %97, !prof !46, !nosanitize !45

96:                                               ; preds = %87
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

97:                                               ; preds = %87
  %98 = extractvalue { i64, i1 } %94, 0, !nosanitize !45
  %99 = load ptr, ptr %24, align 8, !tbaa !40
  %100 = xor i32 %52, -1
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds nuw i8, ptr %99, i64 %98
  store i8 %101, ptr %102, align 1, !tbaa !8
  %103 = load i64, ptr %25, align 8, !tbaa !57
  %104 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %103, i64 1), !nosanitize !45
  %105 = extractvalue { i64, i1 } %104, 1, !nosanitize !45
  br i1 %105, label %106, label %107, !prof !46, !nosanitize !45

106:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

107:                                              ; preds = %97
  %108 = extractvalue { i64, i1 } %104, 0, !nosanitize !45
  %109 = load ptr, ptr %24, align 8, !tbaa !40
  %110 = lshr i32 %100, 8
  %111 = trunc i32 %110 to i8
  %112 = getelementptr inbounds nuw i8, ptr %109, i64 %108
  store i8 %111, ptr %112, align 1, !tbaa !8
  %113 = load ptr, ptr %0, align 8, !tbaa !20
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 56
  %115 = load ptr, ptr %114, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %115) #12
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 40
  %117 = load i64, ptr %116, align 8, !tbaa !57
  %118 = getelementptr inbounds nuw i8, ptr %113, i64 32
  %119 = load i32, ptr %118, align 8, !tbaa !107
  %120 = zext i32 %119 to i64
  %121 = tail call i64 @llvm.umin.i64(i64 %117, i64 %120)
  %122 = trunc nuw i64 %121 to i32
  %123 = icmp eq i64 %121, 0
  br i1 %123, label %156, label %124

124:                                              ; preds = %107
  %125 = getelementptr inbounds nuw i8, ptr %113, i64 24
  %126 = load ptr, ptr %125, align 8, !tbaa !106
  %127 = getelementptr inbounds nuw i8, ptr %115, i64 32
  %128 = load ptr, ptr %127, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %126, ptr align 1 %128, i64 %121, i1 false)
  %129 = load ptr, ptr %125, align 8, !tbaa !106
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 %121
  store ptr %130, ptr %125, align 8, !tbaa !106
  %131 = load ptr, ptr %127, align 8, !tbaa !58
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 %121
  store ptr %132, ptr %127, align 8, !tbaa !58
  %133 = getelementptr inbounds nuw i8, ptr %113, i64 40
  %134 = load i64, ptr %133, align 8, !tbaa !108
  %135 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %134, i64 %121), !nosanitize !45
  %136 = extractvalue { i64, i1 } %135, 1, !nosanitize !45
  br i1 %136, label %137, label %138, !prof !46, !nosanitize !45

137:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

138:                                              ; preds = %124
  %139 = extractvalue { i64, i1 } %135, 0, !nosanitize !45
  store i64 %139, ptr %133, align 8, !tbaa !108
  %140 = load i32, ptr %118, align 8, !tbaa !107
  %141 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %140, i32 %122), !nosanitize !45
  %142 = extractvalue { i32, i1 } %141, 1, !nosanitize !45
  br i1 %142, label %143, label %144, !prof !46, !nosanitize !45

143:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

144:                                              ; preds = %138
  %145 = extractvalue { i32, i1 } %141, 0, !nosanitize !45
  store i32 %145, ptr %118, align 8, !tbaa !107
  %146 = load i64, ptr %116, align 8, !tbaa !57
  %147 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %146, i64 %121), !nosanitize !45
  %148 = extractvalue { i64, i1 } %147, 1, !nosanitize !45
  br i1 %148, label %149, label %150, !prof !46, !nosanitize !45

149:                                              ; preds = %144
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

150:                                              ; preds = %144
  %151 = extractvalue { i64, i1 } %147, 0, !nosanitize !45
  store i64 %151, ptr %116, align 8, !tbaa !57
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = getelementptr inbounds nuw i8, ptr %115, i64 16
  %155 = load ptr, ptr %154, align 8, !tbaa !40
  store ptr %155, ptr %127, align 8, !tbaa !58
  br label %156

156:                                              ; preds = %153, %150, %107
  %157 = icmp eq i32 %41, %43
  br i1 %157, label %188, label %158

158:                                              ; preds = %156
  %159 = tail call i32 @llvm.umin.i32(i32 %44, i32 %52)
  %160 = load ptr, ptr %0, align 8, !tbaa !20
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 24
  %162 = load ptr, ptr %161, align 8, !tbaa !106
  %163 = load ptr, ptr %26, align 8, !tbaa !34
  %164 = load i64, ptr %20, align 8, !tbaa !74
  %165 = getelementptr inbounds i8, ptr %163, i64 %164
  %166 = zext i32 %159 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %162, ptr align 1 %165, i64 %166, i1 false)
  %167 = load ptr, ptr %0, align 8, !tbaa !20
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 24
  %169 = load ptr, ptr %168, align 8, !tbaa !106
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 %166
  store ptr %170, ptr %168, align 8, !tbaa !106
  %171 = getelementptr inbounds nuw i8, ptr %167, i64 32
  %172 = load i32, ptr %171, align 8, !tbaa !107
  %173 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %172, i32 %159), !nosanitize !45
  %174 = extractvalue { i32, i1 } %173, 1, !nosanitize !45
  br i1 %174, label %175, label %176, !prof !46, !nosanitize !45

175:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

176:                                              ; preds = %158
  %177 = extractvalue { i32, i1 } %173, 0, !nosanitize !45
  store i32 %177, ptr %171, align 8, !tbaa !107
  %178 = getelementptr inbounds nuw i8, ptr %167, i64 40
  %179 = load i64, ptr %178, align 8, !tbaa !108
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %179, i64 %166), !nosanitize !45
  %181 = extractvalue { i64, i1 } %180, 1, !nosanitize !45
  br i1 %181, label %182, label %183, !prof !46, !nosanitize !45

182:                                              ; preds = %176
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

183:                                              ; preds = %176
  %184 = extractvalue { i64, i1 } %180, 0, !nosanitize !45
  store i64 %184, ptr %178, align 8, !tbaa !108
  %185 = load i64, ptr %20, align 8, !tbaa !74
  %186 = add nsw i64 %185, %166
  store i64 %186, ptr %20, align 8, !tbaa !74
  %187 = sub i32 %52, %159
  br label %188

188:                                              ; preds = %183, %156
  %189 = phi i32 [ %187, %183 ], [ %52, %156 ]
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %248, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %0, align 8, !tbaa !20
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 24
  %194 = load ptr, ptr %193, align 8, !tbaa !106
  %195 = getelementptr inbounds nuw i8, ptr %192, i64 8
  %196 = load i32, ptr %195, align 8, !tbaa !81
  %197 = tail call i32 @llvm.umin.i32(i32 %196, i32 %189)
  %198 = icmp eq i32 %196, 0
  br i1 %198, label %228, label %199

199:                                              ; preds = %191
  %200 = sub i32 %196, %197
  store i32 %200, ptr %195, align 8, !tbaa !81
  %201 = load ptr, ptr %192, align 8, !tbaa !82
  %202 = zext i32 %197 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %194, ptr align 1 %201, i64 %202, i1 false)
  %203 = getelementptr inbounds nuw i8, ptr %192, i64 56
  %204 = load ptr, ptr %203, align 8, !tbaa !19
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 48
  %206 = load i32, ptr %205, align 8, !tbaa !30
  switch i32 %206, label %215 [
    i32 1, label %207
    i32 2, label %211
  ]

207:                                              ; preds = %199
  %208 = getelementptr inbounds nuw i8, ptr %192, i64 96
  %209 = load i64, ptr %208, align 8, !tbaa !59
  %210 = tail call i64 @adler32(i64 noundef %209, ptr noundef %194, i32 noundef %197) #12
  store i64 %210, ptr %208, align 8, !tbaa !59
  br label %215

211:                                              ; preds = %199
  %212 = getelementptr inbounds nuw i8, ptr %192, i64 96
  %213 = load i64, ptr %212, align 8, !tbaa !59
  %214 = tail call i64 @crc32(i64 noundef %213, ptr noundef %194, i32 noundef %197) #12
  store i64 %214, ptr %212, align 8, !tbaa !59
  br label %215

215:                                              ; preds = %211, %207, %199
  %216 = load ptr, ptr %192, align 8, !tbaa !82
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 %202
  store ptr %217, ptr %192, align 8, !tbaa !82
  %218 = getelementptr inbounds nuw i8, ptr %192, i64 16
  %219 = load i64, ptr %218, align 8, !tbaa !55
  %220 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %219, i64 %202), !nosanitize !45
  %221 = extractvalue { i64, i1 } %220, 1, !nosanitize !45
  br i1 %221, label %222, label %223, !prof !46, !nosanitize !45

222:                                              ; preds = %215
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

223:                                              ; preds = %215
  %224 = extractvalue { i64, i1 } %220, 0, !nosanitize !45
  store i64 %224, ptr %218, align 8, !tbaa !55
  %225 = load ptr, ptr %0, align 8, !tbaa !20
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 24
  %227 = load ptr, ptr %226, align 8, !tbaa !106
  br label %228

228:                                              ; preds = %223, %191
  %229 = phi ptr [ %194, %191 ], [ %227, %223 ]
  %230 = phi ptr [ %192, %191 ], [ %225, %223 ]
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 24
  %232 = zext i32 %189 to i64
  %233 = getelementptr inbounds nuw i8, ptr %229, i64 %232
  store ptr %233, ptr %231, align 8, !tbaa !106
  %234 = getelementptr inbounds nuw i8, ptr %230, i64 32
  %235 = load i32, ptr %234, align 8, !tbaa !107
  %236 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %235, i32 %189), !nosanitize !45
  %237 = extractvalue { i32, i1 } %236, 1, !nosanitize !45
  br i1 %237, label %238, label %239, !prof !46, !nosanitize !45

238:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

239:                                              ; preds = %228
  %240 = extractvalue { i32, i1 } %236, 0, !nosanitize !45
  store i32 %240, ptr %234, align 8, !tbaa !107
  %241 = getelementptr inbounds nuw i8, ptr %230, i64 40
  %242 = load i64, ptr %241, align 8, !tbaa !108
  %243 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %242, i64 %232), !nosanitize !45
  %244 = extractvalue { i64, i1 } %243, 1, !nosanitize !45
  br i1 %244, label %245, label %246, !prof !46, !nosanitize !45

245:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

246:                                              ; preds = %239
  %247 = extractvalue { i64, i1 } %243, 0, !nosanitize !45
  store i64 %247, ptr %241, align 8, !tbaa !108
  br label %248

248:                                              ; preds = %246, %188
  %249 = icmp eq i32 %73, 0
  br i1 %249, label %27, label %250, !llvm.loop !134

250:                                              ; preds = %248
  %251 = load ptr, ptr %0, align 8, !tbaa !20
  br label %.loopexit, !llvm.loop !134

.loopexit:                                        ; preds = %62, %54, %32, %250
  %252 = phi ptr [ %251, %250 ], [ %35, %32 ], [ %35, %54 ], [ %35, %62 ]
  %253 = phi i1 [ false, %250 ], [ true, %32 ], [ true, %54 ], [ true, %62 ]
  %254 = getelementptr inbounds nuw i8, ptr %252, i64 8
  %255 = load i32, ptr %254, align 8, !tbaa !81
  %256 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %255), !nosanitize !45
  %257 = extractvalue { i32, i1 } %256, 0, !nosanitize !45
  %258 = extractvalue { i32, i1 } %256, 1, !nosanitize !45
  br i1 %258, label %259, label %260, !prof !46, !nosanitize !45

259:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

260:                                              ; preds = %.loopexit
  %261 = icmp eq i32 %257, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %260
  %263 = load i32, ptr %19, align 4, !tbaa !73
  %264 = zext i32 %263 to i64
  br label %342

265:                                              ; preds = %260
  %266 = load i32, ptr %10, align 8, !tbaa !32
  %267 = icmp ult i32 %257, %266
  br i1 %267, label %277, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %269, align 8, !tbaa !125
  %270 = load ptr, ptr %26, align 8, !tbaa !34
  %271 = load ptr, ptr %252, align 8, !tbaa !82
  %272 = zext i32 %266 to i64
  %273 = sub nsw i64 0, %272
  %274 = getelementptr inbounds i8, ptr %271, i64 %273
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %270, ptr align 1 %274, i64 %272, i1 false)
  %275 = load i32, ptr %10, align 8, !tbaa !32
  store i32 %275, ptr %19, align 4, !tbaa !73
  %276 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %275, ptr %276, align 4, !tbaa !76
  br label %339

277:                                              ; preds = %265
  %278 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %279 = load i64, ptr %278, align 8, !tbaa !61
  %280 = load i32, ptr %19, align 4, !tbaa !73
  %281 = zext i32 %280 to i64
  %282 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %279, i64 %281), !nosanitize !45
  %283 = extractvalue { i64, i1 } %282, 1, !nosanitize !45
  br i1 %283, label %284, label %285, !prof !46, !nosanitize !45

284:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

285:                                              ; preds = %277
  %286 = extractvalue { i64, i1 } %282, 0, !nosanitize !45
  %287 = zext i32 %257 to i64
  %288 = icmp ugt i64 %286, %287
  br i1 %288, label %310, label %289

289:                                              ; preds = %285
  %290 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %280, i32 %266), !nosanitize !45
  %291 = extractvalue { i32, i1 } %290, 1, !nosanitize !45
  br i1 %291, label %292, label %293, !prof !46, !nosanitize !45

292:                                              ; preds = %289
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

293:                                              ; preds = %289
  %294 = extractvalue { i32, i1 } %290, 0, !nosanitize !45
  store i32 %294, ptr %19, align 4, !tbaa !73
  %295 = load ptr, ptr %26, align 8, !tbaa !34
  %296 = zext i32 %266 to i64
  %297 = getelementptr inbounds nuw i8, ptr %295, i64 %296
  %298 = zext i32 %294 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %295, ptr nonnull align 1 %297, i64 %298, i1 false)
  %299 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %300 = load i32, ptr %299, align 8, !tbaa !125
  %301 = icmp ult i32 %300, 2
  br i1 %301, label %302, label %304

302:                                              ; preds = %293
  %303 = add nuw nsw i32 %300, 1
  store i32 %303, ptr %299, align 8, !tbaa !125
  br label %304

304:                                              ; preds = %302, %293
  %305 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %306 = load i32, ptr %305, align 4, !tbaa !76
  %307 = load i32, ptr %19, align 4, !tbaa !73
  %308 = icmp ugt i32 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  store i32 %307, ptr %305, align 4, !tbaa !76
  br label %310

310:                                              ; preds = %309, %304, %285
  %311 = phi i32 [ %307, %304 ], [ %307, %309 ], [ %280, %285 ]
  %312 = load ptr, ptr %26, align 8, !tbaa !34
  %313 = zext i32 %311 to i64
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 %313
  %315 = load ptr, ptr %0, align 8, !tbaa !20
  %316 = load ptr, ptr %315, align 8, !tbaa !82
  %317 = sub nsw i64 0, %287
  %318 = getelementptr inbounds i8, ptr %316, i64 %317
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %314, ptr nonnull align 1 %318, i64 %287, i1 false)
  %319 = load i32, ptr %19, align 4, !tbaa !73
  %320 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %319, i32 %257), !nosanitize !45
  %321 = extractvalue { i32, i1 } %320, 1, !nosanitize !45
  br i1 %321, label %322, label %323, !prof !46, !nosanitize !45

322:                                              ; preds = %310
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

323:                                              ; preds = %310
  %324 = extractvalue { i32, i1 } %320, 0, !nosanitize !45
  store i32 %324, ptr %19, align 4, !tbaa !73
  %325 = load i32, ptr %10, align 8, !tbaa !32
  %326 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %327 = load i32, ptr %326, align 4, !tbaa !76
  %328 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %325, i32 %327), !nosanitize !45
  %329 = extractvalue { i32, i1 } %328, 1, !nosanitize !45
  br i1 %329, label %330, label %331, !prof !46, !nosanitize !45

330:                                              ; preds = %323
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

331:                                              ; preds = %323
  %332 = extractvalue { i32, i1 } %328, 0, !nosanitize !45
  %333 = tail call i32 @llvm.umin.i32(i32 %257, i32 %332)
  %334 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %327, i32 %333), !nosanitize !45
  %335 = extractvalue { i32, i1 } %334, 1, !nosanitize !45
  br i1 %335, label %336, label %337, !prof !46, !nosanitize !45

336:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

337:                                              ; preds = %331
  %338 = extractvalue { i32, i1 } %334, 0, !nosanitize !45
  store i32 %338, ptr %326, align 4, !tbaa !76
  br label %339

339:                                              ; preds = %337, %268
  %340 = phi i32 [ %324, %337 ], [ %275, %268 ]
  %341 = zext i32 %340 to i64
  store i64 %341, ptr %20, align 8, !tbaa !74
  br label %342

342:                                              ; preds = %339, %262
  %343 = phi i64 [ %264, %262 ], [ %341, %339 ]
  %344 = phi i32 [ %263, %262 ], [ %340, %339 ]
  %345 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %346 = load i64, ptr %345, align 8, !tbaa !38
  %347 = icmp ult i64 %346, %343
  br i1 %347, label %348, label %349

348:                                              ; preds = %342
  store i64 %343, ptr %345, align 8, !tbaa !38
  br label %349

349:                                              ; preds = %348, %342
  br i1 %253, label %350, label %562

350:                                              ; preds = %349
  %351 = icmp ne i32 %1, 0
  switch i32 %1, label %352 [
    i32 4, label %360
    i32 0, label %360
  ]

352:                                              ; preds = %350
  %353 = load ptr, ptr %0, align 8, !tbaa !20
  %354 = getelementptr inbounds nuw i8, ptr %353, i64 8
  %355 = load i32, ptr %354, align 8, !tbaa !81
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %352
  %358 = load i64, ptr %20, align 8, !tbaa !74
  %359 = icmp eq i64 %358, %343
  br i1 %359, label %565, label %360

360:                                              ; preds = %357, %352, %350, %350
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %362 = load i64, ptr %361, align 8, !tbaa !61
  %363 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %362, i64 %343), !nosanitize !45
  %364 = extractvalue { i64, i1 } %363, 1, !nosanitize !45
  br i1 %364, label %365, label %366, !prof !46, !nosanitize !45

365:                                              ; preds = %360
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

366:                                              ; preds = %360
  %367 = extractvalue { i64, i1 } %363, 0, !nosanitize !45
  %368 = trunc i64 %367 to i32
  %369 = load ptr, ptr %0, align 8, !tbaa !20
  %370 = getelementptr inbounds nuw i8, ptr %369, i64 8
  %371 = load i32, ptr %370, align 8, !tbaa !81
  %372 = icmp ugt i32 %371, %368
  br i1 %372, label %373, label %405

373:                                              ; preds = %366
  %374 = load i64, ptr %20, align 8, !tbaa !74
  %375 = load i32, ptr %10, align 8, !tbaa !32
  %376 = zext i32 %375 to i64
  %377 = icmp slt i64 %374, %376
  br i1 %377, label %405, label %378

378:                                              ; preds = %373
  %379 = sub nsw i64 %374, %376
  store i64 %379, ptr %20, align 8, !tbaa !74
  %380 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %344, i32 %375), !nosanitize !45
  %381 = extractvalue { i32, i1 } %380, 1, !nosanitize !45
  br i1 %381, label %382, label %383, !prof !46, !nosanitize !45

382:                                              ; preds = %378
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

383:                                              ; preds = %378
  %384 = extractvalue { i32, i1 } %380, 0, !nosanitize !45
  store i32 %384, ptr %19, align 4, !tbaa !73
  %385 = load ptr, ptr %26, align 8, !tbaa !34
  %386 = getelementptr inbounds nuw i8, ptr %385, i64 %376
  %387 = zext i32 %384 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %385, ptr align 1 %386, i64 %387, i1 false)
  %388 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %389 = load i32, ptr %388, align 8, !tbaa !125
  %390 = icmp ult i32 %389, 2
  br i1 %390, label %391, label %393

391:                                              ; preds = %383
  %392 = add nuw nsw i32 %389, 1
  store i32 %392, ptr %388, align 8, !tbaa !125
  br label %393

393:                                              ; preds = %391, %383
  %394 = load i32, ptr %10, align 8, !tbaa !32
  %395 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %368, i32 %394), !nosanitize !45
  %396 = extractvalue { i32, i1 } %395, 0, !nosanitize !45
  %397 = extractvalue { i32, i1 } %395, 1, !nosanitize !45
  br i1 %397, label %398, label %399, !prof !46, !nosanitize !45

398:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

399:                                              ; preds = %393
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %401 = load i32, ptr %400, align 4, !tbaa !76
  %402 = load i32, ptr %19, align 4, !tbaa !73
  %403 = icmp ugt i32 %401, %402
  br i1 %403, label %404, label %405

404:                                              ; preds = %399
  store i32 %402, ptr %400, align 4, !tbaa !76
  br label %405

405:                                              ; preds = %404, %399, %373, %366
  %406 = phi i32 [ %402, %404 ], [ %402, %399 ], [ %344, %373 ], [ %344, %366 ]
  %407 = phi i32 [ %396, %404 ], [ %396, %399 ], [ %368, %373 ], [ %368, %366 ]
  %408 = load ptr, ptr %0, align 8, !tbaa !20
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 8
  %410 = load i32, ptr %409, align 8, !tbaa !81
  %411 = tail call i32 @llvm.umin.i32(i32 %407, i32 %410)
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %462, label %413

413:                                              ; preds = %405
  %414 = load ptr, ptr %26, align 8, !tbaa !34
  %415 = zext i32 %406 to i64
  %416 = getelementptr inbounds nuw i8, ptr %414, i64 %415
  %417 = sub i32 %410, %411
  store i32 %417, ptr %409, align 8, !tbaa !81
  %418 = load ptr, ptr %408, align 8, !tbaa !82
  %419 = zext i32 %411 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %416, ptr align 1 %418, i64 %419, i1 false)
  %420 = getelementptr inbounds nuw i8, ptr %408, i64 56
  %421 = load ptr, ptr %420, align 8, !tbaa !19
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 48
  %423 = load i32, ptr %422, align 8, !tbaa !30
  switch i32 %423, label %432 [
    i32 1, label %424
    i32 2, label %428
  ]

424:                                              ; preds = %413
  %425 = getelementptr inbounds nuw i8, ptr %408, i64 96
  %426 = load i64, ptr %425, align 8, !tbaa !59
  %427 = tail call i64 @adler32(i64 noundef %426, ptr noundef %416, i32 noundef %411) #12
  store i64 %427, ptr %425, align 8, !tbaa !59
  br label %432

428:                                              ; preds = %413
  %429 = getelementptr inbounds nuw i8, ptr %408, i64 96
  %430 = load i64, ptr %429, align 8, !tbaa !59
  %431 = tail call i64 @crc32(i64 noundef %430, ptr noundef %416, i32 noundef %411) #12
  store i64 %431, ptr %429, align 8, !tbaa !59
  br label %432

432:                                              ; preds = %428, %424, %413
  %433 = load ptr, ptr %408, align 8, !tbaa !82
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 %419
  store ptr %434, ptr %408, align 8, !tbaa !82
  %435 = getelementptr inbounds nuw i8, ptr %408, i64 16
  %436 = load i64, ptr %435, align 8, !tbaa !55
  %437 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %436, i64 %419), !nosanitize !45
  %438 = extractvalue { i64, i1 } %437, 1, !nosanitize !45
  br i1 %438, label %439, label %440, !prof !46, !nosanitize !45

439:                                              ; preds = %432
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

440:                                              ; preds = %432
  %441 = extractvalue { i64, i1 } %437, 0, !nosanitize !45
  store i64 %441, ptr %435, align 8, !tbaa !55
  %442 = load i32, ptr %19, align 4, !tbaa !73
  %443 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %442, i32 %411), !nosanitize !45
  %444 = extractvalue { i32, i1 } %443, 1, !nosanitize !45
  br i1 %444, label %445, label %446, !prof !46, !nosanitize !45

445:                                              ; preds = %440
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

446:                                              ; preds = %440
  %447 = extractvalue { i32, i1 } %443, 0, !nosanitize !45
  store i32 %447, ptr %19, align 4, !tbaa !73
  %448 = load i32, ptr %10, align 8, !tbaa !32
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %450 = load i32, ptr %449, align 4, !tbaa !76
  %451 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %448, i32 %450), !nosanitize !45
  %452 = extractvalue { i32, i1 } %451, 1, !nosanitize !45
  br i1 %452, label %453, label %454, !prof !46, !nosanitize !45

453:                                              ; preds = %446
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

454:                                              ; preds = %446
  %455 = extractvalue { i32, i1 } %451, 0, !nosanitize !45
  %456 = tail call i32 @llvm.umin.i32(i32 %411, i32 %455)
  %457 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %450, i32 %456), !nosanitize !45
  %458 = extractvalue { i32, i1 } %457, 1, !nosanitize !45
  br i1 %458, label %459, label %460, !prof !46, !nosanitize !45

459:                                              ; preds = %454
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

460:                                              ; preds = %454
  %461 = extractvalue { i32, i1 } %457, 0, !nosanitize !45
  store i32 %461, ptr %449, align 4, !tbaa !76
  br label %462

462:                                              ; preds = %460, %405
  %463 = phi i32 [ %447, %460 ], [ %406, %405 ]
  %464 = load i64, ptr %345, align 8, !tbaa !38
  %465 = zext i32 %463 to i64
  %466 = icmp ult i64 %464, %465
  br i1 %466, label %467, label %468

467:                                              ; preds = %462
  store i64 %465, ptr %345, align 8, !tbaa !38
  br label %468

468:                                              ; preds = %467, %462
  %469 = load i32, ptr %18, align 4, !tbaa !101
  %470 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %469, i32 42), !nosanitize !45
  %471 = extractvalue { i32, i1 } %470, 1, !nosanitize !45
  br i1 %471, label %472, label %473, !prof !46, !nosanitize !45

472:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

473:                                              ; preds = %468
  %474 = extractvalue { i32, i1 } %470, 0, !nosanitize !45
  %475 = lshr i32 %474, 3
  %476 = load i64, ptr %3, align 8, !tbaa !41
  %477 = zext nneg i32 %475 to i64
  %478 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %476, i64 %477), !nosanitize !45
  %479 = extractvalue { i64, i1 } %478, 1, !nosanitize !45
  br i1 %479, label %480, label %481, !prof !46, !nosanitize !45

480:                                              ; preds = %473
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

481:                                              ; preds = %473
  %482 = extractvalue { i64, i1 } %478, 0, !nosanitize !45
  %483 = tail call i64 @llvm.umin.i64(i64 %482, i64 65535)
  %484 = trunc nuw nsw i64 %483 to i32
  %485 = load i32, ptr %10, align 8, !tbaa !32
  %486 = tail call i32 @llvm.umin.i32(i32 %485, i32 %484)
  %487 = load i64, ptr %20, align 8, !tbaa !74
  %488 = trunc i64 %487 to i32
  %489 = sub i32 %463, %488
  %490 = icmp ult i32 %489, %486
  br i1 %490, label %491, label %500

491:                                              ; preds = %481
  %492 = icmp ne i32 %463, %488
  %493 = or i1 %23, %492
  %494 = and i1 %351, %493
  br i1 %494, label %495, label %565

495:                                              ; preds = %491
  %496 = load ptr, ptr %0, align 8, !tbaa !20
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 8
  %498 = load i32, ptr %497, align 8, !tbaa !81
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %565

500:                                              ; preds = %495, %481
  %501 = tail call i32 @llvm.umin.i32(i32 %489, i32 %484)
  br i1 %23, label %502, label %510

502:                                              ; preds = %500
  %503 = load ptr, ptr %0, align 8, !tbaa !20
  %504 = getelementptr inbounds nuw i8, ptr %503, i64 8
  %505 = load i32, ptr %504, align 8, !tbaa !81
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %510

507:                                              ; preds = %502
  %508 = icmp ule i32 %489, %484
  %509 = zext i1 %508 to i32
  br label %510

510:                                              ; preds = %507, %502, %500
  %511 = phi i32 [ 0, %502 ], [ 0, %500 ], [ %509, %507 ]
  %512 = load ptr, ptr %26, align 8, !tbaa !34
  %513 = getelementptr inbounds i8, ptr %512, i64 %487
  %514 = zext nneg i32 %501 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %513, i64 noundef %514, i32 noundef %511) #12
  %515 = load i64, ptr %20, align 8, !tbaa !74
  %516 = add nsw i64 %515, %514
  store i64 %516, ptr %20, align 8, !tbaa !74
  %517 = load ptr, ptr %0, align 8, !tbaa !20
  %518 = getelementptr inbounds nuw i8, ptr %517, i64 56
  %519 = load ptr, ptr %518, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %519) #12
  %520 = getelementptr inbounds nuw i8, ptr %519, i64 40
  %521 = load i64, ptr %520, align 8, !tbaa !57
  %522 = getelementptr inbounds nuw i8, ptr %517, i64 32
  %523 = load i32, ptr %522, align 8, !tbaa !107
  %524 = zext i32 %523 to i64
  %525 = tail call i64 @llvm.umin.i64(i64 %521, i64 %524)
  %526 = trunc nuw i64 %525 to i32
  %527 = icmp eq i64 %525, 0
  br i1 %527, label %560, label %528

528:                                              ; preds = %510
  %529 = getelementptr inbounds nuw i8, ptr %517, i64 24
  %530 = load ptr, ptr %529, align 8, !tbaa !106
  %531 = getelementptr inbounds nuw i8, ptr %519, i64 32
  %532 = load ptr, ptr %531, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %530, ptr align 1 %532, i64 %525, i1 false)
  %533 = load ptr, ptr %529, align 8, !tbaa !106
  %534 = getelementptr inbounds nuw i8, ptr %533, i64 %525
  store ptr %534, ptr %529, align 8, !tbaa !106
  %535 = load ptr, ptr %531, align 8, !tbaa !58
  %536 = getelementptr inbounds nuw i8, ptr %535, i64 %525
  store ptr %536, ptr %531, align 8, !tbaa !58
  %537 = getelementptr inbounds nuw i8, ptr %517, i64 40
  %538 = load i64, ptr %537, align 8, !tbaa !108
  %539 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %538, i64 %525), !nosanitize !45
  %540 = extractvalue { i64, i1 } %539, 1, !nosanitize !45
  br i1 %540, label %541, label %542, !prof !46, !nosanitize !45

541:                                              ; preds = %528
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

542:                                              ; preds = %528
  %543 = extractvalue { i64, i1 } %539, 0, !nosanitize !45
  store i64 %543, ptr %537, align 8, !tbaa !108
  %544 = load i32, ptr %522, align 8, !tbaa !107
  %545 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %544, i32 %526), !nosanitize !45
  %546 = extractvalue { i32, i1 } %545, 1, !nosanitize !45
  br i1 %546, label %547, label %548, !prof !46, !nosanitize !45

547:                                              ; preds = %542
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

548:                                              ; preds = %542
  %549 = extractvalue { i32, i1 } %545, 0, !nosanitize !45
  store i32 %549, ptr %522, align 8, !tbaa !107
  %550 = load i64, ptr %520, align 8, !tbaa !57
  %551 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %550, i64 %525), !nosanitize !45
  %552 = extractvalue { i64, i1 } %551, 1, !nosanitize !45
  br i1 %552, label %553, label %554, !prof !46, !nosanitize !45

553:                                              ; preds = %548
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

554:                                              ; preds = %548
  %555 = extractvalue { i64, i1 } %551, 0, !nosanitize !45
  store i64 %555, ptr %520, align 8, !tbaa !57
  %556 = icmp eq i64 %555, 0
  br i1 %556, label %557, label %560

557:                                              ; preds = %554
  %558 = getelementptr inbounds nuw i8, ptr %519, i64 16
  %559 = load ptr, ptr %558, align 8, !tbaa !40
  store ptr %559, ptr %531, align 8, !tbaa !58
  br label %560

560:                                              ; preds = %557, %554, %510
  %561 = icmp eq i32 %511, 0
  br i1 %561, label %565, label %562

562:                                              ; preds = %560, %349
  %563 = phi i32 [ 3, %349 ], [ 2, %560 ]
  %564 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %564, align 8, !tbaa !102
  br label %565

565:                                              ; preds = %562, %560, %495, %491, %357
  %566 = phi i32 [ 0, %495 ], [ 1, %357 ], [ 0, %491 ], [ 0, %560 ], [ %563, %562 ]
  ret i32 %566
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
  br i1 %27, label %28, label %347

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 8, !tbaa !32
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %297, %28
  %32 = phi i32 [ %225, %297 ], [ 0, %28 ]
  %33 = load i64, ptr %5, align 8, !tbaa !61
  %34 = zext nneg i32 %32 to i64
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

38:                                               ; preds = %31
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %40 = load i32, ptr %6, align 4, !tbaa !73
  %41 = zext i32 %40 to i64
  %42 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %39, i64 %41), !nosanitize !45
  %43 = extractvalue { i64, i1 } %42, 1, !nosanitize !45
  br i1 %43, label %44, label %45, !prof !46, !nosanitize !45

44:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

45:                                               ; preds = %38
  %46 = extractvalue { i64, i1 } %42, 0, !nosanitize !45
  %47 = trunc i64 %46 to i32
  %48 = load i32, ptr %4, align 8, !tbaa !32
  %49 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %48, i32 262), !nosanitize !45
  %50 = extractvalue { i32, i1 } %49, 1, !nosanitize !45
  br i1 %50, label %51, label %52, !prof !46, !nosanitize !45

51:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

52:                                               ; preds = %45
  %53 = extractvalue { i32, i1 } %49, 0, !nosanitize !45
  %54 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %29, i32 %53), !nosanitize !45
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !45
  br i1 %55, label %56, label %57, !prof !46, !nosanitize !45

56:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

57:                                               ; preds = %52
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !45
  %59 = icmp ult i32 %40, %58
  br i1 %59, label %176, label %60

60:                                               ; preds = %57
  %61 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %29, i32 %47), !nosanitize !45
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !45
  br i1 %62, label %63, label %64, !prof !46, !nosanitize !45

63:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

73:                                               ; preds = %64
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !45
  store i32 %74, ptr %8, align 8, !tbaa !83
  %75 = load i32, ptr %6, align 4, !tbaa !73
  %76 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %75, i32 %29), !nosanitize !45
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !45
  br i1 %77, label %78, label %79, !prof !46, !nosanitize !45

78:                                               ; preds = %73
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  br i1 %92, label %116, label %93, !prof !46, !nosanitize !45

93:                                               ; preds = %86
  %94 = icmp ult i32 %88, 8
  br i1 %94, label %.preheader65, label %95

.preheader65:                                     ; preds = %110, %93
  %.ph66 = phi ptr [ %112, %110 ], [ %91, %93 ]
  %.ph67 = phi i32 [ %114, %110 ], [ %88, %93 ]
  br label %122

95:                                               ; preds = %93
  %96 = and i64 %90, 4294967288
  %97 = insertelement <8 x i32> poison, i32 %87, i64 0
  %98 = shufflevector <8 x i32> %97, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %99

99:                                               ; preds = %99, %95
  %100 = phi i64 [ 0, %95 ], [ %108, %99 ]
  %101 = mul nsw i64 %100, -2
  %102 = getelementptr i8, ptr %91, i64 %101
  %103 = getelementptr inbounds i8, ptr %102, i64 -16
  %104 = load <8 x i16>, ptr %103, align 2, !tbaa !62
  %105 = zext <8 x i16> %104 to <8 x i32>
  %106 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %105, <8 x i32> %98)
  %107 = trunc nuw <8 x i32> %106 to <8 x i16>
  store <8 x i16> %107, ptr %103, align 2, !tbaa !62
  %108 = add nuw nsw i64 %100, 8
  %109 = icmp eq i64 %108, %96
  br i1 %109, label %110, label %99, !llvm.loop !135

110:                                              ; preds = %99
  %111 = mul nsw i64 %96, -2
  %112 = getelementptr i8, ptr %91, i64 %111
  %113 = trunc nuw i64 %96 to i32
  %114 = sub i32 %88, %113
  %115 = icmp eq i64 %96, %90
  br i1 %115, label %.loopexit22, label %.preheader65

116:                                              ; preds = %86
  %117 = getelementptr inbounds i8, ptr %91, i64 -2
  %118 = load i16, ptr %117, align 2, !tbaa !62
  %119 = zext i16 %118 to i32
  %120 = tail call i32 @llvm.usub.sat.i32(i32 %119, i32 %87)
  %121 = trunc nuw i32 %120 to i16
  store i16 %121, ptr %117, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

122:                                              ; preds = %.preheader65, %122
  %123 = phi ptr [ %125, %122 ], [ %.ph66, %.preheader65 ]
  %124 = phi i32 [ %130, %122 ], [ %.ph67, %.preheader65 ]
  %125 = getelementptr inbounds i8, ptr %123, i64 -2
  %126 = load i16, ptr %125, align 2, !tbaa !62
  %127 = zext i16 %126 to i32
  %128 = tail call i32 @llvm.usub.sat.i32(i32 %127, i32 %87)
  %129 = trunc nuw i32 %128 to i16
  store i16 %129, ptr %125, align 2, !tbaa !62
  %130 = add i32 %124, -1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %.loopexit22, label %122, !llvm.loop !136

.loopexit22:                                      ; preds = %122, %110
  %132 = icmp eq i32 %87, 0
  br i1 %132, label %133, label %134, !prof !46, !nosanitize !45

133:                                              ; preds = %.loopexit22
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

134:                                              ; preds = %.loopexit22
  %135 = load ptr, ptr %13, align 8, !tbaa !35
  %136 = zext i32 %87 to i64
  %137 = getelementptr inbounds nuw [2 x i8], ptr %135, i64 %136
  %138 = icmp ult i32 %87, 8
  br i1 %138, label %.preheader, label %139

139:                                              ; preds = %134
  %140 = and i64 %136, 4294967288
  %141 = insertelement <8 x i32> poison, i32 %87, i64 0
  %142 = shufflevector <8 x i32> %141, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %143

143:                                              ; preds = %143, %139
  %144 = phi i64 [ 0, %139 ], [ %152, %143 ]
  %145 = mul nsw i64 %144, -2
  %146 = getelementptr i8, ptr %137, i64 %145
  %147 = getelementptr inbounds i8, ptr %146, i64 -16
  %148 = load <8 x i16>, ptr %147, align 2, !tbaa !62
  %149 = zext <8 x i16> %148 to <8 x i32>
  %150 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %149, <8 x i32> %142)
  %151 = trunc nuw <8 x i32> %150 to <8 x i16>
  store <8 x i16> %151, ptr %147, align 2, !tbaa !62
  %152 = add nuw nsw i64 %144, 8
  %153 = icmp eq i64 %152, %140
  br i1 %153, label %154, label %143, !llvm.loop !137

154:                                              ; preds = %143
  %155 = mul nsw i64 %140, -2
  %156 = getelementptr i8, ptr %137, i64 %155
  %157 = trunc nuw i64 %140 to i32
  %158 = sub i32 %87, %157
  %159 = icmp eq i64 %140, %136
  br i1 %159, label %.loopexit21, label %.preheader

.preheader:                                       ; preds = %154, %134
  %.ph = phi ptr [ %156, %154 ], [ %137, %134 ]
  %.ph64 = phi i32 [ %158, %154 ], [ %87, %134 ]
  br label %160

160:                                              ; preds = %.preheader, %160
  %161 = phi ptr [ %163, %160 ], [ %.ph, %.preheader ]
  %162 = phi i32 [ %168, %160 ], [ %.ph64, %.preheader ]
  %163 = getelementptr inbounds i8, ptr %161, i64 -2
  %164 = load i16, ptr %163, align 2, !tbaa !62
  %165 = zext i16 %164 to i32
  %166 = tail call i32 @llvm.usub.sat.i32(i32 %165, i32 %87)
  %167 = trunc nuw i32 %166 to i16
  store i16 %167, ptr %163, align 2, !tbaa !62
  %168 = add i32 %162, -1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %.loopexit21, label %160, !llvm.loop !138

.loopexit21:                                      ; preds = %160, %154
  store i32 1, ptr %14, align 8, !tbaa !63
  %170 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %47, i32 %29), !nosanitize !45
  %171 = extractvalue { i32, i1 } %170, 1, !nosanitize !45
  br i1 %171, label %172, label %173, !prof !46, !nosanitize !45

172:                                              ; preds = %.loopexit21
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

173:                                              ; preds = %.loopexit21
  %174 = extractvalue { i32, i1 } %170, 0, !nosanitize !45
  %175 = load i32, ptr %3, align 4, !tbaa !75
  br label %176

176:                                              ; preds = %173, %57
  %177 = phi i32 [ %175, %173 ], [ %32, %57 ]
  %178 = phi i32 [ %80, %173 ], [ %40, %57 ]
  %179 = phi i32 [ %174, %173 ], [ %47, %57 ]
  %180 = load ptr, ptr %0, align 8, !tbaa !20
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 8
  %182 = load i32, ptr %181, align 8, !tbaa !81
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %302, label %184

184:                                              ; preds = %176
  %185 = load ptr, ptr %7, align 8, !tbaa !34
  %186 = zext i32 %178 to i64
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 %186
  %188 = zext i32 %177 to i64
  %189 = getelementptr inbounds nuw i8, ptr %187, i64 %188
  %190 = tail call i32 @llvm.umin.i32(i32 %182, i32 %179)
  %191 = icmp eq i32 %179, 0
  br i1 %191, label %219, label %192

192:                                              ; preds = %184
  %193 = sub i32 %182, %190
  store i32 %193, ptr %181, align 8, !tbaa !81
  %194 = load ptr, ptr %180, align 8, !tbaa !82
  %195 = zext i32 %190 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %189, ptr align 1 %194, i64 %195, i1 false)
  %196 = getelementptr inbounds nuw i8, ptr %180, i64 56
  %197 = load ptr, ptr %196, align 8, !tbaa !19
  %198 = getelementptr inbounds nuw i8, ptr %197, i64 48
  %199 = load i32, ptr %198, align 8, !tbaa !30
  switch i32 %199, label %208 [
    i32 1, label %200
    i32 2, label %204
  ]

200:                                              ; preds = %192
  %201 = getelementptr inbounds nuw i8, ptr %180, i64 96
  %202 = load i64, ptr %201, align 8, !tbaa !59
  %203 = tail call i64 @adler32(i64 noundef %202, ptr noundef %189, i32 noundef %190) #12
  store i64 %203, ptr %201, align 8, !tbaa !59
  br label %208

204:                                              ; preds = %192
  %205 = getelementptr inbounds nuw i8, ptr %180, i64 96
  %206 = load i64, ptr %205, align 8, !tbaa !59
  %207 = tail call i64 @crc32(i64 noundef %206, ptr noundef %189, i32 noundef %190) #12
  store i64 %207, ptr %205, align 8, !tbaa !59
  br label %208

208:                                              ; preds = %204, %200, %192
  %209 = load ptr, ptr %180, align 8, !tbaa !82
  %210 = getelementptr inbounds nuw i8, ptr %209, i64 %195
  store ptr %210, ptr %180, align 8, !tbaa !82
  %211 = getelementptr inbounds nuw i8, ptr %180, i64 16
  %212 = load i64, ptr %211, align 8, !tbaa !55
  %213 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %212, i64 %195), !nosanitize !45
  %214 = extractvalue { i64, i1 } %213, 1, !nosanitize !45
  br i1 %214, label %215, label %216, !prof !46, !nosanitize !45

215:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

216:                                              ; preds = %208
  %217 = extractvalue { i64, i1 } %213, 0, !nosanitize !45
  store i64 %217, ptr %211, align 8, !tbaa !55
  %218 = load i32, ptr %3, align 4, !tbaa !75
  br label %219

219:                                              ; preds = %216, %184
  %220 = phi i32 [ %177, %184 ], [ %218, %216 ]
  %221 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %220, i32 %190), !nosanitize !45
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !45
  br i1 %222, label %223, label %224, !prof !46, !nosanitize !45

223:                                              ; preds = %219
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

224:                                              ; preds = %219
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !45
  store i32 %225, ptr %3, align 4, !tbaa !75
  %226 = load i32, ptr %10, align 4, !tbaa !76
  %227 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %225, i32 %226), !nosanitize !45
  %228 = extractvalue { i32, i1 } %227, 1, !nosanitize !45
  br i1 %228, label %229, label %230, !prof !46, !nosanitize !45

229:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

230:                                              ; preds = %224
  %231 = extractvalue { i32, i1 } %227, 0, !nosanitize !45
  %232 = icmp ugt i32 %231, 2
  br i1 %232, label %233, label %.loopexit

233:                                              ; preds = %230
  %234 = load i32, ptr %6, align 4, !tbaa !73
  %235 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %234, i32 %226), !nosanitize !45
  %236 = extractvalue { i32, i1 } %235, 0, !nosanitize !45
  %237 = extractvalue { i32, i1 } %235, 1, !nosanitize !45
  br i1 %237, label %238, label %239, !prof !46, !nosanitize !45

238:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

239:                                              ; preds = %233
  %240 = load ptr, ptr %7, align 8, !tbaa !34
  %241 = zext i32 %236 to i64
  %242 = getelementptr inbounds nuw i8, ptr %240, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !8
  %244 = zext i8 %243 to i32
  store i32 %244, ptr %15, align 8, !tbaa !80
  %245 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %236, i32 1), !nosanitize !45
  %246 = extractvalue { i32, i1 } %245, 1, !nosanitize !45
  br i1 %246, label %247, label %248, !prof !46, !nosanitize !45

247:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

248:                                              ; preds = %239
  %249 = extractvalue { i32, i1 } %245, 0, !nosanitize !45
  %250 = load i32, ptr %16, align 8, !tbaa !53
  %251 = shl i32 %244, %250
  %252 = zext i32 %249 to i64
  %253 = getelementptr inbounds nuw i8, ptr %240, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !8
  %255 = zext i8 %254 to i32
  %256 = xor i32 %251, %255
  %257 = load i32, ptr %17, align 4, !tbaa !52
  %258 = and i32 %256, %257
  store i32 %258, ptr %15, align 8, !tbaa !80
  br label %259

259:                                              ; preds = %292, %248
  %260 = phi i32 [ %258, %248 ], [ %277, %292 ]
  %261 = phi i32 [ %226, %248 ], [ %288, %292 ]
  %262 = phi i32 [ %236, %248 ], [ %293, %292 ]
  %263 = icmp eq i32 %261, 0
  br i1 %263, label %.loopexit, label %264

264:                                              ; preds = %259
  %265 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %262, i32 3), !nosanitize !45
  %266 = extractvalue { i32, i1 } %265, 1, !nosanitize !45
  br i1 %266, label %267, label %268, !prof !46, !nosanitize !45

267:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

268:                                              ; preds = %264
  %269 = shl i32 %260, %250
  %270 = extractvalue { i32, i1 } %265, 0, !nosanitize !45
  %271 = add i32 %270, -1
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds nuw i8, ptr %240, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !8
  %275 = zext i8 %274 to i32
  %276 = xor i32 %269, %275
  %277 = and i32 %276, %257
  store i32 %277, ptr %15, align 8, !tbaa !80
  %278 = load ptr, ptr %12, align 8, !tbaa !37
  %279 = zext i32 %277 to i64
  %280 = getelementptr inbounds nuw [2 x i8], ptr %278, i64 %279
  %281 = load i16, ptr %280, align 2, !tbaa !62
  %282 = load ptr, ptr %13, align 8, !tbaa !35
  %283 = load i32, ptr %18, align 8, !tbaa !33
  %284 = and i32 %283, %262
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds nuw [2 x i8], ptr %282, i64 %285
  store i16 %281, ptr %286, align 2, !tbaa !62
  %287 = trunc i32 %262 to i16
  store i16 %287, ptr %280, align 2, !tbaa !62
  %288 = add i32 %261, -1
  store i32 %288, ptr %10, align 4, !tbaa !76
  %289 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %225, i32 %288), !nosanitize !45
  %290 = extractvalue { i32, i1 } %289, 1, !nosanitize !45
  br i1 %290, label %291, label %292, !prof !46, !nosanitize !45

291:                                              ; preds = %268
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

292:                                              ; preds = %268
  %293 = add nuw i32 %262, 1
  %294 = extractvalue { i32, i1 } %289, 0, !nosanitize !45
  %295 = icmp ult i32 %294, 3
  br i1 %295, label %.loopexit, label %259, !llvm.loop !91

.loopexit:                                        ; preds = %292, %259, %230
  %296 = icmp ult i32 %225, 262
  br i1 %296, label %297, label %302

297:                                              ; preds = %.loopexit
  %298 = load ptr, ptr %0, align 8, !tbaa !20
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 8
  %300 = load i32, ptr %299, align 8, !tbaa !81
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %31, !llvm.loop !92

302:                                              ; preds = %297, %.loopexit, %176
  %303 = phi i32 [ %225, %297 ], [ %225, %.loopexit ], [ %177, %176 ]
  %304 = load i64, ptr %19, align 8, !tbaa !38
  %305 = load i64, ptr %5, align 8, !tbaa !61
  %306 = icmp ult i64 %304, %305
  br i1 %306, label %307, label %342

307:                                              ; preds = %302
  %308 = load i32, ptr %6, align 4, !tbaa !73
  %309 = zext i32 %308 to i64
  %310 = zext i32 %303 to i64
  %311 = add nuw nsw i64 %309, %310
  %312 = icmp ult i64 %304, %311
  br i1 %312, label %313, label %323

313:                                              ; preds = %307
  %314 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %305, i64 %311), !nosanitize !45
  %315 = extractvalue { i64, i1 } %314, 1, !nosanitize !45
  br i1 %315, label %316, label %317, !prof !46, !nosanitize !45

316:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

317:                                              ; preds = %313
  %318 = extractvalue { i64, i1 } %314, 0, !nosanitize !45
  %319 = tail call i64 @llvm.umin.i64(i64 %318, i64 258)
  %320 = load ptr, ptr %7, align 8, !tbaa !34
  %321 = getelementptr inbounds nuw i8, ptr %320, i64 %311
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %321, i8 0, i64 %319, i1 false)
  %322 = add nuw nsw i64 %319, %311
  br label %339

323:                                              ; preds = %307
  %324 = add nuw nsw i64 %311, 258
  %325 = icmp ult i64 %304, %324
  br i1 %325, label %326, label %342

326:                                              ; preds = %323
  %327 = sub nuw nsw i64 %324, %304
  %328 = sub i64 %305, %304
  %329 = tail call i64 @llvm.umin.i64(i64 %327, i64 %328)
  %330 = load ptr, ptr %7, align 8, !tbaa !34
  %331 = getelementptr inbounds nuw i8, ptr %330, i64 %304
  %332 = and i64 %329, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %331, i8 0, i64 %332, i1 false)
  %333 = load i64, ptr %19, align 8, !tbaa !38
  %334 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %333, i64 %329), !nosanitize !45
  %335 = extractvalue { i64, i1 } %334, 1, !nosanitize !45
  br i1 %335, label %336, label %337, !prof !46, !nosanitize !45

336:                                              ; preds = %326
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

337:                                              ; preds = %326
  %338 = extractvalue { i64, i1 } %334, 0, !nosanitize !45
  br label %339

339:                                              ; preds = %337, %317
  %340 = phi i64 [ %322, %317 ], [ %338, %337 ]
  store i64 %340, ptr %19, align 8, !tbaa !38
  %341 = load i32, ptr %3, align 4, !tbaa !75
  br label %342

342:                                              ; preds = %339, %323, %302
  %343 = phi i32 [ %303, %302 ], [ %303, %323 ], [ %341, %339 ]
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %342
  %346 = icmp eq i32 %1, 0
  br i1 %346, label %.loopexit23, label %460

347:                                              ; preds = %342, %25
  store i32 0, ptr %20, align 8, !tbaa !78
  %348 = load ptr, ptr %7, align 8, !tbaa !34
  %349 = load i32, ptr %6, align 4, !tbaa !73
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds nuw i8, ptr %348, i64 %350
  %352 = load i8, ptr %351, align 1, !tbaa !8
  %353 = load i32, ptr %22, align 4, !tbaa !139
  %354 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %353, i32 1), !nosanitize !45
  %355 = extractvalue { i32, i1 } %354, 1, !nosanitize !45
  br i1 %355, label %356, label %357, !prof !46, !nosanitize !45

356:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

357:                                              ; preds = %347
  %358 = extractvalue { i32, i1 } %354, 0, !nosanitize !45
  %359 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %358, ptr %22, align 4, !tbaa !139
  %360 = zext i32 %353 to i64
  %361 = getelementptr inbounds nuw i8, ptr %359, i64 %360
  store i8 0, ptr %361, align 1, !tbaa !8
  %362 = load i32, ptr %22, align 4, !tbaa !139
  %363 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %362, i32 1), !nosanitize !45
  %364 = extractvalue { i32, i1 } %363, 1, !nosanitize !45
  br i1 %364, label %365, label %366, !prof !46, !nosanitize !45

365:                                              ; preds = %357
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

366:                                              ; preds = %357
  %367 = extractvalue { i32, i1 } %363, 0, !nosanitize !45
  %368 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %367, ptr %22, align 4, !tbaa !139
  %369 = zext i32 %362 to i64
  %370 = getelementptr inbounds nuw i8, ptr %368, i64 %369
  store i8 0, ptr %370, align 1, !tbaa !8
  %371 = load i32, ptr %22, align 4, !tbaa !139
  %372 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %371, i32 1), !nosanitize !45
  %373 = extractvalue { i32, i1 } %372, 1, !nosanitize !45
  br i1 %373, label %374, label %375, !prof !46, !nosanitize !45

374:                                              ; preds = %366
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

375:                                              ; preds = %366
  %376 = extractvalue { i32, i1 } %372, 0, !nosanitize !45
  %377 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %376, ptr %22, align 4, !tbaa !139
  %378 = zext i32 %371 to i64
  %379 = getelementptr inbounds nuw i8, ptr %377, i64 %378
  store i8 %352, ptr %379, align 1, !tbaa !8
  %380 = zext i8 %352 to i64
  %381 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %380
  %382 = load i16, ptr %381, align 4, !tbaa !8
  %383 = add i16 %382, 1
  store i16 %383, ptr %381, align 4, !tbaa !8
  %384 = load i32, ptr %22, align 4, !tbaa !139
  %385 = load i32, ptr %24, align 8, !tbaa !47
  %386 = icmp eq i32 %384, %385
  %387 = load i32, ptr %3, align 4, !tbaa !75
  %388 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %387, i32 1), !nosanitize !45
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !45
  br i1 %389, label %390, label %391, !prof !46, !nosanitize !45

390:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

391:                                              ; preds = %375
  %392 = extractvalue { i32, i1 } %388, 0, !nosanitize !45
  store i32 %392, ptr %3, align 4, !tbaa !75
  %393 = load i32, ptr %6, align 4, !tbaa !73
  %394 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %393, i32 1), !nosanitize !45
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !45
  br i1 %395, label %396, label %397, !prof !46, !nosanitize !45

396:                                              ; preds = %391
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

397:                                              ; preds = %391
  %398 = extractvalue { i32, i1 } %394, 0, !nosanitize !45
  store i32 %398, ptr %6, align 4, !tbaa !73
  br i1 %386, label %399, label %.backedge

399:                                              ; preds = %397
  %400 = load i64, ptr %9, align 8, !tbaa !74
  %401 = icmp sgt i64 %400, -1
  br i1 %401, label %402, label %406

402:                                              ; preds = %399
  %403 = load ptr, ptr %7, align 8, !tbaa !34
  %404 = and i64 %400, 4294967295
  %405 = getelementptr inbounds nuw i8, ptr %403, i64 %404
  br label %406

406:                                              ; preds = %402, %399
  %407 = phi ptr [ %405, %402 ], [ null, %399 ]
  %408 = zext i32 %398 to i64
  %409 = sub nsw i64 %408, %400
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %407, i64 noundef %409, i32 noundef 0) #12
  %410 = load i32, ptr %6, align 4, !tbaa !73
  %411 = zext i32 %410 to i64
  store i64 %411, ptr %9, align 8, !tbaa !74
  %412 = load ptr, ptr %0, align 8, !tbaa !20
  %413 = getelementptr inbounds nuw i8, ptr %412, i64 56
  %414 = load ptr, ptr %413, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %414) #12
  %415 = getelementptr inbounds nuw i8, ptr %414, i64 40
  %416 = load i64, ptr %415, align 8, !tbaa !57
  %417 = getelementptr inbounds nuw i8, ptr %412, i64 32
  %418 = load i32, ptr %417, align 8, !tbaa !107
  %419 = zext i32 %418 to i64
  %420 = tail call i64 @llvm.umin.i64(i64 %416, i64 %419)
  %421 = trunc nuw i64 %420 to i32
  %422 = icmp eq i64 %420, 0
  br i1 %422, label %455, label %423

423:                                              ; preds = %406
  %424 = getelementptr inbounds nuw i8, ptr %412, i64 24
  %425 = load ptr, ptr %424, align 8, !tbaa !106
  %426 = getelementptr inbounds nuw i8, ptr %414, i64 32
  %427 = load ptr, ptr %426, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %425, ptr align 1 %427, i64 %420, i1 false)
  %428 = load ptr, ptr %424, align 8, !tbaa !106
  %429 = getelementptr inbounds nuw i8, ptr %428, i64 %420
  store ptr %429, ptr %424, align 8, !tbaa !106
  %430 = load ptr, ptr %426, align 8, !tbaa !58
  %431 = getelementptr inbounds nuw i8, ptr %430, i64 %420
  store ptr %431, ptr %426, align 8, !tbaa !58
  %432 = getelementptr inbounds nuw i8, ptr %412, i64 40
  %433 = load i64, ptr %432, align 8, !tbaa !108
  %434 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %433, i64 %420), !nosanitize !45
  %435 = extractvalue { i64, i1 } %434, 1, !nosanitize !45
  br i1 %435, label %436, label %437, !prof !46, !nosanitize !45

436:                                              ; preds = %423
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

437:                                              ; preds = %423
  %438 = extractvalue { i64, i1 } %434, 0, !nosanitize !45
  store i64 %438, ptr %432, align 8, !tbaa !108
  %439 = load i32, ptr %417, align 8, !tbaa !107
  %440 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %439, i32 %421), !nosanitize !45
  %441 = extractvalue { i32, i1 } %440, 1, !nosanitize !45
  br i1 %441, label %442, label %443, !prof !46, !nosanitize !45

442:                                              ; preds = %437
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

443:                                              ; preds = %437
  %444 = extractvalue { i32, i1 } %440, 0, !nosanitize !45
  store i32 %444, ptr %417, align 8, !tbaa !107
  %445 = load i64, ptr %415, align 8, !tbaa !57
  %446 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %445, i64 %420), !nosanitize !45
  %447 = extractvalue { i64, i1 } %446, 1, !nosanitize !45
  br i1 %447, label %448, label %449, !prof !46, !nosanitize !45

448:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

449:                                              ; preds = %443
  %450 = extractvalue { i64, i1 } %446, 0, !nosanitize !45
  store i64 %450, ptr %415, align 8, !tbaa !57
  %451 = icmp eq i64 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %449
  %453 = getelementptr inbounds nuw i8, ptr %414, i64 16
  %454 = load ptr, ptr %453, align 8, !tbaa !40
  store ptr %454, ptr %426, align 8, !tbaa !58
  br label %455

455:                                              ; preds = %452, %449, %406
  %456 = load ptr, ptr %0, align 8, !tbaa !20
  %457 = getelementptr inbounds nuw i8, ptr %456, i64 32
  %458 = load i32, ptr %457, align 8, !tbaa !107
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %.loopexit23, label %.backedge

.backedge:                                        ; preds = %455, %397
  br label %25

460:                                              ; preds = %345
  store i32 0, ptr %10, align 4, !tbaa !76
  %461 = icmp eq i32 %1, 4
  br i1 %461, label %462, label %525

462:                                              ; preds = %460
  %463 = load i64, ptr %9, align 8, !tbaa !74
  %464 = icmp sgt i64 %463, -1
  br i1 %464, label %465, label %469

465:                                              ; preds = %462
  %466 = load ptr, ptr %7, align 8, !tbaa !34
  %467 = and i64 %463, 4294967295
  %468 = getelementptr inbounds nuw i8, ptr %466, i64 %467
  br label %469

469:                                              ; preds = %465, %462
  %470 = phi ptr [ %468, %465 ], [ null, %462 ]
  %471 = load i32, ptr %6, align 4, !tbaa !73
  %472 = zext i32 %471 to i64
  %473 = sub nsw i64 %472, %463
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %470, i64 noundef %473, i32 noundef 1) #12
  %474 = load i32, ptr %6, align 4, !tbaa !73
  %475 = zext i32 %474 to i64
  store i64 %475, ptr %9, align 8, !tbaa !74
  %476 = load ptr, ptr %0, align 8, !tbaa !20
  %477 = getelementptr inbounds nuw i8, ptr %476, i64 56
  %478 = load ptr, ptr %477, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %478) #12
  %479 = getelementptr inbounds nuw i8, ptr %478, i64 40
  %480 = load i64, ptr %479, align 8, !tbaa !57
  %481 = getelementptr inbounds nuw i8, ptr %476, i64 32
  %482 = load i32, ptr %481, align 8, !tbaa !107
  %483 = zext i32 %482 to i64
  %484 = tail call i64 @llvm.umin.i64(i64 %480, i64 %483)
  %485 = trunc nuw i64 %484 to i32
  %486 = icmp eq i64 %484, 0
  br i1 %486, label %519, label %487

487:                                              ; preds = %469
  %488 = getelementptr inbounds nuw i8, ptr %476, i64 24
  %489 = load ptr, ptr %488, align 8, !tbaa !106
  %490 = getelementptr inbounds nuw i8, ptr %478, i64 32
  %491 = load ptr, ptr %490, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %489, ptr align 1 %491, i64 %484, i1 false)
  %492 = load ptr, ptr %488, align 8, !tbaa !106
  %493 = getelementptr inbounds nuw i8, ptr %492, i64 %484
  store ptr %493, ptr %488, align 8, !tbaa !106
  %494 = load ptr, ptr %490, align 8, !tbaa !58
  %495 = getelementptr inbounds nuw i8, ptr %494, i64 %484
  store ptr %495, ptr %490, align 8, !tbaa !58
  %496 = getelementptr inbounds nuw i8, ptr %476, i64 40
  %497 = load i64, ptr %496, align 8, !tbaa !108
  %498 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %497, i64 %484), !nosanitize !45
  %499 = extractvalue { i64, i1 } %498, 1, !nosanitize !45
  br i1 %499, label %500, label %501, !prof !46, !nosanitize !45

500:                                              ; preds = %487
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

501:                                              ; preds = %487
  %502 = extractvalue { i64, i1 } %498, 0, !nosanitize !45
  store i64 %502, ptr %496, align 8, !tbaa !108
  %503 = load i32, ptr %481, align 8, !tbaa !107
  %504 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %485), !nosanitize !45
  %505 = extractvalue { i32, i1 } %504, 1, !nosanitize !45
  br i1 %505, label %506, label %507, !prof !46, !nosanitize !45

506:                                              ; preds = %501
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

507:                                              ; preds = %501
  %508 = extractvalue { i32, i1 } %504, 0, !nosanitize !45
  store i32 %508, ptr %481, align 8, !tbaa !107
  %509 = load i64, ptr %479, align 8, !tbaa !57
  %510 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %509, i64 %484), !nosanitize !45
  %511 = extractvalue { i64, i1 } %510, 1, !nosanitize !45
  br i1 %511, label %512, label %513, !prof !46, !nosanitize !45

512:                                              ; preds = %507
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

513:                                              ; preds = %507
  %514 = extractvalue { i64, i1 } %510, 0, !nosanitize !45
  store i64 %514, ptr %479, align 8, !tbaa !57
  %515 = icmp eq i64 %514, 0
  br i1 %515, label %516, label %519

516:                                              ; preds = %513
  %517 = getelementptr inbounds nuw i8, ptr %478, i64 16
  %518 = load ptr, ptr %517, align 8, !tbaa !40
  store ptr %518, ptr %490, align 8, !tbaa !58
  br label %519

519:                                              ; preds = %516, %513, %469
  %520 = load ptr, ptr %0, align 8, !tbaa !20
  %521 = getelementptr inbounds nuw i8, ptr %520, i64 32
  %522 = load i32, ptr %521, align 8, !tbaa !107
  %523 = icmp eq i32 %522, 0
  %524 = select i1 %523, i32 2, i32 3
  br label %.loopexit23

525:                                              ; preds = %460
  %526 = load i32, ptr %22, align 4, !tbaa !139
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %590, label %528

528:                                              ; preds = %525
  %529 = load i64, ptr %9, align 8, !tbaa !74
  %530 = icmp sgt i64 %529, -1
  br i1 %530, label %531, label %535

531:                                              ; preds = %528
  %532 = load ptr, ptr %7, align 8, !tbaa !34
  %533 = and i64 %529, 4294967295
  %534 = getelementptr inbounds nuw i8, ptr %532, i64 %533
  br label %535

535:                                              ; preds = %531, %528
  %536 = phi ptr [ %534, %531 ], [ null, %528 ]
  %537 = load i32, ptr %6, align 4, !tbaa !73
  %538 = zext i32 %537 to i64
  %539 = sub nsw i64 %538, %529
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %536, i64 noundef %539, i32 noundef 0) #12
  %540 = load i32, ptr %6, align 4, !tbaa !73
  %541 = zext i32 %540 to i64
  store i64 %541, ptr %9, align 8, !tbaa !74
  %542 = load ptr, ptr %0, align 8, !tbaa !20
  %543 = getelementptr inbounds nuw i8, ptr %542, i64 56
  %544 = load ptr, ptr %543, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %544) #12
  %545 = getelementptr inbounds nuw i8, ptr %544, i64 40
  %546 = load i64, ptr %545, align 8, !tbaa !57
  %547 = getelementptr inbounds nuw i8, ptr %542, i64 32
  %548 = load i32, ptr %547, align 8, !tbaa !107
  %549 = zext i32 %548 to i64
  %550 = tail call i64 @llvm.umin.i64(i64 %546, i64 %549)
  %551 = trunc nuw i64 %550 to i32
  %552 = icmp eq i64 %550, 0
  br i1 %552, label %585, label %553

553:                                              ; preds = %535
  %554 = getelementptr inbounds nuw i8, ptr %542, i64 24
  %555 = load ptr, ptr %554, align 8, !tbaa !106
  %556 = getelementptr inbounds nuw i8, ptr %544, i64 32
  %557 = load ptr, ptr %556, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %555, ptr align 1 %557, i64 %550, i1 false)
  %558 = load ptr, ptr %554, align 8, !tbaa !106
  %559 = getelementptr inbounds nuw i8, ptr %558, i64 %550
  store ptr %559, ptr %554, align 8, !tbaa !106
  %560 = load ptr, ptr %556, align 8, !tbaa !58
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 %550
  store ptr %561, ptr %556, align 8, !tbaa !58
  %562 = getelementptr inbounds nuw i8, ptr %542, i64 40
  %563 = load i64, ptr %562, align 8, !tbaa !108
  %564 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %563, i64 %550), !nosanitize !45
  %565 = extractvalue { i64, i1 } %564, 1, !nosanitize !45
  br i1 %565, label %566, label %567, !prof !46, !nosanitize !45

566:                                              ; preds = %553
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

567:                                              ; preds = %553
  %568 = extractvalue { i64, i1 } %564, 0, !nosanitize !45
  store i64 %568, ptr %562, align 8, !tbaa !108
  %569 = load i32, ptr %547, align 8, !tbaa !107
  %570 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %569, i32 %551), !nosanitize !45
  %571 = extractvalue { i32, i1 } %570, 1, !nosanitize !45
  br i1 %571, label %572, label %573, !prof !46, !nosanitize !45

572:                                              ; preds = %567
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

573:                                              ; preds = %567
  %574 = extractvalue { i32, i1 } %570, 0, !nosanitize !45
  store i32 %574, ptr %547, align 8, !tbaa !107
  %575 = load i64, ptr %545, align 8, !tbaa !57
  %576 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %575, i64 %550), !nosanitize !45
  %577 = extractvalue { i64, i1 } %576, 1, !nosanitize !45
  br i1 %577, label %578, label %579, !prof !46, !nosanitize !45

578:                                              ; preds = %573
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

579:                                              ; preds = %573
  %580 = extractvalue { i64, i1 } %576, 0, !nosanitize !45
  store i64 %580, ptr %545, align 8, !tbaa !57
  %581 = icmp eq i64 %580, 0
  br i1 %581, label %582, label %585

582:                                              ; preds = %579
  %583 = getelementptr inbounds nuw i8, ptr %544, i64 16
  %584 = load ptr, ptr %583, align 8, !tbaa !40
  store ptr %584, ptr %556, align 8, !tbaa !58
  br label %585

585:                                              ; preds = %582, %579, %535
  %586 = load ptr, ptr %0, align 8, !tbaa !20
  %587 = getelementptr inbounds nuw i8, ptr %586, i64 32
  %588 = load i32, ptr %587, align 8, !tbaa !107
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %.loopexit23, label %590

590:                                              ; preds = %585, %525
  br label %.loopexit23

.loopexit23:                                      ; preds = %455, %590, %585, %519, %345
  %591 = phi i32 [ 0, %345 ], [ %524, %519 ], [ 0, %585 ], [ 1, %590 ], [ 0, %455 ]
  ret i32 %591
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
  %.pre.pre72.pre = load ptr, ptr %8, align 8, !tbaa !34
  br label %356

33:                                               ; preds = %28
  %34 = load i32, ptr %5, align 8, !tbaa !32
  %35 = zext i32 %34 to i64
  br label %36

36:                                               ; preds = %302, %33
  %37 = phi i32 [ %230, %302 ], [ %29, %33 ]
  %38 = load i64, ptr %6, align 8, !tbaa !61
  %39 = zext nneg i32 %37 to i64
  %40 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %38, i64 %39), !nosanitize !45
  %41 = extractvalue { i64, i1 } %40, 1, !nosanitize !45
  br i1 %41, label %42, label %43, !prof !46, !nosanitize !45

42:                                               ; preds = %36
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

43:                                               ; preds = %36
  %44 = extractvalue { i64, i1 } %40, 0, !nosanitize !45
  %45 = load i32, ptr %7, align 4, !tbaa !73
  %46 = zext i32 %45 to i64
  %47 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %44, i64 %46), !nosanitize !45
  %48 = extractvalue { i64, i1 } %47, 1, !nosanitize !45
  br i1 %48, label %49, label %50, !prof !46, !nosanitize !45

49:                                               ; preds = %43
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

50:                                               ; preds = %43
  %51 = extractvalue { i64, i1 } %47, 0, !nosanitize !45
  %52 = trunc i64 %51 to i32
  %53 = load i32, ptr %5, align 8, !tbaa !32
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 262), !nosanitize !45
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !45
  br i1 %55, label %56, label %57, !prof !46, !nosanitize !45

56:                                               ; preds = %50
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

57:                                               ; preds = %50
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !45
  %59 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %34, i32 %58), !nosanitize !45
  %60 = extractvalue { i32, i1 } %59, 1, !nosanitize !45
  br i1 %60, label %61, label %62, !prof !46, !nosanitize !45

61:                                               ; preds = %57
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

62:                                               ; preds = %57
  %63 = extractvalue { i32, i1 } %59, 0, !nosanitize !45
  %64 = icmp ult i32 %45, %63
  br i1 %64, label %181, label %65

65:                                               ; preds = %62
  %66 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %34, i32 %52), !nosanitize !45
  %67 = extractvalue { i32, i1 } %66, 1, !nosanitize !45
  br i1 %67, label %68, label %69, !prof !46, !nosanitize !45

68:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

78:                                               ; preds = %69
  %79 = extractvalue { i32, i1 } %75, 0, !nosanitize !45
  store i32 %79, ptr %9, align 8, !tbaa !83
  %80 = load i32, ptr %7, align 4, !tbaa !73
  %81 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %80, i32 %34), !nosanitize !45
  %82 = extractvalue { i32, i1 } %81, 1, !nosanitize !45
  br i1 %82, label %83, label %84, !prof !46, !nosanitize !45

83:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  br i1 %97, label %121, label %98, !prof !46, !nosanitize !45

98:                                               ; preds = %91
  %99 = icmp ult i32 %93, 8
  br i1 %99, label %.preheader143, label %100

.preheader143:                                    ; preds = %115, %98
  %.ph144 = phi ptr [ %117, %115 ], [ %96, %98 ]
  %.ph145 = phi i32 [ %119, %115 ], [ %93, %98 ]
  br label %127

100:                                              ; preds = %98
  %101 = and i64 %95, 4294967288
  %102 = insertelement <8 x i32> poison, i32 %92, i64 0
  %103 = shufflevector <8 x i32> %102, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %104

104:                                              ; preds = %104, %100
  %105 = phi i64 [ 0, %100 ], [ %113, %104 ]
  %106 = mul nsw i64 %105, -2
  %107 = getelementptr i8, ptr %96, i64 %106
  %108 = getelementptr inbounds i8, ptr %107, i64 -16
  %109 = load <8 x i16>, ptr %108, align 2, !tbaa !62
  %110 = zext <8 x i16> %109 to <8 x i32>
  %111 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %110, <8 x i32> %103)
  %112 = trunc nuw <8 x i32> %111 to <8 x i16>
  store <8 x i16> %112, ptr %108, align 2, !tbaa !62
  %113 = add nuw nsw i64 %105, 8
  %114 = icmp eq i64 %113, %101
  br i1 %114, label %115, label %104, !llvm.loop !140

115:                                              ; preds = %104
  %116 = mul nsw i64 %101, -2
  %117 = getelementptr i8, ptr %96, i64 %116
  %118 = trunc nuw i64 %101 to i32
  %119 = sub i32 %93, %118
  %120 = icmp eq i64 %101, %95
  br i1 %120, label %.loopexit28, label %.preheader143

121:                                              ; preds = %91
  %122 = getelementptr inbounds i8, ptr %96, i64 -2
  %123 = load i16, ptr %122, align 2, !tbaa !62
  %124 = zext i16 %123 to i32
  %125 = tail call i32 @llvm.usub.sat.i32(i32 %124, i32 %92)
  %126 = trunc nuw i32 %125 to i16
  store i16 %126, ptr %122, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

127:                                              ; preds = %.preheader143, %127
  %128 = phi ptr [ %130, %127 ], [ %.ph144, %.preheader143 ]
  %129 = phi i32 [ %135, %127 ], [ %.ph145, %.preheader143 ]
  %130 = getelementptr inbounds i8, ptr %128, i64 -2
  %131 = load i16, ptr %130, align 2, !tbaa !62
  %132 = zext i16 %131 to i32
  %133 = tail call i32 @llvm.usub.sat.i32(i32 %132, i32 %92)
  %134 = trunc nuw i32 %133 to i16
  store i16 %134, ptr %130, align 2, !tbaa !62
  %135 = add i32 %129, -1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %.loopexit28, label %127, !llvm.loop !141

.loopexit28:                                      ; preds = %127, %115
  %137 = icmp eq i32 %92, 0
  br i1 %137, label %138, label %139, !prof !46, !nosanitize !45

138:                                              ; preds = %.loopexit28
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

139:                                              ; preds = %.loopexit28
  %140 = load ptr, ptr %14, align 8, !tbaa !35
  %141 = zext i32 %92 to i64
  %142 = getelementptr inbounds nuw [2 x i8], ptr %140, i64 %141
  %143 = icmp ult i32 %92, 8
  br i1 %143, label %.preheader, label %144

144:                                              ; preds = %139
  %145 = and i64 %141, 4294967288
  %146 = insertelement <8 x i32> poison, i32 %92, i64 0
  %147 = shufflevector <8 x i32> %146, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %148

148:                                              ; preds = %148, %144
  %149 = phi i64 [ 0, %144 ], [ %157, %148 ]
  %150 = mul nsw i64 %149, -2
  %151 = getelementptr i8, ptr %142, i64 %150
  %152 = getelementptr inbounds i8, ptr %151, i64 -16
  %153 = load <8 x i16>, ptr %152, align 2, !tbaa !62
  %154 = zext <8 x i16> %153 to <8 x i32>
  %155 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %154, <8 x i32> %147)
  %156 = trunc nuw <8 x i32> %155 to <8 x i16>
  store <8 x i16> %156, ptr %152, align 2, !tbaa !62
  %157 = add nuw nsw i64 %149, 8
  %158 = icmp eq i64 %157, %145
  br i1 %158, label %159, label %148, !llvm.loop !142

159:                                              ; preds = %148
  %160 = mul nsw i64 %145, -2
  %161 = getelementptr i8, ptr %142, i64 %160
  %162 = trunc nuw i64 %145 to i32
  %163 = sub i32 %92, %162
  %164 = icmp eq i64 %145, %141
  br i1 %164, label %.loopexit27, label %.preheader

.preheader:                                       ; preds = %159, %139
  %.ph = phi ptr [ %161, %159 ], [ %142, %139 ]
  %.ph142 = phi i32 [ %163, %159 ], [ %92, %139 ]
  br label %165

165:                                              ; preds = %.preheader, %165
  %166 = phi ptr [ %168, %165 ], [ %.ph, %.preheader ]
  %167 = phi i32 [ %173, %165 ], [ %.ph142, %.preheader ]
  %168 = getelementptr inbounds i8, ptr %166, i64 -2
  %169 = load i16, ptr %168, align 2, !tbaa !62
  %170 = zext i16 %169 to i32
  %171 = tail call i32 @llvm.usub.sat.i32(i32 %170, i32 %92)
  %172 = trunc nuw i32 %171 to i16
  store i16 %172, ptr %168, align 2, !tbaa !62
  %173 = add i32 %167, -1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %.loopexit27, label %165, !llvm.loop !143

.loopexit27:                                      ; preds = %165, %159
  store i32 1, ptr %15, align 8, !tbaa !63
  %175 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %52, i32 %34), !nosanitize !45
  %176 = extractvalue { i32, i1 } %175, 1, !nosanitize !45
  br i1 %176, label %177, label %178, !prof !46, !nosanitize !45

177:                                              ; preds = %.loopexit27
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

178:                                              ; preds = %.loopexit27
  %179 = extractvalue { i32, i1 } %175, 0, !nosanitize !45
  %180 = load i32, ptr %3, align 4, !tbaa !75
  br label %181

181:                                              ; preds = %178, %62
  %182 = phi i32 [ %180, %178 ], [ %37, %62 ]
  %183 = phi i32 [ %85, %178 ], [ %45, %62 ]
  %184 = phi i32 [ %179, %178 ], [ %52, %62 ]
  %185 = load ptr, ptr %0, align 8, !tbaa !20
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 8
  %187 = load i32, ptr %186, align 8, !tbaa !81
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %307, label %189

189:                                              ; preds = %181
  %190 = load ptr, ptr %8, align 8, !tbaa !34
  %191 = zext i32 %183 to i64
  %192 = getelementptr inbounds nuw i8, ptr %190, i64 %191
  %193 = zext i32 %182 to i64
  %194 = getelementptr inbounds nuw i8, ptr %192, i64 %193
  %195 = tail call i32 @llvm.umin.i32(i32 %187, i32 %184)
  %196 = icmp eq i32 %184, 0
  br i1 %196, label %224, label %197

197:                                              ; preds = %189
  %198 = sub i32 %187, %195
  store i32 %198, ptr %186, align 8, !tbaa !81
  %199 = load ptr, ptr %185, align 8, !tbaa !82
  %200 = zext i32 %195 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %194, ptr align 1 %199, i64 %200, i1 false)
  %201 = getelementptr inbounds nuw i8, ptr %185, i64 56
  %202 = load ptr, ptr %201, align 8, !tbaa !19
  %203 = getelementptr inbounds nuw i8, ptr %202, i64 48
  %204 = load i32, ptr %203, align 8, !tbaa !30
  switch i32 %204, label %213 [
    i32 1, label %205
    i32 2, label %209
  ]

205:                                              ; preds = %197
  %206 = getelementptr inbounds nuw i8, ptr %185, i64 96
  %207 = load i64, ptr %206, align 8, !tbaa !59
  %208 = tail call i64 @adler32(i64 noundef %207, ptr noundef %194, i32 noundef %195) #12
  store i64 %208, ptr %206, align 8, !tbaa !59
  br label %213

209:                                              ; preds = %197
  %210 = getelementptr inbounds nuw i8, ptr %185, i64 96
  %211 = load i64, ptr %210, align 8, !tbaa !59
  %212 = tail call i64 @crc32(i64 noundef %211, ptr noundef %194, i32 noundef %195) #12
  store i64 %212, ptr %210, align 8, !tbaa !59
  br label %213

213:                                              ; preds = %209, %205, %197
  %214 = load ptr, ptr %185, align 8, !tbaa !82
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 %200
  store ptr %215, ptr %185, align 8, !tbaa !82
  %216 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %217 = load i64, ptr %216, align 8, !tbaa !55
  %218 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %217, i64 %200), !nosanitize !45
  %219 = extractvalue { i64, i1 } %218, 1, !nosanitize !45
  br i1 %219, label %220, label %221, !prof !46, !nosanitize !45

220:                                              ; preds = %213
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

221:                                              ; preds = %213
  %222 = extractvalue { i64, i1 } %218, 0, !nosanitize !45
  store i64 %222, ptr %216, align 8, !tbaa !55
  %223 = load i32, ptr %3, align 4, !tbaa !75
  br label %224

224:                                              ; preds = %221, %189
  %225 = phi i32 [ %182, %189 ], [ %223, %221 ]
  %226 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %225, i32 %195), !nosanitize !45
  %227 = extractvalue { i32, i1 } %226, 1, !nosanitize !45
  br i1 %227, label %228, label %229, !prof !46, !nosanitize !45

228:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

229:                                              ; preds = %224
  %230 = extractvalue { i32, i1 } %226, 0, !nosanitize !45
  store i32 %230, ptr %3, align 4, !tbaa !75
  %231 = load i32, ptr %11, align 4, !tbaa !76
  %232 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %230, i32 %231), !nosanitize !45
  %233 = extractvalue { i32, i1 } %232, 1, !nosanitize !45
  br i1 %233, label %234, label %235, !prof !46, !nosanitize !45

234:                                              ; preds = %229
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

235:                                              ; preds = %229
  %236 = extractvalue { i32, i1 } %232, 0, !nosanitize !45
  %237 = icmp ugt i32 %236, 2
  br i1 %237, label %238, label %.loopexit

238:                                              ; preds = %235
  %239 = load i32, ptr %7, align 4, !tbaa !73
  %240 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %239, i32 %231), !nosanitize !45
  %241 = extractvalue { i32, i1 } %240, 0, !nosanitize !45
  %242 = extractvalue { i32, i1 } %240, 1, !nosanitize !45
  br i1 %242, label %243, label %244, !prof !46, !nosanitize !45

243:                                              ; preds = %238
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

244:                                              ; preds = %238
  %245 = load ptr, ptr %8, align 8, !tbaa !34
  %246 = zext i32 %241 to i64
  %247 = getelementptr inbounds nuw i8, ptr %245, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !8
  %249 = zext i8 %248 to i32
  store i32 %249, ptr %16, align 8, !tbaa !80
  %250 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %241, i32 1), !nosanitize !45
  %251 = extractvalue { i32, i1 } %250, 1, !nosanitize !45
  br i1 %251, label %252, label %253, !prof !46, !nosanitize !45

252:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

253:                                              ; preds = %244
  %254 = extractvalue { i32, i1 } %250, 0, !nosanitize !45
  %255 = load i32, ptr %17, align 8, !tbaa !53
  %256 = shl i32 %249, %255
  %257 = zext i32 %254 to i64
  %258 = getelementptr inbounds nuw i8, ptr %245, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !8
  %260 = zext i8 %259 to i32
  %261 = xor i32 %256, %260
  %262 = load i32, ptr %18, align 4, !tbaa !52
  %263 = and i32 %261, %262
  store i32 %263, ptr %16, align 8, !tbaa !80
  br label %264

264:                                              ; preds = %297, %253
  %265 = phi i32 [ %263, %253 ], [ %282, %297 ]
  %266 = phi i32 [ %231, %253 ], [ %293, %297 ]
  %267 = phi i32 [ %241, %253 ], [ %298, %297 ]
  %268 = icmp eq i32 %266, 0
  br i1 %268, label %.loopexit, label %269

269:                                              ; preds = %264
  %270 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %267, i32 3), !nosanitize !45
  %271 = extractvalue { i32, i1 } %270, 1, !nosanitize !45
  br i1 %271, label %272, label %273, !prof !46, !nosanitize !45

272:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

273:                                              ; preds = %269
  %274 = shl i32 %265, %255
  %275 = extractvalue { i32, i1 } %270, 0, !nosanitize !45
  %276 = add i32 %275, -1
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds nuw i8, ptr %245, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !8
  %280 = zext i8 %279 to i32
  %281 = xor i32 %274, %280
  %282 = and i32 %281, %262
  store i32 %282, ptr %16, align 8, !tbaa !80
  %283 = load ptr, ptr %13, align 8, !tbaa !37
  %284 = zext i32 %282 to i64
  %285 = getelementptr inbounds nuw [2 x i8], ptr %283, i64 %284
  %286 = load i16, ptr %285, align 2, !tbaa !62
  %287 = load ptr, ptr %14, align 8, !tbaa !35
  %288 = load i32, ptr %19, align 8, !tbaa !33
  %289 = and i32 %288, %267
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds nuw [2 x i8], ptr %287, i64 %290
  store i16 %286, ptr %291, align 2, !tbaa !62
  %292 = trunc i32 %267 to i16
  store i16 %292, ptr %285, align 2, !tbaa !62
  %293 = add i32 %266, -1
  store i32 %293, ptr %11, align 4, !tbaa !76
  %294 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %230, i32 %293), !nosanitize !45
  %295 = extractvalue { i32, i1 } %294, 1, !nosanitize !45
  br i1 %295, label %296, label %297, !prof !46, !nosanitize !45

296:                                              ; preds = %273
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

297:                                              ; preds = %273
  %298 = add nuw i32 %267, 1
  %299 = extractvalue { i32, i1 } %294, 0, !nosanitize !45
  %300 = icmp ult i32 %299, 3
  br i1 %300, label %.loopexit, label %264, !llvm.loop !91

.loopexit:                                        ; preds = %297, %264, %235
  %301 = icmp ult i32 %230, 262
  br i1 %301, label %302, label %307

302:                                              ; preds = %.loopexit
  %303 = load ptr, ptr %0, align 8, !tbaa !20
  %304 = getelementptr inbounds nuw i8, ptr %303, i64 8
  %305 = load i32, ptr %304, align 8, !tbaa !81
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %36, !llvm.loop !92

307:                                              ; preds = %302, %.loopexit, %181
  %308 = phi i32 [ %230, %302 ], [ %230, %.loopexit ], [ %182, %181 ]
  %309 = load i64, ptr %20, align 8, !tbaa !38
  %310 = load i64, ptr %6, align 8, !tbaa !61
  %311 = icmp ult i64 %309, %310
  br i1 %311, label %312, label %347

312:                                              ; preds = %307
  %313 = load i32, ptr %7, align 4, !tbaa !73
  %314 = zext i32 %313 to i64
  %315 = zext i32 %308 to i64
  %316 = add nuw nsw i64 %314, %315
  %317 = icmp ult i64 %309, %316
  br i1 %317, label %318, label %328

318:                                              ; preds = %312
  %319 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %310, i64 %316), !nosanitize !45
  %320 = extractvalue { i64, i1 } %319, 1, !nosanitize !45
  br i1 %320, label %321, label %322, !prof !46, !nosanitize !45

321:                                              ; preds = %318
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

322:                                              ; preds = %318
  %323 = extractvalue { i64, i1 } %319, 0, !nosanitize !45
  %324 = tail call i64 @llvm.umin.i64(i64 %323, i64 258)
  %325 = load ptr, ptr %8, align 8, !tbaa !34
  %326 = getelementptr inbounds nuw i8, ptr %325, i64 %316
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %326, i8 0, i64 %324, i1 false)
  %327 = add nuw nsw i64 %324, %316
  br label %344

328:                                              ; preds = %312
  %329 = add nuw nsw i64 %316, 258
  %330 = icmp ult i64 %309, %329
  br i1 %330, label %331, label %347

331:                                              ; preds = %328
  %332 = sub nuw nsw i64 %329, %309
  %333 = sub i64 %310, %309
  %334 = tail call i64 @llvm.umin.i64(i64 %332, i64 %333)
  %335 = load ptr, ptr %8, align 8, !tbaa !34
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 %309
  %337 = and i64 %334, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %336, i8 0, i64 %337, i1 false)
  %338 = load i64, ptr %20, align 8, !tbaa !38
  %339 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %338, i64 %334), !nosanitize !45
  %340 = extractvalue { i64, i1 } %339, 1, !nosanitize !45
  br i1 %340, label %341, label %342, !prof !46, !nosanitize !45

341:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

342:                                              ; preds = %331
  %343 = extractvalue { i64, i1 } %339, 0, !nosanitize !45
  br label %344

344:                                              ; preds = %342, %322
  %345 = phi i64 [ %327, %322 ], [ %343, %342 ]
  store i64 %345, ptr %20, align 8, !tbaa !38
  %346 = load i32, ptr %3, align 4, !tbaa !75
  br label %347

347:                                              ; preds = %344, %328, %307
  %348 = phi i32 [ %308, %307 ], [ %308, %328 ], [ %346, %344 ]
  %349 = icmp ult i32 %348, 259
  %350 = and i1 %21, %349
  br i1 %350, label %.loopexit29, label %351

351:                                              ; preds = %347
  %352 = icmp eq i32 %348, 0
  br i1 %352, label %606, label %353

353:                                              ; preds = %351
  store i32 0, ptr %4, align 8, !tbaa !78
  %354 = icmp ugt i32 %348, 2
  %355 = load i32, ptr %7, align 4, !tbaa !73
  %.pre.pre72.pre74 = load ptr, ptr %8, align 8, !tbaa !34
  br i1 %354, label %356, label %._crit_edge

356:                                              ; preds = %353, %31
  %.pre.pre72 = phi ptr [ %.pre.pre72.pre, %31 ], [ %.pre.pre72.pre74, %353 ]
  %357 = phi i32 [ %32, %31 ], [ %355, %353 ]
  %358 = phi i32 [ %29, %31 ], [ %348, %353 ]
  %359 = icmp eq i32 %357, 0
  br i1 %359, label %._crit_edge, label %360

360:                                              ; preds = %356
  %361 = zext i32 %357 to i64
  %362 = getelementptr inbounds nuw i8, ptr %.pre.pre72, i64 %361
  %363 = getelementptr inbounds i8, ptr %362, i64 -1
  %364 = load i8, ptr %363, align 1, !tbaa !8
  %365 = load i8, ptr %362, align 1, !tbaa !8
  %366 = icmp eq i8 %364, %365
  br i1 %366, label %367, label %._crit_edge

367:                                              ; preds = %360
  %368 = getelementptr inbounds nuw i8, ptr %362, i64 1
  %369 = load i8, ptr %368, align 1, !tbaa !8
  %370 = icmp eq i8 %364, %369
  br i1 %370, label %371, label %._crit_edge

371:                                              ; preds = %367
  %372 = getelementptr inbounds nuw i8, ptr %362, i64 2
  %373 = load i8, ptr %372, align 1, !tbaa !8
  %374 = icmp eq i8 %364, %373
  br i1 %374, label %375, label %._crit_edge

375:                                              ; preds = %371
  %376 = getelementptr inbounds nuw i8, ptr %362, i64 258
  br label %377

377:                                              ; preds = %407, %375
  %378 = phi i64 [ 2, %375 ], [ %408, %407 ]
  %379 = getelementptr inbounds nuw i8, ptr %362, i64 %378
  %380 = getelementptr inbounds nuw i8, ptr %379, i64 1
  %381 = load i8, ptr %380, align 1, !tbaa !8
  %382 = icmp eq i8 %364, %381
  br i1 %382, label %383, label %.split.loop.exit.split.loop.exit

383:                                              ; preds = %377
  %384 = getelementptr inbounds nuw i8, ptr %379, i64 2
  %385 = load i8, ptr %384, align 1, !tbaa !8
  %386 = icmp eq i8 %364, %385
  br i1 %386, label %387, label %.split.loop.exit.split.loop.exit106

387:                                              ; preds = %383
  %388 = getelementptr inbounds nuw i8, ptr %379, i64 3
  %389 = load i8, ptr %388, align 1, !tbaa !8
  %390 = icmp eq i8 %364, %389
  br i1 %390, label %391, label %.split.loop.exit.split.loop.exit108

391:                                              ; preds = %387
  %392 = getelementptr inbounds nuw i8, ptr %379, i64 4
  %393 = load i8, ptr %392, align 1, !tbaa !8
  %394 = icmp eq i8 %364, %393
  br i1 %394, label %395, label %.split.loop.exit.split.loop.exit110

395:                                              ; preds = %391
  %396 = getelementptr inbounds nuw i8, ptr %379, i64 5
  %397 = load i8, ptr %396, align 1, !tbaa !8
  %398 = icmp eq i8 %364, %397
  br i1 %398, label %399, label %.split.loop.exit.split.loop.exit112

399:                                              ; preds = %395
  %400 = getelementptr inbounds nuw i8, ptr %379, i64 6
  %401 = load i8, ptr %400, align 1, !tbaa !8
  %402 = icmp eq i8 %364, %401
  br i1 %402, label %403, label %.split.loop.exit.split.loop.exit114

403:                                              ; preds = %399
  %404 = getelementptr inbounds nuw i8, ptr %379, i64 7
  %405 = load i8, ptr %404, align 1, !tbaa !8
  %406 = icmp eq i8 %364, %405
  br i1 %406, label %407, label %.split.loop.exit.split.loop.exit116

407:                                              ; preds = %403
  %408 = add nuw nsw i64 %378, 8
  %409 = getelementptr inbounds nuw i8, ptr %362, i64 %408
  %410 = load i8, ptr %409, align 1, !tbaa !8
  %411 = icmp eq i8 %364, %410
  %412 = icmp samesign ult i64 %378, 250
  %413 = select i1 %411, i1 %412, i1 false
  br i1 %413, label %377, label %.split.loop.exit.split.loop.exit118, !llvm.loop !144

.split.loop.exit.split.loop.exit:                 ; preds = %377
  %414 = getelementptr inbounds nuw i8, ptr %379, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit106:              ; preds = %383
  %415 = getelementptr inbounds nuw i8, ptr %379, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit108:              ; preds = %387
  %416 = getelementptr inbounds nuw i8, ptr %379, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit110:              ; preds = %391
  %417 = getelementptr inbounds nuw i8, ptr %379, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit112:              ; preds = %395
  %418 = getelementptr inbounds nuw i8, ptr %379, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit114:              ; preds = %399
  %419 = getelementptr inbounds nuw i8, ptr %379, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit116:              ; preds = %403
  %420 = getelementptr inbounds nuw i8, ptr %379, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit118:              ; preds = %407
  %421 = getelementptr inbounds nuw i8, ptr %362, i64 %408
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit118, %.split.loop.exit.split.loop.exit116, %.split.loop.exit.split.loop.exit114, %.split.loop.exit.split.loop.exit112, %.split.loop.exit.split.loop.exit110, %.split.loop.exit.split.loop.exit108, %.split.loop.exit.split.loop.exit106, %.split.loop.exit.split.loop.exit
  %422 = phi ptr [ %415, %.split.loop.exit.split.loop.exit106 ], [ %416, %.split.loop.exit.split.loop.exit108 ], [ %414, %.split.loop.exit.split.loop.exit ], [ %420, %.split.loop.exit.split.loop.exit116 ], [ %419, %.split.loop.exit.split.loop.exit114 ], [ %418, %.split.loop.exit.split.loop.exit112 ], [ %417, %.split.loop.exit.split.loop.exit110 ], [ %421, %.split.loop.exit.split.loop.exit118 ]
  %423 = ptrtoint ptr %376 to i64
  %424 = ptrtoint ptr %422 to i64
  %425 = sub i64 %423, %424
  %426 = trunc i64 %425 to i32
  %427 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %426), !nosanitize !45
  %428 = extractvalue { i32, i1 } %427, 1, !nosanitize !45
  br i1 %428, label %429, label %430, !prof !46, !nosanitize !45

429:                                              ; preds = %.split.loop.exit
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

430:                                              ; preds = %.split.loop.exit
  %431 = extractvalue { i32, i1 } %427, 0, !nosanitize !45
  %432 = tail call i32 @llvm.umin.i32(i32 %431, i32 %358)
  store i32 %432, ptr %4, align 8
  %433 = icmp ugt i32 %432, 2
  %434 = load i32, ptr %23, align 4, !tbaa !139
  br i1 %433, label %435, label %494

435:                                              ; preds = %430
  %436 = trunc i32 %432 to i8
  %437 = add i8 %436, -3
  %438 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %434, i32 1), !nosanitize !45
  %439 = extractvalue { i32, i1 } %438, 1, !nosanitize !45
  br i1 %439, label %440, label %441, !prof !46, !nosanitize !45

440:                                              ; preds = %435
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

441:                                              ; preds = %435
  %442 = extractvalue { i32, i1 } %438, 0, !nosanitize !45
  %443 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %442, ptr %23, align 4, !tbaa !139
  %444 = zext i32 %434 to i64
  %445 = getelementptr inbounds nuw i8, ptr %443, i64 %444
  store i8 1, ptr %445, align 1, !tbaa !8
  %446 = load i32, ptr %23, align 4, !tbaa !139
  %447 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %446, i32 1), !nosanitize !45
  %448 = extractvalue { i32, i1 } %447, 1, !nosanitize !45
  br i1 %448, label %449, label %450, !prof !46, !nosanitize !45

449:                                              ; preds = %441
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

450:                                              ; preds = %441
  %451 = extractvalue { i32, i1 } %447, 0, !nosanitize !45
  %452 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %451, ptr %23, align 4, !tbaa !139
  %453 = zext i32 %446 to i64
  %454 = getelementptr inbounds nuw i8, ptr %452, i64 %453
  store i8 0, ptr %454, align 1, !tbaa !8
  %455 = load i32, ptr %23, align 4, !tbaa !139
  %456 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %455, i32 1), !nosanitize !45
  %457 = extractvalue { i32, i1 } %456, 1, !nosanitize !45
  br i1 %457, label %458, label %459, !prof !46, !nosanitize !45

458:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

459:                                              ; preds = %450
  %460 = extractvalue { i32, i1 } %456, 0, !nosanitize !45
  %461 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %460, ptr %23, align 4, !tbaa !139
  %462 = zext i32 %455 to i64
  %463 = getelementptr inbounds nuw i8, ptr %461, i64 %462
  store i8 %437, ptr %463, align 1, !tbaa !8
  %464 = zext i8 %437 to i64
  %465 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %464
  %466 = load i8, ptr %465, align 1, !tbaa !8
  %467 = zext i8 %466 to i64
  %468 = getelementptr [4 x i8], ptr %26, i64 %467
  %469 = load i16, ptr %468, align 4, !tbaa !8
  %470 = add i16 %469, 1
  store i16 %470, ptr %468, align 4, !tbaa !8
  %471 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %472 = zext i8 %471 to i64
  %473 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %472
  %474 = load i16, ptr %473, align 4, !tbaa !8
  %475 = add i16 %474, 1
  store i16 %475, ptr %473, align 4, !tbaa !8
  %476 = load i32, ptr %23, align 4, !tbaa !139
  %477 = load i32, ptr %25, align 8, !tbaa !47
  %478 = icmp eq i32 %476, %477
  %479 = load i32, ptr %4, align 8, !tbaa !78
  %480 = load i32, ptr %3, align 4, !tbaa !75
  %481 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %480, i32 %479), !nosanitize !45
  %482 = extractvalue { i32, i1 } %481, 1, !nosanitize !45
  br i1 %482, label %483, label %484, !prof !46, !nosanitize !45

483:                                              ; preds = %459
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

484:                                              ; preds = %459
  %485 = extractvalue { i32, i1 } %481, 0, !nosanitize !45
  store i32 %485, ptr %3, align 4, !tbaa !75
  %486 = load i32, ptr %7, align 4, !tbaa !73
  %487 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %486, i32 %479), !nosanitize !45
  %488 = extractvalue { i32, i1 } %487, 1, !nosanitize !45
  br i1 %488, label %489, label %490, !prof !46, !nosanitize !45

489:                                              ; preds = %484
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

490:                                              ; preds = %484
  %491 = extractvalue { i32, i1 } %487, 0, !nosanitize !45
  store i32 %491, ptr %7, align 4, !tbaa !73
  store i32 0, ptr %4, align 8, !tbaa !78
  br i1 %478, label %544, label %.backedge

._crit_edge:                                      ; preds = %353, %371, %367, %360, %356
  %.pre = phi ptr [ %.pre.pre72, %360 ], [ %.pre.pre72, %356 ], [ %.pre.pre72, %371 ], [ %.pre.pre72, %367 ], [ %.pre.pre72.pre74, %353 ]
  %492 = phi i32 [ %357, %360 ], [ 0, %356 ], [ %357, %371 ], [ %357, %367 ], [ %355, %353 ]
  %493 = load i32, ptr %23, align 4, !tbaa !139
  %.pre71 = zext i32 %492 to i64
  br label %494

494:                                              ; preds = %._crit_edge, %430
  %.pre-phi = phi i64 [ %.pre71, %._crit_edge ], [ %361, %430 ]
  %495 = phi ptr [ %.pre, %._crit_edge ], [ %.pre.pre72, %430 ]
  %496 = phi i32 [ %493, %._crit_edge ], [ %434, %430 ]
  %497 = getelementptr inbounds nuw i8, ptr %495, i64 %.pre-phi
  %498 = load i8, ptr %497, align 1, !tbaa !8
  %499 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %496, i32 1), !nosanitize !45
  %500 = extractvalue { i32, i1 } %499, 1, !nosanitize !45
  br i1 %500, label %501, label %502, !prof !46, !nosanitize !45

501:                                              ; preds = %494
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

502:                                              ; preds = %494
  %503 = extractvalue { i32, i1 } %499, 0, !nosanitize !45
  %504 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %503, ptr %23, align 4, !tbaa !139
  %505 = zext i32 %496 to i64
  %506 = getelementptr inbounds nuw i8, ptr %504, i64 %505
  store i8 0, ptr %506, align 1, !tbaa !8
  %507 = load i32, ptr %23, align 4, !tbaa !139
  %508 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %507, i32 1), !nosanitize !45
  %509 = extractvalue { i32, i1 } %508, 1, !nosanitize !45
  br i1 %509, label %510, label %511, !prof !46, !nosanitize !45

510:                                              ; preds = %502
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

511:                                              ; preds = %502
  %512 = extractvalue { i32, i1 } %508, 0, !nosanitize !45
  %513 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %512, ptr %23, align 4, !tbaa !139
  %514 = zext i32 %507 to i64
  %515 = getelementptr inbounds nuw i8, ptr %513, i64 %514
  store i8 0, ptr %515, align 1, !tbaa !8
  %516 = load i32, ptr %23, align 4, !tbaa !139
  %517 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %516, i32 1), !nosanitize !45
  %518 = extractvalue { i32, i1 } %517, 1, !nosanitize !45
  br i1 %518, label %519, label %520, !prof !46, !nosanitize !45

519:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

520:                                              ; preds = %511
  %521 = extractvalue { i32, i1 } %517, 0, !nosanitize !45
  %522 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %521, ptr %23, align 4, !tbaa !139
  %523 = zext i32 %516 to i64
  %524 = getelementptr inbounds nuw i8, ptr %522, i64 %523
  store i8 %498, ptr %524, align 1, !tbaa !8
  %525 = zext i8 %498 to i64
  %526 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %525
  %527 = load i16, ptr %526, align 4, !tbaa !8
  %528 = add i16 %527, 1
  store i16 %528, ptr %526, align 4, !tbaa !8
  %529 = load i32, ptr %23, align 4, !tbaa !139
  %530 = load i32, ptr %25, align 8, !tbaa !47
  %531 = icmp eq i32 %529, %530
  %532 = load i32, ptr %3, align 4, !tbaa !75
  %533 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %532, i32 1), !nosanitize !45
  %534 = extractvalue { i32, i1 } %533, 1, !nosanitize !45
  br i1 %534, label %535, label %536, !prof !46, !nosanitize !45

535:                                              ; preds = %520
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

536:                                              ; preds = %520
  %537 = extractvalue { i32, i1 } %533, 0, !nosanitize !45
  store i32 %537, ptr %3, align 4, !tbaa !75
  %538 = load i32, ptr %7, align 4, !tbaa !73
  %539 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %538, i32 1), !nosanitize !45
  %540 = extractvalue { i32, i1 } %539, 1, !nosanitize !45
  br i1 %540, label %541, label %542, !prof !46, !nosanitize !45

541:                                              ; preds = %536
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

542:                                              ; preds = %536
  %543 = extractvalue { i32, i1 } %539, 0, !nosanitize !45
  store i32 %543, ptr %7, align 4, !tbaa !73
  br i1 %531, label %544, label %.backedge

544:                                              ; preds = %542, %490
  %545 = phi i32 [ %491, %490 ], [ %543, %542 ]
  %546 = load i64, ptr %10, align 8, !tbaa !74
  %547 = icmp sgt i64 %546, -1
  br i1 %547, label %548, label %552

548:                                              ; preds = %544
  %549 = load ptr, ptr %8, align 8, !tbaa !34
  %550 = and i64 %546, 4294967295
  %551 = getelementptr inbounds nuw i8, ptr %549, i64 %550
  br label %552

552:                                              ; preds = %548, %544
  %553 = phi ptr [ %551, %548 ], [ null, %544 ]
  %554 = zext i32 %545 to i64
  %555 = sub nsw i64 %554, %546
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %553, i64 noundef %555, i32 noundef 0) #12
  %556 = load i32, ptr %7, align 4, !tbaa !73
  %557 = zext i32 %556 to i64
  store i64 %557, ptr %10, align 8, !tbaa !74
  %558 = load ptr, ptr %0, align 8, !tbaa !20
  %559 = getelementptr inbounds nuw i8, ptr %558, i64 56
  %560 = load ptr, ptr %559, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %560) #12
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 40
  %562 = load i64, ptr %561, align 8, !tbaa !57
  %563 = getelementptr inbounds nuw i8, ptr %558, i64 32
  %564 = load i32, ptr %563, align 8, !tbaa !107
  %565 = zext i32 %564 to i64
  %566 = tail call i64 @llvm.umin.i64(i64 %562, i64 %565)
  %567 = trunc nuw i64 %566 to i32
  %568 = icmp eq i64 %566, 0
  br i1 %568, label %601, label %569

569:                                              ; preds = %552
  %570 = getelementptr inbounds nuw i8, ptr %558, i64 24
  %571 = load ptr, ptr %570, align 8, !tbaa !106
  %572 = getelementptr inbounds nuw i8, ptr %560, i64 32
  %573 = load ptr, ptr %572, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %571, ptr align 1 %573, i64 %566, i1 false)
  %574 = load ptr, ptr %570, align 8, !tbaa !106
  %575 = getelementptr inbounds nuw i8, ptr %574, i64 %566
  store ptr %575, ptr %570, align 8, !tbaa !106
  %576 = load ptr, ptr %572, align 8, !tbaa !58
  %577 = getelementptr inbounds nuw i8, ptr %576, i64 %566
  store ptr %577, ptr %572, align 8, !tbaa !58
  %578 = getelementptr inbounds nuw i8, ptr %558, i64 40
  %579 = load i64, ptr %578, align 8, !tbaa !108
  %580 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %579, i64 %566), !nosanitize !45
  %581 = extractvalue { i64, i1 } %580, 1, !nosanitize !45
  br i1 %581, label %582, label %583, !prof !46, !nosanitize !45

582:                                              ; preds = %569
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

583:                                              ; preds = %569
  %584 = extractvalue { i64, i1 } %580, 0, !nosanitize !45
  store i64 %584, ptr %578, align 8, !tbaa !108
  %585 = load i32, ptr %563, align 8, !tbaa !107
  %586 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %585, i32 %567), !nosanitize !45
  %587 = extractvalue { i32, i1 } %586, 1, !nosanitize !45
  br i1 %587, label %588, label %589, !prof !46, !nosanitize !45

588:                                              ; preds = %583
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

589:                                              ; preds = %583
  %590 = extractvalue { i32, i1 } %586, 0, !nosanitize !45
  store i32 %590, ptr %563, align 8, !tbaa !107
  %591 = load i64, ptr %561, align 8, !tbaa !57
  %592 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %591, i64 %566), !nosanitize !45
  %593 = extractvalue { i64, i1 } %592, 1, !nosanitize !45
  br i1 %593, label %594, label %595, !prof !46, !nosanitize !45

594:                                              ; preds = %589
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

595:                                              ; preds = %589
  %596 = extractvalue { i64, i1 } %592, 0, !nosanitize !45
  store i64 %596, ptr %561, align 8, !tbaa !57
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %598, label %601

598:                                              ; preds = %595
  %599 = getelementptr inbounds nuw i8, ptr %560, i64 16
  %600 = load ptr, ptr %599, align 8, !tbaa !40
  store ptr %600, ptr %572, align 8, !tbaa !58
  br label %601

601:                                              ; preds = %598, %595, %552
  %602 = load ptr, ptr %0, align 8, !tbaa !20
  %603 = getelementptr inbounds nuw i8, ptr %602, i64 32
  %604 = load i32, ptr %603, align 8, !tbaa !107
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %.loopexit29, label %.backedge

.backedge:                                        ; preds = %601, %542, %490
  br label %28

606:                                              ; preds = %351
  store i32 0, ptr %11, align 4, !tbaa !76
  %607 = icmp eq i32 %1, 4
  br i1 %607, label %608, label %671

608:                                              ; preds = %606
  %609 = load i64, ptr %10, align 8, !tbaa !74
  %610 = icmp sgt i64 %609, -1
  br i1 %610, label %611, label %615

611:                                              ; preds = %608
  %612 = load ptr, ptr %8, align 8, !tbaa !34
  %613 = and i64 %609, 4294967295
  %614 = getelementptr inbounds nuw i8, ptr %612, i64 %613
  br label %615

615:                                              ; preds = %611, %608
  %616 = phi ptr [ %614, %611 ], [ null, %608 ]
  %617 = load i32, ptr %7, align 4, !tbaa !73
  %618 = zext i32 %617 to i64
  %619 = sub nsw i64 %618, %609
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %616, i64 noundef %619, i32 noundef 1) #12
  %620 = load i32, ptr %7, align 4, !tbaa !73
  %621 = zext i32 %620 to i64
  store i64 %621, ptr %10, align 8, !tbaa !74
  %622 = load ptr, ptr %0, align 8, !tbaa !20
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 56
  %624 = load ptr, ptr %623, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %624) #12
  %625 = getelementptr inbounds nuw i8, ptr %624, i64 40
  %626 = load i64, ptr %625, align 8, !tbaa !57
  %627 = getelementptr inbounds nuw i8, ptr %622, i64 32
  %628 = load i32, ptr %627, align 8, !tbaa !107
  %629 = zext i32 %628 to i64
  %630 = tail call i64 @llvm.umin.i64(i64 %626, i64 %629)
  %631 = trunc nuw i64 %630 to i32
  %632 = icmp eq i64 %630, 0
  br i1 %632, label %665, label %633

633:                                              ; preds = %615
  %634 = getelementptr inbounds nuw i8, ptr %622, i64 24
  %635 = load ptr, ptr %634, align 8, !tbaa !106
  %636 = getelementptr inbounds nuw i8, ptr %624, i64 32
  %637 = load ptr, ptr %636, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %635, ptr align 1 %637, i64 %630, i1 false)
  %638 = load ptr, ptr %634, align 8, !tbaa !106
  %639 = getelementptr inbounds nuw i8, ptr %638, i64 %630
  store ptr %639, ptr %634, align 8, !tbaa !106
  %640 = load ptr, ptr %636, align 8, !tbaa !58
  %641 = getelementptr inbounds nuw i8, ptr %640, i64 %630
  store ptr %641, ptr %636, align 8, !tbaa !58
  %642 = getelementptr inbounds nuw i8, ptr %622, i64 40
  %643 = load i64, ptr %642, align 8, !tbaa !108
  %644 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %643, i64 %630), !nosanitize !45
  %645 = extractvalue { i64, i1 } %644, 1, !nosanitize !45
  br i1 %645, label %646, label %647, !prof !46, !nosanitize !45

646:                                              ; preds = %633
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

647:                                              ; preds = %633
  %648 = extractvalue { i64, i1 } %644, 0, !nosanitize !45
  store i64 %648, ptr %642, align 8, !tbaa !108
  %649 = load i32, ptr %627, align 8, !tbaa !107
  %650 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %649, i32 %631), !nosanitize !45
  %651 = extractvalue { i32, i1 } %650, 1, !nosanitize !45
  br i1 %651, label %652, label %653, !prof !46, !nosanitize !45

652:                                              ; preds = %647
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

653:                                              ; preds = %647
  %654 = extractvalue { i32, i1 } %650, 0, !nosanitize !45
  store i32 %654, ptr %627, align 8, !tbaa !107
  %655 = load i64, ptr %625, align 8, !tbaa !57
  %656 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %655, i64 %630), !nosanitize !45
  %657 = extractvalue { i64, i1 } %656, 1, !nosanitize !45
  br i1 %657, label %658, label %659, !prof !46, !nosanitize !45

658:                                              ; preds = %653
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

659:                                              ; preds = %653
  %660 = extractvalue { i64, i1 } %656, 0, !nosanitize !45
  store i64 %660, ptr %625, align 8, !tbaa !57
  %661 = icmp eq i64 %660, 0
  br i1 %661, label %662, label %665

662:                                              ; preds = %659
  %663 = getelementptr inbounds nuw i8, ptr %624, i64 16
  %664 = load ptr, ptr %663, align 8, !tbaa !40
  store ptr %664, ptr %636, align 8, !tbaa !58
  br label %665

665:                                              ; preds = %662, %659, %615
  %666 = load ptr, ptr %0, align 8, !tbaa !20
  %667 = getelementptr inbounds nuw i8, ptr %666, i64 32
  %668 = load i32, ptr %667, align 8, !tbaa !107
  %669 = icmp eq i32 %668, 0
  %670 = select i1 %669, i32 2, i32 3
  br label %.loopexit29

671:                                              ; preds = %606
  %672 = load i32, ptr %23, align 4, !tbaa !139
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %736, label %674

674:                                              ; preds = %671
  %675 = load i64, ptr %10, align 8, !tbaa !74
  %676 = icmp sgt i64 %675, -1
  br i1 %676, label %677, label %681

677:                                              ; preds = %674
  %678 = load ptr, ptr %8, align 8, !tbaa !34
  %679 = and i64 %675, 4294967295
  %680 = getelementptr inbounds nuw i8, ptr %678, i64 %679
  br label %681

681:                                              ; preds = %677, %674
  %682 = phi ptr [ %680, %677 ], [ null, %674 ]
  %683 = load i32, ptr %7, align 4, !tbaa !73
  %684 = zext i32 %683 to i64
  %685 = sub nsw i64 %684, %675
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %682, i64 noundef %685, i32 noundef 0) #12
  %686 = load i32, ptr %7, align 4, !tbaa !73
  %687 = zext i32 %686 to i64
  store i64 %687, ptr %10, align 8, !tbaa !74
  %688 = load ptr, ptr %0, align 8, !tbaa !20
  %689 = getelementptr inbounds nuw i8, ptr %688, i64 56
  %690 = load ptr, ptr %689, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %690) #12
  %691 = getelementptr inbounds nuw i8, ptr %690, i64 40
  %692 = load i64, ptr %691, align 8, !tbaa !57
  %693 = getelementptr inbounds nuw i8, ptr %688, i64 32
  %694 = load i32, ptr %693, align 8, !tbaa !107
  %695 = zext i32 %694 to i64
  %696 = tail call i64 @llvm.umin.i64(i64 %692, i64 %695)
  %697 = trunc nuw i64 %696 to i32
  %698 = icmp eq i64 %696, 0
  br i1 %698, label %731, label %699

699:                                              ; preds = %681
  %700 = getelementptr inbounds nuw i8, ptr %688, i64 24
  %701 = load ptr, ptr %700, align 8, !tbaa !106
  %702 = getelementptr inbounds nuw i8, ptr %690, i64 32
  %703 = load ptr, ptr %702, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %701, ptr align 1 %703, i64 %696, i1 false)
  %704 = load ptr, ptr %700, align 8, !tbaa !106
  %705 = getelementptr inbounds nuw i8, ptr %704, i64 %696
  store ptr %705, ptr %700, align 8, !tbaa !106
  %706 = load ptr, ptr %702, align 8, !tbaa !58
  %707 = getelementptr inbounds nuw i8, ptr %706, i64 %696
  store ptr %707, ptr %702, align 8, !tbaa !58
  %708 = getelementptr inbounds nuw i8, ptr %688, i64 40
  %709 = load i64, ptr %708, align 8, !tbaa !108
  %710 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %709, i64 %696), !nosanitize !45
  %711 = extractvalue { i64, i1 } %710, 1, !nosanitize !45
  br i1 %711, label %712, label %713, !prof !46, !nosanitize !45

712:                                              ; preds = %699
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

713:                                              ; preds = %699
  %714 = extractvalue { i64, i1 } %710, 0, !nosanitize !45
  store i64 %714, ptr %708, align 8, !tbaa !108
  %715 = load i32, ptr %693, align 8, !tbaa !107
  %716 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %715, i32 %697), !nosanitize !45
  %717 = extractvalue { i32, i1 } %716, 1, !nosanitize !45
  br i1 %717, label %718, label %719, !prof !46, !nosanitize !45

718:                                              ; preds = %713
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

719:                                              ; preds = %713
  %720 = extractvalue { i32, i1 } %716, 0, !nosanitize !45
  store i32 %720, ptr %693, align 8, !tbaa !107
  %721 = load i64, ptr %691, align 8, !tbaa !57
  %722 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %721, i64 %696), !nosanitize !45
  %723 = extractvalue { i64, i1 } %722, 1, !nosanitize !45
  br i1 %723, label %724, label %725, !prof !46, !nosanitize !45

724:                                              ; preds = %719
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

725:                                              ; preds = %719
  %726 = extractvalue { i64, i1 } %722, 0, !nosanitize !45
  store i64 %726, ptr %691, align 8, !tbaa !57
  %727 = icmp eq i64 %726, 0
  br i1 %727, label %728, label %731

728:                                              ; preds = %725
  %729 = getelementptr inbounds nuw i8, ptr %690, i64 16
  %730 = load ptr, ptr %729, align 8, !tbaa !40
  store ptr %730, ptr %702, align 8, !tbaa !58
  br label %731

731:                                              ; preds = %728, %725, %681
  %732 = load ptr, ptr %0, align 8, !tbaa !20
  %733 = getelementptr inbounds nuw i8, ptr %732, i64 32
  %734 = load i32, ptr %733, align 8, !tbaa !107
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %.loopexit29, label %736

736:                                              ; preds = %731, %671
  br label %.loopexit29

.loopexit29:                                      ; preds = %601, %347, %736, %731, %665
  %737 = phi i32 [ 1, %736 ], [ %670, %665 ], [ 0, %731 ], [ 0, %347 ], [ 0, %601 ]
  ret i32 %737
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
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #12
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
  tail call void %71(ptr noundef %87, ptr noundef nonnull %84) #12, !inline_history !54
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
  tail call void %91(ptr noundef %97, ptr noundef nonnull %94) #12, !inline_history !54
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
  tail call void %101(ptr noundef %107, ptr noundef nonnull %104) #12, !inline_history !54
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
  tail call void %111(ptr noundef %117, ptr noundef nonnull %114) #12, !inline_history !54
  %118 = load ptr, ptr %70, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !19
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi ptr [ %119, %116 ], [ %112, %110 ]
  %122 = phi ptr [ %118, %116 ], [ %111, %110 ]
  %123 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %122(ptr noundef %123, ptr noundef %121) #12, !inline_history !54
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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

33:                                               ; preds = %.backedge, %2
  %34 = load i32, ptr %3, align 4, !tbaa !75
  %35 = icmp ult i32 %34, 262
  br i1 %35, label %36, label %358

36:                                               ; preds = %33
  %37 = load i32, ptr %4, align 8, !tbaa !32
  %38 = zext i32 %37 to i64
  br label %39

39:                                               ; preds = %305, %36
  %40 = phi i32 [ %233, %305 ], [ %34, %36 ]
  %41 = load i64, ptr %5, align 8, !tbaa !61
  %42 = zext nneg i32 %40 to i64
  %43 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %41, i64 %42), !nosanitize !45
  %44 = extractvalue { i64, i1 } %43, 1, !nosanitize !45
  br i1 %44, label %45, label %46, !prof !46, !nosanitize !45

45:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

46:                                               ; preds = %39
  %47 = extractvalue { i64, i1 } %43, 0, !nosanitize !45
  %48 = load i32, ptr %6, align 4, !tbaa !73
  %49 = zext i32 %48 to i64
  %50 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %47, i64 %49), !nosanitize !45
  %51 = extractvalue { i64, i1 } %50, 1, !nosanitize !45
  br i1 %51, label %52, label %53, !prof !46, !nosanitize !45

52:                                               ; preds = %46
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

53:                                               ; preds = %46
  %54 = extractvalue { i64, i1 } %50, 0, !nosanitize !45
  %55 = trunc i64 %54 to i32
  %56 = load i32, ptr %4, align 8, !tbaa !32
  %57 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %56, i32 262), !nosanitize !45
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !45
  br i1 %58, label %59, label %60, !prof !46, !nosanitize !45

59:                                               ; preds = %53
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

60:                                               ; preds = %53
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !45
  %62 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %37, i32 %61), !nosanitize !45
  %63 = extractvalue { i32, i1 } %62, 1, !nosanitize !45
  br i1 %63, label %64, label %65, !prof !46, !nosanitize !45

64:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

65:                                               ; preds = %60
  %66 = extractvalue { i32, i1 } %62, 0, !nosanitize !45
  %67 = icmp ult i32 %48, %66
  br i1 %67, label %184, label %68

68:                                               ; preds = %65
  %69 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %37, i32 %55), !nosanitize !45
  %70 = extractvalue { i32, i1 } %69, 1, !nosanitize !45
  br i1 %70, label %71, label %72, !prof !46, !nosanitize !45

71:                                               ; preds = %68
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

81:                                               ; preds = %72
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !45
  store i32 %82, ptr %8, align 8, !tbaa !83
  %83 = load i32, ptr %6, align 4, !tbaa !73
  %84 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %37), !nosanitize !45
  %85 = extractvalue { i32, i1 } %84, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  br i1 %100, label %124, label %101, !prof !46, !nosanitize !45

101:                                              ; preds = %94
  %102 = icmp ult i32 %96, 8
  br i1 %102, label %.preheader198, label %103

.preheader198:                                    ; preds = %118, %101
  %.ph199 = phi ptr [ %120, %118 ], [ %99, %101 ]
  %.ph200 = phi i32 [ %122, %118 ], [ %96, %101 ]
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
  br i1 %117, label %118, label %107, !llvm.loop !148

118:                                              ; preds = %107
  %119 = mul nsw i64 %104, -2
  %120 = getelementptr i8, ptr %99, i64 %119
  %121 = trunc nuw i64 %104 to i32
  %122 = sub i32 %96, %121
  %123 = icmp eq i64 %104, %98
  br i1 %123, label %.loopexit38, label %.preheader198

124:                                              ; preds = %94
  %125 = getelementptr inbounds i8, ptr %99, i64 -2
  %126 = load i16, ptr %125, align 2, !tbaa !62
  %127 = zext i16 %126 to i32
  %128 = tail call i32 @llvm.usub.sat.i32(i32 %127, i32 %95)
  %129 = trunc nuw i32 %128 to i16
  store i16 %129, ptr %125, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

130:                                              ; preds = %.preheader198, %130
  %131 = phi ptr [ %133, %130 ], [ %.ph199, %.preheader198 ]
  %132 = phi i32 [ %138, %130 ], [ %.ph200, %.preheader198 ]
  %133 = getelementptr inbounds i8, ptr %131, i64 -2
  %134 = load i16, ptr %133, align 2, !tbaa !62
  %135 = zext i16 %134 to i32
  %136 = tail call i32 @llvm.usub.sat.i32(i32 %135, i32 %95)
  %137 = trunc nuw i32 %136 to i16
  store i16 %137, ptr %133, align 2, !tbaa !62
  %138 = add i32 %132, -1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %.loopexit38, label %130, !llvm.loop !149

.loopexit38:                                      ; preds = %130, %118
  %140 = icmp eq i32 %95, 0
  br i1 %140, label %141, label %142, !prof !46, !nosanitize !45

141:                                              ; preds = %.loopexit38
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

142:                                              ; preds = %.loopexit38
  %143 = load ptr, ptr %13, align 8, !tbaa !35
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
  br i1 %161, label %162, label %151, !llvm.loop !150

162:                                              ; preds = %151
  %163 = mul nsw i64 %148, -2
  %164 = getelementptr i8, ptr %145, i64 %163
  %165 = trunc nuw i64 %148 to i32
  %166 = sub i32 %95, %165
  %167 = icmp eq i64 %148, %144
  br i1 %167, label %.loopexit37, label %.preheader

.preheader:                                       ; preds = %162, %142
  %.ph = phi ptr [ %164, %162 ], [ %145, %142 ]
  %.ph197 = phi i32 [ %166, %162 ], [ %95, %142 ]
  br label %168

168:                                              ; preds = %.preheader, %168
  %169 = phi ptr [ %171, %168 ], [ %.ph, %.preheader ]
  %170 = phi i32 [ %176, %168 ], [ %.ph197, %.preheader ]
  %171 = getelementptr inbounds i8, ptr %169, i64 -2
  %172 = load i16, ptr %171, align 2, !tbaa !62
  %173 = zext i16 %172 to i32
  %174 = tail call i32 @llvm.usub.sat.i32(i32 %173, i32 %95)
  %175 = trunc nuw i32 %174 to i16
  store i16 %175, ptr %171, align 2, !tbaa !62
  %176 = add i32 %170, -1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %.loopexit37, label %168, !llvm.loop !151

.loopexit37:                                      ; preds = %168, %162
  store i32 1, ptr %14, align 8, !tbaa !63
  %178 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %55, i32 %37), !nosanitize !45
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !45
  br i1 %179, label %180, label %181, !prof !46, !nosanitize !45

180:                                              ; preds = %.loopexit37
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

181:                                              ; preds = %.loopexit37
  %182 = extractvalue { i32, i1 } %178, 0, !nosanitize !45
  %183 = load i32, ptr %3, align 4, !tbaa !75
  br label %184

184:                                              ; preds = %181, %65
  %185 = phi i32 [ %183, %181 ], [ %40, %65 ]
  %186 = phi i32 [ %88, %181 ], [ %48, %65 ]
  %187 = phi i32 [ %182, %181 ], [ %55, %65 ]
  %188 = load ptr, ptr %0, align 8, !tbaa !20
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 8
  %190 = load i32, ptr %189, align 8, !tbaa !81
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %310, label %192

192:                                              ; preds = %184
  %193 = load ptr, ptr %7, align 8, !tbaa !34
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
  %211 = tail call i64 @adler32(i64 noundef %210, ptr noundef %197, i32 noundef %198) #12
  store i64 %211, ptr %209, align 8, !tbaa !59
  br label %216

212:                                              ; preds = %200
  %213 = getelementptr inbounds nuw i8, ptr %188, i64 96
  %214 = load i64, ptr %213, align 8, !tbaa !59
  %215 = tail call i64 @crc32(i64 noundef %214, ptr noundef %197, i32 noundef %198) #12
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

232:                                              ; preds = %227
  %233 = extractvalue { i32, i1 } %229, 0, !nosanitize !45
  store i32 %233, ptr %3, align 4, !tbaa !75
  %234 = load i32, ptr %10, align 4, !tbaa !76
  %235 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %233, i32 %234), !nosanitize !45
  %236 = extractvalue { i32, i1 } %235, 1, !nosanitize !45
  br i1 %236, label %237, label %238, !prof !46, !nosanitize !45

237:                                              ; preds = %232
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

238:                                              ; preds = %232
  %239 = extractvalue { i32, i1 } %235, 0, !nosanitize !45
  %240 = icmp ugt i32 %239, 2
  br i1 %240, label %241, label %.loopexit

241:                                              ; preds = %238
  %242 = load i32, ptr %6, align 4, !tbaa !73
  %243 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %242, i32 %234), !nosanitize !45
  %244 = extractvalue { i32, i1 } %243, 0, !nosanitize !45
  %245 = extractvalue { i32, i1 } %243, 1, !nosanitize !45
  br i1 %245, label %246, label %247, !prof !46, !nosanitize !45

246:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

247:                                              ; preds = %241
  %248 = load ptr, ptr %7, align 8, !tbaa !34
  %249 = zext i32 %244 to i64
  %250 = getelementptr inbounds nuw i8, ptr %248, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !8
  %252 = zext i8 %251 to i32
  store i32 %252, ptr %15, align 8, !tbaa !80
  %253 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %244, i32 1), !nosanitize !45
  %254 = extractvalue { i32, i1 } %253, 1, !nosanitize !45
  br i1 %254, label %255, label %256, !prof !46, !nosanitize !45

255:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

256:                                              ; preds = %247
  %257 = extractvalue { i32, i1 } %253, 0, !nosanitize !45
  %258 = load i32, ptr %16, align 8, !tbaa !53
  %259 = shl i32 %252, %258
  %260 = zext i32 %257 to i64
  %261 = getelementptr inbounds nuw i8, ptr %248, i64 %260
  %262 = load i8, ptr %261, align 1, !tbaa !8
  %263 = zext i8 %262 to i32
  %264 = xor i32 %259, %263
  %265 = load i32, ptr %17, align 4, !tbaa !52
  %266 = and i32 %264, %265
  store i32 %266, ptr %15, align 8, !tbaa !80
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  store i32 %285, ptr %15, align 8, !tbaa !80
  %286 = load ptr, ptr %12, align 8, !tbaa !37
  %287 = zext i32 %285 to i64
  %288 = getelementptr inbounds nuw [2 x i8], ptr %286, i64 %287
  %289 = load i16, ptr %288, align 2, !tbaa !62
  %290 = load ptr, ptr %13, align 8, !tbaa !35
  %291 = load i32, ptr %18, align 8, !tbaa !33
  %292 = and i32 %291, %270
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds nuw [2 x i8], ptr %290, i64 %293
  store i16 %289, ptr %294, align 2, !tbaa !62
  %295 = trunc i32 %270 to i16
  store i16 %295, ptr %288, align 2, !tbaa !62
  %296 = add i32 %269, -1
  store i32 %296, ptr %10, align 4, !tbaa !76
  %297 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %233, i32 %296), !nosanitize !45
  %298 = extractvalue { i32, i1 } %297, 1, !nosanitize !45
  br i1 %298, label %299, label %300, !prof !46, !nosanitize !45

299:                                              ; preds = %276
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  br i1 %309, label %310, label %39, !llvm.loop !92

310:                                              ; preds = %305, %.loopexit, %184
  %311 = phi i32 [ %233, %305 ], [ %233, %.loopexit ], [ %185, %184 ]
  %312 = load i64, ptr %19, align 8, !tbaa !38
  %313 = load i64, ptr %5, align 8, !tbaa !61
  %314 = icmp ult i64 %312, %313
  br i1 %314, label %315, label %350

315:                                              ; preds = %310
  %316 = load i32, ptr %6, align 4, !tbaa !73
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

325:                                              ; preds = %321
  %326 = extractvalue { i64, i1 } %322, 0, !nosanitize !45
  %327 = tail call i64 @llvm.umin.i64(i64 %326, i64 258)
  %328 = load ptr, ptr %7, align 8, !tbaa !34
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
  %338 = load ptr, ptr %7, align 8, !tbaa !34
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 %312
  %340 = and i64 %337, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %339, i8 0, i64 %340, i1 false)
  %341 = load i64, ptr %19, align 8, !tbaa !38
  %342 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %341, i64 %337), !nosanitize !45
  %343 = extractvalue { i64, i1 } %342, 1, !nosanitize !45
  br i1 %343, label %344, label %345, !prof !46, !nosanitize !45

344:                                              ; preds = %334
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

345:                                              ; preds = %334
  %346 = extractvalue { i64, i1 } %342, 0, !nosanitize !45
  br label %347

347:                                              ; preds = %345, %325
  %348 = phi i64 [ %330, %325 ], [ %346, %345 ]
  store i64 %348, ptr %19, align 8, !tbaa !38
  %349 = load i32, ptr %3, align 4, !tbaa !75
  br label %350

350:                                              ; preds = %347, %331, %310
  %351 = phi i32 [ %311, %310 ], [ %311, %331 ], [ %349, %347 ]
  %352 = icmp ult i32 %351, 262
  %353 = and i1 %20, %352
  br i1 %353, label %.loopexit39, label %354

354:                                              ; preds = %350
  %355 = icmp eq i32 %351, 0
  br i1 %355, label %837, label %356

356:                                              ; preds = %354
  %357 = icmp ugt i32 %351, 2
  br i1 %357, label %358, label %548

358:                                              ; preds = %356, %33
  %359 = phi i32 [ %351, %356 ], [ %34, %33 ]
  %360 = load i32, ptr %6, align 4, !tbaa !73
  %361 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %360, i32 2), !nosanitize !45
  %362 = extractvalue { i32, i1 } %361, 1, !nosanitize !45
  br i1 %362, label %363, label %364, !prof !46, !nosanitize !45

363:                                              ; preds = %358
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

364:                                              ; preds = %358
  %365 = extractvalue { i32, i1 } %361, 0, !nosanitize !45
  %366 = load ptr, ptr %7, align 8, !tbaa !34
  %367 = load i32, ptr %15, align 8, !tbaa !80
  %368 = load i32, ptr %16, align 8, !tbaa !53
  %369 = shl i32 %367, %368
  %370 = zext i32 %365 to i64
  %371 = getelementptr inbounds nuw i8, ptr %366, i64 %370
  %372 = load i8, ptr %371, align 1, !tbaa !8
  %373 = zext i8 %372 to i32
  %374 = xor i32 %369, %373
  %375 = load i32, ptr %17, align 4, !tbaa !52
  %376 = and i32 %374, %375
  store i32 %376, ptr %15, align 8, !tbaa !80
  %377 = load ptr, ptr %12, align 8, !tbaa !37
  %378 = zext i32 %376 to i64
  %379 = getelementptr inbounds nuw [2 x i8], ptr %377, i64 %378
  %380 = load i16, ptr %379, align 2, !tbaa !62
  %381 = load ptr, ptr %13, align 8, !tbaa !35
  %382 = load i32, ptr %18, align 8, !tbaa !33
  %383 = and i32 %382, %360
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds nuw [2 x i8], ptr %381, i64 %384
  store i16 %380, ptr %385, align 2, !tbaa !62
  %386 = zext i16 %380 to i32
  %387 = trunc i32 %360 to i16
  store i16 %387, ptr %379, align 2, !tbaa !62
  %388 = icmp eq i16 %380, 0
  br i1 %388, label %548, label %389

389:                                              ; preds = %364
  %390 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %360, i32 %386), !nosanitize !45
  %391 = extractvalue { i32, i1 } %390, 0, !nosanitize !45
  %392 = extractvalue { i32, i1 } %390, 1, !nosanitize !45
  br i1 %392, label %393, label %394, !prof !46, !nosanitize !45

393:                                              ; preds = %389
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

394:                                              ; preds = %389
  %395 = load i32, ptr %4, align 8, !tbaa !32
  %396 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %395, i32 262), !nosanitize !45
  %397 = extractvalue { i32, i1 } %396, 1, !nosanitize !45
  br i1 %397, label %398, label %399, !prof !46, !nosanitize !45

398:                                              ; preds = %394
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

399:                                              ; preds = %394
  %400 = extractvalue { i32, i1 } %396, 0, !nosanitize !45
  %401 = icmp ugt i32 %391, %400
  br i1 %401, label %548, label %402

402:                                              ; preds = %399
  %403 = zext i32 %360 to i64
  %404 = getelementptr inbounds nuw i8, ptr %366, i64 %403
  %405 = load i32, ptr %21, align 8, !tbaa !70
  %406 = load i32, ptr %22, align 8, !tbaa !77
  %407 = load i32, ptr %23, align 4, !tbaa !72
  %408 = tail call i32 @llvm.usub.sat.i32(i32 %360, i32 %400)
  %409 = getelementptr inbounds nuw i8, ptr %404, i64 258
  %410 = sext i32 %406 to i64
  %411 = getelementptr i8, ptr %404, i64 %410
  %412 = getelementptr i8, ptr %411, i64 -1
  %413 = load i8, ptr %412, align 1, !tbaa !8
  %414 = load i8, ptr %411, align 1, !tbaa !8
  %415 = load i32, ptr %24, align 4, !tbaa !68
  %416 = icmp ult i32 %406, %415
  %417 = lshr i32 %407, 2
  %418 = select i1 %416, i32 %407, i32 %417
  %419 = tail call i32 @llvm.umin.i32(i32 %405, i32 %359)
  %420 = getelementptr inbounds nuw i8, ptr %404, i64 1
  %421 = ptrtoint ptr %409 to i64
  br label %422

422:                                              ; preds = %542, %402
  %423 = phi i32 [ %406, %402 ], [ %529, %542 ]
  %424 = phi i32 [ %418, %402 ], [ %543, %542 ]
  %425 = phi i32 [ %386, %402 ], [ %536, %542 ]
  %426 = phi i8 [ %413, %402 ], [ %530, %542 ]
  %427 = phi i8 [ %414, %402 ], [ %531, %542 ]
  %428 = zext nneg i32 %425 to i64
  %429 = getelementptr inbounds nuw i8, ptr %366, i64 %428
  %430 = sext i32 %423 to i64
  %431 = getelementptr inbounds i8, ptr %429, i64 %430
  %432 = load i8, ptr %431, align 1, !tbaa !8
  %433 = icmp eq i8 %432, %427
  br i1 %433, label %434, label %528

434:                                              ; preds = %422
  %435 = getelementptr i8, ptr %431, i64 -1
  %436 = load i8, ptr %435, align 1, !tbaa !8
  %437 = icmp eq i8 %436, %426
  br i1 %437, label %438, label %528

438:                                              ; preds = %434
  %439 = load i8, ptr %429, align 1, !tbaa !8
  %440 = load i8, ptr %404, align 1, !tbaa !8
  %441 = icmp eq i8 %439, %440
  br i1 %441, label %442, label %528

442:                                              ; preds = %438
  %443 = getelementptr inbounds nuw i8, ptr %429, i64 1
  %444 = load i8, ptr %443, align 1, !tbaa !8
  %445 = load i8, ptr %420, align 1, !tbaa !8
  %446 = icmp eq i8 %444, %445
  br i1 %446, label %447, label %528

447:                                              ; preds = %442
  %448 = getelementptr inbounds nuw i8, ptr %429, i64 2
  br label %449

449:                                              ; preds = %494, %447
  %450 = phi ptr [ %448, %447 ], [ %498, %494 ]
  %451 = phi i64 [ 2, %447 ], [ %495, %494 ]
  %452 = getelementptr inbounds nuw i8, ptr %404, i64 %451
  %453 = getelementptr inbounds nuw i8, ptr %452, i64 1
  %454 = load i8, ptr %453, align 1, !tbaa !8
  %455 = getelementptr inbounds nuw i8, ptr %450, i64 1
  %456 = load i8, ptr %455, align 1, !tbaa !8
  %457 = icmp eq i8 %454, %456
  br i1 %457, label %458, label %.split.loop.exit.split.loop.exit

458:                                              ; preds = %449
  %459 = getelementptr inbounds nuw i8, ptr %452, i64 2
  %460 = load i8, ptr %459, align 1, !tbaa !8
  %461 = getelementptr inbounds nuw i8, ptr %450, i64 2
  %462 = load i8, ptr %461, align 1, !tbaa !8
  %463 = icmp eq i8 %460, %462
  br i1 %463, label %464, label %.split.loop.exit.split.loop.exit157

464:                                              ; preds = %458
  %465 = getelementptr inbounds nuw i8, ptr %452, i64 3
  %466 = load i8, ptr %465, align 1, !tbaa !8
  %467 = getelementptr inbounds nuw i8, ptr %450, i64 3
  %468 = load i8, ptr %467, align 1, !tbaa !8
  %469 = icmp eq i8 %466, %468
  br i1 %469, label %470, label %.split.loop.exit.split.loop.exit159

470:                                              ; preds = %464
  %471 = getelementptr inbounds nuw i8, ptr %452, i64 4
  %472 = load i8, ptr %471, align 1, !tbaa !8
  %473 = getelementptr inbounds nuw i8, ptr %450, i64 4
  %474 = load i8, ptr %473, align 1, !tbaa !8
  %475 = icmp eq i8 %472, %474
  br i1 %475, label %476, label %.split.loop.exit.split.loop.exit161

476:                                              ; preds = %470
  %477 = getelementptr inbounds nuw i8, ptr %452, i64 5
  %478 = load i8, ptr %477, align 1, !tbaa !8
  %479 = getelementptr inbounds nuw i8, ptr %450, i64 5
  %480 = load i8, ptr %479, align 1, !tbaa !8
  %481 = icmp eq i8 %478, %480
  br i1 %481, label %482, label %.split.loop.exit.split.loop.exit163

482:                                              ; preds = %476
  %483 = getelementptr inbounds nuw i8, ptr %452, i64 6
  %484 = load i8, ptr %483, align 1, !tbaa !8
  %485 = getelementptr inbounds nuw i8, ptr %450, i64 6
  %486 = load i8, ptr %485, align 1, !tbaa !8
  %487 = icmp eq i8 %484, %486
  br i1 %487, label %488, label %.split.loop.exit.split.loop.exit165

488:                                              ; preds = %482
  %489 = getelementptr inbounds nuw i8, ptr %452, i64 7
  %490 = load i8, ptr %489, align 1, !tbaa !8
  %491 = getelementptr inbounds nuw i8, ptr %450, i64 7
  %492 = load i8, ptr %491, align 1, !tbaa !8
  %493 = icmp eq i8 %490, %492
  br i1 %493, label %494, label %.split.loop.exit.split.loop.exit167

494:                                              ; preds = %488
  %495 = add nuw nsw i64 %451, 8
  %496 = getelementptr inbounds nuw i8, ptr %404, i64 %495
  %497 = load i8, ptr %496, align 1, !tbaa !8
  %498 = getelementptr inbounds nuw i8, ptr %450, i64 8
  %499 = load i8, ptr %498, align 1, !tbaa !8
  %500 = icmp eq i8 %497, %499
  %501 = icmp samesign ult i64 %451, 250
  %502 = select i1 %500, i1 %501, i1 false
  br i1 %502, label %449, label %.split.loop.exit.split.loop.exit169, !llvm.loop !152

.split.loop.exit.split.loop.exit:                 ; preds = %449
  %503 = getelementptr inbounds nuw i8, ptr %452, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit157:              ; preds = %458
  %504 = getelementptr inbounds nuw i8, ptr %452, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit159:              ; preds = %464
  %505 = getelementptr inbounds nuw i8, ptr %452, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit161:              ; preds = %470
  %506 = getelementptr inbounds nuw i8, ptr %452, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit163:              ; preds = %476
  %507 = getelementptr inbounds nuw i8, ptr %452, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit165:              ; preds = %482
  %508 = getelementptr inbounds nuw i8, ptr %452, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit167:              ; preds = %488
  %509 = getelementptr inbounds nuw i8, ptr %452, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit169:              ; preds = %494
  %510 = getelementptr inbounds nuw i8, ptr %404, i64 %495
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit169, %.split.loop.exit.split.loop.exit167, %.split.loop.exit.split.loop.exit165, %.split.loop.exit.split.loop.exit163, %.split.loop.exit.split.loop.exit161, %.split.loop.exit.split.loop.exit159, %.split.loop.exit.split.loop.exit157, %.split.loop.exit.split.loop.exit
  %511 = phi ptr [ %504, %.split.loop.exit.split.loop.exit157 ], [ %505, %.split.loop.exit.split.loop.exit159 ], [ %503, %.split.loop.exit.split.loop.exit ], [ %509, %.split.loop.exit.split.loop.exit167 ], [ %508, %.split.loop.exit.split.loop.exit165 ], [ %507, %.split.loop.exit.split.loop.exit163 ], [ %506, %.split.loop.exit.split.loop.exit161 ], [ %510, %.split.loop.exit.split.loop.exit169 ]
  %512 = ptrtoint ptr %511 to i64
  %513 = sub i64 %512, %421
  %514 = trunc i64 %513 to i32
  %515 = add i32 %514, 258
  %516 = icmp sgt i32 %515, %423
  br i1 %516, label %517, label %528

517:                                              ; preds = %.split.loop.exit
  store i32 %425, ptr %8, align 8, !tbaa !83
  %518 = icmp slt i32 %515, %419
  br i1 %518, label %519, label %545

519:                                              ; preds = %517
  %520 = shl i64 %513, 32
  %521 = add i64 %520, 1103806595072
  %522 = ashr exact i64 %521, 32
  %523 = getelementptr inbounds i8, ptr %404, i64 %522
  %524 = load i8, ptr %523, align 1, !tbaa !8
  %525 = sext i32 %515 to i64
  %526 = getelementptr inbounds i8, ptr %404, i64 %525
  %527 = load i8, ptr %526, align 1, !tbaa !8
  br label %528

528:                                              ; preds = %519, %.split.loop.exit, %442, %438, %434, %422
  %529 = phi i32 [ %423, %422 ], [ %423, %434 ], [ %423, %438 ], [ %423, %442 ], [ %515, %519 ], [ %423, %.split.loop.exit ]
  %530 = phi i8 [ %426, %422 ], [ %426, %434 ], [ %426, %438 ], [ %426, %442 ], [ %524, %519 ], [ %426, %.split.loop.exit ]
  %531 = phi i8 [ %427, %422 ], [ %427, %434 ], [ %427, %438 ], [ %427, %442 ], [ %527, %519 ], [ %427, %.split.loop.exit ]
  %532 = and i32 %425, %382
  %533 = zext nneg i32 %532 to i64
  %534 = getelementptr inbounds nuw [2 x i8], ptr %381, i64 %533
  %535 = load i16, ptr %534, align 2, !tbaa !62
  %536 = zext i16 %535 to i32
  %537 = icmp ult i32 %408, %536
  br i1 %537, label %538, label %545

538:                                              ; preds = %528
  %539 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %424, i32 1), !nosanitize !45
  %540 = extractvalue { i32, i1 } %539, 1, !nosanitize !45
  br i1 %540, label %541, label %542, !prof !46, !nosanitize !45

541:                                              ; preds = %538
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

542:                                              ; preds = %538
  %543 = extractvalue { i32, i1 } %539, 0, !nosanitize !45
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %422, !llvm.loop !153

545:                                              ; preds = %542, %528, %517
  %546 = phi i32 [ %529, %542 ], [ %529, %528 ], [ %515, %517 ]
  %547 = tail call i32 @llvm.umin.i32(i32 %546, i32 %359)
  store i32 %547, ptr %25, align 8, !tbaa !78
  br label %550

548:                                              ; preds = %399, %364, %356
  %549 = load i32, ptr %25, align 8, !tbaa !78
  br label %550

550:                                              ; preds = %548, %545
  %551 = phi i32 [ %549, %548 ], [ %547, %545 ]
  %552 = icmp ugt i32 %551, 2
  br i1 %552, label %553, label %712

553:                                              ; preds = %550
  %554 = trunc i32 %551 to i8
  %555 = add i8 %554, -3
  %556 = load i32, ptr %6, align 4, !tbaa !73
  %557 = load i32, ptr %8, align 8, !tbaa !83
  %558 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %556, i32 %557), !nosanitize !45
  %559 = extractvalue { i32, i1 } %558, 1, !nosanitize !45
  br i1 %559, label %560, label %561, !prof !46, !nosanitize !45

560:                                              ; preds = %553
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

561:                                              ; preds = %553
  %562 = extractvalue { i32, i1 } %558, 0, !nosanitize !45
  %563 = trunc i32 %562 to i16
  %564 = load i32, ptr %27, align 4, !tbaa !139
  %565 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %564, i32 1), !nosanitize !45
  %566 = extractvalue { i32, i1 } %565, 1, !nosanitize !45
  br i1 %566, label %567, label %568, !prof !46, !nosanitize !45

567:                                              ; preds = %561
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

568:                                              ; preds = %561
  %569 = extractvalue { i32, i1 } %565, 0, !nosanitize !45
  %570 = load ptr, ptr %26, align 8, !tbaa !44
  %571 = trunc i32 %562 to i8
  store i32 %569, ptr %27, align 4, !tbaa !139
  %572 = zext i32 %564 to i64
  %573 = getelementptr inbounds nuw i8, ptr %570, i64 %572
  store i8 %571, ptr %573, align 1, !tbaa !8
  %574 = load i32, ptr %27, align 4, !tbaa !139
  %575 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %574, i32 1), !nosanitize !45
  %576 = extractvalue { i32, i1 } %575, 1, !nosanitize !45
  br i1 %576, label %577, label %578, !prof !46, !nosanitize !45

577:                                              ; preds = %568
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

578:                                              ; preds = %568
  %579 = extractvalue { i32, i1 } %575, 0, !nosanitize !45
  %580 = load ptr, ptr %26, align 8, !tbaa !44
  %581 = lshr i32 %562, 8
  %582 = trunc i32 %581 to i8
  store i32 %579, ptr %27, align 4, !tbaa !139
  %583 = zext i32 %574 to i64
  %584 = getelementptr inbounds nuw i8, ptr %580, i64 %583
  store i8 %582, ptr %584, align 1, !tbaa !8
  %585 = load i32, ptr %27, align 4, !tbaa !139
  %586 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %585, i32 1), !nosanitize !45
  %587 = extractvalue { i32, i1 } %586, 1, !nosanitize !45
  br i1 %587, label %588, label %589, !prof !46, !nosanitize !45

588:                                              ; preds = %578
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

589:                                              ; preds = %578
  %590 = extractvalue { i32, i1 } %586, 0, !nosanitize !45
  %591 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %590, ptr %27, align 4, !tbaa !139
  %592 = zext i32 %585 to i64
  %593 = getelementptr inbounds nuw i8, ptr %591, i64 %592
  store i8 %555, ptr %593, align 1, !tbaa !8
  %594 = add i16 %563, -1
  %595 = zext i8 %555 to i64
  %596 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %595
  %597 = load i8, ptr %596, align 1, !tbaa !8
  %598 = zext i8 %597 to i64
  %599 = getelementptr [4 x i8], ptr %30, i64 %598
  %600 = load i16, ptr %599, align 4, !tbaa !8
  %601 = add i16 %600, 1
  store i16 %601, ptr %599, align 4, !tbaa !8
  %602 = icmp ult i16 %594, 256
  br i1 %602, label %603, label %606

603:                                              ; preds = %589
  %604 = zext nneg i16 %594 to i64
  %605 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %604
  br label %611

606:                                              ; preds = %589
  %607 = lshr i16 %594, 7
  %608 = zext nneg i16 %607 to i64
  %609 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %608
  %610 = getelementptr inbounds nuw i8, ptr %609, i64 256
  br label %611

611:                                              ; preds = %606, %603
  %612 = phi ptr [ %605, %603 ], [ %610, %606 ]
  %613 = load i8, ptr %612, align 1, !tbaa !8
  %614 = zext i8 %613 to i64
  %615 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %614
  %616 = load i16, ptr %615, align 4, !tbaa !8
  %617 = add i16 %616, 1
  store i16 %617, ptr %615, align 4, !tbaa !8
  %618 = load i32, ptr %27, align 4, !tbaa !139
  %619 = load i32, ptr %29, align 8, !tbaa !47
  %620 = icmp eq i32 %618, %619
  %621 = load i32, ptr %25, align 8, !tbaa !78
  %622 = load i32, ptr %3, align 4, !tbaa !75
  %623 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %622, i32 %621), !nosanitize !45
  %624 = extractvalue { i32, i1 } %623, 1, !nosanitize !45
  br i1 %624, label %625, label %626, !prof !46, !nosanitize !45

625:                                              ; preds = %611
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

626:                                              ; preds = %611
  %627 = extractvalue { i32, i1 } %623, 0, !nosanitize !45
  store i32 %627, ptr %3, align 4, !tbaa !75
  %628 = load i32, ptr %32, align 8, !tbaa !66
  %629 = icmp ule i32 %621, %628
  %630 = icmp ugt i32 %627, 2
  %631 = select i1 %629, i1 %630, i1 false
  br i1 %631, label %632, label %697

632:                                              ; preds = %626
  %633 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %621, i32 1), !nosanitize !45
  %634 = extractvalue { i32, i1 } %633, 1, !nosanitize !45
  br i1 %634, label %635, label %636, !prof !46, !nosanitize !45

635:                                              ; preds = %632
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

636:                                              ; preds = %632
  %637 = extractvalue { i32, i1 } %633, 0, !nosanitize !45
  store i32 %637, ptr %25, align 8, !tbaa !78
  %638 = load i32, ptr %6, align 4, !tbaa !73
  %639 = xor i32 %638, -1
  %640 = add i32 %621, -2
  %umin = tail call i32 @llvm.umin.i32(i32 %637, i32 %640)
  %641 = freeze i32 %umin
  %642 = add i32 %638, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %642, i32 -2)
  %643 = xor i32 %638, -1
  %644 = add i32 %umax, %643
  %umin87 = tail call i32 @llvm.umin.i32(i32 %644, i32 %639)
  %umin88 = tail call i32 @llvm.umin.i32(i32 %641, i32 %umin87)
  %645 = icmp eq i32 %umin88, %639
  %646 = icmp eq i32 %637, %umin88
  br i1 %645, label %694, label %.split, !prof !46, !nosanitize !45

.split:                                           ; preds = %636
  %647 = icmp eq i32 %644, %umin88
  br i1 %647, label %.split.split.us, label %.split.split, !prof !46, !nosanitize !45

.split.split.us:                                  ; preds = %.split
  %648 = add i32 %638, 1
  store i32 %648, ptr %6, align 4, !tbaa !73
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

.split.split:                                     ; preds = %.split
  br i1 %646, label %.split.split.split.us, label %.split.split.split, !prof !46, !nosanitize !45

.split.split.split.us:                            ; preds = %.split.split
  %649 = add i32 %638, 1
  store i32 %649, ptr %6, align 4, !tbaa !73
  %650 = add i32 %638, 3
  %651 = load ptr, ptr %7, align 8, !tbaa !34
  %652 = load i32, ptr %15, align 8, !tbaa !80
  %653 = load i32, ptr %16, align 8, !tbaa !53
  %654 = shl i32 %652, %653
  %655 = zext i32 %650 to i64
  %656 = getelementptr inbounds nuw i8, ptr %651, i64 %655
  %657 = load i8, ptr %656, align 1, !tbaa !8
  %658 = zext i8 %657 to i32
  %659 = xor i32 %654, %658
  %660 = load i32, ptr %17, align 4, !tbaa !52
  %661 = and i32 %659, %660
  store i32 %661, ptr %15, align 8, !tbaa !80
  %662 = load ptr, ptr %12, align 8, !tbaa !37
  %663 = zext i32 %661 to i64
  %664 = getelementptr inbounds nuw [2 x i8], ptr %662, i64 %663
  %665 = load i16, ptr %664, align 2, !tbaa !62
  %666 = load ptr, ptr %13, align 8, !tbaa !35
  %667 = load i32, ptr %18, align 8, !tbaa !33
  %668 = and i32 %667, %649
  %669 = zext i32 %668 to i64
  %670 = getelementptr inbounds nuw [2 x i8], ptr %666, i64 %669
  store i16 %665, ptr %670, align 2, !tbaa !62
  %671 = trunc i32 %649 to i16
  store i16 %671, ptr %664, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

.split.split.split:                               ; preds = %.split.split
  %.pre = load ptr, ptr %7, align 8, !tbaa !34
  %.pre105 = load i32, ptr %15, align 8, !tbaa !80
  %.pre106 = load i32, ptr %16, align 8, !tbaa !53
  %.pre107 = load i32, ptr %17, align 4, !tbaa !52
  %.pre108 = load ptr, ptr %12, align 8, !tbaa !37
  %.pre109 = load ptr, ptr %13, align 8, !tbaa !35
  %.pre110 = load i32, ptr %18, align 8, !tbaa !33
  br label %672

672:                                              ; preds = %672, %.split.split.split
  %673 = phi i32 [ %684, %672 ], [ %.pre105, %.split.split.split ]
  %674 = phi i32 [ %692, %672 ], [ %637, %.split.split.split ]
  %675 = phi i32 [ %676, %672 ], [ %638, %.split.split.split ]
  %676 = add i32 %675, 1
  store i32 %676, ptr %6, align 4, !tbaa !73
  %677 = add i32 %675, 3
  %678 = shl i32 %673, %.pre106
  %679 = zext i32 %677 to i64
  %680 = getelementptr inbounds nuw i8, ptr %.pre, i64 %679
  %681 = load i8, ptr %680, align 1, !tbaa !8
  %682 = zext i8 %681 to i32
  %683 = xor i32 %678, %682
  %684 = and i32 %683, %.pre107
  store i32 %684, ptr %15, align 8, !tbaa !80
  %685 = zext i32 %684 to i64
  %686 = getelementptr inbounds nuw [2 x i8], ptr %.pre108, i64 %685
  %687 = load i16, ptr %686, align 2, !tbaa !62
  %688 = and i32 %.pre110, %676
  %689 = zext i32 %688 to i64
  %690 = getelementptr inbounds nuw [2 x i8], ptr %.pre109, i64 %689
  store i16 %687, ptr %690, align 2, !tbaa !62
  %691 = trunc i32 %676 to i16
  store i16 %691, ptr %686, align 2, !tbaa !62
  %692 = add i32 %674, -1
  store i32 %692, ptr %25, align 8, !tbaa !78
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %695, label %672, !llvm.loop !154

694:                                              ; preds = %636
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

695:                                              ; preds = %672
  %696 = add i32 %675, 2
  store i32 %696, ptr %6, align 4, !tbaa !73
  br i1 %620, label %775, label %.backedge

697:                                              ; preds = %626
  %698 = load i32, ptr %6, align 4, !tbaa !73
  %699 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %698, i32 %621), !nosanitize !45
  %700 = extractvalue { i32, i1 } %699, 1, !nosanitize !45
  br i1 %700, label %701, label %702, !prof !46, !nosanitize !45

701:                                              ; preds = %697
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

702:                                              ; preds = %697
  %703 = extractvalue { i32, i1 } %699, 0, !nosanitize !45
  store i32 %703, ptr %6, align 4, !tbaa !73
  store i32 0, ptr %25, align 8, !tbaa !78
  %704 = load ptr, ptr %7, align 8, !tbaa !34
  %705 = zext i32 %703 to i64
  %706 = getelementptr inbounds nuw i8, ptr %704, i64 %705
  %707 = load i8, ptr %706, align 1, !tbaa !8
  %708 = zext i8 %707 to i32
  store i32 %708, ptr %15, align 8, !tbaa !80
  %709 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %703, i32 1), !nosanitize !45
  %710 = extractvalue { i32, i1 } %709, 1, !nosanitize !45
  br i1 %710, label %711, label %764, !prof !46, !nosanitize !45

711:                                              ; preds = %702
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

712:                                              ; preds = %550
  %713 = load ptr, ptr %7, align 8, !tbaa !34
  %714 = load i32, ptr %6, align 4, !tbaa !73
  %715 = zext i32 %714 to i64
  %716 = getelementptr inbounds nuw i8, ptr %713, i64 %715
  %717 = load i8, ptr %716, align 1, !tbaa !8
  %718 = load i32, ptr %27, align 4, !tbaa !139
  %719 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %718, i32 1), !nosanitize !45
  %720 = extractvalue { i32, i1 } %719, 1, !nosanitize !45
  br i1 %720, label %721, label %722, !prof !46, !nosanitize !45

721:                                              ; preds = %712
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

722:                                              ; preds = %712
  %723 = extractvalue { i32, i1 } %719, 0, !nosanitize !45
  %724 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %723, ptr %27, align 4, !tbaa !139
  %725 = zext i32 %718 to i64
  %726 = getelementptr inbounds nuw i8, ptr %724, i64 %725
  store i8 0, ptr %726, align 1, !tbaa !8
  %727 = load i32, ptr %27, align 4, !tbaa !139
  %728 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %727, i32 1), !nosanitize !45
  %729 = extractvalue { i32, i1 } %728, 1, !nosanitize !45
  br i1 %729, label %730, label %731, !prof !46, !nosanitize !45

730:                                              ; preds = %722
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

731:                                              ; preds = %722
  %732 = extractvalue { i32, i1 } %728, 0, !nosanitize !45
  %733 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %732, ptr %27, align 4, !tbaa !139
  %734 = zext i32 %727 to i64
  %735 = getelementptr inbounds nuw i8, ptr %733, i64 %734
  store i8 0, ptr %735, align 1, !tbaa !8
  %736 = load i32, ptr %27, align 4, !tbaa !139
  %737 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %736, i32 1), !nosanitize !45
  %738 = extractvalue { i32, i1 } %737, 1, !nosanitize !45
  br i1 %738, label %739, label %740, !prof !46, !nosanitize !45

739:                                              ; preds = %731
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

740:                                              ; preds = %731
  %741 = extractvalue { i32, i1 } %737, 0, !nosanitize !45
  %742 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %741, ptr %27, align 4, !tbaa !139
  %743 = zext i32 %736 to i64
  %744 = getelementptr inbounds nuw i8, ptr %742, i64 %743
  store i8 %717, ptr %744, align 1, !tbaa !8
  %745 = zext i8 %717 to i64
  %746 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %745
  %747 = load i16, ptr %746, align 4, !tbaa !8
  %748 = add i16 %747, 1
  store i16 %748, ptr %746, align 4, !tbaa !8
  %749 = load i32, ptr %27, align 4, !tbaa !139
  %750 = load i32, ptr %29, align 8, !tbaa !47
  %751 = icmp eq i32 %749, %750
  %752 = load i32, ptr %3, align 4, !tbaa !75
  %753 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %752, i32 1), !nosanitize !45
  %754 = extractvalue { i32, i1 } %753, 1, !nosanitize !45
  br i1 %754, label %755, label %756, !prof !46, !nosanitize !45

755:                                              ; preds = %740
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

756:                                              ; preds = %740
  %757 = extractvalue { i32, i1 } %753, 0, !nosanitize !45
  store i32 %757, ptr %3, align 4, !tbaa !75
  %758 = load i32, ptr %6, align 4, !tbaa !73
  %759 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %758, i32 1), !nosanitize !45
  %760 = extractvalue { i32, i1 } %759, 1, !nosanitize !45
  br i1 %760, label %761, label %762, !prof !46, !nosanitize !45

761:                                              ; preds = %756
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

762:                                              ; preds = %756
  %763 = extractvalue { i32, i1 } %759, 0, !nosanitize !45
  store i32 %763, ptr %6, align 4, !tbaa !73
  br i1 %751, label %775, label %.backedge

764:                                              ; preds = %702
  %765 = extractvalue { i32, i1 } %709, 0, !nosanitize !45
  %766 = load i32, ptr %16, align 8, !tbaa !53
  %767 = shl i32 %708, %766
  %768 = zext i32 %765 to i64
  %769 = getelementptr inbounds nuw i8, ptr %704, i64 %768
  %770 = load i8, ptr %769, align 1, !tbaa !8
  %771 = zext i8 %770 to i32
  %772 = xor i32 %767, %771
  %773 = load i32, ptr %17, align 4, !tbaa !52
  %774 = and i32 %772, %773
  store i32 %774, ptr %15, align 8, !tbaa !80
  br i1 %620, label %775, label %.backedge

775:                                              ; preds = %764, %762, %695
  %776 = phi i32 [ %763, %762 ], [ %696, %695 ], [ %703, %764 ]
  %777 = load i64, ptr %9, align 8, !tbaa !74
  %778 = icmp sgt i64 %777, -1
  br i1 %778, label %779, label %783

779:                                              ; preds = %775
  %780 = load ptr, ptr %7, align 8, !tbaa !34
  %781 = and i64 %777, 4294967295
  %782 = getelementptr inbounds nuw i8, ptr %780, i64 %781
  br label %783

783:                                              ; preds = %779, %775
  %784 = phi ptr [ %782, %779 ], [ null, %775 ]
  %785 = zext i32 %776 to i64
  %786 = sub nsw i64 %785, %777
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %784, i64 noundef %786, i32 noundef 0) #12
  %787 = load i32, ptr %6, align 4, !tbaa !73
  %788 = zext i32 %787 to i64
  store i64 %788, ptr %9, align 8, !tbaa !74
  %789 = load ptr, ptr %0, align 8, !tbaa !20
  %790 = getelementptr inbounds nuw i8, ptr %789, i64 56
  %791 = load ptr, ptr %790, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %791) #12
  %792 = getelementptr inbounds nuw i8, ptr %791, i64 40
  %793 = load i64, ptr %792, align 8, !tbaa !57
  %794 = getelementptr inbounds nuw i8, ptr %789, i64 32
  %795 = load i32, ptr %794, align 8, !tbaa !107
  %796 = zext i32 %795 to i64
  %797 = tail call i64 @llvm.umin.i64(i64 %793, i64 %796)
  %798 = trunc nuw i64 %797 to i32
  %799 = icmp eq i64 %797, 0
  br i1 %799, label %832, label %800

800:                                              ; preds = %783
  %801 = getelementptr inbounds nuw i8, ptr %789, i64 24
  %802 = load ptr, ptr %801, align 8, !tbaa !106
  %803 = getelementptr inbounds nuw i8, ptr %791, i64 32
  %804 = load ptr, ptr %803, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %802, ptr align 1 %804, i64 %797, i1 false)
  %805 = load ptr, ptr %801, align 8, !tbaa !106
  %806 = getelementptr inbounds nuw i8, ptr %805, i64 %797
  store ptr %806, ptr %801, align 8, !tbaa !106
  %807 = load ptr, ptr %803, align 8, !tbaa !58
  %808 = getelementptr inbounds nuw i8, ptr %807, i64 %797
  store ptr %808, ptr %803, align 8, !tbaa !58
  %809 = getelementptr inbounds nuw i8, ptr %789, i64 40
  %810 = load i64, ptr %809, align 8, !tbaa !108
  %811 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %810, i64 %797), !nosanitize !45
  %812 = extractvalue { i64, i1 } %811, 1, !nosanitize !45
  br i1 %812, label %813, label %814, !prof !46, !nosanitize !45

813:                                              ; preds = %800
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

814:                                              ; preds = %800
  %815 = extractvalue { i64, i1 } %811, 0, !nosanitize !45
  store i64 %815, ptr %809, align 8, !tbaa !108
  %816 = load i32, ptr %794, align 8, !tbaa !107
  %817 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %816, i32 %798), !nosanitize !45
  %818 = extractvalue { i32, i1 } %817, 1, !nosanitize !45
  br i1 %818, label %819, label %820, !prof !46, !nosanitize !45

819:                                              ; preds = %814
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

820:                                              ; preds = %814
  %821 = extractvalue { i32, i1 } %817, 0, !nosanitize !45
  store i32 %821, ptr %794, align 8, !tbaa !107
  %822 = load i64, ptr %792, align 8, !tbaa !57
  %823 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %822, i64 %797), !nosanitize !45
  %824 = extractvalue { i64, i1 } %823, 1, !nosanitize !45
  br i1 %824, label %825, label %826, !prof !46, !nosanitize !45

825:                                              ; preds = %820
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

826:                                              ; preds = %820
  %827 = extractvalue { i64, i1 } %823, 0, !nosanitize !45
  store i64 %827, ptr %792, align 8, !tbaa !57
  %828 = icmp eq i64 %827, 0
  br i1 %828, label %829, label %832

829:                                              ; preds = %826
  %830 = getelementptr inbounds nuw i8, ptr %791, i64 16
  %831 = load ptr, ptr %830, align 8, !tbaa !40
  store ptr %831, ptr %803, align 8, !tbaa !58
  br label %832

832:                                              ; preds = %829, %826, %783
  %833 = load ptr, ptr %0, align 8, !tbaa !20
  %834 = getelementptr inbounds nuw i8, ptr %833, i64 32
  %835 = load i32, ptr %834, align 8, !tbaa !107
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %.loopexit39, label %.backedge

.backedge:                                        ; preds = %832, %764, %762, %695
  br label %33

837:                                              ; preds = %354
  %838 = load i32, ptr %6, align 4, !tbaa !73
  %839 = tail call i32 @llvm.umin.i32(i32 %838, i32 2)
  store i32 %839, ptr %10, align 4, !tbaa !76
  %840 = icmp eq i32 %1, 4
  br i1 %840, label %841, label %903

841:                                              ; preds = %837
  %842 = load i64, ptr %9, align 8, !tbaa !74
  %843 = icmp sgt i64 %842, -1
  br i1 %843, label %844, label %848

844:                                              ; preds = %841
  %845 = load ptr, ptr %7, align 8, !tbaa !34
  %846 = and i64 %842, 4294967295
  %847 = getelementptr inbounds nuw i8, ptr %845, i64 %846
  br label %848

848:                                              ; preds = %844, %841
  %849 = phi ptr [ %847, %844 ], [ null, %841 ]
  %850 = zext i32 %838 to i64
  %851 = sub nsw i64 %850, %842
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %849, i64 noundef %851, i32 noundef 1) #12
  %852 = load i32, ptr %6, align 4, !tbaa !73
  %853 = zext i32 %852 to i64
  store i64 %853, ptr %9, align 8, !tbaa !74
  %854 = load ptr, ptr %0, align 8, !tbaa !20
  %855 = getelementptr inbounds nuw i8, ptr %854, i64 56
  %856 = load ptr, ptr %855, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %856) #12
  %857 = getelementptr inbounds nuw i8, ptr %856, i64 40
  %858 = load i64, ptr %857, align 8, !tbaa !57
  %859 = getelementptr inbounds nuw i8, ptr %854, i64 32
  %860 = load i32, ptr %859, align 8, !tbaa !107
  %861 = zext i32 %860 to i64
  %862 = tail call i64 @llvm.umin.i64(i64 %858, i64 %861)
  %863 = trunc nuw i64 %862 to i32
  %864 = icmp eq i64 %862, 0
  br i1 %864, label %897, label %865

865:                                              ; preds = %848
  %866 = getelementptr inbounds nuw i8, ptr %854, i64 24
  %867 = load ptr, ptr %866, align 8, !tbaa !106
  %868 = getelementptr inbounds nuw i8, ptr %856, i64 32
  %869 = load ptr, ptr %868, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %867, ptr align 1 %869, i64 %862, i1 false)
  %870 = load ptr, ptr %866, align 8, !tbaa !106
  %871 = getelementptr inbounds nuw i8, ptr %870, i64 %862
  store ptr %871, ptr %866, align 8, !tbaa !106
  %872 = load ptr, ptr %868, align 8, !tbaa !58
  %873 = getelementptr inbounds nuw i8, ptr %872, i64 %862
  store ptr %873, ptr %868, align 8, !tbaa !58
  %874 = getelementptr inbounds nuw i8, ptr %854, i64 40
  %875 = load i64, ptr %874, align 8, !tbaa !108
  %876 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %875, i64 %862), !nosanitize !45
  %877 = extractvalue { i64, i1 } %876, 1, !nosanitize !45
  br i1 %877, label %878, label %879, !prof !46, !nosanitize !45

878:                                              ; preds = %865
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

879:                                              ; preds = %865
  %880 = extractvalue { i64, i1 } %876, 0, !nosanitize !45
  store i64 %880, ptr %874, align 8, !tbaa !108
  %881 = load i32, ptr %859, align 8, !tbaa !107
  %882 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %881, i32 %863), !nosanitize !45
  %883 = extractvalue { i32, i1 } %882, 1, !nosanitize !45
  br i1 %883, label %884, label %885, !prof !46, !nosanitize !45

884:                                              ; preds = %879
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

885:                                              ; preds = %879
  %886 = extractvalue { i32, i1 } %882, 0, !nosanitize !45
  store i32 %886, ptr %859, align 8, !tbaa !107
  %887 = load i64, ptr %857, align 8, !tbaa !57
  %888 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %887, i64 %862), !nosanitize !45
  %889 = extractvalue { i64, i1 } %888, 1, !nosanitize !45
  br i1 %889, label %890, label %891, !prof !46, !nosanitize !45

890:                                              ; preds = %885
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

891:                                              ; preds = %885
  %892 = extractvalue { i64, i1 } %888, 0, !nosanitize !45
  store i64 %892, ptr %857, align 8, !tbaa !57
  %893 = icmp eq i64 %892, 0
  br i1 %893, label %894, label %897

894:                                              ; preds = %891
  %895 = getelementptr inbounds nuw i8, ptr %856, i64 16
  %896 = load ptr, ptr %895, align 8, !tbaa !40
  store ptr %896, ptr %868, align 8, !tbaa !58
  br label %897

897:                                              ; preds = %894, %891, %848
  %898 = load ptr, ptr %0, align 8, !tbaa !20
  %899 = getelementptr inbounds nuw i8, ptr %898, i64 32
  %900 = load i32, ptr %899, align 8, !tbaa !107
  %901 = icmp eq i32 %900, 0
  %902 = select i1 %901, i32 2, i32 3
  br label %.loopexit39

903:                                              ; preds = %837
  %904 = load i32, ptr %27, align 4, !tbaa !139
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %967, label %906

906:                                              ; preds = %903
  %907 = load i64, ptr %9, align 8, !tbaa !74
  %908 = icmp sgt i64 %907, -1
  br i1 %908, label %909, label %913

909:                                              ; preds = %906
  %910 = load ptr, ptr %7, align 8, !tbaa !34
  %911 = and i64 %907, 4294967295
  %912 = getelementptr inbounds nuw i8, ptr %910, i64 %911
  br label %913

913:                                              ; preds = %909, %906
  %914 = phi ptr [ %912, %909 ], [ null, %906 ]
  %915 = zext i32 %838 to i64
  %916 = sub nsw i64 %915, %907
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %914, i64 noundef %916, i32 noundef 0) #12
  %917 = load i32, ptr %6, align 4, !tbaa !73
  %918 = zext i32 %917 to i64
  store i64 %918, ptr %9, align 8, !tbaa !74
  %919 = load ptr, ptr %0, align 8, !tbaa !20
  %920 = getelementptr inbounds nuw i8, ptr %919, i64 56
  %921 = load ptr, ptr %920, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %921) #12
  %922 = getelementptr inbounds nuw i8, ptr %921, i64 40
  %923 = load i64, ptr %922, align 8, !tbaa !57
  %924 = getelementptr inbounds nuw i8, ptr %919, i64 32
  %925 = load i32, ptr %924, align 8, !tbaa !107
  %926 = zext i32 %925 to i64
  %927 = tail call i64 @llvm.umin.i64(i64 %923, i64 %926)
  %928 = trunc nuw i64 %927 to i32
  %929 = icmp eq i64 %927, 0
  br i1 %929, label %962, label %930

930:                                              ; preds = %913
  %931 = getelementptr inbounds nuw i8, ptr %919, i64 24
  %932 = load ptr, ptr %931, align 8, !tbaa !106
  %933 = getelementptr inbounds nuw i8, ptr %921, i64 32
  %934 = load ptr, ptr %933, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %932, ptr align 1 %934, i64 %927, i1 false)
  %935 = load ptr, ptr %931, align 8, !tbaa !106
  %936 = getelementptr inbounds nuw i8, ptr %935, i64 %927
  store ptr %936, ptr %931, align 8, !tbaa !106
  %937 = load ptr, ptr %933, align 8, !tbaa !58
  %938 = getelementptr inbounds nuw i8, ptr %937, i64 %927
  store ptr %938, ptr %933, align 8, !tbaa !58
  %939 = getelementptr inbounds nuw i8, ptr %919, i64 40
  %940 = load i64, ptr %939, align 8, !tbaa !108
  %941 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %940, i64 %927), !nosanitize !45
  %942 = extractvalue { i64, i1 } %941, 1, !nosanitize !45
  br i1 %942, label %943, label %944, !prof !46, !nosanitize !45

943:                                              ; preds = %930
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

944:                                              ; preds = %930
  %945 = extractvalue { i64, i1 } %941, 0, !nosanitize !45
  store i64 %945, ptr %939, align 8, !tbaa !108
  %946 = load i32, ptr %924, align 8, !tbaa !107
  %947 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %946, i32 %928), !nosanitize !45
  %948 = extractvalue { i32, i1 } %947, 1, !nosanitize !45
  br i1 %948, label %949, label %950, !prof !46, !nosanitize !45

949:                                              ; preds = %944
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

950:                                              ; preds = %944
  %951 = extractvalue { i32, i1 } %947, 0, !nosanitize !45
  store i32 %951, ptr %924, align 8, !tbaa !107
  %952 = load i64, ptr %922, align 8, !tbaa !57
  %953 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %952, i64 %927), !nosanitize !45
  %954 = extractvalue { i64, i1 } %953, 1, !nosanitize !45
  br i1 %954, label %955, label %956, !prof !46, !nosanitize !45

955:                                              ; preds = %950
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

956:                                              ; preds = %950
  %957 = extractvalue { i64, i1 } %953, 0, !nosanitize !45
  store i64 %957, ptr %922, align 8, !tbaa !57
  %958 = icmp eq i64 %957, 0
  br i1 %958, label %959, label %962

959:                                              ; preds = %956
  %960 = getelementptr inbounds nuw i8, ptr %921, i64 16
  %961 = load ptr, ptr %960, align 8, !tbaa !40
  store ptr %961, ptr %933, align 8, !tbaa !58
  br label %962

962:                                              ; preds = %959, %956, %913
  %963 = load ptr, ptr %0, align 8, !tbaa !20
  %964 = getelementptr inbounds nuw i8, ptr %963, i64 32
  %965 = load i32, ptr %964, align 8, !tbaa !107
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %.loopexit39, label %967

967:                                              ; preds = %962, %903
  br label %.loopexit39

.loopexit39:                                      ; preds = %832, %350, %967, %962, %897
  %968 = phi i32 [ 1, %967 ], [ %902, %897 ], [ 0, %962 ], [ 0, %350 ], [ 0, %832 ]
  ret i32 %968
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
  br i1 %38, label %39, label %364

39:                                               ; preds = %36
  %40 = load i32, ptr %4, align 8, !tbaa !32
  %41 = zext i32 %40 to i64
  br label %42

42:                                               ; preds = %308, %39
  %43 = phi i32 [ %236, %308 ], [ %37, %39 ]
  %44 = load i64, ptr %5, align 8, !tbaa !61
  %45 = zext nneg i32 %43 to i64
  %46 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %44, i64 %45), !nosanitize !45
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !45
  br i1 %47, label %48, label %49, !prof !46, !nosanitize !45

48:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

49:                                               ; preds = %42
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !45
  %51 = load i32, ptr %6, align 4, !tbaa !73
  %52 = zext i32 %51 to i64
  %53 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %50, i64 %52), !nosanitize !45
  %54 = extractvalue { i64, i1 } %53, 1, !nosanitize !45
  br i1 %54, label %55, label %56, !prof !46, !nosanitize !45

55:                                               ; preds = %49
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

56:                                               ; preds = %49
  %57 = extractvalue { i64, i1 } %53, 0, !nosanitize !45
  %58 = trunc i64 %57 to i32
  %59 = load i32, ptr %4, align 8, !tbaa !32
  %60 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %59, i32 262), !nosanitize !45
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !45
  br i1 %61, label %62, label %63, !prof !46, !nosanitize !45

62:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

63:                                               ; preds = %56
  %64 = extractvalue { i32, i1 } %60, 0, !nosanitize !45
  %65 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %40, i32 %64), !nosanitize !45
  %66 = extractvalue { i32, i1 } %65, 1, !nosanitize !45
  br i1 %66, label %67, label %68, !prof !46, !nosanitize !45

67:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

68:                                               ; preds = %63
  %69 = extractvalue { i32, i1 } %65, 0, !nosanitize !45
  %70 = icmp ult i32 %51, %69
  br i1 %70, label %187, label %71

71:                                               ; preds = %68
  %72 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %40, i32 %58), !nosanitize !45
  %73 = extractvalue { i32, i1 } %72, 1, !nosanitize !45
  br i1 %73, label %74, label %75, !prof !46, !nosanitize !45

74:                                               ; preds = %71
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

84:                                               ; preds = %75
  %85 = extractvalue { i32, i1 } %81, 0, !nosanitize !45
  store i32 %85, ptr %8, align 8, !tbaa !83
  %86 = load i32, ptr %6, align 4, !tbaa !73
  %87 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %86, i32 %40), !nosanitize !45
  %88 = extractvalue { i32, i1 } %87, 1, !nosanitize !45
  br i1 %88, label %89, label %90, !prof !46, !nosanitize !45

89:                                               ; preds = %84
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  br i1 %103, label %127, label %104, !prof !46, !nosanitize !45

104:                                              ; preds = %97
  %105 = icmp ult i32 %99, 8
  br i1 %105, label %.preheader254, label %106

.preheader254:                                    ; preds = %121, %104
  %.ph255 = phi ptr [ %123, %121 ], [ %102, %104 ]
  %.ph256 = phi i32 [ %125, %121 ], [ %99, %104 ]
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
  br i1 %120, label %121, label %110, !llvm.loop !155

121:                                              ; preds = %110
  %122 = mul nsw i64 %107, -2
  %123 = getelementptr i8, ptr %102, i64 %122
  %124 = trunc nuw i64 %107 to i32
  %125 = sub i32 %99, %124
  %126 = icmp eq i64 %107, %101
  br i1 %126, label %.loopexit44, label %.preheader254

127:                                              ; preds = %97
  %128 = getelementptr inbounds i8, ptr %102, i64 -2
  %129 = load i16, ptr %128, align 2, !tbaa !62
  %130 = zext i16 %129 to i32
  %131 = tail call i32 @llvm.usub.sat.i32(i32 %130, i32 %98)
  %132 = trunc nuw i32 %131 to i16
  store i16 %132, ptr %128, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

133:                                              ; preds = %.preheader254, %133
  %134 = phi ptr [ %136, %133 ], [ %.ph255, %.preheader254 ]
  %135 = phi i32 [ %141, %133 ], [ %.ph256, %.preheader254 ]
  %136 = getelementptr inbounds i8, ptr %134, i64 -2
  %137 = load i16, ptr %136, align 2, !tbaa !62
  %138 = zext i16 %137 to i32
  %139 = tail call i32 @llvm.usub.sat.i32(i32 %138, i32 %98)
  %140 = trunc nuw i32 %139 to i16
  store i16 %140, ptr %136, align 2, !tbaa !62
  %141 = add i32 %135, -1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %.loopexit44, label %133, !llvm.loop !156

.loopexit44:                                      ; preds = %133, %121
  %143 = icmp eq i32 %98, 0
  br i1 %143, label %144, label %145, !prof !46, !nosanitize !45

144:                                              ; preds = %.loopexit44
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

145:                                              ; preds = %.loopexit44
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
  br i1 %164, label %165, label %154, !llvm.loop !157

165:                                              ; preds = %154
  %166 = mul nsw i64 %151, -2
  %167 = getelementptr i8, ptr %148, i64 %166
  %168 = trunc nuw i64 %151 to i32
  %169 = sub i32 %98, %168
  %170 = icmp eq i64 %151, %147
  br i1 %170, label %.loopexit43, label %.preheader

.preheader:                                       ; preds = %165, %145
  %.ph = phi ptr [ %167, %165 ], [ %148, %145 ]
  %.ph253 = phi i32 [ %169, %165 ], [ %98, %145 ]
  br label %171

171:                                              ; preds = %.preheader, %171
  %172 = phi ptr [ %174, %171 ], [ %.ph, %.preheader ]
  %173 = phi i32 [ %179, %171 ], [ %.ph253, %.preheader ]
  %174 = getelementptr inbounds i8, ptr %172, i64 -2
  %175 = load i16, ptr %174, align 2, !tbaa !62
  %176 = zext i16 %175 to i32
  %177 = tail call i32 @llvm.usub.sat.i32(i32 %176, i32 %98)
  %178 = trunc nuw i32 %177 to i16
  store i16 %178, ptr %174, align 2, !tbaa !62
  %179 = add i32 %173, -1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %.loopexit43, label %171, !llvm.loop !158

.loopexit43:                                      ; preds = %171, %165
  store i32 1, ptr %14, align 8, !tbaa !63
  %181 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %58, i32 %40), !nosanitize !45
  %182 = extractvalue { i32, i1 } %181, 1, !nosanitize !45
  br i1 %182, label %183, label %184, !prof !46, !nosanitize !45

183:                                              ; preds = %.loopexit43
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

184:                                              ; preds = %.loopexit43
  %185 = extractvalue { i32, i1 } %181, 0, !nosanitize !45
  %186 = load i32, ptr %3, align 4, !tbaa !75
  br label %187

187:                                              ; preds = %184, %68
  %188 = phi i32 [ %186, %184 ], [ %43, %68 ]
  %189 = phi i32 [ %91, %184 ], [ %51, %68 ]
  %190 = phi i32 [ %185, %184 ], [ %58, %68 ]
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
  %214 = tail call i64 @adler32(i64 noundef %213, ptr noundef %200, i32 noundef %201) #12
  store i64 %214, ptr %212, align 8, !tbaa !59
  br label %219

215:                                              ; preds = %203
  %216 = getelementptr inbounds nuw i8, ptr %191, i64 96
  %217 = load i64, ptr %216, align 8, !tbaa !59
  %218 = tail call i64 @crc32(i64 noundef %217, ptr noundef %200, i32 noundef %201) #12
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

235:                                              ; preds = %230
  %236 = extractvalue { i32, i1 } %232, 0, !nosanitize !45
  store i32 %236, ptr %3, align 4, !tbaa !75
  %237 = load i32, ptr %10, align 4, !tbaa !76
  %238 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %236, i32 %237), !nosanitize !45
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !45
  br i1 %239, label %240, label %241, !prof !46, !nosanitize !45

240:                                              ; preds = %235
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  br i1 %312, label %313, label %42, !llvm.loop !92

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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  br i1 %356, label %.loopexit45, label %357

357:                                              ; preds = %353
  %358 = icmp eq i32 %354, 0
  br i1 %358, label %947, label %359

359:                                              ; preds = %357
  %360 = icmp ugt i32 %354, 2
  br i1 %360, label %364, label %361

361:                                              ; preds = %359
  %362 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %362, ptr %22, align 8, !tbaa !77
  %363 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %363, ptr %23, align 4, !tbaa !159
  br label %574

364:                                              ; preds = %359, %36
  %365 = phi i32 [ %354, %359 ], [ %37, %36 ]
  %366 = load i32, ptr %6, align 4, !tbaa !73
  %367 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %366, i32 2), !nosanitize !45
  %368 = extractvalue { i32, i1 } %367, 1, !nosanitize !45
  br i1 %368, label %369, label %370, !prof !46, !nosanitize !45

369:                                              ; preds = %364
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

370:                                              ; preds = %364
  %371 = extractvalue { i32, i1 } %367, 0, !nosanitize !45
  %372 = load ptr, ptr %7, align 8, !tbaa !34
  %373 = load i32, ptr %15, align 8, !tbaa !80
  %374 = load i32, ptr %16, align 8, !tbaa !53
  %375 = shl i32 %373, %374
  %376 = zext i32 %371 to i64
  %377 = getelementptr inbounds nuw i8, ptr %372, i64 %376
  %378 = load i8, ptr %377, align 1, !tbaa !8
  %379 = zext i8 %378 to i32
  %380 = xor i32 %375, %379
  %381 = load i32, ptr %17, align 4, !tbaa !52
  %382 = and i32 %380, %381
  store i32 %382, ptr %15, align 8, !tbaa !80
  %383 = load ptr, ptr %12, align 8, !tbaa !37
  %384 = zext i32 %382 to i64
  %385 = getelementptr inbounds nuw [2 x i8], ptr %383, i64 %384
  %386 = load i16, ptr %385, align 2, !tbaa !62
  %387 = load ptr, ptr %13, align 8, !tbaa !35
  %388 = load i32, ptr %18, align 8, !tbaa !33
  %389 = and i32 %388, %366
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds nuw [2 x i8], ptr %387, i64 %390
  store i16 %386, ptr %391, align 2, !tbaa !62
  %392 = zext i16 %386 to i32
  %393 = trunc i32 %366 to i16
  store i16 %393, ptr %385, align 2, !tbaa !62
  %394 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %394, ptr %22, align 8, !tbaa !77
  %395 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %395, ptr %23, align 4, !tbaa !159
  store i32 2, ptr %21, align 8, !tbaa !78
  %396 = icmp eq i16 %386, 0
  br i1 %396, label %578, label %397

397:                                              ; preds = %370
  %398 = load i32, ptr %24, align 8, !tbaa !66
  %399 = icmp ult i32 %394, %398
  br i1 %399, label %400, label %578

400:                                              ; preds = %397
  %401 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %366, i32 %392), !nosanitize !45
  %402 = extractvalue { i32, i1 } %401, 0, !nosanitize !45
  %403 = extractvalue { i32, i1 } %401, 1, !nosanitize !45
  br i1 %403, label %404, label %405, !prof !46, !nosanitize !45

404:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

405:                                              ; preds = %400
  %406 = load i32, ptr %4, align 8, !tbaa !32
  %407 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %406, i32 262), !nosanitize !45
  %408 = extractvalue { i32, i1 } %407, 1, !nosanitize !45
  br i1 %408, label %409, label %410, !prof !46, !nosanitize !45

409:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

410:                                              ; preds = %405
  %411 = extractvalue { i32, i1 } %407, 0, !nosanitize !45
  %412 = icmp ugt i32 %402, %411
  br i1 %412, label %578, label %413

413:                                              ; preds = %410
  %414 = zext i32 %366 to i64
  %415 = getelementptr inbounds nuw i8, ptr %372, i64 %414
  %416 = load i32, ptr %25, align 8, !tbaa !70
  %417 = load i32, ptr %26, align 4, !tbaa !72
  %418 = tail call i32 @llvm.usub.sat.i32(i32 %366, i32 %411)
  %419 = getelementptr inbounds nuw i8, ptr %415, i64 258
  %420 = sext i32 %394 to i64
  %421 = getelementptr i8, ptr %415, i64 %420
  %422 = getelementptr i8, ptr %421, i64 -1
  %423 = load i8, ptr %422, align 1, !tbaa !8
  %424 = load i8, ptr %421, align 1, !tbaa !8
  %425 = load i32, ptr %27, align 4, !tbaa !68
  %426 = icmp ult i32 %394, %425
  %427 = lshr i32 %417, 2
  %428 = select i1 %426, i32 %417, i32 %427
  %429 = tail call i32 @llvm.umin.i32(i32 %416, i32 %365)
  %430 = getelementptr inbounds nuw i8, ptr %415, i64 1
  %431 = ptrtoint ptr %419 to i64
  br label %432

432:                                              ; preds = %554, %413
  %433 = phi i32 [ %395, %413 ], [ %540, %554 ]
  %434 = phi i32 [ %394, %413 ], [ %541, %554 ]
  %435 = phi i32 [ %428, %413 ], [ %555, %554 ]
  %436 = phi i32 [ %392, %413 ], [ %548, %554 ]
  %437 = phi i8 [ %423, %413 ], [ %542, %554 ]
  %438 = phi i8 [ %424, %413 ], [ %543, %554 ]
  %439 = zext nneg i32 %436 to i64
  %440 = getelementptr inbounds nuw i8, ptr %372, i64 %439
  %441 = sext i32 %434 to i64
  %442 = getelementptr inbounds i8, ptr %440, i64 %441
  %443 = load i8, ptr %442, align 1, !tbaa !8
  %444 = icmp eq i8 %443, %438
  br i1 %444, label %445, label %539

445:                                              ; preds = %432
  %446 = getelementptr i8, ptr %442, i64 -1
  %447 = load i8, ptr %446, align 1, !tbaa !8
  %448 = icmp eq i8 %447, %437
  br i1 %448, label %449, label %539

449:                                              ; preds = %445
  %450 = load i8, ptr %440, align 1, !tbaa !8
  %451 = load i8, ptr %415, align 1, !tbaa !8
  %452 = icmp eq i8 %450, %451
  br i1 %452, label %453, label %539

453:                                              ; preds = %449
  %454 = getelementptr inbounds nuw i8, ptr %440, i64 1
  %455 = load i8, ptr %454, align 1, !tbaa !8
  %456 = load i8, ptr %430, align 1, !tbaa !8
  %457 = icmp eq i8 %455, %456
  br i1 %457, label %458, label %539

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
  br i1 %468, label %469, label %.split.loop.exit.split.loop.exit

469:                                              ; preds = %460
  %470 = getelementptr inbounds nuw i8, ptr %463, i64 2
  %471 = load i8, ptr %470, align 1, !tbaa !8
  %472 = getelementptr inbounds nuw i8, ptr %461, i64 2
  %473 = load i8, ptr %472, align 1, !tbaa !8
  %474 = icmp eq i8 %471, %473
  br i1 %474, label %475, label %.split.loop.exit.split.loop.exit195

475:                                              ; preds = %469
  %476 = getelementptr inbounds nuw i8, ptr %463, i64 3
  %477 = load i8, ptr %476, align 1, !tbaa !8
  %478 = getelementptr inbounds nuw i8, ptr %461, i64 3
  %479 = load i8, ptr %478, align 1, !tbaa !8
  %480 = icmp eq i8 %477, %479
  br i1 %480, label %481, label %.split.loop.exit.split.loop.exit197

481:                                              ; preds = %475
  %482 = getelementptr inbounds nuw i8, ptr %463, i64 4
  %483 = load i8, ptr %482, align 1, !tbaa !8
  %484 = getelementptr inbounds nuw i8, ptr %461, i64 4
  %485 = load i8, ptr %484, align 1, !tbaa !8
  %486 = icmp eq i8 %483, %485
  br i1 %486, label %487, label %.split.loop.exit.split.loop.exit199

487:                                              ; preds = %481
  %488 = getelementptr inbounds nuw i8, ptr %463, i64 5
  %489 = load i8, ptr %488, align 1, !tbaa !8
  %490 = getelementptr inbounds nuw i8, ptr %461, i64 5
  %491 = load i8, ptr %490, align 1, !tbaa !8
  %492 = icmp eq i8 %489, %491
  br i1 %492, label %493, label %.split.loop.exit.split.loop.exit201

493:                                              ; preds = %487
  %494 = getelementptr inbounds nuw i8, ptr %463, i64 6
  %495 = load i8, ptr %494, align 1, !tbaa !8
  %496 = getelementptr inbounds nuw i8, ptr %461, i64 6
  %497 = load i8, ptr %496, align 1, !tbaa !8
  %498 = icmp eq i8 %495, %497
  br i1 %498, label %499, label %.split.loop.exit.split.loop.exit203

499:                                              ; preds = %493
  %500 = getelementptr inbounds nuw i8, ptr %463, i64 7
  %501 = load i8, ptr %500, align 1, !tbaa !8
  %502 = getelementptr inbounds nuw i8, ptr %461, i64 7
  %503 = load i8, ptr %502, align 1, !tbaa !8
  %504 = icmp eq i8 %501, %503
  br i1 %504, label %505, label %.split.loop.exit.split.loop.exit205

505:                                              ; preds = %499
  %506 = add nuw nsw i64 %462, 8
  %507 = getelementptr inbounds nuw i8, ptr %415, i64 %506
  %508 = load i8, ptr %507, align 1, !tbaa !8
  %509 = getelementptr inbounds nuw i8, ptr %461, i64 8
  %510 = load i8, ptr %509, align 1, !tbaa !8
  %511 = icmp eq i8 %508, %510
  %512 = icmp samesign ult i64 %462, 250
  %513 = select i1 %511, i1 %512, i1 false
  br i1 %513, label %460, label %.split.loop.exit.split.loop.exit207, !llvm.loop !152

.split.loop.exit.split.loop.exit:                 ; preds = %460
  %514 = getelementptr inbounds nuw i8, ptr %463, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit195:              ; preds = %469
  %515 = getelementptr inbounds nuw i8, ptr %463, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit197:              ; preds = %475
  %516 = getelementptr inbounds nuw i8, ptr %463, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit199:              ; preds = %481
  %517 = getelementptr inbounds nuw i8, ptr %463, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit201:              ; preds = %487
  %518 = getelementptr inbounds nuw i8, ptr %463, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit203:              ; preds = %493
  %519 = getelementptr inbounds nuw i8, ptr %463, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit205:              ; preds = %499
  %520 = getelementptr inbounds nuw i8, ptr %463, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit207:              ; preds = %505
  %521 = getelementptr inbounds nuw i8, ptr %415, i64 %506
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit207, %.split.loop.exit.split.loop.exit205, %.split.loop.exit.split.loop.exit203, %.split.loop.exit.split.loop.exit201, %.split.loop.exit.split.loop.exit199, %.split.loop.exit.split.loop.exit197, %.split.loop.exit.split.loop.exit195, %.split.loop.exit.split.loop.exit
  %522 = phi ptr [ %515, %.split.loop.exit.split.loop.exit195 ], [ %516, %.split.loop.exit.split.loop.exit197 ], [ %514, %.split.loop.exit.split.loop.exit ], [ %520, %.split.loop.exit.split.loop.exit205 ], [ %519, %.split.loop.exit.split.loop.exit203 ], [ %518, %.split.loop.exit.split.loop.exit201 ], [ %517, %.split.loop.exit.split.loop.exit199 ], [ %521, %.split.loop.exit.split.loop.exit207 ]
  %523 = ptrtoint ptr %522 to i64
  %524 = sub i64 %523, %431
  %525 = trunc i64 %524 to i32
  %526 = add i32 %525, 258
  %527 = icmp sgt i32 %526, %434
  br i1 %527, label %528, label %539

528:                                              ; preds = %.split.loop.exit
  store i32 %436, ptr %8, align 8, !tbaa !83
  %529 = icmp slt i32 %526, %429
  br i1 %529, label %530, label %557

530:                                              ; preds = %528
  %531 = shl i64 %524, 32
  %532 = add i64 %531, 1103806595072
  %533 = ashr exact i64 %532, 32
  %534 = getelementptr inbounds i8, ptr %415, i64 %533
  %535 = load i8, ptr %534, align 1, !tbaa !8
  %536 = sext i32 %526 to i64
  %537 = getelementptr inbounds i8, ptr %415, i64 %536
  %538 = load i8, ptr %537, align 1, !tbaa !8
  br label %539

539:                                              ; preds = %530, %.split.loop.exit, %453, %449, %445, %432
  %540 = phi i32 [ %433, %432 ], [ %433, %445 ], [ %433, %449 ], [ %433, %453 ], [ %436, %530 ], [ %433, %.split.loop.exit ]
  %541 = phi i32 [ %434, %432 ], [ %434, %445 ], [ %434, %449 ], [ %434, %453 ], [ %526, %530 ], [ %434, %.split.loop.exit ]
  %542 = phi i8 [ %437, %432 ], [ %437, %445 ], [ %437, %449 ], [ %437, %453 ], [ %535, %530 ], [ %437, %.split.loop.exit ]
  %543 = phi i8 [ %438, %432 ], [ %438, %445 ], [ %438, %449 ], [ %438, %453 ], [ %538, %530 ], [ %438, %.split.loop.exit ]
  %544 = and i32 %436, %388
  %545 = zext nneg i32 %544 to i64
  %546 = getelementptr inbounds nuw [2 x i8], ptr %387, i64 %545
  %547 = load i16, ptr %546, align 2, !tbaa !62
  %548 = zext i16 %547 to i32
  %549 = icmp ult i32 %418, %548
  br i1 %549, label %550, label %557

550:                                              ; preds = %539
  %551 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %435, i32 1), !nosanitize !45
  %552 = extractvalue { i32, i1 } %551, 1, !nosanitize !45
  br i1 %552, label %553, label %554, !prof !46, !nosanitize !45

553:                                              ; preds = %550
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

554:                                              ; preds = %550
  %555 = extractvalue { i32, i1 } %551, 0, !nosanitize !45
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %432, !llvm.loop !153

557:                                              ; preds = %554, %539, %528
  %558 = phi i32 [ %540, %554 ], [ %540, %539 ], [ %436, %528 ]
  %559 = phi i32 [ %541, %554 ], [ %541, %539 ], [ %526, %528 ]
  %560 = tail call i32 @llvm.umin.i32(i32 %559, i32 %365)
  store i32 %560, ptr %21, align 8, !tbaa !78
  %561 = icmp ult i32 %560, 6
  br i1 %561, label %562, label %578

562:                                              ; preds = %557
  %563 = load i32, ptr %28, align 8, !tbaa !49
  %564 = icmp eq i32 %563, 1
  br i1 %564, label %574, label %565

565:                                              ; preds = %562
  %566 = icmp eq i32 %560, 3
  br i1 %566, label %567, label %578

567:                                              ; preds = %565
  %568 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %366, i32 %558), !nosanitize !45
  %569 = extractvalue { i32, i1 } %568, 1, !nosanitize !45
  br i1 %569, label %570, label %571, !prof !46, !nosanitize !45

570:                                              ; preds = %567
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

571:                                              ; preds = %567
  %572 = extractvalue { i32, i1 } %568, 0, !nosanitize !45
  %573 = icmp ugt i32 %572, 4096
  br i1 %573, label %574, label %578

574:                                              ; preds = %571, %562, %361
  %575 = phi i32 [ %363, %361 ], [ %395, %571 ], [ %395, %562 ]
  %576 = phi i32 [ %362, %361 ], [ %394, %571 ], [ %394, %562 ]
  %577 = phi i32 [ %354, %361 ], [ %365, %571 ], [ %365, %562 ]
  store i32 2, ptr %21, align 8, !tbaa !78
  br label %578

578:                                              ; preds = %574, %571, %565, %557, %410, %397, %370
  %579 = phi i32 [ 2, %397 ], [ %560, %557 ], [ %560, %565 ], [ 3, %571 ], [ 2, %370 ], [ 2, %410 ], [ 2, %574 ]
  %580 = phi i32 [ %395, %397 ], [ %395, %557 ], [ %395, %565 ], [ %395, %571 ], [ %395, %370 ], [ %395, %410 ], [ %575, %574 ]
  %581 = phi i32 [ %394, %397 ], [ %394, %557 ], [ %394, %565 ], [ %394, %571 ], [ %394, %370 ], [ %394, %410 ], [ %576, %574 ]
  %582 = phi i32 [ %365, %397 ], [ %365, %557 ], [ %365, %565 ], [ %365, %571 ], [ %365, %370 ], [ %365, %410 ], [ %577, %574 ]
  %583 = icmp ult i32 %581, 3
  %584 = icmp ugt i32 %579, %581
  %585 = or i1 %583, %584
  br i1 %585, label %813, label %586

586:                                              ; preds = %578
  %587 = load i32, ptr %6, align 4, !tbaa !73
  %588 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %587, i32 %582), !nosanitize !45
  %589 = extractvalue { i32, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %590, label %591, !prof !46, !nosanitize !45

590:                                              ; preds = %586
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

591:                                              ; preds = %586
  %592 = extractvalue { i32, i1 } %588, 0, !nosanitize !45
  %593 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %592, i32 3), !nosanitize !45
  %594 = extractvalue { i32, i1 } %593, 0, !nosanitize !45
  %595 = extractvalue { i32, i1 } %593, 1, !nosanitize !45
  br i1 %595, label %596, label %597, !prof !46, !nosanitize !45

596:                                              ; preds = %591
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

597:                                              ; preds = %591
  %598 = trunc i32 %581 to i8
  %599 = add i8 %598, -3
  %600 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %587, i32 1), !nosanitize !45
  %601 = extractvalue { i32, i1 } %600, 1, !nosanitize !45
  br i1 %601, label %602, label %603, !prof !46, !nosanitize !45

602:                                              ; preds = %597
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

603:                                              ; preds = %597
  %604 = extractvalue { i32, i1 } %600, 0, !nosanitize !45
  %605 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %604, i32 %580), !nosanitize !45
  %606 = extractvalue { i32, i1 } %605, 1, !nosanitize !45
  br i1 %606, label %607, label %608, !prof !46, !nosanitize !45

607:                                              ; preds = %603
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

608:                                              ; preds = %603
  %609 = extractvalue { i32, i1 } %605, 0, !nosanitize !45
  %610 = trunc i32 %609 to i16
  %611 = load i32, ptr %30, align 4, !tbaa !139
  %612 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %611, i32 1), !nosanitize !45
  %613 = extractvalue { i32, i1 } %612, 1, !nosanitize !45
  br i1 %613, label %614, label %615, !prof !46, !nosanitize !45

614:                                              ; preds = %608
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

615:                                              ; preds = %608
  %616 = extractvalue { i32, i1 } %612, 0, !nosanitize !45
  %617 = load ptr, ptr %29, align 8, !tbaa !44
  %618 = trunc i32 %609 to i8
  store i32 %616, ptr %30, align 4, !tbaa !139
  %619 = zext i32 %611 to i64
  %620 = getelementptr inbounds nuw i8, ptr %617, i64 %619
  store i8 %618, ptr %620, align 1, !tbaa !8
  %621 = load i32, ptr %30, align 4, !tbaa !139
  %622 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %621, i32 1), !nosanitize !45
  %623 = extractvalue { i32, i1 } %622, 1, !nosanitize !45
  br i1 %623, label %624, label %625, !prof !46, !nosanitize !45

624:                                              ; preds = %615
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

625:                                              ; preds = %615
  %626 = extractvalue { i32, i1 } %622, 0, !nosanitize !45
  %627 = load ptr, ptr %29, align 8, !tbaa !44
  %628 = lshr i32 %609, 8
  %629 = trunc i32 %628 to i8
  store i32 %626, ptr %30, align 4, !tbaa !139
  %630 = zext i32 %621 to i64
  %631 = getelementptr inbounds nuw i8, ptr %627, i64 %630
  store i8 %629, ptr %631, align 1, !tbaa !8
  %632 = load i32, ptr %30, align 4, !tbaa !139
  %633 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %632, i32 1), !nosanitize !45
  %634 = extractvalue { i32, i1 } %633, 1, !nosanitize !45
  br i1 %634, label %635, label %636, !prof !46, !nosanitize !45

635:                                              ; preds = %625
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

636:                                              ; preds = %625
  %637 = extractvalue { i32, i1 } %633, 0, !nosanitize !45
  %638 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %637, ptr %30, align 4, !tbaa !139
  %639 = zext i32 %632 to i64
  %640 = getelementptr inbounds nuw i8, ptr %638, i64 %639
  store i8 %599, ptr %640, align 1, !tbaa !8
  %641 = add i16 %610, -1
  %642 = zext i8 %599 to i64
  %643 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %642
  %644 = load i8, ptr %643, align 1, !tbaa !8
  %645 = zext i8 %644 to i64
  %646 = getelementptr [4 x i8], ptr %31, i64 %645
  %647 = load i16, ptr %646, align 4, !tbaa !8
  %648 = add i16 %647, 1
  store i16 %648, ptr %646, align 4, !tbaa !8
  %649 = icmp ult i16 %641, 256
  br i1 %649, label %650, label %653

650:                                              ; preds = %636
  %651 = zext nneg i16 %641 to i64
  %652 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %651
  br label %658

653:                                              ; preds = %636
  %654 = lshr i16 %641, 7
  %655 = zext nneg i16 %654 to i64
  %656 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %655
  %657 = getelementptr inbounds nuw i8, ptr %656, i64 256
  br label %658

658:                                              ; preds = %653, %650
  %659 = phi ptr [ %652, %650 ], [ %657, %653 ]
  %660 = load i8, ptr %659, align 1, !tbaa !8
  %661 = zext i8 %660 to i64
  %662 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %661
  %663 = load i16, ptr %662, align 4, !tbaa !8
  %664 = add i16 %663, 1
  store i16 %664, ptr %662, align 4, !tbaa !8
  %665 = load i32, ptr %30, align 4, !tbaa !139
  %666 = load i32, ptr %33, align 8, !tbaa !47
  %667 = icmp eq i32 %665, %666
  %668 = load i32, ptr %22, align 8, !tbaa !77
  %669 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %668, i32 1), !nosanitize !45
  %670 = extractvalue { i32, i1 } %669, 1, !nosanitize !45
  br i1 %670, label %671, label %672, !prof !46, !nosanitize !45

671:                                              ; preds = %658
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

672:                                              ; preds = %658
  %673 = extractvalue { i32, i1 } %669, 0, !nosanitize !45
  %674 = load i32, ptr %3, align 4, !tbaa !75
  %675 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %674, i32 %673), !nosanitize !45
  %676 = extractvalue { i32, i1 } %675, 1, !nosanitize !45
  br i1 %676, label %677, label %678, !prof !46, !nosanitize !45

677:                                              ; preds = %672
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

678:                                              ; preds = %672
  %679 = extractvalue { i32, i1 } %675, 0, !nosanitize !45
  store i32 %679, ptr %3, align 4, !tbaa !75
  %680 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %668, i32 2), !nosanitize !45
  %681 = extractvalue { i32, i1 } %680, 1, !nosanitize !45
  br i1 %681, label %682, label %683, !prof !46, !nosanitize !45

682:                                              ; preds = %678
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

683:                                              ; preds = %678
  %684 = extractvalue { i32, i1 } %680, 0, !nosanitize !45
  store i32 %684, ptr %22, align 8, !tbaa !77
  %685 = load i32, ptr %6, align 4, !tbaa !73
  %686 = xor i32 %685, -1
  %687 = add i32 %668, -3
  %umin = tail call i32 @llvm.umin.i32(i32 %684, i32 %687)
  %688 = freeze i32 %umin
  %.not = icmp ult i32 %688, %686
  br i1 %.not, label %.split, label %719, !prof !93, !nosanitize !45

.split:                                           ; preds = %683
  %689 = icmp eq i32 %684, %688
  br i1 %689, label %.split.split.us, label %.split.split, !prof !46, !nosanitize !45

.split.split.us:                                  ; preds = %.split
  %690 = add i32 %685, 1
  store i32 %690, ptr %6, align 4, !tbaa !73
  %691 = icmp ugt i32 %690, %594
  br i1 %691, label %.split95.us, label %692

692:                                              ; preds = %.split.split.us
  %693 = add i32 %685, 3
  %694 = load ptr, ptr %7, align 8, !tbaa !34
  %695 = load i32, ptr %15, align 8, !tbaa !80
  %696 = load i32, ptr %16, align 8, !tbaa !53
  %697 = shl i32 %695, %696
  %698 = zext i32 %693 to i64
  %699 = getelementptr inbounds nuw i8, ptr %694, i64 %698
  %700 = load i8, ptr %699, align 1, !tbaa !8
  %701 = zext i8 %700 to i32
  %702 = xor i32 %697, %701
  %703 = load i32, ptr %17, align 4, !tbaa !52
  %704 = and i32 %702, %703
  store i32 %704, ptr %15, align 8, !tbaa !80
  %705 = load ptr, ptr %12, align 8, !tbaa !37
  %706 = zext i32 %704 to i64
  %707 = getelementptr inbounds nuw [2 x i8], ptr %705, i64 %706
  %708 = load i16, ptr %707, align 2, !tbaa !62
  %709 = load ptr, ptr %13, align 8, !tbaa !35
  %710 = load i32, ptr %18, align 8, !tbaa !33
  %711 = and i32 %710, %690
  %712 = zext i32 %711 to i64
  %713 = getelementptr inbounds nuw [2 x i8], ptr %709, i64 %712
  store i16 %708, ptr %713, align 2, !tbaa !62
  %714 = trunc i32 %690 to i16
  store i16 %714, ptr %707, align 2, !tbaa !62
  br label %.split95.us

.split95.us:                                      ; preds = %692, %.split.split.us
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

.split.split:                                     ; preds = %.split, %743
  %715 = phi i32 [ %744, %743 ], [ %684, %.split ]
  %716 = phi i32 [ %717, %743 ], [ %685, %.split ]
  %717 = add i32 %716, 1
  store i32 %717, ptr %6, align 4, !tbaa !73
  %718 = icmp ugt i32 %717, %594
  br i1 %718, label %743, label %720

719:                                              ; preds = %683
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

720:                                              ; preds = %.split.split
  %721 = add i32 %716, 3
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
  %739 = and i32 %738, %717
  %740 = zext i32 %739 to i64
  %741 = getelementptr inbounds nuw [2 x i8], ptr %737, i64 %740
  store i16 %736, ptr %741, align 2, !tbaa !62
  %742 = trunc i32 %717 to i16
  store i16 %742, ptr %735, align 2, !tbaa !62
  br label %743

743:                                              ; preds = %720, %.split.split
  %744 = add i32 %715, -1
  store i32 %744, ptr %22, align 8, !tbaa !77
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %.split.split, !llvm.loop !160

746:                                              ; preds = %743
  store i32 0, ptr %34, align 8, !tbaa !79
  store i32 2, ptr %21, align 8, !tbaa !78
  %747 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %717, i32 1), !nosanitize !45
  %748 = extractvalue { i32, i1 } %747, 1, !nosanitize !45
  br i1 %748, label %749, label %750, !prof !46, !nosanitize !45

749:                                              ; preds = %746
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

750:                                              ; preds = %746
  %751 = extractvalue { i32, i1 } %747, 0, !nosanitize !45
  store i32 %751, ptr %6, align 4, !tbaa !73
  br i1 %667, label %752, label %.backedge

752:                                              ; preds = %750
  %753 = load i64, ptr %9, align 8, !tbaa !74
  %754 = icmp sgt i64 %753, -1
  br i1 %754, label %755, label %759

755:                                              ; preds = %752
  %756 = load ptr, ptr %7, align 8, !tbaa !34
  %757 = and i64 %753, 4294967295
  %758 = getelementptr inbounds nuw i8, ptr %756, i64 %757
  br label %759

759:                                              ; preds = %755, %752
  %760 = phi ptr [ %758, %755 ], [ null, %752 ]
  %761 = zext i32 %751 to i64
  %762 = sub nsw i64 %761, %753
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %760, i64 noundef %762, i32 noundef 0) #12
  %763 = load i32, ptr %6, align 4, !tbaa !73
  %764 = zext i32 %763 to i64
  store i64 %764, ptr %9, align 8, !tbaa !74
  %765 = load ptr, ptr %0, align 8, !tbaa !20
  %766 = getelementptr inbounds nuw i8, ptr %765, i64 56
  %767 = load ptr, ptr %766, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %767) #12
  %768 = getelementptr inbounds nuw i8, ptr %767, i64 40
  %769 = load i64, ptr %768, align 8, !tbaa !57
  %770 = getelementptr inbounds nuw i8, ptr %765, i64 32
  %771 = load i32, ptr %770, align 8, !tbaa !107
  %772 = zext i32 %771 to i64
  %773 = tail call i64 @llvm.umin.i64(i64 %769, i64 %772)
  %774 = trunc nuw i64 %773 to i32
  %775 = icmp eq i64 %773, 0
  br i1 %775, label %808, label %776

776:                                              ; preds = %759
  %777 = getelementptr inbounds nuw i8, ptr %765, i64 24
  %778 = load ptr, ptr %777, align 8, !tbaa !106
  %779 = getelementptr inbounds nuw i8, ptr %767, i64 32
  %780 = load ptr, ptr %779, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %778, ptr align 1 %780, i64 %773, i1 false)
  %781 = load ptr, ptr %777, align 8, !tbaa !106
  %782 = getelementptr inbounds nuw i8, ptr %781, i64 %773
  store ptr %782, ptr %777, align 8, !tbaa !106
  %783 = load ptr, ptr %779, align 8, !tbaa !58
  %784 = getelementptr inbounds nuw i8, ptr %783, i64 %773
  store ptr %784, ptr %779, align 8, !tbaa !58
  %785 = getelementptr inbounds nuw i8, ptr %765, i64 40
  %786 = load i64, ptr %785, align 8, !tbaa !108
  %787 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %786, i64 %773), !nosanitize !45
  %788 = extractvalue { i64, i1 } %787, 1, !nosanitize !45
  br i1 %788, label %789, label %790, !prof !46, !nosanitize !45

789:                                              ; preds = %776
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

790:                                              ; preds = %776
  %791 = extractvalue { i64, i1 } %787, 0, !nosanitize !45
  store i64 %791, ptr %785, align 8, !tbaa !108
  %792 = load i32, ptr %770, align 8, !tbaa !107
  %793 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %792, i32 %774), !nosanitize !45
  %794 = extractvalue { i32, i1 } %793, 1, !nosanitize !45
  br i1 %794, label %795, label %796, !prof !46, !nosanitize !45

795:                                              ; preds = %790
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

796:                                              ; preds = %790
  %797 = extractvalue { i32, i1 } %793, 0, !nosanitize !45
  store i32 %797, ptr %770, align 8, !tbaa !107
  %798 = load i64, ptr %768, align 8, !tbaa !57
  %799 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %798, i64 %773), !nosanitize !45
  %800 = extractvalue { i64, i1 } %799, 1, !nosanitize !45
  br i1 %800, label %801, label %802, !prof !46, !nosanitize !45

801:                                              ; preds = %796
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

802:                                              ; preds = %796
  %803 = extractvalue { i64, i1 } %799, 0, !nosanitize !45
  store i64 %803, ptr %768, align 8, !tbaa !57
  %804 = icmp eq i64 %803, 0
  br i1 %804, label %805, label %808

805:                                              ; preds = %802
  %806 = getelementptr inbounds nuw i8, ptr %767, i64 16
  %807 = load ptr, ptr %806, align 8, !tbaa !40
  store ptr %807, ptr %779, align 8, !tbaa !58
  br label %808

808:                                              ; preds = %805, %802, %759
  %809 = load ptr, ptr %0, align 8, !tbaa !20
  %810 = getelementptr inbounds nuw i8, ptr %809, i64 32
  %811 = load i32, ptr %810, align 8, !tbaa !107
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %.loopexit45, label %.backedge

813:                                              ; preds = %578
  %814 = load i32, ptr %34, align 8, !tbaa !79
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %935, label %816

816:                                              ; preds = %813
  %817 = load i32, ptr %6, align 4, !tbaa !73
  %818 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %817, i32 1), !nosanitize !45
  %819 = extractvalue { i32, i1 } %818, 1, !nosanitize !45
  br i1 %819, label %820, label %821, !prof !46, !nosanitize !45

820:                                              ; preds = %816
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

821:                                              ; preds = %816
  %822 = extractvalue { i32, i1 } %818, 0, !nosanitize !45
  %823 = load ptr, ptr %7, align 8, !tbaa !34
  %824 = zext i32 %822 to i64
  %825 = getelementptr inbounds nuw i8, ptr %823, i64 %824
  %826 = load i8, ptr %825, align 1, !tbaa !8
  %827 = load i32, ptr %30, align 4, !tbaa !139
  %828 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %827, i32 1), !nosanitize !45
  %829 = extractvalue { i32, i1 } %828, 1, !nosanitize !45
  br i1 %829, label %830, label %831, !prof !46, !nosanitize !45

830:                                              ; preds = %821
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

831:                                              ; preds = %821
  %832 = extractvalue { i32, i1 } %828, 0, !nosanitize !45
  %833 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %832, ptr %30, align 4, !tbaa !139
  %834 = zext i32 %827 to i64
  %835 = getelementptr inbounds nuw i8, ptr %833, i64 %834
  store i8 0, ptr %835, align 1, !tbaa !8
  %836 = load i32, ptr %30, align 4, !tbaa !139
  %837 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %836, i32 1), !nosanitize !45
  %838 = extractvalue { i32, i1 } %837, 1, !nosanitize !45
  br i1 %838, label %839, label %840, !prof !46, !nosanitize !45

839:                                              ; preds = %831
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

840:                                              ; preds = %831
  %841 = extractvalue { i32, i1 } %837, 0, !nosanitize !45
  %842 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %841, ptr %30, align 4, !tbaa !139
  %843 = zext i32 %836 to i64
  %844 = getelementptr inbounds nuw i8, ptr %842, i64 %843
  store i8 0, ptr %844, align 1, !tbaa !8
  %845 = load i32, ptr %30, align 4, !tbaa !139
  %846 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %845, i32 1), !nosanitize !45
  %847 = extractvalue { i32, i1 } %846, 1, !nosanitize !45
  br i1 %847, label %848, label %849, !prof !46, !nosanitize !45

848:                                              ; preds = %840
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

849:                                              ; preds = %840
  %850 = extractvalue { i32, i1 } %846, 0, !nosanitize !45
  %851 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %850, ptr %30, align 4, !tbaa !139
  %852 = zext i32 %845 to i64
  %853 = getelementptr inbounds nuw i8, ptr %851, i64 %852
  store i8 %826, ptr %853, align 1, !tbaa !8
  %854 = zext i8 %826 to i64
  %855 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %854
  %856 = load i16, ptr %855, align 4, !tbaa !8
  %857 = add i16 %856, 1
  store i16 %857, ptr %855, align 4, !tbaa !8
  %858 = load i32, ptr %30, align 4, !tbaa !139
  %859 = load i32, ptr %33, align 8, !tbaa !47
  %860 = icmp eq i32 %858, %859
  br i1 %860, label %861, label %918

861:                                              ; preds = %849
  %862 = load i64, ptr %9, align 8, !tbaa !74
  %863 = icmp sgt i64 %862, -1
  br i1 %863, label %864, label %868

864:                                              ; preds = %861
  %865 = load ptr, ptr %7, align 8, !tbaa !34
  %866 = and i64 %862, 4294967295
  %867 = getelementptr inbounds nuw i8, ptr %865, i64 %866
  br label %868

868:                                              ; preds = %864, %861
  %869 = phi ptr [ %867, %864 ], [ null, %861 ]
  %870 = load i32, ptr %6, align 4, !tbaa !73
  %871 = zext i32 %870 to i64
  %872 = sub nsw i64 %871, %862
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %869, i64 noundef %872, i32 noundef 0) #12
  %873 = load i32, ptr %6, align 4, !tbaa !73
  %874 = zext i32 %873 to i64
  store i64 %874, ptr %9, align 8, !tbaa !74
  %875 = load ptr, ptr %0, align 8, !tbaa !20
  %876 = getelementptr inbounds nuw i8, ptr %875, i64 56
  %877 = load ptr, ptr %876, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %877) #12
  %878 = getelementptr inbounds nuw i8, ptr %877, i64 40
  %879 = load i64, ptr %878, align 8, !tbaa !57
  %880 = getelementptr inbounds nuw i8, ptr %875, i64 32
  %881 = load i32, ptr %880, align 8, !tbaa !107
  %882 = zext i32 %881 to i64
  %883 = tail call i64 @llvm.umin.i64(i64 %879, i64 %882)
  %884 = trunc nuw i64 %883 to i32
  %885 = icmp eq i64 %883, 0
  br i1 %885, label %918, label %886

886:                                              ; preds = %868
  %887 = getelementptr inbounds nuw i8, ptr %875, i64 24
  %888 = load ptr, ptr %887, align 8, !tbaa !106
  %889 = getelementptr inbounds nuw i8, ptr %877, i64 32
  %890 = load ptr, ptr %889, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %888, ptr align 1 %890, i64 %883, i1 false)
  %891 = load ptr, ptr %887, align 8, !tbaa !106
  %892 = getelementptr inbounds nuw i8, ptr %891, i64 %883
  store ptr %892, ptr %887, align 8, !tbaa !106
  %893 = load ptr, ptr %889, align 8, !tbaa !58
  %894 = getelementptr inbounds nuw i8, ptr %893, i64 %883
  store ptr %894, ptr %889, align 8, !tbaa !58
  %895 = getelementptr inbounds nuw i8, ptr %875, i64 40
  %896 = load i64, ptr %895, align 8, !tbaa !108
  %897 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %896, i64 %883), !nosanitize !45
  %898 = extractvalue { i64, i1 } %897, 1, !nosanitize !45
  br i1 %898, label %899, label %900, !prof !46, !nosanitize !45

899:                                              ; preds = %886
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

900:                                              ; preds = %886
  %901 = extractvalue { i64, i1 } %897, 0, !nosanitize !45
  store i64 %901, ptr %895, align 8, !tbaa !108
  %902 = load i32, ptr %880, align 8, !tbaa !107
  %903 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %902, i32 %884), !nosanitize !45
  %904 = extractvalue { i32, i1 } %903, 1, !nosanitize !45
  br i1 %904, label %905, label %906, !prof !46, !nosanitize !45

905:                                              ; preds = %900
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

906:                                              ; preds = %900
  %907 = extractvalue { i32, i1 } %903, 0, !nosanitize !45
  store i32 %907, ptr %880, align 8, !tbaa !107
  %908 = load i64, ptr %878, align 8, !tbaa !57
  %909 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %908, i64 %883), !nosanitize !45
  %910 = extractvalue { i64, i1 } %909, 1, !nosanitize !45
  br i1 %910, label %911, label %912, !prof !46, !nosanitize !45

911:                                              ; preds = %906
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

912:                                              ; preds = %906
  %913 = extractvalue { i64, i1 } %909, 0, !nosanitize !45
  store i64 %913, ptr %878, align 8, !tbaa !57
  %914 = icmp eq i64 %913, 0
  br i1 %914, label %915, label %918

915:                                              ; preds = %912
  %916 = getelementptr inbounds nuw i8, ptr %877, i64 16
  %917 = load ptr, ptr %916, align 8, !tbaa !40
  store ptr %917, ptr %889, align 8, !tbaa !58
  br label %918

918:                                              ; preds = %915, %912, %868, %849
  %919 = load i32, ptr %6, align 4, !tbaa !73
  %920 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %919, i32 1), !nosanitize !45
  %921 = extractvalue { i32, i1 } %920, 1, !nosanitize !45
  br i1 %921, label %922, label %923, !prof !46, !nosanitize !45

922:                                              ; preds = %918
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

923:                                              ; preds = %918
  %924 = extractvalue { i32, i1 } %920, 0, !nosanitize !45
  store i32 %924, ptr %6, align 4, !tbaa !73
  %925 = load i32, ptr %3, align 4, !tbaa !75
  %926 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %925, i32 1), !nosanitize !45
  %927 = extractvalue { i32, i1 } %926, 1, !nosanitize !45
  br i1 %927, label %928, label %929, !prof !46, !nosanitize !45

928:                                              ; preds = %923
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

929:                                              ; preds = %923
  %930 = extractvalue { i32, i1 } %926, 0, !nosanitize !45
  store i32 %930, ptr %3, align 4, !tbaa !75
  %931 = load ptr, ptr %0, align 8, !tbaa !20
  %932 = getelementptr inbounds nuw i8, ptr %931, i64 32
  %933 = load i32, ptr %932, align 8, !tbaa !107
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %.loopexit45, label %.backedge

935:                                              ; preds = %813
  store i32 1, ptr %34, align 8, !tbaa !79
  %936 = load i32, ptr %6, align 4, !tbaa !73
  %937 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %936, i32 1), !nosanitize !45
  %938 = extractvalue { i32, i1 } %937, 1, !nosanitize !45
  br i1 %938, label %939, label %940, !prof !46, !nosanitize !45

939:                                              ; preds = %935
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

940:                                              ; preds = %935
  %941 = extractvalue { i32, i1 } %937, 0, !nosanitize !45
  store i32 %941, ptr %6, align 4, !tbaa !73
  %942 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %582, i32 1), !nosanitize !45
  %943 = extractvalue { i32, i1 } %942, 1, !nosanitize !45
  br i1 %943, label %944, label %945, !prof !46, !nosanitize !45

944:                                              ; preds = %940
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

945:                                              ; preds = %940
  %946 = extractvalue { i32, i1 } %942, 0, !nosanitize !45
  store i32 %946, ptr %3, align 4, !tbaa !75
  br label %.backedge

.backedge:                                        ; preds = %945, %929, %808, %750
  br label %36

947:                                              ; preds = %357
  %948 = load i32, ptr %34, align 8, !tbaa !79
  %949 = icmp eq i32 %948, 0
  %950 = load i32, ptr %6, align 4, !tbaa !73
  br i1 %949, label %993, label %951

951:                                              ; preds = %947
  %952 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %950, i32 1), !nosanitize !45
  %953 = extractvalue { i32, i1 } %952, 1, !nosanitize !45
  br i1 %953, label %954, label %955, !prof !46, !nosanitize !45

954:                                              ; preds = %951
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

955:                                              ; preds = %951
  %956 = extractvalue { i32, i1 } %952, 0, !nosanitize !45
  %957 = load ptr, ptr %7, align 8, !tbaa !34
  %958 = zext i32 %956 to i64
  %959 = getelementptr inbounds nuw i8, ptr %957, i64 %958
  %960 = load i8, ptr %959, align 1, !tbaa !8
  %961 = load i32, ptr %30, align 4, !tbaa !139
  %962 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %961, i32 1), !nosanitize !45
  %963 = extractvalue { i32, i1 } %962, 1, !nosanitize !45
  br i1 %963, label %964, label %965, !prof !46, !nosanitize !45

964:                                              ; preds = %955
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

965:                                              ; preds = %955
  %966 = extractvalue { i32, i1 } %962, 0, !nosanitize !45
  %967 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %966, ptr %30, align 4, !tbaa !139
  %968 = zext i32 %961 to i64
  %969 = getelementptr inbounds nuw i8, ptr %967, i64 %968
  store i8 0, ptr %969, align 1, !tbaa !8
  %970 = load i32, ptr %30, align 4, !tbaa !139
  %971 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %970, i32 1), !nosanitize !45
  %972 = extractvalue { i32, i1 } %971, 1, !nosanitize !45
  br i1 %972, label %973, label %974, !prof !46, !nosanitize !45

973:                                              ; preds = %965
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

974:                                              ; preds = %965
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

983:                                              ; preds = %974
  %984 = extractvalue { i32, i1 } %980, 0, !nosanitize !45
  %985 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %984, ptr %30, align 4, !tbaa !139
  %986 = zext i32 %979 to i64
  %987 = getelementptr inbounds nuw i8, ptr %985, i64 %986
  store i8 %960, ptr %987, align 1, !tbaa !8
  %988 = zext i8 %960 to i64
  %989 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %988
  %990 = load i16, ptr %989, align 4, !tbaa !8
  %991 = add i16 %990, 1
  store i16 %991, ptr %989, align 4, !tbaa !8
  store i32 0, ptr %34, align 8, !tbaa !79
  %992 = load i32, ptr %6, align 4, !tbaa !73
  br label %993

993:                                              ; preds = %983, %947
  %994 = phi i32 [ %992, %983 ], [ %950, %947 ]
  %995 = tail call i32 @llvm.umin.i32(i32 %994, i32 2)
  store i32 %995, ptr %10, align 4, !tbaa !76
  %996 = icmp eq i32 %1, 4
  br i1 %996, label %997, label %1059

997:                                              ; preds = %993
  %998 = load i64, ptr %9, align 8, !tbaa !74
  %999 = icmp sgt i64 %998, -1
  br i1 %999, label %1000, label %1004

1000:                                             ; preds = %997
  %1001 = load ptr, ptr %7, align 8, !tbaa !34
  %1002 = and i64 %998, 4294967295
  %1003 = getelementptr inbounds nuw i8, ptr %1001, i64 %1002
  br label %1004

1004:                                             ; preds = %1000, %997
  %1005 = phi ptr [ %1003, %1000 ], [ null, %997 ]
  %1006 = zext i32 %994 to i64
  %1007 = sub nsw i64 %1006, %998
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1005, i64 noundef %1007, i32 noundef 1) #12
  %1008 = load i32, ptr %6, align 4, !tbaa !73
  %1009 = zext i32 %1008 to i64
  store i64 %1009, ptr %9, align 8, !tbaa !74
  %1010 = load ptr, ptr %0, align 8, !tbaa !20
  %1011 = getelementptr inbounds nuw i8, ptr %1010, i64 56
  %1012 = load ptr, ptr %1011, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1012) #12
  %1013 = getelementptr inbounds nuw i8, ptr %1012, i64 40
  %1014 = load i64, ptr %1013, align 8, !tbaa !57
  %1015 = getelementptr inbounds nuw i8, ptr %1010, i64 32
  %1016 = load i32, ptr %1015, align 8, !tbaa !107
  %1017 = zext i32 %1016 to i64
  %1018 = tail call i64 @llvm.umin.i64(i64 %1014, i64 %1017)
  %1019 = trunc nuw i64 %1018 to i32
  %1020 = icmp eq i64 %1018, 0
  br i1 %1020, label %1053, label %1021

1021:                                             ; preds = %1004
  %1022 = getelementptr inbounds nuw i8, ptr %1010, i64 24
  %1023 = load ptr, ptr %1022, align 8, !tbaa !106
  %1024 = getelementptr inbounds nuw i8, ptr %1012, i64 32
  %1025 = load ptr, ptr %1024, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1023, ptr align 1 %1025, i64 %1018, i1 false)
  %1026 = load ptr, ptr %1022, align 8, !tbaa !106
  %1027 = getelementptr inbounds nuw i8, ptr %1026, i64 %1018
  store ptr %1027, ptr %1022, align 8, !tbaa !106
  %1028 = load ptr, ptr %1024, align 8, !tbaa !58
  %1029 = getelementptr inbounds nuw i8, ptr %1028, i64 %1018
  store ptr %1029, ptr %1024, align 8, !tbaa !58
  %1030 = getelementptr inbounds nuw i8, ptr %1010, i64 40
  %1031 = load i64, ptr %1030, align 8, !tbaa !108
  %1032 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1031, i64 %1018), !nosanitize !45
  %1033 = extractvalue { i64, i1 } %1032, 1, !nosanitize !45
  br i1 %1033, label %1034, label %1035, !prof !46, !nosanitize !45

1034:                                             ; preds = %1021
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1035:                                             ; preds = %1021
  %1036 = extractvalue { i64, i1 } %1032, 0, !nosanitize !45
  store i64 %1036, ptr %1030, align 8, !tbaa !108
  %1037 = load i32, ptr %1015, align 8, !tbaa !107
  %1038 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1037, i32 %1019), !nosanitize !45
  %1039 = extractvalue { i32, i1 } %1038, 1, !nosanitize !45
  br i1 %1039, label %1040, label %1041, !prof !46, !nosanitize !45

1040:                                             ; preds = %1035
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1041:                                             ; preds = %1035
  %1042 = extractvalue { i32, i1 } %1038, 0, !nosanitize !45
  store i32 %1042, ptr %1015, align 8, !tbaa !107
  %1043 = load i64, ptr %1013, align 8, !tbaa !57
  %1044 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1043, i64 %1018), !nosanitize !45
  %1045 = extractvalue { i64, i1 } %1044, 1, !nosanitize !45
  br i1 %1045, label %1046, label %1047, !prof !46, !nosanitize !45

1046:                                             ; preds = %1041
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1047:                                             ; preds = %1041
  %1048 = extractvalue { i64, i1 } %1044, 0, !nosanitize !45
  store i64 %1048, ptr %1013, align 8, !tbaa !57
  %1049 = icmp eq i64 %1048, 0
  br i1 %1049, label %1050, label %1053

1050:                                             ; preds = %1047
  %1051 = getelementptr inbounds nuw i8, ptr %1012, i64 16
  %1052 = load ptr, ptr %1051, align 8, !tbaa !40
  store ptr %1052, ptr %1024, align 8, !tbaa !58
  br label %1053

1053:                                             ; preds = %1050, %1047, %1004
  %1054 = load ptr, ptr %0, align 8, !tbaa !20
  %1055 = getelementptr inbounds nuw i8, ptr %1054, i64 32
  %1056 = load i32, ptr %1055, align 8, !tbaa !107
  %1057 = icmp eq i32 %1056, 0
  %1058 = select i1 %1057, i32 2, i32 3
  br label %.loopexit45

1059:                                             ; preds = %993
  %1060 = load i32, ptr %30, align 4, !tbaa !139
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1123, label %1062

1062:                                             ; preds = %1059
  %1063 = load i64, ptr %9, align 8, !tbaa !74
  %1064 = icmp sgt i64 %1063, -1
  br i1 %1064, label %1065, label %1069

1065:                                             ; preds = %1062
  %1066 = load ptr, ptr %7, align 8, !tbaa !34
  %1067 = and i64 %1063, 4294967295
  %1068 = getelementptr inbounds nuw i8, ptr %1066, i64 %1067
  br label %1069

1069:                                             ; preds = %1065, %1062
  %1070 = phi ptr [ %1068, %1065 ], [ null, %1062 ]
  %1071 = zext i32 %994 to i64
  %1072 = sub nsw i64 %1071, %1063
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1070, i64 noundef %1072, i32 noundef 0) #12
  %1073 = load i32, ptr %6, align 4, !tbaa !73
  %1074 = zext i32 %1073 to i64
  store i64 %1074, ptr %9, align 8, !tbaa !74
  %1075 = load ptr, ptr %0, align 8, !tbaa !20
  %1076 = getelementptr inbounds nuw i8, ptr %1075, i64 56
  %1077 = load ptr, ptr %1076, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1077) #12
  %1078 = getelementptr inbounds nuw i8, ptr %1077, i64 40
  %1079 = load i64, ptr %1078, align 8, !tbaa !57
  %1080 = getelementptr inbounds nuw i8, ptr %1075, i64 32
  %1081 = load i32, ptr %1080, align 8, !tbaa !107
  %1082 = zext i32 %1081 to i64
  %1083 = tail call i64 @llvm.umin.i64(i64 %1079, i64 %1082)
  %1084 = trunc nuw i64 %1083 to i32
  %1085 = icmp eq i64 %1083, 0
  br i1 %1085, label %1118, label %1086

1086:                                             ; preds = %1069
  %1087 = getelementptr inbounds nuw i8, ptr %1075, i64 24
  %1088 = load ptr, ptr %1087, align 8, !tbaa !106
  %1089 = getelementptr inbounds nuw i8, ptr %1077, i64 32
  %1090 = load ptr, ptr %1089, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1088, ptr align 1 %1090, i64 %1083, i1 false)
  %1091 = load ptr, ptr %1087, align 8, !tbaa !106
  %1092 = getelementptr inbounds nuw i8, ptr %1091, i64 %1083
  store ptr %1092, ptr %1087, align 8, !tbaa !106
  %1093 = load ptr, ptr %1089, align 8, !tbaa !58
  %1094 = getelementptr inbounds nuw i8, ptr %1093, i64 %1083
  store ptr %1094, ptr %1089, align 8, !tbaa !58
  %1095 = getelementptr inbounds nuw i8, ptr %1075, i64 40
  %1096 = load i64, ptr %1095, align 8, !tbaa !108
  %1097 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1096, i64 %1083), !nosanitize !45
  %1098 = extractvalue { i64, i1 } %1097, 1, !nosanitize !45
  br i1 %1098, label %1099, label %1100, !prof !46, !nosanitize !45

1099:                                             ; preds = %1086
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1100:                                             ; preds = %1086
  %1101 = extractvalue { i64, i1 } %1097, 0, !nosanitize !45
  store i64 %1101, ptr %1095, align 8, !tbaa !108
  %1102 = load i32, ptr %1080, align 8, !tbaa !107
  %1103 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1102, i32 %1084), !nosanitize !45
  %1104 = extractvalue { i32, i1 } %1103, 1, !nosanitize !45
  br i1 %1104, label %1105, label %1106, !prof !46, !nosanitize !45

1105:                                             ; preds = %1100
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1106:                                             ; preds = %1100
  %1107 = extractvalue { i32, i1 } %1103, 0, !nosanitize !45
  store i32 %1107, ptr %1080, align 8, !tbaa !107
  %1108 = load i64, ptr %1078, align 8, !tbaa !57
  %1109 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1108, i64 %1083), !nosanitize !45
  %1110 = extractvalue { i64, i1 } %1109, 1, !nosanitize !45
  br i1 %1110, label %1111, label %1112, !prof !46, !nosanitize !45

1111:                                             ; preds = %1106
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1112:                                             ; preds = %1106
  %1113 = extractvalue { i64, i1 } %1109, 0, !nosanitize !45
  store i64 %1113, ptr %1078, align 8, !tbaa !57
  %1114 = icmp eq i64 %1113, 0
  br i1 %1114, label %1115, label %1118

1115:                                             ; preds = %1112
  %1116 = getelementptr inbounds nuw i8, ptr %1077, i64 16
  %1117 = load ptr, ptr %1116, align 8, !tbaa !40
  store ptr %1117, ptr %1089, align 8, !tbaa !58
  br label %1118

1118:                                             ; preds = %1115, %1112, %1069
  %1119 = load ptr, ptr %0, align 8, !tbaa !20
  %1120 = getelementptr inbounds nuw i8, ptr %1119, i64 32
  %1121 = load i32, ptr %1120, align 8, !tbaa !107
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %.loopexit45, label %1123

1123:                                             ; preds = %1118, %1059
  br label %.loopexit45

.loopexit45:                                      ; preds = %929, %808, %353, %1123, %1118, %1053
  %1124 = phi i32 [ 0, %1118 ], [ %1058, %1053 ], [ 1, %1123 ], [ 0, %353 ], [ 0, %808 ], [ 0, %929 ]
  ret i32 %1124
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nomerge noreturn nounwind }

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
