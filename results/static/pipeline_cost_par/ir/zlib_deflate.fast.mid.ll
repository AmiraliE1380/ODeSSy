; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_deflate.ll'
source_filename = "/mydata/zlib/deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_s = type { i16, i16, i16, i16, ptr }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }

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
  %33 = tail call ptr %21(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #8
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
  %45 = tail call ptr %43(ptr noundef %44, i32 noundef 32768, i32 noundef 2) #8
  %46 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store ptr %45, ptr %46, align 8, !tbaa !34
  %47 = load ptr, ptr %15, align 8, !tbaa !15
  %48 = load ptr, ptr %31, align 8, !tbaa !16
  %49 = load i32, ptr %40, align 8, !tbaa !31
  %50 = tail call ptr %47(ptr noundef %48, i32 noundef %49, i32 noundef 2) #8
  %51 = getelementptr inbounds nuw i8, ptr %33, i64 112
  store ptr %50, ptr %51, align 8, !tbaa !35
  %52 = load ptr, ptr %15, align 8, !tbaa !15
  %53 = load ptr, ptr %31, align 8, !tbaa !16
  %54 = load i32, ptr %42, align 4, !tbaa !36
  %55 = tail call ptr %52(ptr noundef %53, i32 noundef %54, i32 noundef 2) #8
  %56 = getelementptr inbounds nuw i8, ptr %33, i64 120
  store ptr %55, ptr %56, align 8, !tbaa !37
  %57 = getelementptr inbounds nuw i8, ptr %33, i64 5952
  store i64 0, ptr %57, align 8, !tbaa !38
  %58 = getelementptr inbounds nuw i8, ptr %33, i64 5896
  store i32 16384, ptr %58, align 8, !tbaa !39
  %59 = load ptr, ptr %15, align 8, !tbaa !15
  %60 = load ptr, ptr %31, align 8, !tbaa !16
  %61 = tail call ptr %59(ptr noundef %60, i32 noundef 16384, i32 noundef 4) #8
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
  tail call void %82(ptr noundef %98, ptr noundef nonnull %95) #8
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
  tail call void %102(ptr noundef %108, ptr noundef nonnull %105) #8
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
  tail call void %112(ptr noundef %118, ptr noundef nonnull %115) #8
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
  tail call void %122(ptr noundef %128, ptr noundef nonnull %125) #8
  %129 = load ptr, ptr %22, align 8, !tbaa !17
  %130 = load ptr, ptr %37, align 8, !tbaa !18
  br label %131

131:                                              ; preds = %127, %121
  %132 = phi ptr [ %130, %127 ], [ %123, %121 ]
  %133 = phi ptr [ %129, %127 ], [ %122, %121 ]
  %134 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %133(ptr noundef %134, ptr noundef %132) #8
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

141:                                              ; preds = %135
  %142 = extractvalue { i32, i1 } %138, 0, !nosanitize !44
  %143 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %142, i32 3), !nosanitize !44
  %144 = extractvalue { i32, i1 } %143, 1, !nosanitize !44
  br i1 %144, label %145, label %146, !prof !45, !nosanitize !44

145:                                              ; preds = %141
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !44
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
  br i1 %9, label %198, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !5
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %198, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %198, label %17

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
  %63 = tail call ptr %25(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %198, label %65

65:                                               ; preds = %60
  %66 = select i1 %58, i32 9, i32 %43
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5960) %67, i8 0, i64 5960, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %63, ptr %68, align 8, !tbaa !18
  store ptr %0, ptr %63, align 8, !tbaa !19
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i32 42, ptr %69, align 8, !tbaa !28
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 48
  store i32 %45, ptr %70, align 8, !tbaa !29
  %71 = getelementptr inbounds nuw i8, ptr %63, i64 84
  store i32 %66, ptr %71, align 4, !tbaa !30
  %72 = shl nuw nsw i32 1, %66
  %73 = getelementptr inbounds nuw i8, ptr %63, i64 80
  store i32 %72, ptr %73, align 8, !tbaa !31
  %74 = add nsw i32 %72, -1
  %75 = getelementptr inbounds nuw i8, ptr %63, i64 88
  store i32 %74, ptr %75, align 8, !tbaa !32
  %76 = add nuw nsw i32 %4, 7
  %77 = getelementptr inbounds nuw i8, ptr %63, i64 136
  store i32 %76, ptr %77, align 8, !tbaa !50
  %78 = shl nuw nsw i32 128, %4
  %79 = getelementptr inbounds nuw i8, ptr %63, i64 132
  store i32 %78, ptr %79, align 4, !tbaa !36
  %80 = add nsw i32 %78, -1
  %81 = getelementptr inbounds nuw i8, ptr %63, i64 140
  store i32 %80, ptr %81, align 4, !tbaa !51
  %82 = trunc nuw nsw i32 %4 to i8
  %83 = add nuw nsw i8 %82, 9
  %84 = udiv i8 %83, 3
  %85 = zext nneg i8 %84 to i32
  %86 = getelementptr inbounds nuw i8, ptr %63, i64 144
  store i32 %85, ptr %86, align 8, !tbaa !52
  %87 = load ptr, ptr %19, align 8, !tbaa !15
  %88 = load ptr, ptr %61, align 8, !tbaa !16
  %89 = tail call ptr %87(ptr noundef %88, i32 noundef %72, i32 noundef 2) #8
  %90 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %89, ptr %90, align 8, !tbaa !34
  %91 = load ptr, ptr %19, align 8, !tbaa !15
  %92 = load ptr, ptr %61, align 8, !tbaa !16
  %93 = load i32, ptr %73, align 8, !tbaa !31
  %94 = tail call ptr %91(ptr noundef %92, i32 noundef %93, i32 noundef 2) #8
  %95 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %94, ptr %95, align 8, !tbaa !35
  %96 = load ptr, ptr %19, align 8, !tbaa !15
  %97 = load ptr, ptr %61, align 8, !tbaa !16
  %98 = load i32, ptr %79, align 4, !tbaa !36
  %99 = tail call ptr %96(ptr noundef %97, i32 noundef %98, i32 noundef 2) #8
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %99, ptr %100, align 8, !tbaa !37
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %101, align 8, !tbaa !38
  %102 = shl nuw nsw i32 64, %4
  %103 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %102, ptr %103, align 8, !tbaa !39
  %104 = load ptr, ptr %19, align 8, !tbaa !15
  %105 = load ptr, ptr %61, align 8, !tbaa !16
  %106 = tail call ptr %104(ptr noundef %105, i32 noundef %102, i32 noundef 4) #8
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
  store i32 666, ptr %69, align 8, !tbaa !28
  %123 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !42
  store ptr %123, ptr %18, align 8, !tbaa !8
  %124 = load ptr, ptr %19, align 8, !tbaa !15
  %125 = icmp eq ptr %124, null
  br i1 %125, label %198, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %26, align 8, !tbaa !17
  %128 = icmp eq ptr %127, null
  br i1 %128, label %198, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %68, align 8, !tbaa !18
  %131 = icmp eq ptr %130, null
  br i1 %131, label %198, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %130, align 8, !tbaa !19
  %134 = icmp eq ptr %133, %0
  br i1 %134, label %135, label %198

135:                                              ; preds = %132
  %136 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %137 = load i32, ptr %136, align 8, !tbaa !28
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
  tail call void %127(ptr noundef %143, ptr noundef nonnull %140) #8
  %144 = load ptr, ptr %68, align 8, !tbaa !18
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
  tail call void %147(ptr noundef %153, ptr noundef nonnull %150) #8
  %154 = load ptr, ptr %68, align 8, !tbaa !18
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
  tail call void %157(ptr noundef %163, ptr noundef nonnull %160) #8
  %164 = load ptr, ptr %68, align 8, !tbaa !18
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
  tail call void %167(ptr noundef %173, ptr noundef nonnull %170) #8
  %174 = load ptr, ptr %26, align 8, !tbaa !17
  %175 = load ptr, ptr %68, align 8, !tbaa !18
  br label %176

176:                                              ; preds = %172, %166
  %177 = phi ptr [ %175, %172 ], [ %168, %166 ]
  %178 = phi ptr [ %174, %172 ], [ %167, %166 ]
  %179 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %178(ptr noundef %179, ptr noundef %177) #8
  store ptr null, ptr %68, align 8, !tbaa !18
  br label %198

180:                                              ; preds = %117
  %181 = getelementptr inbounds nuw i8, ptr %106, i64 %109
  %182 = getelementptr inbounds nuw i8, ptr %63, i64 5888
  store ptr %181, ptr %182, align 8, !tbaa !43
  %183 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %108, i32 1), !nosanitize !44
  %184 = extractvalue { i32, i1 } %183, 1, !nosanitize !44
  br i1 %184, label %185, label %186, !prof !45, !nosanitize !44

185:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

186:                                              ; preds = %180
  %187 = extractvalue { i32, i1 } %183, 0, !nosanitize !44
  %188 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %187, i32 3), !nosanitize !44
  %189 = extractvalue { i32, i1 } %188, 1, !nosanitize !44
  br i1 %189, label %190, label %191, !prof !45, !nosanitize !44

190:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !44
  unreachable, !nosanitize !44

191:                                              ; preds = %186
  %192 = extractvalue { i32, i1 } %188, 0, !nosanitize !44
  %193 = getelementptr inbounds nuw i8, ptr %63, i64 5904
  store i32 %192, ptr %193, align 8, !tbaa !46
  %194 = getelementptr inbounds nuw i8, ptr %63, i64 196
  store i32 %32, ptr %194, align 4, !tbaa !47
  %195 = getelementptr inbounds nuw i8, ptr %63, i64 200
  store i32 %5, ptr %195, align 8, !tbaa !48
  %196 = getelementptr inbounds nuw i8, ptr %63, i64 72
  store i8 8, ptr %196, align 8, !tbaa !49
  %197 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %198

198:                                              ; preds = %191, %176, %135, %132, %129, %126, %122, %60, %57, %42, %34, %15, %10, %8
  %199 = phi i32 [ %197, %191 ], [ -6, %10 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %57 ], [ -2, %42 ], [ -4, %60 ], [ -4, %122 ], [ -4, %126 ], [ -4, %129 ], [ -4, %132 ], [ -4, %135 ], [ -4, %176 ]
  ret i32 %199
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
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
  tail call void %9(ptr noundef %27, ptr noundef nonnull %23) #8
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
  tail call void %31(ptr noundef %38, ptr noundef nonnull %34) #8
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
  tail call void %42(ptr noundef %49, ptr noundef nonnull %45) #8
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
  tail call void %53(ptr noundef %60, ptr noundef nonnull %56) #8
  %61 = load ptr, ptr %8, align 8, !tbaa !17
  %62 = load ptr, ptr %12, align 8, !tbaa !18
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi ptr [ %62, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %61, %58 ], [ %53, %52 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = load ptr, ptr %66, align 8, !tbaa !16
  tail call void %65(ptr noundef %67, ptr noundef %64) #8
  store ptr null, ptr %12, align 8, !tbaa !18
  %68 = icmp eq i32 %20, 113
  %69 = select i1 %68, i32 -3, i32 0
  br label %70

70:                                               ; preds = %63, %18, %15, %11, %7, %3, %1
  %71 = phi i32 [ %69, %63 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %71
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
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
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %96, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !19
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %96

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !28
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
  tail call void @llvm.ubsantrap(i8 13) #10, !nosanitize !44
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
  %43 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %46

44:                                               ; preds = %38
  %45 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %47, ptr %48, align 8, !tbaa !57
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !58
  tail call void @_tr_init(ptr noundef nonnull %13) #8
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

61:                                               ; preds = %46
  %62 = extractvalue { i32, i1 } %58, 0, !nosanitize !44
  %63 = getelementptr inbounds nuw i8, ptr %50, i64 120
  %64 = load ptr, ptr %63, align 8, !tbaa !37
  %65 = zext i32 %62 to i64
  %66 = getelementptr inbounds nuw i16, ptr %64, i64 %65
  store i16 0, ptr %66, align 2, !tbaa !60
  %67 = shl nuw nsw i64 %65, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %64, i8 0, i64 %67, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %50, i64 5960
  store i32 0, ptr %68, align 8, !tbaa !61
  %69 = getelementptr inbounds nuw i8, ptr %50, i64 196
  %70 = load i32, ptr %69, align 4, !tbaa !47
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %71, i32 1
  %73 = load i16, ptr %72, align 2, !tbaa !62
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds nuw i8, ptr %50, i64 192
  store i32 %74, ptr %75, align 8, !tbaa !64
  %76 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %71
  %77 = load i16, ptr %76, align 16, !tbaa !65
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds nuw i8, ptr %50, i64 204
  store i32 %78, ptr %79, align 4, !tbaa !66
  %80 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %71, i32 2
  %81 = load i16, ptr %80, align 4, !tbaa !67
  %82 = zext i16 %81 to i32
  %83 = getelementptr inbounds nuw i8, ptr %50, i64 208
  store i32 %82, ptr %83, align 8, !tbaa !68
  %84 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %71, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !69
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds nuw i8, ptr %50, i64 188
  store i32 %86, ptr %87, align 4, !tbaa !70
  %88 = getelementptr inbounds nuw i8, ptr %50, i64 172
  store i32 0, ptr %88, align 4, !tbaa !71
  %89 = getelementptr inbounds nuw i8, ptr %50, i64 152
  store i64 0, ptr %89, align 8, !tbaa !72
  %90 = getelementptr inbounds nuw i8, ptr %50, i64 180
  store i32 0, ptr %90, align 4, !tbaa !73
  %91 = getelementptr inbounds nuw i8, ptr %50, i64 5932
  store i32 0, ptr %91, align 4, !tbaa !74
  %92 = getelementptr inbounds nuw i8, ptr %50, i64 184
  store i32 2, ptr %92, align 8, !tbaa !75
  %93 = getelementptr inbounds nuw i8, ptr %50, i64 160
  store i32 2, ptr %93, align 8, !tbaa !76
  %94 = getelementptr inbounds nuw i8, ptr %50, i64 168
  store i32 0, ptr %94, align 8, !tbaa !77
  %95 = getelementptr inbounds nuw i8, ptr %50, i64 128
  store i32 0, ptr %95, align 8, !tbaa !78
  br label %96

96:                                               ; preds = %61, %18, %15, %11, %7, %3, %1
  %97 = phi i32 [ 0, %61 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %721, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %721, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %721, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %721, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %721

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %721 [
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
  br i1 %24, label %721, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !29
  switch i32 %27, label %34 [
    i32 2, label %721
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %721

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !73
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %721

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !73
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %721

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !29
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %40 = load i32, ptr %39, align 8, !tbaa !31
  %41 = icmp ult i32 %2, %40
  br i1 %41, label %80, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !57
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #8
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

57:                                               ; preds = %51
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !44
  %59 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %60 = load ptr, ptr %59, align 8, !tbaa !37
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds nuw i16, ptr %60, i64 %61
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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

105:                                              ; preds = %334, %80
  %106 = phi i32 [ %261, %334 ], [ %104, %80 ]
  %107 = load i64, ptr %89, align 8, !tbaa !59
  %108 = zext i32 %106 to i64
  %109 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 %108), !nosanitize !44
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !44
  br i1 %110, label %111, label %112, !prof !45, !nosanitize !44

111:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

112:                                              ; preds = %105
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !44
  %114 = load i32, ptr %90, align 4, !tbaa !71
  %115 = zext i32 %114 to i64
  %116 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %113, i64 %115), !nosanitize !44
  %117 = extractvalue { i64, i1 } %116, 1, !nosanitize !44
  br i1 %117, label %118, label %119, !prof !45, !nosanitize !44

118:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

119:                                              ; preds = %112
  %120 = extractvalue { i64, i1 } %116, 0, !nosanitize !44
  %121 = trunc i64 %120 to i32
  %122 = load i32, ptr %81, align 8, !tbaa !31
  %123 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %122, i32 262), !nosanitize !44
  %124 = extractvalue { i32, i1 } %123, 1, !nosanitize !44
  br i1 %124, label %125, label %126, !prof !45, !nosanitize !44

125:                                              ; preds = %119
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

126:                                              ; preds = %119
  %127 = extractvalue { i32, i1 } %123, 0, !nosanitize !44
  %128 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %83, i32 %127), !nosanitize !44
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !44
  br i1 %129, label %130, label %131, !prof !45, !nosanitize !44

130:                                              ; preds = %126
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

131:                                              ; preds = %126
  %132 = extractvalue { i32, i1 } %128, 0, !nosanitize !44
  %133 = icmp ult i32 %114, %132
  br i1 %133, label %208, label %134

134:                                              ; preds = %131
  %135 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %121), !nosanitize !44
  %136 = extractvalue { i32, i1 } %135, 1, !nosanitize !44
  br i1 %136, label %137, label %138, !prof !45, !nosanitize !44

137:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

147:                                              ; preds = %138
  %148 = extractvalue { i32, i1 } %144, 0, !nosanitize !44
  store i32 %148, ptr %93, align 8, !tbaa !81
  %149 = load i32, ptr %90, align 4, !tbaa !71
  %150 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %83), !nosanitize !44
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !44
  br i1 %151, label %152, label %153, !prof !45, !nosanitize !44

152:                                              ; preds = %153, %147
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  %168 = getelementptr inbounds nuw i16, ptr %166, i64 %167
  br label %169

169:                                              ; preds = %180, %163
  %170 = phi ptr [ %168, %163 ], [ %172, %180 ]
  %171 = phi i32 [ %165, %163 ], [ %181, %180 ]
  %172 = getelementptr inbounds i8, ptr %170, i64 -2
  %173 = load i16, ptr %172, align 2, !tbaa !60
  %174 = zext i16 %173 to i32
  %175 = tail call i32 @llvm.usub.sat.i32(i32 %174, i32 %164)
  %176 = trunc nuw i32 %175 to i16
  store i16 %176, ptr %172, align 2, !tbaa !60
  %177 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %171, i32 1), !nosanitize !44
  %178 = extractvalue { i32, i1 } %177, 1, !nosanitize !44
  br i1 %178, label %179, label %180, !prof !45, !nosanitize !44

179:                                              ; preds = %169
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

180:                                              ; preds = %169
  %181 = extractvalue { i32, i1 } %177, 0, !nosanitize !44
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %169, !llvm.loop !82

183:                                              ; preds = %180
  %184 = load ptr, ptr %98, align 8, !tbaa !35
  %185 = zext i32 %164 to i64
  %186 = getelementptr inbounds nuw i16, ptr %184, i64 %185
  br label %187

187:                                              ; preds = %198, %183
  %188 = phi ptr [ %186, %183 ], [ %190, %198 ]
  %189 = phi i32 [ %164, %183 ], [ %199, %198 ]
  %190 = getelementptr inbounds i8, ptr %188, i64 -2
  %191 = load i16, ptr %190, align 2, !tbaa !60
  %192 = zext i16 %191 to i32
  %193 = tail call i32 @llvm.usub.sat.i32(i32 %192, i32 %164)
  %194 = trunc nuw i32 %193 to i16
  store i16 %194, ptr %190, align 2, !tbaa !60
  %195 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %189, i32 1), !nosanitize !44
  %196 = extractvalue { i32, i1 } %195, 1, !nosanitize !44
  br i1 %196, label %197, label %198, !prof !45, !nosanitize !44

197:                                              ; preds = %187
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

198:                                              ; preds = %187
  %199 = extractvalue { i32, i1 } %195, 0, !nosanitize !44
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %187, !llvm.loop !84

201:                                              ; preds = %198
  store i32 1, ptr %99, align 8, !tbaa !61
  %202 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %121, i32 %83), !nosanitize !44
  %203 = extractvalue { i32, i1 } %202, 1, !nosanitize !44
  br i1 %203, label %204, label %205, !prof !45, !nosanitize !44

204:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

205:                                              ; preds = %201
  %206 = extractvalue { i32, i1 } %202, 0, !nosanitize !44
  %207 = load i32, ptr %82, align 4, !tbaa !73
  br label %208

208:                                              ; preds = %205, %131
  %209 = phi i32 [ %207, %205 ], [ %106, %131 ]
  %210 = phi i32 [ %154, %205 ], [ %114, %131 ]
  %211 = phi i32 [ %206, %205 ], [ %121, %131 ]
  %212 = load ptr, ptr %15, align 8, !tbaa !19
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 8
  %214 = load i32, ptr %213, align 8, !tbaa !79
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %339, label %216

216:                                              ; preds = %208
  %217 = load ptr, ptr %92, align 8, !tbaa !34
  %218 = zext i32 %210 to i64
  %219 = getelementptr inbounds nuw i8, ptr %217, i64 %218
  %220 = zext i32 %209 to i64
  %221 = getelementptr inbounds nuw i8, ptr %219, i64 %220
  %222 = tail call i32 @llvm.umin.i32(i32 %214, i32 %211)
  %223 = icmp eq i32 %211, 0
  br i1 %223, label %255, label %224

224:                                              ; preds = %216
  %225 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %214, i32 %222), !nosanitize !44
  %226 = extractvalue { i32, i1 } %225, 1, !nosanitize !44
  br i1 false, label %227, label %228, !prof !45, !nosanitize !44

227:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

228:                                              ; preds = %224
  %229 = extractvalue { i32, i1 } %225, 0, !nosanitize !44
  store i32 %229, ptr %213, align 8, !tbaa !79
  %230 = load ptr, ptr %212, align 8, !tbaa !80
  %231 = zext i32 %222 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %221, ptr align 1 %230, i64 %231, i1 false)
  %232 = getelementptr inbounds nuw i8, ptr %212, i64 56
  %233 = load ptr, ptr %232, align 8, !tbaa !18
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 48
  %235 = load i32, ptr %234, align 8, !tbaa !29
  switch i32 %235, label %244 [
    i32 1, label %236
    i32 2, label %240
  ]

236:                                              ; preds = %228
  %237 = getelementptr inbounds nuw i8, ptr %212, i64 96
  %238 = load i64, ptr %237, align 8, !tbaa !57
  %239 = tail call i64 @adler32(i64 noundef %238, ptr noundef %221, i32 noundef %222) #8
  store i64 %239, ptr %237, align 8, !tbaa !57
  br label %244

240:                                              ; preds = %228
  %241 = getelementptr inbounds nuw i8, ptr %212, i64 96
  %242 = load i64, ptr %241, align 8, !tbaa !57
  %243 = tail call i64 @crc32(i64 noundef %242, ptr noundef %221, i32 noundef %222) #8
  store i64 %243, ptr %241, align 8, !tbaa !57
  br label %244

244:                                              ; preds = %240, %236, %228
  %245 = load ptr, ptr %212, align 8, !tbaa !80
  %246 = getelementptr inbounds nuw i8, ptr %245, i64 %231
  store ptr %246, ptr %212, align 8, !tbaa !80
  %247 = getelementptr inbounds nuw i8, ptr %212, i64 16
  %248 = load i64, ptr %247, align 8, !tbaa !53
  %249 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %248, i64 %231), !nosanitize !44
  %250 = extractvalue { i64, i1 } %249, 1, !nosanitize !44
  br i1 %250, label %251, label %252, !prof !45, !nosanitize !44

251:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

252:                                              ; preds = %244
  %253 = extractvalue { i64, i1 } %249, 0, !nosanitize !44
  store i64 %253, ptr %247, align 8, !tbaa !53
  %254 = load i32, ptr %82, align 4, !tbaa !73
  br label %255

255:                                              ; preds = %252, %216
  %256 = phi i32 [ %209, %216 ], [ %254, %252 ]
  %257 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %256, i32 %222), !nosanitize !44
  %258 = extractvalue { i32, i1 } %257, 1, !nosanitize !44
  br i1 %258, label %259, label %260, !prof !45, !nosanitize !44

259:                                              ; preds = %255
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

260:                                              ; preds = %255
  %261 = extractvalue { i32, i1 } %257, 0, !nosanitize !44
  store i32 %261, ptr %82, align 4, !tbaa !73
  %262 = load i32, ptr %95, align 4, !tbaa !74
  %263 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 %262), !nosanitize !44
  %264 = extractvalue { i32, i1 } %263, 1, !nosanitize !44
  br i1 %264, label %265, label %266, !prof !45, !nosanitize !44

265:                                              ; preds = %260
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

266:                                              ; preds = %260
  %267 = extractvalue { i32, i1 } %263, 0, !nosanitize !44
  %268 = icmp ugt i32 %267, 2
  br i1 %268, label %269, label %332

269:                                              ; preds = %266
  %270 = load i32, ptr %90, align 4, !tbaa !71
  %271 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %270, i32 %262), !nosanitize !44
  %272 = extractvalue { i32, i1 } %271, 0, !nosanitize !44
  %273 = extractvalue { i32, i1 } %271, 1, !nosanitize !44
  br i1 %273, label %274, label %275, !prof !45, !nosanitize !44

274:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

275:                                              ; preds = %269
  %276 = load ptr, ptr %92, align 8, !tbaa !34
  %277 = zext i32 %272 to i64
  %278 = getelementptr inbounds nuw i8, ptr %276, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !5
  %280 = zext i8 %279 to i32
  store i32 %280, ptr %100, align 8, !tbaa !78
  %281 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %272, i32 1), !nosanitize !44
  %282 = extractvalue { i32, i1 } %281, 1, !nosanitize !44
  br i1 %282, label %283, label %284, !prof !45, !nosanitize !44

283:                                              ; preds = %275
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

284:                                              ; preds = %275
  %285 = extractvalue { i32, i1 } %281, 0, !nosanitize !44
  %286 = load i32, ptr %101, align 8, !tbaa !52
  %287 = shl i32 %280, %286
  %288 = zext i32 %285 to i64
  %289 = getelementptr inbounds nuw i8, ptr %276, i64 %288
  %290 = load i8, ptr %289, align 1, !tbaa !5
  %291 = zext i8 %290 to i32
  %292 = xor i32 %287, %291
  %293 = load i32, ptr %102, align 4, !tbaa !51
  %294 = and i32 %292, %293
  store i32 %294, ptr %100, align 8, !tbaa !78
  br label %295

295:                                              ; preds = %328, %284
  %296 = phi i32 [ %294, %284 ], [ %313, %328 ]
  %297 = phi i32 [ %262, %284 ], [ %324, %328 ]
  %298 = phi i32 [ %272, %284 ], [ %329, %328 ]
  %299 = icmp eq i32 %297, 0
  br i1 %299, label %332, label %300

300:                                              ; preds = %295
  %301 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %298, i32 3), !nosanitize !44
  %302 = extractvalue { i32, i1 } %301, 1, !nosanitize !44
  br i1 %302, label %303, label %304, !prof !45, !nosanitize !44

303:                                              ; preds = %300
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

304:                                              ; preds = %300
  %305 = shl i32 %296, %286
  %306 = extractvalue { i32, i1 } %301, 0, !nosanitize !44
  %307 = add i32 %306, -1
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds nuw i8, ptr %276, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !5
  %311 = zext i8 %310 to i32
  %312 = xor i32 %305, %311
  %313 = and i32 %312, %293
  store i32 %313, ptr %100, align 8, !tbaa !78
  %314 = load ptr, ptr %97, align 8, !tbaa !37
  %315 = zext i32 %313 to i64
  %316 = getelementptr inbounds nuw i16, ptr %314, i64 %315
  %317 = load i16, ptr %316, align 2, !tbaa !60
  %318 = load ptr, ptr %98, align 8, !tbaa !35
  %319 = load i32, ptr %103, align 8, !tbaa !32
  %320 = and i32 %319, %298
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds nuw i16, ptr %318, i64 %321
  store i16 %317, ptr %322, align 2, !tbaa !60
  %323 = trunc i32 %298 to i16
  store i16 %323, ptr %316, align 2, !tbaa !60
  %324 = add i32 %297, -1
  store i32 %324, ptr %95, align 4, !tbaa !74
  %325 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 %324), !nosanitize !44
  %326 = extractvalue { i32, i1 } %325, 1, !nosanitize !44
  br i1 %326, label %327, label %328, !prof !45, !nosanitize !44

327:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

328:                                              ; preds = %304
  %329 = add nuw i32 %298, 1
  %330 = extractvalue { i32, i1 } %325, 0, !nosanitize !44
  %331 = icmp ult i32 %330, 3
  br i1 %331, label %332, label %295, !llvm.loop !85

332:                                              ; preds = %328, %295, %266
  %333 = icmp ult i32 %261, 262
  br i1 %333, label %334, label %339

334:                                              ; preds = %332
  %335 = load ptr, ptr %15, align 8, !tbaa !19
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 8
  %337 = load i32, ptr %336, align 8, !tbaa !79
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %105, !llvm.loop !86

339:                                              ; preds = %334, %332, %208
  %340 = phi i32 [ %261, %334 ], [ %261, %332 ], [ %209, %208 ]
  %341 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %342 = load i64, ptr %341, align 8, !tbaa !38
  %343 = load i64, ptr %89, align 8, !tbaa !59
  %344 = icmp ult i64 %342, %343
  br i1 %344, label %345, label %384

345:                                              ; preds = %339
  %346 = load i32, ptr %90, align 4, !tbaa !71
  %347 = zext i32 %346 to i64
  %348 = zext i32 %340 to i64
  %349 = add nuw nsw i64 %348, %347
  %350 = icmp ult i64 %342, %349
  br i1 %350, label %351, label %361

351:                                              ; preds = %345
  %352 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %343, i64 %349), !nosanitize !44
  %353 = extractvalue { i64, i1 } %352, 1, !nosanitize !44
  br i1 %353, label %354, label %355, !prof !45, !nosanitize !44

354:                                              ; preds = %351
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

355:                                              ; preds = %351
  %356 = extractvalue { i64, i1 } %352, 0, !nosanitize !44
  %357 = tail call i64 @llvm.umin.i64(i64 %356, i64 258)
  %358 = load ptr, ptr %92, align 8, !tbaa !34
  %359 = getelementptr inbounds nuw i8, ptr %358, i64 %349
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %359, i8 0, i64 %357, i1 false)
  %360 = add nuw nsw i64 %357, %349
  br label %381

361:                                              ; preds = %345
  %362 = add nuw nsw i64 %349, 258
  %363 = icmp ult i64 %342, %362
  br i1 %363, label %364, label %384

364:                                              ; preds = %361
  %365 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %343, i64 %342), !nosanitize !44
  %366 = extractvalue { i64, i1 } %365, 1, !nosanitize !44
  br i1 %366, label %367, label %368, !prof !45, !nosanitize !44

367:                                              ; preds = %364
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

368:                                              ; preds = %364
  %369 = sub nuw nsw i64 %362, %342
  %370 = extractvalue { i64, i1 } %365, 0, !nosanitize !44
  %371 = tail call i64 @llvm.umin.i64(i64 %369, i64 %370)
  %372 = load ptr, ptr %92, align 8, !tbaa !34
  %373 = getelementptr inbounds nuw i8, ptr %372, i64 %342
  %374 = and i64 %371, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %373, i8 0, i64 %374, i1 false)
  %375 = load i64, ptr %341, align 8, !tbaa !38
  %376 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %375, i64 %371), !nosanitize !44
  %377 = extractvalue { i64, i1 } %376, 1, !nosanitize !44
  br i1 %377, label %378, label %379, !prof !45, !nosanitize !44

378:                                              ; preds = %368
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

379:                                              ; preds = %368
  %380 = extractvalue { i64, i1 } %376, 0, !nosanitize !44
  br label %381

381:                                              ; preds = %379, %355
  %382 = phi i64 [ %360, %355 ], [ %380, %379 ]
  store i64 %382, ptr %341, align 8, !tbaa !38
  %383 = load i32, ptr %82, align 4, !tbaa !73
  br label %384

384:                                              ; preds = %381, %361, %339
  %385 = phi i32 [ %340, %339 ], [ %340, %361 ], [ %383, %381 ]
  %386 = icmp ugt i32 %385, 2
  br i1 %386, label %387, label %709

387:                                              ; preds = %706, %384
  %388 = phi i32 [ %707, %706 ], [ %385, %384 ]
  %389 = add i32 %388, -2
  %390 = load i32, ptr %90, align 4, !tbaa !71
  %391 = load i32, ptr %101, align 8, !tbaa !52
  %392 = load ptr, ptr %92, align 8, !tbaa !34
  %393 = load i32, ptr %100, align 8, !tbaa !78
  br label %394

394:                                              ; preds = %401, %387
  %395 = phi i32 [ %393, %387 ], [ %411, %401 ]
  %396 = phi i32 [ %390, %387 ], [ %422, %401 ]
  %397 = phi i32 [ %389, %387 ], [ %423, %401 ]
  %398 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %396, i32 3), !nosanitize !44
  %399 = extractvalue { i32, i1 } %398, 1, !nosanitize !44
  br i1 %399, label %400, label %401, !prof !45, !nosanitize !44

400:                                              ; preds = %394
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

401:                                              ; preds = %394
  %402 = shl i32 %395, %391
  %403 = extractvalue { i32, i1 } %398, 0, !nosanitize !44
  %404 = add i32 %403, -1
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds nuw i8, ptr %392, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !5
  %408 = zext i8 %407 to i32
  %409 = xor i32 %402, %408
  %410 = load i32, ptr %102, align 4, !tbaa !51
  %411 = and i32 %409, %410
  store i32 %411, ptr %100, align 8, !tbaa !78
  %412 = load ptr, ptr %97, align 8, !tbaa !37
  %413 = zext i32 %411 to i64
  %414 = getelementptr inbounds nuw i16, ptr %412, i64 %413
  %415 = load i16, ptr %414, align 2, !tbaa !60
  %416 = load ptr, ptr %98, align 8, !tbaa !35
  %417 = load i32, ptr %103, align 8, !tbaa !32
  %418 = and i32 %417, %396
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds nuw i16, ptr %416, i64 %419
  store i16 %415, ptr %420, align 2, !tbaa !60
  %421 = trunc i32 %396 to i16
  store i16 %421, ptr %414, align 2, !tbaa !60
  %422 = add nuw i32 %396, 1
  %423 = add i32 %397, -1
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %394, !llvm.loop !87

425:                                              ; preds = %401
  store i32 %422, ptr %90, align 4, !tbaa !71
  store i32 2, ptr %82, align 4, !tbaa !73
  %426 = load i32, ptr %81, align 8, !tbaa !31
  %427 = zext i32 %426 to i64
  br label %428

428:                                              ; preds = %657, %425
  %429 = phi i32 [ %584, %657 ], [ 2, %425 ]
  %430 = load i64, ptr %89, align 8, !tbaa !59
  %431 = zext nneg i32 %429 to i64
  %432 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %430, i64 %431), !nosanitize !44
  %433 = extractvalue { i64, i1 } %432, 1, !nosanitize !44
  br i1 %433, label %434, label %435, !prof !45, !nosanitize !44

434:                                              ; preds = %428
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

435:                                              ; preds = %428
  %436 = extractvalue { i64, i1 } %432, 0, !nosanitize !44
  %437 = load i32, ptr %90, align 4, !tbaa !71
  %438 = zext i32 %437 to i64
  %439 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %436, i64 %438), !nosanitize !44
  %440 = extractvalue { i64, i1 } %439, 1, !nosanitize !44
  br i1 %440, label %441, label %442, !prof !45, !nosanitize !44

441:                                              ; preds = %435
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

442:                                              ; preds = %435
  %443 = extractvalue { i64, i1 } %439, 0, !nosanitize !44
  %444 = trunc i64 %443 to i32
  %445 = load i32, ptr %81, align 8, !tbaa !31
  %446 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %445, i32 262), !nosanitize !44
  %447 = extractvalue { i32, i1 } %446, 1, !nosanitize !44
  br i1 %447, label %448, label %449, !prof !45, !nosanitize !44

448:                                              ; preds = %442
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

449:                                              ; preds = %442
  %450 = extractvalue { i32, i1 } %446, 0, !nosanitize !44
  %451 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %426, i32 %450), !nosanitize !44
  %452 = extractvalue { i32, i1 } %451, 1, !nosanitize !44
  br i1 %452, label %453, label %454, !prof !45, !nosanitize !44

453:                                              ; preds = %449
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

454:                                              ; preds = %449
  %455 = extractvalue { i32, i1 } %451, 0, !nosanitize !44
  %456 = icmp ult i32 %437, %455
  br i1 %456, label %531, label %457

457:                                              ; preds = %454
  %458 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %426, i32 %444), !nosanitize !44
  %459 = extractvalue { i32, i1 } %458, 1, !nosanitize !44
  br i1 %459, label %460, label %461, !prof !45, !nosanitize !44

460:                                              ; preds = %457
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

461:                                              ; preds = %457
  %462 = extractvalue { i32, i1 } %458, 0, !nosanitize !44
  %463 = load ptr, ptr %92, align 8, !tbaa !34
  %464 = getelementptr inbounds nuw i8, ptr %463, i64 %427
  %465 = zext i32 %462 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %463, ptr align 1 %464, i64 %465, i1 false)
  %466 = load i32, ptr %93, align 8, !tbaa !81
  %467 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %466, i32 %426), !nosanitize !44
  %468 = extractvalue { i32, i1 } %467, 1, !nosanitize !44
  br i1 %468, label %469, label %470, !prof !45, !nosanitize !44

469:                                              ; preds = %461
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

470:                                              ; preds = %461
  %471 = extractvalue { i32, i1 } %467, 0, !nosanitize !44
  store i32 %471, ptr %93, align 8, !tbaa !81
  %472 = load i32, ptr %90, align 4, !tbaa !71
  %473 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %472, i32 %426), !nosanitize !44
  %474 = extractvalue { i32, i1 } %473, 1, !nosanitize !44
  br i1 %474, label %475, label %476, !prof !45, !nosanitize !44

475:                                              ; preds = %476, %470
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

476:                                              ; preds = %470
  %477 = extractvalue { i32, i1 } %473, 0, !nosanitize !44
  store i32 %477, ptr %90, align 4, !tbaa !71
  %478 = load i64, ptr %94, align 8, !tbaa !72
  %479 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %478, i64 %427), !nosanitize !44
  %480 = extractvalue { i64, i1 } %479, 1, !nosanitize !44
  br i1 %480, label %475, label %481, !prof !45, !nosanitize !44

481:                                              ; preds = %476
  %482 = extractvalue { i64, i1 } %479, 0, !nosanitize !44
  store i64 %482, ptr %94, align 8, !tbaa !72
  %483 = load i32, ptr %95, align 4, !tbaa !74
  %484 = icmp ugt i32 %483, %477
  br i1 %484, label %485, label %486

485:                                              ; preds = %481
  store i32 %477, ptr %95, align 4, !tbaa !74
  br label %486

486:                                              ; preds = %485, %481
  %487 = load i32, ptr %81, align 8, !tbaa !31
  %488 = load i32, ptr %96, align 4, !tbaa !36
  %489 = load ptr, ptr %97, align 8, !tbaa !37
  %490 = zext i32 %488 to i64
  %491 = getelementptr inbounds nuw i16, ptr %489, i64 %490
  br label %492

492:                                              ; preds = %503, %486
  %493 = phi ptr [ %491, %486 ], [ %495, %503 ]
  %494 = phi i32 [ %488, %486 ], [ %504, %503 ]
  %495 = getelementptr inbounds i8, ptr %493, i64 -2
  %496 = load i16, ptr %495, align 2, !tbaa !60
  %497 = zext i16 %496 to i32
  %498 = tail call i32 @llvm.usub.sat.i32(i32 %497, i32 %487)
  %499 = trunc nuw i32 %498 to i16
  store i16 %499, ptr %495, align 2, !tbaa !60
  %500 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %494, i32 1), !nosanitize !44
  %501 = extractvalue { i32, i1 } %500, 1, !nosanitize !44
  br i1 %501, label %502, label %503, !prof !45, !nosanitize !44

502:                                              ; preds = %492
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

503:                                              ; preds = %492
  %504 = extractvalue { i32, i1 } %500, 0, !nosanitize !44
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %492, !llvm.loop !82

506:                                              ; preds = %503
  %507 = load ptr, ptr %98, align 8, !tbaa !35
  %508 = zext i32 %487 to i64
  %509 = getelementptr inbounds nuw i16, ptr %507, i64 %508
  br label %510

510:                                              ; preds = %521, %506
  %511 = phi ptr [ %509, %506 ], [ %513, %521 ]
  %512 = phi i32 [ %487, %506 ], [ %522, %521 ]
  %513 = getelementptr inbounds i8, ptr %511, i64 -2
  %514 = load i16, ptr %513, align 2, !tbaa !60
  %515 = zext i16 %514 to i32
  %516 = tail call i32 @llvm.usub.sat.i32(i32 %515, i32 %487)
  %517 = trunc nuw i32 %516 to i16
  store i16 %517, ptr %513, align 2, !tbaa !60
  %518 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %512, i32 1), !nosanitize !44
  %519 = extractvalue { i32, i1 } %518, 1, !nosanitize !44
  br i1 %519, label %520, label %521, !prof !45, !nosanitize !44

520:                                              ; preds = %510
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

521:                                              ; preds = %510
  %522 = extractvalue { i32, i1 } %518, 0, !nosanitize !44
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %510, !llvm.loop !84

524:                                              ; preds = %521
  store i32 1, ptr %99, align 8, !tbaa !61
  %525 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %444, i32 %426), !nosanitize !44
  %526 = extractvalue { i32, i1 } %525, 1, !nosanitize !44
  br i1 %526, label %527, label %528, !prof !45, !nosanitize !44

527:                                              ; preds = %524
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

528:                                              ; preds = %524
  %529 = extractvalue { i32, i1 } %525, 0, !nosanitize !44
  %530 = load i32, ptr %82, align 4, !tbaa !73
  br label %531

531:                                              ; preds = %528, %454
  %532 = phi i32 [ %530, %528 ], [ %429, %454 ]
  %533 = phi i32 [ %477, %528 ], [ %437, %454 ]
  %534 = phi i32 [ %529, %528 ], [ %444, %454 ]
  %535 = load ptr, ptr %15, align 8, !tbaa !19
  %536 = getelementptr inbounds nuw i8, ptr %535, i64 8
  %537 = load i32, ptr %536, align 8, !tbaa !79
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %662, label %539

539:                                              ; preds = %531
  %540 = load ptr, ptr %92, align 8, !tbaa !34
  %541 = zext i32 %533 to i64
  %542 = getelementptr inbounds nuw i8, ptr %540, i64 %541
  %543 = zext i32 %532 to i64
  %544 = getelementptr inbounds nuw i8, ptr %542, i64 %543
  %545 = tail call i32 @llvm.umin.i32(i32 %537, i32 %534)
  %546 = icmp eq i32 %534, 0
  br i1 %546, label %578, label %547

547:                                              ; preds = %539
  %548 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %537, i32 %545), !nosanitize !44
  %549 = extractvalue { i32, i1 } %548, 1, !nosanitize !44
  br i1 false, label %550, label %551, !prof !45, !nosanitize !44

550:                                              ; preds = %547
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

551:                                              ; preds = %547
  %552 = extractvalue { i32, i1 } %548, 0, !nosanitize !44
  store i32 %552, ptr %536, align 8, !tbaa !79
  %553 = load ptr, ptr %535, align 8, !tbaa !80
  %554 = zext i32 %545 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %544, ptr align 1 %553, i64 %554, i1 false)
  %555 = getelementptr inbounds nuw i8, ptr %535, i64 56
  %556 = load ptr, ptr %555, align 8, !tbaa !18
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 48
  %558 = load i32, ptr %557, align 8, !tbaa !29
  switch i32 %558, label %567 [
    i32 1, label %559
    i32 2, label %563
  ]

559:                                              ; preds = %551
  %560 = getelementptr inbounds nuw i8, ptr %535, i64 96
  %561 = load i64, ptr %560, align 8, !tbaa !57
  %562 = tail call i64 @adler32(i64 noundef %561, ptr noundef %544, i32 noundef %545) #8
  store i64 %562, ptr %560, align 8, !tbaa !57
  br label %567

563:                                              ; preds = %551
  %564 = getelementptr inbounds nuw i8, ptr %535, i64 96
  %565 = load i64, ptr %564, align 8, !tbaa !57
  %566 = tail call i64 @crc32(i64 noundef %565, ptr noundef %544, i32 noundef %545) #8
  store i64 %566, ptr %564, align 8, !tbaa !57
  br label %567

567:                                              ; preds = %563, %559, %551
  %568 = load ptr, ptr %535, align 8, !tbaa !80
  %569 = getelementptr inbounds nuw i8, ptr %568, i64 %554
  store ptr %569, ptr %535, align 8, !tbaa !80
  %570 = getelementptr inbounds nuw i8, ptr %535, i64 16
  %571 = load i64, ptr %570, align 8, !tbaa !53
  %572 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %571, i64 %554), !nosanitize !44
  %573 = extractvalue { i64, i1 } %572, 1, !nosanitize !44
  br i1 %573, label %574, label %575, !prof !45, !nosanitize !44

574:                                              ; preds = %567
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

575:                                              ; preds = %567
  %576 = extractvalue { i64, i1 } %572, 0, !nosanitize !44
  store i64 %576, ptr %570, align 8, !tbaa !53
  %577 = load i32, ptr %82, align 4, !tbaa !73
  br label %578

578:                                              ; preds = %575, %539
  %579 = phi i32 [ %532, %539 ], [ %577, %575 ]
  %580 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %579, i32 %545), !nosanitize !44
  %581 = extractvalue { i32, i1 } %580, 1, !nosanitize !44
  br i1 %581, label %582, label %583, !prof !45, !nosanitize !44

582:                                              ; preds = %578
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

583:                                              ; preds = %578
  %584 = extractvalue { i32, i1 } %580, 0, !nosanitize !44
  store i32 %584, ptr %82, align 4, !tbaa !73
  %585 = load i32, ptr %95, align 4, !tbaa !74
  %586 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %584, i32 %585), !nosanitize !44
  %587 = extractvalue { i32, i1 } %586, 1, !nosanitize !44
  br i1 %587, label %588, label %589, !prof !45, !nosanitize !44

588:                                              ; preds = %583
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

589:                                              ; preds = %583
  %590 = extractvalue { i32, i1 } %586, 0, !nosanitize !44
  %591 = icmp ugt i32 %590, 2
  br i1 %591, label %592, label %655

592:                                              ; preds = %589
  %593 = load i32, ptr %90, align 4, !tbaa !71
  %594 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %593, i32 %585), !nosanitize !44
  %595 = extractvalue { i32, i1 } %594, 0, !nosanitize !44
  %596 = extractvalue { i32, i1 } %594, 1, !nosanitize !44
  br i1 %596, label %597, label %598, !prof !45, !nosanitize !44

597:                                              ; preds = %592
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

598:                                              ; preds = %592
  %599 = load ptr, ptr %92, align 8, !tbaa !34
  %600 = zext i32 %595 to i64
  %601 = getelementptr inbounds nuw i8, ptr %599, i64 %600
  %602 = load i8, ptr %601, align 1, !tbaa !5
  %603 = zext i8 %602 to i32
  store i32 %603, ptr %100, align 8, !tbaa !78
  %604 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %595, i32 1), !nosanitize !44
  %605 = extractvalue { i32, i1 } %604, 1, !nosanitize !44
  br i1 %605, label %606, label %607, !prof !45, !nosanitize !44

606:                                              ; preds = %598
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

607:                                              ; preds = %598
  %608 = extractvalue { i32, i1 } %604, 0, !nosanitize !44
  %609 = load i32, ptr %101, align 8, !tbaa !52
  %610 = shl i32 %603, %609
  %611 = zext i32 %608 to i64
  %612 = getelementptr inbounds nuw i8, ptr %599, i64 %611
  %613 = load i8, ptr %612, align 1, !tbaa !5
  %614 = zext i8 %613 to i32
  %615 = xor i32 %610, %614
  %616 = load i32, ptr %102, align 4, !tbaa !51
  %617 = and i32 %615, %616
  store i32 %617, ptr %100, align 8, !tbaa !78
  br label %618

618:                                              ; preds = %651, %607
  %619 = phi i32 [ %617, %607 ], [ %636, %651 ]
  %620 = phi i32 [ %585, %607 ], [ %647, %651 ]
  %621 = phi i32 [ %595, %607 ], [ %652, %651 ]
  %622 = icmp eq i32 %620, 0
  br i1 %622, label %655, label %623

623:                                              ; preds = %618
  %624 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %621, i32 3), !nosanitize !44
  %625 = extractvalue { i32, i1 } %624, 1, !nosanitize !44
  br i1 %625, label %626, label %627, !prof !45, !nosanitize !44

626:                                              ; preds = %623
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

627:                                              ; preds = %623
  %628 = shl i32 %619, %609
  %629 = extractvalue { i32, i1 } %624, 0, !nosanitize !44
  %630 = add i32 %629, -1
  %631 = zext i32 %630 to i64
  %632 = getelementptr inbounds nuw i8, ptr %599, i64 %631
  %633 = load i8, ptr %632, align 1, !tbaa !5
  %634 = zext i8 %633 to i32
  %635 = xor i32 %628, %634
  %636 = and i32 %635, %616
  store i32 %636, ptr %100, align 8, !tbaa !78
  %637 = load ptr, ptr %97, align 8, !tbaa !37
  %638 = zext i32 %636 to i64
  %639 = getelementptr inbounds nuw i16, ptr %637, i64 %638
  %640 = load i16, ptr %639, align 2, !tbaa !60
  %641 = load ptr, ptr %98, align 8, !tbaa !35
  %642 = load i32, ptr %103, align 8, !tbaa !32
  %643 = and i32 %642, %621
  %644 = zext i32 %643 to i64
  %645 = getelementptr inbounds nuw i16, ptr %641, i64 %644
  store i16 %640, ptr %645, align 2, !tbaa !60
  %646 = trunc i32 %621 to i16
  store i16 %646, ptr %639, align 2, !tbaa !60
  %647 = add i32 %620, -1
  store i32 %647, ptr %95, align 4, !tbaa !74
  %648 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %584, i32 %647), !nosanitize !44
  %649 = extractvalue { i32, i1 } %648, 1, !nosanitize !44
  br i1 %649, label %650, label %651, !prof !45, !nosanitize !44

650:                                              ; preds = %627
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

651:                                              ; preds = %627
  %652 = add nuw i32 %621, 1
  %653 = extractvalue { i32, i1 } %648, 0, !nosanitize !44
  %654 = icmp ult i32 %653, 3
  br i1 %654, label %655, label %618, !llvm.loop !85

655:                                              ; preds = %651, %618, %589
  %656 = icmp ult i32 %584, 262
  br i1 %656, label %657, label %662

657:                                              ; preds = %655
  %658 = load ptr, ptr %15, align 8, !tbaa !19
  %659 = getelementptr inbounds nuw i8, ptr %658, i64 8
  %660 = load i32, ptr %659, align 8, !tbaa !79
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %662, label %428, !llvm.loop !86

662:                                              ; preds = %657, %655, %531
  %663 = phi i32 [ %584, %657 ], [ %584, %655 ], [ %532, %531 ]
  %664 = load i64, ptr %341, align 8, !tbaa !38
  %665 = load i64, ptr %89, align 8, !tbaa !59
  %666 = icmp ult i64 %664, %665
  br i1 %666, label %667, label %706

667:                                              ; preds = %662
  %668 = load i32, ptr %90, align 4, !tbaa !71
  %669 = zext i32 %668 to i64
  %670 = zext i32 %663 to i64
  %671 = add nuw nsw i64 %670, %669
  %672 = icmp ult i64 %664, %671
  br i1 %672, label %673, label %683

673:                                              ; preds = %667
  %674 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %665, i64 %671), !nosanitize !44
  %675 = extractvalue { i64, i1 } %674, 1, !nosanitize !44
  br i1 %675, label %676, label %677, !prof !45, !nosanitize !44

676:                                              ; preds = %673
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

677:                                              ; preds = %673
  %678 = extractvalue { i64, i1 } %674, 0, !nosanitize !44
  %679 = tail call i64 @llvm.umin.i64(i64 %678, i64 258)
  %680 = load ptr, ptr %92, align 8, !tbaa !34
  %681 = getelementptr inbounds nuw i8, ptr %680, i64 %671
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %681, i8 0, i64 %679, i1 false)
  %682 = add nuw nsw i64 %679, %671
  br label %703

683:                                              ; preds = %667
  %684 = add nuw nsw i64 %671, 258
  %685 = icmp ult i64 %664, %684
  br i1 %685, label %686, label %706

686:                                              ; preds = %683
  %687 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %665, i64 %664), !nosanitize !44
  %688 = extractvalue { i64, i1 } %687, 1, !nosanitize !44
  br i1 %688, label %689, label %690, !prof !45, !nosanitize !44

689:                                              ; preds = %686
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

690:                                              ; preds = %686
  %691 = sub nuw nsw i64 %684, %664
  %692 = extractvalue { i64, i1 } %687, 0, !nosanitize !44
  %693 = tail call i64 @llvm.umin.i64(i64 %691, i64 %692)
  %694 = load ptr, ptr %92, align 8, !tbaa !34
  %695 = getelementptr inbounds nuw i8, ptr %694, i64 %664
  %696 = and i64 %693, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %695, i8 0, i64 %696, i1 false)
  %697 = load i64, ptr %341, align 8, !tbaa !38
  %698 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %697, i64 %693), !nosanitize !44
  %699 = extractvalue { i64, i1 } %698, 1, !nosanitize !44
  br i1 %699, label %700, label %701, !prof !45, !nosanitize !44

700:                                              ; preds = %690
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

701:                                              ; preds = %690
  %702 = extractvalue { i64, i1 } %698, 0, !nosanitize !44
  br label %703

703:                                              ; preds = %701, %677
  %704 = phi i64 [ %682, %677 ], [ %702, %701 ]
  store i64 %704, ptr %341, align 8, !tbaa !38
  %705 = load i32, ptr %82, align 4, !tbaa !73
  br label %706

706:                                              ; preds = %703, %683, %662
  %707 = phi i32 [ %663, %662 ], [ %663, %683 ], [ %705, %703 ]
  %708 = icmp ugt i32 %707, 2
  br i1 %708, label %387, label %709, !llvm.loop !88

709:                                              ; preds = %706, %384
  %710 = phi i32 [ %385, %384 ], [ %707, %706 ]
  %711 = load i32, ptr %90, align 4, !tbaa !71
  %712 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %711, i32 %710), !nosanitize !44
  %713 = extractvalue { i32, i1 } %712, 1, !nosanitize !44
  br i1 %713, label %714, label %715, !prof !45, !nosanitize !44

714:                                              ; preds = %709
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

715:                                              ; preds = %709
  %716 = extractvalue { i32, i1 } %712, 0, !nosanitize !44
  store i32 %716, ptr %90, align 4, !tbaa !71
  %717 = zext i32 %716 to i64
  store i64 %717, ptr %94, align 8, !tbaa !72
  store i32 %710, ptr %95, align 4, !tbaa !74
  store i32 0, ptr %82, align 4, !tbaa !73
  %718 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %718, align 8, !tbaa !75
  %719 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %719, align 8, !tbaa !76
  %720 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %720, align 8, !tbaa !77
  store ptr %88, ptr %0, align 8, !tbaa !80
  store i32 %87, ptr %86, align 8, !tbaa !79
  store i32 %27, ptr %26, align 8, !tbaa !29
  br label %721

721:                                              ; preds = %715, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
  %722 = phi i32 [ 0, %715 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %722
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

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
  tail call void @llvm.ubsantrap(i8 13) #10, !nosanitize !44
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
  %43 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %46

44:                                               ; preds = %38
  %45 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %47, ptr %48, align 8, !tbaa !57
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !58
  tail call void @_tr_init(ptr noundef nonnull %13) #8
  br label %50

50:                                               ; preds = %46, %18, %15, %11, %7, %3, %1
  %51 = phi i32 [ 0, %46 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %51
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetHeader(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #6 {
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
  store ptr %1, ptr %27, align 8, !tbaa !89
  br label %28

28:                                               ; preds = %26, %22, %19, %16, %12, %8, %4, %2
  %29 = phi i32 [ 0, %26 ], [ -2, %22 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
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
  %27 = load i32, ptr %26, align 4, !tbaa !90
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
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
  %26 = load i32, ptr %25, align 8, !tbaa !91
  store i32 %26, ptr %1, align 4, !tbaa !33
  br label %27

27:                                               ; preds = %24, %22, %19, %16, %12, %8, %4, %2
  %28 = phi i32 [ 0, %24 ], [ 0, %22 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
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
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %66, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %66

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
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
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 2
  %31 = icmp ult ptr %27, %30
  br i1 %31, label %66, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 5940
  %34 = getelementptr inbounds nuw i8, ptr %15, i64 5936
  br label %35

35:                                               ; preds = %62, %32
  %36 = phi i32 [ %63, %62 ], [ %1, %32 ]
  %37 = phi i32 [ %64, %62 ], [ %2, %32 ]
  %38 = load i32, ptr %33, align 4, !tbaa !90
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %38), !nosanitize !44
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !44
  br i1 %40, label %41, label %42, !prof !45, !nosanitize !44

41:                                               ; preds = %58, %42, %35
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !44
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
  %52 = load i16, ptr %34, align 8, !tbaa !92
  %53 = trunc i32 %51 to i16
  %54 = or i16 %52, %53
  store i16 %54, ptr %34, align 8, !tbaa !92
  %55 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 %44), !nosanitize !44
  %56 = extractvalue { i32, i1 } %55, 1, !nosanitize !44
  br i1 %56, label %57, label %58, !prof !45, !nosanitize !44

57:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !44
  unreachable, !nosanitize !44

58:                                               ; preds = %48
  %59 = extractvalue { i32, i1 } %55, 0, !nosanitize !44
  store i32 %59, ptr %33, align 4, !tbaa !90
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #8
  %60 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %36, i32 %44), !nosanitize !44
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !44
  br i1 false, label %41, label %62, !prof !45, !nosanitize !44

62:                                               ; preds = %58
  %63 = extractvalue { i32, i1 } %60, 0, !nosanitize !44
  %64 = ashr i32 %37, %44
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %66, label %35, !llvm.loop !93

66:                                               ; preds = %62, %25, %23, %20, %17, %13, %9, %5, %3
  %67 = phi i32 [ -5, %25 ], [ -5, %23 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ], [ 0, %62 ]
  ret i32 %67
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1102, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1102, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1102, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1102, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1102

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %1102 [
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
  br i1 %28, label %1102, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 196
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 200
  %32 = load i32, ptr %31, align 8, !tbaa !48
  %33 = icmp eq i32 %2, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4, !tbaa !47
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %36, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !94
  %39 = zext nneg i32 %25 to i64
  %40 = getelementptr inbounds nuw [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %39, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !94
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %1059, label %43

43:                                               ; preds = %34, %29
  %44 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %45 = load i32, ptr %44, align 4, !tbaa !58
  %46 = icmp eq i32 %45, -2
  br i1 %46, label %1059, label %47

47:                                               ; preds = %43
  switch i32 %22, label %1102 [
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
  %50 = load ptr, ptr %49, align 8, !tbaa !95
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
  br label %1102

66:                                               ; preds = %61, %56
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %68 = load i32, ptr %67, align 8, !tbaa !96
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %71, ptr %72, align 8, !tbaa !8
  br label %1036

73:                                               ; preds = %66
  store i32 5, ptr %44, align 4, !tbaa !58
  %74 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %75 = load i64, ptr %74, align 8, !tbaa !55
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %122, label %77

77:                                               ; preds = %73
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #8
  %78 = load i64, ptr %74, align 8, !tbaa !55
  %79 = load i32, ptr %67, align 8, !tbaa !96
  %80 = zext i32 %79 to i64
  %81 = tail call i64 @llvm.umin.i64(i64 %78, i64 %80)
  %82 = trunc nuw i64 %81 to i32
  %83 = icmp eq i64 %81, 0
  br i1 %83, label %115, label %84

84:                                               ; preds = %77
  %85 = load ptr, ptr %49, align 8, !tbaa !95
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %87 = load ptr, ptr %86, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %85, ptr align 1 %87, i64 %81, i1 false)
  %88 = load ptr, ptr %49, align 8, !tbaa !95
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 %81
  store ptr %89, ptr %49, align 8, !tbaa !95
  %90 = load ptr, ptr %86, align 8, !tbaa !56
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 %81
  store ptr %91, ptr %86, align 8, !tbaa !56
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %93 = load i64, ptr %92, align 8, !tbaa !97
  %94 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %93, i64 %81), !nosanitize !44
  %95 = extractvalue { i64, i1 } %94, 1, !nosanitize !44
  br i1 %95, label %96, label %97, !prof !45, !nosanitize !44

96:                                               ; preds = %84
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

97:                                               ; preds = %84
  %98 = extractvalue { i64, i1 } %94, 0, !nosanitize !44
  store i64 %98, ptr %92, align 8, !tbaa !97
  %99 = load i32, ptr %67, align 8, !tbaa !96
  %100 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %99, i32 %82), !nosanitize !44
  %101 = extractvalue { i32, i1 } %100, 1, !nosanitize !44
  br i1 %101, label %102, label %103, !prof !45, !nosanitize !44

102:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

103:                                              ; preds = %97
  %104 = extractvalue { i32, i1 } %100, 0, !nosanitize !44
  store i32 %104, ptr %67, align 8, !tbaa !96
  %105 = load i64, ptr %74, align 8, !tbaa !55
  %106 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %105, i64 %81), !nosanitize !44
  %107 = extractvalue { i64, i1 } %106, 1, !nosanitize !44
  br i1 %107, label %108, label %109, !prof !45, !nosanitize !44

108:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  br label %1036

122:                                              ; preds = %73
  br i1 %55, label %124, label %140

123:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !44
  unreachable, !nosanitize !44

124:                                              ; preds = %122
  %125 = add i32 %45, 1073741824
  %126 = icmp sgt i32 %125, -1
  br i1 %126, label %128, label %123, !prof !98, !nosanitize !44

127:                                              ; preds = %128
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !44
  unreachable, !nosanitize !44

128:                                              ; preds = %124
  %129 = shl nsw i32 %45, 1
  %130 = icmp sgt i32 %45, 4
  %131 = select i1 %130, i32 9, i32 0
  %132 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %129, i32 %131), !nosanitize !44
  %133 = extractvalue { i32, i1 } %132, 1, !nosanitize !44
  br i1 false, label %127, label %134, !prof !45, !nosanitize !44

134:                                              ; preds = %128
  %135 = extractvalue { i32, i1 } %132, 0, !nosanitize !44
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %138, ptr %139, align 8, !tbaa !8
  br label %1036

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
  br i1 %145, label %995, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %147, ptr %148, align 8, !tbaa !8
  br label %1036

149:                                              ; preds = %140
  %150 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %151 = load i32, ptr %150, align 8, !tbaa !29
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 113, ptr %21, align 8, !tbaa !28
  br label %992

154:                                              ; preds = %149
  %155 = getelementptr inbounds nuw i8, ptr %15, i64 84
  %156 = load i32, ptr %155, align 4, !tbaa !30
  %157 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %156, i32 8), !nosanitize !44
  %158 = extractvalue { i32, i1 } %157, 1, !nosanitize !44
  br i1 %158, label %159, label %160, !prof !45, !nosanitize !44

159:                                              ; preds = %154
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

244:                                              ; preds = %234
  %245 = extractvalue { i64, i1 } %241, 0, !nosanitize !44
  %246 = load ptr, ptr %188, align 8, !tbaa !40
  store i64 %245, ptr %74, align 8, !tbaa !55
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 %240
  store i8 %229, ptr %247, align 1, !tbaa !5
  br label %248

248:                                              ; preds = %244, %197
  %249 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
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
  br label %1036

256:                                              ; preds = %253, %140
  %257 = phi i32 [ %254, %253 ], [ %142, %140 ]
  %258 = icmp eq i32 %257, 57
  br i1 %258, label %259, label %514

259:                                              ; preds = %256
  %260 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %260, ptr %261, align 8, !tbaa !57
  %262 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %263 = load i64, ptr %74, align 8, !tbaa !55
  %264 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %263, i64 1), !nosanitize !44
  %265 = extractvalue { i64, i1 } %264, 1, !nosanitize !44
  br i1 %265, label %266, label %267, !prof !45, !nosanitize !44

266:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

283:                                              ; preds = %275
  %284 = extractvalue { i64, i1 } %280, 0, !nosanitize !44
  %285 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %284, ptr %74, align 8, !tbaa !55
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 %279
  store i8 8, ptr %286, align 1, !tbaa !5
  %287 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %288 = load ptr, ptr %287, align 8, !tbaa !89
  %289 = icmp eq ptr %288, null
  %290 = load i64, ptr %74, align 8, !tbaa !55
  %291 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %290, i64 1), !nosanitize !44
  %292 = extractvalue { i64, i1 } %291, 1, !nosanitize !44
  br i1 %289, label %293, label %360

293:                                              ; preds = %283
  br i1 %292, label %294, label %295, !prof !45, !nosanitize !44

294:                                              ; preds = %293
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  br label %1036

360:                                              ; preds = %283
  br i1 %292, label %361, label %362, !prof !45, !nosanitize !44

361:                                              ; preds = %360
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

362:                                              ; preds = %360
  %363 = extractvalue { i64, i1 } %291, 0, !nosanitize !44
  %364 = load ptr, ptr %262, align 8, !tbaa !40
  %365 = getelementptr inbounds nuw i8, ptr %288, i64 56
  %366 = load ptr, ptr %365, align 8, !tbaa !99
  %367 = icmp eq ptr %366, null
  %368 = getelementptr inbounds nuw i8, ptr %288, i64 40
  %369 = load ptr, ptr %368, align 8, !tbaa !101
  %370 = icmp eq ptr %369, null
  %371 = getelementptr inbounds nuw i8, ptr %288, i64 24
  %372 = load ptr, ptr %371, align 8, !tbaa !102
  %373 = icmp eq ptr %372, null
  %374 = load i32, ptr %288, align 8, !tbaa !103
  %375 = icmp ne i32 %374, 0
  %376 = getelementptr inbounds nuw i8, ptr %288, i64 68
  %377 = load i32, ptr %376, align 4, !tbaa !104
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

393:                                              ; preds = %362
  %394 = extractvalue { i64, i1 } %390, 0, !nosanitize !44
  %395 = load ptr, ptr %262, align 8, !tbaa !40
  %396 = load ptr, ptr %287, align 8, !tbaa !89
  %397 = getelementptr inbounds nuw i8, ptr %396, i64 8
  %398 = load i64, ptr %397, align 8, !tbaa !105
  %399 = trunc i64 %398 to i8
  store i64 %394, ptr %74, align 8, !tbaa !55
  %400 = getelementptr inbounds nuw i8, ptr %395, i64 %389
  store i8 %399, ptr %400, align 1, !tbaa !5
  %401 = load i64, ptr %74, align 8, !tbaa !55
  %402 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %401, i64 1), !nosanitize !44
  %403 = extractvalue { i64, i1 } %402, 1, !nosanitize !44
  br i1 %403, label %404, label %405, !prof !45, !nosanitize !44

404:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

405:                                              ; preds = %393
  %406 = extractvalue { i64, i1 } %402, 0, !nosanitize !44
  %407 = load ptr, ptr %262, align 8, !tbaa !40
  %408 = load ptr, ptr %287, align 8, !tbaa !89
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 8
  %410 = load i64, ptr %409, align 8, !tbaa !105
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

418:                                              ; preds = %405
  %419 = extractvalue { i64, i1 } %415, 0, !nosanitize !44
  %420 = load ptr, ptr %262, align 8, !tbaa !40
  %421 = load ptr, ptr %287, align 8, !tbaa !89
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 8
  %423 = load i64, ptr %422, align 8, !tbaa !105
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

431:                                              ; preds = %418
  %432 = extractvalue { i64, i1 } %428, 0, !nosanitize !44
  %433 = load ptr, ptr %262, align 8, !tbaa !40
  %434 = load ptr, ptr %287, align 8, !tbaa !89
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 8
  %436 = load i64, ptr %435, align 8, !tbaa !105
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

462:                                              ; preds = %454
  %463 = extractvalue { i64, i1 } %459, 0, !nosanitize !44
  %464 = load ptr, ptr %262, align 8, !tbaa !40
  %465 = load ptr, ptr %287, align 8, !tbaa !89
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 20
  %467 = load i32, ptr %466, align 4, !tbaa !106
  %468 = trunc i32 %467 to i8
  store i64 %463, ptr %74, align 8, !tbaa !55
  %469 = getelementptr inbounds nuw i8, ptr %464, i64 %458
  store i8 %468, ptr %469, align 1, !tbaa !5
  %470 = load ptr, ptr %287, align 8, !tbaa !89
  %471 = getelementptr inbounds nuw i8, ptr %470, i64 24
  %472 = load ptr, ptr %471, align 8, !tbaa !102
  %473 = icmp eq ptr %472, null
  br i1 %473, label %500, label %474

474:                                              ; preds = %462
  %475 = load i64, ptr %74, align 8, !tbaa !55
  %476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %475, i64 1), !nosanitize !44
  %477 = extractvalue { i64, i1 } %476, 1, !nosanitize !44
  br i1 %477, label %478, label %479, !prof !45, !nosanitize !44

478:                                              ; preds = %474
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

479:                                              ; preds = %474
  %480 = extractvalue { i64, i1 } %476, 0, !nosanitize !44
  %481 = load ptr, ptr %262, align 8, !tbaa !40
  %482 = getelementptr inbounds nuw i8, ptr %470, i64 32
  %483 = load i32, ptr %482, align 8, !tbaa !107
  %484 = trunc i32 %483 to i8
  store i64 %480, ptr %74, align 8, !tbaa !55
  %485 = getelementptr inbounds nuw i8, ptr %481, i64 %475
  store i8 %484, ptr %485, align 1, !tbaa !5
  %486 = load i64, ptr %74, align 8, !tbaa !55
  %487 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %486, i64 1), !nosanitize !44
  %488 = extractvalue { i64, i1 } %487, 1, !nosanitize !44
  br i1 %488, label %489, label %490, !prof !45, !nosanitize !44

489:                                              ; preds = %479
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

490:                                              ; preds = %479
  %491 = extractvalue { i64, i1 } %487, 0, !nosanitize !44
  %492 = load ptr, ptr %262, align 8, !tbaa !40
  %493 = load ptr, ptr %287, align 8, !tbaa !89
  %494 = getelementptr inbounds nuw i8, ptr %493, i64 32
  %495 = load i32, ptr %494, align 8, !tbaa !107
  %496 = lshr i32 %495, 8
  %497 = trunc i32 %496 to i8
  store i64 %491, ptr %74, align 8, !tbaa !55
  %498 = getelementptr inbounds nuw i8, ptr %492, i64 %486
  store i8 %497, ptr %498, align 1, !tbaa !5
  %499 = load ptr, ptr %287, align 8, !tbaa !89
  br label %500

500:                                              ; preds = %490, %462
  %501 = phi ptr [ %499, %490 ], [ %470, %462 ]
  %502 = getelementptr inbounds nuw i8, ptr %501, i64 68
  %503 = load i32, ptr %502, align 4, !tbaa !104
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %510, label %505

505:                                              ; preds = %500
  %506 = load i64, ptr %261, align 8, !tbaa !57
  %507 = load ptr, ptr %262, align 8, !tbaa !40
  %508 = load i64, ptr %74, align 8, !tbaa !55
  %509 = tail call i64 @crc32_z(i64 noundef %506, ptr noundef %507, i64 noundef %508) #8
  store i64 %509, ptr %261, align 8, !tbaa !57
  br label %510

510:                                              ; preds = %505, %500
  %511 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 0, ptr %511, align 8, !tbaa !108
  store i32 69, ptr %21, align 8, !tbaa !28
  br label %516

512:                                              ; preds = %353
  %513 = load i32, ptr %21, align 8, !tbaa !28
  br label %514

514:                                              ; preds = %512, %256
  %515 = phi i32 [ %513, %512 ], [ %257, %256 ]
  switch i32 %515, label %992 [
    i32 69, label %516
    i32 73, label %724
    i32 91, label %836
    i32 103, label %947
  ]

516:                                              ; preds = %514, %510
  %517 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %518 = load ptr, ptr %517, align 8, !tbaa !89
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 24
  %520 = load ptr, ptr %519, align 8, !tbaa !102
  %521 = icmp eq ptr %520, null
  br i1 %521, label %723, label %522

522:                                              ; preds = %516
  %523 = getelementptr inbounds nuw i8, ptr %518, i64 32
  %524 = load i32, ptr %523, align 8, !tbaa !107
  %525 = and i32 %524, 65535
  %526 = zext nneg i32 %525 to i64
  %527 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %528 = load i64, ptr %527, align 8, !tbaa !108
  %529 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %526, i64 %528), !nosanitize !44
  %530 = extractvalue { i64, i1 } %529, 1, !nosanitize !44
  br i1 %530, label %531, label %532, !prof !45, !nosanitize !44

531:                                              ; preds = %522
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  br i1 %544, label %545, label %696

545:                                              ; preds = %541
  %546 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %543, i64 %533), !nosanitize !44
  %547 = extractvalue { i64, i1 } %546, 0, !nosanitize !44
  %548 = extractvalue { i64, i1 } %546, 1, !nosanitize !44
  br i1 %548, label %619, label %549, !prof !45, !nosanitize !44

549:                                              ; preds = %545
  %550 = load ptr, ptr %535, align 8, !tbaa !40
  %551 = getelementptr inbounds nuw i8, ptr %550, i64 %533
  %552 = getelementptr inbounds nuw i8, ptr %520, i64 %528
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %551, ptr nonnull align 1 %552, i64 %547, i1 false)
  %553 = load i64, ptr %534, align 8, !tbaa !41
  store i64 %553, ptr %74, align 8, !tbaa !55
  %554 = load ptr, ptr %517, align 8, !tbaa !89
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 68
  %556 = load i32, ptr %555, align 4, !tbaa !104
  %557 = icmp ne i32 %556, 0
  %558 = icmp ugt i64 %553, %533
  %559 = select i1 %557, i1 %558, i1 false
  br i1 %559, label %560, label %566

560:                                              ; preds = %549
  %561 = sub nuw i64 %553, %533
  %562 = load ptr, ptr %535, align 8, !tbaa !40
  %563 = getelementptr inbounds nuw i8, ptr %562, i64 %533
  %564 = load i64, ptr %536, align 8, !tbaa !57
  %565 = tail call i64 @crc32_z(i64 noundef %564, ptr noundef %563, i64 noundef %561) #8
  store i64 %565, ptr %536, align 8, !tbaa !57
  br label %566

566:                                              ; preds = %560, %549
  %567 = load i64, ptr %527, align 8, !tbaa !108
  %568 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %567, i64 %547), !nosanitize !44
  %569 = extractvalue { i64, i1 } %568, 1, !nosanitize !44
  br i1 %569, label %642, label %570, !prof !45, !nosanitize !44

570:                                              ; preds = %566
  %571 = extractvalue { i64, i1 } %568, 0, !nosanitize !44
  store i64 %571, ptr %527, align 8, !tbaa !108
  %572 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %572) #8
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 40
  %574 = load i64, ptr %573, align 8, !tbaa !55
  %575 = load i32, ptr %67, align 8, !tbaa !96
  %576 = zext i32 %575 to i64
  %577 = tail call i64 @llvm.umin.i64(i64 %574, i64 %576)
  %578 = trunc nuw i64 %577 to i32
  %579 = icmp eq i64 %577, 0
  br i1 %579, label %607, label %580

580:                                              ; preds = %570
  %581 = load ptr, ptr %49, align 8, !tbaa !95
  %582 = getelementptr inbounds nuw i8, ptr %572, i64 32
  %583 = load ptr, ptr %582, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %581, ptr align 1 %583, i64 %577, i1 false)
  %584 = load ptr, ptr %49, align 8, !tbaa !95
  %585 = getelementptr inbounds nuw i8, ptr %584, i64 %577
  store ptr %585, ptr %49, align 8, !tbaa !95
  %586 = load ptr, ptr %582, align 8, !tbaa !56
  %587 = getelementptr inbounds nuw i8, ptr %586, i64 %577
  store ptr %587, ptr %582, align 8, !tbaa !56
  %588 = load i64, ptr %537, align 8, !tbaa !97
  %589 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %588, i64 %577), !nosanitize !44
  %590 = extractvalue { i64, i1 } %589, 1, !nosanitize !44
  br i1 %590, label %664, label %591, !prof !45, !nosanitize !44

591:                                              ; preds = %580
  %592 = extractvalue { i64, i1 } %589, 0, !nosanitize !44
  store i64 %592, ptr %537, align 8, !tbaa !97
  %593 = load i32, ptr %67, align 8, !tbaa !96
  %594 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %593, i32 %578), !nosanitize !44
  %595 = extractvalue { i32, i1 } %594, 1, !nosanitize !44
  br i1 %595, label %670, label %596, !prof !45, !nosanitize !44

596:                                              ; preds = %591
  %597 = extractvalue { i32, i1 } %594, 0, !nosanitize !44
  store i32 %597, ptr %67, align 8, !tbaa !96
  %598 = load i64, ptr %573, align 8, !tbaa !55
  %599 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %598, i64 %577), !nosanitize !44
  %600 = extractvalue { i64, i1 } %599, 1, !nosanitize !44
  br i1 %600, label %676, label %601, !prof !45, !nosanitize !44

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
  br i1 %609, label %610, label %686

610:                                              ; preds = %607
  %611 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %538, i64 %547), !nosanitize !44
  %612 = extractvalue { i64, i1 } %611, 1, !nosanitize !44
  br i1 %612, label %690, label %614, !prof !45, !nosanitize !44

613:                                              ; preds = %532
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

614:                                              ; preds = %687, %610
  %615 = phi { i64, i1 } [ %688, %687 ], [ %611, %610 ]
  %616 = extractvalue { i64, i1 } %615, 0
  %617 = load i64, ptr %534, align 8, !tbaa !41
  %618 = icmp ugt i64 %616, %617
  br i1 %618, label %620, label %691

619:                                              ; preds = %545
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

620:                                              ; preds = %614
  %621 = load ptr, ptr %535, align 8, !tbaa !40
  %622 = load ptr, ptr %517, align 8, !tbaa !89
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 24
  %624 = load ptr, ptr %623, align 8, !tbaa !102
  %625 = load i64, ptr %527, align 8, !tbaa !108
  %626 = getelementptr inbounds nuw i8, ptr %624, i64 %625
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %621, ptr align 1 %626, i64 %617, i1 false)
  %627 = load i64, ptr %534, align 8, !tbaa !41
  store i64 %627, ptr %74, align 8, !tbaa !55
  %628 = load ptr, ptr %517, align 8, !tbaa !89
  %629 = getelementptr inbounds nuw i8, ptr %628, i64 68
  %630 = load i32, ptr %629, align 4, !tbaa !104
  %631 = icmp ne i32 %630, 0
  %632 = icmp ne i64 %627, 0
  %633 = select i1 %631, i1 %632, i1 false
  br i1 %633, label %634, label %638

634:                                              ; preds = %620
  %635 = load ptr, ptr %535, align 8, !tbaa !40
  %636 = load i64, ptr %536, align 8, !tbaa !57
  %637 = tail call i64 @crc32_z(i64 noundef %636, ptr noundef %635, i64 noundef %627) #8
  store i64 %637, ptr %536, align 8, !tbaa !57
  br label %638

638:                                              ; preds = %634, %620
  %639 = load i64, ptr %527, align 8, !tbaa !108
  %640 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %639, i64 %617), !nosanitize !44
  %641 = extractvalue { i64, i1 } %640, 1, !nosanitize !44
  br i1 %641, label %642, label %643, !prof !109, !nosanitize !44

642:                                              ; preds = %638, %566
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

643:                                              ; preds = %638
  %644 = extractvalue { i64, i1 } %640, 0, !nosanitize !44
  store i64 %644, ptr %527, align 8, !tbaa !108
  %645 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %645) #8
  %646 = getelementptr inbounds nuw i8, ptr %645, i64 40
  %647 = load i64, ptr %646, align 8, !tbaa !55
  %648 = load i32, ptr %67, align 8, !tbaa !96
  %649 = zext i32 %648 to i64
  %650 = tail call i64 @llvm.umin.i64(i64 %647, i64 %649)
  %651 = trunc nuw i64 %650 to i32
  %652 = icmp eq i64 %650, 0
  br i1 %652, label %683, label %653

653:                                              ; preds = %643
  %654 = load ptr, ptr %49, align 8, !tbaa !95
  %655 = getelementptr inbounds nuw i8, ptr %645, i64 32
  %656 = load ptr, ptr %655, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %654, ptr align 1 %656, i64 %650, i1 false)
  %657 = load ptr, ptr %49, align 8, !tbaa !95
  %658 = getelementptr inbounds nuw i8, ptr %657, i64 %650
  store ptr %658, ptr %49, align 8, !tbaa !95
  %659 = load ptr, ptr %655, align 8, !tbaa !56
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 %650
  store ptr %660, ptr %655, align 8, !tbaa !56
  %661 = load i64, ptr %537, align 8, !tbaa !97
  %662 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %661, i64 %650), !nosanitize !44
  %663 = extractvalue { i64, i1 } %662, 1, !nosanitize !44
  br i1 %663, label %664, label %665, !prof !109, !nosanitize !44

664:                                              ; preds = %653, %580
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

665:                                              ; preds = %653
  %666 = extractvalue { i64, i1 } %662, 0, !nosanitize !44
  store i64 %666, ptr %537, align 8, !tbaa !97
  %667 = load i32, ptr %67, align 8, !tbaa !96
  %668 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %667, i32 %651), !nosanitize !44
  %669 = extractvalue { i32, i1 } %668, 1, !nosanitize !44
  br i1 %669, label %670, label %671, !prof !109, !nosanitize !44

670:                                              ; preds = %665, %591
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

671:                                              ; preds = %665
  %672 = extractvalue { i32, i1 } %668, 0, !nosanitize !44
  store i32 %672, ptr %67, align 8, !tbaa !96
  %673 = load i64, ptr %646, align 8, !tbaa !55
  %674 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %673, i64 %650), !nosanitize !44
  %675 = extractvalue { i64, i1 } %674, 1, !nosanitize !44
  br i1 %675, label %676, label %677, !prof !109, !nosanitize !44

676:                                              ; preds = %671, %596
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

677:                                              ; preds = %671
  %678 = extractvalue { i64, i1 } %674, 0, !nosanitize !44
  store i64 %678, ptr %646, align 8, !tbaa !55
  %679 = icmp eq i64 %678, 0
  br i1 %679, label %680, label %683

680:                                              ; preds = %677
  %681 = getelementptr inbounds nuw i8, ptr %645, i64 16
  %682 = load ptr, ptr %681, align 8, !tbaa !40
  store ptr %682, ptr %655, align 8, !tbaa !56
  br label %683

683:                                              ; preds = %680, %677, %643
  %684 = load i64, ptr %74, align 8, !tbaa !55
  %685 = icmp eq i64 %684, 0
  br i1 %685, label %687, label %686

686:                                              ; preds = %683, %607
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

687:                                              ; preds = %683
  %688 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %616, i64 %617), !nosanitize !44
  %689 = extractvalue { i64, i1 } %688, 1, !nosanitize !44
  br i1 %689, label %690, label %614, !prof !109, !llvm.loop !110, !nosanitize !44

690:                                              ; preds = %687, %610
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

691:                                              ; preds = %614
  %692 = load ptr, ptr %517, align 8, !tbaa !89
  %693 = getelementptr inbounds nuw i8, ptr %692, i64 24
  %694 = load ptr, ptr %693, align 8, !tbaa !102
  %695 = load i64, ptr %527, align 8, !tbaa !108
  br label %696

696:                                              ; preds = %691, %541
  %697 = phi i64 [ %528, %541 ], [ %695, %691 ]
  %698 = phi ptr [ %520, %541 ], [ %694, %691 ]
  %699 = phi i64 [ %533, %541 ], [ 0, %691 ]
  %700 = phi i64 [ %538, %541 ], [ %616, %691 ]
  %701 = load ptr, ptr %535, align 8, !tbaa !40
  %702 = getelementptr inbounds nuw i8, ptr %701, i64 %699
  %703 = getelementptr inbounds nuw i8, ptr %698, i64 %697
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %702, ptr align 1 %703, i64 %700, i1 false)
  %704 = load i64, ptr %74, align 8, !tbaa !55
  %705 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %704, i64 %700), !nosanitize !44
  %706 = extractvalue { i64, i1 } %705, 0, !nosanitize !44
  %707 = extractvalue { i64, i1 } %705, 1, !nosanitize !44
  br i1 %707, label %708, label %709, !prof !45, !nosanitize !44

708:                                              ; preds = %696
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

709:                                              ; preds = %696
  store i64 %706, ptr %74, align 8, !tbaa !55
  %710 = load ptr, ptr %517, align 8, !tbaa !89
  %711 = getelementptr inbounds nuw i8, ptr %710, i64 68
  %712 = load i32, ptr %711, align 4, !tbaa !104
  %713 = icmp ne i32 %712, 0
  %714 = icmp ugt i64 %706, %699
  %715 = select i1 %713, i1 %714, i1 false
  br i1 %715, label %716, label %722

716:                                              ; preds = %709
  %717 = sub nuw i64 %706, %699
  %718 = load ptr, ptr %535, align 8, !tbaa !40
  %719 = getelementptr inbounds nuw i8, ptr %718, i64 %699
  %720 = load i64, ptr %536, align 8, !tbaa !57
  %721 = tail call i64 @crc32_z(i64 noundef %720, ptr noundef %719, i64 noundef %717) #8
  store i64 %721, ptr %536, align 8, !tbaa !57
  br label %722

722:                                              ; preds = %716, %709
  store i64 0, ptr %527, align 8, !tbaa !108
  br label %723

723:                                              ; preds = %722, %516
  store i32 73, ptr %21, align 8, !tbaa !28
  br label %724

724:                                              ; preds = %723, %514
  %725 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %726 = load ptr, ptr %725, align 8, !tbaa !89
  %727 = getelementptr inbounds nuw i8, ptr %726, i64 40
  %728 = load ptr, ptr %727, align 8, !tbaa !101
  %729 = icmp eq ptr %728, null
  br i1 %729, label %835, label %730

730:                                              ; preds = %724
  %731 = load i64, ptr %74, align 8, !tbaa !55
  %732 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %733 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %734 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %735 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %736 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %737

737:                                              ; preds = %813, %730
  %738 = phi i64 [ %731, %730 ], [ %800, %813 ]
  %739 = load i64, ptr %74, align 8, !tbaa !55
  %740 = load i64, ptr %732, align 8, !tbaa !41
  %741 = icmp eq i64 %739, %740
  br i1 %741, label %742, label %798

742:                                              ; preds = %737
  %743 = load ptr, ptr %725, align 8, !tbaa !89
  %744 = getelementptr inbounds nuw i8, ptr %743, i64 68
  %745 = load i32, ptr %744, align 4, !tbaa !104
  %746 = icmp ne i32 %745, 0
  %747 = icmp ugt i64 %739, %738
  %748 = select i1 %746, i1 %747, i1 false
  br i1 %748, label %749, label %755

749:                                              ; preds = %742
  %750 = sub nuw i64 %739, %738
  %751 = load ptr, ptr %733, align 8, !tbaa !40
  %752 = getelementptr inbounds nuw i8, ptr %751, i64 %738
  %753 = load i64, ptr %734, align 8, !tbaa !57
  %754 = tail call i64 @crc32_z(i64 noundef %753, ptr noundef %752, i64 noundef %750) #8
  store i64 %754, ptr %734, align 8, !tbaa !57
  br label %755

755:                                              ; preds = %749, %742
  %756 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %756) #8
  %757 = getelementptr inbounds nuw i8, ptr %756, i64 40
  %758 = load i64, ptr %757, align 8, !tbaa !55
  %759 = load i32, ptr %67, align 8, !tbaa !96
  %760 = zext i32 %759 to i64
  %761 = tail call i64 @llvm.umin.i64(i64 %758, i64 %760)
  %762 = trunc nuw i64 %761 to i32
  %763 = icmp eq i64 %761, 0
  br i1 %763, label %794, label %764

764:                                              ; preds = %755
  %765 = load ptr, ptr %49, align 8, !tbaa !95
  %766 = getelementptr inbounds nuw i8, ptr %756, i64 32
  %767 = load ptr, ptr %766, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %765, ptr align 1 %767, i64 %761, i1 false)
  %768 = load ptr, ptr %49, align 8, !tbaa !95
  %769 = getelementptr inbounds nuw i8, ptr %768, i64 %761
  store ptr %769, ptr %49, align 8, !tbaa !95
  %770 = load ptr, ptr %766, align 8, !tbaa !56
  %771 = getelementptr inbounds nuw i8, ptr %770, i64 %761
  store ptr %771, ptr %766, align 8, !tbaa !56
  %772 = load i64, ptr %735, align 8, !tbaa !97
  %773 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %772, i64 %761), !nosanitize !44
  %774 = extractvalue { i64, i1 } %773, 1, !nosanitize !44
  br i1 %774, label %775, label %776, !prof !45, !nosanitize !44

775:                                              ; preds = %764
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

776:                                              ; preds = %764
  %777 = extractvalue { i64, i1 } %773, 0, !nosanitize !44
  store i64 %777, ptr %735, align 8, !tbaa !97
  %778 = load i32, ptr %67, align 8, !tbaa !96
  %779 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %778, i32 %762), !nosanitize !44
  %780 = extractvalue { i32, i1 } %779, 1, !nosanitize !44
  br i1 %780, label %781, label %782, !prof !45, !nosanitize !44

781:                                              ; preds = %776
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

782:                                              ; preds = %776
  %783 = extractvalue { i32, i1 } %779, 0, !nosanitize !44
  store i32 %783, ptr %67, align 8, !tbaa !96
  %784 = load i64, ptr %757, align 8, !tbaa !55
  %785 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %784, i64 %761), !nosanitize !44
  %786 = extractvalue { i64, i1 } %785, 1, !nosanitize !44
  br i1 %786, label %787, label %788, !prof !45, !nosanitize !44

787:                                              ; preds = %782
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

788:                                              ; preds = %782
  %789 = extractvalue { i64, i1 } %785, 0, !nosanitize !44
  store i64 %789, ptr %757, align 8, !tbaa !55
  %790 = icmp eq i64 %789, 0
  br i1 %790, label %791, label %794

791:                                              ; preds = %788
  %792 = getelementptr inbounds nuw i8, ptr %756, i64 16
  %793 = load ptr, ptr %792, align 8, !tbaa !40
  store ptr %793, ptr %766, align 8, !tbaa !56
  br label %794

794:                                              ; preds = %791, %788, %755
  %795 = load i64, ptr %74, align 8, !tbaa !55
  %796 = icmp eq i64 %795, 0
  br i1 %796, label %798, label %797

797:                                              ; preds = %794
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

798:                                              ; preds = %794, %737
  %799 = phi i64 [ %739, %737 ], [ 0, %794 ]
  %800 = phi i64 [ %738, %737 ], [ 0, %794 ]
  %801 = load i64, ptr %736, align 8, !tbaa !108
  %802 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %801, i64 1), !nosanitize !44
  %803 = extractvalue { i64, i1 } %802, 1, !nosanitize !44
  br i1 %803, label %804, label %805, !prof !45, !nosanitize !44

804:                                              ; preds = %798
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

805:                                              ; preds = %798
  %806 = extractvalue { i64, i1 } %802, 0, !nosanitize !44
  %807 = load ptr, ptr %725, align 8, !tbaa !89
  %808 = getelementptr inbounds nuw i8, ptr %807, i64 40
  %809 = load ptr, ptr %808, align 8, !tbaa !101
  store i64 %806, ptr %736, align 8, !tbaa !108
  %810 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %799, i64 1), !nosanitize !44
  %811 = extractvalue { i64, i1 } %810, 1, !nosanitize !44
  br i1 %811, label %812, label %813, !prof !45, !nosanitize !44

812:                                              ; preds = %805
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

813:                                              ; preds = %805
  %814 = extractvalue { i64, i1 } %810, 0, !nosanitize !44
  %815 = load ptr, ptr %733, align 8, !tbaa !40
  %816 = getelementptr inbounds nuw i8, ptr %809, i64 %801
  %817 = load i8, ptr %816, align 1, !tbaa !5
  store i64 %814, ptr %74, align 8, !tbaa !55
  %818 = getelementptr inbounds nuw i8, ptr %815, i64 %799
  store i8 %817, ptr %818, align 1, !tbaa !5
  %819 = icmp eq i8 %817, 0
  br i1 %819, label %820, label %737, !llvm.loop !112

820:                                              ; preds = %813
  %821 = load ptr, ptr %725, align 8, !tbaa !89
  %822 = getelementptr inbounds nuw i8, ptr %821, i64 68
  %823 = load i32, ptr %822, align 4, !tbaa !104
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %834, label %825

825:                                              ; preds = %820
  %826 = load i64, ptr %74, align 8, !tbaa !55
  %827 = icmp ugt i64 %826, %800
  br i1 %827, label %828, label %834

828:                                              ; preds = %825
  %829 = sub nuw i64 %826, %800
  %830 = load ptr, ptr %733, align 8, !tbaa !40
  %831 = getelementptr inbounds nuw i8, ptr %830, i64 %800
  %832 = load i64, ptr %734, align 8, !tbaa !57
  %833 = tail call i64 @crc32_z(i64 noundef %832, ptr noundef %831, i64 noundef %829) #8
  store i64 %833, ptr %734, align 8, !tbaa !57
  br label %834

834:                                              ; preds = %828, %825, %820
  store i64 0, ptr %736, align 8, !tbaa !108
  br label %835

835:                                              ; preds = %834, %724
  store i32 91, ptr %21, align 8, !tbaa !28
  br label %836

836:                                              ; preds = %835, %514
  %837 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %838 = load ptr, ptr %837, align 8, !tbaa !89
  %839 = getelementptr inbounds nuw i8, ptr %838, i64 56
  %840 = load ptr, ptr %839, align 8, !tbaa !99
  %841 = icmp eq ptr %840, null
  br i1 %841, label %946, label %842

842:                                              ; preds = %836
  %843 = load i64, ptr %74, align 8, !tbaa !55
  %844 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %845 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %846 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %847 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %848 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %849

849:                                              ; preds = %925, %842
  %850 = phi i64 [ %843, %842 ], [ %912, %925 ]
  %851 = load i64, ptr %74, align 8, !tbaa !55
  %852 = load i64, ptr %844, align 8, !tbaa !41
  %853 = icmp eq i64 %851, %852
  br i1 %853, label %854, label %910

854:                                              ; preds = %849
  %855 = load ptr, ptr %837, align 8, !tbaa !89
  %856 = getelementptr inbounds nuw i8, ptr %855, i64 68
  %857 = load i32, ptr %856, align 4, !tbaa !104
  %858 = icmp ne i32 %857, 0
  %859 = icmp ugt i64 %851, %850
  %860 = select i1 %858, i1 %859, i1 false
  br i1 %860, label %861, label %867

861:                                              ; preds = %854
  %862 = sub nuw i64 %851, %850
  %863 = load ptr, ptr %845, align 8, !tbaa !40
  %864 = getelementptr inbounds nuw i8, ptr %863, i64 %850
  %865 = load i64, ptr %846, align 8, !tbaa !57
  %866 = tail call i64 @crc32_z(i64 noundef %865, ptr noundef %864, i64 noundef %862) #8
  store i64 %866, ptr %846, align 8, !tbaa !57
  br label %867

867:                                              ; preds = %861, %854
  %868 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %868) #8
  %869 = getelementptr inbounds nuw i8, ptr %868, i64 40
  %870 = load i64, ptr %869, align 8, !tbaa !55
  %871 = load i32, ptr %67, align 8, !tbaa !96
  %872 = zext i32 %871 to i64
  %873 = tail call i64 @llvm.umin.i64(i64 %870, i64 %872)
  %874 = trunc nuw i64 %873 to i32
  %875 = icmp eq i64 %873, 0
  br i1 %875, label %906, label %876

876:                                              ; preds = %867
  %877 = load ptr, ptr %49, align 8, !tbaa !95
  %878 = getelementptr inbounds nuw i8, ptr %868, i64 32
  %879 = load ptr, ptr %878, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %877, ptr align 1 %879, i64 %873, i1 false)
  %880 = load ptr, ptr %49, align 8, !tbaa !95
  %881 = getelementptr inbounds nuw i8, ptr %880, i64 %873
  store ptr %881, ptr %49, align 8, !tbaa !95
  %882 = load ptr, ptr %878, align 8, !tbaa !56
  %883 = getelementptr inbounds nuw i8, ptr %882, i64 %873
  store ptr %883, ptr %878, align 8, !tbaa !56
  %884 = load i64, ptr %847, align 8, !tbaa !97
  %885 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %884, i64 %873), !nosanitize !44
  %886 = extractvalue { i64, i1 } %885, 1, !nosanitize !44
  br i1 %886, label %887, label %888, !prof !45, !nosanitize !44

887:                                              ; preds = %876
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

888:                                              ; preds = %876
  %889 = extractvalue { i64, i1 } %885, 0, !nosanitize !44
  store i64 %889, ptr %847, align 8, !tbaa !97
  %890 = load i32, ptr %67, align 8, !tbaa !96
  %891 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %890, i32 %874), !nosanitize !44
  %892 = extractvalue { i32, i1 } %891, 1, !nosanitize !44
  br i1 %892, label %893, label %894, !prof !45, !nosanitize !44

893:                                              ; preds = %888
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

894:                                              ; preds = %888
  %895 = extractvalue { i32, i1 } %891, 0, !nosanitize !44
  store i32 %895, ptr %67, align 8, !tbaa !96
  %896 = load i64, ptr %869, align 8, !tbaa !55
  %897 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %896, i64 %873), !nosanitize !44
  %898 = extractvalue { i64, i1 } %897, 1, !nosanitize !44
  br i1 %898, label %899, label %900, !prof !45, !nosanitize !44

899:                                              ; preds = %894
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

900:                                              ; preds = %894
  %901 = extractvalue { i64, i1 } %897, 0, !nosanitize !44
  store i64 %901, ptr %869, align 8, !tbaa !55
  %902 = icmp eq i64 %901, 0
  br i1 %902, label %903, label %906

903:                                              ; preds = %900
  %904 = getelementptr inbounds nuw i8, ptr %868, i64 16
  %905 = load ptr, ptr %904, align 8, !tbaa !40
  store ptr %905, ptr %878, align 8, !tbaa !56
  br label %906

906:                                              ; preds = %903, %900, %867
  %907 = load i64, ptr %74, align 8, !tbaa !55
  %908 = icmp eq i64 %907, 0
  br i1 %908, label %910, label %909

909:                                              ; preds = %906
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

910:                                              ; preds = %906, %849
  %911 = phi i64 [ %851, %849 ], [ 0, %906 ]
  %912 = phi i64 [ %850, %849 ], [ 0, %906 ]
  %913 = load i64, ptr %848, align 8, !tbaa !108
  %914 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %913, i64 1), !nosanitize !44
  %915 = extractvalue { i64, i1 } %914, 1, !nosanitize !44
  br i1 %915, label %916, label %917, !prof !45, !nosanitize !44

916:                                              ; preds = %910
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

917:                                              ; preds = %910
  %918 = extractvalue { i64, i1 } %914, 0, !nosanitize !44
  %919 = load ptr, ptr %837, align 8, !tbaa !89
  %920 = getelementptr inbounds nuw i8, ptr %919, i64 56
  %921 = load ptr, ptr %920, align 8, !tbaa !99
  store i64 %918, ptr %848, align 8, !tbaa !108
  %922 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %911, i64 1), !nosanitize !44
  %923 = extractvalue { i64, i1 } %922, 1, !nosanitize !44
  br i1 %923, label %924, label %925, !prof !45, !nosanitize !44

924:                                              ; preds = %917
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

925:                                              ; preds = %917
  %926 = extractvalue { i64, i1 } %922, 0, !nosanitize !44
  %927 = load ptr, ptr %845, align 8, !tbaa !40
  %928 = getelementptr inbounds nuw i8, ptr %921, i64 %913
  %929 = load i8, ptr %928, align 1, !tbaa !5
  store i64 %926, ptr %74, align 8, !tbaa !55
  %930 = getelementptr inbounds nuw i8, ptr %927, i64 %911
  store i8 %929, ptr %930, align 1, !tbaa !5
  %931 = icmp eq i8 %929, 0
  br i1 %931, label %932, label %849, !llvm.loop !113

932:                                              ; preds = %925
  %933 = load ptr, ptr %837, align 8, !tbaa !89
  %934 = getelementptr inbounds nuw i8, ptr %933, i64 68
  %935 = load i32, ptr %934, align 4, !tbaa !104
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %946, label %937

937:                                              ; preds = %932
  %938 = load i64, ptr %74, align 8, !tbaa !55
  %939 = icmp ugt i64 %938, %912
  br i1 %939, label %940, label %946

940:                                              ; preds = %937
  %941 = sub nuw i64 %938, %912
  %942 = load ptr, ptr %845, align 8, !tbaa !40
  %943 = getelementptr inbounds nuw i8, ptr %942, i64 %912
  %944 = load i64, ptr %846, align 8, !tbaa !57
  %945 = tail call i64 @crc32_z(i64 noundef %944, ptr noundef %943, i64 noundef %941) #8
  store i64 %945, ptr %846, align 8, !tbaa !57
  br label %946

946:                                              ; preds = %940, %937, %932, %836
  store i32 103, ptr %21, align 8, !tbaa !28
  br label %947

947:                                              ; preds = %946, %514
  %948 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %949 = load ptr, ptr %948, align 8, !tbaa !89
  %950 = getelementptr inbounds nuw i8, ptr %949, i64 68
  %951 = load i32, ptr %950, align 4, !tbaa !104
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %988, label %953

953:                                              ; preds = %947
  %954 = load i64, ptr %74, align 8, !tbaa !55
  %955 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %954, i64 2), !nosanitize !44
  %956 = extractvalue { i64, i1 } %955, 1, !nosanitize !44
  br i1 %956, label %957, label %958, !prof !45, !nosanitize !44

957:                                              ; preds = %953
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

958:                                              ; preds = %953
  %959 = extractvalue { i64, i1 } %955, 0, !nosanitize !44
  %960 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %961 = load i64, ptr %960, align 8, !tbaa !41
  %962 = icmp ugt i64 %959, %961
  br i1 %962, label %963, label %967

963:                                              ; preds = %958
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %964 = load i64, ptr %74, align 8, !tbaa !55
  %965 = icmp eq i64 %964, 0
  br i1 %965, label %967, label %966

966:                                              ; preds = %963
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

967:                                              ; preds = %963, %958
  %968 = phi i64 [ 0, %963 ], [ %954, %958 ]
  %969 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %970 = add nuw i64 %968, 1
  %971 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %972 = load ptr, ptr %971, align 8, !tbaa !40
  %973 = load i64, ptr %969, align 8, !tbaa !57
  %974 = trunc i64 %973 to i8
  store i64 %970, ptr %74, align 8, !tbaa !55
  %975 = getelementptr inbounds nuw i8, ptr %972, i64 %968
  store i8 %974, ptr %975, align 1, !tbaa !5
  %976 = load i64, ptr %74, align 8, !tbaa !55
  %977 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %976, i64 1), !nosanitize !44
  %978 = extractvalue { i64, i1 } %977, 1, !nosanitize !44
  br i1 %978, label %979, label %980, !prof !45, !nosanitize !44

979:                                              ; preds = %967
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

980:                                              ; preds = %967
  %981 = extractvalue { i64, i1 } %977, 0, !nosanitize !44
  %982 = load ptr, ptr %971, align 8, !tbaa !40
  %983 = load i64, ptr %969, align 8, !tbaa !57
  %984 = lshr i64 %983, 8
  %985 = trunc i64 %984 to i8
  store i64 %981, ptr %74, align 8, !tbaa !55
  %986 = getelementptr inbounds nuw i8, ptr %982, i64 %976
  store i8 %985, ptr %986, align 1, !tbaa !5
  %987 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  store i64 %987, ptr %969, align 8, !tbaa !57
  br label %988

988:                                              ; preds = %980, %947
  store i32 113, ptr %21, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %989 = load i64, ptr %74, align 8, !tbaa !55
  %990 = icmp eq i64 %989, 0
  br i1 %990, label %992, label %991

991:                                              ; preds = %988
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

992:                                              ; preds = %988, %514, %153
  %993 = load i32, ptr %53, align 8, !tbaa !79
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %995, label %1002

995:                                              ; preds = %992, %143
  %996 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %997 = load i32, ptr %996, align 4, !tbaa !73
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %999, label %1002

999:                                              ; preds = %995
  %1000 = load i32, ptr %21, align 8, !tbaa !28
  %1001 = icmp eq i32 %1000, 666
  br i1 %1001, label %1036, label %1002

1002:                                             ; preds = %999, %995, %992
  %1003 = load i32, ptr %30, align 4, !tbaa !47
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1005, label %1007

1005:                                             ; preds = %1002
  %1006 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %1018

1007:                                             ; preds = %1002
  %1008 = load i32, ptr %31, align 8, !tbaa !48
  switch i32 %1008, label %1013 [
    i32 2, label %1009
    i32 3, label %1011
  ]

1009:                                             ; preds = %1007
  %1010 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %1018

1011:                                             ; preds = %1007
  %1012 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %1018

1013:                                             ; preds = %1007
  %1014 = sext i32 %1003 to i64
  %1015 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %1014, i32 4
  %1016 = load ptr, ptr %1015, align 8, !tbaa !94
  %1017 = tail call i32 %1016(ptr noundef nonnull %15, i32 noundef 5) #8
  br label %1018

1018:                                             ; preds = %1013, %1011, %1009, %1005
  %1019 = phi i32 [ %1006, %1005 ], [ %1010, %1009 ], [ %1012, %1011 ], [ %1017, %1013 ]
  %1020 = and i32 %1019, -2
  %1021 = icmp eq i32 %1020, 2
  br i1 %1021, label %1022, label %1023

1022:                                             ; preds = %1018
  store i32 666, ptr %21, align 8, !tbaa !28
  br label %1023

1023:                                             ; preds = %1022, %1018
  %1024 = and i32 %1019, -3
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1026, label %1030

1026:                                             ; preds = %1023
  %1027 = load i32, ptr %67, align 8, !tbaa !96
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1029, label %1036

1029:                                             ; preds = %1026
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

1030:                                             ; preds = %1023
  %1031 = icmp eq i32 %1019, 1
  br i1 %1031, label %1032, label %1036

1032:                                             ; preds = %1030
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1033 = load i32, ptr %67, align 8, !tbaa !96
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1035, label %1036

1035:                                             ; preds = %1032
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

1036:                                             ; preds = %1035, %1032, %1030, %1029, %1026, %999, %991, %966, %909, %797, %686, %359, %255, %146, %137, %121, %70
  %1037 = load i32, ptr %53, align 8, !tbaa !79
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1039, label %1102

1039:                                             ; preds = %1036
  %1040 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %1041 = load i32, ptr %1040, align 4, !tbaa !71
  %1042 = zext i32 %1041 to i64
  %1043 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %1044 = load i64, ptr %1043, align 8, !tbaa !72
  %1045 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1042, i64 %1044), !nosanitize !44
  %1046 = extractvalue { i64, i1 } %1045, 1, !nosanitize !44
  br i1 %1046, label %1047, label %1048, !prof !45, !nosanitize !44

1047:                                             ; preds = %1039
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !44
  unreachable, !nosanitize !44

1048:                                             ; preds = %1039
  %1049 = extractvalue { i64, i1 } %1045, 0, !nosanitize !44
  %1050 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %1051 = load i32, ptr %1050, align 4, !tbaa !73
  %1052 = zext i32 %1051 to i64
  %1053 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1049, i64 %1052), !nosanitize !44
  %1054 = extractvalue { i64, i1 } %1053, 1, !nosanitize !44
  br i1 %1054, label %1055, label %1056, !prof !45, !nosanitize !44

1055:                                             ; preds = %1048
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !44
  unreachable, !nosanitize !44

1056:                                             ; preds = %1048
  %1057 = extractvalue { i64, i1 } %1053, 0, !nosanitize !44
  %1058 = icmp eq i64 %1057, 0
  br i1 %1058, label %1059, label %1102

1059:                                             ; preds = %1056, %43, %34
  %1060 = load i32, ptr %30, align 4, !tbaa !47
  %1061 = icmp eq i32 %1060, %25
  br i1 %1061, label %1101, label %1062

1062:                                             ; preds = %1059
  %1063 = icmp eq i32 %1060, 0
  br i1 %1063, label %1064, label %1083

1064:                                             ; preds = %1062
  %1065 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %1066 = load i32, ptr %1065, align 8, !tbaa !114
  switch i32 %1066, label %1068 [
    i32 0, label %1083
    i32 1, label %1067
  ]

1067:                                             ; preds = %1064
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %1082

1068:                                             ; preds = %1064
  %1069 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %1070 = load i32, ptr %1069, align 4, !tbaa !36
  %1071 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1070, i32 1), !nosanitize !44
  %1072 = extractvalue { i32, i1 } %1071, 1, !nosanitize !44
  br i1 %1072, label %1073, label %1074, !prof !45, !nosanitize !44

1073:                                             ; preds = %1068
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1074:                                             ; preds = %1068
  %1075 = extractvalue { i32, i1 } %1071, 0, !nosanitize !44
  %1076 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %1077 = load ptr, ptr %1076, align 8, !tbaa !37
  %1078 = zext i32 %1075 to i64
  %1079 = getelementptr inbounds nuw i16, ptr %1077, i64 %1078
  store i16 0, ptr %1079, align 2, !tbaa !60
  %1080 = shl nuw nsw i64 %1078, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1077, i8 0, i64 %1080, i1 false)
  %1081 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %1081, align 8, !tbaa !61
  br label %1082

1082:                                             ; preds = %1074, %1067
  store i32 0, ptr %1065, align 8, !tbaa !114
  br label %1083

1083:                                             ; preds = %1082, %1064, %1062
  store i32 %25, ptr %30, align 4, !tbaa !47
  %1084 = zext nneg i32 %25 to i64
  %1085 = getelementptr inbounds nuw [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %1084
  %1086 = getelementptr inbounds nuw i8, ptr %1085, i64 2
  %1087 = load i16, ptr %1086, align 2, !tbaa !62
  %1088 = zext i16 %1087 to i32
  %1089 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %1088, ptr %1089, align 8, !tbaa !64
  %1090 = load i16, ptr %1085, align 16, !tbaa !65
  %1091 = zext i16 %1090 to i32
  %1092 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %1091, ptr %1092, align 4, !tbaa !66
  %1093 = getelementptr inbounds nuw i8, ptr %1085, i64 4
  %1094 = load i16, ptr %1093, align 4, !tbaa !67
  %1095 = zext i16 %1094 to i32
  %1096 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %1095, ptr %1096, align 8, !tbaa !68
  %1097 = getelementptr inbounds nuw i8, ptr %1085, i64 6
  %1098 = load i16, ptr %1097, align 2, !tbaa !69
  %1099 = zext i16 %1098 to i32
  %1100 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %1099, ptr %1100, align 4, !tbaa !70
  br label %1101

1101:                                             ; preds = %1083, %1059
  store i32 %2, ptr %31, align 8, !tbaa !48
  br label %1102

1102:                                             ; preds = %1101, %1056, %1036, %63, %47, %23, %20, %17, %13, %9, %5, %3
  %1103 = phi i32 [ 0, %1101 ], [ -5, %1056 ], [ -2, %23 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ], [ -2, %63 ], [ -2, %47 ], [ -5, %1036 ]
  ret i32 %1103
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1203, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1203, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1203, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1203, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1203

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
  switch i32 %21, label %1203 [
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
  br i1 %23, label %1203, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !95
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
  br label %1203

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !96
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !8
  br label %1203

49:                                               ; preds = %42
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 76
  %51 = load i32, ptr %50, align 4, !tbaa !58
  store i32 %1, ptr %50, align 4, !tbaa !58
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !55
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %100, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #8
  %56 = load i64, ptr %52, align 8, !tbaa !55
  %57 = load i32, ptr %43, align 8, !tbaa !96
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @llvm.umin.i64(i64 %56, i64 %58)
  %60 = trunc nuw i64 %59 to i32
  %61 = icmp eq i64 %59, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %25, align 8, !tbaa !95
  %64 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %65 = load ptr, ptr %64, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %65, i64 %59, i1 false)
  %66 = load ptr, ptr %25, align 8, !tbaa !95
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %59
  store ptr %67, ptr %25, align 8, !tbaa !95
  %68 = load ptr, ptr %64, align 8, !tbaa !56
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %59
  store ptr %69, ptr %64, align 8, !tbaa !56
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %71 = load i64, ptr %70, align 8, !tbaa !97
  %72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %71, i64 %59), !nosanitize !44
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !44
  br i1 %73, label %74, label %75, !prof !45, !nosanitize !44

74:                                               ; preds = %62
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

75:                                               ; preds = %62
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !44
  store i64 %76, ptr %70, align 8, !tbaa !97
  %77 = load i32, ptr %43, align 8, !tbaa !96
  %78 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %77, i32 %60), !nosanitize !44
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !44
  br i1 %79, label %80, label %81, !prof !45, !nosanitize !44

80:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

81:                                               ; preds = %75
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !44
  store i32 %82, ptr %43, align 8, !tbaa !96
  %83 = load i64, ptr %52, align 8, !tbaa !55
  %84 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 %59), !nosanitize !44
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !44
  br i1 %85, label %86, label %87, !prof !45, !nosanitize !44

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  br label %1203

100:                                              ; preds = %49
  br i1 %31, label %102, label %123

101:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !44
  unreachable, !nosanitize !44

102:                                              ; preds = %100
  %103 = shl nuw nsw i32 %1, 1
  %104 = icmp eq i32 %1, 5
  %105 = select i1 %104, i32 -9, i32 0
  %106 = add nsw i32 %105, %103
  %107 = add i32 %51, 1073741824
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %110, label %101, !prof !98, !nosanitize !44

109:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !44
  unreachable, !nosanitize !44

110:                                              ; preds = %102
  %111 = shl nsw i32 %51, 1
  %112 = icmp sgt i32 %51, 4
  %113 = select i1 %112, i32 9, i32 0
  %114 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %111, i32 %113), !nosanitize !44
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !44
  br i1 false, label %109, label %116, !prof !45, !nosanitize !44

116:                                              ; preds = %110
  %117 = extractvalue { i32, i1 } %114, 0, !nosanitize !44
  %118 = icmp sle i32 %106, %117
  %119 = and i1 %37, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %121, ptr %122, align 8, !tbaa !8
  br label %1203

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
  br i1 %128, label %984, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %130, ptr %131, align 8, !tbaa !8
  br label %1203

132:                                              ; preds = %123
  %133 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %134 = load i32, ptr %133, align 8, !tbaa !29
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 113, ptr %20, align 8, !tbaa !28
  br label %981

137:                                              ; preds = %132
  %138 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %139 = load i32, ptr %138, align 4, !tbaa !30
  %140 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 8), !nosanitize !44
  %141 = extractvalue { i32, i1 } %140, 1, !nosanitize !44
  br i1 %141, label %142, label %143, !prof !45, !nosanitize !44

142:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

229:                                              ; preds = %219
  %230 = extractvalue { i64, i1 } %226, 0, !nosanitize !44
  %231 = load ptr, ptr %173, align 8, !tbaa !40
  store i64 %230, ptr %52, align 8, !tbaa !55
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 %225
  store i8 %214, ptr %232, align 1, !tbaa !5
  br label %233

233:                                              ; preds = %229, %182
  %234 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
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
  br label %1203

241:                                              ; preds = %238, %123
  %242 = phi i32 [ %239, %238 ], [ %125, %123 ]
  %243 = icmp eq i32 %242, 57
  br i1 %243, label %244, label %503

244:                                              ; preds = %241
  %245 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %245, ptr %246, align 8, !tbaa !57
  %247 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %248 = load i64, ptr %52, align 8, !tbaa !55
  %249 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %248, i64 1), !nosanitize !44
  %250 = extractvalue { i64, i1 } %249, 1, !nosanitize !44
  br i1 %250, label %251, label %252, !prof !45, !nosanitize !44

251:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

268:                                              ; preds = %260
  %269 = extractvalue { i64, i1 } %265, 0, !nosanitize !44
  %270 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %269, ptr %52, align 8, !tbaa !55
  %271 = getelementptr inbounds nuw i8, ptr %270, i64 %264
  store i8 8, ptr %271, align 1, !tbaa !5
  %272 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %273 = load ptr, ptr %272, align 8, !tbaa !89
  %274 = icmp eq ptr %273, null
  %275 = load i64, ptr %52, align 8, !tbaa !55
  %276 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %275, i64 1), !nosanitize !44
  %277 = extractvalue { i64, i1 } %276, 1, !nosanitize !44
  br i1 %274, label %278, label %347

278:                                              ; preds = %268
  br i1 %277, label %279, label %280, !prof !45, !nosanitize !44

279:                                              ; preds = %278
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  br label %1203

347:                                              ; preds = %268
  br i1 %277, label %348, label %349, !prof !45, !nosanitize !44

348:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

349:                                              ; preds = %347
  %350 = extractvalue { i64, i1 } %276, 0, !nosanitize !44
  %351 = load ptr, ptr %247, align 8, !tbaa !40
  %352 = getelementptr inbounds nuw i8, ptr %273, i64 56
  %353 = load ptr, ptr %352, align 8, !tbaa !99
  %354 = icmp eq ptr %353, null
  %355 = getelementptr inbounds nuw i8, ptr %273, i64 40
  %356 = load ptr, ptr %355, align 8, !tbaa !101
  %357 = icmp eq ptr %356, null
  %358 = getelementptr inbounds nuw i8, ptr %273, i64 24
  %359 = load ptr, ptr %358, align 8, !tbaa !102
  %360 = icmp eq ptr %359, null
  %361 = load i32, ptr %273, align 8, !tbaa !103
  %362 = icmp ne i32 %361, 0
  %363 = getelementptr inbounds nuw i8, ptr %273, i64 68
  %364 = load i32, ptr %363, align 4, !tbaa !104
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

380:                                              ; preds = %349
  %381 = extractvalue { i64, i1 } %377, 0, !nosanitize !44
  %382 = load ptr, ptr %247, align 8, !tbaa !40
  %383 = load ptr, ptr %272, align 8, !tbaa !89
  %384 = getelementptr inbounds nuw i8, ptr %383, i64 8
  %385 = load i64, ptr %384, align 8, !tbaa !105
  %386 = trunc i64 %385 to i8
  store i64 %381, ptr %52, align 8, !tbaa !55
  %387 = getelementptr inbounds nuw i8, ptr %382, i64 %376
  store i8 %386, ptr %387, align 1, !tbaa !5
  %388 = load i64, ptr %52, align 8, !tbaa !55
  %389 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %388, i64 1), !nosanitize !44
  %390 = extractvalue { i64, i1 } %389, 1, !nosanitize !44
  br i1 %390, label %391, label %392, !prof !45, !nosanitize !44

391:                                              ; preds = %380
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

392:                                              ; preds = %380
  %393 = extractvalue { i64, i1 } %389, 0, !nosanitize !44
  %394 = load ptr, ptr %247, align 8, !tbaa !40
  %395 = load ptr, ptr %272, align 8, !tbaa !89
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 8
  %397 = load i64, ptr %396, align 8, !tbaa !105
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

405:                                              ; preds = %392
  %406 = extractvalue { i64, i1 } %402, 0, !nosanitize !44
  %407 = load ptr, ptr %247, align 8, !tbaa !40
  %408 = load ptr, ptr %272, align 8, !tbaa !89
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 8
  %410 = load i64, ptr %409, align 8, !tbaa !105
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

418:                                              ; preds = %405
  %419 = extractvalue { i64, i1 } %415, 0, !nosanitize !44
  %420 = load ptr, ptr %247, align 8, !tbaa !40
  %421 = load ptr, ptr %272, align 8, !tbaa !89
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 8
  %423 = load i64, ptr %422, align 8, !tbaa !105
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

451:                                              ; preds = %443
  %452 = extractvalue { i64, i1 } %448, 0, !nosanitize !44
  %453 = load ptr, ptr %247, align 8, !tbaa !40
  %454 = load ptr, ptr %272, align 8, !tbaa !89
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 20
  %456 = load i32, ptr %455, align 4, !tbaa !106
  %457 = trunc i32 %456 to i8
  store i64 %452, ptr %52, align 8, !tbaa !55
  %458 = getelementptr inbounds nuw i8, ptr %453, i64 %447
  store i8 %457, ptr %458, align 1, !tbaa !5
  %459 = load ptr, ptr %272, align 8, !tbaa !89
  %460 = getelementptr inbounds nuw i8, ptr %459, i64 24
  %461 = load ptr, ptr %460, align 8, !tbaa !102
  %462 = icmp eq ptr %461, null
  br i1 %462, label %489, label %463

463:                                              ; preds = %451
  %464 = load i64, ptr %52, align 8, !tbaa !55
  %465 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %464, i64 1), !nosanitize !44
  %466 = extractvalue { i64, i1 } %465, 1, !nosanitize !44
  br i1 %466, label %467, label %468, !prof !45, !nosanitize !44

467:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

468:                                              ; preds = %463
  %469 = extractvalue { i64, i1 } %465, 0, !nosanitize !44
  %470 = load ptr, ptr %247, align 8, !tbaa !40
  %471 = getelementptr inbounds nuw i8, ptr %459, i64 32
  %472 = load i32, ptr %471, align 8, !tbaa !107
  %473 = trunc i32 %472 to i8
  store i64 %469, ptr %52, align 8, !tbaa !55
  %474 = getelementptr inbounds nuw i8, ptr %470, i64 %464
  store i8 %473, ptr %474, align 1, !tbaa !5
  %475 = load i64, ptr %52, align 8, !tbaa !55
  %476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %475, i64 1), !nosanitize !44
  %477 = extractvalue { i64, i1 } %476, 1, !nosanitize !44
  br i1 %477, label %478, label %479, !prof !45, !nosanitize !44

478:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

479:                                              ; preds = %468
  %480 = extractvalue { i64, i1 } %476, 0, !nosanitize !44
  %481 = load ptr, ptr %247, align 8, !tbaa !40
  %482 = load ptr, ptr %272, align 8, !tbaa !89
  %483 = getelementptr inbounds nuw i8, ptr %482, i64 32
  %484 = load i32, ptr %483, align 8, !tbaa !107
  %485 = lshr i32 %484, 8
  %486 = trunc i32 %485 to i8
  store i64 %480, ptr %52, align 8, !tbaa !55
  %487 = getelementptr inbounds nuw i8, ptr %481, i64 %475
  store i8 %486, ptr %487, align 1, !tbaa !5
  %488 = load ptr, ptr %272, align 8, !tbaa !89
  br label %489

489:                                              ; preds = %479, %451
  %490 = phi ptr [ %488, %479 ], [ %459, %451 ]
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 68
  %492 = load i32, ptr %491, align 4, !tbaa !104
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %499, label %494

494:                                              ; preds = %489
  %495 = load i64, ptr %246, align 8, !tbaa !57
  %496 = load ptr, ptr %247, align 8, !tbaa !40
  %497 = load i64, ptr %52, align 8, !tbaa !55
  %498 = tail call i64 @crc32_z(i64 noundef %495, ptr noundef %496, i64 noundef %497) #8
  store i64 %498, ptr %246, align 8, !tbaa !57
  br label %499

499:                                              ; preds = %494, %489
  %500 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %500, align 8, !tbaa !108
  store i32 69, ptr %20, align 8, !tbaa !28
  br label %505

501:                                              ; preds = %340
  %502 = load i32, ptr %20, align 8, !tbaa !28
  br label %503

503:                                              ; preds = %501, %241
  %504 = phi i32 [ %502, %501 ], [ %242, %241 ]
  switch i32 %504, label %981 [
    i32 69, label %505
    i32 73, label %713
    i32 91, label %825
    i32 103, label %936
  ]

505:                                              ; preds = %503, %499
  %506 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %507 = load ptr, ptr %506, align 8, !tbaa !89
  %508 = getelementptr inbounds nuw i8, ptr %507, i64 24
  %509 = load ptr, ptr %508, align 8, !tbaa !102
  %510 = icmp eq ptr %509, null
  br i1 %510, label %712, label %511

511:                                              ; preds = %505
  %512 = getelementptr inbounds nuw i8, ptr %507, i64 32
  %513 = load i32, ptr %512, align 8, !tbaa !107
  %514 = and i32 %513, 65535
  %515 = zext nneg i32 %514 to i64
  %516 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %517 = load i64, ptr %516, align 8, !tbaa !108
  %518 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %515, i64 %517), !nosanitize !44
  %519 = extractvalue { i64, i1 } %518, 1, !nosanitize !44
  br i1 %519, label %520, label %521, !prof !45, !nosanitize !44

520:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  br i1 %533, label %534, label %685

534:                                              ; preds = %530
  %535 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %532, i64 %522), !nosanitize !44
  %536 = extractvalue { i64, i1 } %535, 0, !nosanitize !44
  %537 = extractvalue { i64, i1 } %535, 1, !nosanitize !44
  br i1 %537, label %608, label %538, !prof !45, !nosanitize !44

538:                                              ; preds = %534
  %539 = load ptr, ptr %524, align 8, !tbaa !40
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 %522
  %541 = getelementptr inbounds nuw i8, ptr %509, i64 %517
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %540, ptr nonnull align 1 %541, i64 %536, i1 false)
  %542 = load i64, ptr %523, align 8, !tbaa !41
  store i64 %542, ptr %52, align 8, !tbaa !55
  %543 = load ptr, ptr %506, align 8, !tbaa !89
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 68
  %545 = load i32, ptr %544, align 4, !tbaa !104
  %546 = icmp ne i32 %545, 0
  %547 = icmp ugt i64 %542, %522
  %548 = select i1 %546, i1 %547, i1 false
  br i1 %548, label %549, label %555

549:                                              ; preds = %538
  %550 = sub nuw i64 %542, %522
  %551 = load ptr, ptr %524, align 8, !tbaa !40
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 %522
  %553 = load i64, ptr %525, align 8, !tbaa !57
  %554 = tail call i64 @crc32_z(i64 noundef %553, ptr noundef %552, i64 noundef %550) #8
  store i64 %554, ptr %525, align 8, !tbaa !57
  br label %555

555:                                              ; preds = %549, %538
  %556 = load i64, ptr %516, align 8, !tbaa !108
  %557 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %556, i64 %536), !nosanitize !44
  %558 = extractvalue { i64, i1 } %557, 1, !nosanitize !44
  br i1 %558, label %631, label %559, !prof !45, !nosanitize !44

559:                                              ; preds = %555
  %560 = extractvalue { i64, i1 } %557, 0, !nosanitize !44
  store i64 %560, ptr %516, align 8, !tbaa !108
  %561 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %561) #8
  %562 = getelementptr inbounds nuw i8, ptr %561, i64 40
  %563 = load i64, ptr %562, align 8, !tbaa !55
  %564 = load i32, ptr %43, align 8, !tbaa !96
  %565 = zext i32 %564 to i64
  %566 = tail call i64 @llvm.umin.i64(i64 %563, i64 %565)
  %567 = trunc nuw i64 %566 to i32
  %568 = icmp eq i64 %566, 0
  br i1 %568, label %596, label %569

569:                                              ; preds = %559
  %570 = load ptr, ptr %25, align 8, !tbaa !95
  %571 = getelementptr inbounds nuw i8, ptr %561, i64 32
  %572 = load ptr, ptr %571, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %570, ptr align 1 %572, i64 %566, i1 false)
  %573 = load ptr, ptr %25, align 8, !tbaa !95
  %574 = getelementptr inbounds nuw i8, ptr %573, i64 %566
  store ptr %574, ptr %25, align 8, !tbaa !95
  %575 = load ptr, ptr %571, align 8, !tbaa !56
  %576 = getelementptr inbounds nuw i8, ptr %575, i64 %566
  store ptr %576, ptr %571, align 8, !tbaa !56
  %577 = load i64, ptr %526, align 8, !tbaa !97
  %578 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %577, i64 %566), !nosanitize !44
  %579 = extractvalue { i64, i1 } %578, 1, !nosanitize !44
  br i1 %579, label %653, label %580, !prof !45, !nosanitize !44

580:                                              ; preds = %569
  %581 = extractvalue { i64, i1 } %578, 0, !nosanitize !44
  store i64 %581, ptr %526, align 8, !tbaa !97
  %582 = load i32, ptr %43, align 8, !tbaa !96
  %583 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %582, i32 %567), !nosanitize !44
  %584 = extractvalue { i32, i1 } %583, 1, !nosanitize !44
  br i1 %584, label %659, label %585, !prof !45, !nosanitize !44

585:                                              ; preds = %580
  %586 = extractvalue { i32, i1 } %583, 0, !nosanitize !44
  store i32 %586, ptr %43, align 8, !tbaa !96
  %587 = load i64, ptr %562, align 8, !tbaa !55
  %588 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %587, i64 %566), !nosanitize !44
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !44
  br i1 %589, label %665, label %590, !prof !45, !nosanitize !44

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
  br i1 %598, label %599, label %675

599:                                              ; preds = %596
  %600 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %527, i64 %536), !nosanitize !44
  %601 = extractvalue { i64, i1 } %600, 1, !nosanitize !44
  br i1 %601, label %679, label %603, !prof !45, !nosanitize !44

602:                                              ; preds = %521
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

603:                                              ; preds = %676, %599
  %604 = phi { i64, i1 } [ %677, %676 ], [ %600, %599 ]
  %605 = extractvalue { i64, i1 } %604, 0
  %606 = load i64, ptr %523, align 8, !tbaa !41
  %607 = icmp ugt i64 %605, %606
  br i1 %607, label %609, label %680

608:                                              ; preds = %534
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

609:                                              ; preds = %603
  %610 = load ptr, ptr %524, align 8, !tbaa !40
  %611 = load ptr, ptr %506, align 8, !tbaa !89
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 24
  %613 = load ptr, ptr %612, align 8, !tbaa !102
  %614 = load i64, ptr %516, align 8, !tbaa !108
  %615 = getelementptr inbounds nuw i8, ptr %613, i64 %614
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %610, ptr align 1 %615, i64 %606, i1 false)
  %616 = load i64, ptr %523, align 8, !tbaa !41
  store i64 %616, ptr %52, align 8, !tbaa !55
  %617 = load ptr, ptr %506, align 8, !tbaa !89
  %618 = getelementptr inbounds nuw i8, ptr %617, i64 68
  %619 = load i32, ptr %618, align 4, !tbaa !104
  %620 = icmp ne i32 %619, 0
  %621 = icmp ne i64 %616, 0
  %622 = select i1 %620, i1 %621, i1 false
  br i1 %622, label %623, label %627

623:                                              ; preds = %609
  %624 = load ptr, ptr %524, align 8, !tbaa !40
  %625 = load i64, ptr %525, align 8, !tbaa !57
  %626 = tail call i64 @crc32_z(i64 noundef %625, ptr noundef %624, i64 noundef %616) #8
  store i64 %626, ptr %525, align 8, !tbaa !57
  br label %627

627:                                              ; preds = %623, %609
  %628 = load i64, ptr %516, align 8, !tbaa !108
  %629 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %628, i64 %606), !nosanitize !44
  %630 = extractvalue { i64, i1 } %629, 1, !nosanitize !44
  br i1 %630, label %631, label %632, !prof !109, !nosanitize !44

631:                                              ; preds = %627, %555
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

632:                                              ; preds = %627
  %633 = extractvalue { i64, i1 } %629, 0, !nosanitize !44
  store i64 %633, ptr %516, align 8, !tbaa !108
  %634 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %634) #8
  %635 = getelementptr inbounds nuw i8, ptr %634, i64 40
  %636 = load i64, ptr %635, align 8, !tbaa !55
  %637 = load i32, ptr %43, align 8, !tbaa !96
  %638 = zext i32 %637 to i64
  %639 = tail call i64 @llvm.umin.i64(i64 %636, i64 %638)
  %640 = trunc nuw i64 %639 to i32
  %641 = icmp eq i64 %639, 0
  br i1 %641, label %672, label %642

642:                                              ; preds = %632
  %643 = load ptr, ptr %25, align 8, !tbaa !95
  %644 = getelementptr inbounds nuw i8, ptr %634, i64 32
  %645 = load ptr, ptr %644, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %643, ptr align 1 %645, i64 %639, i1 false)
  %646 = load ptr, ptr %25, align 8, !tbaa !95
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 %639
  store ptr %647, ptr %25, align 8, !tbaa !95
  %648 = load ptr, ptr %644, align 8, !tbaa !56
  %649 = getelementptr inbounds nuw i8, ptr %648, i64 %639
  store ptr %649, ptr %644, align 8, !tbaa !56
  %650 = load i64, ptr %526, align 8, !tbaa !97
  %651 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %650, i64 %639), !nosanitize !44
  %652 = extractvalue { i64, i1 } %651, 1, !nosanitize !44
  br i1 %652, label %653, label %654, !prof !109, !nosanitize !44

653:                                              ; preds = %642, %569
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

654:                                              ; preds = %642
  %655 = extractvalue { i64, i1 } %651, 0, !nosanitize !44
  store i64 %655, ptr %526, align 8, !tbaa !97
  %656 = load i32, ptr %43, align 8, !tbaa !96
  %657 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %656, i32 %640), !nosanitize !44
  %658 = extractvalue { i32, i1 } %657, 1, !nosanitize !44
  br i1 %658, label %659, label %660, !prof !109, !nosanitize !44

659:                                              ; preds = %654, %580
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

660:                                              ; preds = %654
  %661 = extractvalue { i32, i1 } %657, 0, !nosanitize !44
  store i32 %661, ptr %43, align 8, !tbaa !96
  %662 = load i64, ptr %635, align 8, !tbaa !55
  %663 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %662, i64 %639), !nosanitize !44
  %664 = extractvalue { i64, i1 } %663, 1, !nosanitize !44
  br i1 %664, label %665, label %666, !prof !109, !nosanitize !44

665:                                              ; preds = %660, %585
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

666:                                              ; preds = %660
  %667 = extractvalue { i64, i1 } %663, 0, !nosanitize !44
  store i64 %667, ptr %635, align 8, !tbaa !55
  %668 = icmp eq i64 %667, 0
  br i1 %668, label %669, label %672

669:                                              ; preds = %666
  %670 = getelementptr inbounds nuw i8, ptr %634, i64 16
  %671 = load ptr, ptr %670, align 8, !tbaa !40
  store ptr %671, ptr %644, align 8, !tbaa !56
  br label %672

672:                                              ; preds = %669, %666, %632
  %673 = load i64, ptr %52, align 8, !tbaa !55
  %674 = icmp eq i64 %673, 0
  br i1 %674, label %676, label %675

675:                                              ; preds = %672, %596
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

676:                                              ; preds = %672
  %677 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %605, i64 %606), !nosanitize !44
  %678 = extractvalue { i64, i1 } %677, 1, !nosanitize !44
  br i1 %678, label %679, label %603, !prof !109, !llvm.loop !110, !nosanitize !44

679:                                              ; preds = %676, %599
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

680:                                              ; preds = %603
  %681 = load ptr, ptr %506, align 8, !tbaa !89
  %682 = getelementptr inbounds nuw i8, ptr %681, i64 24
  %683 = load ptr, ptr %682, align 8, !tbaa !102
  %684 = load i64, ptr %516, align 8, !tbaa !108
  br label %685

685:                                              ; preds = %680, %530
  %686 = phi i64 [ %517, %530 ], [ %684, %680 ]
  %687 = phi ptr [ %509, %530 ], [ %683, %680 ]
  %688 = phi i64 [ %522, %530 ], [ 0, %680 ]
  %689 = phi i64 [ %527, %530 ], [ %605, %680 ]
  %690 = load ptr, ptr %524, align 8, !tbaa !40
  %691 = getelementptr inbounds nuw i8, ptr %690, i64 %688
  %692 = getelementptr inbounds nuw i8, ptr %687, i64 %686
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %691, ptr align 1 %692, i64 %689, i1 false)
  %693 = load i64, ptr %52, align 8, !tbaa !55
  %694 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %693, i64 %689), !nosanitize !44
  %695 = extractvalue { i64, i1 } %694, 0, !nosanitize !44
  %696 = extractvalue { i64, i1 } %694, 1, !nosanitize !44
  br i1 %696, label %697, label %698, !prof !45, !nosanitize !44

697:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

698:                                              ; preds = %685
  store i64 %695, ptr %52, align 8, !tbaa !55
  %699 = load ptr, ptr %506, align 8, !tbaa !89
  %700 = getelementptr inbounds nuw i8, ptr %699, i64 68
  %701 = load i32, ptr %700, align 4, !tbaa !104
  %702 = icmp ne i32 %701, 0
  %703 = icmp ugt i64 %695, %688
  %704 = select i1 %702, i1 %703, i1 false
  br i1 %704, label %705, label %711

705:                                              ; preds = %698
  %706 = sub nuw i64 %695, %688
  %707 = load ptr, ptr %524, align 8, !tbaa !40
  %708 = getelementptr inbounds nuw i8, ptr %707, i64 %688
  %709 = load i64, ptr %525, align 8, !tbaa !57
  %710 = tail call i64 @crc32_z(i64 noundef %709, ptr noundef %708, i64 noundef %706) #8
  store i64 %710, ptr %525, align 8, !tbaa !57
  br label %711

711:                                              ; preds = %705, %698
  store i64 0, ptr %516, align 8, !tbaa !108
  br label %712

712:                                              ; preds = %711, %505
  store i32 73, ptr %20, align 8, !tbaa !28
  br label %713

713:                                              ; preds = %712, %503
  %714 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %715 = load ptr, ptr %714, align 8, !tbaa !89
  %716 = getelementptr inbounds nuw i8, ptr %715, i64 40
  %717 = load ptr, ptr %716, align 8, !tbaa !101
  %718 = icmp eq ptr %717, null
  br i1 %718, label %824, label %719

719:                                              ; preds = %713
  %720 = load i64, ptr %52, align 8, !tbaa !55
  %721 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %722 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %723 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %724 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %725 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %726

726:                                              ; preds = %802, %719
  %727 = phi i64 [ %720, %719 ], [ %789, %802 ]
  %728 = load i64, ptr %52, align 8, !tbaa !55
  %729 = load i64, ptr %721, align 8, !tbaa !41
  %730 = icmp eq i64 %728, %729
  br i1 %730, label %731, label %787

731:                                              ; preds = %726
  %732 = load ptr, ptr %714, align 8, !tbaa !89
  %733 = getelementptr inbounds nuw i8, ptr %732, i64 68
  %734 = load i32, ptr %733, align 4, !tbaa !104
  %735 = icmp ne i32 %734, 0
  %736 = icmp ugt i64 %728, %727
  %737 = select i1 %735, i1 %736, i1 false
  br i1 %737, label %738, label %744

738:                                              ; preds = %731
  %739 = sub nuw i64 %728, %727
  %740 = load ptr, ptr %722, align 8, !tbaa !40
  %741 = getelementptr inbounds nuw i8, ptr %740, i64 %727
  %742 = load i64, ptr %723, align 8, !tbaa !57
  %743 = tail call i64 @crc32_z(i64 noundef %742, ptr noundef %741, i64 noundef %739) #8
  store i64 %743, ptr %723, align 8, !tbaa !57
  br label %744

744:                                              ; preds = %738, %731
  %745 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %745) #8
  %746 = getelementptr inbounds nuw i8, ptr %745, i64 40
  %747 = load i64, ptr %746, align 8, !tbaa !55
  %748 = load i32, ptr %43, align 8, !tbaa !96
  %749 = zext i32 %748 to i64
  %750 = tail call i64 @llvm.umin.i64(i64 %747, i64 %749)
  %751 = trunc nuw i64 %750 to i32
  %752 = icmp eq i64 %750, 0
  br i1 %752, label %783, label %753

753:                                              ; preds = %744
  %754 = load ptr, ptr %25, align 8, !tbaa !95
  %755 = getelementptr inbounds nuw i8, ptr %745, i64 32
  %756 = load ptr, ptr %755, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %754, ptr align 1 %756, i64 %750, i1 false)
  %757 = load ptr, ptr %25, align 8, !tbaa !95
  %758 = getelementptr inbounds nuw i8, ptr %757, i64 %750
  store ptr %758, ptr %25, align 8, !tbaa !95
  %759 = load ptr, ptr %755, align 8, !tbaa !56
  %760 = getelementptr inbounds nuw i8, ptr %759, i64 %750
  store ptr %760, ptr %755, align 8, !tbaa !56
  %761 = load i64, ptr %724, align 8, !tbaa !97
  %762 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %761, i64 %750), !nosanitize !44
  %763 = extractvalue { i64, i1 } %762, 1, !nosanitize !44
  br i1 %763, label %764, label %765, !prof !45, !nosanitize !44

764:                                              ; preds = %753
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

765:                                              ; preds = %753
  %766 = extractvalue { i64, i1 } %762, 0, !nosanitize !44
  store i64 %766, ptr %724, align 8, !tbaa !97
  %767 = load i32, ptr %43, align 8, !tbaa !96
  %768 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %767, i32 %751), !nosanitize !44
  %769 = extractvalue { i32, i1 } %768, 1, !nosanitize !44
  br i1 %769, label %770, label %771, !prof !45, !nosanitize !44

770:                                              ; preds = %765
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

771:                                              ; preds = %765
  %772 = extractvalue { i32, i1 } %768, 0, !nosanitize !44
  store i32 %772, ptr %43, align 8, !tbaa !96
  %773 = load i64, ptr %746, align 8, !tbaa !55
  %774 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %773, i64 %750), !nosanitize !44
  %775 = extractvalue { i64, i1 } %774, 1, !nosanitize !44
  br i1 %775, label %776, label %777, !prof !45, !nosanitize !44

776:                                              ; preds = %771
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  %784 = load i64, ptr %52, align 8, !tbaa !55
  %785 = icmp eq i64 %784, 0
  br i1 %785, label %787, label %786

786:                                              ; preds = %783
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

787:                                              ; preds = %783, %726
  %788 = phi i64 [ %728, %726 ], [ 0, %783 ]
  %789 = phi i64 [ %727, %726 ], [ 0, %783 ]
  %790 = load i64, ptr %725, align 8, !tbaa !108
  %791 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %790, i64 1), !nosanitize !44
  %792 = extractvalue { i64, i1 } %791, 1, !nosanitize !44
  br i1 %792, label %793, label %794, !prof !45, !nosanitize !44

793:                                              ; preds = %787
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

794:                                              ; preds = %787
  %795 = extractvalue { i64, i1 } %791, 0, !nosanitize !44
  %796 = load ptr, ptr %714, align 8, !tbaa !89
  %797 = getelementptr inbounds nuw i8, ptr %796, i64 40
  %798 = load ptr, ptr %797, align 8, !tbaa !101
  store i64 %795, ptr %725, align 8, !tbaa !108
  %799 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %788, i64 1), !nosanitize !44
  %800 = extractvalue { i64, i1 } %799, 1, !nosanitize !44
  br i1 %800, label %801, label %802, !prof !45, !nosanitize !44

801:                                              ; preds = %794
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

802:                                              ; preds = %794
  %803 = extractvalue { i64, i1 } %799, 0, !nosanitize !44
  %804 = load ptr, ptr %722, align 8, !tbaa !40
  %805 = getelementptr inbounds nuw i8, ptr %798, i64 %790
  %806 = load i8, ptr %805, align 1, !tbaa !5
  store i64 %803, ptr %52, align 8, !tbaa !55
  %807 = getelementptr inbounds nuw i8, ptr %804, i64 %788
  store i8 %806, ptr %807, align 1, !tbaa !5
  %808 = icmp eq i8 %806, 0
  br i1 %808, label %809, label %726, !llvm.loop !112

809:                                              ; preds = %802
  %810 = load ptr, ptr %714, align 8, !tbaa !89
  %811 = getelementptr inbounds nuw i8, ptr %810, i64 68
  %812 = load i32, ptr %811, align 4, !tbaa !104
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %823, label %814

814:                                              ; preds = %809
  %815 = load i64, ptr %52, align 8, !tbaa !55
  %816 = icmp ugt i64 %815, %789
  br i1 %816, label %817, label %823

817:                                              ; preds = %814
  %818 = sub nuw i64 %815, %789
  %819 = load ptr, ptr %722, align 8, !tbaa !40
  %820 = getelementptr inbounds nuw i8, ptr %819, i64 %789
  %821 = load i64, ptr %723, align 8, !tbaa !57
  %822 = tail call i64 @crc32_z(i64 noundef %821, ptr noundef %820, i64 noundef %818) #8
  store i64 %822, ptr %723, align 8, !tbaa !57
  br label %823

823:                                              ; preds = %817, %814, %809
  store i64 0, ptr %725, align 8, !tbaa !108
  br label %824

824:                                              ; preds = %823, %713
  store i32 91, ptr %20, align 8, !tbaa !28
  br label %825

825:                                              ; preds = %824, %503
  %826 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %827 = load ptr, ptr %826, align 8, !tbaa !89
  %828 = getelementptr inbounds nuw i8, ptr %827, i64 56
  %829 = load ptr, ptr %828, align 8, !tbaa !99
  %830 = icmp eq ptr %829, null
  br i1 %830, label %935, label %831

831:                                              ; preds = %825
  %832 = load i64, ptr %52, align 8, !tbaa !55
  %833 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %834 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %835 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %836 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %837 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %838

838:                                              ; preds = %914, %831
  %839 = phi i64 [ %832, %831 ], [ %901, %914 ]
  %840 = load i64, ptr %52, align 8, !tbaa !55
  %841 = load i64, ptr %833, align 8, !tbaa !41
  %842 = icmp eq i64 %840, %841
  br i1 %842, label %843, label %899

843:                                              ; preds = %838
  %844 = load ptr, ptr %826, align 8, !tbaa !89
  %845 = getelementptr inbounds nuw i8, ptr %844, i64 68
  %846 = load i32, ptr %845, align 4, !tbaa !104
  %847 = icmp ne i32 %846, 0
  %848 = icmp ugt i64 %840, %839
  %849 = select i1 %847, i1 %848, i1 false
  br i1 %849, label %850, label %856

850:                                              ; preds = %843
  %851 = sub nuw i64 %840, %839
  %852 = load ptr, ptr %834, align 8, !tbaa !40
  %853 = getelementptr inbounds nuw i8, ptr %852, i64 %839
  %854 = load i64, ptr %835, align 8, !tbaa !57
  %855 = tail call i64 @crc32_z(i64 noundef %854, ptr noundef %853, i64 noundef %851) #8
  store i64 %855, ptr %835, align 8, !tbaa !57
  br label %856

856:                                              ; preds = %850, %843
  %857 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %857) #8
  %858 = getelementptr inbounds nuw i8, ptr %857, i64 40
  %859 = load i64, ptr %858, align 8, !tbaa !55
  %860 = load i32, ptr %43, align 8, !tbaa !96
  %861 = zext i32 %860 to i64
  %862 = tail call i64 @llvm.umin.i64(i64 %859, i64 %861)
  %863 = trunc nuw i64 %862 to i32
  %864 = icmp eq i64 %862, 0
  br i1 %864, label %895, label %865

865:                                              ; preds = %856
  %866 = load ptr, ptr %25, align 8, !tbaa !95
  %867 = getelementptr inbounds nuw i8, ptr %857, i64 32
  %868 = load ptr, ptr %867, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %866, ptr align 1 %868, i64 %862, i1 false)
  %869 = load ptr, ptr %25, align 8, !tbaa !95
  %870 = getelementptr inbounds nuw i8, ptr %869, i64 %862
  store ptr %870, ptr %25, align 8, !tbaa !95
  %871 = load ptr, ptr %867, align 8, !tbaa !56
  %872 = getelementptr inbounds nuw i8, ptr %871, i64 %862
  store ptr %872, ptr %867, align 8, !tbaa !56
  %873 = load i64, ptr %836, align 8, !tbaa !97
  %874 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %873, i64 %862), !nosanitize !44
  %875 = extractvalue { i64, i1 } %874, 1, !nosanitize !44
  br i1 %875, label %876, label %877, !prof !45, !nosanitize !44

876:                                              ; preds = %865
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

877:                                              ; preds = %865
  %878 = extractvalue { i64, i1 } %874, 0, !nosanitize !44
  store i64 %878, ptr %836, align 8, !tbaa !97
  %879 = load i32, ptr %43, align 8, !tbaa !96
  %880 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %879, i32 %863), !nosanitize !44
  %881 = extractvalue { i32, i1 } %880, 1, !nosanitize !44
  br i1 %881, label %882, label %883, !prof !45, !nosanitize !44

882:                                              ; preds = %877
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

883:                                              ; preds = %877
  %884 = extractvalue { i32, i1 } %880, 0, !nosanitize !44
  store i32 %884, ptr %43, align 8, !tbaa !96
  %885 = load i64, ptr %858, align 8, !tbaa !55
  %886 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %885, i64 %862), !nosanitize !44
  %887 = extractvalue { i64, i1 } %886, 1, !nosanitize !44
  br i1 %887, label %888, label %889, !prof !45, !nosanitize !44

888:                                              ; preds = %883
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  %896 = load i64, ptr %52, align 8, !tbaa !55
  %897 = icmp eq i64 %896, 0
  br i1 %897, label %899, label %898

898:                                              ; preds = %895
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

899:                                              ; preds = %895, %838
  %900 = phi i64 [ %840, %838 ], [ 0, %895 ]
  %901 = phi i64 [ %839, %838 ], [ 0, %895 ]
  %902 = load i64, ptr %837, align 8, !tbaa !108
  %903 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %902, i64 1), !nosanitize !44
  %904 = extractvalue { i64, i1 } %903, 1, !nosanitize !44
  br i1 %904, label %905, label %906, !prof !45, !nosanitize !44

905:                                              ; preds = %899
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

906:                                              ; preds = %899
  %907 = extractvalue { i64, i1 } %903, 0, !nosanitize !44
  %908 = load ptr, ptr %826, align 8, !tbaa !89
  %909 = getelementptr inbounds nuw i8, ptr %908, i64 56
  %910 = load ptr, ptr %909, align 8, !tbaa !99
  store i64 %907, ptr %837, align 8, !tbaa !108
  %911 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %900, i64 1), !nosanitize !44
  %912 = extractvalue { i64, i1 } %911, 1, !nosanitize !44
  br i1 %912, label %913, label %914, !prof !45, !nosanitize !44

913:                                              ; preds = %906
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

914:                                              ; preds = %906
  %915 = extractvalue { i64, i1 } %911, 0, !nosanitize !44
  %916 = load ptr, ptr %834, align 8, !tbaa !40
  %917 = getelementptr inbounds nuw i8, ptr %910, i64 %902
  %918 = load i8, ptr %917, align 1, !tbaa !5
  store i64 %915, ptr %52, align 8, !tbaa !55
  %919 = getelementptr inbounds nuw i8, ptr %916, i64 %900
  store i8 %918, ptr %919, align 1, !tbaa !5
  %920 = icmp eq i8 %918, 0
  br i1 %920, label %921, label %838, !llvm.loop !113

921:                                              ; preds = %914
  %922 = load ptr, ptr %826, align 8, !tbaa !89
  %923 = getelementptr inbounds nuw i8, ptr %922, i64 68
  %924 = load i32, ptr %923, align 4, !tbaa !104
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %935, label %926

926:                                              ; preds = %921
  %927 = load i64, ptr %52, align 8, !tbaa !55
  %928 = icmp ugt i64 %927, %901
  br i1 %928, label %929, label %935

929:                                              ; preds = %926
  %930 = sub nuw i64 %927, %901
  %931 = load ptr, ptr %834, align 8, !tbaa !40
  %932 = getelementptr inbounds nuw i8, ptr %931, i64 %901
  %933 = load i64, ptr %835, align 8, !tbaa !57
  %934 = tail call i64 @crc32_z(i64 noundef %933, ptr noundef %932, i64 noundef %930) #8
  store i64 %934, ptr %835, align 8, !tbaa !57
  br label %935

935:                                              ; preds = %929, %926, %921, %825
  store i32 103, ptr %20, align 8, !tbaa !28
  br label %936

936:                                              ; preds = %935, %503
  %937 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %938 = load ptr, ptr %937, align 8, !tbaa !89
  %939 = getelementptr inbounds nuw i8, ptr %938, i64 68
  %940 = load i32, ptr %939, align 4, !tbaa !104
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %977, label %942

942:                                              ; preds = %936
  %943 = load i64, ptr %52, align 8, !tbaa !55
  %944 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %943, i64 2), !nosanitize !44
  %945 = extractvalue { i64, i1 } %944, 1, !nosanitize !44
  br i1 %945, label %946, label %947, !prof !45, !nosanitize !44

946:                                              ; preds = %942
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

947:                                              ; preds = %942
  %948 = extractvalue { i64, i1 } %944, 0, !nosanitize !44
  %949 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %950 = load i64, ptr %949, align 8, !tbaa !41
  %951 = icmp ugt i64 %948, %950
  br i1 %951, label %952, label %956

952:                                              ; preds = %947
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %953 = load i64, ptr %52, align 8, !tbaa !55
  %954 = icmp eq i64 %953, 0
  br i1 %954, label %956, label %955

955:                                              ; preds = %952
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

956:                                              ; preds = %952, %947
  %957 = phi i64 [ 0, %952 ], [ %943, %947 ]
  %958 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %959 = add nuw i64 %957, 1
  %960 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %961 = load ptr, ptr %960, align 8, !tbaa !40
  %962 = load i64, ptr %958, align 8, !tbaa !57
  %963 = trunc i64 %962 to i8
  store i64 %959, ptr %52, align 8, !tbaa !55
  %964 = getelementptr inbounds nuw i8, ptr %961, i64 %957
  store i8 %963, ptr %964, align 1, !tbaa !5
  %965 = load i64, ptr %52, align 8, !tbaa !55
  %966 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %965, i64 1), !nosanitize !44
  %967 = extractvalue { i64, i1 } %966, 1, !nosanitize !44
  br i1 %967, label %968, label %969, !prof !45, !nosanitize !44

968:                                              ; preds = %956
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

969:                                              ; preds = %956
  %970 = extractvalue { i64, i1 } %966, 0, !nosanitize !44
  %971 = load ptr, ptr %960, align 8, !tbaa !40
  %972 = load i64, ptr %958, align 8, !tbaa !57
  %973 = lshr i64 %972, 8
  %974 = trunc i64 %973 to i8
  store i64 %970, ptr %52, align 8, !tbaa !55
  %975 = getelementptr inbounds nuw i8, ptr %971, i64 %965
  store i8 %974, ptr %975, align 1, !tbaa !5
  %976 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  store i64 %976, ptr %958, align 8, !tbaa !57
  br label %977

977:                                              ; preds = %969, %936
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %978 = load i64, ptr %52, align 8, !tbaa !55
  %979 = icmp eq i64 %978, 0
  br i1 %979, label %981, label %980

980:                                              ; preds = %977
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

981:                                              ; preds = %977, %503, %136
  %982 = load i32, ptr %29, align 8, !tbaa !79
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %984, label %993

984:                                              ; preds = %981, %126
  %985 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %986 = load i32, ptr %985, align 4, !tbaa !73
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %993

988:                                              ; preds = %984
  %989 = icmp eq i32 %1, 0
  br i1 %989, label %1203, label %990

990:                                              ; preds = %988
  %991 = load i32, ptr %20, align 8, !tbaa !28
  %992 = icmp eq i32 %991, 666
  br i1 %992, label %1054, label %993

993:                                              ; preds = %990, %984, %981
  %994 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %995 = load i32, ptr %994, align 4, !tbaa !47
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %999

997:                                              ; preds = %993
  %998 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %1011

999:                                              ; preds = %993
  %1000 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %1001 = load i32, ptr %1000, align 8, !tbaa !48
  switch i32 %1001, label %1006 [
    i32 2, label %1002
    i32 3, label %1004
  ]

1002:                                             ; preds = %999
  %1003 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %1011

1004:                                             ; preds = %999
  %1005 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %1011

1006:                                             ; preds = %999
  %1007 = sext i32 %995 to i64
  %1008 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %1007, i32 4
  %1009 = load ptr, ptr %1008, align 8, !tbaa !94
  %1010 = tail call i32 %1009(ptr noundef nonnull %14, i32 noundef %1) #8
  br label %1011

1011:                                             ; preds = %1006, %1004, %1002, %997
  %1012 = phi i32 [ %998, %997 ], [ %1003, %1002 ], [ %1005, %1004 ], [ %1010, %1006 ]
  %1013 = and i32 %1012, -2
  %1014 = icmp eq i32 %1013, 2
  br i1 %1014, label %1015, label %1016

1015:                                             ; preds = %1011
  store i32 666, ptr %20, align 8, !tbaa !28
  br label %1016

1016:                                             ; preds = %1015, %1011
  %1017 = and i32 %1012, -3
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1019, label %1023

1019:                                             ; preds = %1016
  %1020 = load i32, ptr %43, align 8, !tbaa !96
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1022, label %1203

1022:                                             ; preds = %1019
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

1023:                                             ; preds = %1016
  %1024 = icmp eq i32 %1012, 1
  br i1 %1024, label %1025, label %1054

1025:                                             ; preds = %1023
  switch i32 %1, label %1027 [
    i32 1, label %1026
    i32 5, label %1050
  ]

1026:                                             ; preds = %1025
  tail call void @_tr_align(ptr noundef nonnull %14) #8
  br label %1050

1027:                                             ; preds = %1025
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #8
  %1028 = icmp eq i32 %1, 3
  br i1 %1028, label %1029, label %1050

1029:                                             ; preds = %1027
  %1030 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %1031 = load i32, ptr %1030, align 4, !tbaa !36
  %1032 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1031, i32 1), !nosanitize !44
  %1033 = extractvalue { i32, i1 } %1032, 1, !nosanitize !44
  br i1 %1033, label %1034, label %1035, !prof !45, !nosanitize !44

1034:                                             ; preds = %1029
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1035:                                             ; preds = %1029
  %1036 = extractvalue { i32, i1 } %1032, 0, !nosanitize !44
  %1037 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %1038 = load ptr, ptr %1037, align 8, !tbaa !37
  %1039 = zext i32 %1036 to i64
  %1040 = getelementptr inbounds nuw i16, ptr %1038, i64 %1039
  store i16 0, ptr %1040, align 2, !tbaa !60
  %1041 = shl nuw nsw i64 %1039, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1038, i8 0, i64 %1041, i1 false)
  %1042 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %1042, align 8, !tbaa !61
  %1043 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %1044 = load i32, ptr %1043, align 4, !tbaa !73
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1046, label %1050

1046:                                             ; preds = %1035
  %1047 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %1047, align 4, !tbaa !71
  %1048 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %1048, align 8, !tbaa !72
  %1049 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %1049, align 4, !tbaa !74
  br label %1050

1050:                                             ; preds = %1046, %1035, %1027, %1026, %1025
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1051 = load i32, ptr %43, align 8, !tbaa !96
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1053, label %1054

1053:                                             ; preds = %1050
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

1054:                                             ; preds = %1050, %1023, %990
  br i1 %37, label %1203, label %1055

1055:                                             ; preds = %1054
  %1056 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %1057 = load i32, ptr %1056, align 8, !tbaa !29
  %1058 = icmp slt i32 %1057, 1
  br i1 %1058, label %1203, label %1059

1059:                                             ; preds = %1055
  %1060 = icmp eq i32 %1057, 2
  %1061 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1060, label %1062, label %1151

1062:                                             ; preds = %1059
  %1063 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1064 = load i64, ptr %52, align 8, !tbaa !55
  %1065 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1064, i64 1), !nosanitize !44
  %1066 = extractvalue { i64, i1 } %1065, 1, !nosanitize !44
  br i1 %1066, label %1067, label %1068, !prof !45, !nosanitize !44

1067:                                             ; preds = %1062
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1068:                                             ; preds = %1062
  %1069 = extractvalue { i64, i1 } %1065, 0, !nosanitize !44
  %1070 = load ptr, ptr %1063, align 8, !tbaa !40
  %1071 = load i64, ptr %1061, align 8, !tbaa !57
  %1072 = trunc i64 %1071 to i8
  store i64 %1069, ptr %52, align 8, !tbaa !55
  %1073 = getelementptr inbounds nuw i8, ptr %1070, i64 %1064
  store i8 %1072, ptr %1073, align 1, !tbaa !5
  %1074 = load i64, ptr %52, align 8, !tbaa !55
  %1075 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1074, i64 1), !nosanitize !44
  %1076 = extractvalue { i64, i1 } %1075, 1, !nosanitize !44
  br i1 %1076, label %1077, label %1078, !prof !45, !nosanitize !44

1077:                                             ; preds = %1068
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1078:                                             ; preds = %1068
  %1079 = extractvalue { i64, i1 } %1075, 0, !nosanitize !44
  %1080 = load ptr, ptr %1063, align 8, !tbaa !40
  %1081 = load i64, ptr %1061, align 8, !tbaa !57
  %1082 = lshr i64 %1081, 8
  %1083 = trunc i64 %1082 to i8
  store i64 %1079, ptr %52, align 8, !tbaa !55
  %1084 = getelementptr inbounds nuw i8, ptr %1080, i64 %1074
  store i8 %1083, ptr %1084, align 1, !tbaa !5
  %1085 = load i64, ptr %52, align 8, !tbaa !55
  %1086 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1085, i64 1), !nosanitize !44
  %1087 = extractvalue { i64, i1 } %1086, 1, !nosanitize !44
  br i1 %1087, label %1088, label %1089, !prof !45, !nosanitize !44

1088:                                             ; preds = %1078
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1089:                                             ; preds = %1078
  %1090 = extractvalue { i64, i1 } %1086, 0, !nosanitize !44
  %1091 = load ptr, ptr %1063, align 8, !tbaa !40
  %1092 = load i64, ptr %1061, align 8, !tbaa !57
  %1093 = lshr i64 %1092, 16
  %1094 = trunc i64 %1093 to i8
  store i64 %1090, ptr %52, align 8, !tbaa !55
  %1095 = getelementptr inbounds nuw i8, ptr %1091, i64 %1085
  store i8 %1094, ptr %1095, align 1, !tbaa !5
  %1096 = load i64, ptr %52, align 8, !tbaa !55
  %1097 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1096, i64 1), !nosanitize !44
  %1098 = extractvalue { i64, i1 } %1097, 1, !nosanitize !44
  br i1 %1098, label %1099, label %1100, !prof !45, !nosanitize !44

1099:                                             ; preds = %1089
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1100:                                             ; preds = %1089
  %1101 = extractvalue { i64, i1 } %1097, 0, !nosanitize !44
  %1102 = load ptr, ptr %1063, align 8, !tbaa !40
  %1103 = load i64, ptr %1061, align 8, !tbaa !57
  %1104 = lshr i64 %1103, 24
  %1105 = trunc i64 %1104 to i8
  store i64 %1101, ptr %52, align 8, !tbaa !55
  %1106 = getelementptr inbounds nuw i8, ptr %1102, i64 %1096
  store i8 %1105, ptr %1106, align 1, !tbaa !5
  %1107 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1108 = load i64, ptr %52, align 8, !tbaa !55
  %1109 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1108, i64 1), !nosanitize !44
  %1110 = extractvalue { i64, i1 } %1109, 1, !nosanitize !44
  br i1 %1110, label %1111, label %1112, !prof !45, !nosanitize !44

1111:                                             ; preds = %1100
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1112:                                             ; preds = %1100
  %1113 = extractvalue { i64, i1 } %1109, 0, !nosanitize !44
  %1114 = load ptr, ptr %1063, align 8, !tbaa !40
  %1115 = load i64, ptr %1107, align 8, !tbaa !53
  %1116 = trunc i64 %1115 to i8
  store i64 %1113, ptr %52, align 8, !tbaa !55
  %1117 = getelementptr inbounds nuw i8, ptr %1114, i64 %1108
  store i8 %1116, ptr %1117, align 1, !tbaa !5
  %1118 = load i64, ptr %52, align 8, !tbaa !55
  %1119 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1118, i64 1), !nosanitize !44
  %1120 = extractvalue { i64, i1 } %1119, 1, !nosanitize !44
  br i1 %1120, label %1121, label %1122, !prof !45, !nosanitize !44

1121:                                             ; preds = %1112
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1122:                                             ; preds = %1112
  %1123 = extractvalue { i64, i1 } %1119, 0, !nosanitize !44
  %1124 = load ptr, ptr %1063, align 8, !tbaa !40
  %1125 = load i64, ptr %1107, align 8, !tbaa !53
  %1126 = lshr i64 %1125, 8
  %1127 = trunc i64 %1126 to i8
  store i64 %1123, ptr %52, align 8, !tbaa !55
  %1128 = getelementptr inbounds nuw i8, ptr %1124, i64 %1118
  store i8 %1127, ptr %1128, align 1, !tbaa !5
  %1129 = load i64, ptr %52, align 8, !tbaa !55
  %1130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1129, i64 1), !nosanitize !44
  %1131 = extractvalue { i64, i1 } %1130, 1, !nosanitize !44
  br i1 %1131, label %1132, label %1133, !prof !45, !nosanitize !44

1132:                                             ; preds = %1122
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1133:                                             ; preds = %1122
  %1134 = extractvalue { i64, i1 } %1130, 0, !nosanitize !44
  %1135 = load ptr, ptr %1063, align 8, !tbaa !40
  %1136 = load i64, ptr %1107, align 8, !tbaa !53
  %1137 = lshr i64 %1136, 16
  %1138 = trunc i64 %1137 to i8
  store i64 %1134, ptr %52, align 8, !tbaa !55
  %1139 = getelementptr inbounds nuw i8, ptr %1135, i64 %1129
  store i8 %1138, ptr %1139, align 1, !tbaa !5
  %1140 = load i64, ptr %52, align 8, !tbaa !55
  %1141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1140, i64 1), !nosanitize !44
  %1142 = extractvalue { i64, i1 } %1141, 1, !nosanitize !44
  br i1 %1142, label %1143, label %1144, !prof !45, !nosanitize !44

1143:                                             ; preds = %1133
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1144:                                             ; preds = %1133
  %1145 = extractvalue { i64, i1 } %1141, 0, !nosanitize !44
  %1146 = load ptr, ptr %1063, align 8, !tbaa !40
  %1147 = load i64, ptr %1107, align 8, !tbaa !53
  %1148 = lshr i64 %1147, 24
  %1149 = trunc i64 %1148 to i8
  store i64 %1145, ptr %52, align 8, !tbaa !55
  %1150 = getelementptr inbounds nuw i8, ptr %1146, i64 %1140
  store i8 %1149, ptr %1150, align 1, !tbaa !5
  br label %1194

1151:                                             ; preds = %1059
  %1152 = load i64, ptr %1061, align 8, !tbaa !57
  %1153 = lshr i64 %1152, 16
  %1154 = load i64, ptr %52, align 8, !tbaa !55
  %1155 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1154, i64 1), !nosanitize !44
  %1156 = extractvalue { i64, i1 } %1155, 1, !nosanitize !44
  br i1 %1156, label %1157, label %1158, !prof !45, !nosanitize !44

1157:                                             ; preds = %1151
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1158:                                             ; preds = %1151
  %1159 = extractvalue { i64, i1 } %1155, 0, !nosanitize !44
  %1160 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1161 = load ptr, ptr %1160, align 8, !tbaa !40
  %1162 = lshr i64 %1152, 24
  %1163 = trunc i64 %1162 to i8
  store i64 %1159, ptr %52, align 8, !tbaa !55
  %1164 = getelementptr inbounds nuw i8, ptr %1161, i64 %1154
  store i8 %1163, ptr %1164, align 1, !tbaa !5
  %1165 = load i64, ptr %52, align 8, !tbaa !55
  %1166 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1165, i64 1), !nosanitize !44
  %1167 = extractvalue { i64, i1 } %1166, 1, !nosanitize !44
  br i1 %1167, label %1168, label %1169, !prof !45, !nosanitize !44

1168:                                             ; preds = %1158
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1169:                                             ; preds = %1158
  %1170 = extractvalue { i64, i1 } %1166, 0, !nosanitize !44
  %1171 = load ptr, ptr %1160, align 8, !tbaa !40
  %1172 = trunc i64 %1153 to i8
  store i64 %1170, ptr %52, align 8, !tbaa !55
  %1173 = getelementptr inbounds nuw i8, ptr %1171, i64 %1165
  store i8 %1172, ptr %1173, align 1, !tbaa !5
  %1174 = load i64, ptr %1061, align 8, !tbaa !57
  %1175 = trunc i64 %1174 to i8
  %1176 = load i64, ptr %52, align 8, !tbaa !55
  %1177 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1176, i64 1), !nosanitize !44
  %1178 = extractvalue { i64, i1 } %1177, 1, !nosanitize !44
  br i1 %1178, label %1179, label %1180, !prof !45, !nosanitize !44

1179:                                             ; preds = %1169
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1180:                                             ; preds = %1169
  %1181 = extractvalue { i64, i1 } %1177, 0, !nosanitize !44
  %1182 = load ptr, ptr %1160, align 8, !tbaa !40
  %1183 = lshr i64 %1174, 8
  %1184 = trunc i64 %1183 to i8
  store i64 %1181, ptr %52, align 8, !tbaa !55
  %1185 = getelementptr inbounds nuw i8, ptr %1182, i64 %1176
  store i8 %1184, ptr %1185, align 1, !tbaa !5
  %1186 = load i64, ptr %52, align 8, !tbaa !55
  %1187 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1186, i64 1), !nosanitize !44
  %1188 = extractvalue { i64, i1 } %1187, 1, !nosanitize !44
  br i1 %1188, label %1189, label %1190, !prof !45, !nosanitize !44

1189:                                             ; preds = %1180
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1190:                                             ; preds = %1180
  %1191 = extractvalue { i64, i1 } %1187, 0, !nosanitize !44
  %1192 = load ptr, ptr %1160, align 8, !tbaa !40
  store i64 %1191, ptr %52, align 8, !tbaa !55
  %1193 = getelementptr inbounds nuw i8, ptr %1192, i64 %1186
  store i8 %1175, ptr %1193, align 1, !tbaa !5
  br label %1194

1194:                                             ; preds = %1190, %1144
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1195 = load i32, ptr %1056, align 8, !tbaa !29
  %1196 = icmp sgt i32 %1195, 0
  br i1 %1196, label %1197, label %1199

1197:                                             ; preds = %1194
  %1198 = sub nsw i32 0, %1195
  store i32 %1198, ptr %1056, align 8, !tbaa !29
  br label %1199

1199:                                             ; preds = %1197, %1194
  %1200 = load i64, ptr %52, align 8, !tbaa !55
  %1201 = icmp eq i64 %1200, 0
  %1202 = zext i1 %1201 to i32
  br label %1203

1203:                                             ; preds = %1199, %1055, %1054, %1053, %1022, %1019, %988, %980, %955, %898, %786, %675, %346, %240, %129, %120, %99, %46, %39, %22, %19, %16, %12, %8, %4, %2
  %1204 = phi i32 [ -2, %39 ], [ -5, %46 ], [ 0, %99 ], [ -5, %129 ], [ 0, %346 ], [ 0, %955 ], [ 0, %980 ], [ %1202, %1199 ], [ 0, %240 ], [ -5, %120 ], [ -2, %22 ], [ 0, %786 ], [ 0, %898 ], [ 0, %1054 ], [ 1, %1055 ], [ 0, %1019 ], [ 0, %1022 ], [ 0, %1053 ], [ 0, %675 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ], [ 0, %988 ]
  ret i32 %1204
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @slide_hash(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds nuw i16, ptr %7, i64 %8
  br label %10

10:                                               ; preds = %21, %1
  %11 = phi ptr [ %9, %1 ], [ %13, %21 ]
  %12 = phi i32 [ %5, %1 ], [ %22, %21 ]
  %13 = getelementptr inbounds i8, ptr %11, i64 -2
  %14 = load i16, ptr %13, align 2, !tbaa !60
  %15 = zext i16 %14 to i32
  %16 = tail call i32 @llvm.usub.sat.i32(i32 %15, i32 %3)
  %17 = trunc nuw i32 %16 to i16
  store i16 %17, ptr %13, align 2, !tbaa !60
  %18 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %12, i32 1), !nosanitize !44
  %19 = extractvalue { i32, i1 } %18, 1, !nosanitize !44
  br i1 %19, label %20, label %21, !prof !45, !nosanitize !44

20:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

21:                                               ; preds = %10
  %22 = extractvalue { i32, i1 } %18, 0, !nosanitize !44
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %10, !llvm.loop !82

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = zext i32 %3 to i64
  %28 = getelementptr inbounds nuw i16, ptr %26, i64 %27
  br label %29

29:                                               ; preds = %40, %24
  %30 = phi ptr [ %28, %24 ], [ %32, %40 ]
  %31 = phi i32 [ %3, %24 ], [ %41, %40 ]
  %32 = getelementptr inbounds i8, ptr %30, i64 -2
  %33 = load i16, ptr %32, align 2, !tbaa !60
  %34 = zext i16 %33 to i32
  %35 = tail call i32 @llvm.usub.sat.i32(i32 %34, i32 %3)
  %36 = trunc nuw i32 %35 to i16
  store i16 %36, ptr %32, align 2, !tbaa !60
  %37 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %31, i32 1), !nosanitize !44
  %38 = extractvalue { i32, i1 } %37, 1, !nosanitize !44
  br i1 %38, label %39, label %40, !prof !45, !nosanitize !44

39:                                               ; preds = %29
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

40:                                               ; preds = %29
  %41 = extractvalue { i32, i1 } %37, 0, !nosanitize !44
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %29, !llvm.loop !84

43:                                               ; preds = %40
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %44, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateTune(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
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

; Function Attrs: nounwind uwtable
define dso_local i64 @deflateBound_z(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !44
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !44
  br i1 %5, label %6, label %7, !prof !45, !nosanitize !44

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !44
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !44
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !44
  br i1 %11, label %12, label %13, !prof !45, !nosanitize !44

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !44
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !44
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !44
  br i1 %17, label %18, label %19, !prof !45, !nosanitize !44

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !44
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !44
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !44
  br i1 %22, label %23, label %24, !prof !45, !nosanitize !44

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !44
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !44
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !44
  br i1 false, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !44
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !44
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !44
  br i1 false, label %37, label %38, !prof !45, !nosanitize !44

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !44
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !44
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !44
  br i1 false, label %43, label %44, !prof !45, !nosanitize !44

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !44
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !44
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !44
  br i1 false, label %48, label %49, !prof !45, !nosanitize !44

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  br i1 %76, label %77, label %210, !prof !45, !nosanitize !44

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 13) #10, !nosanitize !44
  unreachable, !nosanitize !44

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %84, %82 ], [ %80, %78 ]
  switch i32 %88, label %155 [
    i32 0, label %156
    i32 1, label %89
    i32 2, label %94
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %91 = load i32, ptr %90, align 4, !tbaa !71
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 6, i64 10
  br label %156

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %96 = load ptr, ptr %95, align 8, !tbaa !89
  %97 = icmp eq ptr %96, null
  br i1 %97, label %156, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %100 = load ptr, ptr %99, align 8, !tbaa !102
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %104 = load i32, ptr %103, align 8, !tbaa !107
  %105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 2), !nosanitize !44
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !44
  br i1 %106, label %107, label %108, !prof !45, !nosanitize !44

107:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

108:                                              ; preds = %102
  %109 = extractvalue { i32, i1 } %105, 0, !nosanitize !44
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %110, 18
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi i64 [ %111, %108 ], [ 18, %98 ]
  %114 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %115 = load ptr, ptr %114, align 8, !tbaa !101
  %116 = icmp eq ptr %115, null
  br i1 %116, label %128, label %117

117:                                              ; preds = %123, %112
  %118 = phi i64 [ %124, %123 ], [ %113, %112 ]
  %119 = phi ptr [ %125, %123 ], [ %115, %112 ]
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %118, i64 1), !nosanitize !44
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !44
  br i1 %121, label %122, label %123, !prof !45, !nosanitize !44

122:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

123:                                              ; preds = %117
  %124 = extractvalue { i64, i1 } %120, 0, !nosanitize !44
  %125 = getelementptr inbounds nuw i8, ptr %119, i64 1
  %126 = load i8, ptr %119, align 1, !tbaa !5
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %117, !llvm.loop !115

128:                                              ; preds = %123, %112
  %129 = phi i64 [ %113, %112 ], [ %124, %123 ]
  %130 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %131 = load ptr, ptr %130, align 8, !tbaa !99
  %132 = icmp eq ptr %131, null
  br i1 %132, label %144, label %133

133:                                              ; preds = %139, %128
  %134 = phi i64 [ %140, %139 ], [ %129, %128 ]
  %135 = phi ptr [ %141, %139 ], [ %131, %128 ]
  %136 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %134, i64 1), !nosanitize !44
  %137 = extractvalue { i64, i1 } %136, 1, !nosanitize !44
  br i1 %137, label %138, label %139, !prof !45, !nosanitize !44

138:                                              ; preds = %133
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

139:                                              ; preds = %133
  %140 = extractvalue { i64, i1 } %136, 0, !nosanitize !44
  %141 = getelementptr inbounds nuw i8, ptr %135, i64 1
  %142 = load i8, ptr %135, align 1, !tbaa !5
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %133, !llvm.loop !116

144:                                              ; preds = %139, %128
  %145 = phi i64 [ %129, %128 ], [ %140, %139 ]
  %146 = getelementptr inbounds nuw i8, ptr %96, i64 68
  %147 = load i32, ptr %146, align 4, !tbaa !104
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %144
  %150 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %145, i64 2), !nosanitize !44
  %151 = extractvalue { i64, i1 } %150, 1, !nosanitize !44
  br i1 %151, label %152, label %153, !prof !45, !nosanitize !44

152:                                              ; preds = %149
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

153:                                              ; preds = %149
  %154 = extractvalue { i64, i1 } %150, 0, !nosanitize !44
  br label %156

155:                                              ; preds = %87
  br label %156

156:                                              ; preds = %155, %153, %144, %94, %89, %87
  %157 = phi i64 [ 18, %155 ], [ %93, %89 ], [ 18, %94 ], [ 0, %87 ], [ %154, %153 ], [ %145, %144 ]
  %158 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %159 = load i32, ptr %158, align 4, !tbaa !30
  %160 = icmp eq i32 %159, 15
  %161 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %162 = load i32, ptr %161, align 8, !tbaa !50
  %163 = icmp eq i32 %162, 15
  %164 = select i1 %160, i1 %163, i1 false
  br i1 %164, label %178, label %165

165:                                              ; preds = %156
  %166 = icmp ugt i32 %159, %162
  br i1 %166, label %171, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %169 = load i32, ptr %168, align 4, !tbaa !47
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167, %165
  br label %172

172:                                              ; preds = %171, %167
  %173 = phi i64 [ %52, %171 ], [ %27, %167 ]
  %174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %173, i64 %157), !nosanitize !44
  %175 = extractvalue { i64, i1 } %174, 0, !nosanitize !44
  %176 = extractvalue { i64, i1 } %174, 1, !nosanitize !44
  br i1 %176, label %177, label %210, !prof !45, !nosanitize !44

177:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

178:                                              ; preds = %156
  %179 = lshr i64 %1, 12
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %179), !nosanitize !44
  %181 = extractvalue { i64, i1 } %180, 1, !nosanitize !44
  br i1 false, label %182, label %183, !prof !45, !nosanitize !44

182:                                              ; preds = %178
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

183:                                              ; preds = %178
  %184 = extractvalue { i64, i1 } %180, 0, !nosanitize !44
  %185 = lshr i64 %1, 14
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 %185), !nosanitize !44
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !44
  br i1 false, label %188, label %189, !prof !45, !nosanitize !44

188:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

189:                                              ; preds = %183
  %190 = extractvalue { i64, i1 } %186, 0, !nosanitize !44
  %191 = lshr i64 %1, 25
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 %191), !nosanitize !44
  %193 = extractvalue { i64, i1 } %192, 1, !nosanitize !44
  br i1 false, label %194, label %195, !prof !45, !nosanitize !44

194:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

195:                                              ; preds = %189
  %196 = extractvalue { i64, i1 } %192, 0, !nosanitize !44
  %197 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %196, i64 13), !nosanitize !44
  %198 = extractvalue { i64, i1 } %197, 1, !nosanitize !44
  br i1 false, label %199, label %200, !prof !45, !nosanitize !44

199:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

200:                                              ; preds = %195
  %201 = extractvalue { i64, i1 } %197, 0, !nosanitize !44
  %202 = add i64 %201, -6
  %203 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %202, i64 %157), !nosanitize !44
  %204 = extractvalue { i64, i1 } %203, 1, !nosanitize !44
  br i1 %204, label %205, label %206, !prof !45, !nosanitize !44

205:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

206:                                              ; preds = %200
  %207 = extractvalue { i64, i1 } %203, 0, !nosanitize !44
  %208 = icmp ult i64 %207, %1
  %209 = select i1 %208, i64 -1, i64 %207
  br label %210

210:                                              ; preds = %206, %172, %72
  %211 = phi i64 [ %209, %206 ], [ %75, %72 ], [ %175, %172 ]
  ret i64 %211
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !44
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !44
  br i1 %5, label %6, label %7, !prof !45, !nosanitize !44

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !44
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !44
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !44
  br i1 %11, label %12, label %13, !prof !45, !nosanitize !44

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !44
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !44
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !44
  br i1 %17, label %18, label %19, !prof !45, !nosanitize !44

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !44
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !44
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !44
  br i1 %22, label %23, label %24, !prof !45, !nosanitize !44

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !44
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !44
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !44
  br i1 false, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !44
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !44
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !44
  br i1 false, label %37, label %38, !prof !45, !nosanitize !44

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !44
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !44
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !44
  br i1 false, label %43, label %44, !prof !45, !nosanitize !44

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !44
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !44
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !44
  br i1 false, label %48, label %49, !prof !45, !nosanitize !44

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  br i1 %76, label %77, label %210, !prof !45, !nosanitize !44

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 13) #10, !nosanitize !44
  unreachable, !nosanitize !44

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %84, %82 ], [ %80, %78 ]
  switch i32 %88, label %155 [
    i32 0, label %156
    i32 1, label %89
    i32 2, label %94
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %91 = load i32, ptr %90, align 4, !tbaa !71
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 6, i64 10
  br label %156

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %96 = load ptr, ptr %95, align 8, !tbaa !89
  %97 = icmp eq ptr %96, null
  br i1 %97, label %156, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %100 = load ptr, ptr %99, align 8, !tbaa !102
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %104 = load i32, ptr %103, align 8, !tbaa !107
  %105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 2), !nosanitize !44
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !44
  br i1 %106, label %107, label %108, !prof !45, !nosanitize !44

107:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

108:                                              ; preds = %102
  %109 = extractvalue { i32, i1 } %105, 0, !nosanitize !44
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %110, 18
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi i64 [ %111, %108 ], [ 18, %98 ]
  %114 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %115 = load ptr, ptr %114, align 8, !tbaa !101
  %116 = icmp eq ptr %115, null
  br i1 %116, label %128, label %117

117:                                              ; preds = %123, %112
  %118 = phi i64 [ %124, %123 ], [ %113, %112 ]
  %119 = phi ptr [ %125, %123 ], [ %115, %112 ]
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %118, i64 1), !nosanitize !44
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !44
  br i1 %121, label %122, label %123, !prof !45, !nosanitize !44

122:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

123:                                              ; preds = %117
  %124 = extractvalue { i64, i1 } %120, 0, !nosanitize !44
  %125 = getelementptr inbounds nuw i8, ptr %119, i64 1
  %126 = load i8, ptr %119, align 1, !tbaa !5
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %117, !llvm.loop !115

128:                                              ; preds = %123, %112
  %129 = phi i64 [ %113, %112 ], [ %124, %123 ]
  %130 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %131 = load ptr, ptr %130, align 8, !tbaa !99
  %132 = icmp eq ptr %131, null
  br i1 %132, label %144, label %133

133:                                              ; preds = %139, %128
  %134 = phi i64 [ %140, %139 ], [ %129, %128 ]
  %135 = phi ptr [ %141, %139 ], [ %131, %128 ]
  %136 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %134, i64 1), !nosanitize !44
  %137 = extractvalue { i64, i1 } %136, 1, !nosanitize !44
  br i1 %137, label %138, label %139, !prof !45, !nosanitize !44

138:                                              ; preds = %133
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

139:                                              ; preds = %133
  %140 = extractvalue { i64, i1 } %136, 0, !nosanitize !44
  %141 = getelementptr inbounds nuw i8, ptr %135, i64 1
  %142 = load i8, ptr %135, align 1, !tbaa !5
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %133, !llvm.loop !116

144:                                              ; preds = %139, %128
  %145 = phi i64 [ %129, %128 ], [ %140, %139 ]
  %146 = getelementptr inbounds nuw i8, ptr %96, i64 68
  %147 = load i32, ptr %146, align 4, !tbaa !104
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %144
  %150 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %145, i64 2), !nosanitize !44
  %151 = extractvalue { i64, i1 } %150, 1, !nosanitize !44
  br i1 %151, label %152, label %153, !prof !45, !nosanitize !44

152:                                              ; preds = %149
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

153:                                              ; preds = %149
  %154 = extractvalue { i64, i1 } %150, 0, !nosanitize !44
  br label %156

155:                                              ; preds = %87
  br label %156

156:                                              ; preds = %155, %153, %144, %94, %89, %87
  %157 = phi i64 [ 18, %155 ], [ %93, %89 ], [ 18, %94 ], [ 0, %87 ], [ %154, %153 ], [ %145, %144 ]
  %158 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %159 = load i32, ptr %158, align 4, !tbaa !30
  %160 = icmp eq i32 %159, 15
  %161 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %162 = load i32, ptr %161, align 8, !tbaa !50
  %163 = icmp eq i32 %162, 15
  %164 = select i1 %160, i1 %163, i1 false
  br i1 %164, label %178, label %165

165:                                              ; preds = %156
  %166 = icmp ugt i32 %159, %162
  br i1 %166, label %171, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %169 = load i32, ptr %168, align 4, !tbaa !47
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167, %165
  br label %172

172:                                              ; preds = %171, %167
  %173 = phi i64 [ %52, %171 ], [ %27, %167 ]
  %174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %173, i64 %157), !nosanitize !44
  %175 = extractvalue { i64, i1 } %174, 0, !nosanitize !44
  %176 = extractvalue { i64, i1 } %174, 1, !nosanitize !44
  br i1 %176, label %177, label %210, !prof !45, !nosanitize !44

177:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

178:                                              ; preds = %156
  %179 = lshr i64 %1, 12
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %179), !nosanitize !44
  %181 = extractvalue { i64, i1 } %180, 1, !nosanitize !44
  br i1 false, label %182, label %183, !prof !45, !nosanitize !44

182:                                              ; preds = %178
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

183:                                              ; preds = %178
  %184 = extractvalue { i64, i1 } %180, 0, !nosanitize !44
  %185 = lshr i64 %1, 14
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 %185), !nosanitize !44
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !44
  br i1 false, label %188, label %189, !prof !45, !nosanitize !44

188:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

189:                                              ; preds = %183
  %190 = extractvalue { i64, i1 } %186, 0, !nosanitize !44
  %191 = lshr i64 %1, 25
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 %191), !nosanitize !44
  %193 = extractvalue { i64, i1 } %192, 1, !nosanitize !44
  br i1 false, label %194, label %195, !prof !45, !nosanitize !44

194:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

195:                                              ; preds = %189
  %196 = extractvalue { i64, i1 } %192, 0, !nosanitize !44
  %197 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %196, i64 13), !nosanitize !44
  %198 = extractvalue { i64, i1 } %197, 1, !nosanitize !44
  br i1 false, label %199, label %200, !prof !45, !nosanitize !44

199:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

200:                                              ; preds = %195
  %201 = extractvalue { i64, i1 } %197, 0, !nosanitize !44
  %202 = add i64 %201, -6
  %203 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %202, i64 %157), !nosanitize !44
  %204 = extractvalue { i64, i1 } %203, 1, !nosanitize !44
  br i1 %204, label %205, label %206, !prof !45, !nosanitize !44

205:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

206:                                              ; preds = %200
  %207 = extractvalue { i64, i1 } %203, 0, !nosanitize !44
  %208 = icmp ult i64 %207, %1
  %209 = select i1 %208, i64 -1, i64 %207
  br label %210

210:                                              ; preds = %206, %172, %72
  %211 = phi i64 [ %209, %206 ], [ %75, %72 ], [ %175, %172 ]
  ret i64 %211
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %3) #8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc nuw i64 %9 to i32
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %9, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !95
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %9
  store ptr %18, ptr %13, align 8, !tbaa !95
  %19 = load ptr, ptr %15, align 8, !tbaa !56
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  store ptr %20, ptr %15, align 8, !tbaa !56
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8, !tbaa !97
  %23 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 %9), !nosanitize !44
  %24 = extractvalue { i64, i1 } %23, 1, !nosanitize !44
  br i1 %24, label %25, label %26, !prof !45, !nosanitize !44

25:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

26:                                               ; preds = %12
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !44
  store i64 %27, ptr %21, align 8, !tbaa !97
  %28 = load i32, ptr %6, align 8, !tbaa !96
  %29 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %10), !nosanitize !44
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !44
  br i1 %30, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !44
  store i32 %33, ptr %6, align 8, !tbaa !96
  %34 = load i64, ptr %4, align 8, !tbaa !55
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %9), !nosanitize !44
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !44
  br i1 %36, label %37, label %38, !prof !45, !nosanitize !44

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  %28 = load i32, ptr %18, align 4, !tbaa !90
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 42), !nosanitize !44
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !44
  br i1 %30, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %27
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !44
  %34 = lshr i32 %33, 3
  %35 = load ptr, ptr %0, align 8, !tbaa !19
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = load i32, ptr %36, align 8, !tbaa !96
  %38 = icmp ult i32 %37, %34
  br i1 %38, label %277, label %39

39:                                               ; preds = %32
  %40 = sub nuw i32 %37, %34
  %41 = load i32, ptr %19, align 4, !tbaa !71
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %20, align 8, !tbaa !72
  %44 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %42, i64 %43), !nosanitize !44
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !44
  br i1 %45, label %46, label %47, !prof !45, !nosanitize !44

46:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  br i1 false, label %59, label %60, !prof !45, !nosanitize !44

59:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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
  br i1 %69, label %277, label %70

70:                                               ; preds = %66
  %71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !44
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !44
  br i1 %72, label %73, label %74, !prof !45, !nosanitize !44

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

74:                                               ; preds = %70
  %75 = extractvalue { i32, i1 } %71, 0, !nosanitize !44
  %76 = icmp eq i32 %64, %75
  br i1 %76, label %77, label %277

77:                                               ; preds = %74, %62
  br i1 %23, label %78, label %86

78:                                               ; preds = %77
  %79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !44
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !44
  br i1 %80, label %81, label %82, !prof !45, !nosanitize !44

81:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

82:                                               ; preds = %78
  %83 = extractvalue { i32, i1 } %79, 0, !nosanitize !44
  %84 = icmp eq i32 %64, %83
  %85 = zext i1 %84 to i32
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi i32 [ 0, %77 ], [ %85, %82 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %87) #8
  %88 = load i64, ptr %25, align 8, !tbaa !55
  %89 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %88, i64 4), !nosanitize !44
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !44
  br i1 %90, label %91, label %92, !prof !45, !nosanitize !44

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  tail call void @_tr_flush_bits(ptr noundef %129) #8
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 40
  %131 = load i64, ptr %130, align 8, !tbaa !55
  %132 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %133 = load i32, ptr %132, align 8, !tbaa !96
  %134 = zext i32 %133 to i64
  %135 = tail call i64 @llvm.umin.i64(i64 %131, i64 %134)
  %136 = trunc nuw i64 %135 to i32
  %137 = icmp eq i64 %135, 0
  br i1 %137, label %170, label %138

138:                                              ; preds = %121
  %139 = getelementptr inbounds nuw i8, ptr %127, i64 24
  %140 = load ptr, ptr %139, align 8, !tbaa !95
  %141 = getelementptr inbounds nuw i8, ptr %129, i64 32
  %142 = load ptr, ptr %141, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %140, ptr align 1 %142, i64 %135, i1 false)
  %143 = load ptr, ptr %139, align 8, !tbaa !95
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 %135
  store ptr %144, ptr %139, align 8, !tbaa !95
  %145 = load ptr, ptr %141, align 8, !tbaa !56
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 %135
  store ptr %146, ptr %141, align 8, !tbaa !56
  %147 = getelementptr inbounds nuw i8, ptr %127, i64 40
  %148 = load i64, ptr %147, align 8, !tbaa !97
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %148, i64 %135), !nosanitize !44
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !44
  br i1 %150, label %151, label %152, !prof !45, !nosanitize !44

151:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

152:                                              ; preds = %138
  %153 = extractvalue { i64, i1 } %149, 0, !nosanitize !44
  store i64 %153, ptr %147, align 8, !tbaa !97
  %154 = load i32, ptr %132, align 8, !tbaa !96
  %155 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %154, i32 %136), !nosanitize !44
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !44
  br i1 %156, label %157, label %158, !prof !45, !nosanitize !44

157:                                              ; preds = %152
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

158:                                              ; preds = %152
  %159 = extractvalue { i32, i1 } %155, 0, !nosanitize !44
  store i32 %159, ptr %132, align 8, !tbaa !96
  %160 = load i64, ptr %130, align 8, !tbaa !55
  %161 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %160, i64 %135), !nosanitize !44
  %162 = extractvalue { i64, i1 } %161, 1, !nosanitize !44
  br i1 %162, label %163, label %164, !prof !45, !nosanitize !44

163:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  %176 = load ptr, ptr %175, align 8, !tbaa !95
  %177 = load ptr, ptr %26, align 8, !tbaa !34
  %178 = load i64, ptr %20, align 8, !tbaa !72
  %179 = getelementptr inbounds i8, ptr %177, i64 %178
  %180 = zext i32 %173 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %176, ptr align 1 %179, i64 %180, i1 false)
  %181 = load ptr, ptr %0, align 8, !tbaa !19
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 24
  %183 = load ptr, ptr %182, align 8, !tbaa !95
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 %180
  store ptr %184, ptr %182, align 8, !tbaa !95
  %185 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %186 = load i32, ptr %185, align 8, !tbaa !96
  %187 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %186, i32 %173), !nosanitize !44
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !44
  br i1 %188, label %189, label %190, !prof !45, !nosanitize !44

189:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

190:                                              ; preds = %172
  %191 = extractvalue { i32, i1 } %187, 0, !nosanitize !44
  store i32 %191, ptr %185, align 8, !tbaa !96
  %192 = getelementptr inbounds nuw i8, ptr %181, i64 40
  %193 = load i64, ptr %192, align 8, !tbaa !97
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 %180), !nosanitize !44
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !44
  br i1 %195, label %196, label %197, !prof !45, !nosanitize !44

196:                                              ; preds = %197, %190
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

197:                                              ; preds = %190
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !44
  store i64 %198, ptr %192, align 8, !tbaa !97
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  %215 = load ptr, ptr %214, align 8, !tbaa !95
  %216 = getelementptr inbounds nuw i8, ptr %213, i64 8
  %217 = load i32, ptr %216, align 8, !tbaa !79
  %218 = tail call i32 @llvm.umin.i32(i32 %217, i32 %210)
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %253, label %220

220:                                              ; preds = %212
  %221 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %217, i32 %218), !nosanitize !44
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !44
  br i1 false, label %223, label %224, !prof !45, !nosanitize !44

223:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  %235 = tail call i64 @adler32(i64 noundef %234, ptr noundef %215, i32 noundef %218) #8
  store i64 %235, ptr %233, align 8, !tbaa !57
  br label %240

236:                                              ; preds = %224
  %237 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %238 = load i64, ptr %237, align 8, !tbaa !57
  %239 = tail call i64 @crc32(i64 noundef %238, ptr noundef %215, i32 noundef %218) #8
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

248:                                              ; preds = %240
  %249 = extractvalue { i64, i1 } %245, 0, !nosanitize !44
  store i64 %249, ptr %243, align 8, !tbaa !53
  %250 = load ptr, ptr %0, align 8, !tbaa !19
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 24
  %252 = load ptr, ptr %251, align 8, !tbaa !95
  br label %253

253:                                              ; preds = %248, %212
  %254 = phi ptr [ %215, %212 ], [ %252, %248 ]
  %255 = phi ptr [ %213, %212 ], [ %250, %248 ]
  %256 = getelementptr inbounds nuw i8, ptr %255, i64 24
  %257 = zext i32 %210 to i64
  %258 = getelementptr inbounds nuw i8, ptr %254, i64 %257
  store ptr %258, ptr %256, align 8, !tbaa !95
  %259 = getelementptr inbounds nuw i8, ptr %255, i64 32
  %260 = load i32, ptr %259, align 8, !tbaa !96
  %261 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %260, i32 %210), !nosanitize !44
  %262 = extractvalue { i32, i1 } %261, 1, !nosanitize !44
  br i1 %262, label %263, label %264, !prof !45, !nosanitize !44

263:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

264:                                              ; preds = %253
  %265 = extractvalue { i32, i1 } %261, 0, !nosanitize !44
  store i32 %265, ptr %259, align 8, !tbaa !96
  %266 = getelementptr inbounds nuw i8, ptr %255, i64 40
  %267 = load i64, ptr %266, align 8, !tbaa !97
  %268 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %267, i64 %257), !nosanitize !44
  %269 = extractvalue { i64, i1 } %268, 1, !nosanitize !44
  br i1 %269, label %270, label %271, !prof !45, !nosanitize !44

270:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

271:                                              ; preds = %264
  %272 = extractvalue { i64, i1 } %268, 0, !nosanitize !44
  store i64 %272, ptr %266, align 8, !tbaa !97
  br label %273

273:                                              ; preds = %271, %209
  %274 = icmp eq i32 %87, 0
  br i1 %274, label %27, label %275, !llvm.loop !117

275:                                              ; preds = %273
  %276 = load ptr, ptr %0, align 8, !tbaa !19
  br label %277, !llvm.loop !117

277:                                              ; preds = %275, %74, %66, %32
  %278 = phi ptr [ %276, %275 ], [ %35, %32 ], [ %35, %66 ], [ %35, %74 ]
  %279 = phi i1 [ false, %275 ], [ true, %32 ], [ true, %66 ], [ true, %74 ]
  %280 = getelementptr inbounds nuw i8, ptr %278, i64 8
  %281 = load i32, ptr %280, align 8, !tbaa !79
  %282 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %281), !nosanitize !44
  %283 = extractvalue { i32, i1 } %282, 0, !nosanitize !44
  %284 = extractvalue { i32, i1 } %282, 1, !nosanitize !44
  br i1 %284, label %285, label %286, !prof !45, !nosanitize !44

285:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

286:                                              ; preds = %277
  %287 = icmp eq i32 %283, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %286
  %289 = load i32, ptr %19, align 4, !tbaa !71
  %290 = zext i32 %289 to i64
  br label %368

291:                                              ; preds = %286
  %292 = load i32, ptr %10, align 8, !tbaa !31
  %293 = icmp ult i32 %283, %292
  br i1 %293, label %303, label %294

294:                                              ; preds = %291
  %295 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %295, align 8, !tbaa !114
  %296 = load ptr, ptr %26, align 8, !tbaa !34
  %297 = load ptr, ptr %278, align 8, !tbaa !80
  %298 = zext i32 %292 to i64
  %299 = sub nsw i64 0, %298
  %300 = getelementptr inbounds i8, ptr %297, i64 %299
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %296, ptr align 1 %300, i64 %298, i1 false)
  %301 = load i32, ptr %10, align 8, !tbaa !31
  store i32 %301, ptr %19, align 4, !tbaa !71
  %302 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %301, ptr %302, align 4, !tbaa !74
  br label %365

303:                                              ; preds = %291
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %305 = load i64, ptr %304, align 8, !tbaa !59
  %306 = load i32, ptr %19, align 4, !tbaa !71
  %307 = zext i32 %306 to i64
  %308 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %305, i64 %307), !nosanitize !44
  %309 = extractvalue { i64, i1 } %308, 1, !nosanitize !44
  br i1 %309, label %310, label %311, !prof !45, !nosanitize !44

310:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

311:                                              ; preds = %303
  %312 = extractvalue { i64, i1 } %308, 0, !nosanitize !44
  %313 = zext i32 %283 to i64
  %314 = icmp ugt i64 %312, %313
  br i1 %314, label %336, label %315

315:                                              ; preds = %311
  %316 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %306, i32 %292), !nosanitize !44
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !44
  br i1 %317, label %318, label %319, !prof !45, !nosanitize !44

318:                                              ; preds = %315
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

319:                                              ; preds = %315
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !44
  store i32 %320, ptr %19, align 4, !tbaa !71
  %321 = load ptr, ptr %26, align 8, !tbaa !34
  %322 = zext i32 %292 to i64
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 %322
  %324 = zext i32 %320 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %321, ptr nonnull align 1 %323, i64 %324, i1 false)
  %325 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %326 = load i32, ptr %325, align 8, !tbaa !114
  %327 = icmp ult i32 %326, 2
  br i1 %327, label %328, label %330

328:                                              ; preds = %319
  %329 = add nuw nsw i32 %326, 1
  store i32 %329, ptr %325, align 8, !tbaa !114
  br label %330

330:                                              ; preds = %328, %319
  %331 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %332 = load i32, ptr %331, align 4, !tbaa !74
  %333 = load i32, ptr %19, align 4, !tbaa !71
  %334 = icmp ugt i32 %332, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  store i32 %333, ptr %331, align 4, !tbaa !74
  br label %336

336:                                              ; preds = %335, %330, %311
  %337 = phi i32 [ %333, %330 ], [ %333, %335 ], [ %306, %311 ]
  %338 = load ptr, ptr %26, align 8, !tbaa !34
  %339 = zext i32 %337 to i64
  %340 = getelementptr inbounds nuw i8, ptr %338, i64 %339
  %341 = load ptr, ptr %0, align 8, !tbaa !19
  %342 = load ptr, ptr %341, align 8, !tbaa !80
  %343 = sub nsw i64 0, %313
  %344 = getelementptr inbounds i8, ptr %342, i64 %343
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %340, ptr nonnull align 1 %344, i64 %313, i1 false)
  %345 = load i32, ptr %19, align 4, !tbaa !71
  %346 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %345, i32 %283), !nosanitize !44
  %347 = extractvalue { i32, i1 } %346, 1, !nosanitize !44
  br i1 %347, label %348, label %349, !prof !45, !nosanitize !44

348:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

349:                                              ; preds = %336
  %350 = extractvalue { i32, i1 } %346, 0, !nosanitize !44
  store i32 %350, ptr %19, align 4, !tbaa !71
  %351 = load i32, ptr %10, align 8, !tbaa !31
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %353 = load i32, ptr %352, align 4, !tbaa !74
  %354 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %351, i32 %353), !nosanitize !44
  %355 = extractvalue { i32, i1 } %354, 1, !nosanitize !44
  br i1 %355, label %356, label %357, !prof !45, !nosanitize !44

356:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

357:                                              ; preds = %349
  %358 = extractvalue { i32, i1 } %354, 0, !nosanitize !44
  %359 = tail call i32 @llvm.umin.i32(i32 %283, i32 %358)
  %360 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %353, i32 %359), !nosanitize !44
  %361 = extractvalue { i32, i1 } %360, 1, !nosanitize !44
  br i1 %361, label %362, label %363, !prof !45, !nosanitize !44

362:                                              ; preds = %357
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

363:                                              ; preds = %357
  %364 = extractvalue { i32, i1 } %360, 0, !nosanitize !44
  store i32 %364, ptr %352, align 4, !tbaa !74
  br label %365

365:                                              ; preds = %363, %294
  %366 = phi i32 [ %350, %363 ], [ %301, %294 ]
  %367 = zext i32 %366 to i64
  store i64 %367, ptr %20, align 8, !tbaa !72
  br label %368

368:                                              ; preds = %365, %288
  %369 = phi i64 [ %290, %288 ], [ %367, %365 ]
  %370 = phi i32 [ %289, %288 ], [ %366, %365 ]
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %372 = load i64, ptr %371, align 8, !tbaa !38
  %373 = icmp ult i64 %372, %369
  br i1 %373, label %374, label %375

374:                                              ; preds = %368
  store i64 %369, ptr %371, align 8, !tbaa !38
  br label %375

375:                                              ; preds = %374, %368
  br i1 %279, label %376, label %599

376:                                              ; preds = %375
  %377 = icmp ne i32 %1, 0
  switch i32 %1, label %378 [
    i32 4, label %386
    i32 0, label %386
  ]

378:                                              ; preds = %376
  %379 = load ptr, ptr %0, align 8, !tbaa !19
  %380 = getelementptr inbounds nuw i8, ptr %379, i64 8
  %381 = load i32, ptr %380, align 8, !tbaa !79
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %378
  %384 = load i64, ptr %20, align 8, !tbaa !72
  %385 = icmp eq i64 %384, %369
  br i1 %385, label %602, label %386

386:                                              ; preds = %383, %378, %376, %376
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %388 = load i64, ptr %387, align 8, !tbaa !59
  %389 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %388, i64 %369), !nosanitize !44
  %390 = extractvalue { i64, i1 } %389, 1, !nosanitize !44
  br i1 %390, label %391, label %392, !prof !45, !nosanitize !44

391:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

392:                                              ; preds = %386
  %393 = extractvalue { i64, i1 } %389, 0, !nosanitize !44
  %394 = trunc i64 %393 to i32
  %395 = load ptr, ptr %0, align 8, !tbaa !19
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 8
  %397 = load i32, ptr %396, align 8, !tbaa !79
  %398 = icmp ugt i32 %397, %394
  br i1 %398, label %399, label %431

399:                                              ; preds = %392
  %400 = load i64, ptr %20, align 8, !tbaa !72
  %401 = load i32, ptr %10, align 8, !tbaa !31
  %402 = zext i32 %401 to i64
  %403 = icmp slt i64 %400, %402
  br i1 %403, label %431, label %404

404:                                              ; preds = %399
  %405 = sub nsw i64 %400, %402
  store i64 %405, ptr %20, align 8, !tbaa !72
  %406 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %370, i32 %401), !nosanitize !44
  %407 = extractvalue { i32, i1 } %406, 1, !nosanitize !44
  br i1 %407, label %408, label %409, !prof !45, !nosanitize !44

408:                                              ; preds = %404
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

409:                                              ; preds = %404
  %410 = extractvalue { i32, i1 } %406, 0, !nosanitize !44
  store i32 %410, ptr %19, align 4, !tbaa !71
  %411 = load ptr, ptr %26, align 8, !tbaa !34
  %412 = getelementptr inbounds nuw i8, ptr %411, i64 %402
  %413 = zext i32 %410 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %411, ptr align 1 %412, i64 %413, i1 false)
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %415 = load i32, ptr %414, align 8, !tbaa !114
  %416 = icmp ult i32 %415, 2
  br i1 %416, label %417, label %419

417:                                              ; preds = %409
  %418 = add nuw nsw i32 %415, 1
  store i32 %418, ptr %414, align 8, !tbaa !114
  br label %419

419:                                              ; preds = %417, %409
  %420 = load i32, ptr %10, align 8, !tbaa !31
  %421 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %394, i32 %420), !nosanitize !44
  %422 = extractvalue { i32, i1 } %421, 0, !nosanitize !44
  %423 = extractvalue { i32, i1 } %421, 1, !nosanitize !44
  br i1 %423, label %424, label %425, !prof !45, !nosanitize !44

424:                                              ; preds = %419
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

425:                                              ; preds = %419
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %427 = load i32, ptr %426, align 4, !tbaa !74
  %428 = load i32, ptr %19, align 4, !tbaa !71
  %429 = icmp ugt i32 %427, %428
  br i1 %429, label %430, label %431

430:                                              ; preds = %425
  store i32 %428, ptr %426, align 4, !tbaa !74
  br label %431

431:                                              ; preds = %430, %425, %399, %392
  %432 = phi i32 [ %428, %430 ], [ %428, %425 ], [ %370, %399 ], [ %370, %392 ]
  %433 = phi i32 [ %422, %430 ], [ %422, %425 ], [ %394, %399 ], [ %394, %392 ]
  %434 = load ptr, ptr %0, align 8, !tbaa !19
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 8
  %436 = load i32, ptr %435, align 8, !tbaa !79
  %437 = tail call i32 @llvm.umin.i32(i32 %433, i32 %436)
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %492, label %439

439:                                              ; preds = %431
  %440 = load ptr, ptr %26, align 8, !tbaa !34
  %441 = zext i32 %432 to i64
  %442 = getelementptr inbounds nuw i8, ptr %440, i64 %441
  %443 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %436, i32 %437), !nosanitize !44
  %444 = extractvalue { i32, i1 } %443, 1, !nosanitize !44
  br i1 false, label %445, label %446, !prof !45, !nosanitize !44

445:                                              ; preds = %439
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

446:                                              ; preds = %439
  %447 = extractvalue { i32, i1 } %443, 0, !nosanitize !44
  store i32 %447, ptr %435, align 8, !tbaa !79
  %448 = load ptr, ptr %434, align 8, !tbaa !80
  %449 = zext i32 %437 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %442, ptr align 1 %448, i64 %449, i1 false)
  %450 = getelementptr inbounds nuw i8, ptr %434, i64 56
  %451 = load ptr, ptr %450, align 8, !tbaa !18
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 48
  %453 = load i32, ptr %452, align 8, !tbaa !29
  switch i32 %453, label %462 [
    i32 1, label %454
    i32 2, label %458
  ]

454:                                              ; preds = %446
  %455 = getelementptr inbounds nuw i8, ptr %434, i64 96
  %456 = load i64, ptr %455, align 8, !tbaa !57
  %457 = tail call i64 @adler32(i64 noundef %456, ptr noundef %442, i32 noundef %437) #8
  store i64 %457, ptr %455, align 8, !tbaa !57
  br label %462

458:                                              ; preds = %446
  %459 = getelementptr inbounds nuw i8, ptr %434, i64 96
  %460 = load i64, ptr %459, align 8, !tbaa !57
  %461 = tail call i64 @crc32(i64 noundef %460, ptr noundef %442, i32 noundef %437) #8
  store i64 %461, ptr %459, align 8, !tbaa !57
  br label %462

462:                                              ; preds = %458, %454, %446
  %463 = load ptr, ptr %434, align 8, !tbaa !80
  %464 = getelementptr inbounds nuw i8, ptr %463, i64 %449
  store ptr %464, ptr %434, align 8, !tbaa !80
  %465 = getelementptr inbounds nuw i8, ptr %434, i64 16
  %466 = load i64, ptr %465, align 8, !tbaa !53
  %467 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %466, i64 %449), !nosanitize !44
  %468 = extractvalue { i64, i1 } %467, 1, !nosanitize !44
  br i1 %468, label %469, label %470, !prof !45, !nosanitize !44

469:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

470:                                              ; preds = %462
  %471 = extractvalue { i64, i1 } %467, 0, !nosanitize !44
  store i64 %471, ptr %465, align 8, !tbaa !53
  %472 = load i32, ptr %19, align 4, !tbaa !71
  %473 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %472, i32 %437), !nosanitize !44
  %474 = extractvalue { i32, i1 } %473, 1, !nosanitize !44
  br i1 %474, label %475, label %476, !prof !45, !nosanitize !44

475:                                              ; preds = %470
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

476:                                              ; preds = %470
  %477 = extractvalue { i32, i1 } %473, 0, !nosanitize !44
  store i32 %477, ptr %19, align 4, !tbaa !71
  %478 = load i32, ptr %10, align 8, !tbaa !31
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %480 = load i32, ptr %479, align 4, !tbaa !74
  %481 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %478, i32 %480), !nosanitize !44
  %482 = extractvalue { i32, i1 } %481, 1, !nosanitize !44
  br i1 %482, label %483, label %484, !prof !45, !nosanitize !44

483:                                              ; preds = %476
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

484:                                              ; preds = %476
  %485 = extractvalue { i32, i1 } %481, 0, !nosanitize !44
  %486 = tail call i32 @llvm.umin.i32(i32 %437, i32 %485)
  %487 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %480, i32 %486), !nosanitize !44
  %488 = extractvalue { i32, i1 } %487, 1, !nosanitize !44
  br i1 %488, label %489, label %490, !prof !45, !nosanitize !44

489:                                              ; preds = %484
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

490:                                              ; preds = %484
  %491 = extractvalue { i32, i1 } %487, 0, !nosanitize !44
  store i32 %491, ptr %479, align 4, !tbaa !74
  br label %492

492:                                              ; preds = %490, %431
  %493 = phi i32 [ %477, %490 ], [ %432, %431 ]
  %494 = load i64, ptr %371, align 8, !tbaa !38
  %495 = zext i32 %493 to i64
  %496 = icmp ult i64 %494, %495
  br i1 %496, label %497, label %498

497:                                              ; preds = %492
  store i64 %495, ptr %371, align 8, !tbaa !38
  br label %498

498:                                              ; preds = %497, %492
  %499 = load i32, ptr %18, align 4, !tbaa !90
  %500 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %499, i32 42), !nosanitize !44
  %501 = extractvalue { i32, i1 } %500, 1, !nosanitize !44
  br i1 %501, label %502, label %503, !prof !45, !nosanitize !44

502:                                              ; preds = %544, %498
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

503:                                              ; preds = %498
  %504 = extractvalue { i32, i1 } %500, 0, !nosanitize !44
  %505 = lshr i32 %504, 3
  %506 = load i64, ptr %3, align 8, !tbaa !41
  %507 = zext nneg i32 %505 to i64
  %508 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %506, i64 %507), !nosanitize !44
  %509 = extractvalue { i64, i1 } %508, 1, !nosanitize !44
  br i1 %509, label %510, label %511, !prof !45, !nosanitize !44

510:                                              ; preds = %503
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

511:                                              ; preds = %503
  %512 = extractvalue { i64, i1 } %508, 0, !nosanitize !44
  %513 = tail call i64 @llvm.umin.i64(i64 %512, i64 65535)
  %514 = trunc nuw nsw i64 %513 to i32
  %515 = load i64, ptr %20, align 8, !tbaa !72
  %516 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %495, i64 %515), !nosanitize !44
  %517 = extractvalue { i64, i1 } %516, 1, !nosanitize !44
  br i1 %517, label %518, label %519, !prof !45, !nosanitize !44

518:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

519:                                              ; preds = %511
  %520 = load i32, ptr %10, align 8, !tbaa !31
  %521 = tail call i32 @llvm.umin.i32(i32 %520, i32 %514)
  %522 = extractvalue { i64, i1 } %516, 0, !nosanitize !44
  %523 = trunc i64 %522 to i32
  %524 = icmp ugt i32 %521, %523
  br i1 %524, label %525, label %534

525:                                              ; preds = %519
  %526 = icmp ne i32 %523, 0
  %527 = or i1 %23, %526
  %528 = and i1 %377, %527
  br i1 %528, label %529, label %602

529:                                              ; preds = %525
  %530 = load ptr, ptr %0, align 8, !tbaa !19
  %531 = getelementptr inbounds nuw i8, ptr %530, i64 8
  %532 = load i32, ptr %531, align 8, !tbaa !79
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %602

534:                                              ; preds = %529, %519
  %535 = tail call i32 @llvm.umin.i32(i32 %514, i32 %523)
  br i1 %23, label %536, label %544

536:                                              ; preds = %534
  %537 = load ptr, ptr %0, align 8, !tbaa !19
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 8
  %539 = load i32, ptr %538, align 8, !tbaa !79
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %544

541:                                              ; preds = %536
  %542 = icmp uge i32 %514, %523
  %543 = zext i1 %542 to i32
  br label %544

544:                                              ; preds = %541, %536, %534
  %545 = phi i32 [ 0, %536 ], [ 0, %534 ], [ %543, %541 ]
  %546 = load ptr, ptr %26, align 8, !tbaa !34
  %547 = getelementptr inbounds i8, ptr %546, i64 %515
  %548 = zext nneg i32 %535 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %547, i64 noundef %548, i32 noundef %545) #8
  %549 = load i64, ptr %20, align 8, !tbaa !72
  %550 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %549, i64 %548), !nosanitize !44
  %551 = extractvalue { i64, i1 } %550, 1, !nosanitize !44
  br i1 %551, label %502, label %552, !prof !45, !nosanitize !44

552:                                              ; preds = %544
  %553 = extractvalue { i64, i1 } %550, 0, !nosanitize !44
  store i64 %553, ptr %20, align 8, !tbaa !72
  %554 = load ptr, ptr %0, align 8, !tbaa !19
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 56
  %556 = load ptr, ptr %555, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %556) #8
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 40
  %558 = load i64, ptr %557, align 8, !tbaa !55
  %559 = getelementptr inbounds nuw i8, ptr %554, i64 32
  %560 = load i32, ptr %559, align 8, !tbaa !96
  %561 = zext i32 %560 to i64
  %562 = tail call i64 @llvm.umin.i64(i64 %558, i64 %561)
  %563 = trunc nuw i64 %562 to i32
  %564 = icmp eq i64 %562, 0
  br i1 %564, label %597, label %565

565:                                              ; preds = %552
  %566 = getelementptr inbounds nuw i8, ptr %554, i64 24
  %567 = load ptr, ptr %566, align 8, !tbaa !95
  %568 = getelementptr inbounds nuw i8, ptr %556, i64 32
  %569 = load ptr, ptr %568, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %567, ptr align 1 %569, i64 %562, i1 false)
  %570 = load ptr, ptr %566, align 8, !tbaa !95
  %571 = getelementptr inbounds nuw i8, ptr %570, i64 %562
  store ptr %571, ptr %566, align 8, !tbaa !95
  %572 = load ptr, ptr %568, align 8, !tbaa !56
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 %562
  store ptr %573, ptr %568, align 8, !tbaa !56
  %574 = getelementptr inbounds nuw i8, ptr %554, i64 40
  %575 = load i64, ptr %574, align 8, !tbaa !97
  %576 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %575, i64 %562), !nosanitize !44
  %577 = extractvalue { i64, i1 } %576, 1, !nosanitize !44
  br i1 %577, label %578, label %579, !prof !45, !nosanitize !44

578:                                              ; preds = %565
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

579:                                              ; preds = %565
  %580 = extractvalue { i64, i1 } %576, 0, !nosanitize !44
  store i64 %580, ptr %574, align 8, !tbaa !97
  %581 = load i32, ptr %559, align 8, !tbaa !96
  %582 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %581, i32 %563), !nosanitize !44
  %583 = extractvalue { i32, i1 } %582, 1, !nosanitize !44
  br i1 %583, label %584, label %585, !prof !45, !nosanitize !44

584:                                              ; preds = %579
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

585:                                              ; preds = %579
  %586 = extractvalue { i32, i1 } %582, 0, !nosanitize !44
  store i32 %586, ptr %559, align 8, !tbaa !96
  %587 = load i64, ptr %557, align 8, !tbaa !55
  %588 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %587, i64 %562), !nosanitize !44
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !44
  br i1 %589, label %590, label %591, !prof !45, !nosanitize !44

590:                                              ; preds = %585
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

591:                                              ; preds = %585
  %592 = extractvalue { i64, i1 } %588, 0, !nosanitize !44
  store i64 %592, ptr %557, align 8, !tbaa !55
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %597

594:                                              ; preds = %591
  %595 = getelementptr inbounds nuw i8, ptr %556, i64 16
  %596 = load ptr, ptr %595, align 8, !tbaa !40
  store ptr %596, ptr %568, align 8, !tbaa !56
  br label %597

597:                                              ; preds = %594, %591, %552
  %598 = icmp eq i32 %545, 0
  br i1 %598, label %602, label %599

599:                                              ; preds = %597, %375
  %600 = phi i32 [ 3, %375 ], [ 2, %597 ]
  %601 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %601, align 8, !tbaa !91
  br label %602

602:                                              ; preds = %599, %597, %529, %525, %383
  %603 = phi i32 [ 1, %383 ], [ 0, %597 ], [ 0, %525 ], [ 0, %529 ], [ %600, %599 ]
  ret i32 %603
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

25:                                               ; preds = %430, %2
  %26 = load i32, ptr %3, align 4, !tbaa !73
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %314

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 8, !tbaa !31
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %260, %28
  %32 = phi i32 [ %187, %260 ], [ 0, %28 ]
  %33 = load i64, ptr %5, align 8, !tbaa !59
  %34 = zext nneg i32 %32 to i64
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %33, i64 %34), !nosanitize !44
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !44
  br i1 %36, label %37, label %38, !prof !45, !nosanitize !44

37:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

38:                                               ; preds = %31
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !44
  %40 = load i32, ptr %6, align 4, !tbaa !71
  %41 = zext i32 %40 to i64
  %42 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %39, i64 %41), !nosanitize !44
  %43 = extractvalue { i64, i1 } %42, 1, !nosanitize !44
  br i1 %43, label %44, label %45, !prof !45, !nosanitize !44

44:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

45:                                               ; preds = %38
  %46 = extractvalue { i64, i1 } %42, 0, !nosanitize !44
  %47 = trunc i64 %46 to i32
  %48 = load i32, ptr %4, align 8, !tbaa !31
  %49 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %48, i32 262), !nosanitize !44
  %50 = extractvalue { i32, i1 } %49, 1, !nosanitize !44
  br i1 %50, label %51, label %52, !prof !45, !nosanitize !44

51:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

52:                                               ; preds = %45
  %53 = extractvalue { i32, i1 } %49, 0, !nosanitize !44
  %54 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %29, i32 %53), !nosanitize !44
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !44
  br i1 %55, label %56, label %57, !prof !45, !nosanitize !44

56:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

57:                                               ; preds = %52
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !44
  %59 = icmp ult i32 %40, %58
  br i1 %59, label %134, label %60

60:                                               ; preds = %57
  %61 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %29, i32 %47), !nosanitize !44
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !44
  br i1 %62, label %63, label %64, !prof !45, !nosanitize !44

63:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

73:                                               ; preds = %64
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !44
  store i32 %74, ptr %8, align 8, !tbaa !81
  %75 = load i32, ptr %6, align 4, !tbaa !71
  %76 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %75, i32 %29), !nosanitize !44
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !44
  br i1 %77, label %78, label %79, !prof !45, !nosanitize !44

78:                                               ; preds = %79, %73
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  %94 = getelementptr inbounds nuw i16, ptr %92, i64 %93
  br label %95

95:                                               ; preds = %106, %89
  %96 = phi ptr [ %94, %89 ], [ %98, %106 ]
  %97 = phi i32 [ %91, %89 ], [ %107, %106 ]
  %98 = getelementptr inbounds i8, ptr %96, i64 -2
  %99 = load i16, ptr %98, align 2, !tbaa !60
  %100 = zext i16 %99 to i32
  %101 = tail call i32 @llvm.usub.sat.i32(i32 %100, i32 %90)
  %102 = trunc nuw i32 %101 to i16
  store i16 %102, ptr %98, align 2, !tbaa !60
  %103 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %97, i32 1), !nosanitize !44
  %104 = extractvalue { i32, i1 } %103, 1, !nosanitize !44
  br i1 %104, label %105, label %106, !prof !45, !nosanitize !44

105:                                              ; preds = %95
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

106:                                              ; preds = %95
  %107 = extractvalue { i32, i1 } %103, 0, !nosanitize !44
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %95, !llvm.loop !82

109:                                              ; preds = %106
  %110 = load ptr, ptr %13, align 8, !tbaa !35
  %111 = zext i32 %90 to i64
  %112 = getelementptr inbounds nuw i16, ptr %110, i64 %111
  br label %113

113:                                              ; preds = %124, %109
  %114 = phi ptr [ %112, %109 ], [ %116, %124 ]
  %115 = phi i32 [ %90, %109 ], [ %125, %124 ]
  %116 = getelementptr inbounds i8, ptr %114, i64 -2
  %117 = load i16, ptr %116, align 2, !tbaa !60
  %118 = zext i16 %117 to i32
  %119 = tail call i32 @llvm.usub.sat.i32(i32 %118, i32 %90)
  %120 = trunc nuw i32 %119 to i16
  store i16 %120, ptr %116, align 2, !tbaa !60
  %121 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %115, i32 1), !nosanitize !44
  %122 = extractvalue { i32, i1 } %121, 1, !nosanitize !44
  br i1 %122, label %123, label %124, !prof !45, !nosanitize !44

123:                                              ; preds = %113
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

124:                                              ; preds = %113
  %125 = extractvalue { i32, i1 } %121, 0, !nosanitize !44
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %113, !llvm.loop !84

127:                                              ; preds = %124
  store i32 1, ptr %14, align 8, !tbaa !61
  %128 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %47, i32 %29), !nosanitize !44
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !44
  br i1 %129, label %130, label %131, !prof !45, !nosanitize !44

130:                                              ; preds = %127
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

131:                                              ; preds = %127
  %132 = extractvalue { i32, i1 } %128, 0, !nosanitize !44
  %133 = load i32, ptr %3, align 4, !tbaa !73
  br label %134

134:                                              ; preds = %131, %57
  %135 = phi i32 [ %133, %131 ], [ %32, %57 ]
  %136 = phi i32 [ %80, %131 ], [ %40, %57 ]
  %137 = phi i32 [ %132, %131 ], [ %47, %57 ]
  %138 = load ptr, ptr %0, align 8, !tbaa !19
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 8
  %140 = load i32, ptr %139, align 8, !tbaa !79
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %265, label %142

142:                                              ; preds = %134
  %143 = load ptr, ptr %7, align 8, !tbaa !34
  %144 = zext i32 %136 to i64
  %145 = getelementptr inbounds nuw i8, ptr %143, i64 %144
  %146 = zext i32 %135 to i64
  %147 = getelementptr inbounds nuw i8, ptr %145, i64 %146
  %148 = tail call i32 @llvm.umin.i32(i32 %140, i32 %137)
  %149 = icmp eq i32 %137, 0
  br i1 %149, label %181, label %150

150:                                              ; preds = %142
  %151 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %140, i32 %148), !nosanitize !44
  %152 = extractvalue { i32, i1 } %151, 1, !nosanitize !44
  br i1 false, label %153, label %154, !prof !45, !nosanitize !44

153:                                              ; preds = %150
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

154:                                              ; preds = %150
  %155 = extractvalue { i32, i1 } %151, 0, !nosanitize !44
  store i32 %155, ptr %139, align 8, !tbaa !79
  %156 = load ptr, ptr %138, align 8, !tbaa !80
  %157 = zext i32 %148 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %147, ptr align 1 %156, i64 %157, i1 false)
  %158 = getelementptr inbounds nuw i8, ptr %138, i64 56
  %159 = load ptr, ptr %158, align 8, !tbaa !18
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 48
  %161 = load i32, ptr %160, align 8, !tbaa !29
  switch i32 %161, label %170 [
    i32 1, label %162
    i32 2, label %166
  ]

162:                                              ; preds = %154
  %163 = getelementptr inbounds nuw i8, ptr %138, i64 96
  %164 = load i64, ptr %163, align 8, !tbaa !57
  %165 = tail call i64 @adler32(i64 noundef %164, ptr noundef %147, i32 noundef %148) #8
  store i64 %165, ptr %163, align 8, !tbaa !57
  br label %170

166:                                              ; preds = %154
  %167 = getelementptr inbounds nuw i8, ptr %138, i64 96
  %168 = load i64, ptr %167, align 8, !tbaa !57
  %169 = tail call i64 @crc32(i64 noundef %168, ptr noundef %147, i32 noundef %148) #8
  store i64 %169, ptr %167, align 8, !tbaa !57
  br label %170

170:                                              ; preds = %166, %162, %154
  %171 = load ptr, ptr %138, align 8, !tbaa !80
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 %157
  store ptr %172, ptr %138, align 8, !tbaa !80
  %173 = getelementptr inbounds nuw i8, ptr %138, i64 16
  %174 = load i64, ptr %173, align 8, !tbaa !53
  %175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %174, i64 %157), !nosanitize !44
  %176 = extractvalue { i64, i1 } %175, 1, !nosanitize !44
  br i1 %176, label %177, label %178, !prof !45, !nosanitize !44

177:                                              ; preds = %170
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

178:                                              ; preds = %170
  %179 = extractvalue { i64, i1 } %175, 0, !nosanitize !44
  store i64 %179, ptr %173, align 8, !tbaa !53
  %180 = load i32, ptr %3, align 4, !tbaa !73
  br label %181

181:                                              ; preds = %178, %142
  %182 = phi i32 [ %135, %142 ], [ %180, %178 ]
  %183 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %182, i32 %148), !nosanitize !44
  %184 = extractvalue { i32, i1 } %183, 1, !nosanitize !44
  br i1 %184, label %185, label %186, !prof !45, !nosanitize !44

185:                                              ; preds = %181
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

186:                                              ; preds = %181
  %187 = extractvalue { i32, i1 } %183, 0, !nosanitize !44
  store i32 %187, ptr %3, align 4, !tbaa !73
  %188 = load i32, ptr %10, align 4, !tbaa !74
  %189 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %187, i32 %188), !nosanitize !44
  %190 = extractvalue { i32, i1 } %189, 1, !nosanitize !44
  br i1 %190, label %191, label %192, !prof !45, !nosanitize !44

191:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

192:                                              ; preds = %186
  %193 = extractvalue { i32, i1 } %189, 0, !nosanitize !44
  %194 = icmp ugt i32 %193, 2
  br i1 %194, label %195, label %258

195:                                              ; preds = %192
  %196 = load i32, ptr %6, align 4, !tbaa !71
  %197 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %196, i32 %188), !nosanitize !44
  %198 = extractvalue { i32, i1 } %197, 0, !nosanitize !44
  %199 = extractvalue { i32, i1 } %197, 1, !nosanitize !44
  br i1 %199, label %200, label %201, !prof !45, !nosanitize !44

200:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

201:                                              ; preds = %195
  %202 = load ptr, ptr %7, align 8, !tbaa !34
  %203 = zext i32 %198 to i64
  %204 = getelementptr inbounds nuw i8, ptr %202, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !5
  %206 = zext i8 %205 to i32
  store i32 %206, ptr %15, align 8, !tbaa !78
  %207 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %198, i32 1), !nosanitize !44
  %208 = extractvalue { i32, i1 } %207, 1, !nosanitize !44
  br i1 %208, label %209, label %210, !prof !45, !nosanitize !44

209:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

210:                                              ; preds = %201
  %211 = extractvalue { i32, i1 } %207, 0, !nosanitize !44
  %212 = load i32, ptr %16, align 8, !tbaa !52
  %213 = shl i32 %206, %212
  %214 = zext i32 %211 to i64
  %215 = getelementptr inbounds nuw i8, ptr %202, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !5
  %217 = zext i8 %216 to i32
  %218 = xor i32 %213, %217
  %219 = load i32, ptr %17, align 4, !tbaa !51
  %220 = and i32 %218, %219
  store i32 %220, ptr %15, align 8, !tbaa !78
  br label %221

221:                                              ; preds = %254, %210
  %222 = phi i32 [ %220, %210 ], [ %239, %254 ]
  %223 = phi i32 [ %188, %210 ], [ %250, %254 ]
  %224 = phi i32 [ %198, %210 ], [ %255, %254 ]
  %225 = icmp eq i32 %223, 0
  br i1 %225, label %258, label %226

226:                                              ; preds = %221
  %227 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 3), !nosanitize !44
  %228 = extractvalue { i32, i1 } %227, 1, !nosanitize !44
  br i1 %228, label %229, label %230, !prof !45, !nosanitize !44

229:                                              ; preds = %226
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

230:                                              ; preds = %226
  %231 = shl i32 %222, %212
  %232 = extractvalue { i32, i1 } %227, 0, !nosanitize !44
  %233 = add i32 %232, -1
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds nuw i8, ptr %202, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !5
  %237 = zext i8 %236 to i32
  %238 = xor i32 %231, %237
  %239 = and i32 %238, %219
  store i32 %239, ptr %15, align 8, !tbaa !78
  %240 = load ptr, ptr %12, align 8, !tbaa !37
  %241 = zext i32 %239 to i64
  %242 = getelementptr inbounds nuw i16, ptr %240, i64 %241
  %243 = load i16, ptr %242, align 2, !tbaa !60
  %244 = load ptr, ptr %13, align 8, !tbaa !35
  %245 = load i32, ptr %18, align 8, !tbaa !32
  %246 = and i32 %245, %224
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds nuw i16, ptr %244, i64 %247
  store i16 %243, ptr %248, align 2, !tbaa !60
  %249 = trunc i32 %224 to i16
  store i16 %249, ptr %242, align 2, !tbaa !60
  %250 = add i32 %223, -1
  store i32 %250, ptr %10, align 4, !tbaa !74
  %251 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %187, i32 %250), !nosanitize !44
  %252 = extractvalue { i32, i1 } %251, 1, !nosanitize !44
  br i1 %252, label %253, label %254, !prof !45, !nosanitize !44

253:                                              ; preds = %230
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

254:                                              ; preds = %230
  %255 = add nuw i32 %224, 1
  %256 = extractvalue { i32, i1 } %251, 0, !nosanitize !44
  %257 = icmp ult i32 %256, 3
  br i1 %257, label %258, label %221, !llvm.loop !85

258:                                              ; preds = %254, %221, %192
  %259 = icmp ult i32 %187, 262
  br i1 %259, label %260, label %265

260:                                              ; preds = %258
  %261 = load ptr, ptr %0, align 8, !tbaa !19
  %262 = getelementptr inbounds nuw i8, ptr %261, i64 8
  %263 = load i32, ptr %262, align 8, !tbaa !79
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %31, !llvm.loop !86

265:                                              ; preds = %260, %258, %134
  %266 = phi i32 [ %187, %260 ], [ %187, %258 ], [ %135, %134 ]
  %267 = load i64, ptr %19, align 8, !tbaa !38
  %268 = load i64, ptr %5, align 8, !tbaa !59
  %269 = icmp ult i64 %267, %268
  br i1 %269, label %270, label %309

270:                                              ; preds = %265
  %271 = load i32, ptr %6, align 4, !tbaa !71
  %272 = zext i32 %271 to i64
  %273 = zext i32 %266 to i64
  %274 = add nuw nsw i64 %273, %272
  %275 = icmp ult i64 %267, %274
  br i1 %275, label %276, label %286

276:                                              ; preds = %270
  %277 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %268, i64 %274), !nosanitize !44
  %278 = extractvalue { i64, i1 } %277, 1, !nosanitize !44
  br i1 %278, label %279, label %280, !prof !45, !nosanitize !44

279:                                              ; preds = %276
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

280:                                              ; preds = %276
  %281 = extractvalue { i64, i1 } %277, 0, !nosanitize !44
  %282 = tail call i64 @llvm.umin.i64(i64 %281, i64 258)
  %283 = load ptr, ptr %7, align 8, !tbaa !34
  %284 = getelementptr inbounds nuw i8, ptr %283, i64 %274
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %284, i8 0, i64 %282, i1 false)
  %285 = add nuw nsw i64 %282, %274
  br label %306

286:                                              ; preds = %270
  %287 = add nuw nsw i64 %274, 258
  %288 = icmp ult i64 %267, %287
  br i1 %288, label %289, label %309

289:                                              ; preds = %286
  %290 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %268, i64 %267), !nosanitize !44
  %291 = extractvalue { i64, i1 } %290, 1, !nosanitize !44
  br i1 %291, label %292, label %293, !prof !45, !nosanitize !44

292:                                              ; preds = %289
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

293:                                              ; preds = %289
  %294 = sub nuw nsw i64 %287, %267
  %295 = extractvalue { i64, i1 } %290, 0, !nosanitize !44
  %296 = tail call i64 @llvm.umin.i64(i64 %294, i64 %295)
  %297 = load ptr, ptr %7, align 8, !tbaa !34
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 %267
  %299 = and i64 %296, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %298, i8 0, i64 %299, i1 false)
  %300 = load i64, ptr %19, align 8, !tbaa !38
  %301 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %300, i64 %296), !nosanitize !44
  %302 = extractvalue { i64, i1 } %301, 1, !nosanitize !44
  br i1 %302, label %303, label %304, !prof !45, !nosanitize !44

303:                                              ; preds = %293
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

304:                                              ; preds = %293
  %305 = extractvalue { i64, i1 } %301, 0, !nosanitize !44
  br label %306

306:                                              ; preds = %304, %280
  %307 = phi i64 [ %285, %280 ], [ %305, %304 ]
  store i64 %307, ptr %19, align 8, !tbaa !38
  %308 = load i32, ptr %3, align 4, !tbaa !73
  br label %309

309:                                              ; preds = %306, %286, %265
  %310 = phi i32 [ %266, %265 ], [ %266, %286 ], [ %308, %306 ]
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %309
  %313 = icmp eq i32 %1, 0
  br i1 %313, label %568, label %431

314:                                              ; preds = %309, %25
  store i32 0, ptr %20, align 8, !tbaa !76
  %315 = load ptr, ptr %7, align 8, !tbaa !34
  %316 = load i32, ptr %6, align 4, !tbaa !71
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds nuw i8, ptr %315, i64 %317
  %319 = load i8, ptr %318, align 1, !tbaa !5
  %320 = load i32, ptr %22, align 4, !tbaa !118
  %321 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %320, i32 1), !nosanitize !44
  %322 = extractvalue { i32, i1 } %321, 1, !nosanitize !44
  br i1 %322, label %323, label %324, !prof !45, !nosanitize !44

323:                                              ; preds = %314
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

324:                                              ; preds = %314
  %325 = extractvalue { i32, i1 } %321, 0, !nosanitize !44
  %326 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %325, ptr %22, align 4, !tbaa !118
  %327 = zext i32 %320 to i64
  %328 = getelementptr inbounds nuw i8, ptr %326, i64 %327
  store i8 0, ptr %328, align 1, !tbaa !5
  %329 = load i32, ptr %22, align 4, !tbaa !118
  %330 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %329, i32 1), !nosanitize !44
  %331 = extractvalue { i32, i1 } %330, 1, !nosanitize !44
  br i1 %331, label %332, label %333, !prof !45, !nosanitize !44

332:                                              ; preds = %324
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

333:                                              ; preds = %324
  %334 = extractvalue { i32, i1 } %330, 0, !nosanitize !44
  %335 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %334, ptr %22, align 4, !tbaa !118
  %336 = zext i32 %329 to i64
  %337 = getelementptr inbounds nuw i8, ptr %335, i64 %336
  store i8 0, ptr %337, align 1, !tbaa !5
  %338 = load i32, ptr %22, align 4, !tbaa !118
  %339 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %338, i32 1), !nosanitize !44
  %340 = extractvalue { i32, i1 } %339, 1, !nosanitize !44
  br i1 %340, label %341, label %342, !prof !45, !nosanitize !44

341:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

342:                                              ; preds = %333
  %343 = extractvalue { i32, i1 } %339, 0, !nosanitize !44
  %344 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %343, ptr %22, align 4, !tbaa !118
  %345 = zext i32 %338 to i64
  %346 = getelementptr inbounds nuw i8, ptr %344, i64 %345
  store i8 %319, ptr %346, align 1, !tbaa !5
  %347 = zext i8 %319 to i64
  %348 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %23, i64 0, i64 %347
  %349 = load i16, ptr %348, align 4, !tbaa !5
  %350 = add i16 %349, 1
  store i16 %350, ptr %348, align 4, !tbaa !5
  %351 = load i32, ptr %22, align 4, !tbaa !118
  %352 = load i32, ptr %24, align 8, !tbaa !46
  %353 = icmp eq i32 %351, %352
  %354 = load i32, ptr %3, align 4, !tbaa !73
  %355 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %354, i32 1), !nosanitize !44
  %356 = extractvalue { i32, i1 } %355, 1, !nosanitize !44
  br i1 %356, label %357, label %358, !prof !45, !nosanitize !44

357:                                              ; preds = %509, %440, %373, %342
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

358:                                              ; preds = %342
  %359 = extractvalue { i32, i1 } %355, 0, !nosanitize !44
  store i32 %359, ptr %3, align 4, !tbaa !73
  %360 = load i32, ptr %6, align 4, !tbaa !71
  %361 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %360, i32 1), !nosanitize !44
  %362 = extractvalue { i32, i1 } %361, 1, !nosanitize !44
  br i1 %362, label %363, label %364, !prof !45, !nosanitize !44

363:                                              ; preds = %358
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

364:                                              ; preds = %358
  %365 = extractvalue { i32, i1 } %361, 0, !nosanitize !44
  store i32 %365, ptr %6, align 4, !tbaa !71
  br i1 %353, label %366, label %430

366:                                              ; preds = %364
  %367 = load i64, ptr %9, align 8, !tbaa !72
  %368 = icmp sgt i64 %367, -1
  br i1 %368, label %369, label %373

369:                                              ; preds = %366
  %370 = load ptr, ptr %7, align 8, !tbaa !34
  %371 = and i64 %367, 4294967295
  %372 = getelementptr inbounds nuw i8, ptr %370, i64 %371
  br label %373

373:                                              ; preds = %369, %366
  %374 = phi ptr [ %372, %369 ], [ null, %366 ]
  %375 = zext i32 %365 to i64
  %376 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %375, i64 %367), !nosanitize !44
  %377 = extractvalue { i64, i1 } %376, 1, !nosanitize !44
  br i1 %377, label %357, label %378, !prof !45, !nosanitize !44

378:                                              ; preds = %373
  %379 = extractvalue { i64, i1 } %376, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %374, i64 noundef %379, i32 noundef 0) #8
  %380 = load i32, ptr %6, align 4, !tbaa !71
  %381 = zext i32 %380 to i64
  store i64 %381, ptr %9, align 8, !tbaa !72
  %382 = load ptr, ptr %0, align 8, !tbaa !19
  %383 = getelementptr inbounds nuw i8, ptr %382, i64 56
  %384 = load ptr, ptr %383, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %384) #8
  %385 = getelementptr inbounds nuw i8, ptr %384, i64 40
  %386 = load i64, ptr %385, align 8, !tbaa !55
  %387 = getelementptr inbounds nuw i8, ptr %382, i64 32
  %388 = load i32, ptr %387, align 8, !tbaa !96
  %389 = zext i32 %388 to i64
  %390 = tail call i64 @llvm.umin.i64(i64 %386, i64 %389)
  %391 = trunc nuw i64 %390 to i32
  %392 = icmp eq i64 %390, 0
  br i1 %392, label %425, label %393

393:                                              ; preds = %378
  %394 = getelementptr inbounds nuw i8, ptr %382, i64 24
  %395 = load ptr, ptr %394, align 8, !tbaa !95
  %396 = getelementptr inbounds nuw i8, ptr %384, i64 32
  %397 = load ptr, ptr %396, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %395, ptr align 1 %397, i64 %390, i1 false)
  %398 = load ptr, ptr %394, align 8, !tbaa !95
  %399 = getelementptr inbounds nuw i8, ptr %398, i64 %390
  store ptr %399, ptr %394, align 8, !tbaa !95
  %400 = load ptr, ptr %396, align 8, !tbaa !56
  %401 = getelementptr inbounds nuw i8, ptr %400, i64 %390
  store ptr %401, ptr %396, align 8, !tbaa !56
  %402 = getelementptr inbounds nuw i8, ptr %382, i64 40
  %403 = load i64, ptr %402, align 8, !tbaa !97
  %404 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %403, i64 %390), !nosanitize !44
  %405 = extractvalue { i64, i1 } %404, 1, !nosanitize !44
  br i1 %405, label %406, label %407, !prof !45, !nosanitize !44

406:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

407:                                              ; preds = %393
  %408 = extractvalue { i64, i1 } %404, 0, !nosanitize !44
  store i64 %408, ptr %402, align 8, !tbaa !97
  %409 = load i32, ptr %387, align 8, !tbaa !96
  %410 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %409, i32 %391), !nosanitize !44
  %411 = extractvalue { i32, i1 } %410, 1, !nosanitize !44
  br i1 %411, label %412, label %413, !prof !45, !nosanitize !44

412:                                              ; preds = %407
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

413:                                              ; preds = %407
  %414 = extractvalue { i32, i1 } %410, 0, !nosanitize !44
  store i32 %414, ptr %387, align 8, !tbaa !96
  %415 = load i64, ptr %385, align 8, !tbaa !55
  %416 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %415, i64 %390), !nosanitize !44
  %417 = extractvalue { i64, i1 } %416, 1, !nosanitize !44
  br i1 %417, label %418, label %419, !prof !45, !nosanitize !44

418:                                              ; preds = %413
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

419:                                              ; preds = %413
  %420 = extractvalue { i64, i1 } %416, 0, !nosanitize !44
  store i64 %420, ptr %385, align 8, !tbaa !55
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %419
  %423 = getelementptr inbounds nuw i8, ptr %384, i64 16
  %424 = load ptr, ptr %423, align 8, !tbaa !40
  store ptr %424, ptr %396, align 8, !tbaa !56
  br label %425

425:                                              ; preds = %422, %419, %378
  %426 = load ptr, ptr %0, align 8, !tbaa !19
  %427 = getelementptr inbounds nuw i8, ptr %426, i64 32
  %428 = load i32, ptr %427, align 8, !tbaa !96
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %568, label %430

430:                                              ; preds = %425, %364
  br label %25

431:                                              ; preds = %312
  store i32 0, ptr %10, align 4, !tbaa !74
  %432 = icmp eq i32 %1, 4
  br i1 %432, label %433, label %499

433:                                              ; preds = %431
  %434 = load i64, ptr %9, align 8, !tbaa !72
  %435 = icmp sgt i64 %434, -1
  br i1 %435, label %436, label %440

436:                                              ; preds = %433
  %437 = load ptr, ptr %7, align 8, !tbaa !34
  %438 = and i64 %434, 4294967295
  %439 = getelementptr inbounds nuw i8, ptr %437, i64 %438
  br label %440

440:                                              ; preds = %436, %433
  %441 = phi ptr [ %439, %436 ], [ null, %433 ]
  %442 = load i32, ptr %6, align 4, !tbaa !71
  %443 = zext i32 %442 to i64
  %444 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %443, i64 %434), !nosanitize !44
  %445 = extractvalue { i64, i1 } %444, 1, !nosanitize !44
  br i1 %445, label %357, label %446, !prof !45, !nosanitize !44

446:                                              ; preds = %440
  %447 = extractvalue { i64, i1 } %444, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %441, i64 noundef %447, i32 noundef 1) #8
  %448 = load i32, ptr %6, align 4, !tbaa !71
  %449 = zext i32 %448 to i64
  store i64 %449, ptr %9, align 8, !tbaa !72
  %450 = load ptr, ptr %0, align 8, !tbaa !19
  %451 = getelementptr inbounds nuw i8, ptr %450, i64 56
  %452 = load ptr, ptr %451, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %452) #8
  %453 = getelementptr inbounds nuw i8, ptr %452, i64 40
  %454 = load i64, ptr %453, align 8, !tbaa !55
  %455 = getelementptr inbounds nuw i8, ptr %450, i64 32
  %456 = load i32, ptr %455, align 8, !tbaa !96
  %457 = zext i32 %456 to i64
  %458 = tail call i64 @llvm.umin.i64(i64 %454, i64 %457)
  %459 = trunc nuw i64 %458 to i32
  %460 = icmp eq i64 %458, 0
  br i1 %460, label %493, label %461

461:                                              ; preds = %446
  %462 = getelementptr inbounds nuw i8, ptr %450, i64 24
  %463 = load ptr, ptr %462, align 8, !tbaa !95
  %464 = getelementptr inbounds nuw i8, ptr %452, i64 32
  %465 = load ptr, ptr %464, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %463, ptr align 1 %465, i64 %458, i1 false)
  %466 = load ptr, ptr %462, align 8, !tbaa !95
  %467 = getelementptr inbounds nuw i8, ptr %466, i64 %458
  store ptr %467, ptr %462, align 8, !tbaa !95
  %468 = load ptr, ptr %464, align 8, !tbaa !56
  %469 = getelementptr inbounds nuw i8, ptr %468, i64 %458
  store ptr %469, ptr %464, align 8, !tbaa !56
  %470 = getelementptr inbounds nuw i8, ptr %450, i64 40
  %471 = load i64, ptr %470, align 8, !tbaa !97
  %472 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %471, i64 %458), !nosanitize !44
  %473 = extractvalue { i64, i1 } %472, 1, !nosanitize !44
  br i1 %473, label %474, label %475, !prof !45, !nosanitize !44

474:                                              ; preds = %461
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

475:                                              ; preds = %461
  %476 = extractvalue { i64, i1 } %472, 0, !nosanitize !44
  store i64 %476, ptr %470, align 8, !tbaa !97
  %477 = load i32, ptr %455, align 8, !tbaa !96
  %478 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %477, i32 %459), !nosanitize !44
  %479 = extractvalue { i32, i1 } %478, 1, !nosanitize !44
  br i1 %479, label %480, label %481, !prof !45, !nosanitize !44

480:                                              ; preds = %475
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

481:                                              ; preds = %475
  %482 = extractvalue { i32, i1 } %478, 0, !nosanitize !44
  store i32 %482, ptr %455, align 8, !tbaa !96
  %483 = load i64, ptr %453, align 8, !tbaa !55
  %484 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %483, i64 %458), !nosanitize !44
  %485 = extractvalue { i64, i1 } %484, 1, !nosanitize !44
  br i1 %485, label %486, label %487, !prof !45, !nosanitize !44

486:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

487:                                              ; preds = %481
  %488 = extractvalue { i64, i1 } %484, 0, !nosanitize !44
  store i64 %488, ptr %453, align 8, !tbaa !55
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %490, label %493

490:                                              ; preds = %487
  %491 = getelementptr inbounds nuw i8, ptr %452, i64 16
  %492 = load ptr, ptr %491, align 8, !tbaa !40
  store ptr %492, ptr %464, align 8, !tbaa !56
  br label %493

493:                                              ; preds = %490, %487, %446
  %494 = load ptr, ptr %0, align 8, !tbaa !19
  %495 = getelementptr inbounds nuw i8, ptr %494, i64 32
  %496 = load i32, ptr %495, align 8, !tbaa !96
  %497 = icmp eq i32 %496, 0
  %498 = select i1 %497, i32 2, i32 3
  br label %568

499:                                              ; preds = %431
  %500 = load i32, ptr %22, align 4, !tbaa !118
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %567, label %502

502:                                              ; preds = %499
  %503 = load i64, ptr %9, align 8, !tbaa !72
  %504 = icmp sgt i64 %503, -1
  br i1 %504, label %505, label %509

505:                                              ; preds = %502
  %506 = load ptr, ptr %7, align 8, !tbaa !34
  %507 = and i64 %503, 4294967295
  %508 = getelementptr inbounds nuw i8, ptr %506, i64 %507
  br label %509

509:                                              ; preds = %505, %502
  %510 = phi ptr [ %508, %505 ], [ null, %502 ]
  %511 = load i32, ptr %6, align 4, !tbaa !71
  %512 = zext i32 %511 to i64
  %513 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %512, i64 %503), !nosanitize !44
  %514 = extractvalue { i64, i1 } %513, 1, !nosanitize !44
  br i1 %514, label %357, label %515, !prof !45, !nosanitize !44

515:                                              ; preds = %509
  %516 = extractvalue { i64, i1 } %513, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %510, i64 noundef %516, i32 noundef 0) #8
  %517 = load i32, ptr %6, align 4, !tbaa !71
  %518 = zext i32 %517 to i64
  store i64 %518, ptr %9, align 8, !tbaa !72
  %519 = load ptr, ptr %0, align 8, !tbaa !19
  %520 = getelementptr inbounds nuw i8, ptr %519, i64 56
  %521 = load ptr, ptr %520, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %521) #8
  %522 = getelementptr inbounds nuw i8, ptr %521, i64 40
  %523 = load i64, ptr %522, align 8, !tbaa !55
  %524 = getelementptr inbounds nuw i8, ptr %519, i64 32
  %525 = load i32, ptr %524, align 8, !tbaa !96
  %526 = zext i32 %525 to i64
  %527 = tail call i64 @llvm.umin.i64(i64 %523, i64 %526)
  %528 = trunc nuw i64 %527 to i32
  %529 = icmp eq i64 %527, 0
  br i1 %529, label %562, label %530

530:                                              ; preds = %515
  %531 = getelementptr inbounds nuw i8, ptr %519, i64 24
  %532 = load ptr, ptr %531, align 8, !tbaa !95
  %533 = getelementptr inbounds nuw i8, ptr %521, i64 32
  %534 = load ptr, ptr %533, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %532, ptr align 1 %534, i64 %527, i1 false)
  %535 = load ptr, ptr %531, align 8, !tbaa !95
  %536 = getelementptr inbounds nuw i8, ptr %535, i64 %527
  store ptr %536, ptr %531, align 8, !tbaa !95
  %537 = load ptr, ptr %533, align 8, !tbaa !56
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 %527
  store ptr %538, ptr %533, align 8, !tbaa !56
  %539 = getelementptr inbounds nuw i8, ptr %519, i64 40
  %540 = load i64, ptr %539, align 8, !tbaa !97
  %541 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %540, i64 %527), !nosanitize !44
  %542 = extractvalue { i64, i1 } %541, 1, !nosanitize !44
  br i1 %542, label %543, label %544, !prof !45, !nosanitize !44

543:                                              ; preds = %530
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

544:                                              ; preds = %530
  %545 = extractvalue { i64, i1 } %541, 0, !nosanitize !44
  store i64 %545, ptr %539, align 8, !tbaa !97
  %546 = load i32, ptr %524, align 8, !tbaa !96
  %547 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %546, i32 %528), !nosanitize !44
  %548 = extractvalue { i32, i1 } %547, 1, !nosanitize !44
  br i1 %548, label %549, label %550, !prof !45, !nosanitize !44

549:                                              ; preds = %544
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

550:                                              ; preds = %544
  %551 = extractvalue { i32, i1 } %547, 0, !nosanitize !44
  store i32 %551, ptr %524, align 8, !tbaa !96
  %552 = load i64, ptr %522, align 8, !tbaa !55
  %553 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %552, i64 %527), !nosanitize !44
  %554 = extractvalue { i64, i1 } %553, 1, !nosanitize !44
  br i1 %554, label %555, label %556, !prof !45, !nosanitize !44

555:                                              ; preds = %550
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

556:                                              ; preds = %550
  %557 = extractvalue { i64, i1 } %553, 0, !nosanitize !44
  store i64 %557, ptr %522, align 8, !tbaa !55
  %558 = icmp eq i64 %557, 0
  br i1 %558, label %559, label %562

559:                                              ; preds = %556
  %560 = getelementptr inbounds nuw i8, ptr %521, i64 16
  %561 = load ptr, ptr %560, align 8, !tbaa !40
  store ptr %561, ptr %533, align 8, !tbaa !56
  br label %562

562:                                              ; preds = %559, %556, %515
  %563 = load ptr, ptr %0, align 8, !tbaa !19
  %564 = getelementptr inbounds nuw i8, ptr %563, i64 32
  %565 = load i32, ptr %564, align 8, !tbaa !96
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %568, label %567

567:                                              ; preds = %562, %499
  br label %568

568:                                              ; preds = %567, %562, %493, %425, %312
  %569 = phi i32 [ 1, %567 ], [ 0, %312 ], [ %498, %493 ], [ 0, %562 ], [ 0, %425 ]
  ret i32 %569
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
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  br label %27

27:                                               ; preds = %469, %2
  %28 = load i32, ptr %3, align 4, !tbaa !73
  %29 = icmp ult i32 %28, 259
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  store i32 0, ptr %4, align 8, !tbaa !76
  %31 = load i32, ptr %7, align 4, !tbaa !71
  br label %322

32:                                               ; preds = %27
  %33 = load i32, ptr %5, align 8, !tbaa !31
  %34 = zext i32 %33 to i64
  br label %35

35:                                               ; preds = %264, %32
  %36 = phi i32 [ %191, %264 ], [ %28, %32 ]
  %37 = load i64, ptr %6, align 8, !tbaa !59
  %38 = zext nneg i32 %36 to i64
  %39 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %37, i64 %38), !nosanitize !44
  %40 = extractvalue { i64, i1 } %39, 1, !nosanitize !44
  br i1 %40, label %41, label %42, !prof !45, !nosanitize !44

41:                                               ; preds = %35
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

42:                                               ; preds = %35
  %43 = extractvalue { i64, i1 } %39, 0, !nosanitize !44
  %44 = load i32, ptr %7, align 4, !tbaa !71
  %45 = zext i32 %44 to i64
  %46 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %43, i64 %45), !nosanitize !44
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !44
  br i1 %47, label %48, label %49, !prof !45, !nosanitize !44

48:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

49:                                               ; preds = %42
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !44
  %51 = trunc i64 %50 to i32
  %52 = load i32, ptr %5, align 8, !tbaa !31
  %53 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %52, i32 262), !nosanitize !44
  %54 = extractvalue { i32, i1 } %53, 1, !nosanitize !44
  br i1 %54, label %55, label %56, !prof !45, !nosanitize !44

55:                                               ; preds = %49
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

56:                                               ; preds = %49
  %57 = extractvalue { i32, i1 } %53, 0, !nosanitize !44
  %58 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %33, i32 %57), !nosanitize !44
  %59 = extractvalue { i32, i1 } %58, 1, !nosanitize !44
  br i1 %59, label %60, label %61, !prof !45, !nosanitize !44

60:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

61:                                               ; preds = %56
  %62 = extractvalue { i32, i1 } %58, 0, !nosanitize !44
  %63 = icmp ult i32 %44, %62
  br i1 %63, label %138, label %64

64:                                               ; preds = %61
  %65 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %33, i32 %51), !nosanitize !44
  %66 = extractvalue { i32, i1 } %65, 1, !nosanitize !44
  br i1 %66, label %67, label %68, !prof !45, !nosanitize !44

67:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

77:                                               ; preds = %68
  %78 = extractvalue { i32, i1 } %74, 0, !nosanitize !44
  store i32 %78, ptr %9, align 8, !tbaa !81
  %79 = load i32, ptr %7, align 4, !tbaa !71
  %80 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %79, i32 %33), !nosanitize !44
  %81 = extractvalue { i32, i1 } %80, 1, !nosanitize !44
  br i1 %81, label %82, label %83, !prof !45, !nosanitize !44

82:                                               ; preds = %83, %77
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  %98 = getelementptr inbounds nuw i16, ptr %96, i64 %97
  br label %99

99:                                               ; preds = %110, %93
  %100 = phi ptr [ %98, %93 ], [ %102, %110 ]
  %101 = phi i32 [ %95, %93 ], [ %111, %110 ]
  %102 = getelementptr inbounds i8, ptr %100, i64 -2
  %103 = load i16, ptr %102, align 2, !tbaa !60
  %104 = zext i16 %103 to i32
  %105 = tail call i32 @llvm.usub.sat.i32(i32 %104, i32 %94)
  %106 = trunc nuw i32 %105 to i16
  store i16 %106, ptr %102, align 2, !tbaa !60
  %107 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %101, i32 1), !nosanitize !44
  %108 = extractvalue { i32, i1 } %107, 1, !nosanitize !44
  br i1 %108, label %109, label %110, !prof !45, !nosanitize !44

109:                                              ; preds = %99
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

110:                                              ; preds = %99
  %111 = extractvalue { i32, i1 } %107, 0, !nosanitize !44
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %99, !llvm.loop !82

113:                                              ; preds = %110
  %114 = load ptr, ptr %14, align 8, !tbaa !35
  %115 = zext i32 %94 to i64
  %116 = getelementptr inbounds nuw i16, ptr %114, i64 %115
  br label %117

117:                                              ; preds = %128, %113
  %118 = phi ptr [ %116, %113 ], [ %120, %128 ]
  %119 = phi i32 [ %94, %113 ], [ %129, %128 ]
  %120 = getelementptr inbounds i8, ptr %118, i64 -2
  %121 = load i16, ptr %120, align 2, !tbaa !60
  %122 = zext i16 %121 to i32
  %123 = tail call i32 @llvm.usub.sat.i32(i32 %122, i32 %94)
  %124 = trunc nuw i32 %123 to i16
  store i16 %124, ptr %120, align 2, !tbaa !60
  %125 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %119, i32 1), !nosanitize !44
  %126 = extractvalue { i32, i1 } %125, 1, !nosanitize !44
  br i1 %126, label %127, label %128, !prof !45, !nosanitize !44

127:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

128:                                              ; preds = %117
  %129 = extractvalue { i32, i1 } %125, 0, !nosanitize !44
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %117, !llvm.loop !84

131:                                              ; preds = %128
  store i32 1, ptr %15, align 8, !tbaa !61
  %132 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %51, i32 %33), !nosanitize !44
  %133 = extractvalue { i32, i1 } %132, 1, !nosanitize !44
  br i1 %133, label %134, label %135, !prof !45, !nosanitize !44

134:                                              ; preds = %131
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

135:                                              ; preds = %131
  %136 = extractvalue { i32, i1 } %132, 0, !nosanitize !44
  %137 = load i32, ptr %3, align 4, !tbaa !73
  br label %138

138:                                              ; preds = %135, %61
  %139 = phi i32 [ %137, %135 ], [ %36, %61 ]
  %140 = phi i32 [ %84, %135 ], [ %44, %61 ]
  %141 = phi i32 [ %136, %135 ], [ %51, %61 ]
  %142 = load ptr, ptr %0, align 8, !tbaa !19
  %143 = getelementptr inbounds nuw i8, ptr %142, i64 8
  %144 = load i32, ptr %143, align 8, !tbaa !79
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %269, label %146

146:                                              ; preds = %138
  %147 = load ptr, ptr %8, align 8, !tbaa !34
  %148 = zext i32 %140 to i64
  %149 = getelementptr inbounds nuw i8, ptr %147, i64 %148
  %150 = zext i32 %139 to i64
  %151 = getelementptr inbounds nuw i8, ptr %149, i64 %150
  %152 = tail call i32 @llvm.umin.i32(i32 %144, i32 %141)
  %153 = icmp eq i32 %141, 0
  br i1 %153, label %185, label %154

154:                                              ; preds = %146
  %155 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %144, i32 %152), !nosanitize !44
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !44
  br i1 false, label %157, label %158, !prof !45, !nosanitize !44

157:                                              ; preds = %154
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

158:                                              ; preds = %154
  %159 = extractvalue { i32, i1 } %155, 0, !nosanitize !44
  store i32 %159, ptr %143, align 8, !tbaa !79
  %160 = load ptr, ptr %142, align 8, !tbaa !80
  %161 = zext i32 %152 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %151, ptr align 1 %160, i64 %161, i1 false)
  %162 = getelementptr inbounds nuw i8, ptr %142, i64 56
  %163 = load ptr, ptr %162, align 8, !tbaa !18
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 48
  %165 = load i32, ptr %164, align 8, !tbaa !29
  switch i32 %165, label %174 [
    i32 1, label %166
    i32 2, label %170
  ]

166:                                              ; preds = %158
  %167 = getelementptr inbounds nuw i8, ptr %142, i64 96
  %168 = load i64, ptr %167, align 8, !tbaa !57
  %169 = tail call i64 @adler32(i64 noundef %168, ptr noundef %151, i32 noundef %152) #8
  store i64 %169, ptr %167, align 8, !tbaa !57
  br label %174

170:                                              ; preds = %158
  %171 = getelementptr inbounds nuw i8, ptr %142, i64 96
  %172 = load i64, ptr %171, align 8, !tbaa !57
  %173 = tail call i64 @crc32(i64 noundef %172, ptr noundef %151, i32 noundef %152) #8
  store i64 %173, ptr %171, align 8, !tbaa !57
  br label %174

174:                                              ; preds = %170, %166, %158
  %175 = load ptr, ptr %142, align 8, !tbaa !80
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 %161
  store ptr %176, ptr %142, align 8, !tbaa !80
  %177 = getelementptr inbounds nuw i8, ptr %142, i64 16
  %178 = load i64, ptr %177, align 8, !tbaa !53
  %179 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %178, i64 %161), !nosanitize !44
  %180 = extractvalue { i64, i1 } %179, 1, !nosanitize !44
  br i1 %180, label %181, label %182, !prof !45, !nosanitize !44

181:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

182:                                              ; preds = %174
  %183 = extractvalue { i64, i1 } %179, 0, !nosanitize !44
  store i64 %183, ptr %177, align 8, !tbaa !53
  %184 = load i32, ptr %3, align 4, !tbaa !73
  br label %185

185:                                              ; preds = %182, %146
  %186 = phi i32 [ %139, %146 ], [ %184, %182 ]
  %187 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %186, i32 %152), !nosanitize !44
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !44
  br i1 %188, label %189, label %190, !prof !45, !nosanitize !44

189:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

190:                                              ; preds = %185
  %191 = extractvalue { i32, i1 } %187, 0, !nosanitize !44
  store i32 %191, ptr %3, align 4, !tbaa !73
  %192 = load i32, ptr %11, align 4, !tbaa !74
  %193 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %191, i32 %192), !nosanitize !44
  %194 = extractvalue { i32, i1 } %193, 1, !nosanitize !44
  br i1 %194, label %195, label %196, !prof !45, !nosanitize !44

195:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

196:                                              ; preds = %190
  %197 = extractvalue { i32, i1 } %193, 0, !nosanitize !44
  %198 = icmp ugt i32 %197, 2
  br i1 %198, label %199, label %262

199:                                              ; preds = %196
  %200 = load i32, ptr %7, align 4, !tbaa !71
  %201 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %200, i32 %192), !nosanitize !44
  %202 = extractvalue { i32, i1 } %201, 0, !nosanitize !44
  %203 = extractvalue { i32, i1 } %201, 1, !nosanitize !44
  br i1 %203, label %204, label %205, !prof !45, !nosanitize !44

204:                                              ; preds = %199
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

205:                                              ; preds = %199
  %206 = load ptr, ptr %8, align 8, !tbaa !34
  %207 = zext i32 %202 to i64
  %208 = getelementptr inbounds nuw i8, ptr %206, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !5
  %210 = zext i8 %209 to i32
  store i32 %210, ptr %16, align 8, !tbaa !78
  %211 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %202, i32 1), !nosanitize !44
  %212 = extractvalue { i32, i1 } %211, 1, !nosanitize !44
  br i1 %212, label %213, label %214, !prof !45, !nosanitize !44

213:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

214:                                              ; preds = %205
  %215 = extractvalue { i32, i1 } %211, 0, !nosanitize !44
  %216 = load i32, ptr %17, align 8, !tbaa !52
  %217 = shl i32 %210, %216
  %218 = zext i32 %215 to i64
  %219 = getelementptr inbounds nuw i8, ptr %206, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !5
  %221 = zext i8 %220 to i32
  %222 = xor i32 %217, %221
  %223 = load i32, ptr %18, align 4, !tbaa !51
  %224 = and i32 %222, %223
  store i32 %224, ptr %16, align 8, !tbaa !78
  br label %225

225:                                              ; preds = %258, %214
  %226 = phi i32 [ %224, %214 ], [ %243, %258 ]
  %227 = phi i32 [ %192, %214 ], [ %254, %258 ]
  %228 = phi i32 [ %202, %214 ], [ %259, %258 ]
  %229 = icmp eq i32 %227, 0
  br i1 %229, label %262, label %230

230:                                              ; preds = %225
  %231 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %228, i32 3), !nosanitize !44
  %232 = extractvalue { i32, i1 } %231, 1, !nosanitize !44
  br i1 %232, label %233, label %234, !prof !45, !nosanitize !44

233:                                              ; preds = %230
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

234:                                              ; preds = %230
  %235 = shl i32 %226, %216
  %236 = extractvalue { i32, i1 } %231, 0, !nosanitize !44
  %237 = add i32 %236, -1
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds nuw i8, ptr %206, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !5
  %241 = zext i8 %240 to i32
  %242 = xor i32 %235, %241
  %243 = and i32 %242, %223
  store i32 %243, ptr %16, align 8, !tbaa !78
  %244 = load ptr, ptr %13, align 8, !tbaa !37
  %245 = zext i32 %243 to i64
  %246 = getelementptr inbounds nuw i16, ptr %244, i64 %245
  %247 = load i16, ptr %246, align 2, !tbaa !60
  %248 = load ptr, ptr %14, align 8, !tbaa !35
  %249 = load i32, ptr %19, align 8, !tbaa !32
  %250 = and i32 %249, %228
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds nuw i16, ptr %248, i64 %251
  store i16 %247, ptr %252, align 2, !tbaa !60
  %253 = trunc i32 %228 to i16
  store i16 %253, ptr %246, align 2, !tbaa !60
  %254 = add i32 %227, -1
  store i32 %254, ptr %11, align 4, !tbaa !74
  %255 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %191, i32 %254), !nosanitize !44
  %256 = extractvalue { i32, i1 } %255, 1, !nosanitize !44
  br i1 %256, label %257, label %258, !prof !45, !nosanitize !44

257:                                              ; preds = %234
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

258:                                              ; preds = %234
  %259 = add nuw i32 %228, 1
  %260 = extractvalue { i32, i1 } %255, 0, !nosanitize !44
  %261 = icmp ult i32 %260, 3
  br i1 %261, label %262, label %225, !llvm.loop !85

262:                                              ; preds = %258, %225, %196
  %263 = icmp ult i32 %191, 262
  br i1 %263, label %264, label %269

264:                                              ; preds = %262
  %265 = load ptr, ptr %0, align 8, !tbaa !19
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 8
  %267 = load i32, ptr %266, align 8, !tbaa !79
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %35, !llvm.loop !86

269:                                              ; preds = %264, %262, %138
  %270 = phi i32 [ %191, %264 ], [ %191, %262 ], [ %139, %138 ]
  %271 = load i64, ptr %20, align 8, !tbaa !38
  %272 = load i64, ptr %6, align 8, !tbaa !59
  %273 = icmp ult i64 %271, %272
  br i1 %273, label %274, label %313

274:                                              ; preds = %269
  %275 = load i32, ptr %7, align 4, !tbaa !71
  %276 = zext i32 %275 to i64
  %277 = zext i32 %270 to i64
  %278 = add nuw nsw i64 %277, %276
  %279 = icmp ult i64 %271, %278
  br i1 %279, label %280, label %290

280:                                              ; preds = %274
  %281 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %272, i64 %278), !nosanitize !44
  %282 = extractvalue { i64, i1 } %281, 1, !nosanitize !44
  br i1 %282, label %283, label %284, !prof !45, !nosanitize !44

283:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

284:                                              ; preds = %280
  %285 = extractvalue { i64, i1 } %281, 0, !nosanitize !44
  %286 = tail call i64 @llvm.umin.i64(i64 %285, i64 258)
  %287 = load ptr, ptr %8, align 8, !tbaa !34
  %288 = getelementptr inbounds nuw i8, ptr %287, i64 %278
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %288, i8 0, i64 %286, i1 false)
  %289 = add nuw nsw i64 %286, %278
  br label %310

290:                                              ; preds = %274
  %291 = add nuw nsw i64 %278, 258
  %292 = icmp ult i64 %271, %291
  br i1 %292, label %293, label %313

293:                                              ; preds = %290
  %294 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %272, i64 %271), !nosanitize !44
  %295 = extractvalue { i64, i1 } %294, 1, !nosanitize !44
  br i1 %295, label %296, label %297, !prof !45, !nosanitize !44

296:                                              ; preds = %293
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

297:                                              ; preds = %293
  %298 = sub nuw nsw i64 %291, %271
  %299 = extractvalue { i64, i1 } %294, 0, !nosanitize !44
  %300 = tail call i64 @llvm.umin.i64(i64 %298, i64 %299)
  %301 = load ptr, ptr %8, align 8, !tbaa !34
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 %271
  %303 = and i64 %300, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %302, i8 0, i64 %303, i1 false)
  %304 = load i64, ptr %20, align 8, !tbaa !38
  %305 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %304, i64 %300), !nosanitize !44
  %306 = extractvalue { i64, i1 } %305, 1, !nosanitize !44
  br i1 %306, label %307, label %308, !prof !45, !nosanitize !44

307:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

308:                                              ; preds = %297
  %309 = extractvalue { i64, i1 } %305, 0, !nosanitize !44
  br label %310

310:                                              ; preds = %308, %284
  %311 = phi i64 [ %289, %284 ], [ %309, %308 ]
  store i64 %311, ptr %20, align 8, !tbaa !38
  %312 = load i32, ptr %3, align 4, !tbaa !73
  br label %313

313:                                              ; preds = %310, %290, %269
  %314 = phi i32 [ %270, %269 ], [ %270, %290 ], [ %312, %310 ]
  %315 = icmp ult i32 %314, 259
  %316 = and i1 %21, %315
  br i1 %316, label %727, label %317

317:                                              ; preds = %313
  %318 = icmp eq i32 %314, 0
  br i1 %318, label %590, label %319

319:                                              ; preds = %317
  store i32 0, ptr %4, align 8, !tbaa !76
  %320 = icmp ugt i32 %314, 2
  %321 = load i32, ptr %7, align 4, !tbaa !71
  br i1 %320, label %322, label %470

322:                                              ; preds = %319, %30
  %323 = phi i32 [ %31, %30 ], [ %321, %319 ]
  %324 = phi i32 [ %28, %30 ], [ %314, %319 ]
  %325 = icmp eq i32 %323, 0
  br i1 %325, label %470, label %326

326:                                              ; preds = %322
  %327 = load ptr, ptr %8, align 8, !tbaa !34
  %328 = zext i32 %323 to i64
  %329 = getelementptr inbounds nuw i8, ptr %327, i64 %328
  %330 = getelementptr inbounds i8, ptr %329, i64 -1
  %331 = load i8, ptr %330, align 1, !tbaa !5
  %332 = load i8, ptr %329, align 1, !tbaa !5
  %333 = icmp eq i8 %331, %332
  br i1 %333, label %334, label %470

334:                                              ; preds = %326
  %335 = getelementptr inbounds nuw i8, ptr %329, i64 1
  %336 = load i8, ptr %335, align 1, !tbaa !5
  %337 = icmp eq i8 %331, %336
  br i1 %337, label %338, label %470

338:                                              ; preds = %334
  %339 = getelementptr inbounds nuw i8, ptr %329, i64 2
  %340 = load i8, ptr %339, align 1, !tbaa !5
  %341 = icmp eq i8 %331, %340
  br i1 %341, label %342, label %470

342:                                              ; preds = %338
  %343 = getelementptr inbounds nuw i8, ptr %329, i64 258
  br label %344

344:                                              ; preds = %374, %342
  %345 = phi i64 [ 2, %342 ], [ %375, %374 ]
  %346 = getelementptr inbounds nuw i8, ptr %329, i64 %345
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 1
  %348 = load i8, ptr %347, align 1, !tbaa !5
  %349 = icmp eq i8 %331, %348
  br i1 %349, label %350, label %381

350:                                              ; preds = %344
  %351 = getelementptr inbounds nuw i8, ptr %346, i64 2
  %352 = load i8, ptr %351, align 1, !tbaa !5
  %353 = icmp eq i8 %331, %352
  br i1 %353, label %354, label %383

354:                                              ; preds = %350
  %355 = getelementptr inbounds nuw i8, ptr %346, i64 3
  %356 = load i8, ptr %355, align 1, !tbaa !5
  %357 = icmp eq i8 %331, %356
  br i1 %357, label %358, label %385

358:                                              ; preds = %354
  %359 = getelementptr inbounds nuw i8, ptr %346, i64 4
  %360 = load i8, ptr %359, align 1, !tbaa !5
  %361 = icmp eq i8 %331, %360
  br i1 %361, label %362, label %387

362:                                              ; preds = %358
  %363 = getelementptr inbounds nuw i8, ptr %346, i64 5
  %364 = load i8, ptr %363, align 1, !tbaa !5
  %365 = icmp eq i8 %331, %364
  br i1 %365, label %366, label %389

366:                                              ; preds = %362
  %367 = getelementptr inbounds nuw i8, ptr %346, i64 6
  %368 = load i8, ptr %367, align 1, !tbaa !5
  %369 = icmp eq i8 %331, %368
  br i1 %369, label %370, label %391

370:                                              ; preds = %366
  %371 = getelementptr inbounds nuw i8, ptr %346, i64 7
  %372 = load i8, ptr %371, align 1, !tbaa !5
  %373 = icmp eq i8 %331, %372
  br i1 %373, label %374, label %393

374:                                              ; preds = %370
  %375 = add nuw nsw i64 %345, 8
  %376 = getelementptr inbounds nuw i8, ptr %329, i64 %375
  %377 = load i8, ptr %376, align 1, !tbaa !5
  %378 = icmp eq i8 %331, %377
  %379 = icmp samesign ult i64 %345, 250
  %380 = select i1 %378, i1 %379, i1 false
  br i1 %380, label %344, label %395, !llvm.loop !119

381:                                              ; preds = %344
  %382 = getelementptr inbounds nuw i8, ptr %346, i64 1
  br label %397

383:                                              ; preds = %350
  %384 = getelementptr inbounds nuw i8, ptr %346, i64 2
  br label %397

385:                                              ; preds = %354
  %386 = getelementptr inbounds nuw i8, ptr %346, i64 3
  br label %397

387:                                              ; preds = %358
  %388 = getelementptr inbounds nuw i8, ptr %346, i64 4
  br label %397

389:                                              ; preds = %362
  %390 = getelementptr inbounds nuw i8, ptr %346, i64 5
  br label %397

391:                                              ; preds = %366
  %392 = getelementptr inbounds nuw i8, ptr %346, i64 6
  br label %397

393:                                              ; preds = %370
  %394 = getelementptr inbounds nuw i8, ptr %346, i64 7
  br label %397

395:                                              ; preds = %374
  %396 = getelementptr inbounds nuw i8, ptr %329, i64 %375
  br label %397

397:                                              ; preds = %395, %393, %391, %389, %387, %385, %383, %381
  %398 = phi ptr [ %382, %381 ], [ %384, %383 ], [ %386, %385 ], [ %388, %387 ], [ %390, %389 ], [ %392, %391 ], [ %394, %393 ], [ %396, %395 ]
  %399 = ptrtoint ptr %343 to i64
  %400 = ptrtoint ptr %398 to i64
  %401 = sub i64 %399, %400
  %402 = trunc i64 %401 to i32
  %403 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %402), !nosanitize !44
  %404 = extractvalue { i32, i1 } %403, 1, !nosanitize !44
  br i1 %404, label %405, label %406, !prof !45, !nosanitize !44

405:                                              ; preds = %397
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

406:                                              ; preds = %397
  %407 = extractvalue { i32, i1 } %403, 0, !nosanitize !44
  %408 = tail call i32 @llvm.umin.i32(i32 %407, i32 %324)
  store i32 %408, ptr %4, align 8
  %409 = icmp ugt i32 %408, 2
  %410 = load i32, ptr %23, align 4, !tbaa !118
  br i1 %409, label %411, label %473

411:                                              ; preds = %406
  %412 = trunc i32 %408 to i8
  %413 = add i8 %412, -3
  %414 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %410, i32 1), !nosanitize !44
  %415 = extractvalue { i32, i1 } %414, 1, !nosanitize !44
  br i1 %415, label %416, label %417, !prof !45, !nosanitize !44

416:                                              ; preds = %411
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

417:                                              ; preds = %411
  %418 = extractvalue { i32, i1 } %414, 0, !nosanitize !44
  %419 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %418, ptr %23, align 4, !tbaa !118
  %420 = zext i32 %410 to i64
  %421 = getelementptr inbounds nuw i8, ptr %419, i64 %420
  store i8 1, ptr %421, align 1, !tbaa !5
  %422 = load i32, ptr %23, align 4, !tbaa !118
  %423 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %422, i32 1), !nosanitize !44
  %424 = extractvalue { i32, i1 } %423, 1, !nosanitize !44
  br i1 %424, label %425, label %426, !prof !45, !nosanitize !44

425:                                              ; preds = %417
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

426:                                              ; preds = %417
  %427 = extractvalue { i32, i1 } %423, 0, !nosanitize !44
  %428 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %427, ptr %23, align 4, !tbaa !118
  %429 = zext i32 %422 to i64
  %430 = getelementptr inbounds nuw i8, ptr %428, i64 %429
  store i8 0, ptr %430, align 1, !tbaa !5
  %431 = load i32, ptr %23, align 4, !tbaa !118
  %432 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %431, i32 1), !nosanitize !44
  %433 = extractvalue { i32, i1 } %432, 1, !nosanitize !44
  br i1 %433, label %434, label %435, !prof !45, !nosanitize !44

434:                                              ; preds = %426
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

435:                                              ; preds = %426
  %436 = extractvalue { i32, i1 } %432, 0, !nosanitize !44
  %437 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %436, ptr %23, align 4, !tbaa !118
  %438 = zext i32 %431 to i64
  %439 = getelementptr inbounds nuw i8, ptr %437, i64 %438
  store i8 %413, ptr %439, align 1, !tbaa !5
  %440 = zext i8 %413 to i64
  %441 = getelementptr inbounds nuw [0 x i8], ptr @_length_code, i64 0, i64 %440
  %442 = load i8, ptr %441, align 1, !tbaa !5
  %443 = zext i8 %442 to i64
  %444 = add nuw nsw i64 %443, 257
  %445 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %24, i64 0, i64 %444
  %446 = load i16, ptr %445, align 4, !tbaa !5
  %447 = add i16 %446, 1
  store i16 %447, ptr %445, align 4, !tbaa !5
  %448 = load i8, ptr @_dist_code, align 1, !tbaa !5
  %449 = zext i8 %448 to i64
  %450 = getelementptr inbounds nuw [61 x %struct.ct_data_s], ptr %26, i64 0, i64 %449
  %451 = load i16, ptr %450, align 4, !tbaa !5
  %452 = add i16 %451, 1
  store i16 %452, ptr %450, align 4, !tbaa !5
  %453 = load i32, ptr %23, align 4, !tbaa !118
  %454 = load i32, ptr %25, align 8, !tbaa !46
  %455 = icmp eq i32 %453, %454
  %456 = load i32, ptr %4, align 8, !tbaa !76
  %457 = load i32, ptr %3, align 4, !tbaa !73
  %458 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %457, i32 %456), !nosanitize !44
  %459 = extractvalue { i32, i1 } %458, 1, !nosanitize !44
  br i1 %459, label %460, label %461, !prof !45, !nosanitize !44

460:                                              ; preds = %435
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

461:                                              ; preds = %435
  %462 = extractvalue { i32, i1 } %458, 0, !nosanitize !44
  store i32 %462, ptr %3, align 4, !tbaa !73
  %463 = load i32, ptr %7, align 4, !tbaa !71
  %464 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %463, i32 %456), !nosanitize !44
  %465 = extractvalue { i32, i1 } %464, 1, !nosanitize !44
  br i1 %465, label %466, label %467, !prof !45, !nosanitize !44

466:                                              ; preds = %461
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

467:                                              ; preds = %461
  %468 = extractvalue { i32, i1 } %464, 0, !nosanitize !44
  store i32 %468, ptr %7, align 4, !tbaa !71
  store i32 0, ptr %4, align 8, !tbaa !76
  br i1 %455, label %525, label %469

469:                                              ; preds = %585, %523, %467
  br label %27

470:                                              ; preds = %338, %334, %326, %322, %319
  %471 = phi i32 [ %321, %319 ], [ %323, %322 ], [ %323, %338 ], [ %323, %334 ], [ %323, %326 ]
  %472 = load i32, ptr %23, align 4, !tbaa !118
  br label %473

473:                                              ; preds = %470, %406
  %474 = phi i32 [ %410, %406 ], [ %472, %470 ]
  %475 = phi i32 [ %323, %406 ], [ %471, %470 ]
  %476 = load ptr, ptr %8, align 8, !tbaa !34
  %477 = zext i32 %475 to i64
  %478 = getelementptr inbounds nuw i8, ptr %476, i64 %477
  %479 = load i8, ptr %478, align 1, !tbaa !5
  %480 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %474, i32 1), !nosanitize !44
  %481 = extractvalue { i32, i1 } %480, 1, !nosanitize !44
  br i1 %481, label %482, label %483, !prof !45, !nosanitize !44

482:                                              ; preds = %473
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

483:                                              ; preds = %473
  %484 = extractvalue { i32, i1 } %480, 0, !nosanitize !44
  %485 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %484, ptr %23, align 4, !tbaa !118
  %486 = zext i32 %474 to i64
  %487 = getelementptr inbounds nuw i8, ptr %485, i64 %486
  store i8 0, ptr %487, align 1, !tbaa !5
  %488 = load i32, ptr %23, align 4, !tbaa !118
  %489 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %488, i32 1), !nosanitize !44
  %490 = extractvalue { i32, i1 } %489, 1, !nosanitize !44
  br i1 %490, label %491, label %492, !prof !45, !nosanitize !44

491:                                              ; preds = %483
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

492:                                              ; preds = %483
  %493 = extractvalue { i32, i1 } %489, 0, !nosanitize !44
  %494 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %493, ptr %23, align 4, !tbaa !118
  %495 = zext i32 %488 to i64
  %496 = getelementptr inbounds nuw i8, ptr %494, i64 %495
  store i8 0, ptr %496, align 1, !tbaa !5
  %497 = load i32, ptr %23, align 4, !tbaa !118
  %498 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %497, i32 1), !nosanitize !44
  %499 = extractvalue { i32, i1 } %498, 1, !nosanitize !44
  br i1 %499, label %500, label %501, !prof !45, !nosanitize !44

500:                                              ; preds = %492
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

501:                                              ; preds = %492
  %502 = extractvalue { i32, i1 } %498, 0, !nosanitize !44
  %503 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %502, ptr %23, align 4, !tbaa !118
  %504 = zext i32 %497 to i64
  %505 = getelementptr inbounds nuw i8, ptr %503, i64 %504
  store i8 %479, ptr %505, align 1, !tbaa !5
  %506 = zext i8 %479 to i64
  %507 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %24, i64 0, i64 %506
  %508 = load i16, ptr %507, align 4, !tbaa !5
  %509 = add i16 %508, 1
  store i16 %509, ptr %507, align 4, !tbaa !5
  %510 = load i32, ptr %23, align 4, !tbaa !118
  %511 = load i32, ptr %25, align 8, !tbaa !46
  %512 = icmp eq i32 %510, %511
  %513 = load i32, ptr %3, align 4, !tbaa !73
  %514 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %513, i32 1), !nosanitize !44
  %515 = extractvalue { i32, i1 } %514, 1, !nosanitize !44
  br i1 %515, label %516, label %517, !prof !45, !nosanitize !44

516:                                              ; preds = %668, %599, %533, %501
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

517:                                              ; preds = %501
  %518 = extractvalue { i32, i1 } %514, 0, !nosanitize !44
  store i32 %518, ptr %3, align 4, !tbaa !73
  %519 = load i32, ptr %7, align 4, !tbaa !71
  %520 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %519, i32 1), !nosanitize !44
  %521 = extractvalue { i32, i1 } %520, 1, !nosanitize !44
  br i1 %521, label %522, label %523, !prof !45, !nosanitize !44

522:                                              ; preds = %517
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

523:                                              ; preds = %517
  %524 = extractvalue { i32, i1 } %520, 0, !nosanitize !44
  store i32 %524, ptr %7, align 4, !tbaa !71
  br i1 %512, label %525, label %469

525:                                              ; preds = %523, %467
  %526 = phi i32 [ %468, %467 ], [ %524, %523 ]
  %527 = load i64, ptr %10, align 8, !tbaa !72
  %528 = icmp sgt i64 %527, -1
  br i1 %528, label %529, label %533

529:                                              ; preds = %525
  %530 = load ptr, ptr %8, align 8, !tbaa !34
  %531 = and i64 %527, 4294967295
  %532 = getelementptr inbounds nuw i8, ptr %530, i64 %531
  br label %533

533:                                              ; preds = %529, %525
  %534 = phi ptr [ %532, %529 ], [ null, %525 ]
  %535 = zext i32 %526 to i64
  %536 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %535, i64 %527), !nosanitize !44
  %537 = extractvalue { i64, i1 } %536, 1, !nosanitize !44
  br i1 %537, label %516, label %538, !prof !45, !nosanitize !44

538:                                              ; preds = %533
  %539 = extractvalue { i64, i1 } %536, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %534, i64 noundef %539, i32 noundef 0) #8
  %540 = load i32, ptr %7, align 4, !tbaa !71
  %541 = zext i32 %540 to i64
  store i64 %541, ptr %10, align 8, !tbaa !72
  %542 = load ptr, ptr %0, align 8, !tbaa !19
  %543 = getelementptr inbounds nuw i8, ptr %542, i64 56
  %544 = load ptr, ptr %543, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %544) #8
  %545 = getelementptr inbounds nuw i8, ptr %544, i64 40
  %546 = load i64, ptr %545, align 8, !tbaa !55
  %547 = getelementptr inbounds nuw i8, ptr %542, i64 32
  %548 = load i32, ptr %547, align 8, !tbaa !96
  %549 = zext i32 %548 to i64
  %550 = tail call i64 @llvm.umin.i64(i64 %546, i64 %549)
  %551 = trunc nuw i64 %550 to i32
  %552 = icmp eq i64 %550, 0
  br i1 %552, label %585, label %553

553:                                              ; preds = %538
  %554 = getelementptr inbounds nuw i8, ptr %542, i64 24
  %555 = load ptr, ptr %554, align 8, !tbaa !95
  %556 = getelementptr inbounds nuw i8, ptr %544, i64 32
  %557 = load ptr, ptr %556, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %555, ptr align 1 %557, i64 %550, i1 false)
  %558 = load ptr, ptr %554, align 8, !tbaa !95
  %559 = getelementptr inbounds nuw i8, ptr %558, i64 %550
  store ptr %559, ptr %554, align 8, !tbaa !95
  %560 = load ptr, ptr %556, align 8, !tbaa !56
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 %550
  store ptr %561, ptr %556, align 8, !tbaa !56
  %562 = getelementptr inbounds nuw i8, ptr %542, i64 40
  %563 = load i64, ptr %562, align 8, !tbaa !97
  %564 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %563, i64 %550), !nosanitize !44
  %565 = extractvalue { i64, i1 } %564, 1, !nosanitize !44
  br i1 %565, label %566, label %567, !prof !45, !nosanitize !44

566:                                              ; preds = %553
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

567:                                              ; preds = %553
  %568 = extractvalue { i64, i1 } %564, 0, !nosanitize !44
  store i64 %568, ptr %562, align 8, !tbaa !97
  %569 = load i32, ptr %547, align 8, !tbaa !96
  %570 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %569, i32 %551), !nosanitize !44
  %571 = extractvalue { i32, i1 } %570, 1, !nosanitize !44
  br i1 %571, label %572, label %573, !prof !45, !nosanitize !44

572:                                              ; preds = %567
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

573:                                              ; preds = %567
  %574 = extractvalue { i32, i1 } %570, 0, !nosanitize !44
  store i32 %574, ptr %547, align 8, !tbaa !96
  %575 = load i64, ptr %545, align 8, !tbaa !55
  %576 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %575, i64 %550), !nosanitize !44
  %577 = extractvalue { i64, i1 } %576, 1, !nosanitize !44
  br i1 %577, label %578, label %579, !prof !45, !nosanitize !44

578:                                              ; preds = %573
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

579:                                              ; preds = %573
  %580 = extractvalue { i64, i1 } %576, 0, !nosanitize !44
  store i64 %580, ptr %545, align 8, !tbaa !55
  %581 = icmp eq i64 %580, 0
  br i1 %581, label %582, label %585

582:                                              ; preds = %579
  %583 = getelementptr inbounds nuw i8, ptr %544, i64 16
  %584 = load ptr, ptr %583, align 8, !tbaa !40
  store ptr %584, ptr %556, align 8, !tbaa !56
  br label %585

585:                                              ; preds = %582, %579, %538
  %586 = load ptr, ptr %0, align 8, !tbaa !19
  %587 = getelementptr inbounds nuw i8, ptr %586, i64 32
  %588 = load i32, ptr %587, align 8, !tbaa !96
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %727, label %469

590:                                              ; preds = %317
  store i32 0, ptr %11, align 4, !tbaa !74
  %591 = icmp eq i32 %1, 4
  br i1 %591, label %592, label %658

592:                                              ; preds = %590
  %593 = load i64, ptr %10, align 8, !tbaa !72
  %594 = icmp sgt i64 %593, -1
  br i1 %594, label %595, label %599

595:                                              ; preds = %592
  %596 = load ptr, ptr %8, align 8, !tbaa !34
  %597 = and i64 %593, 4294967295
  %598 = getelementptr inbounds nuw i8, ptr %596, i64 %597
  br label %599

599:                                              ; preds = %595, %592
  %600 = phi ptr [ %598, %595 ], [ null, %592 ]
  %601 = load i32, ptr %7, align 4, !tbaa !71
  %602 = zext i32 %601 to i64
  %603 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %602, i64 %593), !nosanitize !44
  %604 = extractvalue { i64, i1 } %603, 1, !nosanitize !44
  br i1 %604, label %516, label %605, !prof !45, !nosanitize !44

605:                                              ; preds = %599
  %606 = extractvalue { i64, i1 } %603, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %600, i64 noundef %606, i32 noundef 1) #8
  %607 = load i32, ptr %7, align 4, !tbaa !71
  %608 = zext i32 %607 to i64
  store i64 %608, ptr %10, align 8, !tbaa !72
  %609 = load ptr, ptr %0, align 8, !tbaa !19
  %610 = getelementptr inbounds nuw i8, ptr %609, i64 56
  %611 = load ptr, ptr %610, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %611) #8
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 40
  %613 = load i64, ptr %612, align 8, !tbaa !55
  %614 = getelementptr inbounds nuw i8, ptr %609, i64 32
  %615 = load i32, ptr %614, align 8, !tbaa !96
  %616 = zext i32 %615 to i64
  %617 = tail call i64 @llvm.umin.i64(i64 %613, i64 %616)
  %618 = trunc nuw i64 %617 to i32
  %619 = icmp eq i64 %617, 0
  br i1 %619, label %652, label %620

620:                                              ; preds = %605
  %621 = getelementptr inbounds nuw i8, ptr %609, i64 24
  %622 = load ptr, ptr %621, align 8, !tbaa !95
  %623 = getelementptr inbounds nuw i8, ptr %611, i64 32
  %624 = load ptr, ptr %623, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %622, ptr align 1 %624, i64 %617, i1 false)
  %625 = load ptr, ptr %621, align 8, !tbaa !95
  %626 = getelementptr inbounds nuw i8, ptr %625, i64 %617
  store ptr %626, ptr %621, align 8, !tbaa !95
  %627 = load ptr, ptr %623, align 8, !tbaa !56
  %628 = getelementptr inbounds nuw i8, ptr %627, i64 %617
  store ptr %628, ptr %623, align 8, !tbaa !56
  %629 = getelementptr inbounds nuw i8, ptr %609, i64 40
  %630 = load i64, ptr %629, align 8, !tbaa !97
  %631 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %630, i64 %617), !nosanitize !44
  %632 = extractvalue { i64, i1 } %631, 1, !nosanitize !44
  br i1 %632, label %633, label %634, !prof !45, !nosanitize !44

633:                                              ; preds = %620
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

634:                                              ; preds = %620
  %635 = extractvalue { i64, i1 } %631, 0, !nosanitize !44
  store i64 %635, ptr %629, align 8, !tbaa !97
  %636 = load i32, ptr %614, align 8, !tbaa !96
  %637 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %636, i32 %618), !nosanitize !44
  %638 = extractvalue { i32, i1 } %637, 1, !nosanitize !44
  br i1 %638, label %639, label %640, !prof !45, !nosanitize !44

639:                                              ; preds = %634
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

640:                                              ; preds = %634
  %641 = extractvalue { i32, i1 } %637, 0, !nosanitize !44
  store i32 %641, ptr %614, align 8, !tbaa !96
  %642 = load i64, ptr %612, align 8, !tbaa !55
  %643 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %642, i64 %617), !nosanitize !44
  %644 = extractvalue { i64, i1 } %643, 1, !nosanitize !44
  br i1 %644, label %645, label %646, !prof !45, !nosanitize !44

645:                                              ; preds = %640
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

646:                                              ; preds = %640
  %647 = extractvalue { i64, i1 } %643, 0, !nosanitize !44
  store i64 %647, ptr %612, align 8, !tbaa !55
  %648 = icmp eq i64 %647, 0
  br i1 %648, label %649, label %652

649:                                              ; preds = %646
  %650 = getelementptr inbounds nuw i8, ptr %611, i64 16
  %651 = load ptr, ptr %650, align 8, !tbaa !40
  store ptr %651, ptr %623, align 8, !tbaa !56
  br label %652

652:                                              ; preds = %649, %646, %605
  %653 = load ptr, ptr %0, align 8, !tbaa !19
  %654 = getelementptr inbounds nuw i8, ptr %653, i64 32
  %655 = load i32, ptr %654, align 8, !tbaa !96
  %656 = icmp eq i32 %655, 0
  %657 = select i1 %656, i32 2, i32 3
  br label %727

658:                                              ; preds = %590
  %659 = load i32, ptr %23, align 4, !tbaa !118
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %726, label %661

661:                                              ; preds = %658
  %662 = load i64, ptr %10, align 8, !tbaa !72
  %663 = icmp sgt i64 %662, -1
  br i1 %663, label %664, label %668

664:                                              ; preds = %661
  %665 = load ptr, ptr %8, align 8, !tbaa !34
  %666 = and i64 %662, 4294967295
  %667 = getelementptr inbounds nuw i8, ptr %665, i64 %666
  br label %668

668:                                              ; preds = %664, %661
  %669 = phi ptr [ %667, %664 ], [ null, %661 ]
  %670 = load i32, ptr %7, align 4, !tbaa !71
  %671 = zext i32 %670 to i64
  %672 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %671, i64 %662), !nosanitize !44
  %673 = extractvalue { i64, i1 } %672, 1, !nosanitize !44
  br i1 %673, label %516, label %674, !prof !45, !nosanitize !44

674:                                              ; preds = %668
  %675 = extractvalue { i64, i1 } %672, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %669, i64 noundef %675, i32 noundef 0) #8
  %676 = load i32, ptr %7, align 4, !tbaa !71
  %677 = zext i32 %676 to i64
  store i64 %677, ptr %10, align 8, !tbaa !72
  %678 = load ptr, ptr %0, align 8, !tbaa !19
  %679 = getelementptr inbounds nuw i8, ptr %678, i64 56
  %680 = load ptr, ptr %679, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %680) #8
  %681 = getelementptr inbounds nuw i8, ptr %680, i64 40
  %682 = load i64, ptr %681, align 8, !tbaa !55
  %683 = getelementptr inbounds nuw i8, ptr %678, i64 32
  %684 = load i32, ptr %683, align 8, !tbaa !96
  %685 = zext i32 %684 to i64
  %686 = tail call i64 @llvm.umin.i64(i64 %682, i64 %685)
  %687 = trunc nuw i64 %686 to i32
  %688 = icmp eq i64 %686, 0
  br i1 %688, label %721, label %689

689:                                              ; preds = %674
  %690 = getelementptr inbounds nuw i8, ptr %678, i64 24
  %691 = load ptr, ptr %690, align 8, !tbaa !95
  %692 = getelementptr inbounds nuw i8, ptr %680, i64 32
  %693 = load ptr, ptr %692, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %691, ptr align 1 %693, i64 %686, i1 false)
  %694 = load ptr, ptr %690, align 8, !tbaa !95
  %695 = getelementptr inbounds nuw i8, ptr %694, i64 %686
  store ptr %695, ptr %690, align 8, !tbaa !95
  %696 = load ptr, ptr %692, align 8, !tbaa !56
  %697 = getelementptr inbounds nuw i8, ptr %696, i64 %686
  store ptr %697, ptr %692, align 8, !tbaa !56
  %698 = getelementptr inbounds nuw i8, ptr %678, i64 40
  %699 = load i64, ptr %698, align 8, !tbaa !97
  %700 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %699, i64 %686), !nosanitize !44
  %701 = extractvalue { i64, i1 } %700, 1, !nosanitize !44
  br i1 %701, label %702, label %703, !prof !45, !nosanitize !44

702:                                              ; preds = %689
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

703:                                              ; preds = %689
  %704 = extractvalue { i64, i1 } %700, 0, !nosanitize !44
  store i64 %704, ptr %698, align 8, !tbaa !97
  %705 = load i32, ptr %683, align 8, !tbaa !96
  %706 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %705, i32 %687), !nosanitize !44
  %707 = extractvalue { i32, i1 } %706, 1, !nosanitize !44
  br i1 %707, label %708, label %709, !prof !45, !nosanitize !44

708:                                              ; preds = %703
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

709:                                              ; preds = %703
  %710 = extractvalue { i32, i1 } %706, 0, !nosanitize !44
  store i32 %710, ptr %683, align 8, !tbaa !96
  %711 = load i64, ptr %681, align 8, !tbaa !55
  %712 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %711, i64 %686), !nosanitize !44
  %713 = extractvalue { i64, i1 } %712, 1, !nosanitize !44
  br i1 %713, label %714, label %715, !prof !45, !nosanitize !44

714:                                              ; preds = %709
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

715:                                              ; preds = %709
  %716 = extractvalue { i64, i1 } %712, 0, !nosanitize !44
  store i64 %716, ptr %681, align 8, !tbaa !55
  %717 = icmp eq i64 %716, 0
  br i1 %717, label %718, label %721

718:                                              ; preds = %715
  %719 = getelementptr inbounds nuw i8, ptr %680, i64 16
  %720 = load ptr, ptr %719, align 8, !tbaa !40
  store ptr %720, ptr %692, align 8, !tbaa !56
  br label %721

721:                                              ; preds = %718, %715, %674
  %722 = load ptr, ptr %0, align 8, !tbaa !19
  %723 = getelementptr inbounds nuw i8, ptr %722, i64 32
  %724 = load i32, ptr %723, align 8, !tbaa !96
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %727, label %726

726:                                              ; preds = %721, %658
  br label %727

727:                                              ; preds = %726, %721, %652, %585, %313
  %728 = phi i32 [ 1, %726 ], [ %657, %652 ], [ 0, %721 ], [ 0, %313 ], [ 0, %585 ]
  ret i32 %728
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
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #8
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
  %37 = tail call ptr %33(ptr noundef %34, i32 noundef %36, i32 noundef 2) #8
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 96
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = load ptr, ptr %25, align 8, !tbaa !15
  %40 = load ptr, ptr %27, align 8, !tbaa !16
  %41 = load i32, ptr %35, align 8, !tbaa !31
  %42 = tail call ptr %39(ptr noundef %40, i32 noundef %41, i32 noundef 2) #8
  %43 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %42, ptr %43, align 8, !tbaa !35
  %44 = load ptr, ptr %25, align 8, !tbaa !15
  %45 = load ptr, ptr %27, align 8, !tbaa !16
  %46 = getelementptr inbounds nuw i8, ptr %29, i64 132
  %47 = load i32, ptr %46, align 4, !tbaa !36
  %48 = tail call ptr %44(ptr noundef %45, i32 noundef %47, i32 noundef 2) #8
  %49 = getelementptr inbounds nuw i8, ptr %29, i64 120
  store ptr %48, ptr %49, align 8, !tbaa !37
  %50 = load ptr, ptr %25, align 8, !tbaa !15
  %51 = load ptr, ptr %27, align 8, !tbaa !16
  %52 = getelementptr inbounds nuw i8, ptr %29, i64 5896
  %53 = load i32, ptr %52, align 8, !tbaa !39
  %54 = tail call ptr %50(ptr noundef %51, i32 noundef %53, i32 noundef 4) #8
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
  tail call void %71(ptr noundef %87, ptr noundef nonnull %84) #8
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
  tail call void %91(ptr noundef %97, ptr noundef nonnull %94) #8
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
  tail call void %101(ptr noundef %107, ptr noundef nonnull %104) #8
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
  tail call void %111(ptr noundef %117, ptr noundef nonnull %114) #8
  %118 = load ptr, ptr %70, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !18
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi ptr [ %119, %116 ], [ %112, %110 ]
  %122 = phi ptr [ %118, %116 ], [ %111, %110 ]
  %123 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %122(ptr noundef %123, ptr noundef %121) #8
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  %180 = load i32, ptr %179, align 4, !tbaa !118
  %181 = zext i32 %180 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %175, ptr align 1 %178, i64 %181, i1 false)
  %182 = getelementptr inbounds nuw i8, ptr %29, i64 212
  %183 = getelementptr inbounds nuw i8, ptr %29, i64 2904
  store ptr %182, ptr %183, align 8, !tbaa !120
  %184 = getelementptr inbounds nuw i8, ptr %29, i64 2504
  %185 = getelementptr inbounds nuw i8, ptr %29, i64 2928
  store ptr %184, ptr %185, align 8, !tbaa !121
  %186 = getelementptr inbounds nuw i8, ptr %29, i64 2748
  %187 = getelementptr inbounds nuw i8, ptr %29, i64 2952
  store ptr %186, ptr %187, align 8, !tbaa !122
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

32:                                               ; preds = %690, %2
  %33 = load i32, ptr %3, align 4, !tbaa !73
  %34 = icmp ult i32 %33, 262
  br i1 %34, label %35, label %324

35:                                               ; preds = %32
  %36 = load i32, ptr %4, align 8, !tbaa !31
  %37 = zext i32 %36 to i64
  br label %38

38:                                               ; preds = %267, %35
  %39 = phi i32 [ %194, %267 ], [ %33, %35 ]
  %40 = load i64, ptr %5, align 8, !tbaa !59
  %41 = zext nneg i32 %39 to i64
  %42 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %40, i64 %41), !nosanitize !44
  %43 = extractvalue { i64, i1 } %42, 1, !nosanitize !44
  br i1 %43, label %44, label %45, !prof !45, !nosanitize !44

44:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

45:                                               ; preds = %38
  %46 = extractvalue { i64, i1 } %42, 0, !nosanitize !44
  %47 = load i32, ptr %6, align 4, !tbaa !71
  %48 = zext i32 %47 to i64
  %49 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %46, i64 %48), !nosanitize !44
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !44
  br i1 %50, label %51, label %52, !prof !45, !nosanitize !44

51:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

52:                                               ; preds = %45
  %53 = extractvalue { i64, i1 } %49, 0, !nosanitize !44
  %54 = trunc i64 %53 to i32
  %55 = load i32, ptr %4, align 8, !tbaa !31
  %56 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 262), !nosanitize !44
  %57 = extractvalue { i32, i1 } %56, 1, !nosanitize !44
  br i1 %57, label %58, label %59, !prof !45, !nosanitize !44

58:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

59:                                               ; preds = %52
  %60 = extractvalue { i32, i1 } %56, 0, !nosanitize !44
  %61 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %36, i32 %60), !nosanitize !44
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !44
  br i1 %62, label %63, label %64, !prof !45, !nosanitize !44

63:                                               ; preds = %59
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

64:                                               ; preds = %59
  %65 = extractvalue { i32, i1 } %61, 0, !nosanitize !44
  %66 = icmp ult i32 %47, %65
  br i1 %66, label %141, label %67

67:                                               ; preds = %64
  %68 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %36, i32 %54), !nosanitize !44
  %69 = extractvalue { i32, i1 } %68, 1, !nosanitize !44
  br i1 %69, label %70, label %71, !prof !45, !nosanitize !44

70:                                               ; preds = %67
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

80:                                               ; preds = %71
  %81 = extractvalue { i32, i1 } %77, 0, !nosanitize !44
  store i32 %81, ptr %8, align 8, !tbaa !81
  %82 = load i32, ptr %6, align 4, !tbaa !71
  %83 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %82, i32 %36), !nosanitize !44
  %84 = extractvalue { i32, i1 } %83, 1, !nosanitize !44
  br i1 %84, label %85, label %86, !prof !45, !nosanitize !44

85:                                               ; preds = %86, %80
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  %101 = getelementptr inbounds nuw i16, ptr %99, i64 %100
  br label %102

102:                                              ; preds = %113, %96
  %103 = phi ptr [ %101, %96 ], [ %105, %113 ]
  %104 = phi i32 [ %98, %96 ], [ %114, %113 ]
  %105 = getelementptr inbounds i8, ptr %103, i64 -2
  %106 = load i16, ptr %105, align 2, !tbaa !60
  %107 = zext i16 %106 to i32
  %108 = tail call i32 @llvm.usub.sat.i32(i32 %107, i32 %97)
  %109 = trunc nuw i32 %108 to i16
  store i16 %109, ptr %105, align 2, !tbaa !60
  %110 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %104, i32 1), !nosanitize !44
  %111 = extractvalue { i32, i1 } %110, 1, !nosanitize !44
  br i1 %111, label %112, label %113, !prof !45, !nosanitize !44

112:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

113:                                              ; preds = %102
  %114 = extractvalue { i32, i1 } %110, 0, !nosanitize !44
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %102, !llvm.loop !82

116:                                              ; preds = %113
  %117 = load ptr, ptr %13, align 8, !tbaa !35
  %118 = zext i32 %97 to i64
  %119 = getelementptr inbounds nuw i16, ptr %117, i64 %118
  br label %120

120:                                              ; preds = %131, %116
  %121 = phi ptr [ %119, %116 ], [ %123, %131 ]
  %122 = phi i32 [ %97, %116 ], [ %132, %131 ]
  %123 = getelementptr inbounds i8, ptr %121, i64 -2
  %124 = load i16, ptr %123, align 2, !tbaa !60
  %125 = zext i16 %124 to i32
  %126 = tail call i32 @llvm.usub.sat.i32(i32 %125, i32 %97)
  %127 = trunc nuw i32 %126 to i16
  store i16 %127, ptr %123, align 2, !tbaa !60
  %128 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %122, i32 1), !nosanitize !44
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !44
  br i1 %129, label %130, label %131, !prof !45, !nosanitize !44

130:                                              ; preds = %120
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

131:                                              ; preds = %120
  %132 = extractvalue { i32, i1 } %128, 0, !nosanitize !44
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %120, !llvm.loop !84

134:                                              ; preds = %131
  store i32 1, ptr %14, align 8, !tbaa !61
  %135 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %54, i32 %36), !nosanitize !44
  %136 = extractvalue { i32, i1 } %135, 1, !nosanitize !44
  br i1 %136, label %137, label %138, !prof !45, !nosanitize !44

137:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

138:                                              ; preds = %134
  %139 = extractvalue { i32, i1 } %135, 0, !nosanitize !44
  %140 = load i32, ptr %3, align 4, !tbaa !73
  br label %141

141:                                              ; preds = %138, %64
  %142 = phi i32 [ %140, %138 ], [ %39, %64 ]
  %143 = phi i32 [ %87, %138 ], [ %47, %64 ]
  %144 = phi i32 [ %139, %138 ], [ %54, %64 ]
  %145 = load ptr, ptr %0, align 8, !tbaa !19
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 8
  %147 = load i32, ptr %146, align 8, !tbaa !79
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %272, label %149

149:                                              ; preds = %141
  %150 = load ptr, ptr %7, align 8, !tbaa !34
  %151 = zext i32 %143 to i64
  %152 = getelementptr inbounds nuw i8, ptr %150, i64 %151
  %153 = zext i32 %142 to i64
  %154 = getelementptr inbounds nuw i8, ptr %152, i64 %153
  %155 = tail call i32 @llvm.umin.i32(i32 %147, i32 %144)
  %156 = icmp eq i32 %144, 0
  br i1 %156, label %188, label %157

157:                                              ; preds = %149
  %158 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %147, i32 %155), !nosanitize !44
  %159 = extractvalue { i32, i1 } %158, 1, !nosanitize !44
  br i1 false, label %160, label %161, !prof !45, !nosanitize !44

160:                                              ; preds = %157
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

161:                                              ; preds = %157
  %162 = extractvalue { i32, i1 } %158, 0, !nosanitize !44
  store i32 %162, ptr %146, align 8, !tbaa !79
  %163 = load ptr, ptr %145, align 8, !tbaa !80
  %164 = zext i32 %155 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %154, ptr align 1 %163, i64 %164, i1 false)
  %165 = getelementptr inbounds nuw i8, ptr %145, i64 56
  %166 = load ptr, ptr %165, align 8, !tbaa !18
  %167 = getelementptr inbounds nuw i8, ptr %166, i64 48
  %168 = load i32, ptr %167, align 8, !tbaa !29
  switch i32 %168, label %177 [
    i32 1, label %169
    i32 2, label %173
  ]

169:                                              ; preds = %161
  %170 = getelementptr inbounds nuw i8, ptr %145, i64 96
  %171 = load i64, ptr %170, align 8, !tbaa !57
  %172 = tail call i64 @adler32(i64 noundef %171, ptr noundef %154, i32 noundef %155) #8
  store i64 %172, ptr %170, align 8, !tbaa !57
  br label %177

173:                                              ; preds = %161
  %174 = getelementptr inbounds nuw i8, ptr %145, i64 96
  %175 = load i64, ptr %174, align 8, !tbaa !57
  %176 = tail call i64 @crc32(i64 noundef %175, ptr noundef %154, i32 noundef %155) #8
  store i64 %176, ptr %174, align 8, !tbaa !57
  br label %177

177:                                              ; preds = %173, %169, %161
  %178 = load ptr, ptr %145, align 8, !tbaa !80
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 %164
  store ptr %179, ptr %145, align 8, !tbaa !80
  %180 = getelementptr inbounds nuw i8, ptr %145, i64 16
  %181 = load i64, ptr %180, align 8, !tbaa !53
  %182 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %181, i64 %164), !nosanitize !44
  %183 = extractvalue { i64, i1 } %182, 1, !nosanitize !44
  br i1 %183, label %184, label %185, !prof !45, !nosanitize !44

184:                                              ; preds = %177
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

185:                                              ; preds = %177
  %186 = extractvalue { i64, i1 } %182, 0, !nosanitize !44
  store i64 %186, ptr %180, align 8, !tbaa !53
  %187 = load i32, ptr %3, align 4, !tbaa !73
  br label %188

188:                                              ; preds = %185, %149
  %189 = phi i32 [ %142, %149 ], [ %187, %185 ]
  %190 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %189, i32 %155), !nosanitize !44
  %191 = extractvalue { i32, i1 } %190, 1, !nosanitize !44
  br i1 %191, label %192, label %193, !prof !45, !nosanitize !44

192:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

193:                                              ; preds = %188
  %194 = extractvalue { i32, i1 } %190, 0, !nosanitize !44
  store i32 %194, ptr %3, align 4, !tbaa !73
  %195 = load i32, ptr %10, align 4, !tbaa !74
  %196 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %194, i32 %195), !nosanitize !44
  %197 = extractvalue { i32, i1 } %196, 1, !nosanitize !44
  br i1 %197, label %198, label %199, !prof !45, !nosanitize !44

198:                                              ; preds = %193
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

199:                                              ; preds = %193
  %200 = extractvalue { i32, i1 } %196, 0, !nosanitize !44
  %201 = icmp ugt i32 %200, 2
  br i1 %201, label %202, label %265

202:                                              ; preds = %199
  %203 = load i32, ptr %6, align 4, !tbaa !71
  %204 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %203, i32 %195), !nosanitize !44
  %205 = extractvalue { i32, i1 } %204, 0, !nosanitize !44
  %206 = extractvalue { i32, i1 } %204, 1, !nosanitize !44
  br i1 %206, label %207, label %208, !prof !45, !nosanitize !44

207:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

208:                                              ; preds = %202
  %209 = load ptr, ptr %7, align 8, !tbaa !34
  %210 = zext i32 %205 to i64
  %211 = getelementptr inbounds nuw i8, ptr %209, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !5
  %213 = zext i8 %212 to i32
  store i32 %213, ptr %15, align 8, !tbaa !78
  %214 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %205, i32 1), !nosanitize !44
  %215 = extractvalue { i32, i1 } %214, 1, !nosanitize !44
  br i1 %215, label %216, label %217, !prof !45, !nosanitize !44

216:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

217:                                              ; preds = %208
  %218 = extractvalue { i32, i1 } %214, 0, !nosanitize !44
  %219 = load i32, ptr %16, align 8, !tbaa !52
  %220 = shl i32 %213, %219
  %221 = zext i32 %218 to i64
  %222 = getelementptr inbounds nuw i8, ptr %209, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !5
  %224 = zext i8 %223 to i32
  %225 = xor i32 %220, %224
  %226 = load i32, ptr %17, align 4, !tbaa !51
  %227 = and i32 %225, %226
  store i32 %227, ptr %15, align 8, !tbaa !78
  br label %228

228:                                              ; preds = %261, %217
  %229 = phi i32 [ %227, %217 ], [ %246, %261 ]
  %230 = phi i32 [ %195, %217 ], [ %257, %261 ]
  %231 = phi i32 [ %205, %217 ], [ %262, %261 ]
  %232 = icmp eq i32 %230, 0
  br i1 %232, label %265, label %233

233:                                              ; preds = %228
  %234 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %231, i32 3), !nosanitize !44
  %235 = extractvalue { i32, i1 } %234, 1, !nosanitize !44
  br i1 %235, label %236, label %237, !prof !45, !nosanitize !44

236:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

237:                                              ; preds = %233
  %238 = shl i32 %229, %219
  %239 = extractvalue { i32, i1 } %234, 0, !nosanitize !44
  %240 = add i32 %239, -1
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds nuw i8, ptr %209, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !5
  %244 = zext i8 %243 to i32
  %245 = xor i32 %238, %244
  %246 = and i32 %245, %226
  store i32 %246, ptr %15, align 8, !tbaa !78
  %247 = load ptr, ptr %12, align 8, !tbaa !37
  %248 = zext i32 %246 to i64
  %249 = getelementptr inbounds nuw i16, ptr %247, i64 %248
  %250 = load i16, ptr %249, align 2, !tbaa !60
  %251 = load ptr, ptr %13, align 8, !tbaa !35
  %252 = load i32, ptr %18, align 8, !tbaa !32
  %253 = and i32 %252, %231
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds nuw i16, ptr %251, i64 %254
  store i16 %250, ptr %255, align 2, !tbaa !60
  %256 = trunc i32 %231 to i16
  store i16 %256, ptr %249, align 2, !tbaa !60
  %257 = add i32 %230, -1
  store i32 %257, ptr %10, align 4, !tbaa !74
  %258 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %194, i32 %257), !nosanitize !44
  %259 = extractvalue { i32, i1 } %258, 1, !nosanitize !44
  br i1 %259, label %260, label %261, !prof !45, !nosanitize !44

260:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

261:                                              ; preds = %237
  %262 = add nuw i32 %231, 1
  %263 = extractvalue { i32, i1 } %258, 0, !nosanitize !44
  %264 = icmp ult i32 %263, 3
  br i1 %264, label %265, label %228, !llvm.loop !85

265:                                              ; preds = %261, %228, %199
  %266 = icmp ult i32 %194, 262
  br i1 %266, label %267, label %272

267:                                              ; preds = %265
  %268 = load ptr, ptr %0, align 8, !tbaa !19
  %269 = getelementptr inbounds nuw i8, ptr %268, i64 8
  %270 = load i32, ptr %269, align 8, !tbaa !79
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %38, !llvm.loop !86

272:                                              ; preds = %267, %265, %141
  %273 = phi i32 [ %194, %267 ], [ %194, %265 ], [ %142, %141 ]
  %274 = load i64, ptr %19, align 8, !tbaa !38
  %275 = load i64, ptr %5, align 8, !tbaa !59
  %276 = icmp ult i64 %274, %275
  br i1 %276, label %277, label %316

277:                                              ; preds = %272
  %278 = load i32, ptr %6, align 4, !tbaa !71
  %279 = zext i32 %278 to i64
  %280 = zext i32 %273 to i64
  %281 = add nuw nsw i64 %280, %279
  %282 = icmp ult i64 %274, %281
  br i1 %282, label %283, label %293

283:                                              ; preds = %277
  %284 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %275, i64 %281), !nosanitize !44
  %285 = extractvalue { i64, i1 } %284, 1, !nosanitize !44
  br i1 %285, label %286, label %287, !prof !45, !nosanitize !44

286:                                              ; preds = %283
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

287:                                              ; preds = %283
  %288 = extractvalue { i64, i1 } %284, 0, !nosanitize !44
  %289 = tail call i64 @llvm.umin.i64(i64 %288, i64 258)
  %290 = load ptr, ptr %7, align 8, !tbaa !34
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 %281
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %291, i8 0, i64 %289, i1 false)
  %292 = add nuw nsw i64 %289, %281
  br label %313

293:                                              ; preds = %277
  %294 = add nuw nsw i64 %281, 258
  %295 = icmp ult i64 %274, %294
  br i1 %295, label %296, label %316

296:                                              ; preds = %293
  %297 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %275, i64 %274), !nosanitize !44
  %298 = extractvalue { i64, i1 } %297, 1, !nosanitize !44
  br i1 %298, label %299, label %300, !prof !45, !nosanitize !44

299:                                              ; preds = %296
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

300:                                              ; preds = %296
  %301 = sub nuw nsw i64 %294, %274
  %302 = extractvalue { i64, i1 } %297, 0, !nosanitize !44
  %303 = tail call i64 @llvm.umin.i64(i64 %301, i64 %302)
  %304 = load ptr, ptr %7, align 8, !tbaa !34
  %305 = getelementptr inbounds nuw i8, ptr %304, i64 %274
  %306 = and i64 %303, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %305, i8 0, i64 %306, i1 false)
  %307 = load i64, ptr %19, align 8, !tbaa !38
  %308 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %307, i64 %303), !nosanitize !44
  %309 = extractvalue { i64, i1 } %308, 1, !nosanitize !44
  br i1 %309, label %310, label %311, !prof !45, !nosanitize !44

310:                                              ; preds = %300
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

311:                                              ; preds = %300
  %312 = extractvalue { i64, i1 } %308, 0, !nosanitize !44
  br label %313

313:                                              ; preds = %311, %287
  %314 = phi i64 [ %292, %287 ], [ %312, %311 ]
  store i64 %314, ptr %19, align 8, !tbaa !38
  %315 = load i32, ptr %3, align 4, !tbaa !73
  br label %316

316:                                              ; preds = %313, %293, %272
  %317 = phi i32 [ %273, %272 ], [ %273, %293 ], [ %315, %313 ]
  %318 = icmp ult i32 %317, 262
  %319 = and i1 %20, %318
  br i1 %319, label %945, label %320

320:                                              ; preds = %316
  %321 = icmp eq i32 %317, 0
  br i1 %321, label %808, label %322

322:                                              ; preds = %320
  %323 = icmp ugt i32 %317, 2
  br i1 %323, label %324, label %535

324:                                              ; preds = %322, %32
  %325 = phi i32 [ %317, %322 ], [ %33, %32 ]
  %326 = load i32, ptr %6, align 4, !tbaa !71
  %327 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %326, i32 2), !nosanitize !44
  %328 = extractvalue { i32, i1 } %327, 1, !nosanitize !44
  br i1 %328, label %329, label %330, !prof !45, !nosanitize !44

329:                                              ; preds = %324
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

330:                                              ; preds = %324
  %331 = extractvalue { i32, i1 } %327, 0, !nosanitize !44
  %332 = load ptr, ptr %7, align 8, !tbaa !34
  %333 = load i32, ptr %15, align 8, !tbaa !78
  %334 = load i32, ptr %16, align 8, !tbaa !52
  %335 = shl i32 %333, %334
  %336 = zext i32 %331 to i64
  %337 = getelementptr inbounds nuw i8, ptr %332, i64 %336
  %338 = load i8, ptr %337, align 1, !tbaa !5
  %339 = zext i8 %338 to i32
  %340 = xor i32 %335, %339
  %341 = load i32, ptr %17, align 4, !tbaa !51
  %342 = and i32 %340, %341
  store i32 %342, ptr %15, align 8, !tbaa !78
  %343 = load ptr, ptr %12, align 8, !tbaa !37
  %344 = zext i32 %342 to i64
  %345 = getelementptr inbounds nuw i16, ptr %343, i64 %344
  %346 = load i16, ptr %345, align 2, !tbaa !60
  %347 = load ptr, ptr %13, align 8, !tbaa !35
  %348 = load i32, ptr %18, align 8, !tbaa !32
  %349 = and i32 %348, %326
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds nuw i16, ptr %347, i64 %350
  store i16 %346, ptr %351, align 2, !tbaa !60
  %352 = zext i16 %346 to i32
  %353 = trunc i32 %326 to i16
  store i16 %353, ptr %345, align 2, !tbaa !60
  %354 = icmp eq i16 %346, 0
  br i1 %354, label %535, label %355

355:                                              ; preds = %330
  %356 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %326, i32 %352), !nosanitize !44
  %357 = extractvalue { i32, i1 } %356, 0, !nosanitize !44
  %358 = extractvalue { i32, i1 } %356, 1, !nosanitize !44
  br i1 %358, label %359, label %360, !prof !45, !nosanitize !44

359:                                              ; preds = %355
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

360:                                              ; preds = %355
  %361 = load i32, ptr %4, align 8, !tbaa !31
  %362 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %361, i32 262), !nosanitize !44
  %363 = extractvalue { i32, i1 } %362, 1, !nosanitize !44
  br i1 %363, label %364, label %365, !prof !45, !nosanitize !44

364:                                              ; preds = %360
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

365:                                              ; preds = %360
  %366 = extractvalue { i32, i1 } %362, 0, !nosanitize !44
  %367 = icmp ugt i32 %357, %366
  br i1 %367, label %535, label %368

368:                                              ; preds = %365
  %369 = zext i32 %326 to i64
  %370 = getelementptr inbounds nuw i8, ptr %332, i64 %369
  %371 = load i32, ptr %21, align 8, !tbaa !75
  %372 = tail call i32 @llvm.usub.sat.i32(i32 %326, i32 %366)
  %373 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %371, i32 -1)
  %374 = extractvalue { i32, i1 } %373, 1, !nosanitize !44
  br i1 %374, label %375, label %376, !prof !45, !nosanitize !44

375:                                              ; preds = %497, %407, %368
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

376:                                              ; preds = %368
  %377 = load i32, ptr %22, align 8, !tbaa !68
  %378 = load i32, ptr %23, align 4, !tbaa !70
  %379 = getelementptr inbounds nuw i8, ptr %370, i64 258
  %380 = extractvalue { i32, i1 } %373, 0, !nosanitize !44
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8, ptr %370, i64 %381
  %383 = load i8, ptr %382, align 1, !tbaa !5
  %384 = sext i32 %371 to i64
  %385 = getelementptr inbounds i8, ptr %370, i64 %384
  %386 = load i8, ptr %385, align 1, !tbaa !5
  %387 = load i32, ptr %24, align 4, !tbaa !66
  %388 = icmp ult i32 %371, %387
  %389 = lshr i32 %378, 2
  %390 = select i1 %388, i32 %378, i32 %389
  %391 = tail call i32 @llvm.umin.i32(i32 %377, i32 %325)
  %392 = getelementptr i8, ptr %370, i64 -1
  %393 = getelementptr inbounds nuw i8, ptr %370, i64 1
  %394 = ptrtoint ptr %379 to i64
  br label %395

395:                                              ; preds = %529, %376
  %396 = phi i32 [ %371, %376 ], [ %516, %529 ]
  %397 = phi i32 [ %390, %376 ], [ %530, %529 ]
  %398 = phi i32 [ %352, %376 ], [ %523, %529 ]
  %399 = phi i8 [ %383, %376 ], [ %517, %529 ]
  %400 = phi i8 [ %386, %376 ], [ %518, %529 ]
  %401 = zext nneg i32 %398 to i64
  %402 = getelementptr inbounds nuw i8, ptr %332, i64 %401
  %403 = sext i32 %396 to i64
  %404 = getelementptr inbounds i8, ptr %402, i64 %403
  %405 = load i8, ptr %404, align 1, !tbaa !5
  %406 = icmp eq i8 %405, %400
  br i1 %406, label %407, label %515

407:                                              ; preds = %395
  %408 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %396, i32 -1)
  %409 = extractvalue { i32, i1 } %408, 1, !nosanitize !44
  br i1 %409, label %375, label %410, !prof !45, !nosanitize !44

410:                                              ; preds = %407
  %411 = extractvalue { i32, i1 } %408, 0, !nosanitize !44
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, ptr %402, i64 %412
  %414 = load i8, ptr %413, align 1, !tbaa !5
  %415 = icmp eq i8 %414, %399
  br i1 %415, label %416, label %515

416:                                              ; preds = %410
  %417 = load i8, ptr %402, align 1, !tbaa !5
  %418 = load i8, ptr %370, align 1, !tbaa !5
  %419 = icmp eq i8 %417, %418
  br i1 %419, label %420, label %515

420:                                              ; preds = %416
  %421 = getelementptr inbounds nuw i8, ptr %402, i64 1
  %422 = load i8, ptr %421, align 1, !tbaa !5
  %423 = load i8, ptr %393, align 1, !tbaa !5
  %424 = icmp eq i8 %422, %423
  br i1 %424, label %425, label %515

425:                                              ; preds = %420
  %426 = getelementptr inbounds nuw i8, ptr %402, i64 2
  br label %427

427:                                              ; preds = %472, %425
  %428 = phi ptr [ %426, %425 ], [ %476, %472 ]
  %429 = phi i64 [ 2, %425 ], [ %473, %472 ]
  %430 = getelementptr inbounds nuw i8, ptr %370, i64 %429
  %431 = getelementptr inbounds nuw i8, ptr %430, i64 1
  %432 = load i8, ptr %431, align 1, !tbaa !5
  %433 = getelementptr inbounds nuw i8, ptr %428, i64 1
  %434 = load i8, ptr %433, align 1, !tbaa !5
  %435 = icmp eq i8 %432, %434
  br i1 %435, label %436, label %481

436:                                              ; preds = %427
  %437 = getelementptr inbounds nuw i8, ptr %430, i64 2
  %438 = load i8, ptr %437, align 1, !tbaa !5
  %439 = getelementptr inbounds nuw i8, ptr %428, i64 2
  %440 = load i8, ptr %439, align 1, !tbaa !5
  %441 = icmp eq i8 %438, %440
  br i1 %441, label %442, label %483

442:                                              ; preds = %436
  %443 = getelementptr inbounds nuw i8, ptr %430, i64 3
  %444 = load i8, ptr %443, align 1, !tbaa !5
  %445 = getelementptr inbounds nuw i8, ptr %428, i64 3
  %446 = load i8, ptr %445, align 1, !tbaa !5
  %447 = icmp eq i8 %444, %446
  br i1 %447, label %448, label %485

448:                                              ; preds = %442
  %449 = getelementptr inbounds nuw i8, ptr %430, i64 4
  %450 = load i8, ptr %449, align 1, !tbaa !5
  %451 = getelementptr inbounds nuw i8, ptr %428, i64 4
  %452 = load i8, ptr %451, align 1, !tbaa !5
  %453 = icmp eq i8 %450, %452
  br i1 %453, label %454, label %487

454:                                              ; preds = %448
  %455 = getelementptr inbounds nuw i8, ptr %430, i64 5
  %456 = load i8, ptr %455, align 1, !tbaa !5
  %457 = getelementptr inbounds nuw i8, ptr %428, i64 5
  %458 = load i8, ptr %457, align 1, !tbaa !5
  %459 = icmp eq i8 %456, %458
  br i1 %459, label %460, label %489

460:                                              ; preds = %454
  %461 = getelementptr inbounds nuw i8, ptr %430, i64 6
  %462 = load i8, ptr %461, align 1, !tbaa !5
  %463 = getelementptr inbounds nuw i8, ptr %428, i64 6
  %464 = load i8, ptr %463, align 1, !tbaa !5
  %465 = icmp eq i8 %462, %464
  br i1 %465, label %466, label %491

466:                                              ; preds = %460
  %467 = getelementptr inbounds nuw i8, ptr %430, i64 7
  %468 = load i8, ptr %467, align 1, !tbaa !5
  %469 = getelementptr inbounds nuw i8, ptr %428, i64 7
  %470 = load i8, ptr %469, align 1, !tbaa !5
  %471 = icmp eq i8 %468, %470
  br i1 %471, label %472, label %493

472:                                              ; preds = %466
  %473 = add nuw nsw i64 %429, 8
  %474 = getelementptr inbounds nuw i8, ptr %370, i64 %473
  %475 = load i8, ptr %474, align 1, !tbaa !5
  %476 = getelementptr inbounds nuw i8, ptr %428, i64 8
  %477 = load i8, ptr %476, align 1, !tbaa !5
  %478 = icmp eq i8 %475, %477
  %479 = icmp samesign ult i64 %429, 250
  %480 = select i1 %478, i1 %479, i1 false
  br i1 %480, label %427, label %495, !llvm.loop !123

481:                                              ; preds = %427
  %482 = getelementptr inbounds nuw i8, ptr %430, i64 1
  br label %497

483:                                              ; preds = %436
  %484 = getelementptr inbounds nuw i8, ptr %430, i64 2
  br label %497

485:                                              ; preds = %442
  %486 = getelementptr inbounds nuw i8, ptr %430, i64 3
  br label %497

487:                                              ; preds = %448
  %488 = getelementptr inbounds nuw i8, ptr %430, i64 4
  br label %497

489:                                              ; preds = %454
  %490 = getelementptr inbounds nuw i8, ptr %430, i64 5
  br label %497

491:                                              ; preds = %460
  %492 = getelementptr inbounds nuw i8, ptr %430, i64 6
  br label %497

493:                                              ; preds = %466
  %494 = getelementptr inbounds nuw i8, ptr %430, i64 7
  br label %497

495:                                              ; preds = %472
  %496 = getelementptr inbounds nuw i8, ptr %370, i64 %473
  br label %497

497:                                              ; preds = %495, %493, %491, %489, %487, %485, %483, %481
  %498 = phi ptr [ %482, %481 ], [ %484, %483 ], [ %486, %485 ], [ %488, %487 ], [ %490, %489 ], [ %492, %491 ], [ %494, %493 ], [ %496, %495 ]
  %499 = ptrtoint ptr %498 to i64
  %500 = sub i64 %394, %499
  %501 = trunc i64 %500 to i32
  %502 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %501), !nosanitize !44
  %503 = extractvalue { i32, i1 } %502, 0, !nosanitize !44
  %504 = extractvalue { i32, i1 } %502, 1, !nosanitize !44
  br i1 %504, label %375, label %505, !prof !45, !nosanitize !44

505:                                              ; preds = %497
  %506 = icmp sgt i32 %503, %396
  br i1 %506, label %507, label %515

507:                                              ; preds = %505
  store i32 %398, ptr %8, align 8, !tbaa !81
  %508 = icmp slt i32 %503, %391
  br i1 %508, label %509, label %532

509:                                              ; preds = %507
  %510 = sext i32 %503 to i64
  %511 = getelementptr i8, ptr %392, i64 %510
  %512 = load i8, ptr %511, align 1, !tbaa !5
  %513 = getelementptr inbounds i8, ptr %370, i64 %510
  %514 = load i8, ptr %513, align 1, !tbaa !5
  br label %515

515:                                              ; preds = %509, %505, %420, %416, %410, %395
  %516 = phi i32 [ %396, %395 ], [ %396, %410 ], [ %396, %416 ], [ %396, %420 ], [ %503, %509 ], [ %396, %505 ]
  %517 = phi i8 [ %399, %395 ], [ %399, %410 ], [ %399, %416 ], [ %399, %420 ], [ %512, %509 ], [ %399, %505 ]
  %518 = phi i8 [ %400, %395 ], [ %400, %410 ], [ %400, %416 ], [ %400, %420 ], [ %514, %509 ], [ %400, %505 ]
  %519 = and i32 %398, %348
  %520 = zext nneg i32 %519 to i64
  %521 = getelementptr inbounds nuw i16, ptr %347, i64 %520
  %522 = load i16, ptr %521, align 2, !tbaa !60
  %523 = zext i16 %522 to i32
  %524 = icmp ult i32 %372, %523
  br i1 %524, label %525, label %532

525:                                              ; preds = %515
  %526 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %397, i32 1), !nosanitize !44
  %527 = extractvalue { i32, i1 } %526, 1, !nosanitize !44
  br i1 %527, label %528, label %529, !prof !45, !nosanitize !44

528:                                              ; preds = %525
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

529:                                              ; preds = %525
  %530 = extractvalue { i32, i1 } %526, 0, !nosanitize !44
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %395, !llvm.loop !124

532:                                              ; preds = %529, %515, %507
  %533 = phi i32 [ %516, %529 ], [ %516, %515 ], [ %503, %507 ]
  %534 = tail call i32 @llvm.umin.i32(i32 %533, i32 %325)
  store i32 %534, ptr %25, align 8, !tbaa !76
  br label %537

535:                                              ; preds = %365, %330, %322
  %536 = load i32, ptr %25, align 8, !tbaa !76
  br label %537

537:                                              ; preds = %535, %532
  %538 = phi i32 [ %536, %535 ], [ %534, %532 ]
  %539 = icmp ugt i32 %538, 2
  br i1 %539, label %540, label %691

540:                                              ; preds = %537
  %541 = trunc i32 %538 to i8
  %542 = add i8 %541, -3
  %543 = load i32, ptr %6, align 4, !tbaa !71
  %544 = load i32, ptr %8, align 8, !tbaa !81
  %545 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %543, i32 %544), !nosanitize !44
  %546 = extractvalue { i32, i1 } %545, 1, !nosanitize !44
  br i1 %546, label %547, label %548, !prof !45, !nosanitize !44

547:                                              ; preds = %540
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

548:                                              ; preds = %540
  %549 = extractvalue { i32, i1 } %545, 0, !nosanitize !44
  %550 = trunc i32 %549 to i16
  %551 = load i32, ptr %27, align 4, !tbaa !118
  %552 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %551, i32 1), !nosanitize !44
  %553 = extractvalue { i32, i1 } %552, 1, !nosanitize !44
  br i1 %553, label %554, label %555, !prof !45, !nosanitize !44

554:                                              ; preds = %548
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

555:                                              ; preds = %548
  %556 = extractvalue { i32, i1 } %552, 0, !nosanitize !44
  %557 = load ptr, ptr %26, align 8, !tbaa !43
  %558 = trunc i32 %549 to i8
  store i32 %556, ptr %27, align 4, !tbaa !118
  %559 = zext i32 %551 to i64
  %560 = getelementptr inbounds nuw i8, ptr %557, i64 %559
  store i8 %558, ptr %560, align 1, !tbaa !5
  %561 = load i32, ptr %27, align 4, !tbaa !118
  %562 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %561, i32 1), !nosanitize !44
  %563 = extractvalue { i32, i1 } %562, 1, !nosanitize !44
  br i1 %563, label %564, label %565, !prof !45, !nosanitize !44

564:                                              ; preds = %555
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

565:                                              ; preds = %555
  %566 = extractvalue { i32, i1 } %562, 0, !nosanitize !44
  %567 = load ptr, ptr %26, align 8, !tbaa !43
  %568 = lshr i32 %549, 8
  %569 = trunc i32 %568 to i8
  store i32 %566, ptr %27, align 4, !tbaa !118
  %570 = zext i32 %561 to i64
  %571 = getelementptr inbounds nuw i8, ptr %567, i64 %570
  store i8 %569, ptr %571, align 1, !tbaa !5
  %572 = load i32, ptr %27, align 4, !tbaa !118
  %573 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %572, i32 1), !nosanitize !44
  %574 = extractvalue { i32, i1 } %573, 1, !nosanitize !44
  br i1 %574, label %575, label %576, !prof !45, !nosanitize !44

575:                                              ; preds = %565
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

576:                                              ; preds = %565
  %577 = extractvalue { i32, i1 } %573, 0, !nosanitize !44
  %578 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %577, ptr %27, align 4, !tbaa !118
  %579 = zext i32 %572 to i64
  %580 = getelementptr inbounds nuw i8, ptr %578, i64 %579
  store i8 %542, ptr %580, align 1, !tbaa !5
  %581 = add i16 %550, -1
  %582 = zext i8 %542 to i64
  %583 = getelementptr inbounds nuw [0 x i8], ptr @_length_code, i64 0, i64 %582
  %584 = load i8, ptr %583, align 1, !tbaa !5
  %585 = zext i8 %584 to i64
  %586 = add nuw nsw i64 %585, 257
  %587 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %28, i64 0, i64 %586
  %588 = load i16, ptr %587, align 4, !tbaa !5
  %589 = add i16 %588, 1
  store i16 %589, ptr %587, align 4, !tbaa !5
  %590 = icmp ult i16 %581, 256
  %591 = lshr i16 %581, 7
  %592 = add nuw nsw i16 %591, 256
  %593 = select i1 %590, i16 %581, i16 %592
  %594 = zext i16 %593 to i64
  %595 = getelementptr inbounds nuw [0 x i8], ptr @_dist_code, i64 0, i64 %594
  %596 = load i8, ptr %595, align 1, !tbaa !5
  %597 = zext i8 %596 to i64
  %598 = getelementptr inbounds nuw [61 x %struct.ct_data_s], ptr %30, i64 0, i64 %597
  %599 = load i16, ptr %598, align 4, !tbaa !5
  %600 = add i16 %599, 1
  store i16 %600, ptr %598, align 4, !tbaa !5
  %601 = load i32, ptr %27, align 4, !tbaa !118
  %602 = load i32, ptr %29, align 8, !tbaa !46
  %603 = icmp eq i32 %601, %602
  %604 = load i32, ptr %25, align 8, !tbaa !76
  %605 = load i32, ptr %3, align 4, !tbaa !73
  %606 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %605, i32 %604), !nosanitize !44
  %607 = extractvalue { i32, i1 } %606, 1, !nosanitize !44
  br i1 %607, label %608, label %609, !prof !45, !nosanitize !44

608:                                              ; preds = %576
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

609:                                              ; preds = %576
  %610 = extractvalue { i32, i1 } %606, 0, !nosanitize !44
  store i32 %610, ptr %3, align 4, !tbaa !73
  %611 = load i32, ptr %31, align 8, !tbaa !64
  %612 = icmp ule i32 %604, %611
  %613 = icmp ugt i32 %610, 2
  %614 = select i1 %612, i1 %613, i1 false
  br i1 %614, label %615, label %664

615:                                              ; preds = %609
  %616 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %604, i32 1), !nosanitize !44
  %617 = extractvalue { i32, i1 } %616, 1, !nosanitize !44
  br i1 %617, label %618, label %619, !prof !45, !nosanitize !44

618:                                              ; preds = %615
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

619:                                              ; preds = %615
  %620 = extractvalue { i32, i1 } %616, 0, !nosanitize !44
  store i32 %620, ptr %25, align 8, !tbaa !76
  %621 = load i32, ptr %6, align 4, !tbaa !71
  br label %622

622:                                              ; preds = %659, %619
  %623 = phi i32 [ %660, %659 ], [ %620, %619 ]
  %624 = phi i32 [ %629, %659 ], [ %621, %619 ]
  %625 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %624, i32 1), !nosanitize !44
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !44
  br i1 %626, label %627, label %628, !prof !45, !nosanitize !44

627:                                              ; preds = %622
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

628:                                              ; preds = %622
  %629 = extractvalue { i32, i1 } %625, 0, !nosanitize !44
  store i32 %629, ptr %6, align 4, !tbaa !71
  %630 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %629, i32 2), !nosanitize !44
  %631 = extractvalue { i32, i1 } %630, 1, !nosanitize !44
  br i1 %631, label %632, label %633, !prof !45, !nosanitize !44

632:                                              ; preds = %628
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

633:                                              ; preds = %628
  %634 = extractvalue { i32, i1 } %630, 0, !nosanitize !44
  %635 = load ptr, ptr %7, align 8, !tbaa !34
  %636 = load i32, ptr %15, align 8, !tbaa !78
  %637 = load i32, ptr %16, align 8, !tbaa !52
  %638 = shl i32 %636, %637
  %639 = zext i32 %634 to i64
  %640 = getelementptr inbounds nuw i8, ptr %635, i64 %639
  %641 = load i8, ptr %640, align 1, !tbaa !5
  %642 = zext i8 %641 to i32
  %643 = xor i32 %638, %642
  %644 = load i32, ptr %17, align 4, !tbaa !51
  %645 = and i32 %643, %644
  store i32 %645, ptr %15, align 8, !tbaa !78
  %646 = load ptr, ptr %12, align 8, !tbaa !37
  %647 = zext i32 %645 to i64
  %648 = getelementptr inbounds nuw i16, ptr %646, i64 %647
  %649 = load i16, ptr %648, align 2, !tbaa !60
  %650 = load ptr, ptr %13, align 8, !tbaa !35
  %651 = load i32, ptr %18, align 8, !tbaa !32
  %652 = and i32 %651, %629
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds nuw i16, ptr %650, i64 %653
  store i16 %649, ptr %654, align 2, !tbaa !60
  %655 = trunc i32 %629 to i16
  store i16 %655, ptr %648, align 2, !tbaa !60
  %656 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %623, i32 1), !nosanitize !44
  %657 = extractvalue { i32, i1 } %656, 1, !nosanitize !44
  br i1 %657, label %658, label %659, !prof !45, !nosanitize !44

658:                                              ; preds = %633
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

659:                                              ; preds = %633
  %660 = extractvalue { i32, i1 } %656, 0, !nosanitize !44
  store i32 %660, ptr %25, align 8, !tbaa !76
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %662, label %622, !llvm.loop !125

662:                                              ; preds = %659
  %663 = add nuw i32 %629, 1
  store i32 %663, ptr %6, align 4, !tbaa !71
  br i1 %603, label %743, label %690

664:                                              ; preds = %609
  %665 = load i32, ptr %6, align 4, !tbaa !71
  %666 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %665, i32 %604), !nosanitize !44
  %667 = extractvalue { i32, i1 } %666, 1, !nosanitize !44
  br i1 %667, label %668, label %669, !prof !45, !nosanitize !44

668:                                              ; preds = %664
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

669:                                              ; preds = %664
  %670 = extractvalue { i32, i1 } %666, 0, !nosanitize !44
  store i32 %670, ptr %6, align 4, !tbaa !71
  store i32 0, ptr %25, align 8, !tbaa !76
  %671 = load ptr, ptr %7, align 8, !tbaa !34
  %672 = zext i32 %670 to i64
  %673 = getelementptr inbounds nuw i8, ptr %671, i64 %672
  %674 = load i8, ptr %673, align 1, !tbaa !5
  %675 = zext i8 %674 to i32
  store i32 %675, ptr %15, align 8, !tbaa !78
  %676 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %670, i32 1), !nosanitize !44
  %677 = extractvalue { i32, i1 } %676, 1, !nosanitize !44
  br i1 %677, label %678, label %679, !prof !45, !nosanitize !44

678:                                              ; preds = %669
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

679:                                              ; preds = %669
  %680 = extractvalue { i32, i1 } %676, 0, !nosanitize !44
  %681 = load i32, ptr %16, align 8, !tbaa !52
  %682 = shl i32 %675, %681
  %683 = zext i32 %680 to i64
  %684 = getelementptr inbounds nuw i8, ptr %671, i64 %683
  %685 = load i8, ptr %684, align 1, !tbaa !5
  %686 = zext i8 %685 to i32
  %687 = xor i32 %682, %686
  %688 = load i32, ptr %17, align 4, !tbaa !51
  %689 = and i32 %687, %688
  store i32 %689, ptr %15, align 8, !tbaa !78
  br i1 %603, label %743, label %690

690:                                              ; preds = %803, %741, %679, %662
  br label %32

691:                                              ; preds = %537
  %692 = load ptr, ptr %7, align 8, !tbaa !34
  %693 = load i32, ptr %6, align 4, !tbaa !71
  %694 = zext i32 %693 to i64
  %695 = getelementptr inbounds nuw i8, ptr %692, i64 %694
  %696 = load i8, ptr %695, align 1, !tbaa !5
  %697 = load i32, ptr %27, align 4, !tbaa !118
  %698 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %697, i32 1), !nosanitize !44
  %699 = extractvalue { i32, i1 } %698, 1, !nosanitize !44
  br i1 %699, label %700, label %701, !prof !45, !nosanitize !44

700:                                              ; preds = %691
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

701:                                              ; preds = %691
  %702 = extractvalue { i32, i1 } %698, 0, !nosanitize !44
  %703 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %702, ptr %27, align 4, !tbaa !118
  %704 = zext i32 %697 to i64
  %705 = getelementptr inbounds nuw i8, ptr %703, i64 %704
  store i8 0, ptr %705, align 1, !tbaa !5
  %706 = load i32, ptr %27, align 4, !tbaa !118
  %707 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %706, i32 1), !nosanitize !44
  %708 = extractvalue { i32, i1 } %707, 1, !nosanitize !44
  br i1 %708, label %709, label %710, !prof !45, !nosanitize !44

709:                                              ; preds = %701
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

710:                                              ; preds = %701
  %711 = extractvalue { i32, i1 } %707, 0, !nosanitize !44
  %712 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %711, ptr %27, align 4, !tbaa !118
  %713 = zext i32 %706 to i64
  %714 = getelementptr inbounds nuw i8, ptr %712, i64 %713
  store i8 0, ptr %714, align 1, !tbaa !5
  %715 = load i32, ptr %27, align 4, !tbaa !118
  %716 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %715, i32 1), !nosanitize !44
  %717 = extractvalue { i32, i1 } %716, 1, !nosanitize !44
  br i1 %717, label %718, label %719, !prof !45, !nosanitize !44

718:                                              ; preds = %710
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

719:                                              ; preds = %710
  %720 = extractvalue { i32, i1 } %716, 0, !nosanitize !44
  %721 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %720, ptr %27, align 4, !tbaa !118
  %722 = zext i32 %715 to i64
  %723 = getelementptr inbounds nuw i8, ptr %721, i64 %722
  store i8 %696, ptr %723, align 1, !tbaa !5
  %724 = zext i8 %696 to i64
  %725 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %28, i64 0, i64 %724
  %726 = load i16, ptr %725, align 4, !tbaa !5
  %727 = add i16 %726, 1
  store i16 %727, ptr %725, align 4, !tbaa !5
  %728 = load i32, ptr %27, align 4, !tbaa !118
  %729 = load i32, ptr %29, align 8, !tbaa !46
  %730 = icmp eq i32 %728, %729
  %731 = load i32, ptr %3, align 4, !tbaa !73
  %732 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %731, i32 1), !nosanitize !44
  %733 = extractvalue { i32, i1 } %732, 1, !nosanitize !44
  br i1 %733, label %734, label %735, !prof !45, !nosanitize !44

734:                                              ; preds = %887, %819, %751, %719
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

735:                                              ; preds = %719
  %736 = extractvalue { i32, i1 } %732, 0, !nosanitize !44
  store i32 %736, ptr %3, align 4, !tbaa !73
  %737 = load i32, ptr %6, align 4, !tbaa !71
  %738 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %737, i32 1), !nosanitize !44
  %739 = extractvalue { i32, i1 } %738, 1, !nosanitize !44
  br i1 %739, label %740, label %741, !prof !45, !nosanitize !44

740:                                              ; preds = %735
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

741:                                              ; preds = %735
  %742 = extractvalue { i32, i1 } %738, 0, !nosanitize !44
  store i32 %742, ptr %6, align 4, !tbaa !71
  br i1 %730, label %743, label %690

743:                                              ; preds = %741, %679, %662
  %744 = phi i32 [ %670, %679 ], [ %663, %662 ], [ %742, %741 ]
  %745 = load i64, ptr %9, align 8, !tbaa !72
  %746 = icmp sgt i64 %745, -1
  br i1 %746, label %747, label %751

747:                                              ; preds = %743
  %748 = load ptr, ptr %7, align 8, !tbaa !34
  %749 = and i64 %745, 4294967295
  %750 = getelementptr inbounds nuw i8, ptr %748, i64 %749
  br label %751

751:                                              ; preds = %747, %743
  %752 = phi ptr [ %750, %747 ], [ null, %743 ]
  %753 = zext i32 %744 to i64
  %754 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %753, i64 %745), !nosanitize !44
  %755 = extractvalue { i64, i1 } %754, 1, !nosanitize !44
  br i1 %755, label %734, label %756, !prof !45, !nosanitize !44

756:                                              ; preds = %751
  %757 = extractvalue { i64, i1 } %754, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %752, i64 noundef %757, i32 noundef 0) #8
  %758 = load i32, ptr %6, align 4, !tbaa !71
  %759 = zext i32 %758 to i64
  store i64 %759, ptr %9, align 8, !tbaa !72
  %760 = load ptr, ptr %0, align 8, !tbaa !19
  %761 = getelementptr inbounds nuw i8, ptr %760, i64 56
  %762 = load ptr, ptr %761, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %762) #8
  %763 = getelementptr inbounds nuw i8, ptr %762, i64 40
  %764 = load i64, ptr %763, align 8, !tbaa !55
  %765 = getelementptr inbounds nuw i8, ptr %760, i64 32
  %766 = load i32, ptr %765, align 8, !tbaa !96
  %767 = zext i32 %766 to i64
  %768 = tail call i64 @llvm.umin.i64(i64 %764, i64 %767)
  %769 = trunc nuw i64 %768 to i32
  %770 = icmp eq i64 %768, 0
  br i1 %770, label %803, label %771

771:                                              ; preds = %756
  %772 = getelementptr inbounds nuw i8, ptr %760, i64 24
  %773 = load ptr, ptr %772, align 8, !tbaa !95
  %774 = getelementptr inbounds nuw i8, ptr %762, i64 32
  %775 = load ptr, ptr %774, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %773, ptr align 1 %775, i64 %768, i1 false)
  %776 = load ptr, ptr %772, align 8, !tbaa !95
  %777 = getelementptr inbounds nuw i8, ptr %776, i64 %768
  store ptr %777, ptr %772, align 8, !tbaa !95
  %778 = load ptr, ptr %774, align 8, !tbaa !56
  %779 = getelementptr inbounds nuw i8, ptr %778, i64 %768
  store ptr %779, ptr %774, align 8, !tbaa !56
  %780 = getelementptr inbounds nuw i8, ptr %760, i64 40
  %781 = load i64, ptr %780, align 8, !tbaa !97
  %782 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %781, i64 %768), !nosanitize !44
  %783 = extractvalue { i64, i1 } %782, 1, !nosanitize !44
  br i1 %783, label %784, label %785, !prof !45, !nosanitize !44

784:                                              ; preds = %771
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

785:                                              ; preds = %771
  %786 = extractvalue { i64, i1 } %782, 0, !nosanitize !44
  store i64 %786, ptr %780, align 8, !tbaa !97
  %787 = load i32, ptr %765, align 8, !tbaa !96
  %788 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %787, i32 %769), !nosanitize !44
  %789 = extractvalue { i32, i1 } %788, 1, !nosanitize !44
  br i1 %789, label %790, label %791, !prof !45, !nosanitize !44

790:                                              ; preds = %785
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

791:                                              ; preds = %785
  %792 = extractvalue { i32, i1 } %788, 0, !nosanitize !44
  store i32 %792, ptr %765, align 8, !tbaa !96
  %793 = load i64, ptr %763, align 8, !tbaa !55
  %794 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %793, i64 %768), !nosanitize !44
  %795 = extractvalue { i64, i1 } %794, 1, !nosanitize !44
  br i1 %795, label %796, label %797, !prof !45, !nosanitize !44

796:                                              ; preds = %791
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

797:                                              ; preds = %791
  %798 = extractvalue { i64, i1 } %794, 0, !nosanitize !44
  store i64 %798, ptr %763, align 8, !tbaa !55
  %799 = icmp eq i64 %798, 0
  br i1 %799, label %800, label %803

800:                                              ; preds = %797
  %801 = getelementptr inbounds nuw i8, ptr %762, i64 16
  %802 = load ptr, ptr %801, align 8, !tbaa !40
  store ptr %802, ptr %774, align 8, !tbaa !56
  br label %803

803:                                              ; preds = %800, %797, %756
  %804 = load ptr, ptr %0, align 8, !tbaa !19
  %805 = getelementptr inbounds nuw i8, ptr %804, i64 32
  %806 = load i32, ptr %805, align 8, !tbaa !96
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %945, label %690

808:                                              ; preds = %320
  %809 = load i32, ptr %6, align 4, !tbaa !71
  %810 = tail call i32 @llvm.umin.i32(i32 %809, i32 2)
  store i32 %810, ptr %10, align 4, !tbaa !74
  %811 = icmp eq i32 %1, 4
  br i1 %811, label %812, label %877

812:                                              ; preds = %808
  %813 = load i64, ptr %9, align 8, !tbaa !72
  %814 = icmp sgt i64 %813, -1
  br i1 %814, label %815, label %819

815:                                              ; preds = %812
  %816 = load ptr, ptr %7, align 8, !tbaa !34
  %817 = and i64 %813, 4294967295
  %818 = getelementptr inbounds nuw i8, ptr %816, i64 %817
  br label %819

819:                                              ; preds = %815, %812
  %820 = phi ptr [ %818, %815 ], [ null, %812 ]
  %821 = zext i32 %809 to i64
  %822 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %821, i64 %813), !nosanitize !44
  %823 = extractvalue { i64, i1 } %822, 1, !nosanitize !44
  br i1 %823, label %734, label %824, !prof !45, !nosanitize !44

824:                                              ; preds = %819
  %825 = extractvalue { i64, i1 } %822, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %820, i64 noundef %825, i32 noundef 1) #8
  %826 = load i32, ptr %6, align 4, !tbaa !71
  %827 = zext i32 %826 to i64
  store i64 %827, ptr %9, align 8, !tbaa !72
  %828 = load ptr, ptr %0, align 8, !tbaa !19
  %829 = getelementptr inbounds nuw i8, ptr %828, i64 56
  %830 = load ptr, ptr %829, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %830) #8
  %831 = getelementptr inbounds nuw i8, ptr %830, i64 40
  %832 = load i64, ptr %831, align 8, !tbaa !55
  %833 = getelementptr inbounds nuw i8, ptr %828, i64 32
  %834 = load i32, ptr %833, align 8, !tbaa !96
  %835 = zext i32 %834 to i64
  %836 = tail call i64 @llvm.umin.i64(i64 %832, i64 %835)
  %837 = trunc nuw i64 %836 to i32
  %838 = icmp eq i64 %836, 0
  br i1 %838, label %871, label %839

839:                                              ; preds = %824
  %840 = getelementptr inbounds nuw i8, ptr %828, i64 24
  %841 = load ptr, ptr %840, align 8, !tbaa !95
  %842 = getelementptr inbounds nuw i8, ptr %830, i64 32
  %843 = load ptr, ptr %842, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %841, ptr align 1 %843, i64 %836, i1 false)
  %844 = load ptr, ptr %840, align 8, !tbaa !95
  %845 = getelementptr inbounds nuw i8, ptr %844, i64 %836
  store ptr %845, ptr %840, align 8, !tbaa !95
  %846 = load ptr, ptr %842, align 8, !tbaa !56
  %847 = getelementptr inbounds nuw i8, ptr %846, i64 %836
  store ptr %847, ptr %842, align 8, !tbaa !56
  %848 = getelementptr inbounds nuw i8, ptr %828, i64 40
  %849 = load i64, ptr %848, align 8, !tbaa !97
  %850 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %849, i64 %836), !nosanitize !44
  %851 = extractvalue { i64, i1 } %850, 1, !nosanitize !44
  br i1 %851, label %852, label %853, !prof !45, !nosanitize !44

852:                                              ; preds = %839
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

853:                                              ; preds = %839
  %854 = extractvalue { i64, i1 } %850, 0, !nosanitize !44
  store i64 %854, ptr %848, align 8, !tbaa !97
  %855 = load i32, ptr %833, align 8, !tbaa !96
  %856 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %855, i32 %837), !nosanitize !44
  %857 = extractvalue { i32, i1 } %856, 1, !nosanitize !44
  br i1 %857, label %858, label %859, !prof !45, !nosanitize !44

858:                                              ; preds = %853
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

859:                                              ; preds = %853
  %860 = extractvalue { i32, i1 } %856, 0, !nosanitize !44
  store i32 %860, ptr %833, align 8, !tbaa !96
  %861 = load i64, ptr %831, align 8, !tbaa !55
  %862 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %861, i64 %836), !nosanitize !44
  %863 = extractvalue { i64, i1 } %862, 1, !nosanitize !44
  br i1 %863, label %864, label %865, !prof !45, !nosanitize !44

864:                                              ; preds = %859
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

865:                                              ; preds = %859
  %866 = extractvalue { i64, i1 } %862, 0, !nosanitize !44
  store i64 %866, ptr %831, align 8, !tbaa !55
  %867 = icmp eq i64 %866, 0
  br i1 %867, label %868, label %871

868:                                              ; preds = %865
  %869 = getelementptr inbounds nuw i8, ptr %830, i64 16
  %870 = load ptr, ptr %869, align 8, !tbaa !40
  store ptr %870, ptr %842, align 8, !tbaa !56
  br label %871

871:                                              ; preds = %868, %865, %824
  %872 = load ptr, ptr %0, align 8, !tbaa !19
  %873 = getelementptr inbounds nuw i8, ptr %872, i64 32
  %874 = load i32, ptr %873, align 8, !tbaa !96
  %875 = icmp eq i32 %874, 0
  %876 = select i1 %875, i32 2, i32 3
  br label %945

877:                                              ; preds = %808
  %878 = load i32, ptr %27, align 4, !tbaa !118
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %944, label %880

880:                                              ; preds = %877
  %881 = load i64, ptr %9, align 8, !tbaa !72
  %882 = icmp sgt i64 %881, -1
  br i1 %882, label %883, label %887

883:                                              ; preds = %880
  %884 = load ptr, ptr %7, align 8, !tbaa !34
  %885 = and i64 %881, 4294967295
  %886 = getelementptr inbounds nuw i8, ptr %884, i64 %885
  br label %887

887:                                              ; preds = %883, %880
  %888 = phi ptr [ %886, %883 ], [ null, %880 ]
  %889 = zext i32 %809 to i64
  %890 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %889, i64 %881), !nosanitize !44
  %891 = extractvalue { i64, i1 } %890, 1, !nosanitize !44
  br i1 %891, label %734, label %892, !prof !45, !nosanitize !44

892:                                              ; preds = %887
  %893 = extractvalue { i64, i1 } %890, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %888, i64 noundef %893, i32 noundef 0) #8
  %894 = load i32, ptr %6, align 4, !tbaa !71
  %895 = zext i32 %894 to i64
  store i64 %895, ptr %9, align 8, !tbaa !72
  %896 = load ptr, ptr %0, align 8, !tbaa !19
  %897 = getelementptr inbounds nuw i8, ptr %896, i64 56
  %898 = load ptr, ptr %897, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %898) #8
  %899 = getelementptr inbounds nuw i8, ptr %898, i64 40
  %900 = load i64, ptr %899, align 8, !tbaa !55
  %901 = getelementptr inbounds nuw i8, ptr %896, i64 32
  %902 = load i32, ptr %901, align 8, !tbaa !96
  %903 = zext i32 %902 to i64
  %904 = tail call i64 @llvm.umin.i64(i64 %900, i64 %903)
  %905 = trunc nuw i64 %904 to i32
  %906 = icmp eq i64 %904, 0
  br i1 %906, label %939, label %907

907:                                              ; preds = %892
  %908 = getelementptr inbounds nuw i8, ptr %896, i64 24
  %909 = load ptr, ptr %908, align 8, !tbaa !95
  %910 = getelementptr inbounds nuw i8, ptr %898, i64 32
  %911 = load ptr, ptr %910, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %909, ptr align 1 %911, i64 %904, i1 false)
  %912 = load ptr, ptr %908, align 8, !tbaa !95
  %913 = getelementptr inbounds nuw i8, ptr %912, i64 %904
  store ptr %913, ptr %908, align 8, !tbaa !95
  %914 = load ptr, ptr %910, align 8, !tbaa !56
  %915 = getelementptr inbounds nuw i8, ptr %914, i64 %904
  store ptr %915, ptr %910, align 8, !tbaa !56
  %916 = getelementptr inbounds nuw i8, ptr %896, i64 40
  %917 = load i64, ptr %916, align 8, !tbaa !97
  %918 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %917, i64 %904), !nosanitize !44
  %919 = extractvalue { i64, i1 } %918, 1, !nosanitize !44
  br i1 %919, label %920, label %921, !prof !45, !nosanitize !44

920:                                              ; preds = %907
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

921:                                              ; preds = %907
  %922 = extractvalue { i64, i1 } %918, 0, !nosanitize !44
  store i64 %922, ptr %916, align 8, !tbaa !97
  %923 = load i32, ptr %901, align 8, !tbaa !96
  %924 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %923, i32 %905), !nosanitize !44
  %925 = extractvalue { i32, i1 } %924, 1, !nosanitize !44
  br i1 %925, label %926, label %927, !prof !45, !nosanitize !44

926:                                              ; preds = %921
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

927:                                              ; preds = %921
  %928 = extractvalue { i32, i1 } %924, 0, !nosanitize !44
  store i32 %928, ptr %901, align 8, !tbaa !96
  %929 = load i64, ptr %899, align 8, !tbaa !55
  %930 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %929, i64 %904), !nosanitize !44
  %931 = extractvalue { i64, i1 } %930, 1, !nosanitize !44
  br i1 %931, label %932, label %933, !prof !45, !nosanitize !44

932:                                              ; preds = %927
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

933:                                              ; preds = %927
  %934 = extractvalue { i64, i1 } %930, 0, !nosanitize !44
  store i64 %934, ptr %899, align 8, !tbaa !55
  %935 = icmp eq i64 %934, 0
  br i1 %935, label %936, label %939

936:                                              ; preds = %933
  %937 = getelementptr inbounds nuw i8, ptr %898, i64 16
  %938 = load ptr, ptr %937, align 8, !tbaa !40
  store ptr %938, ptr %910, align 8, !tbaa !56
  br label %939

939:                                              ; preds = %936, %933, %892
  %940 = load ptr, ptr %0, align 8, !tbaa !19
  %941 = getelementptr inbounds nuw i8, ptr %940, i64 32
  %942 = load i32, ptr %941, align 8, !tbaa !96
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %945, label %944

944:                                              ; preds = %939, %877
  br label %945

945:                                              ; preds = %944, %939, %871, %803, %316
  %946 = phi i32 [ 1, %944 ], [ %876, %871 ], [ 0, %939 ], [ 0, %316 ], [ 0, %803 ]
  ret i32 %946
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

35:                                               ; preds = %718, %2
  %36 = load i32, ptr %3, align 4, !tbaa !73
  %37 = icmp ult i32 %36, 262
  br i1 %37, label %38, label %330

38:                                               ; preds = %35
  %39 = load i32, ptr %4, align 8, !tbaa !31
  %40 = zext i32 %39 to i64
  br label %41

41:                                               ; preds = %270, %38
  %42 = phi i32 [ %197, %270 ], [ %36, %38 ]
  %43 = load i64, ptr %5, align 8, !tbaa !59
  %44 = zext nneg i32 %42 to i64
  %45 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %43, i64 %44), !nosanitize !44
  %46 = extractvalue { i64, i1 } %45, 1, !nosanitize !44
  br i1 %46, label %47, label %48, !prof !45, !nosanitize !44

47:                                               ; preds = %41
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

48:                                               ; preds = %41
  %49 = extractvalue { i64, i1 } %45, 0, !nosanitize !44
  %50 = load i32, ptr %6, align 4, !tbaa !71
  %51 = zext i32 %50 to i64
  %52 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %49, i64 %51), !nosanitize !44
  %53 = extractvalue { i64, i1 } %52, 1, !nosanitize !44
  br i1 %53, label %54, label %55, !prof !45, !nosanitize !44

54:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

55:                                               ; preds = %48
  %56 = extractvalue { i64, i1 } %52, 0, !nosanitize !44
  %57 = trunc i64 %56 to i32
  %58 = load i32, ptr %4, align 8, !tbaa !31
  %59 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %58, i32 262), !nosanitize !44
  %60 = extractvalue { i32, i1 } %59, 1, !nosanitize !44
  br i1 %60, label %61, label %62, !prof !45, !nosanitize !44

61:                                               ; preds = %55
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

62:                                               ; preds = %55
  %63 = extractvalue { i32, i1 } %59, 0, !nosanitize !44
  %64 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %39, i32 %63), !nosanitize !44
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !44
  br i1 %65, label %66, label %67, !prof !45, !nosanitize !44

66:                                               ; preds = %62
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

67:                                               ; preds = %62
  %68 = extractvalue { i32, i1 } %64, 0, !nosanitize !44
  %69 = icmp ult i32 %50, %68
  br i1 %69, label %144, label %70

70:                                               ; preds = %67
  %71 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %39, i32 %57), !nosanitize !44
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !44
  br i1 %72, label %73, label %74, !prof !45, !nosanitize !44

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

83:                                               ; preds = %74
  %84 = extractvalue { i32, i1 } %80, 0, !nosanitize !44
  store i32 %84, ptr %8, align 8, !tbaa !81
  %85 = load i32, ptr %6, align 4, !tbaa !71
  %86 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %85, i32 %39), !nosanitize !44
  %87 = extractvalue { i32, i1 } %86, 1, !nosanitize !44
  br i1 %87, label %88, label %89, !prof !45, !nosanitize !44

88:                                               ; preds = %89, %83
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  %104 = getelementptr inbounds nuw i16, ptr %102, i64 %103
  br label %105

105:                                              ; preds = %116, %99
  %106 = phi ptr [ %104, %99 ], [ %108, %116 ]
  %107 = phi i32 [ %101, %99 ], [ %117, %116 ]
  %108 = getelementptr inbounds i8, ptr %106, i64 -2
  %109 = load i16, ptr %108, align 2, !tbaa !60
  %110 = zext i16 %109 to i32
  %111 = tail call i32 @llvm.usub.sat.i32(i32 %110, i32 %100)
  %112 = trunc nuw i32 %111 to i16
  store i16 %112, ptr %108, align 2, !tbaa !60
  %113 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %107, i32 1), !nosanitize !44
  %114 = extractvalue { i32, i1 } %113, 1, !nosanitize !44
  br i1 %114, label %115, label %116, !prof !45, !nosanitize !44

115:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

116:                                              ; preds = %105
  %117 = extractvalue { i32, i1 } %113, 0, !nosanitize !44
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %105, !llvm.loop !82

119:                                              ; preds = %116
  %120 = load ptr, ptr %13, align 8, !tbaa !35
  %121 = zext i32 %100 to i64
  %122 = getelementptr inbounds nuw i16, ptr %120, i64 %121
  br label %123

123:                                              ; preds = %134, %119
  %124 = phi ptr [ %122, %119 ], [ %126, %134 ]
  %125 = phi i32 [ %100, %119 ], [ %135, %134 ]
  %126 = getelementptr inbounds i8, ptr %124, i64 -2
  %127 = load i16, ptr %126, align 2, !tbaa !60
  %128 = zext i16 %127 to i32
  %129 = tail call i32 @llvm.usub.sat.i32(i32 %128, i32 %100)
  %130 = trunc nuw i32 %129 to i16
  store i16 %130, ptr %126, align 2, !tbaa !60
  %131 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %125, i32 1), !nosanitize !44
  %132 = extractvalue { i32, i1 } %131, 1, !nosanitize !44
  br i1 %132, label %133, label %134, !prof !45, !nosanitize !44

133:                                              ; preds = %123
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

134:                                              ; preds = %123
  %135 = extractvalue { i32, i1 } %131, 0, !nosanitize !44
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %123, !llvm.loop !84

137:                                              ; preds = %134
  store i32 1, ptr %14, align 8, !tbaa !61
  %138 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %57, i32 %39), !nosanitize !44
  %139 = extractvalue { i32, i1 } %138, 1, !nosanitize !44
  br i1 %139, label %140, label %141, !prof !45, !nosanitize !44

140:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

141:                                              ; preds = %137
  %142 = extractvalue { i32, i1 } %138, 0, !nosanitize !44
  %143 = load i32, ptr %3, align 4, !tbaa !73
  br label %144

144:                                              ; preds = %141, %67
  %145 = phi i32 [ %143, %141 ], [ %42, %67 ]
  %146 = phi i32 [ %90, %141 ], [ %50, %67 ]
  %147 = phi i32 [ %142, %141 ], [ %57, %67 ]
  %148 = load ptr, ptr %0, align 8, !tbaa !19
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 8
  %150 = load i32, ptr %149, align 8, !tbaa !79
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %275, label %152

152:                                              ; preds = %144
  %153 = load ptr, ptr %7, align 8, !tbaa !34
  %154 = zext i32 %146 to i64
  %155 = getelementptr inbounds nuw i8, ptr %153, i64 %154
  %156 = zext i32 %145 to i64
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 %156
  %158 = tail call i32 @llvm.umin.i32(i32 %150, i32 %147)
  %159 = icmp eq i32 %147, 0
  br i1 %159, label %191, label %160

160:                                              ; preds = %152
  %161 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %150, i32 %158), !nosanitize !44
  %162 = extractvalue { i32, i1 } %161, 1, !nosanitize !44
  br i1 false, label %163, label %164, !prof !45, !nosanitize !44

163:                                              ; preds = %160
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

164:                                              ; preds = %160
  %165 = extractvalue { i32, i1 } %161, 0, !nosanitize !44
  store i32 %165, ptr %149, align 8, !tbaa !79
  %166 = load ptr, ptr %148, align 8, !tbaa !80
  %167 = zext i32 %158 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %157, ptr align 1 %166, i64 %167, i1 false)
  %168 = getelementptr inbounds nuw i8, ptr %148, i64 56
  %169 = load ptr, ptr %168, align 8, !tbaa !18
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 48
  %171 = load i32, ptr %170, align 8, !tbaa !29
  switch i32 %171, label %180 [
    i32 1, label %172
    i32 2, label %176
  ]

172:                                              ; preds = %164
  %173 = getelementptr inbounds nuw i8, ptr %148, i64 96
  %174 = load i64, ptr %173, align 8, !tbaa !57
  %175 = tail call i64 @adler32(i64 noundef %174, ptr noundef %157, i32 noundef %158) #8
  store i64 %175, ptr %173, align 8, !tbaa !57
  br label %180

176:                                              ; preds = %164
  %177 = getelementptr inbounds nuw i8, ptr %148, i64 96
  %178 = load i64, ptr %177, align 8, !tbaa !57
  %179 = tail call i64 @crc32(i64 noundef %178, ptr noundef %157, i32 noundef %158) #8
  store i64 %179, ptr %177, align 8, !tbaa !57
  br label %180

180:                                              ; preds = %176, %172, %164
  %181 = load ptr, ptr %148, align 8, !tbaa !80
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 %167
  store ptr %182, ptr %148, align 8, !tbaa !80
  %183 = getelementptr inbounds nuw i8, ptr %148, i64 16
  %184 = load i64, ptr %183, align 8, !tbaa !53
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 %167), !nosanitize !44
  %186 = extractvalue { i64, i1 } %185, 1, !nosanitize !44
  br i1 %186, label %187, label %188, !prof !45, !nosanitize !44

187:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

188:                                              ; preds = %180
  %189 = extractvalue { i64, i1 } %185, 0, !nosanitize !44
  store i64 %189, ptr %183, align 8, !tbaa !53
  %190 = load i32, ptr %3, align 4, !tbaa !73
  br label %191

191:                                              ; preds = %188, %152
  %192 = phi i32 [ %145, %152 ], [ %190, %188 ]
  %193 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %192, i32 %158), !nosanitize !44
  %194 = extractvalue { i32, i1 } %193, 1, !nosanitize !44
  br i1 %194, label %195, label %196, !prof !45, !nosanitize !44

195:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

196:                                              ; preds = %191
  %197 = extractvalue { i32, i1 } %193, 0, !nosanitize !44
  store i32 %197, ptr %3, align 4, !tbaa !73
  %198 = load i32, ptr %10, align 4, !tbaa !74
  %199 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %197, i32 %198), !nosanitize !44
  %200 = extractvalue { i32, i1 } %199, 1, !nosanitize !44
  br i1 %200, label %201, label %202, !prof !45, !nosanitize !44

201:                                              ; preds = %196
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

202:                                              ; preds = %196
  %203 = extractvalue { i32, i1 } %199, 0, !nosanitize !44
  %204 = icmp ugt i32 %203, 2
  br i1 %204, label %205, label %268

205:                                              ; preds = %202
  %206 = load i32, ptr %6, align 4, !tbaa !71
  %207 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %206, i32 %198), !nosanitize !44
  %208 = extractvalue { i32, i1 } %207, 0, !nosanitize !44
  %209 = extractvalue { i32, i1 } %207, 1, !nosanitize !44
  br i1 %209, label %210, label %211, !prof !45, !nosanitize !44

210:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

211:                                              ; preds = %205
  %212 = load ptr, ptr %7, align 8, !tbaa !34
  %213 = zext i32 %208 to i64
  %214 = getelementptr inbounds nuw i8, ptr %212, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !5
  %216 = zext i8 %215 to i32
  store i32 %216, ptr %15, align 8, !tbaa !78
  %217 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %208, i32 1), !nosanitize !44
  %218 = extractvalue { i32, i1 } %217, 1, !nosanitize !44
  br i1 %218, label %219, label %220, !prof !45, !nosanitize !44

219:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

220:                                              ; preds = %211
  %221 = extractvalue { i32, i1 } %217, 0, !nosanitize !44
  %222 = load i32, ptr %16, align 8, !tbaa !52
  %223 = shl i32 %216, %222
  %224 = zext i32 %221 to i64
  %225 = getelementptr inbounds nuw i8, ptr %212, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !5
  %227 = zext i8 %226 to i32
  %228 = xor i32 %223, %227
  %229 = load i32, ptr %17, align 4, !tbaa !51
  %230 = and i32 %228, %229
  store i32 %230, ptr %15, align 8, !tbaa !78
  br label %231

231:                                              ; preds = %264, %220
  %232 = phi i32 [ %230, %220 ], [ %249, %264 ]
  %233 = phi i32 [ %198, %220 ], [ %260, %264 ]
  %234 = phi i32 [ %208, %220 ], [ %265, %264 ]
  %235 = icmp eq i32 %233, 0
  br i1 %235, label %268, label %236

236:                                              ; preds = %231
  %237 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 3), !nosanitize !44
  %238 = extractvalue { i32, i1 } %237, 1, !nosanitize !44
  br i1 %238, label %239, label %240, !prof !45, !nosanitize !44

239:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

240:                                              ; preds = %236
  %241 = shl i32 %232, %222
  %242 = extractvalue { i32, i1 } %237, 0, !nosanitize !44
  %243 = add i32 %242, -1
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds nuw i8, ptr %212, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !5
  %247 = zext i8 %246 to i32
  %248 = xor i32 %241, %247
  %249 = and i32 %248, %229
  store i32 %249, ptr %15, align 8, !tbaa !78
  %250 = load ptr, ptr %12, align 8, !tbaa !37
  %251 = zext i32 %249 to i64
  %252 = getelementptr inbounds nuw i16, ptr %250, i64 %251
  %253 = load i16, ptr %252, align 2, !tbaa !60
  %254 = load ptr, ptr %13, align 8, !tbaa !35
  %255 = load i32, ptr %18, align 8, !tbaa !32
  %256 = and i32 %255, %234
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds nuw i16, ptr %254, i64 %257
  store i16 %253, ptr %258, align 2, !tbaa !60
  %259 = trunc i32 %234 to i16
  store i16 %259, ptr %252, align 2, !tbaa !60
  %260 = add i32 %233, -1
  store i32 %260, ptr %10, align 4, !tbaa !74
  %261 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %197, i32 %260), !nosanitize !44
  %262 = extractvalue { i32, i1 } %261, 1, !nosanitize !44
  br i1 %262, label %263, label %264, !prof !45, !nosanitize !44

263:                                              ; preds = %240
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

264:                                              ; preds = %240
  %265 = add nuw i32 %234, 1
  %266 = extractvalue { i32, i1 } %261, 0, !nosanitize !44
  %267 = icmp ult i32 %266, 3
  br i1 %267, label %268, label %231, !llvm.loop !85

268:                                              ; preds = %264, %231, %202
  %269 = icmp ult i32 %197, 262
  br i1 %269, label %270, label %275

270:                                              ; preds = %268
  %271 = load ptr, ptr %0, align 8, !tbaa !19
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 8
  %273 = load i32, ptr %272, align 8, !tbaa !79
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %41, !llvm.loop !86

275:                                              ; preds = %270, %268, %144
  %276 = phi i32 [ %197, %270 ], [ %197, %268 ], [ %145, %144 ]
  %277 = load i64, ptr %19, align 8, !tbaa !38
  %278 = load i64, ptr %5, align 8, !tbaa !59
  %279 = icmp ult i64 %277, %278
  br i1 %279, label %280, label %319

280:                                              ; preds = %275
  %281 = load i32, ptr %6, align 4, !tbaa !71
  %282 = zext i32 %281 to i64
  %283 = zext i32 %276 to i64
  %284 = add nuw nsw i64 %283, %282
  %285 = icmp ult i64 %277, %284
  br i1 %285, label %286, label %296

286:                                              ; preds = %280
  %287 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %278, i64 %284), !nosanitize !44
  %288 = extractvalue { i64, i1 } %287, 1, !nosanitize !44
  br i1 %288, label %289, label %290, !prof !45, !nosanitize !44

289:                                              ; preds = %286
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

290:                                              ; preds = %286
  %291 = extractvalue { i64, i1 } %287, 0, !nosanitize !44
  %292 = tail call i64 @llvm.umin.i64(i64 %291, i64 258)
  %293 = load ptr, ptr %7, align 8, !tbaa !34
  %294 = getelementptr inbounds nuw i8, ptr %293, i64 %284
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %294, i8 0, i64 %292, i1 false)
  %295 = add nuw nsw i64 %292, %284
  br label %316

296:                                              ; preds = %280
  %297 = add nuw nsw i64 %284, 258
  %298 = icmp ult i64 %277, %297
  br i1 %298, label %299, label %319

299:                                              ; preds = %296
  %300 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %278, i64 %277), !nosanitize !44
  %301 = extractvalue { i64, i1 } %300, 1, !nosanitize !44
  br i1 %301, label %302, label %303, !prof !45, !nosanitize !44

302:                                              ; preds = %299
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

303:                                              ; preds = %299
  %304 = sub nuw nsw i64 %297, %277
  %305 = extractvalue { i64, i1 } %300, 0, !nosanitize !44
  %306 = tail call i64 @llvm.umin.i64(i64 %304, i64 %305)
  %307 = load ptr, ptr %7, align 8, !tbaa !34
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 %277
  %309 = and i64 %306, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %308, i8 0, i64 %309, i1 false)
  %310 = load i64, ptr %19, align 8, !tbaa !38
  %311 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %310, i64 %306), !nosanitize !44
  %312 = extractvalue { i64, i1 } %311, 1, !nosanitize !44
  br i1 %312, label %313, label %314, !prof !45, !nosanitize !44

313:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

314:                                              ; preds = %303
  %315 = extractvalue { i64, i1 } %311, 0, !nosanitize !44
  br label %316

316:                                              ; preds = %314, %290
  %317 = phi i64 [ %295, %290 ], [ %315, %314 ]
  store i64 %317, ptr %19, align 8, !tbaa !38
  %318 = load i32, ptr %3, align 4, !tbaa !73
  br label %319

319:                                              ; preds = %316, %296, %275
  %320 = phi i32 [ %276, %275 ], [ %276, %296 ], [ %318, %316 ]
  %321 = icmp ult i32 %320, 262
  %322 = and i1 %20, %321
  br i1 %322, label %1103, label %323

323:                                              ; preds = %319
  %324 = icmp eq i32 %320, 0
  br i1 %324, label %920, label %325

325:                                              ; preds = %323
  %326 = icmp ugt i32 %320, 2
  br i1 %326, label %330, label %327

327:                                              ; preds = %325
  %328 = load i32, ptr %21, align 8, !tbaa !76
  store i32 %328, ptr %22, align 8, !tbaa !75
  %329 = load i32, ptr %8, align 8, !tbaa !81
  store i32 %329, ptr %23, align 4, !tbaa !126
  br label %561

330:                                              ; preds = %325, %35
  %331 = phi i32 [ %320, %325 ], [ %36, %35 ]
  %332 = load i32, ptr %6, align 4, !tbaa !71
  %333 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %332, i32 2), !nosanitize !44
  %334 = extractvalue { i32, i1 } %333, 1, !nosanitize !44
  br i1 %334, label %335, label %336, !prof !45, !nosanitize !44

335:                                              ; preds = %330
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

336:                                              ; preds = %330
  %337 = extractvalue { i32, i1 } %333, 0, !nosanitize !44
  %338 = load ptr, ptr %7, align 8, !tbaa !34
  %339 = load i32, ptr %15, align 8, !tbaa !78
  %340 = load i32, ptr %16, align 8, !tbaa !52
  %341 = shl i32 %339, %340
  %342 = zext i32 %337 to i64
  %343 = getelementptr inbounds nuw i8, ptr %338, i64 %342
  %344 = load i8, ptr %343, align 1, !tbaa !5
  %345 = zext i8 %344 to i32
  %346 = xor i32 %341, %345
  %347 = load i32, ptr %17, align 4, !tbaa !51
  %348 = and i32 %346, %347
  store i32 %348, ptr %15, align 8, !tbaa !78
  %349 = load ptr, ptr %12, align 8, !tbaa !37
  %350 = zext i32 %348 to i64
  %351 = getelementptr inbounds nuw i16, ptr %349, i64 %350
  %352 = load i16, ptr %351, align 2, !tbaa !60
  %353 = load ptr, ptr %13, align 8, !tbaa !35
  %354 = load i32, ptr %18, align 8, !tbaa !32
  %355 = and i32 %354, %332
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds nuw i16, ptr %353, i64 %356
  store i16 %352, ptr %357, align 2, !tbaa !60
  %358 = zext i16 %352 to i32
  %359 = trunc i32 %332 to i16
  store i16 %359, ptr %351, align 2, !tbaa !60
  %360 = load i32, ptr %21, align 8, !tbaa !76
  store i32 %360, ptr %22, align 8, !tbaa !75
  %361 = load i32, ptr %8, align 8, !tbaa !81
  store i32 %361, ptr %23, align 4, !tbaa !126
  store i32 2, ptr %21, align 8, !tbaa !76
  %362 = icmp eq i16 %352, 0
  br i1 %362, label %565, label %363

363:                                              ; preds = %336
  %364 = load i32, ptr %24, align 8, !tbaa !64
  %365 = icmp ult i32 %360, %364
  br i1 %365, label %366, label %565

366:                                              ; preds = %363
  %367 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %332, i32 %358), !nosanitize !44
  %368 = extractvalue { i32, i1 } %367, 0, !nosanitize !44
  %369 = extractvalue { i32, i1 } %367, 1, !nosanitize !44
  br i1 %369, label %370, label %371, !prof !45, !nosanitize !44

370:                                              ; preds = %366
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

371:                                              ; preds = %366
  %372 = load i32, ptr %4, align 8, !tbaa !31
  %373 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %372, i32 262), !nosanitize !44
  %374 = extractvalue { i32, i1 } %373, 1, !nosanitize !44
  br i1 %374, label %375, label %376, !prof !45, !nosanitize !44

375:                                              ; preds = %371
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

376:                                              ; preds = %371
  %377 = extractvalue { i32, i1 } %373, 0, !nosanitize !44
  %378 = icmp ugt i32 %368, %377
  br i1 %378, label %565, label %379

379:                                              ; preds = %376
  %380 = zext i32 %332 to i64
  %381 = getelementptr inbounds nuw i8, ptr %338, i64 %380
  %382 = tail call i32 @llvm.usub.sat.i32(i32 %332, i32 %377)
  %383 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %360, i32 -1)
  %384 = extractvalue { i32, i1 } %383, 1, !nosanitize !44
  br i1 %384, label %385, label %386, !prof !45, !nosanitize !44

385:                                              ; preds = %508, %418, %379
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

386:                                              ; preds = %379
  %387 = load i32, ptr %25, align 8, !tbaa !68
  %388 = load i32, ptr %26, align 4, !tbaa !70
  %389 = getelementptr inbounds nuw i8, ptr %381, i64 258
  %390 = extractvalue { i32, i1 } %383, 0, !nosanitize !44
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8, ptr %381, i64 %391
  %393 = load i8, ptr %392, align 1, !tbaa !5
  %394 = sext i32 %360 to i64
  %395 = getelementptr inbounds i8, ptr %381, i64 %394
  %396 = load i8, ptr %395, align 1, !tbaa !5
  %397 = load i32, ptr %27, align 4, !tbaa !66
  %398 = icmp ult i32 %360, %397
  %399 = lshr i32 %388, 2
  %400 = select i1 %398, i32 %388, i32 %399
  %401 = tail call i32 @llvm.umin.i32(i32 %387, i32 %331)
  %402 = getelementptr i8, ptr %381, i64 -1
  %403 = getelementptr inbounds nuw i8, ptr %381, i64 1
  %404 = ptrtoint ptr %389 to i64
  br label %405

405:                                              ; preds = %541, %386
  %406 = phi i32 [ %361, %386 ], [ %527, %541 ]
  %407 = phi i32 [ %360, %386 ], [ %528, %541 ]
  %408 = phi i32 [ %400, %386 ], [ %542, %541 ]
  %409 = phi i32 [ %358, %386 ], [ %535, %541 ]
  %410 = phi i8 [ %393, %386 ], [ %529, %541 ]
  %411 = phi i8 [ %396, %386 ], [ %530, %541 ]
  %412 = zext nneg i32 %409 to i64
  %413 = getelementptr inbounds nuw i8, ptr %338, i64 %412
  %414 = sext i32 %407 to i64
  %415 = getelementptr inbounds i8, ptr %413, i64 %414
  %416 = load i8, ptr %415, align 1, !tbaa !5
  %417 = icmp eq i8 %416, %411
  br i1 %417, label %418, label %526

418:                                              ; preds = %405
  %419 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %407, i32 -1)
  %420 = extractvalue { i32, i1 } %419, 1, !nosanitize !44
  br i1 %420, label %385, label %421, !prof !45, !nosanitize !44

421:                                              ; preds = %418
  %422 = extractvalue { i32, i1 } %419, 0, !nosanitize !44
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i8, ptr %413, i64 %423
  %425 = load i8, ptr %424, align 1, !tbaa !5
  %426 = icmp eq i8 %425, %410
  br i1 %426, label %427, label %526

427:                                              ; preds = %421
  %428 = load i8, ptr %413, align 1, !tbaa !5
  %429 = load i8, ptr %381, align 1, !tbaa !5
  %430 = icmp eq i8 %428, %429
  br i1 %430, label %431, label %526

431:                                              ; preds = %427
  %432 = getelementptr inbounds nuw i8, ptr %413, i64 1
  %433 = load i8, ptr %432, align 1, !tbaa !5
  %434 = load i8, ptr %403, align 1, !tbaa !5
  %435 = icmp eq i8 %433, %434
  br i1 %435, label %436, label %526

436:                                              ; preds = %431
  %437 = getelementptr inbounds nuw i8, ptr %413, i64 2
  br label %438

438:                                              ; preds = %483, %436
  %439 = phi ptr [ %437, %436 ], [ %487, %483 ]
  %440 = phi i64 [ 2, %436 ], [ %484, %483 ]
  %441 = getelementptr inbounds nuw i8, ptr %381, i64 %440
  %442 = getelementptr inbounds nuw i8, ptr %441, i64 1
  %443 = load i8, ptr %442, align 1, !tbaa !5
  %444 = getelementptr inbounds nuw i8, ptr %439, i64 1
  %445 = load i8, ptr %444, align 1, !tbaa !5
  %446 = icmp eq i8 %443, %445
  br i1 %446, label %447, label %492

447:                                              ; preds = %438
  %448 = getelementptr inbounds nuw i8, ptr %441, i64 2
  %449 = load i8, ptr %448, align 1, !tbaa !5
  %450 = getelementptr inbounds nuw i8, ptr %439, i64 2
  %451 = load i8, ptr %450, align 1, !tbaa !5
  %452 = icmp eq i8 %449, %451
  br i1 %452, label %453, label %494

453:                                              ; preds = %447
  %454 = getelementptr inbounds nuw i8, ptr %441, i64 3
  %455 = load i8, ptr %454, align 1, !tbaa !5
  %456 = getelementptr inbounds nuw i8, ptr %439, i64 3
  %457 = load i8, ptr %456, align 1, !tbaa !5
  %458 = icmp eq i8 %455, %457
  br i1 %458, label %459, label %496

459:                                              ; preds = %453
  %460 = getelementptr inbounds nuw i8, ptr %441, i64 4
  %461 = load i8, ptr %460, align 1, !tbaa !5
  %462 = getelementptr inbounds nuw i8, ptr %439, i64 4
  %463 = load i8, ptr %462, align 1, !tbaa !5
  %464 = icmp eq i8 %461, %463
  br i1 %464, label %465, label %498

465:                                              ; preds = %459
  %466 = getelementptr inbounds nuw i8, ptr %441, i64 5
  %467 = load i8, ptr %466, align 1, !tbaa !5
  %468 = getelementptr inbounds nuw i8, ptr %439, i64 5
  %469 = load i8, ptr %468, align 1, !tbaa !5
  %470 = icmp eq i8 %467, %469
  br i1 %470, label %471, label %500

471:                                              ; preds = %465
  %472 = getelementptr inbounds nuw i8, ptr %441, i64 6
  %473 = load i8, ptr %472, align 1, !tbaa !5
  %474 = getelementptr inbounds nuw i8, ptr %439, i64 6
  %475 = load i8, ptr %474, align 1, !tbaa !5
  %476 = icmp eq i8 %473, %475
  br i1 %476, label %477, label %502

477:                                              ; preds = %471
  %478 = getelementptr inbounds nuw i8, ptr %441, i64 7
  %479 = load i8, ptr %478, align 1, !tbaa !5
  %480 = getelementptr inbounds nuw i8, ptr %439, i64 7
  %481 = load i8, ptr %480, align 1, !tbaa !5
  %482 = icmp eq i8 %479, %481
  br i1 %482, label %483, label %504

483:                                              ; preds = %477
  %484 = add nuw nsw i64 %440, 8
  %485 = getelementptr inbounds nuw i8, ptr %381, i64 %484
  %486 = load i8, ptr %485, align 1, !tbaa !5
  %487 = getelementptr inbounds nuw i8, ptr %439, i64 8
  %488 = load i8, ptr %487, align 1, !tbaa !5
  %489 = icmp eq i8 %486, %488
  %490 = icmp samesign ult i64 %440, 250
  %491 = select i1 %489, i1 %490, i1 false
  br i1 %491, label %438, label %506, !llvm.loop !123

492:                                              ; preds = %438
  %493 = getelementptr inbounds nuw i8, ptr %441, i64 1
  br label %508

494:                                              ; preds = %447
  %495 = getelementptr inbounds nuw i8, ptr %441, i64 2
  br label %508

496:                                              ; preds = %453
  %497 = getelementptr inbounds nuw i8, ptr %441, i64 3
  br label %508

498:                                              ; preds = %459
  %499 = getelementptr inbounds nuw i8, ptr %441, i64 4
  br label %508

500:                                              ; preds = %465
  %501 = getelementptr inbounds nuw i8, ptr %441, i64 5
  br label %508

502:                                              ; preds = %471
  %503 = getelementptr inbounds nuw i8, ptr %441, i64 6
  br label %508

504:                                              ; preds = %477
  %505 = getelementptr inbounds nuw i8, ptr %441, i64 7
  br label %508

506:                                              ; preds = %483
  %507 = getelementptr inbounds nuw i8, ptr %381, i64 %484
  br label %508

508:                                              ; preds = %506, %504, %502, %500, %498, %496, %494, %492
  %509 = phi ptr [ %493, %492 ], [ %495, %494 ], [ %497, %496 ], [ %499, %498 ], [ %501, %500 ], [ %503, %502 ], [ %505, %504 ], [ %507, %506 ]
  %510 = ptrtoint ptr %509 to i64
  %511 = sub i64 %404, %510
  %512 = trunc i64 %511 to i32
  %513 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %512), !nosanitize !44
  %514 = extractvalue { i32, i1 } %513, 0, !nosanitize !44
  %515 = extractvalue { i32, i1 } %513, 1, !nosanitize !44
  br i1 %515, label %385, label %516, !prof !45, !nosanitize !44

516:                                              ; preds = %508
  %517 = icmp sgt i32 %514, %407
  br i1 %517, label %518, label %526

518:                                              ; preds = %516
  store i32 %409, ptr %8, align 8, !tbaa !81
  %519 = icmp slt i32 %514, %401
  br i1 %519, label %520, label %544

520:                                              ; preds = %518
  %521 = sext i32 %514 to i64
  %522 = getelementptr i8, ptr %402, i64 %521
  %523 = load i8, ptr %522, align 1, !tbaa !5
  %524 = getelementptr inbounds i8, ptr %381, i64 %521
  %525 = load i8, ptr %524, align 1, !tbaa !5
  br label %526

526:                                              ; preds = %520, %516, %431, %427, %421, %405
  %527 = phi i32 [ %406, %405 ], [ %406, %421 ], [ %406, %427 ], [ %406, %431 ], [ %409, %520 ], [ %406, %516 ]
  %528 = phi i32 [ %407, %405 ], [ %407, %421 ], [ %407, %427 ], [ %407, %431 ], [ %514, %520 ], [ %407, %516 ]
  %529 = phi i8 [ %410, %405 ], [ %410, %421 ], [ %410, %427 ], [ %410, %431 ], [ %523, %520 ], [ %410, %516 ]
  %530 = phi i8 [ %411, %405 ], [ %411, %421 ], [ %411, %427 ], [ %411, %431 ], [ %525, %520 ], [ %411, %516 ]
  %531 = and i32 %409, %354
  %532 = zext nneg i32 %531 to i64
  %533 = getelementptr inbounds nuw i16, ptr %353, i64 %532
  %534 = load i16, ptr %533, align 2, !tbaa !60
  %535 = zext i16 %534 to i32
  %536 = icmp ult i32 %382, %535
  br i1 %536, label %537, label %544

537:                                              ; preds = %526
  %538 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %408, i32 1), !nosanitize !44
  %539 = extractvalue { i32, i1 } %538, 1, !nosanitize !44
  br i1 %539, label %540, label %541, !prof !45, !nosanitize !44

540:                                              ; preds = %537
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

541:                                              ; preds = %537
  %542 = extractvalue { i32, i1 } %538, 0, !nosanitize !44
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %405, !llvm.loop !124

544:                                              ; preds = %541, %526, %518
  %545 = phi i32 [ %527, %541 ], [ %527, %526 ], [ %409, %518 ]
  %546 = phi i32 [ %528, %541 ], [ %528, %526 ], [ %514, %518 ]
  %547 = tail call i32 @llvm.umin.i32(i32 %546, i32 %331)
  store i32 %547, ptr %21, align 8, !tbaa !76
  %548 = icmp ult i32 %547, 6
  br i1 %548, label %549, label %565

549:                                              ; preds = %544
  %550 = load i32, ptr %28, align 8, !tbaa !48
  %551 = icmp eq i32 %550, 1
  br i1 %551, label %561, label %552

552:                                              ; preds = %549
  %553 = icmp eq i32 %547, 3
  br i1 %553, label %554, label %565

554:                                              ; preds = %552
  %555 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %332, i32 %545), !nosanitize !44
  %556 = extractvalue { i32, i1 } %555, 1, !nosanitize !44
  br i1 %556, label %557, label %558, !prof !45, !nosanitize !44

557:                                              ; preds = %554
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

558:                                              ; preds = %554
  %559 = extractvalue { i32, i1 } %555, 0, !nosanitize !44
  %560 = icmp ugt i32 %559, 4096
  br i1 %560, label %561, label %565

561:                                              ; preds = %558, %549, %327
  %562 = phi i32 [ %329, %327 ], [ %361, %558 ], [ %361, %549 ]
  %563 = phi i32 [ %328, %327 ], [ %360, %558 ], [ %360, %549 ]
  %564 = phi i32 [ %320, %327 ], [ %331, %558 ], [ %331, %549 ]
  store i32 2, ptr %21, align 8, !tbaa !76
  br label %565

565:                                              ; preds = %561, %558, %552, %544, %376, %363, %336
  %566 = phi i32 [ %547, %544 ], [ %547, %552 ], [ 3, %558 ], [ 2, %376 ], [ 2, %363 ], [ 2, %336 ], [ 2, %561 ]
  %567 = phi i32 [ %361, %544 ], [ %361, %552 ], [ %361, %558 ], [ %361, %376 ], [ %361, %363 ], [ %361, %336 ], [ %562, %561 ]
  %568 = phi i32 [ %360, %544 ], [ %360, %552 ], [ %360, %558 ], [ %360, %376 ], [ %360, %363 ], [ %360, %336 ], [ %563, %561 ]
  %569 = phi i32 [ %331, %544 ], [ %331, %552 ], [ %331, %558 ], [ %331, %376 ], [ %331, %363 ], [ %331, %336 ], [ %564, %561 ]
  %570 = icmp ult i32 %568, 3
  %571 = icmp ugt i32 %566, %568
  %572 = or i1 %570, %571
  br i1 %572, label %783, label %573

573:                                              ; preds = %565
  %574 = load i32, ptr %6, align 4, !tbaa !71
  %575 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %574, i32 %569), !nosanitize !44
  %576 = extractvalue { i32, i1 } %575, 1, !nosanitize !44
  br i1 %576, label %577, label %578, !prof !45, !nosanitize !44

577:                                              ; preds = %573
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

578:                                              ; preds = %573
  %579 = extractvalue { i32, i1 } %575, 0, !nosanitize !44
  %580 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %579, i32 3), !nosanitize !44
  %581 = extractvalue { i32, i1 } %580, 0, !nosanitize !44
  %582 = extractvalue { i32, i1 } %580, 1, !nosanitize !44
  br i1 %582, label %583, label %584, !prof !45, !nosanitize !44

583:                                              ; preds = %578
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

584:                                              ; preds = %578
  %585 = trunc i32 %568 to i8
  %586 = add i8 %585, -3
  %587 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %574, i32 1), !nosanitize !44
  %588 = extractvalue { i32, i1 } %587, 1, !nosanitize !44
  br i1 %588, label %589, label %590, !prof !45, !nosanitize !44

589:                                              ; preds = %584
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

590:                                              ; preds = %584
  %591 = extractvalue { i32, i1 } %587, 0, !nosanitize !44
  %592 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %591, i32 %567), !nosanitize !44
  %593 = extractvalue { i32, i1 } %592, 1, !nosanitize !44
  br i1 %593, label %594, label %595, !prof !45, !nosanitize !44

594:                                              ; preds = %590
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

595:                                              ; preds = %590
  %596 = extractvalue { i32, i1 } %592, 0, !nosanitize !44
  %597 = trunc i32 %596 to i16
  %598 = load i32, ptr %30, align 4, !tbaa !118
  %599 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %598, i32 1), !nosanitize !44
  %600 = extractvalue { i32, i1 } %599, 1, !nosanitize !44
  br i1 %600, label %601, label %602, !prof !45, !nosanitize !44

601:                                              ; preds = %595
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

602:                                              ; preds = %595
  %603 = extractvalue { i32, i1 } %599, 0, !nosanitize !44
  %604 = load ptr, ptr %29, align 8, !tbaa !43
  %605 = trunc i32 %596 to i8
  store i32 %603, ptr %30, align 4, !tbaa !118
  %606 = zext i32 %598 to i64
  %607 = getelementptr inbounds nuw i8, ptr %604, i64 %606
  store i8 %605, ptr %607, align 1, !tbaa !5
  %608 = load i32, ptr %30, align 4, !tbaa !118
  %609 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %608, i32 1), !nosanitize !44
  %610 = extractvalue { i32, i1 } %609, 1, !nosanitize !44
  br i1 %610, label %611, label %612, !prof !45, !nosanitize !44

611:                                              ; preds = %602
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

612:                                              ; preds = %602
  %613 = extractvalue { i32, i1 } %609, 0, !nosanitize !44
  %614 = load ptr, ptr %29, align 8, !tbaa !43
  %615 = lshr i32 %596, 8
  %616 = trunc i32 %615 to i8
  store i32 %613, ptr %30, align 4, !tbaa !118
  %617 = zext i32 %608 to i64
  %618 = getelementptr inbounds nuw i8, ptr %614, i64 %617
  store i8 %616, ptr %618, align 1, !tbaa !5
  %619 = load i32, ptr %30, align 4, !tbaa !118
  %620 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %619, i32 1), !nosanitize !44
  %621 = extractvalue { i32, i1 } %620, 1, !nosanitize !44
  br i1 %621, label %622, label %623, !prof !45, !nosanitize !44

622:                                              ; preds = %612
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

623:                                              ; preds = %612
  %624 = extractvalue { i32, i1 } %620, 0, !nosanitize !44
  %625 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %624, ptr %30, align 4, !tbaa !118
  %626 = zext i32 %619 to i64
  %627 = getelementptr inbounds nuw i8, ptr %625, i64 %626
  store i8 %586, ptr %627, align 1, !tbaa !5
  %628 = add i16 %597, -1
  %629 = zext i8 %586 to i64
  %630 = getelementptr inbounds nuw [0 x i8], ptr @_length_code, i64 0, i64 %629
  %631 = load i8, ptr %630, align 1, !tbaa !5
  %632 = zext i8 %631 to i64
  %633 = add nuw nsw i64 %632, 257
  %634 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %31, i64 0, i64 %633
  %635 = load i16, ptr %634, align 4, !tbaa !5
  %636 = add i16 %635, 1
  store i16 %636, ptr %634, align 4, !tbaa !5
  %637 = icmp ult i16 %628, 256
  %638 = lshr i16 %628, 7
  %639 = add nuw nsw i16 %638, 256
  %640 = select i1 %637, i16 %628, i16 %639
  %641 = zext i16 %640 to i64
  %642 = getelementptr inbounds nuw [0 x i8], ptr @_dist_code, i64 0, i64 %641
  %643 = load i8, ptr %642, align 1, !tbaa !5
  %644 = zext i8 %643 to i64
  %645 = getelementptr inbounds nuw [61 x %struct.ct_data_s], ptr %32, i64 0, i64 %644
  %646 = load i16, ptr %645, align 4, !tbaa !5
  %647 = add i16 %646, 1
  store i16 %647, ptr %645, align 4, !tbaa !5
  %648 = load i32, ptr %30, align 4, !tbaa !118
  %649 = load i32, ptr %33, align 8, !tbaa !46
  %650 = icmp eq i32 %648, %649
  %651 = load i32, ptr %22, align 8, !tbaa !75
  %652 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %651, i32 1), !nosanitize !44
  %653 = extractvalue { i32, i1 } %652, 1, !nosanitize !44
  br i1 %653, label %654, label %655, !prof !45, !nosanitize !44

654:                                              ; preds = %623
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

655:                                              ; preds = %623
  %656 = extractvalue { i32, i1 } %652, 0, !nosanitize !44
  %657 = load i32, ptr %3, align 4, !tbaa !73
  %658 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %657, i32 %656), !nosanitize !44
  %659 = extractvalue { i32, i1 } %658, 1, !nosanitize !44
  br i1 %659, label %660, label %661, !prof !45, !nosanitize !44

660:                                              ; preds = %655
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

661:                                              ; preds = %655
  %662 = extractvalue { i32, i1 } %658, 0, !nosanitize !44
  store i32 %662, ptr %3, align 4, !tbaa !73
  %663 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %651, i32 2), !nosanitize !44
  %664 = extractvalue { i32, i1 } %663, 1, !nosanitize !44
  br i1 %664, label %665, label %666, !prof !45, !nosanitize !44

665:                                              ; preds = %661
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

666:                                              ; preds = %661
  %667 = extractvalue { i32, i1 } %663, 0, !nosanitize !44
  store i32 %667, ptr %22, align 8, !tbaa !75
  %668 = load i32, ptr %6, align 4, !tbaa !71
  br label %669

669:                                              ; preds = %709, %666
  %670 = phi i32 [ %710, %709 ], [ %667, %666 ]
  %671 = phi i32 [ %673, %709 ], [ %668, %666 ]
  %672 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %671, i32 1), !nosanitize !44
  %673 = extractvalue { i32, i1 } %672, 0, !nosanitize !44
  %674 = extractvalue { i32, i1 } %672, 1, !nosanitize !44
  br i1 %674, label %675, label %676, !prof !45, !nosanitize !44

675:                                              ; preds = %669
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

676:                                              ; preds = %669
  store i32 %673, ptr %6, align 4, !tbaa !71
  %677 = icmp ugt i32 %673, %581
  br i1 %677, label %705, label %678

678:                                              ; preds = %676
  %679 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %673, i32 2), !nosanitize !44
  %680 = extractvalue { i32, i1 } %679, 1, !nosanitize !44
  br i1 false, label %681, label %682, !prof !45, !nosanitize !44

681:                                              ; preds = %678
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

682:                                              ; preds = %678
  %683 = extractvalue { i32, i1 } %679, 0, !nosanitize !44
  %684 = load ptr, ptr %7, align 8, !tbaa !34
  %685 = load i32, ptr %15, align 8, !tbaa !78
  %686 = load i32, ptr %16, align 8, !tbaa !52
  %687 = shl i32 %685, %686
  %688 = zext i32 %683 to i64
  %689 = getelementptr inbounds nuw i8, ptr %684, i64 %688
  %690 = load i8, ptr %689, align 1, !tbaa !5
  %691 = zext i8 %690 to i32
  %692 = xor i32 %687, %691
  %693 = load i32, ptr %17, align 4, !tbaa !51
  %694 = and i32 %692, %693
  store i32 %694, ptr %15, align 8, !tbaa !78
  %695 = load ptr, ptr %12, align 8, !tbaa !37
  %696 = zext i32 %694 to i64
  %697 = getelementptr inbounds nuw i16, ptr %695, i64 %696
  %698 = load i16, ptr %697, align 2, !tbaa !60
  %699 = load ptr, ptr %13, align 8, !tbaa !35
  %700 = load i32, ptr %18, align 8, !tbaa !32
  %701 = and i32 %700, %673
  %702 = zext i32 %701 to i64
  %703 = getelementptr inbounds nuw i16, ptr %699, i64 %702
  store i16 %698, ptr %703, align 2, !tbaa !60
  %704 = trunc i32 %673 to i16
  store i16 %704, ptr %697, align 2, !tbaa !60
  br label %705

705:                                              ; preds = %682, %676
  %706 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %670, i32 1), !nosanitize !44
  %707 = extractvalue { i32, i1 } %706, 1, !nosanitize !44
  br i1 %707, label %708, label %709, !prof !45, !nosanitize !44

708:                                              ; preds = %726, %705
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

709:                                              ; preds = %705
  %710 = extractvalue { i32, i1 } %706, 0, !nosanitize !44
  store i32 %710, ptr %22, align 8, !tbaa !75
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %712, label %669, !llvm.loop !127

712:                                              ; preds = %709
  store i32 0, ptr %34, align 8, !tbaa !77
  store i32 2, ptr %21, align 8, !tbaa !76
  %713 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %673, i32 1), !nosanitize !44
  %714 = extractvalue { i32, i1 } %713, 1, !nosanitize !44
  br i1 %714, label %715, label %716, !prof !45, !nosanitize !44

715:                                              ; preds = %712
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

716:                                              ; preds = %712
  %717 = extractvalue { i32, i1 } %713, 0, !nosanitize !44
  store i32 %717, ptr %6, align 4, !tbaa !71
  br i1 %650, label %719, label %718

718:                                              ; preds = %918, %902, %778, %716
  br label %35

719:                                              ; preds = %716
  %720 = load i64, ptr %9, align 8, !tbaa !72
  %721 = icmp sgt i64 %720, -1
  br i1 %721, label %722, label %726

722:                                              ; preds = %719
  %723 = load ptr, ptr %7, align 8, !tbaa !34
  %724 = and i64 %720, 4294967295
  %725 = getelementptr inbounds nuw i8, ptr %723, i64 %724
  br label %726

726:                                              ; preds = %722, %719
  %727 = phi ptr [ %725, %722 ], [ null, %719 ]
  %728 = zext i32 %717 to i64
  %729 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %728, i64 %720), !nosanitize !44
  %730 = extractvalue { i64, i1 } %729, 1, !nosanitize !44
  br i1 %730, label %708, label %731, !prof !45, !nosanitize !44

731:                                              ; preds = %726
  %732 = extractvalue { i64, i1 } %729, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %727, i64 noundef %732, i32 noundef 0) #8
  %733 = load i32, ptr %6, align 4, !tbaa !71
  %734 = zext i32 %733 to i64
  store i64 %734, ptr %9, align 8, !tbaa !72
  %735 = load ptr, ptr %0, align 8, !tbaa !19
  %736 = getelementptr inbounds nuw i8, ptr %735, i64 56
  %737 = load ptr, ptr %736, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %737) #8
  %738 = getelementptr inbounds nuw i8, ptr %737, i64 40
  %739 = load i64, ptr %738, align 8, !tbaa !55
  %740 = getelementptr inbounds nuw i8, ptr %735, i64 32
  %741 = load i32, ptr %740, align 8, !tbaa !96
  %742 = zext i32 %741 to i64
  %743 = tail call i64 @llvm.umin.i64(i64 %739, i64 %742)
  %744 = trunc nuw i64 %743 to i32
  %745 = icmp eq i64 %743, 0
  br i1 %745, label %778, label %746

746:                                              ; preds = %731
  %747 = getelementptr inbounds nuw i8, ptr %735, i64 24
  %748 = load ptr, ptr %747, align 8, !tbaa !95
  %749 = getelementptr inbounds nuw i8, ptr %737, i64 32
  %750 = load ptr, ptr %749, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %748, ptr align 1 %750, i64 %743, i1 false)
  %751 = load ptr, ptr %747, align 8, !tbaa !95
  %752 = getelementptr inbounds nuw i8, ptr %751, i64 %743
  store ptr %752, ptr %747, align 8, !tbaa !95
  %753 = load ptr, ptr %749, align 8, !tbaa !56
  %754 = getelementptr inbounds nuw i8, ptr %753, i64 %743
  store ptr %754, ptr %749, align 8, !tbaa !56
  %755 = getelementptr inbounds nuw i8, ptr %735, i64 40
  %756 = load i64, ptr %755, align 8, !tbaa !97
  %757 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %756, i64 %743), !nosanitize !44
  %758 = extractvalue { i64, i1 } %757, 1, !nosanitize !44
  br i1 %758, label %759, label %760, !prof !45, !nosanitize !44

759:                                              ; preds = %746
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

760:                                              ; preds = %746
  %761 = extractvalue { i64, i1 } %757, 0, !nosanitize !44
  store i64 %761, ptr %755, align 8, !tbaa !97
  %762 = load i32, ptr %740, align 8, !tbaa !96
  %763 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %762, i32 %744), !nosanitize !44
  %764 = extractvalue { i32, i1 } %763, 1, !nosanitize !44
  br i1 %764, label %765, label %766, !prof !45, !nosanitize !44

765:                                              ; preds = %760
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

766:                                              ; preds = %760
  %767 = extractvalue { i32, i1 } %763, 0, !nosanitize !44
  store i32 %767, ptr %740, align 8, !tbaa !96
  %768 = load i64, ptr %738, align 8, !tbaa !55
  %769 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %768, i64 %743), !nosanitize !44
  %770 = extractvalue { i64, i1 } %769, 1, !nosanitize !44
  br i1 %770, label %771, label %772, !prof !45, !nosanitize !44

771:                                              ; preds = %766
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

772:                                              ; preds = %766
  %773 = extractvalue { i64, i1 } %769, 0, !nosanitize !44
  store i64 %773, ptr %738, align 8, !tbaa !55
  %774 = icmp eq i64 %773, 0
  br i1 %774, label %775, label %778

775:                                              ; preds = %772
  %776 = getelementptr inbounds nuw i8, ptr %737, i64 16
  %777 = load ptr, ptr %776, align 8, !tbaa !40
  store ptr %777, ptr %749, align 8, !tbaa !56
  br label %778

778:                                              ; preds = %775, %772, %731
  %779 = load ptr, ptr %0, align 8, !tbaa !19
  %780 = getelementptr inbounds nuw i8, ptr %779, i64 32
  %781 = load i32, ptr %780, align 8, !tbaa !96
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %1103, label %718

783:                                              ; preds = %565
  %784 = load i32, ptr %34, align 8, !tbaa !77
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %908, label %786

786:                                              ; preds = %783
  %787 = load i32, ptr %6, align 4, !tbaa !71
  %788 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %787, i32 1), !nosanitize !44
  %789 = extractvalue { i32, i1 } %788, 1, !nosanitize !44
  br i1 %789, label %790, label %791, !prof !45, !nosanitize !44

790:                                              ; preds = %838, %786
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

791:                                              ; preds = %786
  %792 = extractvalue { i32, i1 } %788, 0, !nosanitize !44
  %793 = load ptr, ptr %7, align 8, !tbaa !34
  %794 = zext i32 %792 to i64
  %795 = getelementptr inbounds nuw i8, ptr %793, i64 %794
  %796 = load i8, ptr %795, align 1, !tbaa !5
  %797 = load i32, ptr %30, align 4, !tbaa !118
  %798 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %797, i32 1), !nosanitize !44
  %799 = extractvalue { i32, i1 } %798, 1, !nosanitize !44
  br i1 %799, label %800, label %801, !prof !45, !nosanitize !44

800:                                              ; preds = %791
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

801:                                              ; preds = %791
  %802 = extractvalue { i32, i1 } %798, 0, !nosanitize !44
  %803 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %802, ptr %30, align 4, !tbaa !118
  %804 = zext i32 %797 to i64
  %805 = getelementptr inbounds nuw i8, ptr %803, i64 %804
  store i8 0, ptr %805, align 1, !tbaa !5
  %806 = load i32, ptr %30, align 4, !tbaa !118
  %807 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %806, i32 1), !nosanitize !44
  %808 = extractvalue { i32, i1 } %807, 1, !nosanitize !44
  br i1 %808, label %809, label %810, !prof !45, !nosanitize !44

809:                                              ; preds = %801
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

810:                                              ; preds = %801
  %811 = extractvalue { i32, i1 } %807, 0, !nosanitize !44
  %812 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %811, ptr %30, align 4, !tbaa !118
  %813 = zext i32 %806 to i64
  %814 = getelementptr inbounds nuw i8, ptr %812, i64 %813
  store i8 0, ptr %814, align 1, !tbaa !5
  %815 = load i32, ptr %30, align 4, !tbaa !118
  %816 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %815, i32 1), !nosanitize !44
  %817 = extractvalue { i32, i1 } %816, 1, !nosanitize !44
  br i1 %817, label %818, label %819, !prof !45, !nosanitize !44

818:                                              ; preds = %810
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

819:                                              ; preds = %810
  %820 = extractvalue { i32, i1 } %816, 0, !nosanitize !44
  %821 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %820, ptr %30, align 4, !tbaa !118
  %822 = zext i32 %815 to i64
  %823 = getelementptr inbounds nuw i8, ptr %821, i64 %822
  store i8 %796, ptr %823, align 1, !tbaa !5
  %824 = zext i8 %796 to i64
  %825 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %31, i64 0, i64 %824
  %826 = load i16, ptr %825, align 4, !tbaa !5
  %827 = add i16 %826, 1
  store i16 %827, ptr %825, align 4, !tbaa !5
  %828 = load i32, ptr %30, align 4, !tbaa !118
  %829 = load i32, ptr %33, align 8, !tbaa !46
  %830 = icmp eq i32 %828, %829
  br i1 %830, label %831, label %891

831:                                              ; preds = %819
  %832 = load i64, ptr %9, align 8, !tbaa !72
  %833 = icmp sgt i64 %832, -1
  br i1 %833, label %834, label %838

834:                                              ; preds = %831
  %835 = load ptr, ptr %7, align 8, !tbaa !34
  %836 = and i64 %832, 4294967295
  %837 = getelementptr inbounds nuw i8, ptr %835, i64 %836
  br label %838

838:                                              ; preds = %834, %831
  %839 = phi ptr [ %837, %834 ], [ null, %831 ]
  %840 = load i32, ptr %6, align 4, !tbaa !71
  %841 = zext i32 %840 to i64
  %842 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %841, i64 %832), !nosanitize !44
  %843 = extractvalue { i64, i1 } %842, 1, !nosanitize !44
  br i1 %843, label %790, label %844, !prof !45, !nosanitize !44

844:                                              ; preds = %838
  %845 = extractvalue { i64, i1 } %842, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %839, i64 noundef %845, i32 noundef 0) #8
  %846 = load i32, ptr %6, align 4, !tbaa !71
  %847 = zext i32 %846 to i64
  store i64 %847, ptr %9, align 8, !tbaa !72
  %848 = load ptr, ptr %0, align 8, !tbaa !19
  %849 = getelementptr inbounds nuw i8, ptr %848, i64 56
  %850 = load ptr, ptr %849, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %850) #8
  %851 = getelementptr inbounds nuw i8, ptr %850, i64 40
  %852 = load i64, ptr %851, align 8, !tbaa !55
  %853 = getelementptr inbounds nuw i8, ptr %848, i64 32
  %854 = load i32, ptr %853, align 8, !tbaa !96
  %855 = zext i32 %854 to i64
  %856 = tail call i64 @llvm.umin.i64(i64 %852, i64 %855)
  %857 = trunc nuw i64 %856 to i32
  %858 = icmp eq i64 %856, 0
  br i1 %858, label %891, label %859

859:                                              ; preds = %844
  %860 = getelementptr inbounds nuw i8, ptr %848, i64 24
  %861 = load ptr, ptr %860, align 8, !tbaa !95
  %862 = getelementptr inbounds nuw i8, ptr %850, i64 32
  %863 = load ptr, ptr %862, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %861, ptr align 1 %863, i64 %856, i1 false)
  %864 = load ptr, ptr %860, align 8, !tbaa !95
  %865 = getelementptr inbounds nuw i8, ptr %864, i64 %856
  store ptr %865, ptr %860, align 8, !tbaa !95
  %866 = load ptr, ptr %862, align 8, !tbaa !56
  %867 = getelementptr inbounds nuw i8, ptr %866, i64 %856
  store ptr %867, ptr %862, align 8, !tbaa !56
  %868 = getelementptr inbounds nuw i8, ptr %848, i64 40
  %869 = load i64, ptr %868, align 8, !tbaa !97
  %870 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %869, i64 %856), !nosanitize !44
  %871 = extractvalue { i64, i1 } %870, 1, !nosanitize !44
  br i1 %871, label %872, label %873, !prof !45, !nosanitize !44

872:                                              ; preds = %859
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

873:                                              ; preds = %859
  %874 = extractvalue { i64, i1 } %870, 0, !nosanitize !44
  store i64 %874, ptr %868, align 8, !tbaa !97
  %875 = load i32, ptr %853, align 8, !tbaa !96
  %876 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %875, i32 %857), !nosanitize !44
  %877 = extractvalue { i32, i1 } %876, 1, !nosanitize !44
  br i1 %877, label %878, label %879, !prof !45, !nosanitize !44

878:                                              ; preds = %873
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

879:                                              ; preds = %873
  %880 = extractvalue { i32, i1 } %876, 0, !nosanitize !44
  store i32 %880, ptr %853, align 8, !tbaa !96
  %881 = load i64, ptr %851, align 8, !tbaa !55
  %882 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %881, i64 %856), !nosanitize !44
  %883 = extractvalue { i64, i1 } %882, 1, !nosanitize !44
  br i1 %883, label %884, label %885, !prof !45, !nosanitize !44

884:                                              ; preds = %879
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

885:                                              ; preds = %879
  %886 = extractvalue { i64, i1 } %882, 0, !nosanitize !44
  store i64 %886, ptr %851, align 8, !tbaa !55
  %887 = icmp eq i64 %886, 0
  br i1 %887, label %888, label %891

888:                                              ; preds = %885
  %889 = getelementptr inbounds nuw i8, ptr %850, i64 16
  %890 = load ptr, ptr %889, align 8, !tbaa !40
  store ptr %890, ptr %862, align 8, !tbaa !56
  br label %891

891:                                              ; preds = %888, %885, %844, %819
  %892 = load i32, ptr %6, align 4, !tbaa !71
  %893 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %892, i32 1), !nosanitize !44
  %894 = extractvalue { i32, i1 } %893, 1, !nosanitize !44
  br i1 %894, label %895, label %896, !prof !45, !nosanitize !44

895:                                              ; preds = %891
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

896:                                              ; preds = %891
  %897 = extractvalue { i32, i1 } %893, 0, !nosanitize !44
  store i32 %897, ptr %6, align 4, !tbaa !71
  %898 = load i32, ptr %3, align 4, !tbaa !73
  %899 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %898, i32 1), !nosanitize !44
  %900 = extractvalue { i32, i1 } %899, 1, !nosanitize !44
  br i1 %900, label %901, label %902, !prof !45, !nosanitize !44

901:                                              ; preds = %896
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

902:                                              ; preds = %896
  %903 = extractvalue { i32, i1 } %899, 0, !nosanitize !44
  store i32 %903, ptr %3, align 4, !tbaa !73
  %904 = load ptr, ptr %0, align 8, !tbaa !19
  %905 = getelementptr inbounds nuw i8, ptr %904, i64 32
  %906 = load i32, ptr %905, align 8, !tbaa !96
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %1103, label %718

908:                                              ; preds = %783
  store i32 1, ptr %34, align 8, !tbaa !77
  %909 = load i32, ptr %6, align 4, !tbaa !71
  %910 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %909, i32 1), !nosanitize !44
  %911 = extractvalue { i32, i1 } %910, 1, !nosanitize !44
  br i1 %911, label %912, label %913, !prof !45, !nosanitize !44

912:                                              ; preds = %908
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

913:                                              ; preds = %908
  %914 = extractvalue { i32, i1 } %910, 0, !nosanitize !44
  store i32 %914, ptr %6, align 4, !tbaa !71
  %915 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %569, i32 1), !nosanitize !44
  %916 = extractvalue { i32, i1 } %915, 1, !nosanitize !44
  br i1 %916, label %917, label %918, !prof !45, !nosanitize !44

917:                                              ; preds = %913
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

918:                                              ; preds = %913
  %919 = extractvalue { i32, i1 } %915, 0, !nosanitize !44
  store i32 %919, ptr %3, align 4, !tbaa !73
  br label %718

920:                                              ; preds = %323
  %921 = load i32, ptr %34, align 8, !tbaa !77
  %922 = icmp eq i32 %921, 0
  %923 = load i32, ptr %6, align 4, !tbaa !71
  br i1 %922, label %966, label %924

924:                                              ; preds = %920
  %925 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %923, i32 1), !nosanitize !44
  %926 = extractvalue { i32, i1 } %925, 1, !nosanitize !44
  br i1 %926, label %927, label %928, !prof !45, !nosanitize !44

927:                                              ; preds = %1045, %977, %924
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

928:                                              ; preds = %924
  %929 = extractvalue { i32, i1 } %925, 0, !nosanitize !44
  %930 = load ptr, ptr %7, align 8, !tbaa !34
  %931 = zext i32 %929 to i64
  %932 = getelementptr inbounds nuw i8, ptr %930, i64 %931
  %933 = load i8, ptr %932, align 1, !tbaa !5
  %934 = load i32, ptr %30, align 4, !tbaa !118
  %935 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %934, i32 1), !nosanitize !44
  %936 = extractvalue { i32, i1 } %935, 1, !nosanitize !44
  br i1 %936, label %937, label %938, !prof !45, !nosanitize !44

937:                                              ; preds = %928
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

938:                                              ; preds = %928
  %939 = extractvalue { i32, i1 } %935, 0, !nosanitize !44
  %940 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %939, ptr %30, align 4, !tbaa !118
  %941 = zext i32 %934 to i64
  %942 = getelementptr inbounds nuw i8, ptr %940, i64 %941
  store i8 0, ptr %942, align 1, !tbaa !5
  %943 = load i32, ptr %30, align 4, !tbaa !118
  %944 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %943, i32 1), !nosanitize !44
  %945 = extractvalue { i32, i1 } %944, 1, !nosanitize !44
  br i1 %945, label %946, label %947, !prof !45, !nosanitize !44

946:                                              ; preds = %938
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

947:                                              ; preds = %938
  %948 = extractvalue { i32, i1 } %944, 0, !nosanitize !44
  %949 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %948, ptr %30, align 4, !tbaa !118
  %950 = zext i32 %943 to i64
  %951 = getelementptr inbounds nuw i8, ptr %949, i64 %950
  store i8 0, ptr %951, align 1, !tbaa !5
  %952 = load i32, ptr %30, align 4, !tbaa !118
  %953 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %952, i32 1), !nosanitize !44
  %954 = extractvalue { i32, i1 } %953, 1, !nosanitize !44
  br i1 %954, label %955, label %956, !prof !45, !nosanitize !44

955:                                              ; preds = %947
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

956:                                              ; preds = %947
  %957 = extractvalue { i32, i1 } %953, 0, !nosanitize !44
  %958 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %957, ptr %30, align 4, !tbaa !118
  %959 = zext i32 %952 to i64
  %960 = getelementptr inbounds nuw i8, ptr %958, i64 %959
  store i8 %933, ptr %960, align 1, !tbaa !5
  %961 = zext i8 %933 to i64
  %962 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %31, i64 0, i64 %961
  %963 = load i16, ptr %962, align 4, !tbaa !5
  %964 = add i16 %963, 1
  store i16 %964, ptr %962, align 4, !tbaa !5
  store i32 0, ptr %34, align 8, !tbaa !77
  %965 = load i32, ptr %6, align 4, !tbaa !71
  br label %966

966:                                              ; preds = %956, %920
  %967 = phi i32 [ %965, %956 ], [ %923, %920 ]
  %968 = tail call i32 @llvm.umin.i32(i32 %967, i32 2)
  store i32 %968, ptr %10, align 4, !tbaa !74
  %969 = icmp eq i32 %1, 4
  br i1 %969, label %970, label %1035

970:                                              ; preds = %966
  %971 = load i64, ptr %9, align 8, !tbaa !72
  %972 = icmp sgt i64 %971, -1
  br i1 %972, label %973, label %977

973:                                              ; preds = %970
  %974 = load ptr, ptr %7, align 8, !tbaa !34
  %975 = and i64 %971, 4294967295
  %976 = getelementptr inbounds nuw i8, ptr %974, i64 %975
  br label %977

977:                                              ; preds = %973, %970
  %978 = phi ptr [ %976, %973 ], [ null, %970 ]
  %979 = zext i32 %967 to i64
  %980 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %979, i64 %971), !nosanitize !44
  %981 = extractvalue { i64, i1 } %980, 1, !nosanitize !44
  br i1 %981, label %927, label %982, !prof !45, !nosanitize !44

982:                                              ; preds = %977
  %983 = extractvalue { i64, i1 } %980, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %978, i64 noundef %983, i32 noundef 1) #8
  %984 = load i32, ptr %6, align 4, !tbaa !71
  %985 = zext i32 %984 to i64
  store i64 %985, ptr %9, align 8, !tbaa !72
  %986 = load ptr, ptr %0, align 8, !tbaa !19
  %987 = getelementptr inbounds nuw i8, ptr %986, i64 56
  %988 = load ptr, ptr %987, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %988) #8
  %989 = getelementptr inbounds nuw i8, ptr %988, i64 40
  %990 = load i64, ptr %989, align 8, !tbaa !55
  %991 = getelementptr inbounds nuw i8, ptr %986, i64 32
  %992 = load i32, ptr %991, align 8, !tbaa !96
  %993 = zext i32 %992 to i64
  %994 = tail call i64 @llvm.umin.i64(i64 %990, i64 %993)
  %995 = trunc nuw i64 %994 to i32
  %996 = icmp eq i64 %994, 0
  br i1 %996, label %1029, label %997

997:                                              ; preds = %982
  %998 = getelementptr inbounds nuw i8, ptr %986, i64 24
  %999 = load ptr, ptr %998, align 8, !tbaa !95
  %1000 = getelementptr inbounds nuw i8, ptr %988, i64 32
  %1001 = load ptr, ptr %1000, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %999, ptr align 1 %1001, i64 %994, i1 false)
  %1002 = load ptr, ptr %998, align 8, !tbaa !95
  %1003 = getelementptr inbounds nuw i8, ptr %1002, i64 %994
  store ptr %1003, ptr %998, align 8, !tbaa !95
  %1004 = load ptr, ptr %1000, align 8, !tbaa !56
  %1005 = getelementptr inbounds nuw i8, ptr %1004, i64 %994
  store ptr %1005, ptr %1000, align 8, !tbaa !56
  %1006 = getelementptr inbounds nuw i8, ptr %986, i64 40
  %1007 = load i64, ptr %1006, align 8, !tbaa !97
  %1008 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1007, i64 %994), !nosanitize !44
  %1009 = extractvalue { i64, i1 } %1008, 1, !nosanitize !44
  br i1 %1009, label %1010, label %1011, !prof !45, !nosanitize !44

1010:                                             ; preds = %997
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1011:                                             ; preds = %997
  %1012 = extractvalue { i64, i1 } %1008, 0, !nosanitize !44
  store i64 %1012, ptr %1006, align 8, !tbaa !97
  %1013 = load i32, ptr %991, align 8, !tbaa !96
  %1014 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1013, i32 %995), !nosanitize !44
  %1015 = extractvalue { i32, i1 } %1014, 1, !nosanitize !44
  br i1 %1015, label %1016, label %1017, !prof !45, !nosanitize !44

1016:                                             ; preds = %1011
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1017:                                             ; preds = %1011
  %1018 = extractvalue { i32, i1 } %1014, 0, !nosanitize !44
  store i32 %1018, ptr %991, align 8, !tbaa !96
  %1019 = load i64, ptr %989, align 8, !tbaa !55
  %1020 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1019, i64 %994), !nosanitize !44
  %1021 = extractvalue { i64, i1 } %1020, 1, !nosanitize !44
  br i1 %1021, label %1022, label %1023, !prof !45, !nosanitize !44

1022:                                             ; preds = %1017
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1023:                                             ; preds = %1017
  %1024 = extractvalue { i64, i1 } %1020, 0, !nosanitize !44
  store i64 %1024, ptr %989, align 8, !tbaa !55
  %1025 = icmp eq i64 %1024, 0
  br i1 %1025, label %1026, label %1029

1026:                                             ; preds = %1023
  %1027 = getelementptr inbounds nuw i8, ptr %988, i64 16
  %1028 = load ptr, ptr %1027, align 8, !tbaa !40
  store ptr %1028, ptr %1000, align 8, !tbaa !56
  br label %1029

1029:                                             ; preds = %1026, %1023, %982
  %1030 = load ptr, ptr %0, align 8, !tbaa !19
  %1031 = getelementptr inbounds nuw i8, ptr %1030, i64 32
  %1032 = load i32, ptr %1031, align 8, !tbaa !96
  %1033 = icmp eq i32 %1032, 0
  %1034 = select i1 %1033, i32 2, i32 3
  br label %1103

1035:                                             ; preds = %966
  %1036 = load i32, ptr %30, align 4, !tbaa !118
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1102, label %1038

1038:                                             ; preds = %1035
  %1039 = load i64, ptr %9, align 8, !tbaa !72
  %1040 = icmp sgt i64 %1039, -1
  br i1 %1040, label %1041, label %1045

1041:                                             ; preds = %1038
  %1042 = load ptr, ptr %7, align 8, !tbaa !34
  %1043 = and i64 %1039, 4294967295
  %1044 = getelementptr inbounds nuw i8, ptr %1042, i64 %1043
  br label %1045

1045:                                             ; preds = %1041, %1038
  %1046 = phi ptr [ %1044, %1041 ], [ null, %1038 ]
  %1047 = zext i32 %967 to i64
  %1048 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1047, i64 %1039), !nosanitize !44
  %1049 = extractvalue { i64, i1 } %1048, 1, !nosanitize !44
  br i1 %1049, label %927, label %1050, !prof !45, !nosanitize !44

1050:                                             ; preds = %1045
  %1051 = extractvalue { i64, i1 } %1048, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1046, i64 noundef %1051, i32 noundef 0) #8
  %1052 = load i32, ptr %6, align 4, !tbaa !71
  %1053 = zext i32 %1052 to i64
  store i64 %1053, ptr %9, align 8, !tbaa !72
  %1054 = load ptr, ptr %0, align 8, !tbaa !19
  %1055 = getelementptr inbounds nuw i8, ptr %1054, i64 56
  %1056 = load ptr, ptr %1055, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1056) #8
  %1057 = getelementptr inbounds nuw i8, ptr %1056, i64 40
  %1058 = load i64, ptr %1057, align 8, !tbaa !55
  %1059 = getelementptr inbounds nuw i8, ptr %1054, i64 32
  %1060 = load i32, ptr %1059, align 8, !tbaa !96
  %1061 = zext i32 %1060 to i64
  %1062 = tail call i64 @llvm.umin.i64(i64 %1058, i64 %1061)
  %1063 = trunc nuw i64 %1062 to i32
  %1064 = icmp eq i64 %1062, 0
  br i1 %1064, label %1097, label %1065

1065:                                             ; preds = %1050
  %1066 = getelementptr inbounds nuw i8, ptr %1054, i64 24
  %1067 = load ptr, ptr %1066, align 8, !tbaa !95
  %1068 = getelementptr inbounds nuw i8, ptr %1056, i64 32
  %1069 = load ptr, ptr %1068, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1067, ptr align 1 %1069, i64 %1062, i1 false)
  %1070 = load ptr, ptr %1066, align 8, !tbaa !95
  %1071 = getelementptr inbounds nuw i8, ptr %1070, i64 %1062
  store ptr %1071, ptr %1066, align 8, !tbaa !95
  %1072 = load ptr, ptr %1068, align 8, !tbaa !56
  %1073 = getelementptr inbounds nuw i8, ptr %1072, i64 %1062
  store ptr %1073, ptr %1068, align 8, !tbaa !56
  %1074 = getelementptr inbounds nuw i8, ptr %1054, i64 40
  %1075 = load i64, ptr %1074, align 8, !tbaa !97
  %1076 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1075, i64 %1062), !nosanitize !44
  %1077 = extractvalue { i64, i1 } %1076, 1, !nosanitize !44
  br i1 %1077, label %1078, label %1079, !prof !45, !nosanitize !44

1078:                                             ; preds = %1065
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1079:                                             ; preds = %1065
  %1080 = extractvalue { i64, i1 } %1076, 0, !nosanitize !44
  store i64 %1080, ptr %1074, align 8, !tbaa !97
  %1081 = load i32, ptr %1059, align 8, !tbaa !96
  %1082 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1081, i32 %1063), !nosanitize !44
  %1083 = extractvalue { i32, i1 } %1082, 1, !nosanitize !44
  br i1 %1083, label %1084, label %1085, !prof !45, !nosanitize !44

1084:                                             ; preds = %1079
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1085:                                             ; preds = %1079
  %1086 = extractvalue { i32, i1 } %1082, 0, !nosanitize !44
  store i32 %1086, ptr %1059, align 8, !tbaa !96
  %1087 = load i64, ptr %1057, align 8, !tbaa !55
  %1088 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1087, i64 %1062), !nosanitize !44
  %1089 = extractvalue { i64, i1 } %1088, 1, !nosanitize !44
  br i1 %1089, label %1090, label %1091, !prof !45, !nosanitize !44

1090:                                             ; preds = %1085
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1091:                                             ; preds = %1085
  %1092 = extractvalue { i64, i1 } %1088, 0, !nosanitize !44
  store i64 %1092, ptr %1057, align 8, !tbaa !55
  %1093 = icmp eq i64 %1092, 0
  br i1 %1093, label %1094, label %1097

1094:                                             ; preds = %1091
  %1095 = getelementptr inbounds nuw i8, ptr %1056, i64 16
  %1096 = load ptr, ptr %1095, align 8, !tbaa !40
  store ptr %1096, ptr %1068, align 8, !tbaa !56
  br label %1097

1097:                                             ; preds = %1094, %1091, %1050
  %1098 = load ptr, ptr %0, align 8, !tbaa !19
  %1099 = getelementptr inbounds nuw i8, ptr %1098, i64 32
  %1100 = load i32, ptr %1099, align 8, !tbaa !96
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1103, label %1102

1102:                                             ; preds = %1097, %1035
  br label %1103

1103:                                             ; preds = %1102, %1097, %1029, %902, %778, %319
  %1104 = phi i32 [ 1, %1102 ], [ %1034, %1029 ], [ 0, %1097 ], [ 0, %319 ], [ 0, %778 ], [ 0, %902 ]
  ret i32 %1104
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nomerge noreturn nounwind }
attributes #10 = { noreturn nounwind }

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
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = distinct !{!84, !83}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !83}
!87 = distinct !{!87, !83}
!88 = distinct !{!88, !83}
!89 = !{!20, !22, i64 56}
!90 = !{!20, !12, i64 5940}
!91 = !{!20, !12, i64 5944}
!92 = !{!20, !27, i64 5936}
!93 = distinct !{!93, !83}
!94 = !{!63, !11, i64 8}
!95 = !{!9, !10, i64 24}
!96 = !{!9, !12, i64 32}
!97 = !{!9, !13, i64 40}
!98 = !{!"branch_weights", i32 1048575, i32 1}
!99 = !{!100, !10, i64 56}
!100 = !{!"gz_header_s", !12, i64 0, !13, i64 8, !12, i64 16, !12, i64 20, !10, i64 24, !12, i64 32, !12, i64 36, !10, i64 40, !12, i64 48, !10, i64 56, !12, i64 64, !12, i64 68, !12, i64 72}
!101 = !{!100, !10, i64 40}
!102 = !{!100, !10, i64 24}
!103 = !{!100, !12, i64 0}
!104 = !{!100, !12, i64 68}
!105 = !{!100, !13, i64 8}
!106 = !{!100, !12, i64 20}
!107 = !{!100, !12, i64 32}
!108 = !{!20, !13, i64 64}
!109 = !{!"branch_weights", i32 1, i32 1048574}
!110 = distinct !{!110, !83, !111}
!111 = !{!"llvm.loop.peeled.count", i32 1}
!112 = distinct !{!112, !83}
!113 = distinct !{!113, !83}
!114 = !{!20, !12, i64 5928}
!115 = distinct !{!115, !83}
!116 = distinct !{!116, !83}
!117 = distinct !{!117, !83}
!118 = !{!20, !12, i64 5900}
!119 = distinct !{!119, !83}
!120 = !{!20, !25, i64 2904}
!121 = !{!20, !25, i64 2928}
!122 = !{!20, !25, i64 2952}
!123 = distinct !{!123, !83}
!124 = distinct !{!124, !83}
!125 = distinct !{!125, !83}
!126 = !{!20, !12, i64 164}
!127 = distinct !{!127, !83}
