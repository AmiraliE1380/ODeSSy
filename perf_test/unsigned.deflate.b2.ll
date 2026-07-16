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
  br i1 %4, label %802, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %802, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %802, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %802, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %802

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %802 [
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
  br i1 %24, label %802, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !30
  switch i32 %27, label %34 [
    i32 2, label %802
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %802

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !75
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %802

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !75
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %802

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

105:                                              ; preds = %375, %80
  %106 = phi i32 [ %303, %375 ], [ %104, %80 ]
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
  br i1 %257, label %380, label %258

258:                                              ; preds = %250
  %259 = load ptr, ptr %92, align 8, !tbaa !34
  %260 = zext i32 %252 to i64
  %261 = getelementptr inbounds nuw i8, ptr %259, i64 %260
  %262 = zext i32 %251 to i64
  %263 = getelementptr inbounds nuw i8, ptr %261, i64 %262
  %264 = tail call i32 @llvm.umin.i32(i32 %256, i32 %253)
  %265 = icmp eq i32 %253, 0
  br i1 %265, label %297, label %266

266:                                              ; preds = %258
  %267 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %256, i32 %264), !nosanitize !45
  %268 = extractvalue { i32, i1 } %267, 1, !nosanitize !45
  br i1 %268, label %269, label %270, !prof !46, !nosanitize !45

269:                                              ; preds = %266
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

270:                                              ; preds = %266
  %271 = extractvalue { i32, i1 } %267, 0, !nosanitize !45
  store i32 %271, ptr %255, align 8, !tbaa !81
  %272 = load ptr, ptr %254, align 8, !tbaa !82
  %273 = zext i32 %264 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %263, ptr align 1 %272, i64 %273, i1 false)
  %274 = getelementptr inbounds nuw i8, ptr %254, i64 56
  %275 = load ptr, ptr %274, align 8, !tbaa !19
  %276 = getelementptr inbounds nuw i8, ptr %275, i64 48
  %277 = load i32, ptr %276, align 8, !tbaa !30
  switch i32 %277, label %286 [
    i32 1, label %278
    i32 2, label %282
  ]

278:                                              ; preds = %270
  %279 = getelementptr inbounds nuw i8, ptr %254, i64 96
  %280 = load i64, ptr %279, align 8, !tbaa !59
  %281 = tail call i64 @adler32(i64 noundef %280, ptr noundef %263, i32 noundef %264) #12
  store i64 %281, ptr %279, align 8, !tbaa !59
  br label %286

282:                                              ; preds = %270
  %283 = getelementptr inbounds nuw i8, ptr %254, i64 96
  %284 = load i64, ptr %283, align 8, !tbaa !59
  %285 = tail call i64 @crc32(i64 noundef %284, ptr noundef %263, i32 noundef %264) #12
  store i64 %285, ptr %283, align 8, !tbaa !59
  br label %286

286:                                              ; preds = %282, %278, %270
  %287 = load ptr, ptr %254, align 8, !tbaa !82
  %288 = getelementptr inbounds nuw i8, ptr %287, i64 %273
  store ptr %288, ptr %254, align 8, !tbaa !82
  %289 = getelementptr inbounds nuw i8, ptr %254, i64 16
  %290 = load i64, ptr %289, align 8, !tbaa !55
  %291 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %290, i64 %273), !nosanitize !45
  %292 = extractvalue { i64, i1 } %291, 1, !nosanitize !45
  br i1 %292, label %293, label %294, !prof !46, !nosanitize !45

293:                                              ; preds = %286
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

294:                                              ; preds = %286
  %295 = extractvalue { i64, i1 } %291, 0, !nosanitize !45
  store i64 %295, ptr %289, align 8, !tbaa !55
  %296 = load i32, ptr %82, align 4, !tbaa !75
  br label %297

297:                                              ; preds = %294, %258
  %298 = phi i32 [ %251, %258 ], [ %296, %294 ]
  %299 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %298, i32 %264), !nosanitize !45
  %300 = extractvalue { i32, i1 } %299, 1, !nosanitize !45
  br i1 %300, label %301, label %302, !prof !46, !nosanitize !45

301:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

302:                                              ; preds = %297
  %303 = extractvalue { i32, i1 } %299, 0, !nosanitize !45
  store i32 %303, ptr %82, align 4, !tbaa !75
  %304 = load i32, ptr %95, align 4, !tbaa !76
  %305 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %303, i32 %304), !nosanitize !45
  %306 = extractvalue { i32, i1 } %305, 1, !nosanitize !45
  br i1 %306, label %307, label %308, !prof !46, !nosanitize !45

307:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

308:                                              ; preds = %302
  %309 = extractvalue { i32, i1 } %305, 0, !nosanitize !45
  %310 = icmp ugt i32 %309, 2
  br i1 %310, label %311, label %.loopexit45

311:                                              ; preds = %308
  %312 = load i32, ptr %90, align 4, !tbaa !73
  %313 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %312, i32 %304), !nosanitize !45
  %314 = extractvalue { i32, i1 } %313, 0, !nosanitize !45
  %315 = extractvalue { i32, i1 } %313, 1, !nosanitize !45
  br i1 %315, label %316, label %317, !prof !46, !nosanitize !45

316:                                              ; preds = %311
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

317:                                              ; preds = %311
  %318 = load ptr, ptr %92, align 8, !tbaa !34
  %319 = zext i32 %314 to i64
  %320 = getelementptr inbounds nuw i8, ptr %318, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !8
  %322 = zext i8 %321 to i32
  store i32 %322, ptr %100, align 8, !tbaa !80
  %323 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %314, i32 1), !nosanitize !45
  %324 = extractvalue { i32, i1 } %323, 1, !nosanitize !45
  br i1 %324, label %325, label %326, !prof !46, !nosanitize !45

325:                                              ; preds = %317
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

326:                                              ; preds = %317
  %327 = extractvalue { i32, i1 } %323, 0, !nosanitize !45
  %328 = load i32, ptr %101, align 8, !tbaa !53
  %329 = shl i32 %322, %328
  %330 = zext i32 %327 to i64
  %331 = getelementptr inbounds nuw i8, ptr %318, i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !8
  %333 = zext i8 %332 to i32
  %334 = xor i32 %329, %333
  %335 = load i32, ptr %102, align 4, !tbaa !52
  %336 = and i32 %334, %335
  store i32 %336, ptr %100, align 8, !tbaa !80
  br label %337

337:                                              ; preds = %370, %326
  %338 = phi i32 [ %336, %326 ], [ %355, %370 ]
  %339 = phi i32 [ %304, %326 ], [ %366, %370 ]
  %340 = phi i32 [ %314, %326 ], [ %371, %370 ]
  %341 = icmp eq i32 %339, 0
  br i1 %341, label %.loopexit45, label %342

342:                                              ; preds = %337
  %343 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %340, i32 3), !nosanitize !45
  %344 = extractvalue { i32, i1 } %343, 1, !nosanitize !45
  br i1 %344, label %345, label %346, !prof !46, !nosanitize !45

345:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

346:                                              ; preds = %342
  %347 = shl i32 %338, %328
  %348 = extractvalue { i32, i1 } %343, 0, !nosanitize !45
  %349 = add i32 %348, -1
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds nuw i8, ptr %318, i64 %350
  %352 = load i8, ptr %351, align 1, !tbaa !8
  %353 = zext i8 %352 to i32
  %354 = xor i32 %347, %353
  %355 = and i32 %354, %335
  store i32 %355, ptr %100, align 8, !tbaa !80
  %356 = load ptr, ptr %97, align 8, !tbaa !37
  %357 = zext i32 %355 to i64
  %358 = getelementptr inbounds nuw [2 x i8], ptr %356, i64 %357
  %359 = load i16, ptr %358, align 2, !tbaa !62
  %360 = load ptr, ptr %98, align 8, !tbaa !35
  %361 = load i32, ptr %103, align 8, !tbaa !33
  %362 = and i32 %361, %340
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds nuw [2 x i8], ptr %360, i64 %363
  store i16 %359, ptr %364, align 2, !tbaa !62
  %365 = trunc i32 %340 to i16
  store i16 %365, ptr %358, align 2, !tbaa !62
  %366 = add i32 %339, -1
  store i32 %366, ptr %95, align 4, !tbaa !76
  %367 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %303, i32 %366), !nosanitize !45
  %368 = extractvalue { i32, i1 } %367, 1, !nosanitize !45
  br i1 %368, label %369, label %370, !prof !46, !nosanitize !45

369:                                              ; preds = %346
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

370:                                              ; preds = %346
  %371 = add nuw i32 %340, 1
  %372 = extractvalue { i32, i1 } %367, 0, !nosanitize !45
  %373 = icmp ult i32 %372, 3
  br i1 %373, label %.loopexit45, label %337, !llvm.loop !91

.loopexit45:                                      ; preds = %370, %337, %308
  %374 = icmp ult i32 %303, 262
  br i1 %374, label %375, label %380

375:                                              ; preds = %.loopexit45
  %376 = load ptr, ptr %15, align 8, !tbaa !20
  %377 = getelementptr inbounds nuw i8, ptr %376, i64 8
  %378 = load i32, ptr %377, align 8, !tbaa !81
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %105, !llvm.loop !92

380:                                              ; preds = %375, %.loopexit45, %250
  %381 = phi i32 [ %303, %375 ], [ %303, %.loopexit45 ], [ %251, %250 ]
  %382 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %383 = load i64, ptr %382, align 8, !tbaa !38
  %384 = load i64, ptr %89, align 8, !tbaa !61
  %385 = icmp ult i64 %383, %384
  br i1 %385, label %386, label %425

386:                                              ; preds = %380
  %387 = load i32, ptr %90, align 4, !tbaa !73
  %388 = zext i32 %387 to i64
  %389 = zext i32 %381 to i64
  %390 = add nuw nsw i64 %388, %389
  %391 = icmp ult i64 %383, %390
  br i1 %391, label %392, label %402

392:                                              ; preds = %386
  %393 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %384, i64 %390), !nosanitize !45
  %394 = extractvalue { i64, i1 } %393, 1, !nosanitize !45
  br i1 %394, label %395, label %396, !prof !46, !nosanitize !45

395:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

396:                                              ; preds = %392
  %397 = extractvalue { i64, i1 } %393, 0, !nosanitize !45
  %398 = tail call i64 @llvm.umin.i64(i64 %397, i64 258)
  %399 = load ptr, ptr %92, align 8, !tbaa !34
  %400 = getelementptr inbounds nuw i8, ptr %399, i64 %390
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %400, i8 0, i64 %398, i1 false)
  %401 = add nuw nsw i64 %398, %390
  br label %422

402:                                              ; preds = %386
  %403 = add nuw nsw i64 %390, 258
  %404 = icmp ult i64 %383, %403
  br i1 %404, label %405, label %425

405:                                              ; preds = %402
  %406 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %384, i64 %383), !nosanitize !45
  %407 = extractvalue { i64, i1 } %406, 1, !nosanitize !45
  br i1 %407, label %408, label %409, !prof !46, !nosanitize !45

408:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

409:                                              ; preds = %405
  %410 = sub nuw nsw i64 %403, %383
  %411 = extractvalue { i64, i1 } %406, 0, !nosanitize !45
  %412 = tail call i64 @llvm.umin.i64(i64 %410, i64 %411)
  %413 = load ptr, ptr %92, align 8, !tbaa !34
  %414 = getelementptr inbounds nuw i8, ptr %413, i64 %383
  %415 = and i64 %412, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %414, i8 0, i64 %415, i1 false)
  %416 = load i64, ptr %382, align 8, !tbaa !38
  %417 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %416, i64 %412), !nosanitize !45
  %418 = extractvalue { i64, i1 } %417, 1, !nosanitize !45
  br i1 %418, label %419, label %420, !prof !46, !nosanitize !45

419:                                              ; preds = %409
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

420:                                              ; preds = %409
  %421 = extractvalue { i64, i1 } %417, 0, !nosanitize !45
  br label %422

422:                                              ; preds = %420, %396
  %423 = phi i64 [ %401, %396 ], [ %421, %420 ]
  store i64 %423, ptr %382, align 8, !tbaa !38
  %424 = load i32, ptr %82, align 4, !tbaa !75
  br label %425

425:                                              ; preds = %422, %402, %380
  %426 = phi i32 [ %381, %380 ], [ %381, %402 ], [ %424, %422 ]
  %427 = icmp ugt i32 %426, 2
  br i1 %427, label %.preheader, label %.loopexit44

.preheader:                                       ; preds = %425, %788
  %428 = phi i32 [ %789, %788 ], [ %426, %425 ]
  %429 = load i32, ptr %90, align 4, !tbaa !73
  %430 = load i32, ptr %101, align 8, !tbaa !53
  %431 = load ptr, ptr %92, align 8, !tbaa !34
  %432 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %429)
  %433 = add i32 %428, -3
  %434 = icmp ugt i32 %432, %433
  br i1 %434, label %435, label %464, !prof !93, !nosanitize !45

435:                                              ; preds = %.preheader
  %436 = load i32, ptr %100, align 8, !tbaa !80
  %437 = add i32 %428, -2
  %438 = load i32, ptr %102, align 4, !tbaa !52
  %439 = load ptr, ptr %97, align 8, !tbaa !37
  %440 = load ptr, ptr %98, align 8, !tbaa !35
  %441 = load i32, ptr %103, align 8, !tbaa !33
  %442 = zext i32 %429 to i64
  br label %443

443:                                              ; preds = %443, %435
  %indvars.iv = phi i64 [ %indvars.iv.next, %443 ], [ %442, %435 ]
  %444 = phi i32 [ %454, %443 ], [ %436, %435 ]
  %445 = phi i32 [ %462, %443 ], [ %437, %435 ]
  %446 = shl i32 %444, %430
  %447 = trunc nuw i64 %indvars.iv to i32
  %448 = add nuw i64 %indvars.iv, 2
  %449 = and i64 %448, 4294967295
  %450 = getelementptr inbounds nuw i8, ptr %431, i64 %449
  %451 = load i8, ptr %450, align 1, !tbaa !8
  %452 = zext i8 %451 to i32
  %453 = xor i32 %446, %452
  %454 = and i32 %453, %438
  store i32 %454, ptr %100, align 8, !tbaa !80
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds nuw [2 x i8], ptr %439, i64 %455
  %457 = load i16, ptr %456, align 2, !tbaa !62
  %458 = and i32 %441, %447
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds nuw [2 x i8], ptr %440, i64 %459
  store i16 %457, ptr %460, align 2, !tbaa !62
  %461 = trunc i64 %indvars.iv to i16
  store i16 %461, ptr %456, align 2, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %462 = add i32 %445, -1
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %465, label %443, !llvm.loop !94

464:                                              ; preds = %.preheader
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

465:                                              ; preds = %443
  %466 = trunc nuw i64 %indvars.iv.next to i32
  store i32 %466, ptr %90, align 4, !tbaa !73
  store i32 2, ptr %82, align 4, !tbaa !75
  %467 = load i32, ptr %81, align 8, !tbaa !32
  %468 = zext i32 %467 to i64
  br label %469

469:                                              ; preds = %739, %465
  %470 = phi i32 [ %667, %739 ], [ 2, %465 ]
  %471 = load i64, ptr %89, align 8, !tbaa !61
  %472 = zext nneg i32 %470 to i64
  %473 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %471, i64 %472), !nosanitize !45
  %474 = extractvalue { i64, i1 } %473, 1, !nosanitize !45
  br i1 %474, label %475, label %476, !prof !46, !nosanitize !45

475:                                              ; preds = %469
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

476:                                              ; preds = %469
  %477 = extractvalue { i64, i1 } %473, 0, !nosanitize !45
  %478 = load i32, ptr %90, align 4, !tbaa !73
  %479 = zext i32 %478 to i64
  %480 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %477, i64 %479), !nosanitize !45
  %481 = extractvalue { i64, i1 } %480, 1, !nosanitize !45
  br i1 %481, label %482, label %483, !prof !46, !nosanitize !45

482:                                              ; preds = %476
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

483:                                              ; preds = %476
  %484 = extractvalue { i64, i1 } %480, 0, !nosanitize !45
  %485 = trunc i64 %484 to i32
  %486 = load i32, ptr %81, align 8, !tbaa !32
  %487 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %486, i32 262), !nosanitize !45
  %488 = extractvalue { i32, i1 } %487, 1, !nosanitize !45
  br i1 %488, label %489, label %490, !prof !46, !nosanitize !45

489:                                              ; preds = %483
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

490:                                              ; preds = %483
  %491 = extractvalue { i32, i1 } %487, 0, !nosanitize !45
  %492 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %467, i32 %491), !nosanitize !45
  %493 = extractvalue { i32, i1 } %492, 1, !nosanitize !45
  br i1 %493, label %494, label %495, !prof !46, !nosanitize !45

494:                                              ; preds = %490
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

495:                                              ; preds = %490
  %496 = extractvalue { i32, i1 } %492, 0, !nosanitize !45
  %497 = icmp ult i32 %478, %496
  br i1 %497, label %614, label %498

498:                                              ; preds = %495
  %499 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %467, i32 %485), !nosanitize !45
  %500 = extractvalue { i32, i1 } %499, 1, !nosanitize !45
  br i1 %500, label %501, label %502, !prof !46, !nosanitize !45

501:                                              ; preds = %498
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

502:                                              ; preds = %498
  %503 = extractvalue { i32, i1 } %499, 0, !nosanitize !45
  %504 = load ptr, ptr %92, align 8, !tbaa !34
  %505 = getelementptr inbounds nuw i8, ptr %504, i64 %468
  %506 = zext i32 %503 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %504, ptr align 1 %505, i64 %506, i1 false)
  %507 = load i32, ptr %93, align 8, !tbaa !83
  %508 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %507, i32 %467), !nosanitize !45
  %509 = extractvalue { i32, i1 } %508, 1, !nosanitize !45
  br i1 %509, label %510, label %511, !prof !46, !nosanitize !45

510:                                              ; preds = %502
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

511:                                              ; preds = %502
  %512 = extractvalue { i32, i1 } %508, 0, !nosanitize !45
  store i32 %512, ptr %93, align 8, !tbaa !83
  %513 = load i32, ptr %90, align 4, !tbaa !73
  %514 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %513, i32 %467), !nosanitize !45
  %515 = extractvalue { i32, i1 } %514, 1, !nosanitize !45
  br i1 %515, label %516, label %517, !prof !46, !nosanitize !45

516:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

517:                                              ; preds = %511
  %518 = extractvalue { i32, i1 } %514, 0, !nosanitize !45
  store i32 %518, ptr %90, align 4, !tbaa !73
  %519 = load i64, ptr %94, align 8, !tbaa !74
  %520 = sub nsw i64 %519, %468
  store i64 %520, ptr %94, align 8, !tbaa !74
  %521 = load i32, ptr %95, align 4, !tbaa !76
  %522 = icmp ugt i32 %521, %518
  br i1 %522, label %523, label %524

523:                                              ; preds = %517
  store i32 %518, ptr %95, align 4, !tbaa !76
  br label %524

524:                                              ; preds = %523, %517
  %525 = load i32, ptr %81, align 8, !tbaa !32
  %526 = load i32, ptr %96, align 4, !tbaa !36
  %527 = load ptr, ptr %97, align 8, !tbaa !37
  %528 = zext i32 %526 to i64
  %529 = getelementptr inbounds nuw [2 x i8], ptr %527, i64 %528
  %530 = icmp eq i32 %526, 0
  br i1 %530, label %554, label %531, !prof !46, !nosanitize !45

531:                                              ; preds = %524
  %532 = icmp ult i32 %526, 8
  br i1 %532, label %.preheader142, label %533

.preheader142:                                    ; preds = %548, %531
  %.ph143 = phi ptr [ %550, %548 ], [ %529, %531 ]
  %.ph144 = phi i32 [ %552, %548 ], [ %526, %531 ]
  br label %560

533:                                              ; preds = %531
  %534 = and i64 %528, 4294967288
  %535 = insertelement <8 x i32> poison, i32 %525, i64 0
  %536 = shufflevector <8 x i32> %535, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %537

537:                                              ; preds = %537, %533
  %538 = phi i64 [ 0, %533 ], [ %546, %537 ]
  %539 = mul nsw i64 %538, -2
  %540 = getelementptr i8, ptr %529, i64 %539
  %541 = getelementptr inbounds i8, ptr %540, i64 -16
  %542 = load <8 x i16>, ptr %541, align 2, !tbaa !62
  %543 = zext <8 x i16> %542 to <8 x i32>
  %544 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %543, <8 x i32> %536)
  %545 = trunc nuw <8 x i32> %544 to <8 x i16>
  store <8 x i16> %545, ptr %541, align 2, !tbaa !62
  %546 = add nuw nsw i64 %538, 8
  %547 = icmp eq i64 %546, %534
  br i1 %547, label %548, label %537, !llvm.loop !95

548:                                              ; preds = %537
  %549 = mul nsw i64 %534, -2
  %550 = getelementptr i8, ptr %529, i64 %549
  %551 = trunc nuw i64 %534 to i32
  %552 = sub i32 %526, %551
  %553 = icmp eq i64 %534, %528
  br i1 %553, label %.loopexit43, label %.preheader142

554:                                              ; preds = %524
  %555 = getelementptr inbounds i8, ptr %529, i64 -2
  %556 = load i16, ptr %555, align 2, !tbaa !62
  %557 = zext i16 %556 to i32
  %558 = tail call i32 @llvm.usub.sat.i32(i32 %557, i32 %525)
  %559 = trunc nuw i32 %558 to i16
  store i16 %559, ptr %555, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

560:                                              ; preds = %.preheader142, %560
  %561 = phi ptr [ %563, %560 ], [ %.ph143, %.preheader142 ]
  %562 = phi i32 [ %568, %560 ], [ %.ph144, %.preheader142 ]
  %563 = getelementptr inbounds i8, ptr %561, i64 -2
  %564 = load i16, ptr %563, align 2, !tbaa !62
  %565 = zext i16 %564 to i32
  %566 = tail call i32 @llvm.usub.sat.i32(i32 %565, i32 %525)
  %567 = trunc nuw i32 %566 to i16
  store i16 %567, ptr %563, align 2, !tbaa !62
  %568 = add i32 %562, -1
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %.loopexit43, label %560, !llvm.loop !96

.loopexit43:                                      ; preds = %560, %548
  %570 = icmp eq i32 %525, 0
  br i1 %570, label %571, label %572, !prof !46, !nosanitize !45

571:                                              ; preds = %.loopexit43
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

572:                                              ; preds = %.loopexit43
  %573 = load ptr, ptr %98, align 8, !tbaa !35
  %574 = zext i32 %525 to i64
  %575 = getelementptr inbounds nuw [2 x i8], ptr %573, i64 %574
  %576 = icmp ult i32 %525, 8
  br i1 %576, label %.preheader140, label %577

577:                                              ; preds = %572
  %578 = and i64 %574, 4294967288
  %579 = insertelement <8 x i32> poison, i32 %525, i64 0
  %580 = shufflevector <8 x i32> %579, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %581

581:                                              ; preds = %581, %577
  %582 = phi i64 [ 0, %577 ], [ %590, %581 ]
  %583 = mul nsw i64 %582, -2
  %584 = getelementptr i8, ptr %575, i64 %583
  %585 = getelementptr inbounds i8, ptr %584, i64 -16
  %586 = load <8 x i16>, ptr %585, align 2, !tbaa !62
  %587 = zext <8 x i16> %586 to <8 x i32>
  %588 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %587, <8 x i32> %580)
  %589 = trunc nuw <8 x i32> %588 to <8 x i16>
  store <8 x i16> %589, ptr %585, align 2, !tbaa !62
  %590 = add nuw nsw i64 %582, 8
  %591 = icmp eq i64 %590, %578
  br i1 %591, label %592, label %581, !llvm.loop !97

592:                                              ; preds = %581
  %593 = mul nsw i64 %578, -2
  %594 = getelementptr i8, ptr %575, i64 %593
  %595 = trunc nuw i64 %578 to i32
  %596 = sub i32 %525, %595
  %597 = icmp eq i64 %578, %574
  br i1 %597, label %.loopexit42, label %.preheader140

.preheader140:                                    ; preds = %592, %572
  %.ph = phi ptr [ %594, %592 ], [ %575, %572 ]
  %.ph141 = phi i32 [ %596, %592 ], [ %525, %572 ]
  br label %598

598:                                              ; preds = %.preheader140, %598
  %599 = phi ptr [ %601, %598 ], [ %.ph, %.preheader140 ]
  %600 = phi i32 [ %606, %598 ], [ %.ph141, %.preheader140 ]
  %601 = getelementptr inbounds i8, ptr %599, i64 -2
  %602 = load i16, ptr %601, align 2, !tbaa !62
  %603 = zext i16 %602 to i32
  %604 = tail call i32 @llvm.usub.sat.i32(i32 %603, i32 %525)
  %605 = trunc nuw i32 %604 to i16
  store i16 %605, ptr %601, align 2, !tbaa !62
  %606 = add i32 %600, -1
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %.loopexit42, label %598, !llvm.loop !98

.loopexit42:                                      ; preds = %598, %592
  store i32 1, ptr %99, align 8, !tbaa !63
  %608 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %485, i32 %467), !nosanitize !45
  %609 = extractvalue { i32, i1 } %608, 1, !nosanitize !45
  br i1 %609, label %610, label %611, !prof !46, !nosanitize !45

610:                                              ; preds = %.loopexit42
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

611:                                              ; preds = %.loopexit42
  %612 = extractvalue { i32, i1 } %608, 0, !nosanitize !45
  %613 = load i32, ptr %82, align 4, !tbaa !75
  br label %614

614:                                              ; preds = %611, %495
  %615 = phi i32 [ %613, %611 ], [ %470, %495 ]
  %616 = phi i32 [ %518, %611 ], [ %478, %495 ]
  %617 = phi i32 [ %612, %611 ], [ %485, %495 ]
  %618 = load ptr, ptr %15, align 8, !tbaa !20
  %619 = getelementptr inbounds nuw i8, ptr %618, i64 8
  %620 = load i32, ptr %619, align 8, !tbaa !81
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %744, label %622

622:                                              ; preds = %614
  %623 = load ptr, ptr %92, align 8, !tbaa !34
  %624 = zext i32 %616 to i64
  %625 = getelementptr inbounds nuw i8, ptr %623, i64 %624
  %626 = zext i32 %615 to i64
  %627 = getelementptr inbounds nuw i8, ptr %625, i64 %626
  %628 = tail call i32 @llvm.umin.i32(i32 %620, i32 %617)
  %629 = icmp eq i32 %617, 0
  br i1 %629, label %661, label %630

630:                                              ; preds = %622
  %631 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %620, i32 %628), !nosanitize !45
  %632 = extractvalue { i32, i1 } %631, 1, !nosanitize !45
  br i1 %632, label %633, label %634, !prof !46, !nosanitize !45

633:                                              ; preds = %630
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

634:                                              ; preds = %630
  %635 = extractvalue { i32, i1 } %631, 0, !nosanitize !45
  store i32 %635, ptr %619, align 8, !tbaa !81
  %636 = load ptr, ptr %618, align 8, !tbaa !82
  %637 = zext i32 %628 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %627, ptr align 1 %636, i64 %637, i1 false)
  %638 = getelementptr inbounds nuw i8, ptr %618, i64 56
  %639 = load ptr, ptr %638, align 8, !tbaa !19
  %640 = getelementptr inbounds nuw i8, ptr %639, i64 48
  %641 = load i32, ptr %640, align 8, !tbaa !30
  switch i32 %641, label %650 [
    i32 1, label %642
    i32 2, label %646
  ]

642:                                              ; preds = %634
  %643 = getelementptr inbounds nuw i8, ptr %618, i64 96
  %644 = load i64, ptr %643, align 8, !tbaa !59
  %645 = tail call i64 @adler32(i64 noundef %644, ptr noundef %627, i32 noundef %628) #12
  store i64 %645, ptr %643, align 8, !tbaa !59
  br label %650

646:                                              ; preds = %634
  %647 = getelementptr inbounds nuw i8, ptr %618, i64 96
  %648 = load i64, ptr %647, align 8, !tbaa !59
  %649 = tail call i64 @crc32(i64 noundef %648, ptr noundef %627, i32 noundef %628) #12
  store i64 %649, ptr %647, align 8, !tbaa !59
  br label %650

650:                                              ; preds = %646, %642, %634
  %651 = load ptr, ptr %618, align 8, !tbaa !82
  %652 = getelementptr inbounds nuw i8, ptr %651, i64 %637
  store ptr %652, ptr %618, align 8, !tbaa !82
  %653 = getelementptr inbounds nuw i8, ptr %618, i64 16
  %654 = load i64, ptr %653, align 8, !tbaa !55
  %655 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %654, i64 %637), !nosanitize !45
  %656 = extractvalue { i64, i1 } %655, 1, !nosanitize !45
  br i1 %656, label %657, label %658, !prof !46, !nosanitize !45

657:                                              ; preds = %650
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

658:                                              ; preds = %650
  %659 = extractvalue { i64, i1 } %655, 0, !nosanitize !45
  store i64 %659, ptr %653, align 8, !tbaa !55
  %660 = load i32, ptr %82, align 4, !tbaa !75
  br label %661

661:                                              ; preds = %658, %622
  %662 = phi i32 [ %615, %622 ], [ %660, %658 ]
  %663 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %662, i32 %628), !nosanitize !45
  %664 = extractvalue { i32, i1 } %663, 1, !nosanitize !45
  br i1 %664, label %665, label %666, !prof !46, !nosanitize !45

665:                                              ; preds = %661
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

666:                                              ; preds = %661
  %667 = extractvalue { i32, i1 } %663, 0, !nosanitize !45
  store i32 %667, ptr %82, align 4, !tbaa !75
  %668 = load i32, ptr %95, align 4, !tbaa !76
  %669 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %667, i32 %668), !nosanitize !45
  %670 = extractvalue { i32, i1 } %669, 1, !nosanitize !45
  br i1 %670, label %671, label %672, !prof !46, !nosanitize !45

671:                                              ; preds = %666
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

672:                                              ; preds = %666
  %673 = extractvalue { i32, i1 } %669, 0, !nosanitize !45
  %674 = icmp ugt i32 %673, 2
  br i1 %674, label %675, label %.loopexit

675:                                              ; preds = %672
  %676 = load i32, ptr %90, align 4, !tbaa !73
  %677 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %676, i32 %668), !nosanitize !45
  %678 = extractvalue { i32, i1 } %677, 0, !nosanitize !45
  %679 = extractvalue { i32, i1 } %677, 1, !nosanitize !45
  br i1 %679, label %680, label %681, !prof !46, !nosanitize !45

680:                                              ; preds = %675
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

681:                                              ; preds = %675
  %682 = load ptr, ptr %92, align 8, !tbaa !34
  %683 = zext i32 %678 to i64
  %684 = getelementptr inbounds nuw i8, ptr %682, i64 %683
  %685 = load i8, ptr %684, align 1, !tbaa !8
  %686 = zext i8 %685 to i32
  store i32 %686, ptr %100, align 8, !tbaa !80
  %687 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %678, i32 1), !nosanitize !45
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !45
  br i1 %688, label %689, label %690, !prof !46, !nosanitize !45

689:                                              ; preds = %681
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

690:                                              ; preds = %681
  %691 = extractvalue { i32, i1 } %687, 0, !nosanitize !45
  %692 = load i32, ptr %101, align 8, !tbaa !53
  %693 = shl i32 %686, %692
  %694 = zext i32 %691 to i64
  %695 = getelementptr inbounds nuw i8, ptr %682, i64 %694
  %696 = load i8, ptr %695, align 1, !tbaa !8
  %697 = zext i8 %696 to i32
  %698 = xor i32 %693, %697
  %699 = load i32, ptr %102, align 4, !tbaa !52
  %700 = and i32 %698, %699
  store i32 %700, ptr %100, align 8, !tbaa !80
  br label %701

701:                                              ; preds = %734, %690
  %702 = phi i32 [ %700, %690 ], [ %719, %734 ]
  %703 = phi i32 [ %668, %690 ], [ %730, %734 ]
  %704 = phi i32 [ %678, %690 ], [ %735, %734 ]
  %705 = icmp eq i32 %703, 0
  br i1 %705, label %.loopexit, label %706

706:                                              ; preds = %701
  %707 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %704, i32 3), !nosanitize !45
  %708 = extractvalue { i32, i1 } %707, 1, !nosanitize !45
  br i1 %708, label %709, label %710, !prof !46, !nosanitize !45

709:                                              ; preds = %706
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

710:                                              ; preds = %706
  %711 = shl i32 %702, %692
  %712 = extractvalue { i32, i1 } %707, 0, !nosanitize !45
  %713 = add i32 %712, -1
  %714 = zext i32 %713 to i64
  %715 = getelementptr inbounds nuw i8, ptr %682, i64 %714
  %716 = load i8, ptr %715, align 1, !tbaa !8
  %717 = zext i8 %716 to i32
  %718 = xor i32 %711, %717
  %719 = and i32 %718, %699
  store i32 %719, ptr %100, align 8, !tbaa !80
  %720 = load ptr, ptr %97, align 8, !tbaa !37
  %721 = zext i32 %719 to i64
  %722 = getelementptr inbounds nuw [2 x i8], ptr %720, i64 %721
  %723 = load i16, ptr %722, align 2, !tbaa !62
  %724 = load ptr, ptr %98, align 8, !tbaa !35
  %725 = load i32, ptr %103, align 8, !tbaa !33
  %726 = and i32 %725, %704
  %727 = zext i32 %726 to i64
  %728 = getelementptr inbounds nuw [2 x i8], ptr %724, i64 %727
  store i16 %723, ptr %728, align 2, !tbaa !62
  %729 = trunc i32 %704 to i16
  store i16 %729, ptr %722, align 2, !tbaa !62
  %730 = add i32 %703, -1
  store i32 %730, ptr %95, align 4, !tbaa !76
  %731 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %667, i32 %730), !nosanitize !45
  %732 = extractvalue { i32, i1 } %731, 1, !nosanitize !45
  br i1 %732, label %733, label %734, !prof !46, !nosanitize !45

733:                                              ; preds = %710
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

734:                                              ; preds = %710
  %735 = add nuw i32 %704, 1
  %736 = extractvalue { i32, i1 } %731, 0, !nosanitize !45
  %737 = icmp ult i32 %736, 3
  br i1 %737, label %.loopexit, label %701, !llvm.loop !91

.loopexit:                                        ; preds = %734, %701, %672
  %738 = icmp ult i32 %667, 262
  br i1 %738, label %739, label %744

739:                                              ; preds = %.loopexit
  %740 = load ptr, ptr %15, align 8, !tbaa !20
  %741 = getelementptr inbounds nuw i8, ptr %740, i64 8
  %742 = load i32, ptr %741, align 8, !tbaa !81
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %469, !llvm.loop !92

744:                                              ; preds = %739, %.loopexit, %614
  %745 = phi i32 [ %667, %739 ], [ %667, %.loopexit ], [ %615, %614 ]
  %746 = load i64, ptr %382, align 8, !tbaa !38
  %747 = load i64, ptr %89, align 8, !tbaa !61
  %748 = icmp ult i64 %746, %747
  br i1 %748, label %749, label %788

749:                                              ; preds = %744
  %750 = load i32, ptr %90, align 4, !tbaa !73
  %751 = zext i32 %750 to i64
  %752 = zext i32 %745 to i64
  %753 = add nuw nsw i64 %751, %752
  %754 = icmp ult i64 %746, %753
  br i1 %754, label %755, label %765

755:                                              ; preds = %749
  %756 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %747, i64 %753), !nosanitize !45
  %757 = extractvalue { i64, i1 } %756, 1, !nosanitize !45
  br i1 %757, label %758, label %759, !prof !46, !nosanitize !45

758:                                              ; preds = %755
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

759:                                              ; preds = %755
  %760 = extractvalue { i64, i1 } %756, 0, !nosanitize !45
  %761 = tail call i64 @llvm.umin.i64(i64 %760, i64 258)
  %762 = load ptr, ptr %92, align 8, !tbaa !34
  %763 = getelementptr inbounds nuw i8, ptr %762, i64 %753
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %763, i8 0, i64 %761, i1 false)
  %764 = add nuw nsw i64 %761, %753
  br label %785

765:                                              ; preds = %749
  %766 = add nuw nsw i64 %753, 258
  %767 = icmp ult i64 %746, %766
  br i1 %767, label %768, label %788

768:                                              ; preds = %765
  %769 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %747, i64 %746), !nosanitize !45
  %770 = extractvalue { i64, i1 } %769, 1, !nosanitize !45
  br i1 %770, label %771, label %772, !prof !46, !nosanitize !45

771:                                              ; preds = %768
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

772:                                              ; preds = %768
  %773 = sub nuw nsw i64 %766, %746
  %774 = extractvalue { i64, i1 } %769, 0, !nosanitize !45
  %775 = tail call i64 @llvm.umin.i64(i64 %773, i64 %774)
  %776 = load ptr, ptr %92, align 8, !tbaa !34
  %777 = getelementptr inbounds nuw i8, ptr %776, i64 %746
  %778 = and i64 %775, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %777, i8 0, i64 %778, i1 false)
  %779 = load i64, ptr %382, align 8, !tbaa !38
  %780 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %779, i64 %775), !nosanitize !45
  %781 = extractvalue { i64, i1 } %780, 1, !nosanitize !45
  br i1 %781, label %782, label %783, !prof !46, !nosanitize !45

782:                                              ; preds = %772
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

783:                                              ; preds = %772
  %784 = extractvalue { i64, i1 } %780, 0, !nosanitize !45
  br label %785

785:                                              ; preds = %783, %759
  %786 = phi i64 [ %764, %759 ], [ %784, %783 ]
  store i64 %786, ptr %382, align 8, !tbaa !38
  %787 = load i32, ptr %82, align 4, !tbaa !75
  br label %788

788:                                              ; preds = %785, %765, %744
  %789 = phi i32 [ %745, %744 ], [ %745, %765 ], [ %787, %785 ]
  %790 = icmp ugt i32 %789, 2
  br i1 %790, label %.preheader, label %.loopexit44, !llvm.loop !99

.loopexit44:                                      ; preds = %788, %425
  %791 = phi i32 [ %426, %425 ], [ %789, %788 ]
  %792 = load i32, ptr %90, align 4, !tbaa !73
  %793 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %792, i32 %791), !nosanitize !45
  %794 = extractvalue { i32, i1 } %793, 1, !nosanitize !45
  br i1 %794, label %795, label %796, !prof !46, !nosanitize !45

795:                                              ; preds = %.loopexit44
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

796:                                              ; preds = %.loopexit44
  %797 = extractvalue { i32, i1 } %793, 0, !nosanitize !45
  store i32 %797, ptr %90, align 4, !tbaa !73
  %798 = zext i32 %797 to i64
  store i64 %798, ptr %94, align 8, !tbaa !74
  store i32 %791, ptr %95, align 4, !tbaa !76
  store i32 0, ptr %82, align 4, !tbaa !75
  %799 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %799, align 8, !tbaa !77
  %800 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %800, align 8, !tbaa !78
  %801 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %801, align 8, !tbaa !79
  store ptr %88, ptr %0, align 8, !tbaa !82
  store i32 %87, ptr %86, align 8, !tbaa !81
  store i32 %27, ptr %26, align 8, !tbaa !30
  br label %802

802:                                              ; preds = %796, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
  %803 = phi i32 [ 0, %796 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %803
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
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !45
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !45
  br i1 %30, label %31, label %32, !prof !46, !nosanitize !45

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !45
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !45
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !45
  br i1 %42, label %43, label %44, !prof !46, !nosanitize !45

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !45
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !45
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !45
  br i1 %47, label %48, label %49, !prof !46, !nosanitize !45

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  br i1 %76, label %77, label %205, !prof !46, !nosanitize !45

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

78:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %79 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %80 = load i32, ptr %79, align 8, !tbaa !30
  %81 = tail call i32 @llvm.abs.i32(i32 %80, i1 true)
  switch i32 %81, label %150 [
    i32 0, label %151
    i32 1, label %82
    i32 2, label %87
  ]

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %84 = load i32, ptr %83, align 4, !tbaa !73
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i64 6, i64 10
  br label %151

87:                                               ; preds = %78
  %88 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %89 = load ptr, ptr %88, align 8, !tbaa !100
  %90 = icmp eq ptr %89, null
  br i1 %90, label %151, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds nuw i8, ptr %89, i64 24
  %93 = load ptr, ptr %92, align 8, !tbaa !112
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds nuw i8, ptr %89, i64 32
  %97 = load i32, ptr %96, align 8, !tbaa !117
  %98 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %97, i32 2), !nosanitize !45
  %99 = extractvalue { i32, i1 } %98, 1, !nosanitize !45
  br i1 %99, label %100, label %101, !prof !46, !nosanitize !45

100:                                              ; preds = %95
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

101:                                              ; preds = %95
  %102 = extractvalue { i32, i1 } %98, 0, !nosanitize !45
  %103 = zext i32 %102 to i64
  %104 = add nuw nsw i64 %103, 18
  br label %105

105:                                              ; preds = %101, %91
  %106 = phi i64 [ %104, %101 ], [ 18, %91 ]
  %107 = getelementptr inbounds nuw i8, ptr %89, i64 40
  %108 = load ptr, ptr %107, align 8, !tbaa !111
  %109 = icmp eq ptr %108, null
  br i1 %109, label %.loopexit6, label %110

110:                                              ; preds = %105
  %111 = add nuw nsw i64 %106, 1
  %112 = insertvalue { i64, i1 } { i64 poison, i1 false }, i64 %111, 0
  br label %118

113:                                              ; preds = %118
  %114 = getelementptr inbounds nuw i8, ptr %120, i64 1
  %115 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %121, i64 1), !nosanitize !45
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !45
  br i1 %116, label %117, label %118, !prof !130, !llvm.loop !131, !nosanitize !45

117:                                              ; preds = %113
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

118:                                              ; preds = %110, %113
  %119 = phi { i64, i1 } [ %115, %113 ], [ %112, %110 ]
  %120 = phi ptr [ %114, %113 ], [ %108, %110 ]
  %121 = extractvalue { i64, i1 } %119, 0, !nosanitize !45
  %122 = load i8, ptr %120, align 1, !tbaa !8
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %.loopexit6, label %113, !llvm.loop !131

.loopexit6:                                       ; preds = %118, %105
  %124 = phi i64 [ %106, %105 ], [ %121, %118 ]
  %125 = getelementptr inbounds nuw i8, ptr %89, i64 56
  %126 = load ptr, ptr %125, align 8, !tbaa !109
  %127 = icmp eq ptr %126, null
  br i1 %127, label %.loopexit, label %128

128:                                              ; preds = %.loopexit6
  %129 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 1), !nosanitize !45
  %130 = extractvalue { i64, i1 } %129, 1, !nosanitize !45
  br i1 %130, label %.loopexit5, label %.preheader, !prof !132, !nosanitize !45

131:                                              ; preds = %.preheader
  %132 = getelementptr inbounds nuw i8, ptr %136, i64 1
  %133 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %137, i64 1), !nosanitize !45
  %134 = extractvalue { i64, i1 } %133, 1, !nosanitize !45
  br i1 %134, label %.loopexit5, label %.preheader, !prof !130, !llvm.loop !133, !nosanitize !45

.loopexit5:                                       ; preds = %131, %128
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

.preheader:                                       ; preds = %128, %131
  %135 = phi { i64, i1 } [ %133, %131 ], [ %129, %128 ]
  %136 = phi ptr [ %132, %131 ], [ %126, %128 ]
  %137 = extractvalue { i64, i1 } %135, 0, !nosanitize !45
  %138 = load i8, ptr %136, align 1, !tbaa !8
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %.loopexit, label %131, !llvm.loop !133

.loopexit:                                        ; preds = %.preheader, %.loopexit6
  %140 = phi i64 [ %124, %.loopexit6 ], [ %137, %.preheader ]
  %141 = getelementptr inbounds nuw i8, ptr %89, i64 68
  %142 = load i32, ptr %141, align 4, !tbaa !114
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %.loopexit
  %145 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %140, i64 2), !nosanitize !45
  %146 = extractvalue { i64, i1 } %145, 1, !nosanitize !45
  br i1 %146, label %147, label %148, !prof !46, !nosanitize !45

147:                                              ; preds = %144
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

148:                                              ; preds = %144
  %149 = extractvalue { i64, i1 } %145, 0, !nosanitize !45
  br label %151

150:                                              ; preds = %78
  br label %151

151:                                              ; preds = %150, %148, %.loopexit, %87, %82, %78
  %152 = phi i64 [ 18, %150 ], [ 18, %87 ], [ %86, %82 ], [ 0, %78 ], [ %149, %148 ], [ %140, %.loopexit ]
  %153 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %154 = load i32, ptr %153, align 4, !tbaa !31
  %155 = icmp eq i32 %154, 15
  %156 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %157 = load i32, ptr %156, align 8, !tbaa !51
  %158 = icmp eq i32 %157, 15
  %159 = select i1 %155, i1 %158, i1 false
  br i1 %159, label %173, label %160

160:                                              ; preds = %151
  %161 = icmp ugt i32 %154, %157
  br i1 %161, label %166, label %162

162:                                              ; preds = %160
  %163 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %164 = load i32, ptr %163, align 4, !tbaa !48
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162, %160
  br label %167

167:                                              ; preds = %166, %162
  %168 = phi i64 [ %52, %166 ], [ %27, %162 ]
  %169 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %168, i64 %152), !nosanitize !45
  %170 = extractvalue { i64, i1 } %169, 0, !nosanitize !45
  %171 = extractvalue { i64, i1 } %169, 1, !nosanitize !45
  br i1 %171, label %172, label %205, !prof !46, !nosanitize !45

172:                                              ; preds = %167
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

173:                                              ; preds = %151
  %174 = lshr i64 %1, 12
  %175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %174), !nosanitize !45
  %176 = extractvalue { i64, i1 } %175, 1, !nosanitize !45
  br i1 %176, label %177, label %178, !prof !46, !nosanitize !45

177:                                              ; preds = %173
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

178:                                              ; preds = %173
  %179 = extractvalue { i64, i1 } %175, 0, !nosanitize !45
  %180 = lshr i64 %1, 14
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %179, i64 %180), !nosanitize !45
  %182 = extractvalue { i64, i1 } %181, 1, !nosanitize !45
  br i1 %182, label %183, label %184, !prof !46, !nosanitize !45

183:                                              ; preds = %178
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

184:                                              ; preds = %178
  %185 = extractvalue { i64, i1 } %181, 0, !nosanitize !45
  %186 = lshr i64 %1, 25
  %187 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %185, i64 %186), !nosanitize !45
  %188 = extractvalue { i64, i1 } %187, 1, !nosanitize !45
  br i1 %188, label %189, label %190, !prof !46, !nosanitize !45

189:                                              ; preds = %184
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

190:                                              ; preds = %184
  %191 = extractvalue { i64, i1 } %187, 0, !nosanitize !45
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %191, i64 13), !nosanitize !45
  %193 = extractvalue { i64, i1 } %192, 1, !nosanitize !45
  br i1 %193, label %194, label %195, !prof !46, !nosanitize !45

194:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

195:                                              ; preds = %190
  %196 = extractvalue { i64, i1 } %192, 0, !nosanitize !45
  %197 = add i64 %196, -6
  %198 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %197, i64 %152), !nosanitize !45
  %199 = extractvalue { i64, i1 } %198, 1, !nosanitize !45
  br i1 %199, label %200, label %201, !prof !46, !nosanitize !45

200:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

201:                                              ; preds = %195
  %202 = extractvalue { i64, i1 } %198, 0, !nosanitize !45
  %203 = icmp ult i64 %202, %1
  %204 = select i1 %203, i64 -1, i64 %202
  br label %205

205:                                              ; preds = %201, %167, %72
  %206 = phi i64 [ %204, %201 ], [ %75, %72 ], [ %170, %167 ]
  ret i64 %206
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
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !45
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !45
  br i1 %30, label %31, label %32, !prof !46, !nosanitize !45

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !45
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !45
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !45
  br i1 %42, label %43, label %44, !prof !46, !nosanitize !45

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !45
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !45
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !45
  br i1 %47, label %48, label %49, !prof !46, !nosanitize !45

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  br i1 %76, label %77, label %205, !prof !46, !nosanitize !45

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

78:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %79 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %80 = load i32, ptr %79, align 8, !tbaa !30
  %81 = tail call i32 @llvm.abs.i32(i32 %80, i1 true)
  switch i32 %81, label %150 [
    i32 0, label %151
    i32 1, label %82
    i32 2, label %87
  ]

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %84 = load i32, ptr %83, align 4, !tbaa !73
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i64 6, i64 10
  br label %151

87:                                               ; preds = %78
  %88 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %89 = load ptr, ptr %88, align 8, !tbaa !100
  %90 = icmp eq ptr %89, null
  br i1 %90, label %151, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds nuw i8, ptr %89, i64 24
  %93 = load ptr, ptr %92, align 8, !tbaa !112
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds nuw i8, ptr %89, i64 32
  %97 = load i32, ptr %96, align 8, !tbaa !117
  %98 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %97, i32 2), !nosanitize !45
  %99 = extractvalue { i32, i1 } %98, 1, !nosanitize !45
  br i1 %99, label %100, label %101, !prof !46, !nosanitize !45

100:                                              ; preds = %95
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

101:                                              ; preds = %95
  %102 = extractvalue { i32, i1 } %98, 0, !nosanitize !45
  %103 = zext i32 %102 to i64
  %104 = add nuw nsw i64 %103, 18
  br label %105

105:                                              ; preds = %101, %91
  %106 = phi i64 [ %104, %101 ], [ 18, %91 ]
  %107 = getelementptr inbounds nuw i8, ptr %89, i64 40
  %108 = load ptr, ptr %107, align 8, !tbaa !111
  %109 = icmp eq ptr %108, null
  br i1 %109, label %.loopexit6, label %110

110:                                              ; preds = %105
  %111 = add nuw nsw i64 %106, 1
  %112 = insertvalue { i64, i1 } { i64 poison, i1 false }, i64 %111, 0
  br label %118

113:                                              ; preds = %118
  %114 = getelementptr inbounds nuw i8, ptr %120, i64 1
  %115 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %121, i64 1), !nosanitize !45
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !45
  br i1 %116, label %117, label %118, !prof !130, !llvm.loop !131, !nosanitize !45

117:                                              ; preds = %113
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

118:                                              ; preds = %110, %113
  %119 = phi { i64, i1 } [ %115, %113 ], [ %112, %110 ]
  %120 = phi ptr [ %114, %113 ], [ %108, %110 ]
  %121 = extractvalue { i64, i1 } %119, 0, !nosanitize !45
  %122 = load i8, ptr %120, align 1, !tbaa !8
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %.loopexit6, label %113, !llvm.loop !131

.loopexit6:                                       ; preds = %118, %105
  %124 = phi i64 [ %106, %105 ], [ %121, %118 ]
  %125 = getelementptr inbounds nuw i8, ptr %89, i64 56
  %126 = load ptr, ptr %125, align 8, !tbaa !109
  %127 = icmp eq ptr %126, null
  br i1 %127, label %.loopexit, label %128

128:                                              ; preds = %.loopexit6
  %129 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 1), !nosanitize !45
  %130 = extractvalue { i64, i1 } %129, 1, !nosanitize !45
  br i1 %130, label %.loopexit5, label %.preheader, !prof !132, !nosanitize !45

131:                                              ; preds = %.preheader
  %132 = getelementptr inbounds nuw i8, ptr %136, i64 1
  %133 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %137, i64 1), !nosanitize !45
  %134 = extractvalue { i64, i1 } %133, 1, !nosanitize !45
  br i1 %134, label %.loopexit5, label %.preheader, !prof !130, !llvm.loop !133, !nosanitize !45

.loopexit5:                                       ; preds = %131, %128
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

.preheader:                                       ; preds = %128, %131
  %135 = phi { i64, i1 } [ %133, %131 ], [ %129, %128 ]
  %136 = phi ptr [ %132, %131 ], [ %126, %128 ]
  %137 = extractvalue { i64, i1 } %135, 0, !nosanitize !45
  %138 = load i8, ptr %136, align 1, !tbaa !8
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %.loopexit, label %131, !llvm.loop !133

.loopexit:                                        ; preds = %.preheader, %.loopexit6
  %140 = phi i64 [ %124, %.loopexit6 ], [ %137, %.preheader ]
  %141 = getelementptr inbounds nuw i8, ptr %89, i64 68
  %142 = load i32, ptr %141, align 4, !tbaa !114
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %.loopexit
  %145 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %140, i64 2), !nosanitize !45
  %146 = extractvalue { i64, i1 } %145, 1, !nosanitize !45
  br i1 %146, label %147, label %148, !prof !46, !nosanitize !45

147:                                              ; preds = %144
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

148:                                              ; preds = %144
  %149 = extractvalue { i64, i1 } %145, 0, !nosanitize !45
  br label %151

150:                                              ; preds = %78
  br label %151

151:                                              ; preds = %150, %148, %.loopexit, %87, %82, %78
  %152 = phi i64 [ 18, %150 ], [ 18, %87 ], [ %86, %82 ], [ 0, %78 ], [ %149, %148 ], [ %140, %.loopexit ]
  %153 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %154 = load i32, ptr %153, align 4, !tbaa !31
  %155 = icmp eq i32 %154, 15
  %156 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %157 = load i32, ptr %156, align 8, !tbaa !51
  %158 = icmp eq i32 %157, 15
  %159 = select i1 %155, i1 %158, i1 false
  br i1 %159, label %173, label %160

160:                                              ; preds = %151
  %161 = icmp ugt i32 %154, %157
  br i1 %161, label %166, label %162

162:                                              ; preds = %160
  %163 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %164 = load i32, ptr %163, align 4, !tbaa !48
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162, %160
  br label %167

167:                                              ; preds = %166, %162
  %168 = phi i64 [ %52, %166 ], [ %27, %162 ]
  %169 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %168, i64 %152), !nosanitize !45
  %170 = extractvalue { i64, i1 } %169, 0, !nosanitize !45
  %171 = extractvalue { i64, i1 } %169, 1, !nosanitize !45
  br i1 %171, label %172, label %205, !prof !46, !nosanitize !45

172:                                              ; preds = %167
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

173:                                              ; preds = %151
  %174 = lshr i64 %1, 12
  %175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %174), !nosanitize !45
  %176 = extractvalue { i64, i1 } %175, 1, !nosanitize !45
  br i1 %176, label %177, label %178, !prof !46, !nosanitize !45

177:                                              ; preds = %173
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

178:                                              ; preds = %173
  %179 = extractvalue { i64, i1 } %175, 0, !nosanitize !45
  %180 = lshr i64 %1, 14
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %179, i64 %180), !nosanitize !45
  %182 = extractvalue { i64, i1 } %181, 1, !nosanitize !45
  br i1 %182, label %183, label %184, !prof !46, !nosanitize !45

183:                                              ; preds = %178
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

184:                                              ; preds = %178
  %185 = extractvalue { i64, i1 } %181, 0, !nosanitize !45
  %186 = lshr i64 %1, 25
  %187 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %185, i64 %186), !nosanitize !45
  %188 = extractvalue { i64, i1 } %187, 1, !nosanitize !45
  br i1 %188, label %189, label %190, !prof !46, !nosanitize !45

189:                                              ; preds = %184
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

190:                                              ; preds = %184
  %191 = extractvalue { i64, i1 } %187, 0, !nosanitize !45
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %191, i64 13), !nosanitize !45
  %193 = extractvalue { i64, i1 } %192, 1, !nosanitize !45
  br i1 %193, label %194, label %195, !prof !46, !nosanitize !45

194:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

195:                                              ; preds = %190
  %196 = extractvalue { i64, i1 } %192, 0, !nosanitize !45
  %197 = add i64 %196, -6
  %198 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %197, i64 %152), !nosanitize !45
  %199 = extractvalue { i64, i1 } %198, 1, !nosanitize !45
  br i1 %199, label %200, label %201, !prof !46, !nosanitize !45

200:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

201:                                              ; preds = %195
  %202 = extractvalue { i64, i1 } %198, 0, !nosanitize !45
  %203 = icmp ult i64 %202, %1
  %204 = select i1 %203, i64 -1, i64 %202
  br label %205

205:                                              ; preds = %201, %167, %72
  %206 = phi i64 [ %204, %201 ], [ %75, %72 ], [ %170, %167 ]
  ret i64 %206
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

27:                                               ; preds = %265, %8
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
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !45
  %53 = extractvalue { i32, i1 } %52, 1, !nosanitize !45
  br i1 %53, label %54, label %55, !prof !46, !nosanitize !45

54:                                               ; preds = %51
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

55:                                               ; preds = %51
  %56 = extractvalue { i32, i1 } %52, 0, !nosanitize !45
  br label %57

57:                                               ; preds = %55, %39
  %58 = phi i32 [ %56, %55 ], [ 65535, %39 ]
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 %40)
  %60 = icmp ult i32 %59, %14
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = icmp eq i32 %59, 0
  %63 = and i1 %21, %62
  %64 = or i1 %22, %63
  br i1 %64, label %.loopexit, label %65

65:                                               ; preds = %61
  %66 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !45
  %67 = extractvalue { i32, i1 } %66, 1, !nosanitize !45
  br i1 %67, label %68, label %69, !prof !46, !nosanitize !45

68:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

69:                                               ; preds = %65
  %70 = extractvalue { i32, i1 } %66, 0, !nosanitize !45
  %71 = icmp eq i32 %59, %70
  br i1 %71, label %72, label %.loopexit

72:                                               ; preds = %69, %57
  br i1 %23, label %73, label %81

73:                                               ; preds = %72
  %74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !45
  %75 = extractvalue { i32, i1 } %74, 1, !nosanitize !45
  br i1 %75, label %76, label %77, !prof !46, !nosanitize !45

76:                                               ; preds = %73
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

77:                                               ; preds = %73
  %78 = extractvalue { i32, i1 } %74, 0, !nosanitize !45
  %79 = icmp eq i32 %59, %78
  %80 = zext i1 %79 to i32
  br label %81

81:                                               ; preds = %77, %72
  %82 = phi i32 [ 0, %72 ], [ %80, %77 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %82) #12
  %83 = load i64, ptr %25, align 8, !tbaa !57
  %84 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 4), !nosanitize !45
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %84, 0, !nosanitize !45
  %89 = load ptr, ptr %24, align 8, !tbaa !40
  %90 = trunc i32 %59 to i8
  %91 = getelementptr inbounds nuw i8, ptr %89, i64 %88
  store i8 %90, ptr %91, align 1, !tbaa !8
  %92 = load i64, ptr %25, align 8, !tbaa !57
  %93 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %92, i64 3), !nosanitize !45
  %94 = extractvalue { i64, i1 } %93, 1, !nosanitize !45
  br i1 %94, label %95, label %96, !prof !46, !nosanitize !45

95:                                               ; preds = %87
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

96:                                               ; preds = %87
  %97 = extractvalue { i64, i1 } %93, 0, !nosanitize !45
  %98 = load ptr, ptr %24, align 8, !tbaa !40
  %99 = lshr i32 %59, 8
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds nuw i8, ptr %98, i64 %97
  store i8 %100, ptr %101, align 1, !tbaa !8
  %102 = load i64, ptr %25, align 8, !tbaa !57
  %103 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %102, i64 2), !nosanitize !45
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !45
  br i1 %104, label %105, label %106, !prof !46, !nosanitize !45

105:                                              ; preds = %96
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

106:                                              ; preds = %96
  %107 = extractvalue { i64, i1 } %103, 0, !nosanitize !45
  %108 = load ptr, ptr %24, align 8, !tbaa !40
  %109 = xor i32 %59, -1
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds nuw i8, ptr %108, i64 %107
  store i8 %110, ptr %111, align 1, !tbaa !8
  %112 = load i64, ptr %25, align 8, !tbaa !57
  %113 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %112, i64 1), !nosanitize !45
  %114 = extractvalue { i64, i1 } %113, 1, !nosanitize !45
  br i1 %114, label %115, label %116, !prof !46, !nosanitize !45

115:                                              ; preds = %106
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

116:                                              ; preds = %106
  %117 = extractvalue { i64, i1 } %113, 0, !nosanitize !45
  %118 = load ptr, ptr %24, align 8, !tbaa !40
  %119 = lshr i32 %109, 8
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds nuw i8, ptr %118, i64 %117
  store i8 %120, ptr %121, align 1, !tbaa !8
  %122 = load ptr, ptr %0, align 8, !tbaa !20
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 56
  %124 = load ptr, ptr %123, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %124) #12
  %125 = getelementptr inbounds nuw i8, ptr %124, i64 40
  %126 = load i64, ptr %125, align 8, !tbaa !57
  %127 = getelementptr inbounds nuw i8, ptr %122, i64 32
  %128 = load i32, ptr %127, align 8, !tbaa !107
  %129 = zext i32 %128 to i64
  %130 = tail call i64 @llvm.umin.i64(i64 %126, i64 %129)
  %131 = trunc nuw i64 %130 to i32
  %132 = icmp eq i64 %130, 0
  br i1 %132, label %165, label %133

133:                                              ; preds = %116
  %134 = getelementptr inbounds nuw i8, ptr %122, i64 24
  %135 = load ptr, ptr %134, align 8, !tbaa !106
  %136 = getelementptr inbounds nuw i8, ptr %124, i64 32
  %137 = load ptr, ptr %136, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %135, ptr align 1 %137, i64 %130, i1 false)
  %138 = load ptr, ptr %134, align 8, !tbaa !106
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 %130
  store ptr %139, ptr %134, align 8, !tbaa !106
  %140 = load ptr, ptr %136, align 8, !tbaa !58
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 %130
  store ptr %141, ptr %136, align 8, !tbaa !58
  %142 = getelementptr inbounds nuw i8, ptr %122, i64 40
  %143 = load i64, ptr %142, align 8, !tbaa !108
  %144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %143, i64 %130), !nosanitize !45
  %145 = extractvalue { i64, i1 } %144, 1, !nosanitize !45
  br i1 %145, label %146, label %147, !prof !46, !nosanitize !45

146:                                              ; preds = %133
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

147:                                              ; preds = %133
  %148 = extractvalue { i64, i1 } %144, 0, !nosanitize !45
  store i64 %148, ptr %142, align 8, !tbaa !108
  %149 = load i32, ptr %127, align 8, !tbaa !107
  %150 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %131), !nosanitize !45
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !45
  br i1 %151, label %152, label %153, !prof !46, !nosanitize !45

152:                                              ; preds = %147
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

153:                                              ; preds = %147
  %154 = extractvalue { i32, i1 } %150, 0, !nosanitize !45
  store i32 %154, ptr %127, align 8, !tbaa !107
  %155 = load i64, ptr %125, align 8, !tbaa !57
  %156 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %155, i64 %130), !nosanitize !45
  %157 = extractvalue { i64, i1 } %156, 1, !nosanitize !45
  br i1 %157, label %158, label %159, !prof !46, !nosanitize !45

158:                                              ; preds = %153
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

159:                                              ; preds = %153
  %160 = extractvalue { i64, i1 } %156, 0, !nosanitize !45
  store i64 %160, ptr %125, align 8, !tbaa !57
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = getelementptr inbounds nuw i8, ptr %124, i64 16
  %164 = load ptr, ptr %163, align 8, !tbaa !40
  store ptr %164, ptr %136, align 8, !tbaa !58
  br label %165

165:                                              ; preds = %162, %159, %116
  %166 = icmp eq i32 %41, %43
  br i1 %166, label %201, label %167

167:                                              ; preds = %165
  %168 = tail call i32 @llvm.umin.i32(i32 %44, i32 %59)
  %169 = load ptr, ptr %0, align 8, !tbaa !20
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 24
  %171 = load ptr, ptr %170, align 8, !tbaa !106
  %172 = load ptr, ptr %26, align 8, !tbaa !34
  %173 = load i64, ptr %20, align 8, !tbaa !74
  %174 = getelementptr inbounds i8, ptr %172, i64 %173
  %175 = zext i32 %168 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %171, ptr align 1 %174, i64 %175, i1 false)
  %176 = load ptr, ptr %0, align 8, !tbaa !20
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 24
  %178 = load ptr, ptr %177, align 8, !tbaa !106
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 %175
  store ptr %179, ptr %177, align 8, !tbaa !106
  %180 = getelementptr inbounds nuw i8, ptr %176, i64 32
  %181 = load i32, ptr %180, align 8, !tbaa !107
  %182 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %181, i32 %168), !nosanitize !45
  %183 = extractvalue { i32, i1 } %182, 1, !nosanitize !45
  br i1 %183, label %184, label %185, !prof !46, !nosanitize !45

184:                                              ; preds = %167
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

185:                                              ; preds = %167
  %186 = extractvalue { i32, i1 } %182, 0, !nosanitize !45
  store i32 %186, ptr %180, align 8, !tbaa !107
  %187 = getelementptr inbounds nuw i8, ptr %176, i64 40
  %188 = load i64, ptr %187, align 8, !tbaa !108
  %189 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %188, i64 %175), !nosanitize !45
  %190 = extractvalue { i64, i1 } %189, 1, !nosanitize !45
  br i1 %190, label %191, label %192, !prof !46, !nosanitize !45

191:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

192:                                              ; preds = %185
  %193 = extractvalue { i64, i1 } %189, 0, !nosanitize !45
  store i64 %193, ptr %187, align 8, !tbaa !108
  %194 = load i64, ptr %20, align 8, !tbaa !74
  %195 = add nsw i64 %194, %175
  store i64 %195, ptr %20, align 8, !tbaa !74
  %196 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %59, i32 %168), !nosanitize !45
  %197 = extractvalue { i32, i1 } %196, 1, !nosanitize !45
  br i1 %197, label %198, label %199, !prof !46, !nosanitize !45

198:                                              ; preds = %192
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

199:                                              ; preds = %192
  %200 = extractvalue { i32, i1 } %196, 0, !nosanitize !45
  br label %201

201:                                              ; preds = %199, %165
  %202 = phi i32 [ %200, %199 ], [ %59, %165 ]
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %265, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr %0, align 8, !tbaa !20
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 24
  %207 = load ptr, ptr %206, align 8, !tbaa !106
  %208 = getelementptr inbounds nuw i8, ptr %205, i64 8
  %209 = load i32, ptr %208, align 8, !tbaa !81
  %210 = tail call i32 @llvm.umin.i32(i32 %209, i32 %202)
  %211 = icmp eq i32 %209, 0
  br i1 %211, label %245, label %212

212:                                              ; preds = %204
  %213 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %209, i32 %210), !nosanitize !45
  %214 = extractvalue { i32, i1 } %213, 1, !nosanitize !45
  br i1 %214, label %215, label %216, !prof !46, !nosanitize !45

215:                                              ; preds = %212
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

216:                                              ; preds = %212
  %217 = extractvalue { i32, i1 } %213, 0, !nosanitize !45
  store i32 %217, ptr %208, align 8, !tbaa !81
  %218 = load ptr, ptr %205, align 8, !tbaa !82
  %219 = zext i32 %210 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %207, ptr align 1 %218, i64 %219, i1 false)
  %220 = getelementptr inbounds nuw i8, ptr %205, i64 56
  %221 = load ptr, ptr %220, align 8, !tbaa !19
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 48
  %223 = load i32, ptr %222, align 8, !tbaa !30
  switch i32 %223, label %232 [
    i32 1, label %224
    i32 2, label %228
  ]

224:                                              ; preds = %216
  %225 = getelementptr inbounds nuw i8, ptr %205, i64 96
  %226 = load i64, ptr %225, align 8, !tbaa !59
  %227 = tail call i64 @adler32(i64 noundef %226, ptr noundef %207, i32 noundef %210) #12
  store i64 %227, ptr %225, align 8, !tbaa !59
  br label %232

228:                                              ; preds = %216
  %229 = getelementptr inbounds nuw i8, ptr %205, i64 96
  %230 = load i64, ptr %229, align 8, !tbaa !59
  %231 = tail call i64 @crc32(i64 noundef %230, ptr noundef %207, i32 noundef %210) #12
  store i64 %231, ptr %229, align 8, !tbaa !59
  br label %232

232:                                              ; preds = %228, %224, %216
  %233 = load ptr, ptr %205, align 8, !tbaa !82
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 %219
  store ptr %234, ptr %205, align 8, !tbaa !82
  %235 = getelementptr inbounds nuw i8, ptr %205, i64 16
  %236 = load i64, ptr %235, align 8, !tbaa !55
  %237 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %236, i64 %219), !nosanitize !45
  %238 = extractvalue { i64, i1 } %237, 1, !nosanitize !45
  br i1 %238, label %239, label %240, !prof !46, !nosanitize !45

239:                                              ; preds = %232
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

240:                                              ; preds = %232
  %241 = extractvalue { i64, i1 } %237, 0, !nosanitize !45
  store i64 %241, ptr %235, align 8, !tbaa !55
  %242 = load ptr, ptr %0, align 8, !tbaa !20
  %243 = getelementptr inbounds nuw i8, ptr %242, i64 24
  %244 = load ptr, ptr %243, align 8, !tbaa !106
  br label %245

245:                                              ; preds = %240, %204
  %246 = phi ptr [ %207, %204 ], [ %244, %240 ]
  %247 = phi ptr [ %205, %204 ], [ %242, %240 ]
  %248 = getelementptr inbounds nuw i8, ptr %247, i64 24
  %249 = zext i32 %202 to i64
  %250 = getelementptr inbounds nuw i8, ptr %246, i64 %249
  store ptr %250, ptr %248, align 8, !tbaa !106
  %251 = getelementptr inbounds nuw i8, ptr %247, i64 32
  %252 = load i32, ptr %251, align 8, !tbaa !107
  %253 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %252, i32 %202), !nosanitize !45
  %254 = extractvalue { i32, i1 } %253, 1, !nosanitize !45
  br i1 %254, label %255, label %256, !prof !46, !nosanitize !45

255:                                              ; preds = %245
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

256:                                              ; preds = %245
  %257 = extractvalue { i32, i1 } %253, 0, !nosanitize !45
  store i32 %257, ptr %251, align 8, !tbaa !107
  %258 = getelementptr inbounds nuw i8, ptr %247, i64 40
  %259 = load i64, ptr %258, align 8, !tbaa !108
  %260 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %259, i64 %249), !nosanitize !45
  %261 = extractvalue { i64, i1 } %260, 1, !nosanitize !45
  br i1 %261, label %262, label %263, !prof !46, !nosanitize !45

262:                                              ; preds = %256
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

263:                                              ; preds = %256
  %264 = extractvalue { i64, i1 } %260, 0, !nosanitize !45
  store i64 %264, ptr %258, align 8, !tbaa !108
  br label %265

265:                                              ; preds = %263, %201
  %266 = icmp eq i32 %82, 0
  br i1 %266, label %27, label %267, !llvm.loop !134

267:                                              ; preds = %265
  %268 = load ptr, ptr %0, align 8, !tbaa !20
  br label %.loopexit, !llvm.loop !134

.loopexit:                                        ; preds = %69, %61, %32, %267
  %269 = phi ptr [ %268, %267 ], [ %35, %32 ], [ %35, %61 ], [ %35, %69 ]
  %270 = phi i1 [ false, %267 ], [ true, %32 ], [ true, %61 ], [ true, %69 ]
  %271 = getelementptr inbounds nuw i8, ptr %269, i64 8
  %272 = load i32, ptr %271, align 8, !tbaa !81
  %273 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %272), !nosanitize !45
  %274 = extractvalue { i32, i1 } %273, 0, !nosanitize !45
  %275 = extractvalue { i32, i1 } %273, 1, !nosanitize !45
  br i1 %275, label %276, label %277, !prof !46, !nosanitize !45

276:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

277:                                              ; preds = %.loopexit
  %278 = icmp eq i32 %274, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %277
  %280 = load i32, ptr %19, align 4, !tbaa !73
  %281 = zext i32 %280 to i64
  br label %359

282:                                              ; preds = %277
  %283 = load i32, ptr %10, align 8, !tbaa !32
  %284 = icmp ult i32 %274, %283
  br i1 %284, label %294, label %285

285:                                              ; preds = %282
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %286, align 8, !tbaa !125
  %287 = load ptr, ptr %26, align 8, !tbaa !34
  %288 = load ptr, ptr %269, align 8, !tbaa !82
  %289 = zext i32 %283 to i64
  %290 = sub nsw i64 0, %289
  %291 = getelementptr inbounds i8, ptr %288, i64 %290
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %287, ptr align 1 %291, i64 %289, i1 false)
  %292 = load i32, ptr %10, align 8, !tbaa !32
  store i32 %292, ptr %19, align 4, !tbaa !73
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %292, ptr %293, align 4, !tbaa !76
  br label %356

294:                                              ; preds = %282
  %295 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %296 = load i64, ptr %295, align 8, !tbaa !61
  %297 = load i32, ptr %19, align 4, !tbaa !73
  %298 = zext i32 %297 to i64
  %299 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %296, i64 %298), !nosanitize !45
  %300 = extractvalue { i64, i1 } %299, 1, !nosanitize !45
  br i1 %300, label %301, label %302, !prof !46, !nosanitize !45

301:                                              ; preds = %294
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

302:                                              ; preds = %294
  %303 = extractvalue { i64, i1 } %299, 0, !nosanitize !45
  %304 = zext i32 %274 to i64
  %305 = icmp ugt i64 %303, %304
  br i1 %305, label %327, label %306

306:                                              ; preds = %302
  %307 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %297, i32 %283), !nosanitize !45
  %308 = extractvalue { i32, i1 } %307, 1, !nosanitize !45
  br i1 %308, label %309, label %310, !prof !46, !nosanitize !45

309:                                              ; preds = %306
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

310:                                              ; preds = %306
  %311 = extractvalue { i32, i1 } %307, 0, !nosanitize !45
  store i32 %311, ptr %19, align 4, !tbaa !73
  %312 = load ptr, ptr %26, align 8, !tbaa !34
  %313 = zext i32 %283 to i64
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 %313
  %315 = zext i32 %311 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %312, ptr nonnull align 1 %314, i64 %315, i1 false)
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %317 = load i32, ptr %316, align 8, !tbaa !125
  %318 = icmp ult i32 %317, 2
  br i1 %318, label %319, label %321

319:                                              ; preds = %310
  %320 = add nuw nsw i32 %317, 1
  store i32 %320, ptr %316, align 8, !tbaa !125
  br label %321

321:                                              ; preds = %319, %310
  %322 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %323 = load i32, ptr %322, align 4, !tbaa !76
  %324 = load i32, ptr %19, align 4, !tbaa !73
  %325 = icmp ugt i32 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %321
  store i32 %324, ptr %322, align 4, !tbaa !76
  br label %327

327:                                              ; preds = %326, %321, %302
  %328 = phi i32 [ %324, %321 ], [ %324, %326 ], [ %297, %302 ]
  %329 = load ptr, ptr %26, align 8, !tbaa !34
  %330 = zext i32 %328 to i64
  %331 = getelementptr inbounds nuw i8, ptr %329, i64 %330
  %332 = load ptr, ptr %0, align 8, !tbaa !20
  %333 = load ptr, ptr %332, align 8, !tbaa !82
  %334 = sub nsw i64 0, %304
  %335 = getelementptr inbounds i8, ptr %333, i64 %334
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %331, ptr nonnull align 1 %335, i64 %304, i1 false)
  %336 = load i32, ptr %19, align 4, !tbaa !73
  %337 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %336, i32 %274), !nosanitize !45
  %338 = extractvalue { i32, i1 } %337, 1, !nosanitize !45
  br i1 %338, label %339, label %340, !prof !46, !nosanitize !45

339:                                              ; preds = %327
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

340:                                              ; preds = %327
  %341 = extractvalue { i32, i1 } %337, 0, !nosanitize !45
  store i32 %341, ptr %19, align 4, !tbaa !73
  %342 = load i32, ptr %10, align 8, !tbaa !32
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %344 = load i32, ptr %343, align 4, !tbaa !76
  %345 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %342, i32 %344), !nosanitize !45
  %346 = extractvalue { i32, i1 } %345, 1, !nosanitize !45
  br i1 %346, label %347, label %348, !prof !46, !nosanitize !45

347:                                              ; preds = %340
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

348:                                              ; preds = %340
  %349 = extractvalue { i32, i1 } %345, 0, !nosanitize !45
  %350 = tail call i32 @llvm.umin.i32(i32 %274, i32 %349)
  %351 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %344, i32 %350), !nosanitize !45
  %352 = extractvalue { i32, i1 } %351, 1, !nosanitize !45
  br i1 %352, label %353, label %354, !prof !46, !nosanitize !45

353:                                              ; preds = %348
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

354:                                              ; preds = %348
  %355 = extractvalue { i32, i1 } %351, 0, !nosanitize !45
  store i32 %355, ptr %343, align 4, !tbaa !76
  br label %356

356:                                              ; preds = %354, %285
  %357 = phi i32 [ %341, %354 ], [ %292, %285 ]
  %358 = zext i32 %357 to i64
  store i64 %358, ptr %20, align 8, !tbaa !74
  br label %359

359:                                              ; preds = %356, %279
  %360 = phi i64 [ %281, %279 ], [ %358, %356 ]
  %361 = phi i32 [ %280, %279 ], [ %357, %356 ]
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %363 = load i64, ptr %362, align 8, !tbaa !38
  %364 = icmp ult i64 %363, %360
  br i1 %364, label %365, label %366

365:                                              ; preds = %359
  store i64 %360, ptr %362, align 8, !tbaa !38
  br label %366

366:                                              ; preds = %365, %359
  br i1 %270, label %367, label %583

367:                                              ; preds = %366
  %368 = icmp ne i32 %1, 0
  switch i32 %1, label %369 [
    i32 4, label %377
    i32 0, label %377
  ]

369:                                              ; preds = %367
  %370 = load ptr, ptr %0, align 8, !tbaa !20
  %371 = getelementptr inbounds nuw i8, ptr %370, i64 8
  %372 = load i32, ptr %371, align 8, !tbaa !81
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %369
  %375 = load i64, ptr %20, align 8, !tbaa !74
  %376 = icmp eq i64 %375, %360
  br i1 %376, label %586, label %377

377:                                              ; preds = %374, %369, %367, %367
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %379 = load i64, ptr %378, align 8, !tbaa !61
  %380 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %379, i64 %360), !nosanitize !45
  %381 = extractvalue { i64, i1 } %380, 1, !nosanitize !45
  br i1 %381, label %382, label %383, !prof !46, !nosanitize !45

382:                                              ; preds = %377
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

383:                                              ; preds = %377
  %384 = extractvalue { i64, i1 } %380, 0, !nosanitize !45
  %385 = trunc i64 %384 to i32
  %386 = load ptr, ptr %0, align 8, !tbaa !20
  %387 = getelementptr inbounds nuw i8, ptr %386, i64 8
  %388 = load i32, ptr %387, align 8, !tbaa !81
  %389 = icmp ugt i32 %388, %385
  br i1 %389, label %390, label %422

390:                                              ; preds = %383
  %391 = load i64, ptr %20, align 8, !tbaa !74
  %392 = load i32, ptr %10, align 8, !tbaa !32
  %393 = zext i32 %392 to i64
  %394 = icmp slt i64 %391, %393
  br i1 %394, label %422, label %395

395:                                              ; preds = %390
  %396 = sub nsw i64 %391, %393
  store i64 %396, ptr %20, align 8, !tbaa !74
  %397 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %361, i32 %392), !nosanitize !45
  %398 = extractvalue { i32, i1 } %397, 1, !nosanitize !45
  br i1 %398, label %399, label %400, !prof !46, !nosanitize !45

399:                                              ; preds = %395
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

400:                                              ; preds = %395
  %401 = extractvalue { i32, i1 } %397, 0, !nosanitize !45
  store i32 %401, ptr %19, align 4, !tbaa !73
  %402 = load ptr, ptr %26, align 8, !tbaa !34
  %403 = getelementptr inbounds nuw i8, ptr %402, i64 %393
  %404 = zext i32 %401 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %402, ptr align 1 %403, i64 %404, i1 false)
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %406 = load i32, ptr %405, align 8, !tbaa !125
  %407 = icmp ult i32 %406, 2
  br i1 %407, label %408, label %410

408:                                              ; preds = %400
  %409 = add nuw nsw i32 %406, 1
  store i32 %409, ptr %405, align 8, !tbaa !125
  br label %410

410:                                              ; preds = %408, %400
  %411 = load i32, ptr %10, align 8, !tbaa !32
  %412 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %385, i32 %411), !nosanitize !45
  %413 = extractvalue { i32, i1 } %412, 0, !nosanitize !45
  %414 = extractvalue { i32, i1 } %412, 1, !nosanitize !45
  br i1 %414, label %415, label %416, !prof !46, !nosanitize !45

415:                                              ; preds = %410
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

416:                                              ; preds = %410
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %418 = load i32, ptr %417, align 4, !tbaa !76
  %419 = load i32, ptr %19, align 4, !tbaa !73
  %420 = icmp ugt i32 %418, %419
  br i1 %420, label %421, label %422

421:                                              ; preds = %416
  store i32 %419, ptr %417, align 4, !tbaa !76
  br label %422

422:                                              ; preds = %421, %416, %390, %383
  %423 = phi i32 [ %419, %421 ], [ %419, %416 ], [ %361, %390 ], [ %361, %383 ]
  %424 = phi i32 [ %413, %421 ], [ %413, %416 ], [ %385, %390 ], [ %385, %383 ]
  %425 = load ptr, ptr %0, align 8, !tbaa !20
  %426 = getelementptr inbounds nuw i8, ptr %425, i64 8
  %427 = load i32, ptr %426, align 8, !tbaa !81
  %428 = tail call i32 @llvm.umin.i32(i32 %424, i32 %427)
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %483, label %430

430:                                              ; preds = %422
  %431 = load ptr, ptr %26, align 8, !tbaa !34
  %432 = zext i32 %423 to i64
  %433 = getelementptr inbounds nuw i8, ptr %431, i64 %432
  %434 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %427, i32 %428), !nosanitize !45
  %435 = extractvalue { i32, i1 } %434, 1, !nosanitize !45
  br i1 %435, label %436, label %437, !prof !46, !nosanitize !45

436:                                              ; preds = %430
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

437:                                              ; preds = %430
  %438 = extractvalue { i32, i1 } %434, 0, !nosanitize !45
  store i32 %438, ptr %426, align 8, !tbaa !81
  %439 = load ptr, ptr %425, align 8, !tbaa !82
  %440 = zext i32 %428 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %433, ptr align 1 %439, i64 %440, i1 false)
  %441 = getelementptr inbounds nuw i8, ptr %425, i64 56
  %442 = load ptr, ptr %441, align 8, !tbaa !19
  %443 = getelementptr inbounds nuw i8, ptr %442, i64 48
  %444 = load i32, ptr %443, align 8, !tbaa !30
  switch i32 %444, label %453 [
    i32 1, label %445
    i32 2, label %449
  ]

445:                                              ; preds = %437
  %446 = getelementptr inbounds nuw i8, ptr %425, i64 96
  %447 = load i64, ptr %446, align 8, !tbaa !59
  %448 = tail call i64 @adler32(i64 noundef %447, ptr noundef %433, i32 noundef %428) #12
  store i64 %448, ptr %446, align 8, !tbaa !59
  br label %453

449:                                              ; preds = %437
  %450 = getelementptr inbounds nuw i8, ptr %425, i64 96
  %451 = load i64, ptr %450, align 8, !tbaa !59
  %452 = tail call i64 @crc32(i64 noundef %451, ptr noundef %433, i32 noundef %428) #12
  store i64 %452, ptr %450, align 8, !tbaa !59
  br label %453

453:                                              ; preds = %449, %445, %437
  %454 = load ptr, ptr %425, align 8, !tbaa !82
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 %440
  store ptr %455, ptr %425, align 8, !tbaa !82
  %456 = getelementptr inbounds nuw i8, ptr %425, i64 16
  %457 = load i64, ptr %456, align 8, !tbaa !55
  %458 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %457, i64 %440), !nosanitize !45
  %459 = extractvalue { i64, i1 } %458, 1, !nosanitize !45
  br i1 %459, label %460, label %461, !prof !46, !nosanitize !45

460:                                              ; preds = %453
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

461:                                              ; preds = %453
  %462 = extractvalue { i64, i1 } %458, 0, !nosanitize !45
  store i64 %462, ptr %456, align 8, !tbaa !55
  %463 = load i32, ptr %19, align 4, !tbaa !73
  %464 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %463, i32 %428), !nosanitize !45
  %465 = extractvalue { i32, i1 } %464, 1, !nosanitize !45
  br i1 %465, label %466, label %467, !prof !46, !nosanitize !45

466:                                              ; preds = %461
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

467:                                              ; preds = %461
  %468 = extractvalue { i32, i1 } %464, 0, !nosanitize !45
  store i32 %468, ptr %19, align 4, !tbaa !73
  %469 = load i32, ptr %10, align 8, !tbaa !32
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %471 = load i32, ptr %470, align 4, !tbaa !76
  %472 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %469, i32 %471), !nosanitize !45
  %473 = extractvalue { i32, i1 } %472, 1, !nosanitize !45
  br i1 %473, label %474, label %475, !prof !46, !nosanitize !45

474:                                              ; preds = %467
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

475:                                              ; preds = %467
  %476 = extractvalue { i32, i1 } %472, 0, !nosanitize !45
  %477 = tail call i32 @llvm.umin.i32(i32 %428, i32 %476)
  %478 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %471, i32 %477), !nosanitize !45
  %479 = extractvalue { i32, i1 } %478, 1, !nosanitize !45
  br i1 %479, label %480, label %481, !prof !46, !nosanitize !45

480:                                              ; preds = %475
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

481:                                              ; preds = %475
  %482 = extractvalue { i32, i1 } %478, 0, !nosanitize !45
  store i32 %482, ptr %470, align 4, !tbaa !76
  br label %483

483:                                              ; preds = %481, %422
  %484 = phi i32 [ %468, %481 ], [ %423, %422 ]
  %485 = load i64, ptr %362, align 8, !tbaa !38
  %486 = zext i32 %484 to i64
  %487 = icmp ult i64 %485, %486
  br i1 %487, label %488, label %489

488:                                              ; preds = %483
  store i64 %486, ptr %362, align 8, !tbaa !38
  br label %489

489:                                              ; preds = %488, %483
  %490 = load i32, ptr %18, align 4, !tbaa !101
  %491 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %490, i32 42), !nosanitize !45
  %492 = extractvalue { i32, i1 } %491, 1, !nosanitize !45
  br i1 %492, label %493, label %494, !prof !46, !nosanitize !45

493:                                              ; preds = %489
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

494:                                              ; preds = %489
  %495 = extractvalue { i32, i1 } %491, 0, !nosanitize !45
  %496 = lshr i32 %495, 3
  %497 = load i64, ptr %3, align 8, !tbaa !41
  %498 = zext nneg i32 %496 to i64
  %499 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %497, i64 %498), !nosanitize !45
  %500 = extractvalue { i64, i1 } %499, 1, !nosanitize !45
  br i1 %500, label %501, label %502, !prof !46, !nosanitize !45

501:                                              ; preds = %494
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

502:                                              ; preds = %494
  %503 = extractvalue { i64, i1 } %499, 0, !nosanitize !45
  %504 = tail call i64 @llvm.umin.i64(i64 %503, i64 65535)
  %505 = trunc nuw nsw i64 %504 to i32
  %506 = load i32, ptr %10, align 8, !tbaa !32
  %507 = tail call i32 @llvm.umin.i32(i32 %506, i32 %505)
  %508 = load i64, ptr %20, align 8, !tbaa !74
  %509 = trunc i64 %508 to i32
  %510 = sub i32 %484, %509
  %511 = icmp ult i32 %510, %507
  br i1 %511, label %512, label %521

512:                                              ; preds = %502
  %513 = icmp ne i32 %484, %509
  %514 = or i1 %23, %513
  %515 = and i1 %368, %514
  br i1 %515, label %516, label %586

516:                                              ; preds = %512
  %517 = load ptr, ptr %0, align 8, !tbaa !20
  %518 = getelementptr inbounds nuw i8, ptr %517, i64 8
  %519 = load i32, ptr %518, align 8, !tbaa !81
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %586

521:                                              ; preds = %516, %502
  %522 = tail call i32 @llvm.umin.i32(i32 %510, i32 %505)
  br i1 %23, label %523, label %531

523:                                              ; preds = %521
  %524 = load ptr, ptr %0, align 8, !tbaa !20
  %525 = getelementptr inbounds nuw i8, ptr %524, i64 8
  %526 = load i32, ptr %525, align 8, !tbaa !81
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %531

528:                                              ; preds = %523
  %529 = icmp ule i32 %510, %505
  %530 = zext i1 %529 to i32
  br label %531

531:                                              ; preds = %528, %523, %521
  %532 = phi i32 [ 0, %523 ], [ 0, %521 ], [ %530, %528 ]
  %533 = load ptr, ptr %26, align 8, !tbaa !34
  %534 = getelementptr inbounds i8, ptr %533, i64 %508
  %535 = zext nneg i32 %522 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %534, i64 noundef %535, i32 noundef %532) #12
  %536 = load i64, ptr %20, align 8, !tbaa !74
  %537 = add nsw i64 %536, %535
  store i64 %537, ptr %20, align 8, !tbaa !74
  %538 = load ptr, ptr %0, align 8, !tbaa !20
  %539 = getelementptr inbounds nuw i8, ptr %538, i64 56
  %540 = load ptr, ptr %539, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %540) #12
  %541 = getelementptr inbounds nuw i8, ptr %540, i64 40
  %542 = load i64, ptr %541, align 8, !tbaa !57
  %543 = getelementptr inbounds nuw i8, ptr %538, i64 32
  %544 = load i32, ptr %543, align 8, !tbaa !107
  %545 = zext i32 %544 to i64
  %546 = tail call i64 @llvm.umin.i64(i64 %542, i64 %545)
  %547 = trunc nuw i64 %546 to i32
  %548 = icmp eq i64 %546, 0
  br i1 %548, label %581, label %549

549:                                              ; preds = %531
  %550 = getelementptr inbounds nuw i8, ptr %538, i64 24
  %551 = load ptr, ptr %550, align 8, !tbaa !106
  %552 = getelementptr inbounds nuw i8, ptr %540, i64 32
  %553 = load ptr, ptr %552, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %551, ptr align 1 %553, i64 %546, i1 false)
  %554 = load ptr, ptr %550, align 8, !tbaa !106
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 %546
  store ptr %555, ptr %550, align 8, !tbaa !106
  %556 = load ptr, ptr %552, align 8, !tbaa !58
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 %546
  store ptr %557, ptr %552, align 8, !tbaa !58
  %558 = getelementptr inbounds nuw i8, ptr %538, i64 40
  %559 = load i64, ptr %558, align 8, !tbaa !108
  %560 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %559, i64 %546), !nosanitize !45
  %561 = extractvalue { i64, i1 } %560, 1, !nosanitize !45
  br i1 %561, label %562, label %563, !prof !46, !nosanitize !45

562:                                              ; preds = %549
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

563:                                              ; preds = %549
  %564 = extractvalue { i64, i1 } %560, 0, !nosanitize !45
  store i64 %564, ptr %558, align 8, !tbaa !108
  %565 = load i32, ptr %543, align 8, !tbaa !107
  %566 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %565, i32 %547), !nosanitize !45
  %567 = extractvalue { i32, i1 } %566, 1, !nosanitize !45
  br i1 %567, label %568, label %569, !prof !46, !nosanitize !45

568:                                              ; preds = %563
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

569:                                              ; preds = %563
  %570 = extractvalue { i32, i1 } %566, 0, !nosanitize !45
  store i32 %570, ptr %543, align 8, !tbaa !107
  %571 = load i64, ptr %541, align 8, !tbaa !57
  %572 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %571, i64 %546), !nosanitize !45
  %573 = extractvalue { i64, i1 } %572, 1, !nosanitize !45
  br i1 %573, label %574, label %575, !prof !46, !nosanitize !45

574:                                              ; preds = %569
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

575:                                              ; preds = %569
  %576 = extractvalue { i64, i1 } %572, 0, !nosanitize !45
  store i64 %576, ptr %541, align 8, !tbaa !57
  %577 = icmp eq i64 %576, 0
  br i1 %577, label %578, label %581

578:                                              ; preds = %575
  %579 = getelementptr inbounds nuw i8, ptr %540, i64 16
  %580 = load ptr, ptr %579, align 8, !tbaa !40
  store ptr %580, ptr %552, align 8, !tbaa !58
  br label %581

581:                                              ; preds = %578, %575, %531
  %582 = icmp eq i32 %532, 0
  br i1 %582, label %586, label %583

583:                                              ; preds = %581, %366
  %584 = phi i32 [ 3, %366 ], [ 2, %581 ]
  %585 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %585, align 8, !tbaa !102
  br label %586

586:                                              ; preds = %583, %581, %516, %512, %374
  %587 = phi i32 [ 0, %516 ], [ 1, %374 ], [ 0, %512 ], [ 0, %581 ], [ %584, %583 ]
  ret i32 %587
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
  br i1 %27, label %28, label %355

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 8, !tbaa !32
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %301, %28
  %32 = phi i32 [ %229, %301 ], [ 0, %28 ]
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
  br i1 %183, label %306, label %184

184:                                              ; preds = %176
  %185 = load ptr, ptr %7, align 8, !tbaa !34
  %186 = zext i32 %178 to i64
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 %186
  %188 = zext i32 %177 to i64
  %189 = getelementptr inbounds nuw i8, ptr %187, i64 %188
  %190 = tail call i32 @llvm.umin.i32(i32 %182, i32 %179)
  %191 = icmp eq i32 %179, 0
  br i1 %191, label %223, label %192

192:                                              ; preds = %184
  %193 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %182, i32 %190), !nosanitize !45
  %194 = extractvalue { i32, i1 } %193, 1, !nosanitize !45
  br i1 %194, label %195, label %196, !prof !46, !nosanitize !45

195:                                              ; preds = %192
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

196:                                              ; preds = %192
  %197 = extractvalue { i32, i1 } %193, 0, !nosanitize !45
  store i32 %197, ptr %181, align 8, !tbaa !81
  %198 = load ptr, ptr %180, align 8, !tbaa !82
  %199 = zext i32 %190 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %189, ptr align 1 %198, i64 %199, i1 false)
  %200 = getelementptr inbounds nuw i8, ptr %180, i64 56
  %201 = load ptr, ptr %200, align 8, !tbaa !19
  %202 = getelementptr inbounds nuw i8, ptr %201, i64 48
  %203 = load i32, ptr %202, align 8, !tbaa !30
  switch i32 %203, label %212 [
    i32 1, label %204
    i32 2, label %208
  ]

204:                                              ; preds = %196
  %205 = getelementptr inbounds nuw i8, ptr %180, i64 96
  %206 = load i64, ptr %205, align 8, !tbaa !59
  %207 = tail call i64 @adler32(i64 noundef %206, ptr noundef %189, i32 noundef %190) #12
  store i64 %207, ptr %205, align 8, !tbaa !59
  br label %212

208:                                              ; preds = %196
  %209 = getelementptr inbounds nuw i8, ptr %180, i64 96
  %210 = load i64, ptr %209, align 8, !tbaa !59
  %211 = tail call i64 @crc32(i64 noundef %210, ptr noundef %189, i32 noundef %190) #12
  store i64 %211, ptr %209, align 8, !tbaa !59
  br label %212

212:                                              ; preds = %208, %204, %196
  %213 = load ptr, ptr %180, align 8, !tbaa !82
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 %199
  store ptr %214, ptr %180, align 8, !tbaa !82
  %215 = getelementptr inbounds nuw i8, ptr %180, i64 16
  %216 = load i64, ptr %215, align 8, !tbaa !55
  %217 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %216, i64 %199), !nosanitize !45
  %218 = extractvalue { i64, i1 } %217, 1, !nosanitize !45
  br i1 %218, label %219, label %220, !prof !46, !nosanitize !45

219:                                              ; preds = %212
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

220:                                              ; preds = %212
  %221 = extractvalue { i64, i1 } %217, 0, !nosanitize !45
  store i64 %221, ptr %215, align 8, !tbaa !55
  %222 = load i32, ptr %3, align 4, !tbaa !75
  br label %223

223:                                              ; preds = %220, %184
  %224 = phi i32 [ %177, %184 ], [ %222, %220 ]
  %225 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 %190), !nosanitize !45
  %226 = extractvalue { i32, i1 } %225, 1, !nosanitize !45
  br i1 %226, label %227, label %228, !prof !46, !nosanitize !45

227:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

228:                                              ; preds = %223
  %229 = extractvalue { i32, i1 } %225, 0, !nosanitize !45
  store i32 %229, ptr %3, align 4, !tbaa !75
  %230 = load i32, ptr %10, align 4, !tbaa !76
  %231 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %229, i32 %230), !nosanitize !45
  %232 = extractvalue { i32, i1 } %231, 1, !nosanitize !45
  br i1 %232, label %233, label %234, !prof !46, !nosanitize !45

233:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

234:                                              ; preds = %228
  %235 = extractvalue { i32, i1 } %231, 0, !nosanitize !45
  %236 = icmp ugt i32 %235, 2
  br i1 %236, label %237, label %.loopexit

237:                                              ; preds = %234
  %238 = load i32, ptr %6, align 4, !tbaa !73
  %239 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %238, i32 %230), !nosanitize !45
  %240 = extractvalue { i32, i1 } %239, 0, !nosanitize !45
  %241 = extractvalue { i32, i1 } %239, 1, !nosanitize !45
  br i1 %241, label %242, label %243, !prof !46, !nosanitize !45

242:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

243:                                              ; preds = %237
  %244 = load ptr, ptr %7, align 8, !tbaa !34
  %245 = zext i32 %240 to i64
  %246 = getelementptr inbounds nuw i8, ptr %244, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !8
  %248 = zext i8 %247 to i32
  store i32 %248, ptr %15, align 8, !tbaa !80
  %249 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 1), !nosanitize !45
  %250 = extractvalue { i32, i1 } %249, 1, !nosanitize !45
  br i1 %250, label %251, label %252, !prof !46, !nosanitize !45

251:                                              ; preds = %243
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

252:                                              ; preds = %243
  %253 = extractvalue { i32, i1 } %249, 0, !nosanitize !45
  %254 = load i32, ptr %16, align 8, !tbaa !53
  %255 = shl i32 %248, %254
  %256 = zext i32 %253 to i64
  %257 = getelementptr inbounds nuw i8, ptr %244, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !8
  %259 = zext i8 %258 to i32
  %260 = xor i32 %255, %259
  %261 = load i32, ptr %17, align 4, !tbaa !52
  %262 = and i32 %260, %261
  store i32 %262, ptr %15, align 8, !tbaa !80
  br label %263

263:                                              ; preds = %296, %252
  %264 = phi i32 [ %262, %252 ], [ %281, %296 ]
  %265 = phi i32 [ %230, %252 ], [ %292, %296 ]
  %266 = phi i32 [ %240, %252 ], [ %297, %296 ]
  %267 = icmp eq i32 %265, 0
  br i1 %267, label %.loopexit, label %268

268:                                              ; preds = %263
  %269 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %266, i32 3), !nosanitize !45
  %270 = extractvalue { i32, i1 } %269, 1, !nosanitize !45
  br i1 %270, label %271, label %272, !prof !46, !nosanitize !45

271:                                              ; preds = %268
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

272:                                              ; preds = %268
  %273 = shl i32 %264, %254
  %274 = extractvalue { i32, i1 } %269, 0, !nosanitize !45
  %275 = add i32 %274, -1
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds nuw i8, ptr %244, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !8
  %279 = zext i8 %278 to i32
  %280 = xor i32 %273, %279
  %281 = and i32 %280, %261
  store i32 %281, ptr %15, align 8, !tbaa !80
  %282 = load ptr, ptr %12, align 8, !tbaa !37
  %283 = zext i32 %281 to i64
  %284 = getelementptr inbounds nuw [2 x i8], ptr %282, i64 %283
  %285 = load i16, ptr %284, align 2, !tbaa !62
  %286 = load ptr, ptr %13, align 8, !tbaa !35
  %287 = load i32, ptr %18, align 8, !tbaa !33
  %288 = and i32 %287, %266
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds nuw [2 x i8], ptr %286, i64 %289
  store i16 %285, ptr %290, align 2, !tbaa !62
  %291 = trunc i32 %266 to i16
  store i16 %291, ptr %284, align 2, !tbaa !62
  %292 = add i32 %265, -1
  store i32 %292, ptr %10, align 4, !tbaa !76
  %293 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %229, i32 %292), !nosanitize !45
  %294 = extractvalue { i32, i1 } %293, 1, !nosanitize !45
  br i1 %294, label %295, label %296, !prof !46, !nosanitize !45

295:                                              ; preds = %272
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

296:                                              ; preds = %272
  %297 = add nuw i32 %266, 1
  %298 = extractvalue { i32, i1 } %293, 0, !nosanitize !45
  %299 = icmp ult i32 %298, 3
  br i1 %299, label %.loopexit, label %263, !llvm.loop !91

.loopexit:                                        ; preds = %296, %263, %234
  %300 = icmp ult i32 %229, 262
  br i1 %300, label %301, label %306

301:                                              ; preds = %.loopexit
  %302 = load ptr, ptr %0, align 8, !tbaa !20
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 8
  %304 = load i32, ptr %303, align 8, !tbaa !81
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %31, !llvm.loop !92

306:                                              ; preds = %301, %.loopexit, %176
  %307 = phi i32 [ %229, %301 ], [ %229, %.loopexit ], [ %177, %176 ]
  %308 = load i64, ptr %19, align 8, !tbaa !38
  %309 = load i64, ptr %5, align 8, !tbaa !61
  %310 = icmp ult i64 %308, %309
  br i1 %310, label %311, label %350

311:                                              ; preds = %306
  %312 = load i32, ptr %6, align 4, !tbaa !73
  %313 = zext i32 %312 to i64
  %314 = zext i32 %307 to i64
  %315 = add nuw nsw i64 %313, %314
  %316 = icmp ult i64 %308, %315
  br i1 %316, label %317, label %327

317:                                              ; preds = %311
  %318 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %309, i64 %315), !nosanitize !45
  %319 = extractvalue { i64, i1 } %318, 1, !nosanitize !45
  br i1 %319, label %320, label %321, !prof !46, !nosanitize !45

320:                                              ; preds = %317
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

321:                                              ; preds = %317
  %322 = extractvalue { i64, i1 } %318, 0, !nosanitize !45
  %323 = tail call i64 @llvm.umin.i64(i64 %322, i64 258)
  %324 = load ptr, ptr %7, align 8, !tbaa !34
  %325 = getelementptr inbounds nuw i8, ptr %324, i64 %315
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %325, i8 0, i64 %323, i1 false)
  %326 = add nuw nsw i64 %323, %315
  br label %347

327:                                              ; preds = %311
  %328 = add nuw nsw i64 %315, 258
  %329 = icmp ult i64 %308, %328
  br i1 %329, label %330, label %350

330:                                              ; preds = %327
  %331 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %309, i64 %308), !nosanitize !45
  %332 = extractvalue { i64, i1 } %331, 1, !nosanitize !45
  br i1 %332, label %333, label %334, !prof !46, !nosanitize !45

333:                                              ; preds = %330
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

334:                                              ; preds = %330
  %335 = sub nuw nsw i64 %328, %308
  %336 = extractvalue { i64, i1 } %331, 0, !nosanitize !45
  %337 = tail call i64 @llvm.umin.i64(i64 %335, i64 %336)
  %338 = load ptr, ptr %7, align 8, !tbaa !34
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 %308
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

347:                                              ; preds = %345, %321
  %348 = phi i64 [ %326, %321 ], [ %346, %345 ]
  store i64 %348, ptr %19, align 8, !tbaa !38
  %349 = load i32, ptr %3, align 4, !tbaa !75
  br label %350

350:                                              ; preds = %347, %327, %306
  %351 = phi i32 [ %307, %306 ], [ %307, %327 ], [ %349, %347 ]
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %350
  %354 = icmp eq i32 %1, 0
  br i1 %354, label %.loopexit23, label %468

355:                                              ; preds = %350, %25
  store i32 0, ptr %20, align 8, !tbaa !78
  %356 = load ptr, ptr %7, align 8, !tbaa !34
  %357 = load i32, ptr %6, align 4, !tbaa !73
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds nuw i8, ptr %356, i64 %358
  %360 = load i8, ptr %359, align 1, !tbaa !8
  %361 = load i32, ptr %22, align 4, !tbaa !139
  %362 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %361, i32 1), !nosanitize !45
  %363 = extractvalue { i32, i1 } %362, 1, !nosanitize !45
  br i1 %363, label %364, label %365, !prof !46, !nosanitize !45

364:                                              ; preds = %355
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

365:                                              ; preds = %355
  %366 = extractvalue { i32, i1 } %362, 0, !nosanitize !45
  %367 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %366, ptr %22, align 4, !tbaa !139
  %368 = zext i32 %361 to i64
  %369 = getelementptr inbounds nuw i8, ptr %367, i64 %368
  store i8 0, ptr %369, align 1, !tbaa !8
  %370 = load i32, ptr %22, align 4, !tbaa !139
  %371 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %370, i32 1), !nosanitize !45
  %372 = extractvalue { i32, i1 } %371, 1, !nosanitize !45
  br i1 %372, label %373, label %374, !prof !46, !nosanitize !45

373:                                              ; preds = %365
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

374:                                              ; preds = %365
  %375 = extractvalue { i32, i1 } %371, 0, !nosanitize !45
  %376 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %375, ptr %22, align 4, !tbaa !139
  %377 = zext i32 %370 to i64
  %378 = getelementptr inbounds nuw i8, ptr %376, i64 %377
  store i8 0, ptr %378, align 1, !tbaa !8
  %379 = load i32, ptr %22, align 4, !tbaa !139
  %380 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %379, i32 1), !nosanitize !45
  %381 = extractvalue { i32, i1 } %380, 1, !nosanitize !45
  br i1 %381, label %382, label %383, !prof !46, !nosanitize !45

382:                                              ; preds = %374
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

383:                                              ; preds = %374
  %384 = extractvalue { i32, i1 } %380, 0, !nosanitize !45
  %385 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %384, ptr %22, align 4, !tbaa !139
  %386 = zext i32 %379 to i64
  %387 = getelementptr inbounds nuw i8, ptr %385, i64 %386
  store i8 %360, ptr %387, align 1, !tbaa !8
  %388 = zext i8 %360 to i64
  %389 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %388
  %390 = load i16, ptr %389, align 4, !tbaa !8
  %391 = add i16 %390, 1
  store i16 %391, ptr %389, align 4, !tbaa !8
  %392 = load i32, ptr %22, align 4, !tbaa !139
  %393 = load i32, ptr %24, align 8, !tbaa !47
  %394 = icmp eq i32 %392, %393
  %395 = load i32, ptr %3, align 4, !tbaa !75
  %396 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %395, i32 1), !nosanitize !45
  %397 = extractvalue { i32, i1 } %396, 1, !nosanitize !45
  br i1 %397, label %398, label %399, !prof !46, !nosanitize !45

398:                                              ; preds = %383
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

399:                                              ; preds = %383
  %400 = extractvalue { i32, i1 } %396, 0, !nosanitize !45
  store i32 %400, ptr %3, align 4, !tbaa !75
  %401 = load i32, ptr %6, align 4, !tbaa !73
  %402 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %401, i32 1), !nosanitize !45
  %403 = extractvalue { i32, i1 } %402, 1, !nosanitize !45
  br i1 %403, label %404, label %405, !prof !46, !nosanitize !45

404:                                              ; preds = %399
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

405:                                              ; preds = %399
  %406 = extractvalue { i32, i1 } %402, 0, !nosanitize !45
  store i32 %406, ptr %6, align 4, !tbaa !73
  br i1 %394, label %407, label %.backedge

407:                                              ; preds = %405
  %408 = load i64, ptr %9, align 8, !tbaa !74
  %409 = icmp sgt i64 %408, -1
  br i1 %409, label %410, label %414

410:                                              ; preds = %407
  %411 = load ptr, ptr %7, align 8, !tbaa !34
  %412 = and i64 %408, 4294967295
  %413 = getelementptr inbounds nuw i8, ptr %411, i64 %412
  br label %414

414:                                              ; preds = %410, %407
  %415 = phi ptr [ %413, %410 ], [ null, %407 ]
  %416 = zext i32 %406 to i64
  %417 = sub nsw i64 %416, %408
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %415, i64 noundef %417, i32 noundef 0) #12
  %418 = load i32, ptr %6, align 4, !tbaa !73
  %419 = zext i32 %418 to i64
  store i64 %419, ptr %9, align 8, !tbaa !74
  %420 = load ptr, ptr %0, align 8, !tbaa !20
  %421 = getelementptr inbounds nuw i8, ptr %420, i64 56
  %422 = load ptr, ptr %421, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %422) #12
  %423 = getelementptr inbounds nuw i8, ptr %422, i64 40
  %424 = load i64, ptr %423, align 8, !tbaa !57
  %425 = getelementptr inbounds nuw i8, ptr %420, i64 32
  %426 = load i32, ptr %425, align 8, !tbaa !107
  %427 = zext i32 %426 to i64
  %428 = tail call i64 @llvm.umin.i64(i64 %424, i64 %427)
  %429 = trunc nuw i64 %428 to i32
  %430 = icmp eq i64 %428, 0
  br i1 %430, label %463, label %431

431:                                              ; preds = %414
  %432 = getelementptr inbounds nuw i8, ptr %420, i64 24
  %433 = load ptr, ptr %432, align 8, !tbaa !106
  %434 = getelementptr inbounds nuw i8, ptr %422, i64 32
  %435 = load ptr, ptr %434, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %433, ptr align 1 %435, i64 %428, i1 false)
  %436 = load ptr, ptr %432, align 8, !tbaa !106
  %437 = getelementptr inbounds nuw i8, ptr %436, i64 %428
  store ptr %437, ptr %432, align 8, !tbaa !106
  %438 = load ptr, ptr %434, align 8, !tbaa !58
  %439 = getelementptr inbounds nuw i8, ptr %438, i64 %428
  store ptr %439, ptr %434, align 8, !tbaa !58
  %440 = getelementptr inbounds nuw i8, ptr %420, i64 40
  %441 = load i64, ptr %440, align 8, !tbaa !108
  %442 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %441, i64 %428), !nosanitize !45
  %443 = extractvalue { i64, i1 } %442, 1, !nosanitize !45
  br i1 %443, label %444, label %445, !prof !46, !nosanitize !45

444:                                              ; preds = %431
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

445:                                              ; preds = %431
  %446 = extractvalue { i64, i1 } %442, 0, !nosanitize !45
  store i64 %446, ptr %440, align 8, !tbaa !108
  %447 = load i32, ptr %425, align 8, !tbaa !107
  %448 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %447, i32 %429), !nosanitize !45
  %449 = extractvalue { i32, i1 } %448, 1, !nosanitize !45
  br i1 %449, label %450, label %451, !prof !46, !nosanitize !45

450:                                              ; preds = %445
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

451:                                              ; preds = %445
  %452 = extractvalue { i32, i1 } %448, 0, !nosanitize !45
  store i32 %452, ptr %425, align 8, !tbaa !107
  %453 = load i64, ptr %423, align 8, !tbaa !57
  %454 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %453, i64 %428), !nosanitize !45
  %455 = extractvalue { i64, i1 } %454, 1, !nosanitize !45
  br i1 %455, label %456, label %457, !prof !46, !nosanitize !45

456:                                              ; preds = %451
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

457:                                              ; preds = %451
  %458 = extractvalue { i64, i1 } %454, 0, !nosanitize !45
  store i64 %458, ptr %423, align 8, !tbaa !57
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %460, label %463

460:                                              ; preds = %457
  %461 = getelementptr inbounds nuw i8, ptr %422, i64 16
  %462 = load ptr, ptr %461, align 8, !tbaa !40
  store ptr %462, ptr %434, align 8, !tbaa !58
  br label %463

463:                                              ; preds = %460, %457, %414
  %464 = load ptr, ptr %0, align 8, !tbaa !20
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 32
  %466 = load i32, ptr %465, align 8, !tbaa !107
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %.loopexit23, label %.backedge

.backedge:                                        ; preds = %463, %405
  br label %25

468:                                              ; preds = %353
  store i32 0, ptr %10, align 4, !tbaa !76
  %469 = icmp eq i32 %1, 4
  br i1 %469, label %470, label %533

470:                                              ; preds = %468
  %471 = load i64, ptr %9, align 8, !tbaa !74
  %472 = icmp sgt i64 %471, -1
  br i1 %472, label %473, label %477

473:                                              ; preds = %470
  %474 = load ptr, ptr %7, align 8, !tbaa !34
  %475 = and i64 %471, 4294967295
  %476 = getelementptr inbounds nuw i8, ptr %474, i64 %475
  br label %477

477:                                              ; preds = %473, %470
  %478 = phi ptr [ %476, %473 ], [ null, %470 ]
  %479 = load i32, ptr %6, align 4, !tbaa !73
  %480 = zext i32 %479 to i64
  %481 = sub nsw i64 %480, %471
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %478, i64 noundef %481, i32 noundef 1) #12
  %482 = load i32, ptr %6, align 4, !tbaa !73
  %483 = zext i32 %482 to i64
  store i64 %483, ptr %9, align 8, !tbaa !74
  %484 = load ptr, ptr %0, align 8, !tbaa !20
  %485 = getelementptr inbounds nuw i8, ptr %484, i64 56
  %486 = load ptr, ptr %485, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %486) #12
  %487 = getelementptr inbounds nuw i8, ptr %486, i64 40
  %488 = load i64, ptr %487, align 8, !tbaa !57
  %489 = getelementptr inbounds nuw i8, ptr %484, i64 32
  %490 = load i32, ptr %489, align 8, !tbaa !107
  %491 = zext i32 %490 to i64
  %492 = tail call i64 @llvm.umin.i64(i64 %488, i64 %491)
  %493 = trunc nuw i64 %492 to i32
  %494 = icmp eq i64 %492, 0
  br i1 %494, label %527, label %495

495:                                              ; preds = %477
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

509:                                              ; preds = %495
  %510 = extractvalue { i64, i1 } %506, 0, !nosanitize !45
  store i64 %510, ptr %504, align 8, !tbaa !108
  %511 = load i32, ptr %489, align 8, !tbaa !107
  %512 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %511, i32 %493), !nosanitize !45
  %513 = extractvalue { i32, i1 } %512, 1, !nosanitize !45
  br i1 %513, label %514, label %515, !prof !46, !nosanitize !45

514:                                              ; preds = %509
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

515:                                              ; preds = %509
  %516 = extractvalue { i32, i1 } %512, 0, !nosanitize !45
  store i32 %516, ptr %489, align 8, !tbaa !107
  %517 = load i64, ptr %487, align 8, !tbaa !57
  %518 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %517, i64 %492), !nosanitize !45
  %519 = extractvalue { i64, i1 } %518, 1, !nosanitize !45
  br i1 %519, label %520, label %521, !prof !46, !nosanitize !45

520:                                              ; preds = %515
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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

527:                                              ; preds = %524, %521, %477
  %528 = load ptr, ptr %0, align 8, !tbaa !20
  %529 = getelementptr inbounds nuw i8, ptr %528, i64 32
  %530 = load i32, ptr %529, align 8, !tbaa !107
  %531 = icmp eq i32 %530, 0
  %532 = select i1 %531, i32 2, i32 3
  br label %.loopexit23

533:                                              ; preds = %468
  %534 = load i32, ptr %22, align 4, !tbaa !139
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %598, label %536

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
  %547 = sub nsw i64 %546, %537
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %544, i64 noundef %547, i32 noundef 0) #12
  %548 = load i32, ptr %6, align 4, !tbaa !73
  %549 = zext i32 %548 to i64
  store i64 %549, ptr %9, align 8, !tbaa !74
  %550 = load ptr, ptr %0, align 8, !tbaa !20
  %551 = getelementptr inbounds nuw i8, ptr %550, i64 56
  %552 = load ptr, ptr %551, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %552) #12
  %553 = getelementptr inbounds nuw i8, ptr %552, i64 40
  %554 = load i64, ptr %553, align 8, !tbaa !57
  %555 = getelementptr inbounds nuw i8, ptr %550, i64 32
  %556 = load i32, ptr %555, align 8, !tbaa !107
  %557 = zext i32 %556 to i64
  %558 = tail call i64 @llvm.umin.i64(i64 %554, i64 %557)
  %559 = trunc nuw i64 %558 to i32
  %560 = icmp eq i64 %558, 0
  br i1 %560, label %593, label %561

561:                                              ; preds = %543
  %562 = getelementptr inbounds nuw i8, ptr %550, i64 24
  %563 = load ptr, ptr %562, align 8, !tbaa !106
  %564 = getelementptr inbounds nuw i8, ptr %552, i64 32
  %565 = load ptr, ptr %564, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %563, ptr align 1 %565, i64 %558, i1 false)
  %566 = load ptr, ptr %562, align 8, !tbaa !106
  %567 = getelementptr inbounds nuw i8, ptr %566, i64 %558
  store ptr %567, ptr %562, align 8, !tbaa !106
  %568 = load ptr, ptr %564, align 8, !tbaa !58
  %569 = getelementptr inbounds nuw i8, ptr %568, i64 %558
  store ptr %569, ptr %564, align 8, !tbaa !58
  %570 = getelementptr inbounds nuw i8, ptr %550, i64 40
  %571 = load i64, ptr %570, align 8, !tbaa !108
  %572 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %571, i64 %558), !nosanitize !45
  %573 = extractvalue { i64, i1 } %572, 1, !nosanitize !45
  br i1 %573, label %574, label %575, !prof !46, !nosanitize !45

574:                                              ; preds = %561
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

575:                                              ; preds = %561
  %576 = extractvalue { i64, i1 } %572, 0, !nosanitize !45
  store i64 %576, ptr %570, align 8, !tbaa !108
  %577 = load i32, ptr %555, align 8, !tbaa !107
  %578 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %577, i32 %559), !nosanitize !45
  %579 = extractvalue { i32, i1 } %578, 1, !nosanitize !45
  br i1 %579, label %580, label %581, !prof !46, !nosanitize !45

580:                                              ; preds = %575
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

581:                                              ; preds = %575
  %582 = extractvalue { i32, i1 } %578, 0, !nosanitize !45
  store i32 %582, ptr %555, align 8, !tbaa !107
  %583 = load i64, ptr %553, align 8, !tbaa !57
  %584 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %583, i64 %558), !nosanitize !45
  %585 = extractvalue { i64, i1 } %584, 1, !nosanitize !45
  br i1 %585, label %586, label %587, !prof !46, !nosanitize !45

586:                                              ; preds = %581
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

587:                                              ; preds = %581
  %588 = extractvalue { i64, i1 } %584, 0, !nosanitize !45
  store i64 %588, ptr %553, align 8, !tbaa !57
  %589 = icmp eq i64 %588, 0
  br i1 %589, label %590, label %593

590:                                              ; preds = %587
  %591 = getelementptr inbounds nuw i8, ptr %552, i64 16
  %592 = load ptr, ptr %591, align 8, !tbaa !40
  store ptr %592, ptr %564, align 8, !tbaa !58
  br label %593

593:                                              ; preds = %590, %587, %543
  %594 = load ptr, ptr %0, align 8, !tbaa !20
  %595 = getelementptr inbounds nuw i8, ptr %594, i64 32
  %596 = load i32, ptr %595, align 8, !tbaa !107
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %.loopexit23, label %598

598:                                              ; preds = %593, %533
  br label %.loopexit23

.loopexit23:                                      ; preds = %463, %598, %593, %527, %353
  %599 = phi i32 [ 0, %353 ], [ %532, %527 ], [ 0, %593 ], [ 1, %598 ], [ 0, %463 ]
  ret i32 %599
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
  br label %364

33:                                               ; preds = %28
  %34 = load i32, ptr %5, align 8, !tbaa !32
  %35 = zext i32 %34 to i64
  br label %36

36:                                               ; preds = %306, %33
  %37 = phi i32 [ %234, %306 ], [ %29, %33 ]
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
  br i1 %188, label %311, label %189

189:                                              ; preds = %181
  %190 = load ptr, ptr %8, align 8, !tbaa !34
  %191 = zext i32 %183 to i64
  %192 = getelementptr inbounds nuw i8, ptr %190, i64 %191
  %193 = zext i32 %182 to i64
  %194 = getelementptr inbounds nuw i8, ptr %192, i64 %193
  %195 = tail call i32 @llvm.umin.i32(i32 %187, i32 %184)
  %196 = icmp eq i32 %184, 0
  br i1 %196, label %228, label %197

197:                                              ; preds = %189
  %198 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %187, i32 %195), !nosanitize !45
  %199 = extractvalue { i32, i1 } %198, 1, !nosanitize !45
  br i1 %199, label %200, label %201, !prof !46, !nosanitize !45

200:                                              ; preds = %197
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

201:                                              ; preds = %197
  %202 = extractvalue { i32, i1 } %198, 0, !nosanitize !45
  store i32 %202, ptr %186, align 8, !tbaa !81
  %203 = load ptr, ptr %185, align 8, !tbaa !82
  %204 = zext i32 %195 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %194, ptr align 1 %203, i64 %204, i1 false)
  %205 = getelementptr inbounds nuw i8, ptr %185, i64 56
  %206 = load ptr, ptr %205, align 8, !tbaa !19
  %207 = getelementptr inbounds nuw i8, ptr %206, i64 48
  %208 = load i32, ptr %207, align 8, !tbaa !30
  switch i32 %208, label %217 [
    i32 1, label %209
    i32 2, label %213
  ]

209:                                              ; preds = %201
  %210 = getelementptr inbounds nuw i8, ptr %185, i64 96
  %211 = load i64, ptr %210, align 8, !tbaa !59
  %212 = tail call i64 @adler32(i64 noundef %211, ptr noundef %194, i32 noundef %195) #12
  store i64 %212, ptr %210, align 8, !tbaa !59
  br label %217

213:                                              ; preds = %201
  %214 = getelementptr inbounds nuw i8, ptr %185, i64 96
  %215 = load i64, ptr %214, align 8, !tbaa !59
  %216 = tail call i64 @crc32(i64 noundef %215, ptr noundef %194, i32 noundef %195) #12
  store i64 %216, ptr %214, align 8, !tbaa !59
  br label %217

217:                                              ; preds = %213, %209, %201
  %218 = load ptr, ptr %185, align 8, !tbaa !82
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 %204
  store ptr %219, ptr %185, align 8, !tbaa !82
  %220 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %221 = load i64, ptr %220, align 8, !tbaa !55
  %222 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %221, i64 %204), !nosanitize !45
  %223 = extractvalue { i64, i1 } %222, 1, !nosanitize !45
  br i1 %223, label %224, label %225, !prof !46, !nosanitize !45

224:                                              ; preds = %217
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

225:                                              ; preds = %217
  %226 = extractvalue { i64, i1 } %222, 0, !nosanitize !45
  store i64 %226, ptr %220, align 8, !tbaa !55
  %227 = load i32, ptr %3, align 4, !tbaa !75
  br label %228

228:                                              ; preds = %225, %189
  %229 = phi i32 [ %182, %189 ], [ %227, %225 ]
  %230 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %229, i32 %195), !nosanitize !45
  %231 = extractvalue { i32, i1 } %230, 1, !nosanitize !45
  br i1 %231, label %232, label %233, !prof !46, !nosanitize !45

232:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

233:                                              ; preds = %228
  %234 = extractvalue { i32, i1 } %230, 0, !nosanitize !45
  store i32 %234, ptr %3, align 4, !tbaa !75
  %235 = load i32, ptr %11, align 4, !tbaa !76
  %236 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 %235), !nosanitize !45
  %237 = extractvalue { i32, i1 } %236, 1, !nosanitize !45
  br i1 %237, label %238, label %239, !prof !46, !nosanitize !45

238:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

239:                                              ; preds = %233
  %240 = extractvalue { i32, i1 } %236, 0, !nosanitize !45
  %241 = icmp ugt i32 %240, 2
  br i1 %241, label %242, label %.loopexit

242:                                              ; preds = %239
  %243 = load i32, ptr %7, align 4, !tbaa !73
  %244 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %243, i32 %235), !nosanitize !45
  %245 = extractvalue { i32, i1 } %244, 0, !nosanitize !45
  %246 = extractvalue { i32, i1 } %244, 1, !nosanitize !45
  br i1 %246, label %247, label %248, !prof !46, !nosanitize !45

247:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

248:                                              ; preds = %242
  %249 = load ptr, ptr %8, align 8, !tbaa !34
  %250 = zext i32 %245 to i64
  %251 = getelementptr inbounds nuw i8, ptr %249, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !8
  %253 = zext i8 %252 to i32
  store i32 %253, ptr %16, align 8, !tbaa !80
  %254 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %245, i32 1), !nosanitize !45
  %255 = extractvalue { i32, i1 } %254, 1, !nosanitize !45
  br i1 %255, label %256, label %257, !prof !46, !nosanitize !45

256:                                              ; preds = %248
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

257:                                              ; preds = %248
  %258 = extractvalue { i32, i1 } %254, 0, !nosanitize !45
  %259 = load i32, ptr %17, align 8, !tbaa !53
  %260 = shl i32 %253, %259
  %261 = zext i32 %258 to i64
  %262 = getelementptr inbounds nuw i8, ptr %249, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !8
  %264 = zext i8 %263 to i32
  %265 = xor i32 %260, %264
  %266 = load i32, ptr %18, align 4, !tbaa !52
  %267 = and i32 %265, %266
  store i32 %267, ptr %16, align 8, !tbaa !80
  br label %268

268:                                              ; preds = %301, %257
  %269 = phi i32 [ %267, %257 ], [ %286, %301 ]
  %270 = phi i32 [ %235, %257 ], [ %297, %301 ]
  %271 = phi i32 [ %245, %257 ], [ %302, %301 ]
  %272 = icmp eq i32 %270, 0
  br i1 %272, label %.loopexit, label %273

273:                                              ; preds = %268
  %274 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %271, i32 3), !nosanitize !45
  %275 = extractvalue { i32, i1 } %274, 1, !nosanitize !45
  br i1 %275, label %276, label %277, !prof !46, !nosanitize !45

276:                                              ; preds = %273
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  store i32 %286, ptr %16, align 8, !tbaa !80
  %287 = load ptr, ptr %13, align 8, !tbaa !37
  %288 = zext i32 %286 to i64
  %289 = getelementptr inbounds nuw [2 x i8], ptr %287, i64 %288
  %290 = load i16, ptr %289, align 2, !tbaa !62
  %291 = load ptr, ptr %14, align 8, !tbaa !35
  %292 = load i32, ptr %19, align 8, !tbaa !33
  %293 = and i32 %292, %271
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds nuw [2 x i8], ptr %291, i64 %294
  store i16 %290, ptr %295, align 2, !tbaa !62
  %296 = trunc i32 %271 to i16
  store i16 %296, ptr %289, align 2, !tbaa !62
  %297 = add i32 %270, -1
  store i32 %297, ptr %11, align 4, !tbaa !76
  %298 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 %297), !nosanitize !45
  %299 = extractvalue { i32, i1 } %298, 1, !nosanitize !45
  br i1 %299, label %300, label %301, !prof !46, !nosanitize !45

300:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

301:                                              ; preds = %277
  %302 = add nuw i32 %271, 1
  %303 = extractvalue { i32, i1 } %298, 0, !nosanitize !45
  %304 = icmp ult i32 %303, 3
  br i1 %304, label %.loopexit, label %268, !llvm.loop !91

.loopexit:                                        ; preds = %301, %268, %239
  %305 = icmp ult i32 %234, 262
  br i1 %305, label %306, label %311

306:                                              ; preds = %.loopexit
  %307 = load ptr, ptr %0, align 8, !tbaa !20
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 8
  %309 = load i32, ptr %308, align 8, !tbaa !81
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %36, !llvm.loop !92

311:                                              ; preds = %306, %.loopexit, %181
  %312 = phi i32 [ %234, %306 ], [ %234, %.loopexit ], [ %182, %181 ]
  %313 = load i64, ptr %20, align 8, !tbaa !38
  %314 = load i64, ptr %6, align 8, !tbaa !61
  %315 = icmp ult i64 %313, %314
  br i1 %315, label %316, label %355

316:                                              ; preds = %311
  %317 = load i32, ptr %7, align 4, !tbaa !73
  %318 = zext i32 %317 to i64
  %319 = zext i32 %312 to i64
  %320 = add nuw nsw i64 %318, %319
  %321 = icmp ult i64 %313, %320
  br i1 %321, label %322, label %332

322:                                              ; preds = %316
  %323 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %314, i64 %320), !nosanitize !45
  %324 = extractvalue { i64, i1 } %323, 1, !nosanitize !45
  br i1 %324, label %325, label %326, !prof !46, !nosanitize !45

325:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

326:                                              ; preds = %322
  %327 = extractvalue { i64, i1 } %323, 0, !nosanitize !45
  %328 = tail call i64 @llvm.umin.i64(i64 %327, i64 258)
  %329 = load ptr, ptr %8, align 8, !tbaa !34
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 %320
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %330, i8 0, i64 %328, i1 false)
  %331 = add nuw nsw i64 %328, %320
  br label %352

332:                                              ; preds = %316
  %333 = add nuw nsw i64 %320, 258
  %334 = icmp ult i64 %313, %333
  br i1 %334, label %335, label %355

335:                                              ; preds = %332
  %336 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %314, i64 %313), !nosanitize !45
  %337 = extractvalue { i64, i1 } %336, 1, !nosanitize !45
  br i1 %337, label %338, label %339, !prof !46, !nosanitize !45

338:                                              ; preds = %335
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

339:                                              ; preds = %335
  %340 = sub nuw nsw i64 %333, %313
  %341 = extractvalue { i64, i1 } %336, 0, !nosanitize !45
  %342 = tail call i64 @llvm.umin.i64(i64 %340, i64 %341)
  %343 = load ptr, ptr %8, align 8, !tbaa !34
  %344 = getelementptr inbounds nuw i8, ptr %343, i64 %313
  %345 = and i64 %342, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %344, i8 0, i64 %345, i1 false)
  %346 = load i64, ptr %20, align 8, !tbaa !38
  %347 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %346, i64 %342), !nosanitize !45
  %348 = extractvalue { i64, i1 } %347, 1, !nosanitize !45
  br i1 %348, label %349, label %350, !prof !46, !nosanitize !45

349:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

350:                                              ; preds = %339
  %351 = extractvalue { i64, i1 } %347, 0, !nosanitize !45
  br label %352

352:                                              ; preds = %350, %326
  %353 = phi i64 [ %331, %326 ], [ %351, %350 ]
  store i64 %353, ptr %20, align 8, !tbaa !38
  %354 = load i32, ptr %3, align 4, !tbaa !75
  br label %355

355:                                              ; preds = %352, %332, %311
  %356 = phi i32 [ %312, %311 ], [ %312, %332 ], [ %354, %352 ]
  %357 = icmp ult i32 %356, 259
  %358 = and i1 %21, %357
  br i1 %358, label %.loopexit29, label %359

359:                                              ; preds = %355
  %360 = icmp eq i32 %356, 0
  br i1 %360, label %614, label %361

361:                                              ; preds = %359
  store i32 0, ptr %4, align 8, !tbaa !78
  %362 = icmp ugt i32 %356, 2
  %363 = load i32, ptr %7, align 4, !tbaa !73
  %.pre.pre72.pre74 = load ptr, ptr %8, align 8, !tbaa !34
  br i1 %362, label %364, label %._crit_edge

364:                                              ; preds = %361, %31
  %.pre.pre72 = phi ptr [ %.pre.pre72.pre, %31 ], [ %.pre.pre72.pre74, %361 ]
  %365 = phi i32 [ %32, %31 ], [ %363, %361 ]
  %366 = phi i32 [ %29, %31 ], [ %356, %361 ]
  %367 = icmp eq i32 %365, 0
  br i1 %367, label %._crit_edge, label %368

368:                                              ; preds = %364
  %369 = zext i32 %365 to i64
  %370 = getelementptr inbounds nuw i8, ptr %.pre.pre72, i64 %369
  %371 = getelementptr inbounds i8, ptr %370, i64 -1
  %372 = load i8, ptr %371, align 1, !tbaa !8
  %373 = load i8, ptr %370, align 1, !tbaa !8
  %374 = icmp eq i8 %372, %373
  br i1 %374, label %375, label %._crit_edge

375:                                              ; preds = %368
  %376 = getelementptr inbounds nuw i8, ptr %370, i64 1
  %377 = load i8, ptr %376, align 1, !tbaa !8
  %378 = icmp eq i8 %372, %377
  br i1 %378, label %379, label %._crit_edge

379:                                              ; preds = %375
  %380 = getelementptr inbounds nuw i8, ptr %370, i64 2
  %381 = load i8, ptr %380, align 1, !tbaa !8
  %382 = icmp eq i8 %372, %381
  br i1 %382, label %383, label %._crit_edge

383:                                              ; preds = %379
  %384 = getelementptr inbounds nuw i8, ptr %370, i64 258
  br label %385

385:                                              ; preds = %415, %383
  %386 = phi i64 [ 2, %383 ], [ %416, %415 ]
  %387 = getelementptr inbounds nuw i8, ptr %370, i64 %386
  %388 = getelementptr inbounds nuw i8, ptr %387, i64 1
  %389 = load i8, ptr %388, align 1, !tbaa !8
  %390 = icmp eq i8 %372, %389
  br i1 %390, label %391, label %.split.loop.exit.split.loop.exit

391:                                              ; preds = %385
  %392 = getelementptr inbounds nuw i8, ptr %387, i64 2
  %393 = load i8, ptr %392, align 1, !tbaa !8
  %394 = icmp eq i8 %372, %393
  br i1 %394, label %395, label %.split.loop.exit.split.loop.exit106

395:                                              ; preds = %391
  %396 = getelementptr inbounds nuw i8, ptr %387, i64 3
  %397 = load i8, ptr %396, align 1, !tbaa !8
  %398 = icmp eq i8 %372, %397
  br i1 %398, label %399, label %.split.loop.exit.split.loop.exit108

399:                                              ; preds = %395
  %400 = getelementptr inbounds nuw i8, ptr %387, i64 4
  %401 = load i8, ptr %400, align 1, !tbaa !8
  %402 = icmp eq i8 %372, %401
  br i1 %402, label %403, label %.split.loop.exit.split.loop.exit110

403:                                              ; preds = %399
  %404 = getelementptr inbounds nuw i8, ptr %387, i64 5
  %405 = load i8, ptr %404, align 1, !tbaa !8
  %406 = icmp eq i8 %372, %405
  br i1 %406, label %407, label %.split.loop.exit.split.loop.exit112

407:                                              ; preds = %403
  %408 = getelementptr inbounds nuw i8, ptr %387, i64 6
  %409 = load i8, ptr %408, align 1, !tbaa !8
  %410 = icmp eq i8 %372, %409
  br i1 %410, label %411, label %.split.loop.exit.split.loop.exit114

411:                                              ; preds = %407
  %412 = getelementptr inbounds nuw i8, ptr %387, i64 7
  %413 = load i8, ptr %412, align 1, !tbaa !8
  %414 = icmp eq i8 %372, %413
  br i1 %414, label %415, label %.split.loop.exit.split.loop.exit116

415:                                              ; preds = %411
  %416 = add nuw nsw i64 %386, 8
  %417 = getelementptr inbounds nuw i8, ptr %370, i64 %416
  %418 = load i8, ptr %417, align 1, !tbaa !8
  %419 = icmp eq i8 %372, %418
  %420 = icmp samesign ult i64 %386, 250
  %421 = select i1 %419, i1 %420, i1 false
  br i1 %421, label %385, label %.split.loop.exit.split.loop.exit118, !llvm.loop !144

.split.loop.exit.split.loop.exit:                 ; preds = %385
  %422 = getelementptr inbounds nuw i8, ptr %387, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit106:              ; preds = %391
  %423 = getelementptr inbounds nuw i8, ptr %387, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit108:              ; preds = %395
  %424 = getelementptr inbounds nuw i8, ptr %387, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit110:              ; preds = %399
  %425 = getelementptr inbounds nuw i8, ptr %387, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit112:              ; preds = %403
  %426 = getelementptr inbounds nuw i8, ptr %387, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit114:              ; preds = %407
  %427 = getelementptr inbounds nuw i8, ptr %387, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit116:              ; preds = %411
  %428 = getelementptr inbounds nuw i8, ptr %387, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit118:              ; preds = %415
  %429 = getelementptr inbounds nuw i8, ptr %370, i64 %416
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit118, %.split.loop.exit.split.loop.exit116, %.split.loop.exit.split.loop.exit114, %.split.loop.exit.split.loop.exit112, %.split.loop.exit.split.loop.exit110, %.split.loop.exit.split.loop.exit108, %.split.loop.exit.split.loop.exit106, %.split.loop.exit.split.loop.exit
  %430 = phi ptr [ %423, %.split.loop.exit.split.loop.exit106 ], [ %424, %.split.loop.exit.split.loop.exit108 ], [ %422, %.split.loop.exit.split.loop.exit ], [ %428, %.split.loop.exit.split.loop.exit116 ], [ %427, %.split.loop.exit.split.loop.exit114 ], [ %426, %.split.loop.exit.split.loop.exit112 ], [ %425, %.split.loop.exit.split.loop.exit110 ], [ %429, %.split.loop.exit.split.loop.exit118 ]
  %431 = ptrtoint ptr %384 to i64
  %432 = ptrtoint ptr %430 to i64
  %433 = sub i64 %431, %432
  %434 = trunc i64 %433 to i32
  %435 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %434), !nosanitize !45
  %436 = extractvalue { i32, i1 } %435, 1, !nosanitize !45
  br i1 %436, label %437, label %438, !prof !46, !nosanitize !45

437:                                              ; preds = %.split.loop.exit
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

438:                                              ; preds = %.split.loop.exit
  %439 = extractvalue { i32, i1 } %435, 0, !nosanitize !45
  %440 = tail call i32 @llvm.umin.i32(i32 %439, i32 %366)
  store i32 %440, ptr %4, align 8
  %441 = icmp ugt i32 %440, 2
  %442 = load i32, ptr %23, align 4, !tbaa !139
  br i1 %441, label %443, label %502

443:                                              ; preds = %438
  %444 = trunc i32 %440 to i8
  %445 = add i8 %444, -3
  %446 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %442, i32 1), !nosanitize !45
  %447 = extractvalue { i32, i1 } %446, 1, !nosanitize !45
  br i1 %447, label %448, label %449, !prof !46, !nosanitize !45

448:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

449:                                              ; preds = %443
  %450 = extractvalue { i32, i1 } %446, 0, !nosanitize !45
  %451 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %450, ptr %23, align 4, !tbaa !139
  %452 = zext i32 %442 to i64
  %453 = getelementptr inbounds nuw i8, ptr %451, i64 %452
  store i8 1, ptr %453, align 1, !tbaa !8
  %454 = load i32, ptr %23, align 4, !tbaa !139
  %455 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %454, i32 1), !nosanitize !45
  %456 = extractvalue { i32, i1 } %455, 1, !nosanitize !45
  br i1 %456, label %457, label %458, !prof !46, !nosanitize !45

457:                                              ; preds = %449
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

458:                                              ; preds = %449
  %459 = extractvalue { i32, i1 } %455, 0, !nosanitize !45
  %460 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %459, ptr %23, align 4, !tbaa !139
  %461 = zext i32 %454 to i64
  %462 = getelementptr inbounds nuw i8, ptr %460, i64 %461
  store i8 0, ptr %462, align 1, !tbaa !8
  %463 = load i32, ptr %23, align 4, !tbaa !139
  %464 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %463, i32 1), !nosanitize !45
  %465 = extractvalue { i32, i1 } %464, 1, !nosanitize !45
  br i1 %465, label %466, label %467, !prof !46, !nosanitize !45

466:                                              ; preds = %458
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

467:                                              ; preds = %458
  %468 = extractvalue { i32, i1 } %464, 0, !nosanitize !45
  %469 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %468, ptr %23, align 4, !tbaa !139
  %470 = zext i32 %463 to i64
  %471 = getelementptr inbounds nuw i8, ptr %469, i64 %470
  store i8 %445, ptr %471, align 1, !tbaa !8
  %472 = zext i8 %445 to i64
  %473 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %472
  %474 = load i8, ptr %473, align 1, !tbaa !8
  %475 = zext i8 %474 to i64
  %476 = getelementptr [4 x i8], ptr %26, i64 %475
  %477 = load i16, ptr %476, align 4, !tbaa !8
  %478 = add i16 %477, 1
  store i16 %478, ptr %476, align 4, !tbaa !8
  %479 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %480 = zext i8 %479 to i64
  %481 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %480
  %482 = load i16, ptr %481, align 4, !tbaa !8
  %483 = add i16 %482, 1
  store i16 %483, ptr %481, align 4, !tbaa !8
  %484 = load i32, ptr %23, align 4, !tbaa !139
  %485 = load i32, ptr %25, align 8, !tbaa !47
  %486 = icmp eq i32 %484, %485
  %487 = load i32, ptr %4, align 8, !tbaa !78
  %488 = load i32, ptr %3, align 4, !tbaa !75
  %489 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %488, i32 %487), !nosanitize !45
  %490 = extractvalue { i32, i1 } %489, 1, !nosanitize !45
  br i1 %490, label %491, label %492, !prof !46, !nosanitize !45

491:                                              ; preds = %467
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

492:                                              ; preds = %467
  %493 = extractvalue { i32, i1 } %489, 0, !nosanitize !45
  store i32 %493, ptr %3, align 4, !tbaa !75
  %494 = load i32, ptr %7, align 4, !tbaa !73
  %495 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %494, i32 %487), !nosanitize !45
  %496 = extractvalue { i32, i1 } %495, 1, !nosanitize !45
  br i1 %496, label %497, label %498, !prof !46, !nosanitize !45

497:                                              ; preds = %492
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

498:                                              ; preds = %492
  %499 = extractvalue { i32, i1 } %495, 0, !nosanitize !45
  store i32 %499, ptr %7, align 4, !tbaa !73
  store i32 0, ptr %4, align 8, !tbaa !78
  br i1 %486, label %552, label %.backedge

._crit_edge:                                      ; preds = %361, %379, %375, %368, %364
  %.pre = phi ptr [ %.pre.pre72, %368 ], [ %.pre.pre72, %364 ], [ %.pre.pre72, %379 ], [ %.pre.pre72, %375 ], [ %.pre.pre72.pre74, %361 ]
  %500 = phi i32 [ %365, %368 ], [ 0, %364 ], [ %365, %379 ], [ %365, %375 ], [ %363, %361 ]
  %501 = load i32, ptr %23, align 4, !tbaa !139
  %.pre71 = zext i32 %500 to i64
  br label %502

502:                                              ; preds = %._crit_edge, %438
  %.pre-phi = phi i64 [ %.pre71, %._crit_edge ], [ %369, %438 ]
  %503 = phi ptr [ %.pre, %._crit_edge ], [ %.pre.pre72, %438 ]
  %504 = phi i32 [ %501, %._crit_edge ], [ %442, %438 ]
  %505 = getelementptr inbounds nuw i8, ptr %503, i64 %.pre-phi
  %506 = load i8, ptr %505, align 1, !tbaa !8
  %507 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %504, i32 1), !nosanitize !45
  %508 = extractvalue { i32, i1 } %507, 1, !nosanitize !45
  br i1 %508, label %509, label %510, !prof !46, !nosanitize !45

509:                                              ; preds = %502
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

510:                                              ; preds = %502
  %511 = extractvalue { i32, i1 } %507, 0, !nosanitize !45
  %512 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %511, ptr %23, align 4, !tbaa !139
  %513 = zext i32 %504 to i64
  %514 = getelementptr inbounds nuw i8, ptr %512, i64 %513
  store i8 0, ptr %514, align 1, !tbaa !8
  %515 = load i32, ptr %23, align 4, !tbaa !139
  %516 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %515, i32 1), !nosanitize !45
  %517 = extractvalue { i32, i1 } %516, 1, !nosanitize !45
  br i1 %517, label %518, label %519, !prof !46, !nosanitize !45

518:                                              ; preds = %510
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

519:                                              ; preds = %510
  %520 = extractvalue { i32, i1 } %516, 0, !nosanitize !45
  %521 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %520, ptr %23, align 4, !tbaa !139
  %522 = zext i32 %515 to i64
  %523 = getelementptr inbounds nuw i8, ptr %521, i64 %522
  store i8 0, ptr %523, align 1, !tbaa !8
  %524 = load i32, ptr %23, align 4, !tbaa !139
  %525 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %524, i32 1), !nosanitize !45
  %526 = extractvalue { i32, i1 } %525, 1, !nosanitize !45
  br i1 %526, label %527, label %528, !prof !46, !nosanitize !45

527:                                              ; preds = %519
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

528:                                              ; preds = %519
  %529 = extractvalue { i32, i1 } %525, 0, !nosanitize !45
  %530 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %529, ptr %23, align 4, !tbaa !139
  %531 = zext i32 %524 to i64
  %532 = getelementptr inbounds nuw i8, ptr %530, i64 %531
  store i8 %506, ptr %532, align 1, !tbaa !8
  %533 = zext i8 %506 to i64
  %534 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %533
  %535 = load i16, ptr %534, align 4, !tbaa !8
  %536 = add i16 %535, 1
  store i16 %536, ptr %534, align 4, !tbaa !8
  %537 = load i32, ptr %23, align 4, !tbaa !139
  %538 = load i32, ptr %25, align 8, !tbaa !47
  %539 = icmp eq i32 %537, %538
  %540 = load i32, ptr %3, align 4, !tbaa !75
  %541 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %540, i32 1), !nosanitize !45
  %542 = extractvalue { i32, i1 } %541, 1, !nosanitize !45
  br i1 %542, label %543, label %544, !prof !46, !nosanitize !45

543:                                              ; preds = %528
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

544:                                              ; preds = %528
  %545 = extractvalue { i32, i1 } %541, 0, !nosanitize !45
  store i32 %545, ptr %3, align 4, !tbaa !75
  %546 = load i32, ptr %7, align 4, !tbaa !73
  %547 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %546, i32 1), !nosanitize !45
  %548 = extractvalue { i32, i1 } %547, 1, !nosanitize !45
  br i1 %548, label %549, label %550, !prof !46, !nosanitize !45

549:                                              ; preds = %544
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

550:                                              ; preds = %544
  %551 = extractvalue { i32, i1 } %547, 0, !nosanitize !45
  store i32 %551, ptr %7, align 4, !tbaa !73
  br i1 %539, label %552, label %.backedge

552:                                              ; preds = %550, %498
  %553 = phi i32 [ %499, %498 ], [ %551, %550 ]
  %554 = load i64, ptr %10, align 8, !tbaa !74
  %555 = icmp sgt i64 %554, -1
  br i1 %555, label %556, label %560

556:                                              ; preds = %552
  %557 = load ptr, ptr %8, align 8, !tbaa !34
  %558 = and i64 %554, 4294967295
  %559 = getelementptr inbounds nuw i8, ptr %557, i64 %558
  br label %560

560:                                              ; preds = %556, %552
  %561 = phi ptr [ %559, %556 ], [ null, %552 ]
  %562 = zext i32 %553 to i64
  %563 = sub nsw i64 %562, %554
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %561, i64 noundef %563, i32 noundef 0) #12
  %564 = load i32, ptr %7, align 4, !tbaa !73
  %565 = zext i32 %564 to i64
  store i64 %565, ptr %10, align 8, !tbaa !74
  %566 = load ptr, ptr %0, align 8, !tbaa !20
  %567 = getelementptr inbounds nuw i8, ptr %566, i64 56
  %568 = load ptr, ptr %567, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %568) #12
  %569 = getelementptr inbounds nuw i8, ptr %568, i64 40
  %570 = load i64, ptr %569, align 8, !tbaa !57
  %571 = getelementptr inbounds nuw i8, ptr %566, i64 32
  %572 = load i32, ptr %571, align 8, !tbaa !107
  %573 = zext i32 %572 to i64
  %574 = tail call i64 @llvm.umin.i64(i64 %570, i64 %573)
  %575 = trunc nuw i64 %574 to i32
  %576 = icmp eq i64 %574, 0
  br i1 %576, label %609, label %577

577:                                              ; preds = %560
  %578 = getelementptr inbounds nuw i8, ptr %566, i64 24
  %579 = load ptr, ptr %578, align 8, !tbaa !106
  %580 = getelementptr inbounds nuw i8, ptr %568, i64 32
  %581 = load ptr, ptr %580, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %579, ptr align 1 %581, i64 %574, i1 false)
  %582 = load ptr, ptr %578, align 8, !tbaa !106
  %583 = getelementptr inbounds nuw i8, ptr %582, i64 %574
  store ptr %583, ptr %578, align 8, !tbaa !106
  %584 = load ptr, ptr %580, align 8, !tbaa !58
  %585 = getelementptr inbounds nuw i8, ptr %584, i64 %574
  store ptr %585, ptr %580, align 8, !tbaa !58
  %586 = getelementptr inbounds nuw i8, ptr %566, i64 40
  %587 = load i64, ptr %586, align 8, !tbaa !108
  %588 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %587, i64 %574), !nosanitize !45
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %590, label %591, !prof !46, !nosanitize !45

590:                                              ; preds = %577
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

591:                                              ; preds = %577
  %592 = extractvalue { i64, i1 } %588, 0, !nosanitize !45
  store i64 %592, ptr %586, align 8, !tbaa !108
  %593 = load i32, ptr %571, align 8, !tbaa !107
  %594 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %593, i32 %575), !nosanitize !45
  %595 = extractvalue { i32, i1 } %594, 1, !nosanitize !45
  br i1 %595, label %596, label %597, !prof !46, !nosanitize !45

596:                                              ; preds = %591
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

597:                                              ; preds = %591
  %598 = extractvalue { i32, i1 } %594, 0, !nosanitize !45
  store i32 %598, ptr %571, align 8, !tbaa !107
  %599 = load i64, ptr %569, align 8, !tbaa !57
  %600 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %599, i64 %574), !nosanitize !45
  %601 = extractvalue { i64, i1 } %600, 1, !nosanitize !45
  br i1 %601, label %602, label %603, !prof !46, !nosanitize !45

602:                                              ; preds = %597
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

603:                                              ; preds = %597
  %604 = extractvalue { i64, i1 } %600, 0, !nosanitize !45
  store i64 %604, ptr %569, align 8, !tbaa !57
  %605 = icmp eq i64 %604, 0
  br i1 %605, label %606, label %609

606:                                              ; preds = %603
  %607 = getelementptr inbounds nuw i8, ptr %568, i64 16
  %608 = load ptr, ptr %607, align 8, !tbaa !40
  store ptr %608, ptr %580, align 8, !tbaa !58
  br label %609

609:                                              ; preds = %606, %603, %560
  %610 = load ptr, ptr %0, align 8, !tbaa !20
  %611 = getelementptr inbounds nuw i8, ptr %610, i64 32
  %612 = load i32, ptr %611, align 8, !tbaa !107
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %.loopexit29, label %.backedge

.backedge:                                        ; preds = %609, %550, %498
  br label %28

614:                                              ; preds = %359
  store i32 0, ptr %11, align 4, !tbaa !76
  %615 = icmp eq i32 %1, 4
  br i1 %615, label %616, label %679

616:                                              ; preds = %614
  %617 = load i64, ptr %10, align 8, !tbaa !74
  %618 = icmp sgt i64 %617, -1
  br i1 %618, label %619, label %623

619:                                              ; preds = %616
  %620 = load ptr, ptr %8, align 8, !tbaa !34
  %621 = and i64 %617, 4294967295
  %622 = getelementptr inbounds nuw i8, ptr %620, i64 %621
  br label %623

623:                                              ; preds = %619, %616
  %624 = phi ptr [ %622, %619 ], [ null, %616 ]
  %625 = load i32, ptr %7, align 4, !tbaa !73
  %626 = zext i32 %625 to i64
  %627 = sub nsw i64 %626, %617
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %624, i64 noundef %627, i32 noundef 1) #12
  %628 = load i32, ptr %7, align 4, !tbaa !73
  %629 = zext i32 %628 to i64
  store i64 %629, ptr %10, align 8, !tbaa !74
  %630 = load ptr, ptr %0, align 8, !tbaa !20
  %631 = getelementptr inbounds nuw i8, ptr %630, i64 56
  %632 = load ptr, ptr %631, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %632) #12
  %633 = getelementptr inbounds nuw i8, ptr %632, i64 40
  %634 = load i64, ptr %633, align 8, !tbaa !57
  %635 = getelementptr inbounds nuw i8, ptr %630, i64 32
  %636 = load i32, ptr %635, align 8, !tbaa !107
  %637 = zext i32 %636 to i64
  %638 = tail call i64 @llvm.umin.i64(i64 %634, i64 %637)
  %639 = trunc nuw i64 %638 to i32
  %640 = icmp eq i64 %638, 0
  br i1 %640, label %673, label %641

641:                                              ; preds = %623
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

655:                                              ; preds = %641
  %656 = extractvalue { i64, i1 } %652, 0, !nosanitize !45
  store i64 %656, ptr %650, align 8, !tbaa !108
  %657 = load i32, ptr %635, align 8, !tbaa !107
  %658 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %657, i32 %639), !nosanitize !45
  %659 = extractvalue { i32, i1 } %658, 1, !nosanitize !45
  br i1 %659, label %660, label %661, !prof !46, !nosanitize !45

660:                                              ; preds = %655
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

661:                                              ; preds = %655
  %662 = extractvalue { i32, i1 } %658, 0, !nosanitize !45
  store i32 %662, ptr %635, align 8, !tbaa !107
  %663 = load i64, ptr %633, align 8, !tbaa !57
  %664 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %663, i64 %638), !nosanitize !45
  %665 = extractvalue { i64, i1 } %664, 1, !nosanitize !45
  br i1 %665, label %666, label %667, !prof !46, !nosanitize !45

666:                                              ; preds = %661
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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

673:                                              ; preds = %670, %667, %623
  %674 = load ptr, ptr %0, align 8, !tbaa !20
  %675 = getelementptr inbounds nuw i8, ptr %674, i64 32
  %676 = load i32, ptr %675, align 8, !tbaa !107
  %677 = icmp eq i32 %676, 0
  %678 = select i1 %677, i32 2, i32 3
  br label %.loopexit29

679:                                              ; preds = %614
  %680 = load i32, ptr %23, align 4, !tbaa !139
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %744, label %682

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
  %693 = sub nsw i64 %692, %683
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %690, i64 noundef %693, i32 noundef 0) #12
  %694 = load i32, ptr %7, align 4, !tbaa !73
  %695 = zext i32 %694 to i64
  store i64 %695, ptr %10, align 8, !tbaa !74
  %696 = load ptr, ptr %0, align 8, !tbaa !20
  %697 = getelementptr inbounds nuw i8, ptr %696, i64 56
  %698 = load ptr, ptr %697, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %698) #12
  %699 = getelementptr inbounds nuw i8, ptr %698, i64 40
  %700 = load i64, ptr %699, align 8, !tbaa !57
  %701 = getelementptr inbounds nuw i8, ptr %696, i64 32
  %702 = load i32, ptr %701, align 8, !tbaa !107
  %703 = zext i32 %702 to i64
  %704 = tail call i64 @llvm.umin.i64(i64 %700, i64 %703)
  %705 = trunc nuw i64 %704 to i32
  %706 = icmp eq i64 %704, 0
  br i1 %706, label %739, label %707

707:                                              ; preds = %689
  %708 = getelementptr inbounds nuw i8, ptr %696, i64 24
  %709 = load ptr, ptr %708, align 8, !tbaa !106
  %710 = getelementptr inbounds nuw i8, ptr %698, i64 32
  %711 = load ptr, ptr %710, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %709, ptr align 1 %711, i64 %704, i1 false)
  %712 = load ptr, ptr %708, align 8, !tbaa !106
  %713 = getelementptr inbounds nuw i8, ptr %712, i64 %704
  store ptr %713, ptr %708, align 8, !tbaa !106
  %714 = load ptr, ptr %710, align 8, !tbaa !58
  %715 = getelementptr inbounds nuw i8, ptr %714, i64 %704
  store ptr %715, ptr %710, align 8, !tbaa !58
  %716 = getelementptr inbounds nuw i8, ptr %696, i64 40
  %717 = load i64, ptr %716, align 8, !tbaa !108
  %718 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %717, i64 %704), !nosanitize !45
  %719 = extractvalue { i64, i1 } %718, 1, !nosanitize !45
  br i1 %719, label %720, label %721, !prof !46, !nosanitize !45

720:                                              ; preds = %707
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

721:                                              ; preds = %707
  %722 = extractvalue { i64, i1 } %718, 0, !nosanitize !45
  store i64 %722, ptr %716, align 8, !tbaa !108
  %723 = load i32, ptr %701, align 8, !tbaa !107
  %724 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %723, i32 %705), !nosanitize !45
  %725 = extractvalue { i32, i1 } %724, 1, !nosanitize !45
  br i1 %725, label %726, label %727, !prof !46, !nosanitize !45

726:                                              ; preds = %721
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

727:                                              ; preds = %721
  %728 = extractvalue { i32, i1 } %724, 0, !nosanitize !45
  store i32 %728, ptr %701, align 8, !tbaa !107
  %729 = load i64, ptr %699, align 8, !tbaa !57
  %730 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %729, i64 %704), !nosanitize !45
  %731 = extractvalue { i64, i1 } %730, 1, !nosanitize !45
  br i1 %731, label %732, label %733, !prof !46, !nosanitize !45

732:                                              ; preds = %727
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

733:                                              ; preds = %727
  %734 = extractvalue { i64, i1 } %730, 0, !nosanitize !45
  store i64 %734, ptr %699, align 8, !tbaa !57
  %735 = icmp eq i64 %734, 0
  br i1 %735, label %736, label %739

736:                                              ; preds = %733
  %737 = getelementptr inbounds nuw i8, ptr %698, i64 16
  %738 = load ptr, ptr %737, align 8, !tbaa !40
  store ptr %738, ptr %710, align 8, !tbaa !58
  br label %739

739:                                              ; preds = %736, %733, %689
  %740 = load ptr, ptr %0, align 8, !tbaa !20
  %741 = getelementptr inbounds nuw i8, ptr %740, i64 32
  %742 = load i32, ptr %741, align 8, !tbaa !107
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %.loopexit29, label %744

744:                                              ; preds = %739, %679
  br label %.loopexit29

.loopexit29:                                      ; preds = %609, %355, %744, %739, %673
  %745 = phi i32 [ 1, %744 ], [ %678, %673 ], [ 0, %739 ], [ 0, %355 ], [ 0, %609 ]
  ret i32 %745
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
  br i1 %35, label %36, label %366

36:                                               ; preds = %33
  %37 = load i32, ptr %4, align 8, !tbaa !32
  %38 = zext i32 %37 to i64
  br label %39

39:                                               ; preds = %309, %36
  %40 = phi i32 [ %237, %309 ], [ %34, %36 ]
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
  br i1 %191, label %314, label %192

192:                                              ; preds = %184
  %193 = load ptr, ptr %7, align 8, !tbaa !34
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  %215 = tail call i64 @adler32(i64 noundef %214, ptr noundef %197, i32 noundef %198) #12
  store i64 %215, ptr %213, align 8, !tbaa !59
  br label %220

216:                                              ; preds = %204
  %217 = getelementptr inbounds nuw i8, ptr %188, i64 96
  %218 = load i64, ptr %217, align 8, !tbaa !59
  %219 = tail call i64 @crc32(i64 noundef %218, ptr noundef %197, i32 noundef %198) #12
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

236:                                              ; preds = %231
  %237 = extractvalue { i32, i1 } %233, 0, !nosanitize !45
  store i32 %237, ptr %3, align 4, !tbaa !75
  %238 = load i32, ptr %10, align 4, !tbaa !76
  %239 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %238), !nosanitize !45
  %240 = extractvalue { i32, i1 } %239, 1, !nosanitize !45
  br i1 %240, label %241, label %242, !prof !46, !nosanitize !45

241:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

242:                                              ; preds = %236
  %243 = extractvalue { i32, i1 } %239, 0, !nosanitize !45
  %244 = icmp ugt i32 %243, 2
  br i1 %244, label %245, label %.loopexit

245:                                              ; preds = %242
  %246 = load i32, ptr %6, align 4, !tbaa !73
  %247 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %246, i32 %238), !nosanitize !45
  %248 = extractvalue { i32, i1 } %247, 0, !nosanitize !45
  %249 = extractvalue { i32, i1 } %247, 1, !nosanitize !45
  br i1 %249, label %250, label %251, !prof !46, !nosanitize !45

250:                                              ; preds = %245
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

251:                                              ; preds = %245
  %252 = load ptr, ptr %7, align 8, !tbaa !34
  %253 = zext i32 %248 to i64
  %254 = getelementptr inbounds nuw i8, ptr %252, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !8
  %256 = zext i8 %255 to i32
  store i32 %256, ptr %15, align 8, !tbaa !80
  %257 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 1), !nosanitize !45
  %258 = extractvalue { i32, i1 } %257, 1, !nosanitize !45
  br i1 %258, label %259, label %260, !prof !46, !nosanitize !45

259:                                              ; preds = %251
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

260:                                              ; preds = %251
  %261 = extractvalue { i32, i1 } %257, 0, !nosanitize !45
  %262 = load i32, ptr %16, align 8, !tbaa !53
  %263 = shl i32 %256, %262
  %264 = zext i32 %261 to i64
  %265 = getelementptr inbounds nuw i8, ptr %252, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !8
  %267 = zext i8 %266 to i32
  %268 = xor i32 %263, %267
  %269 = load i32, ptr %17, align 4, !tbaa !52
  %270 = and i32 %268, %269
  store i32 %270, ptr %15, align 8, !tbaa !80
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  store i32 %289, ptr %15, align 8, !tbaa !80
  %290 = load ptr, ptr %12, align 8, !tbaa !37
  %291 = zext i32 %289 to i64
  %292 = getelementptr inbounds nuw [2 x i8], ptr %290, i64 %291
  %293 = load i16, ptr %292, align 2, !tbaa !62
  %294 = load ptr, ptr %13, align 8, !tbaa !35
  %295 = load i32, ptr %18, align 8, !tbaa !33
  %296 = and i32 %295, %274
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds nuw [2 x i8], ptr %294, i64 %297
  store i16 %293, ptr %298, align 2, !tbaa !62
  %299 = trunc i32 %274 to i16
  store i16 %299, ptr %292, align 2, !tbaa !62
  %300 = add i32 %273, -1
  store i32 %300, ptr %10, align 4, !tbaa !76
  %301 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %300), !nosanitize !45
  %302 = extractvalue { i32, i1 } %301, 1, !nosanitize !45
  br i1 %302, label %303, label %304, !prof !46, !nosanitize !45

303:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  br i1 %313, label %314, label %39, !llvm.loop !92

314:                                              ; preds = %309, %.loopexit, %184
  %315 = phi i32 [ %237, %309 ], [ %237, %.loopexit ], [ %185, %184 ]
  %316 = load i64, ptr %19, align 8, !tbaa !38
  %317 = load i64, ptr %5, align 8, !tbaa !61
  %318 = icmp ult i64 %316, %317
  br i1 %318, label %319, label %358

319:                                              ; preds = %314
  %320 = load i32, ptr %6, align 4, !tbaa !73
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

329:                                              ; preds = %325
  %330 = extractvalue { i64, i1 } %326, 0, !nosanitize !45
  %331 = tail call i64 @llvm.umin.i64(i64 %330, i64 258)
  %332 = load ptr, ptr %7, align 8, !tbaa !34
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

342:                                              ; preds = %338
  %343 = sub nuw nsw i64 %336, %316
  %344 = extractvalue { i64, i1 } %339, 0, !nosanitize !45
  %345 = tail call i64 @llvm.umin.i64(i64 %343, i64 %344)
  %346 = load ptr, ptr %7, align 8, !tbaa !34
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 %316
  %348 = and i64 %345, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %347, i8 0, i64 %348, i1 false)
  %349 = load i64, ptr %19, align 8, !tbaa !38
  %350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %349, i64 %345), !nosanitize !45
  %351 = extractvalue { i64, i1 } %350, 1, !nosanitize !45
  br i1 %351, label %352, label %353, !prof !46, !nosanitize !45

352:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

353:                                              ; preds = %342
  %354 = extractvalue { i64, i1 } %350, 0, !nosanitize !45
  br label %355

355:                                              ; preds = %353, %329
  %356 = phi i64 [ %334, %329 ], [ %354, %353 ]
  store i64 %356, ptr %19, align 8, !tbaa !38
  %357 = load i32, ptr %3, align 4, !tbaa !75
  br label %358

358:                                              ; preds = %355, %335, %314
  %359 = phi i32 [ %315, %314 ], [ %315, %335 ], [ %357, %355 ]
  %360 = icmp ult i32 %359, 262
  %361 = and i1 %20, %360
  br i1 %361, label %.loopexit39, label %362

362:                                              ; preds = %358
  %363 = icmp eq i32 %359, 0
  br i1 %363, label %845, label %364

364:                                              ; preds = %362
  %365 = icmp ugt i32 %359, 2
  br i1 %365, label %366, label %556

366:                                              ; preds = %364, %33
  %367 = phi i32 [ %359, %364 ], [ %34, %33 ]
  %368 = load i32, ptr %6, align 4, !tbaa !73
  %369 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %368, i32 2), !nosanitize !45
  %370 = extractvalue { i32, i1 } %369, 1, !nosanitize !45
  br i1 %370, label %371, label %372, !prof !46, !nosanitize !45

371:                                              ; preds = %366
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

372:                                              ; preds = %366
  %373 = extractvalue { i32, i1 } %369, 0, !nosanitize !45
  %374 = load ptr, ptr %7, align 8, !tbaa !34
  %375 = load i32, ptr %15, align 8, !tbaa !80
  %376 = load i32, ptr %16, align 8, !tbaa !53
  %377 = shl i32 %375, %376
  %378 = zext i32 %373 to i64
  %379 = getelementptr inbounds nuw i8, ptr %374, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !8
  %381 = zext i8 %380 to i32
  %382 = xor i32 %377, %381
  %383 = load i32, ptr %17, align 4, !tbaa !52
  %384 = and i32 %382, %383
  store i32 %384, ptr %15, align 8, !tbaa !80
  %385 = load ptr, ptr %12, align 8, !tbaa !37
  %386 = zext i32 %384 to i64
  %387 = getelementptr inbounds nuw [2 x i8], ptr %385, i64 %386
  %388 = load i16, ptr %387, align 2, !tbaa !62
  %389 = load ptr, ptr %13, align 8, !tbaa !35
  %390 = load i32, ptr %18, align 8, !tbaa !33
  %391 = and i32 %390, %368
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds nuw [2 x i8], ptr %389, i64 %392
  store i16 %388, ptr %393, align 2, !tbaa !62
  %394 = zext i16 %388 to i32
  %395 = trunc i32 %368 to i16
  store i16 %395, ptr %387, align 2, !tbaa !62
  %396 = icmp eq i16 %388, 0
  br i1 %396, label %556, label %397

397:                                              ; preds = %372
  %398 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %368, i32 %394), !nosanitize !45
  %399 = extractvalue { i32, i1 } %398, 0, !nosanitize !45
  %400 = extractvalue { i32, i1 } %398, 1, !nosanitize !45
  br i1 %400, label %401, label %402, !prof !46, !nosanitize !45

401:                                              ; preds = %397
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

402:                                              ; preds = %397
  %403 = load i32, ptr %4, align 8, !tbaa !32
  %404 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %403, i32 262), !nosanitize !45
  %405 = extractvalue { i32, i1 } %404, 1, !nosanitize !45
  br i1 %405, label %406, label %407, !prof !46, !nosanitize !45

406:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

407:                                              ; preds = %402
  %408 = extractvalue { i32, i1 } %404, 0, !nosanitize !45
  %409 = icmp ugt i32 %399, %408
  br i1 %409, label %556, label %410

410:                                              ; preds = %407
  %411 = zext i32 %368 to i64
  %412 = getelementptr inbounds nuw i8, ptr %374, i64 %411
  %413 = load i32, ptr %21, align 8, !tbaa !70
  %414 = load i32, ptr %22, align 8, !tbaa !77
  %415 = load i32, ptr %23, align 4, !tbaa !72
  %416 = tail call i32 @llvm.usub.sat.i32(i32 %368, i32 %408)
  %417 = getelementptr inbounds nuw i8, ptr %412, i64 258
  %418 = sext i32 %414 to i64
  %419 = getelementptr i8, ptr %412, i64 %418
  %420 = getelementptr i8, ptr %419, i64 -1
  %421 = load i8, ptr %420, align 1, !tbaa !8
  %422 = load i8, ptr %419, align 1, !tbaa !8
  %423 = load i32, ptr %24, align 4, !tbaa !68
  %424 = icmp ult i32 %414, %423
  %425 = lshr i32 %415, 2
  %426 = select i1 %424, i32 %415, i32 %425
  %427 = tail call i32 @llvm.umin.i32(i32 %413, i32 %367)
  %428 = getelementptr inbounds nuw i8, ptr %412, i64 1
  %429 = ptrtoint ptr %417 to i64
  br label %430

430:                                              ; preds = %550, %410
  %431 = phi i32 [ %414, %410 ], [ %537, %550 ]
  %432 = phi i32 [ %426, %410 ], [ %551, %550 ]
  %433 = phi i32 [ %394, %410 ], [ %544, %550 ]
  %434 = phi i8 [ %421, %410 ], [ %538, %550 ]
  %435 = phi i8 [ %422, %410 ], [ %539, %550 ]
  %436 = zext nneg i32 %433 to i64
  %437 = getelementptr inbounds nuw i8, ptr %374, i64 %436
  %438 = sext i32 %431 to i64
  %439 = getelementptr inbounds i8, ptr %437, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !8
  %441 = icmp eq i8 %440, %435
  br i1 %441, label %442, label %536

442:                                              ; preds = %430
  %443 = getelementptr i8, ptr %439, i64 -1
  %444 = load i8, ptr %443, align 1, !tbaa !8
  %445 = icmp eq i8 %444, %434
  br i1 %445, label %446, label %536

446:                                              ; preds = %442
  %447 = load i8, ptr %437, align 1, !tbaa !8
  %448 = load i8, ptr %412, align 1, !tbaa !8
  %449 = icmp eq i8 %447, %448
  br i1 %449, label %450, label %536

450:                                              ; preds = %446
  %451 = getelementptr inbounds nuw i8, ptr %437, i64 1
  %452 = load i8, ptr %451, align 1, !tbaa !8
  %453 = load i8, ptr %428, align 1, !tbaa !8
  %454 = icmp eq i8 %452, %453
  br i1 %454, label %455, label %536

455:                                              ; preds = %450
  %456 = getelementptr inbounds nuw i8, ptr %437, i64 2
  br label %457

457:                                              ; preds = %502, %455
  %458 = phi ptr [ %456, %455 ], [ %506, %502 ]
  %459 = phi i64 [ 2, %455 ], [ %503, %502 ]
  %460 = getelementptr inbounds nuw i8, ptr %412, i64 %459
  %461 = getelementptr inbounds nuw i8, ptr %460, i64 1
  %462 = load i8, ptr %461, align 1, !tbaa !8
  %463 = getelementptr inbounds nuw i8, ptr %458, i64 1
  %464 = load i8, ptr %463, align 1, !tbaa !8
  %465 = icmp eq i8 %462, %464
  br i1 %465, label %466, label %.split.loop.exit.split.loop.exit

466:                                              ; preds = %457
  %467 = getelementptr inbounds nuw i8, ptr %460, i64 2
  %468 = load i8, ptr %467, align 1, !tbaa !8
  %469 = getelementptr inbounds nuw i8, ptr %458, i64 2
  %470 = load i8, ptr %469, align 1, !tbaa !8
  %471 = icmp eq i8 %468, %470
  br i1 %471, label %472, label %.split.loop.exit.split.loop.exit157

472:                                              ; preds = %466
  %473 = getelementptr inbounds nuw i8, ptr %460, i64 3
  %474 = load i8, ptr %473, align 1, !tbaa !8
  %475 = getelementptr inbounds nuw i8, ptr %458, i64 3
  %476 = load i8, ptr %475, align 1, !tbaa !8
  %477 = icmp eq i8 %474, %476
  br i1 %477, label %478, label %.split.loop.exit.split.loop.exit159

478:                                              ; preds = %472
  %479 = getelementptr inbounds nuw i8, ptr %460, i64 4
  %480 = load i8, ptr %479, align 1, !tbaa !8
  %481 = getelementptr inbounds nuw i8, ptr %458, i64 4
  %482 = load i8, ptr %481, align 1, !tbaa !8
  %483 = icmp eq i8 %480, %482
  br i1 %483, label %484, label %.split.loop.exit.split.loop.exit161

484:                                              ; preds = %478
  %485 = getelementptr inbounds nuw i8, ptr %460, i64 5
  %486 = load i8, ptr %485, align 1, !tbaa !8
  %487 = getelementptr inbounds nuw i8, ptr %458, i64 5
  %488 = load i8, ptr %487, align 1, !tbaa !8
  %489 = icmp eq i8 %486, %488
  br i1 %489, label %490, label %.split.loop.exit.split.loop.exit163

490:                                              ; preds = %484
  %491 = getelementptr inbounds nuw i8, ptr %460, i64 6
  %492 = load i8, ptr %491, align 1, !tbaa !8
  %493 = getelementptr inbounds nuw i8, ptr %458, i64 6
  %494 = load i8, ptr %493, align 1, !tbaa !8
  %495 = icmp eq i8 %492, %494
  br i1 %495, label %496, label %.split.loop.exit.split.loop.exit165

496:                                              ; preds = %490
  %497 = getelementptr inbounds nuw i8, ptr %460, i64 7
  %498 = load i8, ptr %497, align 1, !tbaa !8
  %499 = getelementptr inbounds nuw i8, ptr %458, i64 7
  %500 = load i8, ptr %499, align 1, !tbaa !8
  %501 = icmp eq i8 %498, %500
  br i1 %501, label %502, label %.split.loop.exit.split.loop.exit167

502:                                              ; preds = %496
  %503 = add nuw nsw i64 %459, 8
  %504 = getelementptr inbounds nuw i8, ptr %412, i64 %503
  %505 = load i8, ptr %504, align 1, !tbaa !8
  %506 = getelementptr inbounds nuw i8, ptr %458, i64 8
  %507 = load i8, ptr %506, align 1, !tbaa !8
  %508 = icmp eq i8 %505, %507
  %509 = icmp samesign ult i64 %459, 250
  %510 = select i1 %508, i1 %509, i1 false
  br i1 %510, label %457, label %.split.loop.exit.split.loop.exit169, !llvm.loop !152

.split.loop.exit.split.loop.exit:                 ; preds = %457
  %511 = getelementptr inbounds nuw i8, ptr %460, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit157:              ; preds = %466
  %512 = getelementptr inbounds nuw i8, ptr %460, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit159:              ; preds = %472
  %513 = getelementptr inbounds nuw i8, ptr %460, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit161:              ; preds = %478
  %514 = getelementptr inbounds nuw i8, ptr %460, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit163:              ; preds = %484
  %515 = getelementptr inbounds nuw i8, ptr %460, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit165:              ; preds = %490
  %516 = getelementptr inbounds nuw i8, ptr %460, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit167:              ; preds = %496
  %517 = getelementptr inbounds nuw i8, ptr %460, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit169:              ; preds = %502
  %518 = getelementptr inbounds nuw i8, ptr %412, i64 %503
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit169, %.split.loop.exit.split.loop.exit167, %.split.loop.exit.split.loop.exit165, %.split.loop.exit.split.loop.exit163, %.split.loop.exit.split.loop.exit161, %.split.loop.exit.split.loop.exit159, %.split.loop.exit.split.loop.exit157, %.split.loop.exit.split.loop.exit
  %519 = phi ptr [ %512, %.split.loop.exit.split.loop.exit157 ], [ %513, %.split.loop.exit.split.loop.exit159 ], [ %511, %.split.loop.exit.split.loop.exit ], [ %517, %.split.loop.exit.split.loop.exit167 ], [ %516, %.split.loop.exit.split.loop.exit165 ], [ %515, %.split.loop.exit.split.loop.exit163 ], [ %514, %.split.loop.exit.split.loop.exit161 ], [ %518, %.split.loop.exit.split.loop.exit169 ]
  %520 = ptrtoint ptr %519 to i64
  %521 = sub i64 %520, %429
  %522 = trunc i64 %521 to i32
  %523 = add i32 %522, 258
  %524 = icmp sgt i32 %523, %431
  br i1 %524, label %525, label %536

525:                                              ; preds = %.split.loop.exit
  store i32 %433, ptr %8, align 8, !tbaa !83
  %526 = icmp slt i32 %523, %427
  br i1 %526, label %527, label %553

527:                                              ; preds = %525
  %528 = shl i64 %521, 32
  %529 = add i64 %528, 1103806595072
  %530 = ashr exact i64 %529, 32
  %531 = getelementptr inbounds i8, ptr %412, i64 %530
  %532 = load i8, ptr %531, align 1, !tbaa !8
  %533 = sext i32 %523 to i64
  %534 = getelementptr inbounds i8, ptr %412, i64 %533
  %535 = load i8, ptr %534, align 1, !tbaa !8
  br label %536

536:                                              ; preds = %527, %.split.loop.exit, %450, %446, %442, %430
  %537 = phi i32 [ %431, %430 ], [ %431, %442 ], [ %431, %446 ], [ %431, %450 ], [ %523, %527 ], [ %431, %.split.loop.exit ]
  %538 = phi i8 [ %434, %430 ], [ %434, %442 ], [ %434, %446 ], [ %434, %450 ], [ %532, %527 ], [ %434, %.split.loop.exit ]
  %539 = phi i8 [ %435, %430 ], [ %435, %442 ], [ %435, %446 ], [ %435, %450 ], [ %535, %527 ], [ %435, %.split.loop.exit ]
  %540 = and i32 %433, %390
  %541 = zext nneg i32 %540 to i64
  %542 = getelementptr inbounds nuw [2 x i8], ptr %389, i64 %541
  %543 = load i16, ptr %542, align 2, !tbaa !62
  %544 = zext i16 %543 to i32
  %545 = icmp ult i32 %416, %544
  br i1 %545, label %546, label %553

546:                                              ; preds = %536
  %547 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %432, i32 1), !nosanitize !45
  %548 = extractvalue { i32, i1 } %547, 1, !nosanitize !45
  br i1 %548, label %549, label %550, !prof !46, !nosanitize !45

549:                                              ; preds = %546
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

550:                                              ; preds = %546
  %551 = extractvalue { i32, i1 } %547, 0, !nosanitize !45
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %430, !llvm.loop !153

553:                                              ; preds = %550, %536, %525
  %554 = phi i32 [ %537, %550 ], [ %537, %536 ], [ %523, %525 ]
  %555 = tail call i32 @llvm.umin.i32(i32 %554, i32 %367)
  store i32 %555, ptr %25, align 8, !tbaa !78
  br label %558

556:                                              ; preds = %407, %372, %364
  %557 = load i32, ptr %25, align 8, !tbaa !78
  br label %558

558:                                              ; preds = %556, %553
  %559 = phi i32 [ %557, %556 ], [ %555, %553 ]
  %560 = icmp ugt i32 %559, 2
  br i1 %560, label %561, label %720

561:                                              ; preds = %558
  %562 = trunc i32 %559 to i8
  %563 = add i8 %562, -3
  %564 = load i32, ptr %6, align 4, !tbaa !73
  %565 = load i32, ptr %8, align 8, !tbaa !83
  %566 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %564, i32 %565), !nosanitize !45
  %567 = extractvalue { i32, i1 } %566, 1, !nosanitize !45
  br i1 %567, label %568, label %569, !prof !46, !nosanitize !45

568:                                              ; preds = %561
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

569:                                              ; preds = %561
  %570 = extractvalue { i32, i1 } %566, 0, !nosanitize !45
  %571 = trunc i32 %570 to i16
  %572 = load i32, ptr %27, align 4, !tbaa !139
  %573 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %572, i32 1), !nosanitize !45
  %574 = extractvalue { i32, i1 } %573, 1, !nosanitize !45
  br i1 %574, label %575, label %576, !prof !46, !nosanitize !45

575:                                              ; preds = %569
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

576:                                              ; preds = %569
  %577 = extractvalue { i32, i1 } %573, 0, !nosanitize !45
  %578 = load ptr, ptr %26, align 8, !tbaa !44
  %579 = trunc i32 %570 to i8
  store i32 %577, ptr %27, align 4, !tbaa !139
  %580 = zext i32 %572 to i64
  %581 = getelementptr inbounds nuw i8, ptr %578, i64 %580
  store i8 %579, ptr %581, align 1, !tbaa !8
  %582 = load i32, ptr %27, align 4, !tbaa !139
  %583 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %582, i32 1), !nosanitize !45
  %584 = extractvalue { i32, i1 } %583, 1, !nosanitize !45
  br i1 %584, label %585, label %586, !prof !46, !nosanitize !45

585:                                              ; preds = %576
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

586:                                              ; preds = %576
  %587 = extractvalue { i32, i1 } %583, 0, !nosanitize !45
  %588 = load ptr, ptr %26, align 8, !tbaa !44
  %589 = lshr i32 %570, 8
  %590 = trunc i32 %589 to i8
  store i32 %587, ptr %27, align 4, !tbaa !139
  %591 = zext i32 %582 to i64
  %592 = getelementptr inbounds nuw i8, ptr %588, i64 %591
  store i8 %590, ptr %592, align 1, !tbaa !8
  %593 = load i32, ptr %27, align 4, !tbaa !139
  %594 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %593, i32 1), !nosanitize !45
  %595 = extractvalue { i32, i1 } %594, 1, !nosanitize !45
  br i1 %595, label %596, label %597, !prof !46, !nosanitize !45

596:                                              ; preds = %586
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

597:                                              ; preds = %586
  %598 = extractvalue { i32, i1 } %594, 0, !nosanitize !45
  %599 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %598, ptr %27, align 4, !tbaa !139
  %600 = zext i32 %593 to i64
  %601 = getelementptr inbounds nuw i8, ptr %599, i64 %600
  store i8 %563, ptr %601, align 1, !tbaa !8
  %602 = add i16 %571, -1
  %603 = zext i8 %563 to i64
  %604 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %603
  %605 = load i8, ptr %604, align 1, !tbaa !8
  %606 = zext i8 %605 to i64
  %607 = getelementptr [4 x i8], ptr %30, i64 %606
  %608 = load i16, ptr %607, align 4, !tbaa !8
  %609 = add i16 %608, 1
  store i16 %609, ptr %607, align 4, !tbaa !8
  %610 = icmp ult i16 %602, 256
  br i1 %610, label %611, label %614

611:                                              ; preds = %597
  %612 = zext nneg i16 %602 to i64
  %613 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %612
  br label %619

614:                                              ; preds = %597
  %615 = lshr i16 %602, 7
  %616 = zext nneg i16 %615 to i64
  %617 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %616
  %618 = getelementptr inbounds nuw i8, ptr %617, i64 256
  br label %619

619:                                              ; preds = %614, %611
  %620 = phi ptr [ %613, %611 ], [ %618, %614 ]
  %621 = load i8, ptr %620, align 1, !tbaa !8
  %622 = zext i8 %621 to i64
  %623 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %622
  %624 = load i16, ptr %623, align 4, !tbaa !8
  %625 = add i16 %624, 1
  store i16 %625, ptr %623, align 4, !tbaa !8
  %626 = load i32, ptr %27, align 4, !tbaa !139
  %627 = load i32, ptr %29, align 8, !tbaa !47
  %628 = icmp eq i32 %626, %627
  %629 = load i32, ptr %25, align 8, !tbaa !78
  %630 = load i32, ptr %3, align 4, !tbaa !75
  %631 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %630, i32 %629), !nosanitize !45
  %632 = extractvalue { i32, i1 } %631, 1, !nosanitize !45
  br i1 %632, label %633, label %634, !prof !46, !nosanitize !45

633:                                              ; preds = %619
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

634:                                              ; preds = %619
  %635 = extractvalue { i32, i1 } %631, 0, !nosanitize !45
  store i32 %635, ptr %3, align 4, !tbaa !75
  %636 = load i32, ptr %32, align 8, !tbaa !66
  %637 = icmp ule i32 %629, %636
  %638 = icmp ugt i32 %635, 2
  %639 = select i1 %637, i1 %638, i1 false
  br i1 %639, label %640, label %705

640:                                              ; preds = %634
  %641 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %629, i32 1), !nosanitize !45
  %642 = extractvalue { i32, i1 } %641, 1, !nosanitize !45
  br i1 %642, label %643, label %644, !prof !46, !nosanitize !45

643:                                              ; preds = %640
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

644:                                              ; preds = %640
  %645 = extractvalue { i32, i1 } %641, 0, !nosanitize !45
  store i32 %645, ptr %25, align 8, !tbaa !78
  %646 = load i32, ptr %6, align 4, !tbaa !73
  %647 = xor i32 %646, -1
  %648 = add i32 %629, -2
  %umin = tail call i32 @llvm.umin.i32(i32 %645, i32 %648)
  %649 = freeze i32 %umin
  %650 = add i32 %646, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %650, i32 -2)
  %651 = xor i32 %646, -1
  %652 = add i32 %umax, %651
  %umin87 = tail call i32 @llvm.umin.i32(i32 %652, i32 %647)
  %umin88 = tail call i32 @llvm.umin.i32(i32 %649, i32 %umin87)
  %653 = icmp eq i32 %umin88, %647
  %654 = icmp eq i32 %645, %umin88
  br i1 %653, label %702, label %.split, !prof !46, !nosanitize !45

.split:                                           ; preds = %644
  %655 = icmp eq i32 %652, %umin88
  br i1 %655, label %.split.split.us, label %.split.split, !prof !46, !nosanitize !45

.split.split.us:                                  ; preds = %.split
  %656 = add i32 %646, 1
  store i32 %656, ptr %6, align 4, !tbaa !73
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

.split.split:                                     ; preds = %.split
  br i1 %654, label %.split.split.split.us, label %.split.split.split, !prof !46, !nosanitize !45

.split.split.split.us:                            ; preds = %.split.split
  %657 = add i32 %646, 1
  store i32 %657, ptr %6, align 4, !tbaa !73
  %658 = add i32 %646, 3
  %659 = load ptr, ptr %7, align 8, !tbaa !34
  %660 = load i32, ptr %15, align 8, !tbaa !80
  %661 = load i32, ptr %16, align 8, !tbaa !53
  %662 = shl i32 %660, %661
  %663 = zext i32 %658 to i64
  %664 = getelementptr inbounds nuw i8, ptr %659, i64 %663
  %665 = load i8, ptr %664, align 1, !tbaa !8
  %666 = zext i8 %665 to i32
  %667 = xor i32 %662, %666
  %668 = load i32, ptr %17, align 4, !tbaa !52
  %669 = and i32 %667, %668
  store i32 %669, ptr %15, align 8, !tbaa !80
  %670 = load ptr, ptr %12, align 8, !tbaa !37
  %671 = zext i32 %669 to i64
  %672 = getelementptr inbounds nuw [2 x i8], ptr %670, i64 %671
  %673 = load i16, ptr %672, align 2, !tbaa !62
  %674 = load ptr, ptr %13, align 8, !tbaa !35
  %675 = load i32, ptr %18, align 8, !tbaa !33
  %676 = and i32 %675, %657
  %677 = zext i32 %676 to i64
  %678 = getelementptr inbounds nuw [2 x i8], ptr %674, i64 %677
  store i16 %673, ptr %678, align 2, !tbaa !62
  %679 = trunc i32 %657 to i16
  store i16 %679, ptr %672, align 2, !tbaa !62
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
  br label %680

680:                                              ; preds = %680, %.split.split.split
  %681 = phi i32 [ %692, %680 ], [ %.pre105, %.split.split.split ]
  %682 = phi i32 [ %700, %680 ], [ %645, %.split.split.split ]
  %683 = phi i32 [ %684, %680 ], [ %646, %.split.split.split ]
  %684 = add i32 %683, 1
  store i32 %684, ptr %6, align 4, !tbaa !73
  %685 = add i32 %683, 3
  %686 = shl i32 %681, %.pre106
  %687 = zext i32 %685 to i64
  %688 = getelementptr inbounds nuw i8, ptr %.pre, i64 %687
  %689 = load i8, ptr %688, align 1, !tbaa !8
  %690 = zext i8 %689 to i32
  %691 = xor i32 %686, %690
  %692 = and i32 %691, %.pre107
  store i32 %692, ptr %15, align 8, !tbaa !80
  %693 = zext i32 %692 to i64
  %694 = getelementptr inbounds nuw [2 x i8], ptr %.pre108, i64 %693
  %695 = load i16, ptr %694, align 2, !tbaa !62
  %696 = and i32 %.pre110, %684
  %697 = zext i32 %696 to i64
  %698 = getelementptr inbounds nuw [2 x i8], ptr %.pre109, i64 %697
  store i16 %695, ptr %698, align 2, !tbaa !62
  %699 = trunc i32 %684 to i16
  store i16 %699, ptr %694, align 2, !tbaa !62
  %700 = add i32 %682, -1
  store i32 %700, ptr %25, align 8, !tbaa !78
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %703, label %680, !llvm.loop !154

702:                                              ; preds = %644
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

703:                                              ; preds = %680
  %704 = add i32 %683, 2
  store i32 %704, ptr %6, align 4, !tbaa !73
  br i1 %628, label %783, label %.backedge

705:                                              ; preds = %634
  %706 = load i32, ptr %6, align 4, !tbaa !73
  %707 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %706, i32 %629), !nosanitize !45
  %708 = extractvalue { i32, i1 } %707, 1, !nosanitize !45
  br i1 %708, label %709, label %710, !prof !46, !nosanitize !45

709:                                              ; preds = %705
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

710:                                              ; preds = %705
  %711 = extractvalue { i32, i1 } %707, 0, !nosanitize !45
  store i32 %711, ptr %6, align 4, !tbaa !73
  store i32 0, ptr %25, align 8, !tbaa !78
  %712 = load ptr, ptr %7, align 8, !tbaa !34
  %713 = zext i32 %711 to i64
  %714 = getelementptr inbounds nuw i8, ptr %712, i64 %713
  %715 = load i8, ptr %714, align 1, !tbaa !8
  %716 = zext i8 %715 to i32
  store i32 %716, ptr %15, align 8, !tbaa !80
  %717 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %711, i32 1), !nosanitize !45
  %718 = extractvalue { i32, i1 } %717, 1, !nosanitize !45
  br i1 %718, label %719, label %772, !prof !46, !nosanitize !45

719:                                              ; preds = %710
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

720:                                              ; preds = %558
  %721 = load ptr, ptr %7, align 8, !tbaa !34
  %722 = load i32, ptr %6, align 4, !tbaa !73
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds nuw i8, ptr %721, i64 %723
  %725 = load i8, ptr %724, align 1, !tbaa !8
  %726 = load i32, ptr %27, align 4, !tbaa !139
  %727 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %726, i32 1), !nosanitize !45
  %728 = extractvalue { i32, i1 } %727, 1, !nosanitize !45
  br i1 %728, label %729, label %730, !prof !46, !nosanitize !45

729:                                              ; preds = %720
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

730:                                              ; preds = %720
  %731 = extractvalue { i32, i1 } %727, 0, !nosanitize !45
  %732 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %731, ptr %27, align 4, !tbaa !139
  %733 = zext i32 %726 to i64
  %734 = getelementptr inbounds nuw i8, ptr %732, i64 %733
  store i8 0, ptr %734, align 1, !tbaa !8
  %735 = load i32, ptr %27, align 4, !tbaa !139
  %736 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %735, i32 1), !nosanitize !45
  %737 = extractvalue { i32, i1 } %736, 1, !nosanitize !45
  br i1 %737, label %738, label %739, !prof !46, !nosanitize !45

738:                                              ; preds = %730
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

739:                                              ; preds = %730
  %740 = extractvalue { i32, i1 } %736, 0, !nosanitize !45
  %741 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %740, ptr %27, align 4, !tbaa !139
  %742 = zext i32 %735 to i64
  %743 = getelementptr inbounds nuw i8, ptr %741, i64 %742
  store i8 0, ptr %743, align 1, !tbaa !8
  %744 = load i32, ptr %27, align 4, !tbaa !139
  %745 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %744, i32 1), !nosanitize !45
  %746 = extractvalue { i32, i1 } %745, 1, !nosanitize !45
  br i1 %746, label %747, label %748, !prof !46, !nosanitize !45

747:                                              ; preds = %739
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

748:                                              ; preds = %739
  %749 = extractvalue { i32, i1 } %745, 0, !nosanitize !45
  %750 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %749, ptr %27, align 4, !tbaa !139
  %751 = zext i32 %744 to i64
  %752 = getelementptr inbounds nuw i8, ptr %750, i64 %751
  store i8 %725, ptr %752, align 1, !tbaa !8
  %753 = zext i8 %725 to i64
  %754 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %753
  %755 = load i16, ptr %754, align 4, !tbaa !8
  %756 = add i16 %755, 1
  store i16 %756, ptr %754, align 4, !tbaa !8
  %757 = load i32, ptr %27, align 4, !tbaa !139
  %758 = load i32, ptr %29, align 8, !tbaa !47
  %759 = icmp eq i32 %757, %758
  %760 = load i32, ptr %3, align 4, !tbaa !75
  %761 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %760, i32 1), !nosanitize !45
  %762 = extractvalue { i32, i1 } %761, 1, !nosanitize !45
  br i1 %762, label %763, label %764, !prof !46, !nosanitize !45

763:                                              ; preds = %748
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

764:                                              ; preds = %748
  %765 = extractvalue { i32, i1 } %761, 0, !nosanitize !45
  store i32 %765, ptr %3, align 4, !tbaa !75
  %766 = load i32, ptr %6, align 4, !tbaa !73
  %767 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %766, i32 1), !nosanitize !45
  %768 = extractvalue { i32, i1 } %767, 1, !nosanitize !45
  br i1 %768, label %769, label %770, !prof !46, !nosanitize !45

769:                                              ; preds = %764
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

770:                                              ; preds = %764
  %771 = extractvalue { i32, i1 } %767, 0, !nosanitize !45
  store i32 %771, ptr %6, align 4, !tbaa !73
  br i1 %759, label %783, label %.backedge

772:                                              ; preds = %710
  %773 = extractvalue { i32, i1 } %717, 0, !nosanitize !45
  %774 = load i32, ptr %16, align 8, !tbaa !53
  %775 = shl i32 %716, %774
  %776 = zext i32 %773 to i64
  %777 = getelementptr inbounds nuw i8, ptr %712, i64 %776
  %778 = load i8, ptr %777, align 1, !tbaa !8
  %779 = zext i8 %778 to i32
  %780 = xor i32 %775, %779
  %781 = load i32, ptr %17, align 4, !tbaa !52
  %782 = and i32 %780, %781
  store i32 %782, ptr %15, align 8, !tbaa !80
  br i1 %628, label %783, label %.backedge

783:                                              ; preds = %772, %770, %703
  %784 = phi i32 [ %771, %770 ], [ %704, %703 ], [ %711, %772 ]
  %785 = load i64, ptr %9, align 8, !tbaa !74
  %786 = icmp sgt i64 %785, -1
  br i1 %786, label %787, label %791

787:                                              ; preds = %783
  %788 = load ptr, ptr %7, align 8, !tbaa !34
  %789 = and i64 %785, 4294967295
  %790 = getelementptr inbounds nuw i8, ptr %788, i64 %789
  br label %791

791:                                              ; preds = %787, %783
  %792 = phi ptr [ %790, %787 ], [ null, %783 ]
  %793 = zext i32 %784 to i64
  %794 = sub nsw i64 %793, %785
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %792, i64 noundef %794, i32 noundef 0) #12
  %795 = load i32, ptr %6, align 4, !tbaa !73
  %796 = zext i32 %795 to i64
  store i64 %796, ptr %9, align 8, !tbaa !74
  %797 = load ptr, ptr %0, align 8, !tbaa !20
  %798 = getelementptr inbounds nuw i8, ptr %797, i64 56
  %799 = load ptr, ptr %798, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %799) #12
  %800 = getelementptr inbounds nuw i8, ptr %799, i64 40
  %801 = load i64, ptr %800, align 8, !tbaa !57
  %802 = getelementptr inbounds nuw i8, ptr %797, i64 32
  %803 = load i32, ptr %802, align 8, !tbaa !107
  %804 = zext i32 %803 to i64
  %805 = tail call i64 @llvm.umin.i64(i64 %801, i64 %804)
  %806 = trunc nuw i64 %805 to i32
  %807 = icmp eq i64 %805, 0
  br i1 %807, label %840, label %808

808:                                              ; preds = %791
  %809 = getelementptr inbounds nuw i8, ptr %797, i64 24
  %810 = load ptr, ptr %809, align 8, !tbaa !106
  %811 = getelementptr inbounds nuw i8, ptr %799, i64 32
  %812 = load ptr, ptr %811, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %810, ptr align 1 %812, i64 %805, i1 false)
  %813 = load ptr, ptr %809, align 8, !tbaa !106
  %814 = getelementptr inbounds nuw i8, ptr %813, i64 %805
  store ptr %814, ptr %809, align 8, !tbaa !106
  %815 = load ptr, ptr %811, align 8, !tbaa !58
  %816 = getelementptr inbounds nuw i8, ptr %815, i64 %805
  store ptr %816, ptr %811, align 8, !tbaa !58
  %817 = getelementptr inbounds nuw i8, ptr %797, i64 40
  %818 = load i64, ptr %817, align 8, !tbaa !108
  %819 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %818, i64 %805), !nosanitize !45
  %820 = extractvalue { i64, i1 } %819, 1, !nosanitize !45
  br i1 %820, label %821, label %822, !prof !46, !nosanitize !45

821:                                              ; preds = %808
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

822:                                              ; preds = %808
  %823 = extractvalue { i64, i1 } %819, 0, !nosanitize !45
  store i64 %823, ptr %817, align 8, !tbaa !108
  %824 = load i32, ptr %802, align 8, !tbaa !107
  %825 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %824, i32 %806), !nosanitize !45
  %826 = extractvalue { i32, i1 } %825, 1, !nosanitize !45
  br i1 %826, label %827, label %828, !prof !46, !nosanitize !45

827:                                              ; preds = %822
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

828:                                              ; preds = %822
  %829 = extractvalue { i32, i1 } %825, 0, !nosanitize !45
  store i32 %829, ptr %802, align 8, !tbaa !107
  %830 = load i64, ptr %800, align 8, !tbaa !57
  %831 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %830, i64 %805), !nosanitize !45
  %832 = extractvalue { i64, i1 } %831, 1, !nosanitize !45
  br i1 %832, label %833, label %834, !prof !46, !nosanitize !45

833:                                              ; preds = %828
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

834:                                              ; preds = %828
  %835 = extractvalue { i64, i1 } %831, 0, !nosanitize !45
  store i64 %835, ptr %800, align 8, !tbaa !57
  %836 = icmp eq i64 %835, 0
  br i1 %836, label %837, label %840

837:                                              ; preds = %834
  %838 = getelementptr inbounds nuw i8, ptr %799, i64 16
  %839 = load ptr, ptr %838, align 8, !tbaa !40
  store ptr %839, ptr %811, align 8, !tbaa !58
  br label %840

840:                                              ; preds = %837, %834, %791
  %841 = load ptr, ptr %0, align 8, !tbaa !20
  %842 = getelementptr inbounds nuw i8, ptr %841, i64 32
  %843 = load i32, ptr %842, align 8, !tbaa !107
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %.loopexit39, label %.backedge

.backedge:                                        ; preds = %840, %772, %770, %703
  br label %33

845:                                              ; preds = %362
  %846 = load i32, ptr %6, align 4, !tbaa !73
  %847 = tail call i32 @llvm.umin.i32(i32 %846, i32 2)
  store i32 %847, ptr %10, align 4, !tbaa !76
  %848 = icmp eq i32 %1, 4
  br i1 %848, label %849, label %911

849:                                              ; preds = %845
  %850 = load i64, ptr %9, align 8, !tbaa !74
  %851 = icmp sgt i64 %850, -1
  br i1 %851, label %852, label %856

852:                                              ; preds = %849
  %853 = load ptr, ptr %7, align 8, !tbaa !34
  %854 = and i64 %850, 4294967295
  %855 = getelementptr inbounds nuw i8, ptr %853, i64 %854
  br label %856

856:                                              ; preds = %852, %849
  %857 = phi ptr [ %855, %852 ], [ null, %849 ]
  %858 = zext i32 %846 to i64
  %859 = sub nsw i64 %858, %850
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %857, i64 noundef %859, i32 noundef 1) #12
  %860 = load i32, ptr %6, align 4, !tbaa !73
  %861 = zext i32 %860 to i64
  store i64 %861, ptr %9, align 8, !tbaa !74
  %862 = load ptr, ptr %0, align 8, !tbaa !20
  %863 = getelementptr inbounds nuw i8, ptr %862, i64 56
  %864 = load ptr, ptr %863, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %864) #12
  %865 = getelementptr inbounds nuw i8, ptr %864, i64 40
  %866 = load i64, ptr %865, align 8, !tbaa !57
  %867 = getelementptr inbounds nuw i8, ptr %862, i64 32
  %868 = load i32, ptr %867, align 8, !tbaa !107
  %869 = zext i32 %868 to i64
  %870 = tail call i64 @llvm.umin.i64(i64 %866, i64 %869)
  %871 = trunc nuw i64 %870 to i32
  %872 = icmp eq i64 %870, 0
  br i1 %872, label %905, label %873

873:                                              ; preds = %856
  %874 = getelementptr inbounds nuw i8, ptr %862, i64 24
  %875 = load ptr, ptr %874, align 8, !tbaa !106
  %876 = getelementptr inbounds nuw i8, ptr %864, i64 32
  %877 = load ptr, ptr %876, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %875, ptr align 1 %877, i64 %870, i1 false)
  %878 = load ptr, ptr %874, align 8, !tbaa !106
  %879 = getelementptr inbounds nuw i8, ptr %878, i64 %870
  store ptr %879, ptr %874, align 8, !tbaa !106
  %880 = load ptr, ptr %876, align 8, !tbaa !58
  %881 = getelementptr inbounds nuw i8, ptr %880, i64 %870
  store ptr %881, ptr %876, align 8, !tbaa !58
  %882 = getelementptr inbounds nuw i8, ptr %862, i64 40
  %883 = load i64, ptr %882, align 8, !tbaa !108
  %884 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %883, i64 %870), !nosanitize !45
  %885 = extractvalue { i64, i1 } %884, 1, !nosanitize !45
  br i1 %885, label %886, label %887, !prof !46, !nosanitize !45

886:                                              ; preds = %873
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

887:                                              ; preds = %873
  %888 = extractvalue { i64, i1 } %884, 0, !nosanitize !45
  store i64 %888, ptr %882, align 8, !tbaa !108
  %889 = load i32, ptr %867, align 8, !tbaa !107
  %890 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %889, i32 %871), !nosanitize !45
  %891 = extractvalue { i32, i1 } %890, 1, !nosanitize !45
  br i1 %891, label %892, label %893, !prof !46, !nosanitize !45

892:                                              ; preds = %887
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

893:                                              ; preds = %887
  %894 = extractvalue { i32, i1 } %890, 0, !nosanitize !45
  store i32 %894, ptr %867, align 8, !tbaa !107
  %895 = load i64, ptr %865, align 8, !tbaa !57
  %896 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %895, i64 %870), !nosanitize !45
  %897 = extractvalue { i64, i1 } %896, 1, !nosanitize !45
  br i1 %897, label %898, label %899, !prof !46, !nosanitize !45

898:                                              ; preds = %893
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

899:                                              ; preds = %893
  %900 = extractvalue { i64, i1 } %896, 0, !nosanitize !45
  store i64 %900, ptr %865, align 8, !tbaa !57
  %901 = icmp eq i64 %900, 0
  br i1 %901, label %902, label %905

902:                                              ; preds = %899
  %903 = getelementptr inbounds nuw i8, ptr %864, i64 16
  %904 = load ptr, ptr %903, align 8, !tbaa !40
  store ptr %904, ptr %876, align 8, !tbaa !58
  br label %905

905:                                              ; preds = %902, %899, %856
  %906 = load ptr, ptr %0, align 8, !tbaa !20
  %907 = getelementptr inbounds nuw i8, ptr %906, i64 32
  %908 = load i32, ptr %907, align 8, !tbaa !107
  %909 = icmp eq i32 %908, 0
  %910 = select i1 %909, i32 2, i32 3
  br label %.loopexit39

911:                                              ; preds = %845
  %912 = load i32, ptr %27, align 4, !tbaa !139
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %975, label %914

914:                                              ; preds = %911
  %915 = load i64, ptr %9, align 8, !tbaa !74
  %916 = icmp sgt i64 %915, -1
  br i1 %916, label %917, label %921

917:                                              ; preds = %914
  %918 = load ptr, ptr %7, align 8, !tbaa !34
  %919 = and i64 %915, 4294967295
  %920 = getelementptr inbounds nuw i8, ptr %918, i64 %919
  br label %921

921:                                              ; preds = %917, %914
  %922 = phi ptr [ %920, %917 ], [ null, %914 ]
  %923 = zext i32 %846 to i64
  %924 = sub nsw i64 %923, %915
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %922, i64 noundef %924, i32 noundef 0) #12
  %925 = load i32, ptr %6, align 4, !tbaa !73
  %926 = zext i32 %925 to i64
  store i64 %926, ptr %9, align 8, !tbaa !74
  %927 = load ptr, ptr %0, align 8, !tbaa !20
  %928 = getelementptr inbounds nuw i8, ptr %927, i64 56
  %929 = load ptr, ptr %928, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %929) #12
  %930 = getelementptr inbounds nuw i8, ptr %929, i64 40
  %931 = load i64, ptr %930, align 8, !tbaa !57
  %932 = getelementptr inbounds nuw i8, ptr %927, i64 32
  %933 = load i32, ptr %932, align 8, !tbaa !107
  %934 = zext i32 %933 to i64
  %935 = tail call i64 @llvm.umin.i64(i64 %931, i64 %934)
  %936 = trunc nuw i64 %935 to i32
  %937 = icmp eq i64 %935, 0
  br i1 %937, label %970, label %938

938:                                              ; preds = %921
  %939 = getelementptr inbounds nuw i8, ptr %927, i64 24
  %940 = load ptr, ptr %939, align 8, !tbaa !106
  %941 = getelementptr inbounds nuw i8, ptr %929, i64 32
  %942 = load ptr, ptr %941, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %940, ptr align 1 %942, i64 %935, i1 false)
  %943 = load ptr, ptr %939, align 8, !tbaa !106
  %944 = getelementptr inbounds nuw i8, ptr %943, i64 %935
  store ptr %944, ptr %939, align 8, !tbaa !106
  %945 = load ptr, ptr %941, align 8, !tbaa !58
  %946 = getelementptr inbounds nuw i8, ptr %945, i64 %935
  store ptr %946, ptr %941, align 8, !tbaa !58
  %947 = getelementptr inbounds nuw i8, ptr %927, i64 40
  %948 = load i64, ptr %947, align 8, !tbaa !108
  %949 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %948, i64 %935), !nosanitize !45
  %950 = extractvalue { i64, i1 } %949, 1, !nosanitize !45
  br i1 %950, label %951, label %952, !prof !46, !nosanitize !45

951:                                              ; preds = %938
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

952:                                              ; preds = %938
  %953 = extractvalue { i64, i1 } %949, 0, !nosanitize !45
  store i64 %953, ptr %947, align 8, !tbaa !108
  %954 = load i32, ptr %932, align 8, !tbaa !107
  %955 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %954, i32 %936), !nosanitize !45
  %956 = extractvalue { i32, i1 } %955, 1, !nosanitize !45
  br i1 %956, label %957, label %958, !prof !46, !nosanitize !45

957:                                              ; preds = %952
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

958:                                              ; preds = %952
  %959 = extractvalue { i32, i1 } %955, 0, !nosanitize !45
  store i32 %959, ptr %932, align 8, !tbaa !107
  %960 = load i64, ptr %930, align 8, !tbaa !57
  %961 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %960, i64 %935), !nosanitize !45
  %962 = extractvalue { i64, i1 } %961, 1, !nosanitize !45
  br i1 %962, label %963, label %964, !prof !46, !nosanitize !45

963:                                              ; preds = %958
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

964:                                              ; preds = %958
  %965 = extractvalue { i64, i1 } %961, 0, !nosanitize !45
  store i64 %965, ptr %930, align 8, !tbaa !57
  %966 = icmp eq i64 %965, 0
  br i1 %966, label %967, label %970

967:                                              ; preds = %964
  %968 = getelementptr inbounds nuw i8, ptr %929, i64 16
  %969 = load ptr, ptr %968, align 8, !tbaa !40
  store ptr %969, ptr %941, align 8, !tbaa !58
  br label %970

970:                                              ; preds = %967, %964, %921
  %971 = load ptr, ptr %0, align 8, !tbaa !20
  %972 = getelementptr inbounds nuw i8, ptr %971, i64 32
  %973 = load i32, ptr %972, align 8, !tbaa !107
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %.loopexit39, label %975

975:                                              ; preds = %970, %911
  br label %.loopexit39

.loopexit39:                                      ; preds = %840, %358, %975, %970, %905
  %976 = phi i32 [ 1, %975 ], [ %910, %905 ], [ 0, %970 ], [ 0, %358 ], [ 0, %840 ]
  ret i32 %976
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
  br i1 %38, label %39, label %372

39:                                               ; preds = %36
  %40 = load i32, ptr %4, align 8, !tbaa !32
  %41 = zext i32 %40 to i64
  br label %42

42:                                               ; preds = %312, %39
  %43 = phi i32 [ %240, %312 ], [ %37, %39 ]
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
  br i1 %105, label %.preheader187, label %106

.preheader187:                                    ; preds = %121, %104
  %.ph188 = phi ptr [ %123, %121 ], [ %102, %104 ]
  %.ph189 = phi i32 [ %125, %121 ], [ %99, %104 ]
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
  br i1 %126, label %.loopexit44, label %.preheader187

127:                                              ; preds = %97
  %128 = getelementptr inbounds i8, ptr %102, i64 -2
  %129 = load i16, ptr %128, align 2, !tbaa !62
  %130 = zext i16 %129 to i32
  %131 = tail call i32 @llvm.usub.sat.i32(i32 %130, i32 %98)
  %132 = trunc nuw i32 %131 to i16
  store i16 %132, ptr %128, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

133:                                              ; preds = %.preheader187, %133
  %134 = phi ptr [ %136, %133 ], [ %.ph188, %.preheader187 ]
  %135 = phi i32 [ %141, %133 ], [ %.ph189, %.preheader187 ]
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
  %.ph186 = phi i32 [ %169, %165 ], [ %98, %145 ]
  br label %171

171:                                              ; preds = %.preheader, %171
  %172 = phi ptr [ %174, %171 ], [ %.ph, %.preheader ]
  %173 = phi i32 [ %179, %171 ], [ %.ph186, %.preheader ]
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  %218 = tail call i64 @adler32(i64 noundef %217, ptr noundef %200, i32 noundef %201) #12
  store i64 %218, ptr %216, align 8, !tbaa !59
  br label %223

219:                                              ; preds = %207
  %220 = getelementptr inbounds nuw i8, ptr %191, i64 96
  %221 = load i64, ptr %220, align 8, !tbaa !59
  %222 = tail call i64 @crc32(i64 noundef %221, ptr noundef %200, i32 noundef %201) #12
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

239:                                              ; preds = %234
  %240 = extractvalue { i32, i1 } %236, 0, !nosanitize !45
  store i32 %240, ptr %3, align 4, !tbaa !75
  %241 = load i32, ptr %10, align 4, !tbaa !76
  %242 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 %241), !nosanitize !45
  %243 = extractvalue { i32, i1 } %242, 1, !nosanitize !45
  br i1 %243, label %244, label %245, !prof !46, !nosanitize !45

244:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  br i1 %316, label %317, label %42, !llvm.loop !92

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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
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
  br i1 %364, label %.loopexit45, label %365

365:                                              ; preds = %361
  %366 = icmp eq i32 %362, 0
  br i1 %366, label %938, label %367

367:                                              ; preds = %365
  %368 = icmp ugt i32 %362, 2
  br i1 %368, label %372, label %369

369:                                              ; preds = %367
  %370 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %370, ptr %22, align 8, !tbaa !77
  %371 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %371, ptr %23, align 4, !tbaa !159
  br label %582

372:                                              ; preds = %367, %36
  %373 = phi i32 [ %362, %367 ], [ %37, %36 ]
  %374 = load i32, ptr %6, align 4, !tbaa !73
  %375 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %374, i32 2), !nosanitize !45
  %376 = extractvalue { i32, i1 } %375, 1, !nosanitize !45
  br i1 %376, label %377, label %378, !prof !46, !nosanitize !45

377:                                              ; preds = %372
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

378:                                              ; preds = %372
  %379 = extractvalue { i32, i1 } %375, 0, !nosanitize !45
  %380 = load ptr, ptr %7, align 8, !tbaa !34
  %381 = load i32, ptr %15, align 8, !tbaa !80
  %382 = load i32, ptr %16, align 8, !tbaa !53
  %383 = shl i32 %381, %382
  %384 = zext i32 %379 to i64
  %385 = getelementptr inbounds nuw i8, ptr %380, i64 %384
  %386 = load i8, ptr %385, align 1, !tbaa !8
  %387 = zext i8 %386 to i32
  %388 = xor i32 %383, %387
  %389 = load i32, ptr %17, align 4, !tbaa !52
  %390 = and i32 %388, %389
  store i32 %390, ptr %15, align 8, !tbaa !80
  %391 = load ptr, ptr %12, align 8, !tbaa !37
  %392 = zext i32 %390 to i64
  %393 = getelementptr inbounds nuw [2 x i8], ptr %391, i64 %392
  %394 = load i16, ptr %393, align 2, !tbaa !62
  %395 = load ptr, ptr %13, align 8, !tbaa !35
  %396 = load i32, ptr %18, align 8, !tbaa !33
  %397 = and i32 %396, %374
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds nuw [2 x i8], ptr %395, i64 %398
  store i16 %394, ptr %399, align 2, !tbaa !62
  %400 = zext i16 %394 to i32
  %401 = trunc i32 %374 to i16
  store i16 %401, ptr %393, align 2, !tbaa !62
  %402 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %402, ptr %22, align 8, !tbaa !77
  %403 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %403, ptr %23, align 4, !tbaa !159
  store i32 2, ptr %21, align 8, !tbaa !78
  %404 = icmp eq i16 %394, 0
  br i1 %404, label %586, label %405

405:                                              ; preds = %378
  %406 = load i32, ptr %24, align 8, !tbaa !66
  %407 = icmp ult i32 %402, %406
  br i1 %407, label %408, label %586

408:                                              ; preds = %405
  %409 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %374, i32 %400), !nosanitize !45
  %410 = extractvalue { i32, i1 } %409, 0, !nosanitize !45
  %411 = extractvalue { i32, i1 } %409, 1, !nosanitize !45
  br i1 %411, label %412, label %413, !prof !46, !nosanitize !45

412:                                              ; preds = %408
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

413:                                              ; preds = %408
  %414 = load i32, ptr %4, align 8, !tbaa !32
  %415 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %414, i32 262), !nosanitize !45
  %416 = extractvalue { i32, i1 } %415, 1, !nosanitize !45
  br i1 %416, label %417, label %418, !prof !46, !nosanitize !45

417:                                              ; preds = %413
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

418:                                              ; preds = %413
  %419 = extractvalue { i32, i1 } %415, 0, !nosanitize !45
  %420 = icmp ugt i32 %410, %419
  br i1 %420, label %586, label %421

421:                                              ; preds = %418
  %422 = zext i32 %374 to i64
  %423 = getelementptr inbounds nuw i8, ptr %380, i64 %422
  %424 = load i32, ptr %25, align 8, !tbaa !70
  %425 = load i32, ptr %26, align 4, !tbaa !72
  %426 = tail call i32 @llvm.usub.sat.i32(i32 %374, i32 %419)
  %427 = getelementptr inbounds nuw i8, ptr %423, i64 258
  %428 = sext i32 %402 to i64
  %429 = getelementptr i8, ptr %423, i64 %428
  %430 = getelementptr i8, ptr %429, i64 -1
  %431 = load i8, ptr %430, align 1, !tbaa !8
  %432 = load i8, ptr %429, align 1, !tbaa !8
  %433 = load i32, ptr %27, align 4, !tbaa !68
  %434 = icmp ult i32 %402, %433
  %435 = lshr i32 %425, 2
  %436 = select i1 %434, i32 %425, i32 %435
  %437 = tail call i32 @llvm.umin.i32(i32 %424, i32 %373)
  %438 = getelementptr inbounds nuw i8, ptr %423, i64 1
  %439 = ptrtoint ptr %427 to i64
  br label %440

440:                                              ; preds = %562, %421
  %441 = phi i32 [ %403, %421 ], [ %548, %562 ]
  %442 = phi i32 [ %402, %421 ], [ %549, %562 ]
  %443 = phi i32 [ %436, %421 ], [ %563, %562 ]
  %444 = phi i32 [ %400, %421 ], [ %556, %562 ]
  %445 = phi i8 [ %431, %421 ], [ %550, %562 ]
  %446 = phi i8 [ %432, %421 ], [ %551, %562 ]
  %447 = zext nneg i32 %444 to i64
  %448 = getelementptr inbounds nuw i8, ptr %380, i64 %447
  %449 = sext i32 %442 to i64
  %450 = getelementptr inbounds i8, ptr %448, i64 %449
  %451 = load i8, ptr %450, align 1, !tbaa !8
  %452 = icmp eq i8 %451, %446
  br i1 %452, label %453, label %547

453:                                              ; preds = %440
  %454 = getelementptr i8, ptr %450, i64 -1
  %455 = load i8, ptr %454, align 1, !tbaa !8
  %456 = icmp eq i8 %455, %445
  br i1 %456, label %457, label %547

457:                                              ; preds = %453
  %458 = load i8, ptr %448, align 1, !tbaa !8
  %459 = load i8, ptr %423, align 1, !tbaa !8
  %460 = icmp eq i8 %458, %459
  br i1 %460, label %461, label %547

461:                                              ; preds = %457
  %462 = getelementptr inbounds nuw i8, ptr %448, i64 1
  %463 = load i8, ptr %462, align 1, !tbaa !8
  %464 = load i8, ptr %438, align 1, !tbaa !8
  %465 = icmp eq i8 %463, %464
  br i1 %465, label %466, label %547

466:                                              ; preds = %461
  %467 = getelementptr inbounds nuw i8, ptr %448, i64 2
  br label %468

468:                                              ; preds = %513, %466
  %469 = phi ptr [ %467, %466 ], [ %517, %513 ]
  %470 = phi i64 [ 2, %466 ], [ %514, %513 ]
  %471 = getelementptr inbounds nuw i8, ptr %423, i64 %470
  %472 = getelementptr inbounds nuw i8, ptr %471, i64 1
  %473 = load i8, ptr %472, align 1, !tbaa !8
  %474 = getelementptr inbounds nuw i8, ptr %469, i64 1
  %475 = load i8, ptr %474, align 1, !tbaa !8
  %476 = icmp eq i8 %473, %475
  br i1 %476, label %477, label %.split.loop.exit.split.loop.exit

477:                                              ; preds = %468
  %478 = getelementptr inbounds nuw i8, ptr %471, i64 2
  %479 = load i8, ptr %478, align 1, !tbaa !8
  %480 = getelementptr inbounds nuw i8, ptr %469, i64 2
  %481 = load i8, ptr %480, align 1, !tbaa !8
  %482 = icmp eq i8 %479, %481
  br i1 %482, label %483, label %.split.loop.exit.split.loop.exit146

483:                                              ; preds = %477
  %484 = getelementptr inbounds nuw i8, ptr %471, i64 3
  %485 = load i8, ptr %484, align 1, !tbaa !8
  %486 = getelementptr inbounds nuw i8, ptr %469, i64 3
  %487 = load i8, ptr %486, align 1, !tbaa !8
  %488 = icmp eq i8 %485, %487
  br i1 %488, label %489, label %.split.loop.exit.split.loop.exit148

489:                                              ; preds = %483
  %490 = getelementptr inbounds nuw i8, ptr %471, i64 4
  %491 = load i8, ptr %490, align 1, !tbaa !8
  %492 = getelementptr inbounds nuw i8, ptr %469, i64 4
  %493 = load i8, ptr %492, align 1, !tbaa !8
  %494 = icmp eq i8 %491, %493
  br i1 %494, label %495, label %.split.loop.exit.split.loop.exit150

495:                                              ; preds = %489
  %496 = getelementptr inbounds nuw i8, ptr %471, i64 5
  %497 = load i8, ptr %496, align 1, !tbaa !8
  %498 = getelementptr inbounds nuw i8, ptr %469, i64 5
  %499 = load i8, ptr %498, align 1, !tbaa !8
  %500 = icmp eq i8 %497, %499
  br i1 %500, label %501, label %.split.loop.exit.split.loop.exit152

501:                                              ; preds = %495
  %502 = getelementptr inbounds nuw i8, ptr %471, i64 6
  %503 = load i8, ptr %502, align 1, !tbaa !8
  %504 = getelementptr inbounds nuw i8, ptr %469, i64 6
  %505 = load i8, ptr %504, align 1, !tbaa !8
  %506 = icmp eq i8 %503, %505
  br i1 %506, label %507, label %.split.loop.exit.split.loop.exit154

507:                                              ; preds = %501
  %508 = getelementptr inbounds nuw i8, ptr %471, i64 7
  %509 = load i8, ptr %508, align 1, !tbaa !8
  %510 = getelementptr inbounds nuw i8, ptr %469, i64 7
  %511 = load i8, ptr %510, align 1, !tbaa !8
  %512 = icmp eq i8 %509, %511
  br i1 %512, label %513, label %.split.loop.exit.split.loop.exit156

513:                                              ; preds = %507
  %514 = add nuw nsw i64 %470, 8
  %515 = getelementptr inbounds nuw i8, ptr %423, i64 %514
  %516 = load i8, ptr %515, align 1, !tbaa !8
  %517 = getelementptr inbounds nuw i8, ptr %469, i64 8
  %518 = load i8, ptr %517, align 1, !tbaa !8
  %519 = icmp eq i8 %516, %518
  %520 = icmp samesign ult i64 %470, 250
  %521 = select i1 %519, i1 %520, i1 false
  br i1 %521, label %468, label %.split.loop.exit.split.loop.exit158, !llvm.loop !152

.split.loop.exit.split.loop.exit:                 ; preds = %468
  %522 = getelementptr inbounds nuw i8, ptr %471, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit146:              ; preds = %477
  %523 = getelementptr inbounds nuw i8, ptr %471, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit148:              ; preds = %483
  %524 = getelementptr inbounds nuw i8, ptr %471, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit150:              ; preds = %489
  %525 = getelementptr inbounds nuw i8, ptr %471, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit152:              ; preds = %495
  %526 = getelementptr inbounds nuw i8, ptr %471, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit154:              ; preds = %501
  %527 = getelementptr inbounds nuw i8, ptr %471, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit156:              ; preds = %507
  %528 = getelementptr inbounds nuw i8, ptr %471, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit158:              ; preds = %513
  %529 = getelementptr inbounds nuw i8, ptr %423, i64 %514
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit158, %.split.loop.exit.split.loop.exit156, %.split.loop.exit.split.loop.exit154, %.split.loop.exit.split.loop.exit152, %.split.loop.exit.split.loop.exit150, %.split.loop.exit.split.loop.exit148, %.split.loop.exit.split.loop.exit146, %.split.loop.exit.split.loop.exit
  %530 = phi ptr [ %523, %.split.loop.exit.split.loop.exit146 ], [ %524, %.split.loop.exit.split.loop.exit148 ], [ %522, %.split.loop.exit.split.loop.exit ], [ %528, %.split.loop.exit.split.loop.exit156 ], [ %527, %.split.loop.exit.split.loop.exit154 ], [ %526, %.split.loop.exit.split.loop.exit152 ], [ %525, %.split.loop.exit.split.loop.exit150 ], [ %529, %.split.loop.exit.split.loop.exit158 ]
  %531 = ptrtoint ptr %530 to i64
  %532 = sub i64 %531, %439
  %533 = trunc i64 %532 to i32
  %534 = add i32 %533, 258
  %535 = icmp sgt i32 %534, %442
  br i1 %535, label %536, label %547

536:                                              ; preds = %.split.loop.exit
  store i32 %444, ptr %8, align 8, !tbaa !83
  %537 = icmp slt i32 %534, %437
  br i1 %537, label %538, label %565

538:                                              ; preds = %536
  %539 = shl i64 %532, 32
  %540 = add i64 %539, 1103806595072
  %541 = ashr exact i64 %540, 32
  %542 = getelementptr inbounds i8, ptr %423, i64 %541
  %543 = load i8, ptr %542, align 1, !tbaa !8
  %544 = sext i32 %534 to i64
  %545 = getelementptr inbounds i8, ptr %423, i64 %544
  %546 = load i8, ptr %545, align 1, !tbaa !8
  br label %547

547:                                              ; preds = %538, %.split.loop.exit, %461, %457, %453, %440
  %548 = phi i32 [ %441, %440 ], [ %441, %453 ], [ %441, %457 ], [ %441, %461 ], [ %444, %538 ], [ %441, %.split.loop.exit ]
  %549 = phi i32 [ %442, %440 ], [ %442, %453 ], [ %442, %457 ], [ %442, %461 ], [ %534, %538 ], [ %442, %.split.loop.exit ]
  %550 = phi i8 [ %445, %440 ], [ %445, %453 ], [ %445, %457 ], [ %445, %461 ], [ %543, %538 ], [ %445, %.split.loop.exit ]
  %551 = phi i8 [ %446, %440 ], [ %446, %453 ], [ %446, %457 ], [ %446, %461 ], [ %546, %538 ], [ %446, %.split.loop.exit ]
  %552 = and i32 %444, %396
  %553 = zext nneg i32 %552 to i64
  %554 = getelementptr inbounds nuw [2 x i8], ptr %395, i64 %553
  %555 = load i16, ptr %554, align 2, !tbaa !62
  %556 = zext i16 %555 to i32
  %557 = icmp ult i32 %426, %556
  br i1 %557, label %558, label %565

558:                                              ; preds = %547
  %559 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %443, i32 1), !nosanitize !45
  %560 = extractvalue { i32, i1 } %559, 1, !nosanitize !45
  br i1 %560, label %561, label %562, !prof !46, !nosanitize !45

561:                                              ; preds = %558
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

562:                                              ; preds = %558
  %563 = extractvalue { i32, i1 } %559, 0, !nosanitize !45
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %440, !llvm.loop !153

565:                                              ; preds = %562, %547, %536
  %566 = phi i32 [ %548, %562 ], [ %548, %547 ], [ %444, %536 ]
  %567 = phi i32 [ %549, %562 ], [ %549, %547 ], [ %534, %536 ]
  %568 = tail call i32 @llvm.umin.i32(i32 %567, i32 %373)
  store i32 %568, ptr %21, align 8, !tbaa !78
  %569 = icmp ult i32 %568, 6
  br i1 %569, label %570, label %586

570:                                              ; preds = %565
  %571 = load i32, ptr %28, align 8, !tbaa !49
  %572 = icmp eq i32 %571, 1
  br i1 %572, label %582, label %573

573:                                              ; preds = %570
  %574 = icmp eq i32 %568, 3
  br i1 %574, label %575, label %586

575:                                              ; preds = %573
  %576 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %374, i32 %566), !nosanitize !45
  %577 = extractvalue { i32, i1 } %576, 1, !nosanitize !45
  br i1 %577, label %578, label %579, !prof !46, !nosanitize !45

578:                                              ; preds = %575
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

579:                                              ; preds = %575
  %580 = extractvalue { i32, i1 } %576, 0, !nosanitize !45
  %581 = icmp ugt i32 %580, 4096
  br i1 %581, label %582, label %586

582:                                              ; preds = %579, %570, %369
  %583 = phi i32 [ %371, %369 ], [ %403, %579 ], [ %403, %570 ]
  %584 = phi i32 [ %370, %369 ], [ %402, %579 ], [ %402, %570 ]
  %585 = phi i32 [ %362, %369 ], [ %373, %579 ], [ %373, %570 ]
  store i32 2, ptr %21, align 8, !tbaa !78
  br label %586

586:                                              ; preds = %582, %579, %573, %565, %418, %405, %378
  %587 = phi i32 [ 2, %405 ], [ %568, %565 ], [ %568, %573 ], [ 3, %579 ], [ 2, %378 ], [ 2, %418 ], [ 2, %582 ]
  %588 = phi i32 [ %403, %405 ], [ %403, %565 ], [ %403, %573 ], [ %403, %579 ], [ %403, %378 ], [ %403, %418 ], [ %583, %582 ]
  %589 = phi i32 [ %402, %405 ], [ %402, %565 ], [ %402, %573 ], [ %402, %579 ], [ %402, %378 ], [ %402, %418 ], [ %584, %582 ]
  %590 = phi i32 [ %373, %405 ], [ %373, %565 ], [ %373, %573 ], [ %373, %579 ], [ %373, %378 ], [ %373, %418 ], [ %585, %582 ]
  %591 = icmp ult i32 %589, 3
  %592 = icmp ugt i32 %587, %589
  %593 = or i1 %591, %592
  br i1 %593, label %804, label %594

594:                                              ; preds = %586
  %595 = load i32, ptr %6, align 4, !tbaa !73
  %596 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %595, i32 %590), !nosanitize !45
  %597 = extractvalue { i32, i1 } %596, 1, !nosanitize !45
  br i1 %597, label %598, label %599, !prof !46, !nosanitize !45

598:                                              ; preds = %594
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

599:                                              ; preds = %594
  %600 = extractvalue { i32, i1 } %596, 0, !nosanitize !45
  %601 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %600, i32 3), !nosanitize !45
  %602 = extractvalue { i32, i1 } %601, 0, !nosanitize !45
  %603 = extractvalue { i32, i1 } %601, 1, !nosanitize !45
  br i1 %603, label %604, label %605, !prof !46, !nosanitize !45

604:                                              ; preds = %599
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

605:                                              ; preds = %599
  %606 = trunc i32 %589 to i8
  %607 = add i8 %606, -3
  %608 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %595, i32 1), !nosanitize !45
  %609 = extractvalue { i32, i1 } %608, 1, !nosanitize !45
  br i1 %609, label %610, label %611, !prof !46, !nosanitize !45

610:                                              ; preds = %605
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

611:                                              ; preds = %605
  %612 = extractvalue { i32, i1 } %608, 0, !nosanitize !45
  %613 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %612, i32 %588), !nosanitize !45
  %614 = extractvalue { i32, i1 } %613, 1, !nosanitize !45
  br i1 %614, label %615, label %616, !prof !46, !nosanitize !45

615:                                              ; preds = %611
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

616:                                              ; preds = %611
  %617 = extractvalue { i32, i1 } %613, 0, !nosanitize !45
  %618 = trunc i32 %617 to i16
  %619 = load i32, ptr %30, align 4, !tbaa !139
  %620 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %619, i32 1), !nosanitize !45
  %621 = extractvalue { i32, i1 } %620, 1, !nosanitize !45
  br i1 %621, label %622, label %623, !prof !46, !nosanitize !45

622:                                              ; preds = %616
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

623:                                              ; preds = %616
  %624 = extractvalue { i32, i1 } %620, 0, !nosanitize !45
  %625 = load ptr, ptr %29, align 8, !tbaa !44
  %626 = trunc i32 %617 to i8
  store i32 %624, ptr %30, align 4, !tbaa !139
  %627 = zext i32 %619 to i64
  %628 = getelementptr inbounds nuw i8, ptr %625, i64 %627
  store i8 %626, ptr %628, align 1, !tbaa !8
  %629 = load i32, ptr %30, align 4, !tbaa !139
  %630 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %629, i32 1), !nosanitize !45
  %631 = extractvalue { i32, i1 } %630, 1, !nosanitize !45
  br i1 %631, label %632, label %633, !prof !46, !nosanitize !45

632:                                              ; preds = %623
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

633:                                              ; preds = %623
  %634 = extractvalue { i32, i1 } %630, 0, !nosanitize !45
  %635 = load ptr, ptr %29, align 8, !tbaa !44
  %636 = lshr i32 %617, 8
  %637 = trunc i32 %636 to i8
  store i32 %634, ptr %30, align 4, !tbaa !139
  %638 = zext i32 %629 to i64
  %639 = getelementptr inbounds nuw i8, ptr %635, i64 %638
  store i8 %637, ptr %639, align 1, !tbaa !8
  %640 = load i32, ptr %30, align 4, !tbaa !139
  %641 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %640, i32 1), !nosanitize !45
  %642 = extractvalue { i32, i1 } %641, 1, !nosanitize !45
  br i1 %642, label %643, label %644, !prof !46, !nosanitize !45

643:                                              ; preds = %633
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

644:                                              ; preds = %633
  %645 = extractvalue { i32, i1 } %641, 0, !nosanitize !45
  %646 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %645, ptr %30, align 4, !tbaa !139
  %647 = zext i32 %640 to i64
  %648 = getelementptr inbounds nuw i8, ptr %646, i64 %647
  store i8 %607, ptr %648, align 1, !tbaa !8
  %649 = add i16 %618, -1
  %650 = zext i8 %607 to i64
  %651 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %650
  %652 = load i8, ptr %651, align 1, !tbaa !8
  %653 = zext i8 %652 to i64
  %654 = getelementptr [4 x i8], ptr %31, i64 %653
  %655 = load i16, ptr %654, align 4, !tbaa !8
  %656 = add i16 %655, 1
  store i16 %656, ptr %654, align 4, !tbaa !8
  %657 = icmp ult i16 %649, 256
  br i1 %657, label %658, label %661

658:                                              ; preds = %644
  %659 = zext nneg i16 %649 to i64
  %660 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %659
  br label %666

661:                                              ; preds = %644
  %662 = lshr i16 %649, 7
  %663 = zext nneg i16 %662 to i64
  %664 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %663
  %665 = getelementptr inbounds nuw i8, ptr %664, i64 256
  br label %666

666:                                              ; preds = %661, %658
  %667 = phi ptr [ %660, %658 ], [ %665, %661 ]
  %668 = load i8, ptr %667, align 1, !tbaa !8
  %669 = zext i8 %668 to i64
  %670 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %669
  %671 = load i16, ptr %670, align 4, !tbaa !8
  %672 = add i16 %671, 1
  store i16 %672, ptr %670, align 4, !tbaa !8
  %673 = load i32, ptr %30, align 4, !tbaa !139
  %674 = load i32, ptr %33, align 8, !tbaa !47
  %675 = icmp eq i32 %673, %674
  %676 = load i32, ptr %22, align 8, !tbaa !77
  %677 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %676, i32 1), !nosanitize !45
  %678 = extractvalue { i32, i1 } %677, 1, !nosanitize !45
  br i1 %678, label %679, label %680, !prof !46, !nosanitize !45

679:                                              ; preds = %666
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

680:                                              ; preds = %666
  %681 = extractvalue { i32, i1 } %677, 0, !nosanitize !45
  %682 = load i32, ptr %3, align 4, !tbaa !75
  %683 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %682, i32 %681), !nosanitize !45
  %684 = extractvalue { i32, i1 } %683, 1, !nosanitize !45
  br i1 %684, label %685, label %686, !prof !46, !nosanitize !45

685:                                              ; preds = %680
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

686:                                              ; preds = %680
  %687 = extractvalue { i32, i1 } %683, 0, !nosanitize !45
  store i32 %687, ptr %3, align 4, !tbaa !75
  %688 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %676, i32 2), !nosanitize !45
  %689 = extractvalue { i32, i1 } %688, 1, !nosanitize !45
  br i1 %689, label %690, label %691, !prof !46, !nosanitize !45

690:                                              ; preds = %686
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

691:                                              ; preds = %686
  %692 = extractvalue { i32, i1 } %688, 0, !nosanitize !45
  store i32 %692, ptr %22, align 8, !tbaa !77
  %693 = load i32, ptr %6, align 4, !tbaa !73
  br label %694

694:                                              ; preds = %734, %691
  %695 = phi i32 [ %735, %734 ], [ %692, %691 ]
  %696 = phi i32 [ %698, %734 ], [ %693, %691 ]
  %697 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %696, i32 1), !nosanitize !45
  %698 = extractvalue { i32, i1 } %697, 0, !nosanitize !45
  %699 = extractvalue { i32, i1 } %697, 1, !nosanitize !45
  br i1 %699, label %700, label %701, !prof !46, !nosanitize !45

700:                                              ; preds = %694
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

701:                                              ; preds = %694
  store i32 %698, ptr %6, align 4, !tbaa !73
  %702 = icmp ugt i32 %698, %602
  br i1 %702, label %730, label %703

703:                                              ; preds = %701
  %704 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %698, i32 2), !nosanitize !45
  %705 = extractvalue { i32, i1 } %704, 1, !nosanitize !45
  br i1 %705, label %706, label %707, !prof !46, !nosanitize !45

706:                                              ; preds = %703
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

707:                                              ; preds = %703
  %708 = extractvalue { i32, i1 } %704, 0, !nosanitize !45
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
  %726 = and i32 %725, %698
  %727 = zext i32 %726 to i64
  %728 = getelementptr inbounds nuw [2 x i8], ptr %724, i64 %727
  store i16 %723, ptr %728, align 2, !tbaa !62
  %729 = trunc i32 %698 to i16
  store i16 %729, ptr %722, align 2, !tbaa !62
  br label %730

730:                                              ; preds = %707, %701
  %731 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %695, i32 1), !nosanitize !45
  %732 = extractvalue { i32, i1 } %731, 1, !nosanitize !45
  br i1 %732, label %733, label %734, !prof !46, !nosanitize !45

733:                                              ; preds = %730
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

734:                                              ; preds = %730
  %735 = extractvalue { i32, i1 } %731, 0, !nosanitize !45
  store i32 %735, ptr %22, align 8, !tbaa !77
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %737, label %694, !llvm.loop !160

737:                                              ; preds = %734
  store i32 0, ptr %34, align 8, !tbaa !79
  store i32 2, ptr %21, align 8, !tbaa !78
  %738 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %698, i32 1), !nosanitize !45
  %739 = extractvalue { i32, i1 } %738, 1, !nosanitize !45
  br i1 %739, label %740, label %741, !prof !46, !nosanitize !45

740:                                              ; preds = %737
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

741:                                              ; preds = %737
  %742 = extractvalue { i32, i1 } %738, 0, !nosanitize !45
  store i32 %742, ptr %6, align 4, !tbaa !73
  br i1 %675, label %743, label %.backedge

743:                                              ; preds = %741
  %744 = load i64, ptr %9, align 8, !tbaa !74
  %745 = icmp sgt i64 %744, -1
  br i1 %745, label %746, label %750

746:                                              ; preds = %743
  %747 = load ptr, ptr %7, align 8, !tbaa !34
  %748 = and i64 %744, 4294967295
  %749 = getelementptr inbounds nuw i8, ptr %747, i64 %748
  br label %750

750:                                              ; preds = %746, %743
  %751 = phi ptr [ %749, %746 ], [ null, %743 ]
  %752 = zext i32 %742 to i64
  %753 = sub nsw i64 %752, %744
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %751, i64 noundef %753, i32 noundef 0) #12
  %754 = load i32, ptr %6, align 4, !tbaa !73
  %755 = zext i32 %754 to i64
  store i64 %755, ptr %9, align 8, !tbaa !74
  %756 = load ptr, ptr %0, align 8, !tbaa !20
  %757 = getelementptr inbounds nuw i8, ptr %756, i64 56
  %758 = load ptr, ptr %757, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %758) #12
  %759 = getelementptr inbounds nuw i8, ptr %758, i64 40
  %760 = load i64, ptr %759, align 8, !tbaa !57
  %761 = getelementptr inbounds nuw i8, ptr %756, i64 32
  %762 = load i32, ptr %761, align 8, !tbaa !107
  %763 = zext i32 %762 to i64
  %764 = tail call i64 @llvm.umin.i64(i64 %760, i64 %763)
  %765 = trunc nuw i64 %764 to i32
  %766 = icmp eq i64 %764, 0
  br i1 %766, label %799, label %767

767:                                              ; preds = %750
  %768 = getelementptr inbounds nuw i8, ptr %756, i64 24
  %769 = load ptr, ptr %768, align 8, !tbaa !106
  %770 = getelementptr inbounds nuw i8, ptr %758, i64 32
  %771 = load ptr, ptr %770, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %769, ptr align 1 %771, i64 %764, i1 false)
  %772 = load ptr, ptr %768, align 8, !tbaa !106
  %773 = getelementptr inbounds nuw i8, ptr %772, i64 %764
  store ptr %773, ptr %768, align 8, !tbaa !106
  %774 = load ptr, ptr %770, align 8, !tbaa !58
  %775 = getelementptr inbounds nuw i8, ptr %774, i64 %764
  store ptr %775, ptr %770, align 8, !tbaa !58
  %776 = getelementptr inbounds nuw i8, ptr %756, i64 40
  %777 = load i64, ptr %776, align 8, !tbaa !108
  %778 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %777, i64 %764), !nosanitize !45
  %779 = extractvalue { i64, i1 } %778, 1, !nosanitize !45
  br i1 %779, label %780, label %781, !prof !46, !nosanitize !45

780:                                              ; preds = %767
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

781:                                              ; preds = %767
  %782 = extractvalue { i64, i1 } %778, 0, !nosanitize !45
  store i64 %782, ptr %776, align 8, !tbaa !108
  %783 = load i32, ptr %761, align 8, !tbaa !107
  %784 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %783, i32 %765), !nosanitize !45
  %785 = extractvalue { i32, i1 } %784, 1, !nosanitize !45
  br i1 %785, label %786, label %787, !prof !46, !nosanitize !45

786:                                              ; preds = %781
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

787:                                              ; preds = %781
  %788 = extractvalue { i32, i1 } %784, 0, !nosanitize !45
  store i32 %788, ptr %761, align 8, !tbaa !107
  %789 = load i64, ptr %759, align 8, !tbaa !57
  %790 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %789, i64 %764), !nosanitize !45
  %791 = extractvalue { i64, i1 } %790, 1, !nosanitize !45
  br i1 %791, label %792, label %793, !prof !46, !nosanitize !45

792:                                              ; preds = %787
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

793:                                              ; preds = %787
  %794 = extractvalue { i64, i1 } %790, 0, !nosanitize !45
  store i64 %794, ptr %759, align 8, !tbaa !57
  %795 = icmp eq i64 %794, 0
  br i1 %795, label %796, label %799

796:                                              ; preds = %793
  %797 = getelementptr inbounds nuw i8, ptr %758, i64 16
  %798 = load ptr, ptr %797, align 8, !tbaa !40
  store ptr %798, ptr %770, align 8, !tbaa !58
  br label %799

799:                                              ; preds = %796, %793, %750
  %800 = load ptr, ptr %0, align 8, !tbaa !20
  %801 = getelementptr inbounds nuw i8, ptr %800, i64 32
  %802 = load i32, ptr %801, align 8, !tbaa !107
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %.loopexit45, label %.backedge

804:                                              ; preds = %586
  %805 = load i32, ptr %34, align 8, !tbaa !79
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %926, label %807

807:                                              ; preds = %804
  %808 = load i32, ptr %6, align 4, !tbaa !73
  %809 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %808, i32 1), !nosanitize !45
  %810 = extractvalue { i32, i1 } %809, 1, !nosanitize !45
  br i1 %810, label %811, label %812, !prof !46, !nosanitize !45

811:                                              ; preds = %807
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

812:                                              ; preds = %807
  %813 = extractvalue { i32, i1 } %809, 0, !nosanitize !45
  %814 = load ptr, ptr %7, align 8, !tbaa !34
  %815 = zext i32 %813 to i64
  %816 = getelementptr inbounds nuw i8, ptr %814, i64 %815
  %817 = load i8, ptr %816, align 1, !tbaa !8
  %818 = load i32, ptr %30, align 4, !tbaa !139
  %819 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %818, i32 1), !nosanitize !45
  %820 = extractvalue { i32, i1 } %819, 1, !nosanitize !45
  br i1 %820, label %821, label %822, !prof !46, !nosanitize !45

821:                                              ; preds = %812
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

822:                                              ; preds = %812
  %823 = extractvalue { i32, i1 } %819, 0, !nosanitize !45
  %824 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %823, ptr %30, align 4, !tbaa !139
  %825 = zext i32 %818 to i64
  %826 = getelementptr inbounds nuw i8, ptr %824, i64 %825
  store i8 0, ptr %826, align 1, !tbaa !8
  %827 = load i32, ptr %30, align 4, !tbaa !139
  %828 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %827, i32 1), !nosanitize !45
  %829 = extractvalue { i32, i1 } %828, 1, !nosanitize !45
  br i1 %829, label %830, label %831, !prof !46, !nosanitize !45

830:                                              ; preds = %822
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

831:                                              ; preds = %822
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
  store i8 %817, ptr %844, align 1, !tbaa !8
  %845 = zext i8 %817 to i64
  %846 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %845
  %847 = load i16, ptr %846, align 4, !tbaa !8
  %848 = add i16 %847, 1
  store i16 %848, ptr %846, align 4, !tbaa !8
  %849 = load i32, ptr %30, align 4, !tbaa !139
  %850 = load i32, ptr %33, align 8, !tbaa !47
  %851 = icmp eq i32 %849, %850
  br i1 %851, label %852, label %909

852:                                              ; preds = %840
  %853 = load i64, ptr %9, align 8, !tbaa !74
  %854 = icmp sgt i64 %853, -1
  br i1 %854, label %855, label %859

855:                                              ; preds = %852
  %856 = load ptr, ptr %7, align 8, !tbaa !34
  %857 = and i64 %853, 4294967295
  %858 = getelementptr inbounds nuw i8, ptr %856, i64 %857
  br label %859

859:                                              ; preds = %855, %852
  %860 = phi ptr [ %858, %855 ], [ null, %852 ]
  %861 = load i32, ptr %6, align 4, !tbaa !73
  %862 = zext i32 %861 to i64
  %863 = sub nsw i64 %862, %853
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %860, i64 noundef %863, i32 noundef 0) #12
  %864 = load i32, ptr %6, align 4, !tbaa !73
  %865 = zext i32 %864 to i64
  store i64 %865, ptr %9, align 8, !tbaa !74
  %866 = load ptr, ptr %0, align 8, !tbaa !20
  %867 = getelementptr inbounds nuw i8, ptr %866, i64 56
  %868 = load ptr, ptr %867, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %868) #12
  %869 = getelementptr inbounds nuw i8, ptr %868, i64 40
  %870 = load i64, ptr %869, align 8, !tbaa !57
  %871 = getelementptr inbounds nuw i8, ptr %866, i64 32
  %872 = load i32, ptr %871, align 8, !tbaa !107
  %873 = zext i32 %872 to i64
  %874 = tail call i64 @llvm.umin.i64(i64 %870, i64 %873)
  %875 = trunc nuw i64 %874 to i32
  %876 = icmp eq i64 %874, 0
  br i1 %876, label %909, label %877

877:                                              ; preds = %859
  %878 = getelementptr inbounds nuw i8, ptr %866, i64 24
  %879 = load ptr, ptr %878, align 8, !tbaa !106
  %880 = getelementptr inbounds nuw i8, ptr %868, i64 32
  %881 = load ptr, ptr %880, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %879, ptr align 1 %881, i64 %874, i1 false)
  %882 = load ptr, ptr %878, align 8, !tbaa !106
  %883 = getelementptr inbounds nuw i8, ptr %882, i64 %874
  store ptr %883, ptr %878, align 8, !tbaa !106
  %884 = load ptr, ptr %880, align 8, !tbaa !58
  %885 = getelementptr inbounds nuw i8, ptr %884, i64 %874
  store ptr %885, ptr %880, align 8, !tbaa !58
  %886 = getelementptr inbounds nuw i8, ptr %866, i64 40
  %887 = load i64, ptr %886, align 8, !tbaa !108
  %888 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %887, i64 %874), !nosanitize !45
  %889 = extractvalue { i64, i1 } %888, 1, !nosanitize !45
  br i1 %889, label %890, label %891, !prof !46, !nosanitize !45

890:                                              ; preds = %877
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

891:                                              ; preds = %877
  %892 = extractvalue { i64, i1 } %888, 0, !nosanitize !45
  store i64 %892, ptr %886, align 8, !tbaa !108
  %893 = load i32, ptr %871, align 8, !tbaa !107
  %894 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %893, i32 %875), !nosanitize !45
  %895 = extractvalue { i32, i1 } %894, 1, !nosanitize !45
  br i1 %895, label %896, label %897, !prof !46, !nosanitize !45

896:                                              ; preds = %891
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

897:                                              ; preds = %891
  %898 = extractvalue { i32, i1 } %894, 0, !nosanitize !45
  store i32 %898, ptr %871, align 8, !tbaa !107
  %899 = load i64, ptr %869, align 8, !tbaa !57
  %900 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %899, i64 %874), !nosanitize !45
  %901 = extractvalue { i64, i1 } %900, 1, !nosanitize !45
  br i1 %901, label %902, label %903, !prof !46, !nosanitize !45

902:                                              ; preds = %897
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

903:                                              ; preds = %897
  %904 = extractvalue { i64, i1 } %900, 0, !nosanitize !45
  store i64 %904, ptr %869, align 8, !tbaa !57
  %905 = icmp eq i64 %904, 0
  br i1 %905, label %906, label %909

906:                                              ; preds = %903
  %907 = getelementptr inbounds nuw i8, ptr %868, i64 16
  %908 = load ptr, ptr %907, align 8, !tbaa !40
  store ptr %908, ptr %880, align 8, !tbaa !58
  br label %909

909:                                              ; preds = %906, %903, %859, %840
  %910 = load i32, ptr %6, align 4, !tbaa !73
  %911 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %910, i32 1), !nosanitize !45
  %912 = extractvalue { i32, i1 } %911, 1, !nosanitize !45
  br i1 %912, label %913, label %914, !prof !46, !nosanitize !45

913:                                              ; preds = %909
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

914:                                              ; preds = %909
  %915 = extractvalue { i32, i1 } %911, 0, !nosanitize !45
  store i32 %915, ptr %6, align 4, !tbaa !73
  %916 = load i32, ptr %3, align 4, !tbaa !75
  %917 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %916, i32 1), !nosanitize !45
  %918 = extractvalue { i32, i1 } %917, 1, !nosanitize !45
  br i1 %918, label %919, label %920, !prof !46, !nosanitize !45

919:                                              ; preds = %914
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

920:                                              ; preds = %914
  %921 = extractvalue { i32, i1 } %917, 0, !nosanitize !45
  store i32 %921, ptr %3, align 4, !tbaa !75
  %922 = load ptr, ptr %0, align 8, !tbaa !20
  %923 = getelementptr inbounds nuw i8, ptr %922, i64 32
  %924 = load i32, ptr %923, align 8, !tbaa !107
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %.loopexit45, label %.backedge

926:                                              ; preds = %804
  store i32 1, ptr %34, align 8, !tbaa !79
  %927 = load i32, ptr %6, align 4, !tbaa !73
  %928 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %927, i32 1), !nosanitize !45
  %929 = extractvalue { i32, i1 } %928, 1, !nosanitize !45
  br i1 %929, label %930, label %931, !prof !46, !nosanitize !45

930:                                              ; preds = %926
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

931:                                              ; preds = %926
  %932 = extractvalue { i32, i1 } %928, 0, !nosanitize !45
  store i32 %932, ptr %6, align 4, !tbaa !73
  %933 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %590, i32 1), !nosanitize !45
  %934 = extractvalue { i32, i1 } %933, 1, !nosanitize !45
  br i1 %934, label %935, label %936, !prof !46, !nosanitize !45

935:                                              ; preds = %931
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

936:                                              ; preds = %931
  %937 = extractvalue { i32, i1 } %933, 0, !nosanitize !45
  store i32 %937, ptr %3, align 4, !tbaa !75
  br label %.backedge

.backedge:                                        ; preds = %936, %920, %799, %741
  br label %36

938:                                              ; preds = %365
  %939 = load i32, ptr %34, align 8, !tbaa !79
  %940 = icmp eq i32 %939, 0
  %941 = load i32, ptr %6, align 4, !tbaa !73
  br i1 %940, label %984, label %942

942:                                              ; preds = %938
  %943 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %941, i32 1), !nosanitize !45
  %944 = extractvalue { i32, i1 } %943, 1, !nosanitize !45
  br i1 %944, label %945, label %946, !prof !46, !nosanitize !45

945:                                              ; preds = %942
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

946:                                              ; preds = %942
  %947 = extractvalue { i32, i1 } %943, 0, !nosanitize !45
  %948 = load ptr, ptr %7, align 8, !tbaa !34
  %949 = zext i32 %947 to i64
  %950 = getelementptr inbounds nuw i8, ptr %948, i64 %949
  %951 = load i8, ptr %950, align 1, !tbaa !8
  %952 = load i32, ptr %30, align 4, !tbaa !139
  %953 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %952, i32 1), !nosanitize !45
  %954 = extractvalue { i32, i1 } %953, 1, !nosanitize !45
  br i1 %954, label %955, label %956, !prof !46, !nosanitize !45

955:                                              ; preds = %946
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

956:                                              ; preds = %946
  %957 = extractvalue { i32, i1 } %953, 0, !nosanitize !45
  %958 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %957, ptr %30, align 4, !tbaa !139
  %959 = zext i32 %952 to i64
  %960 = getelementptr inbounds nuw i8, ptr %958, i64 %959
  store i8 0, ptr %960, align 1, !tbaa !8
  %961 = load i32, ptr %30, align 4, !tbaa !139
  %962 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %961, i32 1), !nosanitize !45
  %963 = extractvalue { i32, i1 } %962, 1, !nosanitize !45
  br i1 %963, label %964, label %965, !prof !46, !nosanitize !45

964:                                              ; preds = %956
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

965:                                              ; preds = %956
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
  store i8 %951, ptr %978, align 1, !tbaa !8
  %979 = zext i8 %951 to i64
  %980 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %979
  %981 = load i16, ptr %980, align 4, !tbaa !8
  %982 = add i16 %981, 1
  store i16 %982, ptr %980, align 4, !tbaa !8
  store i32 0, ptr %34, align 8, !tbaa !79
  %983 = load i32, ptr %6, align 4, !tbaa !73
  br label %984

984:                                              ; preds = %974, %938
  %985 = phi i32 [ %983, %974 ], [ %941, %938 ]
  %986 = tail call i32 @llvm.umin.i32(i32 %985, i32 2)
  store i32 %986, ptr %10, align 4, !tbaa !76
  %987 = icmp eq i32 %1, 4
  br i1 %987, label %988, label %1050

988:                                              ; preds = %984
  %989 = load i64, ptr %9, align 8, !tbaa !74
  %990 = icmp sgt i64 %989, -1
  br i1 %990, label %991, label %995

991:                                              ; preds = %988
  %992 = load ptr, ptr %7, align 8, !tbaa !34
  %993 = and i64 %989, 4294967295
  %994 = getelementptr inbounds nuw i8, ptr %992, i64 %993
  br label %995

995:                                              ; preds = %991, %988
  %996 = phi ptr [ %994, %991 ], [ null, %988 ]
  %997 = zext i32 %985 to i64
  %998 = sub nsw i64 %997, %989
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %996, i64 noundef %998, i32 noundef 1) #12
  %999 = load i32, ptr %6, align 4, !tbaa !73
  %1000 = zext i32 %999 to i64
  store i64 %1000, ptr %9, align 8, !tbaa !74
  %1001 = load ptr, ptr %0, align 8, !tbaa !20
  %1002 = getelementptr inbounds nuw i8, ptr %1001, i64 56
  %1003 = load ptr, ptr %1002, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1003) #12
  %1004 = getelementptr inbounds nuw i8, ptr %1003, i64 40
  %1005 = load i64, ptr %1004, align 8, !tbaa !57
  %1006 = getelementptr inbounds nuw i8, ptr %1001, i64 32
  %1007 = load i32, ptr %1006, align 8, !tbaa !107
  %1008 = zext i32 %1007 to i64
  %1009 = tail call i64 @llvm.umin.i64(i64 %1005, i64 %1008)
  %1010 = trunc nuw i64 %1009 to i32
  %1011 = icmp eq i64 %1009, 0
  br i1 %1011, label %1044, label %1012

1012:                                             ; preds = %995
  %1013 = getelementptr inbounds nuw i8, ptr %1001, i64 24
  %1014 = load ptr, ptr %1013, align 8, !tbaa !106
  %1015 = getelementptr inbounds nuw i8, ptr %1003, i64 32
  %1016 = load ptr, ptr %1015, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1014, ptr align 1 %1016, i64 %1009, i1 false)
  %1017 = load ptr, ptr %1013, align 8, !tbaa !106
  %1018 = getelementptr inbounds nuw i8, ptr %1017, i64 %1009
  store ptr %1018, ptr %1013, align 8, !tbaa !106
  %1019 = load ptr, ptr %1015, align 8, !tbaa !58
  %1020 = getelementptr inbounds nuw i8, ptr %1019, i64 %1009
  store ptr %1020, ptr %1015, align 8, !tbaa !58
  %1021 = getelementptr inbounds nuw i8, ptr %1001, i64 40
  %1022 = load i64, ptr %1021, align 8, !tbaa !108
  %1023 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1022, i64 %1009), !nosanitize !45
  %1024 = extractvalue { i64, i1 } %1023, 1, !nosanitize !45
  br i1 %1024, label %1025, label %1026, !prof !46, !nosanitize !45

1025:                                             ; preds = %1012
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1026:                                             ; preds = %1012
  %1027 = extractvalue { i64, i1 } %1023, 0, !nosanitize !45
  store i64 %1027, ptr %1021, align 8, !tbaa !108
  %1028 = load i32, ptr %1006, align 8, !tbaa !107
  %1029 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1028, i32 %1010), !nosanitize !45
  %1030 = extractvalue { i32, i1 } %1029, 1, !nosanitize !45
  br i1 %1030, label %1031, label %1032, !prof !46, !nosanitize !45

1031:                                             ; preds = %1026
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1032:                                             ; preds = %1026
  %1033 = extractvalue { i32, i1 } %1029, 0, !nosanitize !45
  store i32 %1033, ptr %1006, align 8, !tbaa !107
  %1034 = load i64, ptr %1004, align 8, !tbaa !57
  %1035 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1034, i64 %1009), !nosanitize !45
  %1036 = extractvalue { i64, i1 } %1035, 1, !nosanitize !45
  br i1 %1036, label %1037, label %1038, !prof !46, !nosanitize !45

1037:                                             ; preds = %1032
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1038:                                             ; preds = %1032
  %1039 = extractvalue { i64, i1 } %1035, 0, !nosanitize !45
  store i64 %1039, ptr %1004, align 8, !tbaa !57
  %1040 = icmp eq i64 %1039, 0
  br i1 %1040, label %1041, label %1044

1041:                                             ; preds = %1038
  %1042 = getelementptr inbounds nuw i8, ptr %1003, i64 16
  %1043 = load ptr, ptr %1042, align 8, !tbaa !40
  store ptr %1043, ptr %1015, align 8, !tbaa !58
  br label %1044

1044:                                             ; preds = %1041, %1038, %995
  %1045 = load ptr, ptr %0, align 8, !tbaa !20
  %1046 = getelementptr inbounds nuw i8, ptr %1045, i64 32
  %1047 = load i32, ptr %1046, align 8, !tbaa !107
  %1048 = icmp eq i32 %1047, 0
  %1049 = select i1 %1048, i32 2, i32 3
  br label %.loopexit45

1050:                                             ; preds = %984
  %1051 = load i32, ptr %30, align 4, !tbaa !139
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1114, label %1053

1053:                                             ; preds = %1050
  %1054 = load i64, ptr %9, align 8, !tbaa !74
  %1055 = icmp sgt i64 %1054, -1
  br i1 %1055, label %1056, label %1060

1056:                                             ; preds = %1053
  %1057 = load ptr, ptr %7, align 8, !tbaa !34
  %1058 = and i64 %1054, 4294967295
  %1059 = getelementptr inbounds nuw i8, ptr %1057, i64 %1058
  br label %1060

1060:                                             ; preds = %1056, %1053
  %1061 = phi ptr [ %1059, %1056 ], [ null, %1053 ]
  %1062 = zext i32 %985 to i64
  %1063 = sub nsw i64 %1062, %1054
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1061, i64 noundef %1063, i32 noundef 0) #12
  %1064 = load i32, ptr %6, align 4, !tbaa !73
  %1065 = zext i32 %1064 to i64
  store i64 %1065, ptr %9, align 8, !tbaa !74
  %1066 = load ptr, ptr %0, align 8, !tbaa !20
  %1067 = getelementptr inbounds nuw i8, ptr %1066, i64 56
  %1068 = load ptr, ptr %1067, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1068) #12
  %1069 = getelementptr inbounds nuw i8, ptr %1068, i64 40
  %1070 = load i64, ptr %1069, align 8, !tbaa !57
  %1071 = getelementptr inbounds nuw i8, ptr %1066, i64 32
  %1072 = load i32, ptr %1071, align 8, !tbaa !107
  %1073 = zext i32 %1072 to i64
  %1074 = tail call i64 @llvm.umin.i64(i64 %1070, i64 %1073)
  %1075 = trunc nuw i64 %1074 to i32
  %1076 = icmp eq i64 %1074, 0
  br i1 %1076, label %1109, label %1077

1077:                                             ; preds = %1060
  %1078 = getelementptr inbounds nuw i8, ptr %1066, i64 24
  %1079 = load ptr, ptr %1078, align 8, !tbaa !106
  %1080 = getelementptr inbounds nuw i8, ptr %1068, i64 32
  %1081 = load ptr, ptr %1080, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1079, ptr align 1 %1081, i64 %1074, i1 false)
  %1082 = load ptr, ptr %1078, align 8, !tbaa !106
  %1083 = getelementptr inbounds nuw i8, ptr %1082, i64 %1074
  store ptr %1083, ptr %1078, align 8, !tbaa !106
  %1084 = load ptr, ptr %1080, align 8, !tbaa !58
  %1085 = getelementptr inbounds nuw i8, ptr %1084, i64 %1074
  store ptr %1085, ptr %1080, align 8, !tbaa !58
  %1086 = getelementptr inbounds nuw i8, ptr %1066, i64 40
  %1087 = load i64, ptr %1086, align 8, !tbaa !108
  %1088 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1087, i64 %1074), !nosanitize !45
  %1089 = extractvalue { i64, i1 } %1088, 1, !nosanitize !45
  br i1 %1089, label %1090, label %1091, !prof !46, !nosanitize !45

1090:                                             ; preds = %1077
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1091:                                             ; preds = %1077
  %1092 = extractvalue { i64, i1 } %1088, 0, !nosanitize !45
  store i64 %1092, ptr %1086, align 8, !tbaa !108
  %1093 = load i32, ptr %1071, align 8, !tbaa !107
  %1094 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1093, i32 %1075), !nosanitize !45
  %1095 = extractvalue { i32, i1 } %1094, 1, !nosanitize !45
  br i1 %1095, label %1096, label %1097, !prof !46, !nosanitize !45

1096:                                             ; preds = %1091
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1097:                                             ; preds = %1091
  %1098 = extractvalue { i32, i1 } %1094, 0, !nosanitize !45
  store i32 %1098, ptr %1071, align 8, !tbaa !107
  %1099 = load i64, ptr %1069, align 8, !tbaa !57
  %1100 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1099, i64 %1074), !nosanitize !45
  %1101 = extractvalue { i64, i1 } %1100, 1, !nosanitize !45
  br i1 %1101, label %1102, label %1103, !prof !46, !nosanitize !45

1102:                                             ; preds = %1097
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1103:                                             ; preds = %1097
  %1104 = extractvalue { i64, i1 } %1100, 0, !nosanitize !45
  store i64 %1104, ptr %1069, align 8, !tbaa !57
  %1105 = icmp eq i64 %1104, 0
  br i1 %1105, label %1106, label %1109

1106:                                             ; preds = %1103
  %1107 = getelementptr inbounds nuw i8, ptr %1068, i64 16
  %1108 = load ptr, ptr %1107, align 8, !tbaa !40
  store ptr %1108, ptr %1080, align 8, !tbaa !58
  br label %1109

1109:                                             ; preds = %1106, %1103, %1060
  %1110 = load ptr, ptr %0, align 8, !tbaa !20
  %1111 = getelementptr inbounds nuw i8, ptr %1110, i64 32
  %1112 = load i32, ptr %1111, align 8, !tbaa !107
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %.loopexit45, label %1114

1114:                                             ; preds = %1109, %1050
  br label %.loopexit45

.loopexit45:                                      ; preds = %920, %799, %361, %1114, %1109, %1044
  %1115 = phi i32 [ 0, %1109 ], [ %1049, %1044 ], [ 1, %1114 ], [ 0, %361 ], [ 0, %799 ], [ 0, %920 ]
  ret i32 %1115
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
