; ModuleID = 'evaluation/zlib/deflate_integer_O3.ll'
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
  %5 = tail call i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef 8, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef %2, i32 noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %143, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !8
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %143, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %143, label %17

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
  br i1 %35, label %143, label %36

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
  br i1 %56, label %143, label %57

57:                                               ; preds = %42
  %58 = icmp eq i32 %43, 8
  %59 = and i1 %58, %44
  br i1 %59, label %143, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = tail call ptr %25(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %143, label %65

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
  store i32 %76, ptr %77, align 8, !tbaa !33
  %78 = shl nuw nsw i32 128, %4
  %79 = getelementptr inbounds nuw i8, ptr %63, i64 132
  store i32 %78, ptr %79, align 4, !tbaa !34
  %80 = add nsw i32 %78, -1
  %81 = getelementptr inbounds nuw i8, ptr %63, i64 140
  store i32 %80, ptr %81, align 4, !tbaa !35
  %82 = trunc nuw nsw i32 %4 to i8
  %83 = add nuw nsw i8 %82, 9
  %84 = udiv i8 %83, 3
  %85 = zext nneg i8 %84 to i32
  %86 = getelementptr inbounds nuw i8, ptr %63, i64 144
  store i32 %85, ptr %86, align 8, !tbaa !36
  %87 = load ptr, ptr %19, align 8, !tbaa !15
  %88 = load ptr, ptr %61, align 8, !tbaa !16
  %89 = tail call ptr %87(ptr noundef %88, i32 noundef %72, i32 noundef 2) #11
  %90 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %89, ptr %90, align 8, !tbaa !37
  %91 = load ptr, ptr %19, align 8, !tbaa !15
  %92 = load ptr, ptr %61, align 8, !tbaa !16
  %93 = load i32, ptr %73, align 8, !tbaa !31
  %94 = tail call ptr %91(ptr noundef %92, i32 noundef %93, i32 noundef 2) #11
  %95 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %94, ptr %95, align 8, !tbaa !38
  %96 = load ptr, ptr %19, align 8, !tbaa !15
  %97 = load ptr, ptr %61, align 8, !tbaa !16
  %98 = load i32, ptr %79, align 4, !tbaa !34
  %99 = tail call ptr %96(ptr noundef %97, i32 noundef %98, i32 noundef 2) #11
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %99, ptr %100, align 8, !tbaa !39
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %101, align 8, !tbaa !40
  %102 = shl nuw nsw i32 64, %4
  %103 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %102, ptr %103, align 8, !tbaa !41
  %104 = load ptr, ptr %19, align 8, !tbaa !15
  %105 = load ptr, ptr %61, align 8, !tbaa !16
  %106 = tail call ptr %104(ptr noundef %105, i32 noundef %102, i32 noundef 4) #11
  %107 = getelementptr inbounds nuw i8, ptr %63, i64 16
  store ptr %106, ptr %107, align 8, !tbaa !42
  %108 = load i32, ptr %103, align 8, !tbaa !41
  %109 = zext i32 %108 to i64
  %110 = shl nuw nsw i64 %109, 2
  %111 = getelementptr inbounds nuw i8, ptr %63, i64 24
  store i64 %110, ptr %111, align 8, !tbaa !43
  %112 = load ptr, ptr %90, align 8, !tbaa !37
  %113 = icmp eq ptr %112, null
  br i1 %113, label %122, label %114

114:                                              ; preds = %65
  %115 = load ptr, ptr %95, align 8, !tbaa !38
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %100, align 8, !tbaa !39
  %119 = icmp eq ptr %118, null
  %120 = icmp eq ptr %106, null
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117, %114, %65
  store i32 666, ptr %69, align 8, !tbaa !28
  %123 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !44
  store ptr %123, ptr %18, align 8, !tbaa !9
  %124 = tail call i32 @deflateEnd(ptr noundef nonnull %0)
  br label %143

125:                                              ; preds = %117
  %126 = getelementptr inbounds nuw i8, ptr %106, i64 %109
  %127 = getelementptr inbounds nuw i8, ptr %63, i64 5888
  store ptr %126, ptr %127, align 8, !tbaa !45
  %128 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %108, i32 1), !nosanitize !46
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !46
  br i1 %129, label %130, label %131, !prof !47, !nosanitize !46

130:                                              ; preds = %125
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

131:                                              ; preds = %125
  %132 = extractvalue { i32, i1 } %128, 0, !nosanitize !46
  %133 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %132, i32 3), !nosanitize !46
  %134 = extractvalue { i32, i1 } %133, 1, !nosanitize !46
  br i1 %134, label %135, label %136, !prof !47, !nosanitize !46

135:                                              ; preds = %131
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !46
  unreachable, !nosanitize !46

136:                                              ; preds = %131
  %137 = extractvalue { i32, i1 } %133, 0, !nosanitize !46
  %138 = getelementptr inbounds nuw i8, ptr %63, i64 5904
  store i32 %137, ptr %138, align 8, !tbaa !48
  %139 = getelementptr inbounds nuw i8, ptr %63, i64 196
  store i32 %32, ptr %139, align 4, !tbaa !49
  %140 = getelementptr inbounds nuw i8, ptr %63, i64 200
  store i32 %5, ptr %140, align 8, !tbaa !50
  %141 = getelementptr inbounds nuw i8, ptr %63, i64 72
  store i8 8, ptr %141, align 8, !tbaa !51
  %142 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %143

143:                                              ; preds = %136, %122, %60, %57, %42, %34, %15, %10, %8
  %144 = phi i32 [ %142, %136 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %42 ], [ -4, %122 ], [ -6, %10 ], [ -2, %57 ], [ -4, %60 ]
  ret i32 %144
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
  %23 = load ptr, ptr %22, align 8, !tbaa !42
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
  %34 = load ptr, ptr %33, align 8, !tbaa !39
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
  %45 = load ptr, ptr %44, align 8, !tbaa !38
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
  %56 = load ptr, ptr %55, align 8, !tbaa !37
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
  %71 = phi i32 [ %69, %63 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %71
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = tail call i32 @deflateResetKeep(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %52

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 80
  %8 = load i32, ptr %7, align 8, !tbaa !31
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 1
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i64 %10, ptr %11, align 8, !tbaa !52
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 132
  %13 = load i32, ptr %12, align 4, !tbaa !34
  %14 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %13, i32 1), !nosanitize !46
  %15 = extractvalue { i32, i1 } %14, 1, !nosanitize !46
  br i1 %15, label %16, label %17, !prof !47, !nosanitize !46

16:                                               ; preds = %4
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

17:                                               ; preds = %4
  %18 = extractvalue { i32, i1 } %14, 0, !nosanitize !46
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 120
  %20 = load ptr, ptr %19, align 8, !tbaa !39
  %21 = zext i32 %18 to i64
  %22 = getelementptr inbounds nuw [2 x i8], ptr %20, i64 %21
  store i16 0, ptr %22, align 2, !tbaa !53
  %23 = shl nuw nsw i64 %21, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %20, i8 0, i64 %23, i1 false)
  %24 = getelementptr inbounds nuw i8, ptr %6, i64 5960
  store i32 0, ptr %24, align 8, !tbaa !54
  %25 = getelementptr inbounds nuw i8, ptr %6, i64 196
  %26 = load i32, ptr %25, align 4, !tbaa !49
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 2
  %30 = load i16, ptr %29, align 2, !tbaa !55
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds nuw i8, ptr %6, i64 192
  store i32 %31, ptr %32, align 8, !tbaa !57
  %33 = load i16, ptr %28, align 16, !tbaa !58
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds nuw i8, ptr %6, i64 204
  store i32 %34, ptr %35, align 4, !tbaa !59
  %36 = getelementptr inbounds nuw i8, ptr %28, i64 4
  %37 = load i16, ptr %36, align 4, !tbaa !60
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds nuw i8, ptr %6, i64 208
  store i32 %38, ptr %39, align 8, !tbaa !61
  %40 = getelementptr inbounds nuw i8, ptr %28, i64 6
  %41 = load i16, ptr %40, align 2, !tbaa !62
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds nuw i8, ptr %6, i64 188
  store i32 %42, ptr %43, align 4, !tbaa !63
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 172
  store i32 0, ptr %44, align 4, !tbaa !64
  %45 = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i64 0, ptr %45, align 8, !tbaa !65
  %46 = getelementptr inbounds nuw i8, ptr %6, i64 180
  store i32 0, ptr %46, align 4, !tbaa !66
  %47 = getelementptr inbounds nuw i8, ptr %6, i64 5932
  store i32 0, ptr %47, align 4, !tbaa !67
  %48 = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 2, ptr %48, align 8, !tbaa !68
  %49 = getelementptr inbounds nuw i8, ptr %6, i64 160
  store i32 2, ptr %49, align 8, !tbaa !69
  %50 = getelementptr inbounds nuw i8, ptr %6, i64 168
  store i32 0, ptr %50, align 8, !tbaa !70
  %51 = getelementptr inbounds nuw i8, ptr %6, i64 128
  store i32 0, ptr %51, align 8, !tbaa !71
  br label %52

52:                                               ; preds = %17, %1
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %153, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %153, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %153, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %153, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %153

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %153 [
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
  br i1 %24, label %153, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !29
  switch i32 %27, label %34 [
    i32 2, label %153
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %153

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !66
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %153

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !66
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %153

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !29
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %40 = load i32, ptr %39, align 8, !tbaa !31
  %41 = icmp ult i32 %2, %40
  br i1 %41, label %79, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !72
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #11
  store i64 %45, ptr %43, align 8, !tbaa !72
  store i32 0, ptr %26, align 8, !tbaa !29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %47 = load i32, ptr %46, align 8, !tbaa !31
  %48 = icmp ult i32 %2, %47
  br i1 %48, label %79, label %69

49:                                               ; preds = %38
  %50 = icmp eq i32 %27, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %53 = load i32, ptr %52, align 4, !tbaa !34
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 1), !nosanitize !46
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !46
  br i1 %55, label %56, label %57, !prof !47, !nosanitize !46

56:                                               ; preds = %51
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

57:                                               ; preds = %51
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !46
  %59 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %60 = load ptr, ptr %59, align 8, !tbaa !39
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds nuw [2 x i8], ptr %60, i64 %61
  store i16 0, ptr %62, align 2, !tbaa !53
  %63 = shl nuw nsw i64 %61, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %60, i8 0, i64 %63, i1 false)
  %64 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %64, align 8, !tbaa !54
  %65 = getelementptr inbounds nuw i8, ptr %15, i64 172
  store i32 0, ptr %65, align 4, !tbaa !64
  %66 = getelementptr inbounds nuw i8, ptr %15, i64 152
  store i64 0, ptr %66, align 8, !tbaa !65
  %67 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  store i32 0, ptr %67, align 4, !tbaa !67
  %68 = load i32, ptr %39, align 8, !tbaa !31
  br label %69

69:                                               ; preds = %57, %49, %42
  %70 = phi ptr [ %35, %57 ], [ %35, %49 ], [ %31, %42 ]
  %71 = phi i32 [ %68, %57 ], [ %40, %49 ], [ %47, %42 ]
  %72 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %71), !nosanitize !46
  %73 = extractvalue { i32, i1 } %72, 1, !nosanitize !46
  br i1 %73, label %74, label %75, !prof !47, !nosanitize !46

74:                                               ; preds = %69
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

75:                                               ; preds = %69
  %76 = extractvalue { i32, i1 } %72, 0, !nosanitize !46
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 %77
  br label %79

79:                                               ; preds = %75, %42, %38
  %80 = phi ptr [ %70, %75 ], [ %35, %38 ], [ %31, %42 ]
  %81 = phi i32 [ %71, %75 ], [ %2, %38 ], [ %2, %42 ]
  %82 = phi ptr [ %78, %75 ], [ %1, %38 ], [ %1, %42 ]
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %84 = load i32, ptr %83, align 8, !tbaa !73
  %85 = load ptr, ptr %0, align 8, !tbaa !74
  store i32 %81, ptr %83, align 8, !tbaa !73
  store ptr %82, ptr %0, align 8, !tbaa !74
  tail call fastcc void @fill_window(ptr noundef nonnull %15)
  %86 = load i32, ptr %80, align 4, !tbaa !66
  %87 = icmp ugt i32 %86, 2
  br i1 %87, label %88, label %138

88:                                               ; preds = %79
  %89 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %90 = getelementptr inbounds nuw i8, ptr %15, i64 128
  %91 = getelementptr inbounds nuw i8, ptr %15, i64 144
  %92 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %93 = getelementptr inbounds nuw i8, ptr %15, i64 140
  %94 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %95 = getelementptr inbounds nuw i8, ptr %15, i64 112
  %96 = getelementptr inbounds nuw i8, ptr %15, i64 88
  br label %97

97:                                               ; preds = %135, %88
  %98 = phi i32 [ %86, %88 ], [ %136, %135 ]
  %99 = load i32, ptr %89, align 4, !tbaa !64
  %100 = load i32, ptr %91, align 8, !tbaa !36
  %101 = load ptr, ptr %92, align 8, !tbaa !37
  %102 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %99)
  %103 = add i32 %98, -3
  %104 = icmp ugt i32 %102, %103
  br i1 %104, label %105, label %134, !prof !75, !nosanitize !46

105:                                              ; preds = %97
  %106 = load i32, ptr %90, align 8, !tbaa !71
  %107 = add i32 %98, -2
  %108 = load i32, ptr %93, align 4, !tbaa !35
  %109 = load ptr, ptr %94, align 8, !tbaa !39
  %110 = load ptr, ptr %95, align 8, !tbaa !38
  %111 = load i32, ptr %96, align 8, !tbaa !32
  br label %112

112:                                              ; preds = %112, %105
  %113 = phi i32 [ %106, %105 ], [ %123, %112 ]
  %114 = phi i32 [ %99, %105 ], [ %131, %112 ]
  %115 = phi i32 [ %107, %105 ], [ %132, %112 ]
  %116 = shl i32 %113, %100
  %117 = add i32 %114, 2
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds nuw i8, ptr %101, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !8
  %121 = zext i8 %120 to i32
  %122 = xor i32 %116, %121
  %123 = and i32 %122, %108
  store i32 %123, ptr %90, align 8, !tbaa !71
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds nuw [2 x i8], ptr %109, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !53
  %127 = and i32 %111, %114
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds nuw [2 x i8], ptr %110, i64 %128
  store i16 %126, ptr %129, align 2, !tbaa !53
  %130 = trunc i32 %114 to i16
  store i16 %130, ptr %125, align 2, !tbaa !53
  %131 = add nuw i32 %114, 1
  %132 = add i32 %115, -1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %112, !llvm.loop !76

134:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

135:                                              ; preds = %112
  store i32 %131, ptr %89, align 4, !tbaa !64
  store i32 2, ptr %80, align 4, !tbaa !66
  tail call fastcc void @fill_window(ptr noundef nonnull %15)
  %136 = load i32, ptr %80, align 4, !tbaa !66
  %137 = icmp ugt i32 %136, 2
  br i1 %137, label %97, label %138, !llvm.loop !78

138:                                              ; preds = %135, %79
  %139 = phi i32 [ %86, %79 ], [ %136, %135 ]
  %140 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %141 = load i32, ptr %140, align 4, !tbaa !64
  %142 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %141, i32 %139), !nosanitize !46
  %143 = extractvalue { i32, i1 } %142, 1, !nosanitize !46
  br i1 %143, label %144, label %145, !prof !47, !nosanitize !46

144:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

145:                                              ; preds = %138
  %146 = extractvalue { i32, i1 } %142, 0, !nosanitize !46
  store i32 %146, ptr %140, align 4, !tbaa !64
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds nuw i8, ptr %15, i64 152
  store i64 %147, ptr %148, align 8, !tbaa !65
  %149 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  store i32 %139, ptr %149, align 4, !tbaa !67
  store i32 0, ptr %80, align 4, !tbaa !66
  %150 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %150, align 8, !tbaa !68
  %151 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %151, align 8, !tbaa !69
  %152 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %152, align 8, !tbaa !70
  store ptr %85, ptr %0, align 8, !tbaa !74
  store i32 %84, ptr %83, align 8, !tbaa !73
  store i32 %27, ptr %26, align 8, !tbaa !29
  br label %153

153:                                              ; preds = %145, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
  %154 = phi i32 [ 0, %145 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %154
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_window(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = zext i32 %3 to i64
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
  %20 = load i32, ptr %5, align 4, !tbaa !66
  br label %21

21:                                               ; preds = %302, %1
  %22 = phi i32 [ %229, %302 ], [ %20, %1 ]
  %23 = load i64, ptr %4, align 8, !tbaa !52
  %24 = zext i32 %22 to i64
  %25 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %23, i64 %24), !nosanitize !46
  %26 = extractvalue { i64, i1 } %25, 1, !nosanitize !46
  br i1 %26, label %27, label %28, !prof !47, !nosanitize !46

27:                                               ; preds = %21
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

28:                                               ; preds = %21
  %29 = extractvalue { i64, i1 } %25, 0, !nosanitize !46
  %30 = load i32, ptr %6, align 4, !tbaa !64
  %31 = zext i32 %30 to i64
  %32 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %29, i64 %31), !nosanitize !46
  %33 = extractvalue { i64, i1 } %32, 1, !nosanitize !46
  br i1 %33, label %34, label %35, !prof !47, !nosanitize !46

34:                                               ; preds = %28
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

35:                                               ; preds = %28
  %36 = extractvalue { i64, i1 } %32, 0, !nosanitize !46
  %37 = trunc i64 %36 to i32
  %38 = load i32, ptr %2, align 8, !tbaa !31
  %39 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %38, i32 262), !nosanitize !46
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !46
  br i1 %40, label %41, label %42, !prof !47, !nosanitize !46

41:                                               ; preds = %35
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

42:                                               ; preds = %35
  %43 = extractvalue { i32, i1 } %39, 0, !nosanitize !46
  %44 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3, i32 %43), !nosanitize !46
  %45 = extractvalue { i32, i1 } %44, 1, !nosanitize !46
  br i1 %45, label %46, label %47, !prof !47, !nosanitize !46

46:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

47:                                               ; preds = %42
  %48 = extractvalue { i32, i1 } %44, 0, !nosanitize !46
  %49 = icmp ult i32 %30, %48
  br i1 %49, label %176, label %50

50:                                               ; preds = %47
  %51 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %3, i32 %37), !nosanitize !46
  %52 = extractvalue { i32, i1 } %51, 1, !nosanitize !46
  br i1 %52, label %53, label %54, !prof !47, !nosanitize !46

53:                                               ; preds = %50
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

54:                                               ; preds = %50
  %55 = extractvalue { i32, i1 } %51, 0, !nosanitize !46
  %56 = load ptr, ptr %8, align 8, !tbaa !37
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 %7
  %58 = zext i32 %55 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %57, i64 %58, i1 false)
  %59 = load i32, ptr %9, align 8, !tbaa !79
  %60 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %59, i32 %3), !nosanitize !46
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !46
  br i1 %61, label %62, label %63, !prof !47, !nosanitize !46

62:                                               ; preds = %54
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

63:                                               ; preds = %54
  %64 = extractvalue { i32, i1 } %60, 0, !nosanitize !46
  store i32 %64, ptr %9, align 8, !tbaa !79
  %65 = load i32, ptr %6, align 4, !tbaa !64
  %66 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %65, i32 %3), !nosanitize !46
  %67 = extractvalue { i32, i1 } %66, 1, !nosanitize !46
  br i1 %67, label %68, label %69, !prof !47, !nosanitize !46

68:                                               ; preds = %69, %63
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

69:                                               ; preds = %63
  %70 = extractvalue { i32, i1 } %66, 0, !nosanitize !46
  store i32 %70, ptr %6, align 4, !tbaa !64
  %71 = load i64, ptr %10, align 8, !tbaa !65
  %72 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %71, i64 %7), !nosanitize !46
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !46
  br i1 %73, label %68, label %74, !prof !47, !nosanitize !46

74:                                               ; preds = %69
  %75 = extractvalue { i64, i1 } %72, 0, !nosanitize !46
  store i64 %75, ptr %10, align 8, !tbaa !65
  %76 = load i32, ptr %11, align 4, !tbaa !67
  %77 = icmp ugt i32 %76, %70
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 %70, ptr %11, align 4, !tbaa !67
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i32, ptr %2, align 8, !tbaa !31
  %81 = load i32, ptr %12, align 4, !tbaa !34
  %82 = load ptr, ptr %13, align 8, !tbaa !39
  %83 = zext i32 %81 to i64
  %84 = getelementptr inbounds nuw [2 x i8], ptr %82, i64 %83
  %85 = icmp eq i32 %81, 0
  br i1 %85, label %112, label %86, !prof !47, !nosanitize !46

86:                                               ; preds = %79
  %87 = icmp ult i32 %81, 8
  br i1 %87, label %109, label %88

88:                                               ; preds = %86
  %89 = and i64 %83, 4294967288
  %90 = mul nsw i64 %89, -2
  %91 = getelementptr i8, ptr %84, i64 %90
  %92 = trunc nuw i64 %89 to i32
  %93 = sub i32 %81, %92
  %94 = insertelement <8 x i32> poison, i32 %80, i64 0
  %95 = shufflevector <8 x i32> %94, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %96

96:                                               ; preds = %96, %88
  %97 = phi i64 [ 0, %88 ], [ %105, %96 ]
  %98 = mul i64 %97, -2
  %99 = getelementptr i8, ptr %84, i64 %98
  %100 = getelementptr inbounds i8, ptr %99, i64 -16
  %101 = load <8 x i16>, ptr %100, align 2, !tbaa !53
  %102 = zext <8 x i16> %101 to <8 x i32>
  %103 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %102, <8 x i32> %95)
  %104 = trunc nuw <8 x i32> %103 to <8 x i16>
  store <8 x i16> %104, ptr %100, align 2, !tbaa !53
  %105 = add nuw i64 %97, 8
  %106 = icmp eq i64 %105, %89
  br i1 %106, label %107, label %96, !llvm.loop !80

107:                                              ; preds = %96
  %108 = icmp eq i64 %89, %83
  br i1 %108, label %128, label %109

109:                                              ; preds = %107, %86
  %110 = phi ptr [ %84, %86 ], [ %91, %107 ]
  %111 = phi i32 [ %81, %86 ], [ %93, %107 ]
  br label %118

112:                                              ; preds = %79
  %113 = getelementptr inbounds i8, ptr %84, i64 -2
  %114 = load i16, ptr %113, align 2, !tbaa !53
  %115 = zext i16 %114 to i32
  %116 = tail call i32 @llvm.usub.sat.i32(i32 %115, i32 %80)
  %117 = trunc nuw i32 %116 to i16
  store i16 %117, ptr %113, align 2, !tbaa !53
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

118:                                              ; preds = %118, %109
  %119 = phi ptr [ %121, %118 ], [ %110, %109 ]
  %120 = phi i32 [ %126, %118 ], [ %111, %109 ]
  %121 = getelementptr inbounds i8, ptr %119, i64 -2
  %122 = load i16, ptr %121, align 2, !tbaa !53
  %123 = zext i16 %122 to i32
  %124 = tail call i32 @llvm.usub.sat.i32(i32 %123, i32 %80)
  %125 = trunc nuw i32 %124 to i16
  store i16 %125, ptr %121, align 2, !tbaa !53
  %126 = add i32 %120, -1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %118, !llvm.loop !83

128:                                              ; preds = %118, %107
  %129 = icmp eq i32 %80, 0
  br i1 %129, label %130, label %131, !prof !47, !nosanitize !46

130:                                              ; preds = %128
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

131:                                              ; preds = %128
  %132 = load ptr, ptr %14, align 8, !tbaa !38
  %133 = zext i32 %80 to i64
  %134 = getelementptr inbounds nuw [2 x i8], ptr %132, i64 %133
  %135 = icmp ult i32 %80, 8
  br i1 %135, label %157, label %136

136:                                              ; preds = %131
  %137 = and i64 %133, 4294967288
  %138 = mul nsw i64 %137, -2
  %139 = getelementptr i8, ptr %134, i64 %138
  %140 = trunc nuw i64 %137 to i32
  %141 = sub i32 %80, %140
  %142 = insertelement <8 x i32> poison, i32 %80, i64 0
  %143 = shufflevector <8 x i32> %142, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %144

144:                                              ; preds = %144, %136
  %145 = phi i64 [ 0, %136 ], [ %153, %144 ]
  %146 = mul i64 %145, -2
  %147 = getelementptr i8, ptr %134, i64 %146
  %148 = getelementptr inbounds i8, ptr %147, i64 -16
  %149 = load <8 x i16>, ptr %148, align 2, !tbaa !53
  %150 = zext <8 x i16> %149 to <8 x i32>
  %151 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %150, <8 x i32> %143)
  %152 = trunc nuw <8 x i32> %151 to <8 x i16>
  store <8 x i16> %152, ptr %148, align 2, !tbaa !53
  %153 = add nuw i64 %145, 8
  %154 = icmp eq i64 %153, %137
  br i1 %154, label %155, label %144, !llvm.loop !84

155:                                              ; preds = %144
  %156 = icmp eq i64 %137, %133
  br i1 %156, label %170, label %157

157:                                              ; preds = %155, %131
  %158 = phi ptr [ %134, %131 ], [ %139, %155 ]
  %159 = phi i32 [ %80, %131 ], [ %141, %155 ]
  br label %160

160:                                              ; preds = %160, %157
  %161 = phi ptr [ %163, %160 ], [ %158, %157 ]
  %162 = phi i32 [ %168, %160 ], [ %159, %157 ]
  %163 = getelementptr inbounds i8, ptr %161, i64 -2
  %164 = load i16, ptr %163, align 2, !tbaa !53
  %165 = zext i16 %164 to i32
  %166 = tail call i32 @llvm.usub.sat.i32(i32 %165, i32 %80)
  %167 = trunc nuw i32 %166 to i16
  store i16 %167, ptr %163, align 2, !tbaa !53
  %168 = add i32 %162, -1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %160, !llvm.loop !85

170:                                              ; preds = %160, %155
  store i32 1, ptr %15, align 8, !tbaa !54
  %171 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %37, i32 %3), !nosanitize !46
  %172 = extractvalue { i32, i1 } %171, 1, !nosanitize !46
  br i1 %172, label %173, label %174, !prof !47, !nosanitize !46

173:                                              ; preds = %170
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

174:                                              ; preds = %170
  %175 = extractvalue { i32, i1 } %171, 0, !nosanitize !46
  br label %176

176:                                              ; preds = %174, %47
  %177 = phi i32 [ %70, %174 ], [ %30, %47 ]
  %178 = phi i32 [ %175, %174 ], [ %37, %47 ]
  %179 = load ptr, ptr %0, align 8, !tbaa !19
  %180 = getelementptr inbounds nuw i8, ptr %179, i64 8
  %181 = load i32, ptr %180, align 8, !tbaa !73
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %307, label %183

183:                                              ; preds = %176
  %184 = load ptr, ptr %8, align 8, !tbaa !37
  %185 = zext i32 %177 to i64
  %186 = getelementptr inbounds nuw i8, ptr %184, i64 %185
  %187 = load i32, ptr %5, align 4, !tbaa !66
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds nuw i8, ptr %186, i64 %188
  %190 = tail call i32 @llvm.umin.i32(i32 %181, i32 %178)
  %191 = icmp eq i32 %178, 0
  br i1 %191, label %223, label %192

192:                                              ; preds = %183
  %193 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %181, i32 %190), !nosanitize !46
  %194 = extractvalue { i32, i1 } %193, 1, !nosanitize !46
  br i1 %194, label %195, label %196, !prof !47, !nosanitize !46

195:                                              ; preds = %192
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

196:                                              ; preds = %192
  %197 = extractvalue { i32, i1 } %193, 0, !nosanitize !46
  store i32 %197, ptr %180, align 8, !tbaa !73
  %198 = load ptr, ptr %179, align 8, !tbaa !74
  %199 = zext i32 %190 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %189, ptr align 1 %198, i64 %199, i1 false)
  %200 = getelementptr inbounds nuw i8, ptr %179, i64 56
  %201 = load ptr, ptr %200, align 8, !tbaa !18
  %202 = getelementptr inbounds nuw i8, ptr %201, i64 48
  %203 = load i32, ptr %202, align 8, !tbaa !29
  switch i32 %203, label %212 [
    i32 1, label %204
    i32 2, label %208
  ]

204:                                              ; preds = %196
  %205 = getelementptr inbounds nuw i8, ptr %179, i64 96
  %206 = load i64, ptr %205, align 8, !tbaa !72
  %207 = tail call i64 @adler32(i64 noundef %206, ptr noundef %189, i32 noundef %190) #11
  store i64 %207, ptr %205, align 8, !tbaa !72
  br label %212

208:                                              ; preds = %196
  %209 = getelementptr inbounds nuw i8, ptr %179, i64 96
  %210 = load i64, ptr %209, align 8, !tbaa !72
  %211 = tail call i64 @crc32(i64 noundef %210, ptr noundef %189, i32 noundef %190) #11
  store i64 %211, ptr %209, align 8, !tbaa !72
  br label %212

212:                                              ; preds = %208, %204, %196
  %213 = load ptr, ptr %179, align 8, !tbaa !74
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 %199
  store ptr %214, ptr %179, align 8, !tbaa !74
  %215 = getelementptr inbounds nuw i8, ptr %179, i64 16
  %216 = load i64, ptr %215, align 8, !tbaa !86
  %217 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %216, i64 %199), !nosanitize !46
  %218 = extractvalue { i64, i1 } %217, 1, !nosanitize !46
  br i1 %218, label %219, label %220, !prof !47, !nosanitize !46

219:                                              ; preds = %212
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

220:                                              ; preds = %212
  %221 = extractvalue { i64, i1 } %217, 0, !nosanitize !46
  store i64 %221, ptr %215, align 8, !tbaa !86
  %222 = load i32, ptr %5, align 4, !tbaa !66
  br label %223

223:                                              ; preds = %220, %183
  %224 = phi i32 [ %187, %183 ], [ %222, %220 ]
  %225 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 %190), !nosanitize !46
  %226 = extractvalue { i32, i1 } %225, 1, !nosanitize !46
  br i1 %226, label %227, label %228, !prof !47, !nosanitize !46

227:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

228:                                              ; preds = %223
  %229 = extractvalue { i32, i1 } %225, 0, !nosanitize !46
  store i32 %229, ptr %5, align 4, !tbaa !66
  %230 = load i32, ptr %11, align 4, !tbaa !67
  %231 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %229, i32 %230), !nosanitize !46
  %232 = extractvalue { i32, i1 } %231, 1, !nosanitize !46
  br i1 %232, label %233, label %234, !prof !47, !nosanitize !46

233:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

234:                                              ; preds = %228
  %235 = extractvalue { i32, i1 } %231, 0, !nosanitize !46
  %236 = icmp ugt i32 %235, 2
  br i1 %236, label %237, label %300

237:                                              ; preds = %234
  %238 = load i32, ptr %6, align 4, !tbaa !64
  %239 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %238, i32 %230), !nosanitize !46
  %240 = extractvalue { i32, i1 } %239, 0, !nosanitize !46
  %241 = extractvalue { i32, i1 } %239, 1, !nosanitize !46
  br i1 %241, label %242, label %243, !prof !47, !nosanitize !46

242:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

243:                                              ; preds = %237
  %244 = load ptr, ptr %8, align 8, !tbaa !37
  %245 = zext i32 %240 to i64
  %246 = getelementptr inbounds nuw i8, ptr %244, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !8
  %248 = zext i8 %247 to i32
  store i32 %248, ptr %16, align 8, !tbaa !71
  %249 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 1), !nosanitize !46
  %250 = extractvalue { i32, i1 } %249, 1, !nosanitize !46
  br i1 %250, label %251, label %252, !prof !47, !nosanitize !46

251:                                              ; preds = %243
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

252:                                              ; preds = %243
  %253 = extractvalue { i32, i1 } %249, 0, !nosanitize !46
  %254 = load i32, ptr %17, align 8, !tbaa !36
  %255 = shl i32 %248, %254
  %256 = zext i32 %253 to i64
  %257 = getelementptr inbounds nuw i8, ptr %244, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !8
  %259 = zext i8 %258 to i32
  %260 = xor i32 %255, %259
  %261 = load i32, ptr %18, align 4, !tbaa !35
  %262 = and i32 %260, %261
  store i32 %262, ptr %16, align 8, !tbaa !71
  br label %263

263:                                              ; preds = %296, %252
  %264 = phi i32 [ %262, %252 ], [ %281, %296 ]
  %265 = phi i32 [ %230, %252 ], [ %292, %296 ]
  %266 = phi i32 [ %240, %252 ], [ %297, %296 ]
  %267 = icmp eq i32 %265, 0
  br i1 %267, label %300, label %268

268:                                              ; preds = %263
  %269 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %266, i32 3), !nosanitize !46
  %270 = extractvalue { i32, i1 } %269, 1, !nosanitize !46
  br i1 %270, label %271, label %272, !prof !47, !nosanitize !46

271:                                              ; preds = %268
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

272:                                              ; preds = %268
  %273 = shl i32 %264, %254
  %274 = extractvalue { i32, i1 } %269, 0, !nosanitize !46
  %275 = add i32 %274, -1
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds nuw i8, ptr %244, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !8
  %279 = zext i8 %278 to i32
  %280 = xor i32 %273, %279
  %281 = and i32 %280, %261
  store i32 %281, ptr %16, align 8, !tbaa !71
  %282 = load ptr, ptr %13, align 8, !tbaa !39
  %283 = zext i32 %281 to i64
  %284 = getelementptr inbounds nuw [2 x i8], ptr %282, i64 %283
  %285 = load i16, ptr %284, align 2, !tbaa !53
  %286 = load ptr, ptr %14, align 8, !tbaa !38
  %287 = load i32, ptr %19, align 8, !tbaa !32
  %288 = and i32 %287, %266
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds nuw [2 x i8], ptr %286, i64 %289
  store i16 %285, ptr %290, align 2, !tbaa !53
  %291 = trunc i32 %266 to i16
  store i16 %291, ptr %284, align 2, !tbaa !53
  %292 = add i32 %265, -1
  store i32 %292, ptr %11, align 4, !tbaa !67
  %293 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %229, i32 %292), !nosanitize !46
  %294 = extractvalue { i32, i1 } %293, 1, !nosanitize !46
  br i1 %294, label %295, label %296, !prof !47, !nosanitize !46

295:                                              ; preds = %272
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

296:                                              ; preds = %272
  %297 = add nuw i32 %266, 1
  %298 = extractvalue { i32, i1 } %293, 0, !nosanitize !46
  %299 = icmp ult i32 %298, 3
  br i1 %299, label %300, label %263, !llvm.loop !87

300:                                              ; preds = %296, %263, %234
  %301 = icmp ult i32 %229, 262
  br i1 %301, label %302, label %307

302:                                              ; preds = %300
  %303 = load ptr, ptr %0, align 8, !tbaa !19
  %304 = getelementptr inbounds nuw i8, ptr %303, i64 8
  %305 = load i32, ptr %304, align 8, !tbaa !73
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %21, !llvm.loop !88

307:                                              ; preds = %302, %300, %176
  %308 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %309 = load i64, ptr %308, align 8, !tbaa !40
  %310 = load i64, ptr %4, align 8, !tbaa !52
  %311 = icmp ult i64 %309, %310
  br i1 %311, label %312, label %351

312:                                              ; preds = %307
  %313 = load i32, ptr %6, align 4, !tbaa !64
  %314 = zext i32 %313 to i64
  %315 = load i32, ptr %5, align 4, !tbaa !66
  %316 = zext i32 %315 to i64
  %317 = add nuw nsw i64 %316, %314
  %318 = icmp ult i64 %309, %317
  br i1 %318, label %319, label %329

319:                                              ; preds = %312
  %320 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %310, i64 %317), !nosanitize !46
  %321 = extractvalue { i64, i1 } %320, 1, !nosanitize !46
  br i1 %321, label %322, label %323, !prof !47, !nosanitize !46

322:                                              ; preds = %319
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

323:                                              ; preds = %319
  %324 = extractvalue { i64, i1 } %320, 0, !nosanitize !46
  %325 = tail call i64 @llvm.umin.i64(i64 %324, i64 258)
  %326 = load ptr, ptr %8, align 8, !tbaa !37
  %327 = getelementptr inbounds nuw i8, ptr %326, i64 %317
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %327, i8 0, i64 %325, i1 false)
  %328 = add nuw nsw i64 %325, %317
  br label %349

329:                                              ; preds = %312
  %330 = add nuw nsw i64 %317, 258
  %331 = icmp ult i64 %309, %330
  br i1 %331, label %332, label %351

332:                                              ; preds = %329
  %333 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %310, i64 %309), !nosanitize !46
  %334 = extractvalue { i64, i1 } %333, 1, !nosanitize !46
  br i1 %334, label %335, label %336, !prof !47, !nosanitize !46

335:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

336:                                              ; preds = %332
  %337 = sub nuw nsw i64 %330, %309
  %338 = extractvalue { i64, i1 } %333, 0, !nosanitize !46
  %339 = tail call i64 @llvm.umin.i64(i64 %337, i64 %338)
  %340 = load ptr, ptr %8, align 8, !tbaa !37
  %341 = getelementptr inbounds nuw i8, ptr %340, i64 %309
  %342 = and i64 %339, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %341, i8 0, i64 %342, i1 false)
  %343 = load i64, ptr %308, align 8, !tbaa !40
  %344 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %343, i64 %339), !nosanitize !46
  %345 = extractvalue { i64, i1 } %344, 1, !nosanitize !46
  br i1 %345, label %346, label %347, !prof !47, !nosanitize !46

346:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

347:                                              ; preds = %336
  %348 = extractvalue { i64, i1 } %344, 0, !nosanitize !46
  br label %349

349:                                              ; preds = %347, %323
  %350 = phi i64 [ %328, %323 ], [ %348, %347 ]
  store i64 %350, ptr %308, align 8, !tbaa !40
  br label %351

351:                                              ; preds = %349, %329, %307
  ret void
}

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
  %25 = load i32, ptr %24, align 4, !tbaa !64
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %27 = load i32, ptr %26, align 4, !tbaa !66
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %25, i32 %27), !nosanitize !46
  %29 = extractvalue { i32, i1 } %28, 1, !nosanitize !46
  br i1 %29, label %30, label %31, !prof !47, !nosanitize !46

30:                                               ; preds = %23
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

31:                                               ; preds = %23
  %32 = extractvalue { i32, i1 } %28, 0, !nosanitize !46
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %34 = load i32, ptr %33, align 8, !tbaa !31
  %35 = tail call i32 @llvm.umin.i32(i32 %32, i32 %34)
  %36 = icmp ne ptr %1, null
  %37 = icmp ne i32 %35, 0
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %41 = load ptr, ptr %40, align 8, !tbaa !37
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
  store i64 0, ptr %23, align 8, !tbaa !86
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !89
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %25, align 8, !tbaa !90
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %27, ptr %28, align 8, !tbaa !91
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %30 = load i32, ptr %29, align 8, !tbaa !29
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !46
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !46
  br i1 %34, label %35, label %36, !prof !47, !nosanitize !46

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !46
  unreachable, !nosanitize !46

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !46
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
  store i64 %47, ptr %48, align 8, !tbaa !72
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !92
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
  store ptr %1, ptr %27, align 8, !tbaa !93
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
  %27 = load i32, ptr %26, align 4, !tbaa !94
  store i32 %27, ptr %2, align 4, !tbaa !4
  br label %28

28:                                               ; preds = %25, %23
  %29 = icmp eq ptr %1, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %32 = load i64, ptr %31, align 8, !tbaa !90
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
  %26 = load i32, ptr %25, align 8, !tbaa !95
  store i32 %26, ptr %1, align 4, !tbaa !4
  br label %27

27:                                               ; preds = %24, %22, %19, %16, %12, %8, %4, %2
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
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !91
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
  %38 = load i32, ptr %33, align 4, !tbaa !94
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %38), !nosanitize !46
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !46
  br i1 %40, label %41, label %42, !prof !47, !nosanitize !46

41:                                               ; preds = %58, %42, %35
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !46
  unreachable, !nosanitize !46

42:                                               ; preds = %35
  %43 = extractvalue { i32, i1 } %39, 0, !nosanitize !46
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %36)
  %45 = shl nuw i32 1, %44
  %46 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %45, i32 -1)
  %47 = extractvalue { i32, i1 } %46, 1, !nosanitize !46
  br i1 %47, label %41, label %48, !prof !47, !nosanitize !46

48:                                               ; preds = %42
  %49 = extractvalue { i32, i1 } %46, 0, !nosanitize !46
  %50 = and i32 %49, %37
  %51 = shl i32 %50, %38
  %52 = load i16, ptr %34, align 8, !tbaa !96
  %53 = trunc i32 %51 to i16
  %54 = or i16 %52, %53
  store i16 %54, ptr %34, align 8, !tbaa !96
  %55 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 %44), !nosanitize !46
  %56 = extractvalue { i32, i1 } %55, 1, !nosanitize !46
  br i1 %56, label %57, label %58, !prof !47, !nosanitize !46

57:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !46
  unreachable, !nosanitize !46

58:                                               ; preds = %48
  %59 = extractvalue { i32, i1 } %55, 0, !nosanitize !46
  store i32 %59, ptr %33, align 4, !tbaa !94
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #11
  %60 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %36, i32 %44), !nosanitize !46
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !46
  br i1 %61, label %41, label %62, !prof !47, !nosanitize !46

62:                                               ; preds = %58
  %63 = extractvalue { i32, i1 } %60, 0, !nosanitize !46
  %64 = ashr i32 %37, %44
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %66, label %35, !llvm.loop !97

66:                                               ; preds = %62, %25, %23, %20, %17, %13, %9, %5, %3
  %67 = phi i32 [ -5, %23 ], [ -2, %13 ], [ -5, %25 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ 0, %62 ]
  ret i32 %67
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %119, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %119, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %119, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %119, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %119

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %119 [
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
  br i1 %28, label %119, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 196
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 200
  %32 = load i32, ptr %31, align 8, !tbaa !50
  %33 = icmp eq i32 %2, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4, !tbaa !49
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8, !tbaa !98
  %40 = zext nneg i32 %25 to i64
  %41 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %43 = load ptr, ptr %42, align 8, !tbaa !98
  %44 = icmp eq ptr %39, %43
  br i1 %44, label %76, label %45

45:                                               ; preds = %34, %29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %47 = load i32, ptr %46, align 4, !tbaa !92
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %76, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @deflate(ptr noundef nonnull %0, i32 noundef 5)
  %51 = icmp eq i32 %50, -2
  br i1 %51, label %119, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %54 = load i32, ptr %53, align 8, !tbaa !73
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %119

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %58 = load i32, ptr %57, align 4, !tbaa !64
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %61 = load i64, ptr %60, align 8, !tbaa !65
  %62 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %59, i64 %61), !nosanitize !46
  %63 = extractvalue { i64, i1 } %62, 1, !nosanitize !46
  br i1 %63, label %64, label %65, !prof !47, !nosanitize !46

64:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !46
  unreachable, !nosanitize !46

65:                                               ; preds = %56
  %66 = extractvalue { i64, i1 } %62, 0, !nosanitize !46
  %67 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %68 = load i32, ptr %67, align 4, !tbaa !66
  %69 = zext i32 %68 to i64
  %70 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %66, i64 %69), !nosanitize !46
  %71 = extractvalue { i64, i1 } %70, 1, !nosanitize !46
  br i1 %71, label %72, label %73, !prof !47, !nosanitize !46

72:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !46
  unreachable, !nosanitize !46

73:                                               ; preds = %65
  %74 = extractvalue { i64, i1 } %70, 0, !nosanitize !46
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %119

76:                                               ; preds = %73, %45, %34
  %77 = load i32, ptr %30, align 4, !tbaa !49
  %78 = icmp eq i32 %77, %25
  br i1 %78, label %118, label %79

79:                                               ; preds = %76
  %80 = icmp eq i32 %77, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %79
  %82 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %83 = load i32, ptr %82, align 8, !tbaa !99
  switch i32 %83, label %85 [
    i32 0, label %100
    i32 1, label %84
  ]

84:                                               ; preds = %81
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %99

85:                                               ; preds = %81
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %87 = load i32, ptr %86, align 4, !tbaa !34
  %88 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %87, i32 1), !nosanitize !46
  %89 = extractvalue { i32, i1 } %88, 1, !nosanitize !46
  br i1 %89, label %90, label %91, !prof !47, !nosanitize !46

90:                                               ; preds = %85
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

91:                                               ; preds = %85
  %92 = extractvalue { i32, i1 } %88, 0, !nosanitize !46
  %93 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %94 = load ptr, ptr %93, align 8, !tbaa !39
  %95 = zext i32 %92 to i64
  %96 = getelementptr inbounds nuw [2 x i8], ptr %94, i64 %95
  store i16 0, ptr %96, align 2, !tbaa !53
  %97 = shl nuw nsw i64 %95, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %94, i8 0, i64 %97, i1 false)
  %98 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %98, align 8, !tbaa !54
  br label %99

99:                                               ; preds = %91, %84
  store i32 0, ptr %82, align 8, !tbaa !99
  br label %100

100:                                              ; preds = %99, %81, %79
  store i32 %25, ptr %30, align 4, !tbaa !49
  %101 = zext nneg i32 %25 to i64
  %102 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %101
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 2
  %104 = load i16, ptr %103, align 2, !tbaa !55
  %105 = zext i16 %104 to i32
  %106 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %105, ptr %106, align 8, !tbaa !57
  %107 = load i16, ptr %102, align 16, !tbaa !58
  %108 = zext i16 %107 to i32
  %109 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %108, ptr %109, align 4, !tbaa !59
  %110 = getelementptr inbounds nuw i8, ptr %102, i64 4
  %111 = load i16, ptr %110, align 4, !tbaa !60
  %112 = zext i16 %111 to i32
  %113 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %112, ptr %113, align 8, !tbaa !61
  %114 = getelementptr inbounds nuw i8, ptr %102, i64 6
  %115 = load i16, ptr %114, align 2, !tbaa !62
  %116 = zext i16 %115 to i32
  %117 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %116, ptr %117, align 4, !tbaa !63
  br label %118

118:                                              ; preds = %100, %76
  store i32 %2, ptr %31, align 8, !tbaa !50
  br label %119

119:                                              ; preds = %118, %73, %52, %49, %23, %20, %17, %13, %9, %5, %3
  %120 = phi i32 [ -5, %73 ], [ -2, %13 ], [ 0, %118 ], [ -2, %23 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %49 ], [ -5, %52 ]
  ret i32 %120
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1204, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1204, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1204, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1204, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1204

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
  switch i32 %21, label %1204 [
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
  br i1 %23, label %1204, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !100
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %30 = load i32, ptr %29, align 8, !tbaa !73
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8, !tbaa !74
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32, %28
  %36 = icmp eq i32 %21, 666
  %37 = icmp ne i32 %1, 4
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %32, %24
  %40 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 32), align 16, !tbaa !44
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %40, ptr %41, align 8, !tbaa !9
  br label %1204

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !101
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !44
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !9
  br label %1204

49:                                               ; preds = %42
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 76
  %51 = load i32, ptr %50, align 4, !tbaa !92
  store i32 %1, ptr %50, align 4, !tbaa !92
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !90
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %100, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #11
  %56 = load i64, ptr %52, align 8, !tbaa !90
  %57 = load i32, ptr %43, align 8, !tbaa !101
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @llvm.umin.i64(i64 %56, i64 %58)
  %60 = trunc nuw i64 %59 to i32
  %61 = icmp eq i64 %59, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %25, align 8, !tbaa !100
  %64 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %65 = load ptr, ptr %64, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %65, i64 %59, i1 false)
  %66 = load ptr, ptr %25, align 8, !tbaa !100
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %59
  store ptr %67, ptr %25, align 8, !tbaa !100
  %68 = load ptr, ptr %64, align 8, !tbaa !91
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %59
  store ptr %69, ptr %64, align 8, !tbaa !91
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %71 = load i64, ptr %70, align 8, !tbaa !102
  %72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %71, i64 %59), !nosanitize !46
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !46
  br i1 %73, label %74, label %75, !prof !47, !nosanitize !46

74:                                               ; preds = %62
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

75:                                               ; preds = %62
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !46
  store i64 %76, ptr %70, align 8, !tbaa !102
  %77 = load i32, ptr %43, align 8, !tbaa !101
  %78 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %77, i32 %60), !nosanitize !46
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !46
  br i1 %79, label %80, label %81, !prof !47, !nosanitize !46

80:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

81:                                               ; preds = %75
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !46
  store i32 %82, ptr %43, align 8, !tbaa !101
  %83 = load i64, ptr %52, align 8, !tbaa !90
  %84 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 %59), !nosanitize !46
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !46
  br i1 %85, label %86, label %87, !prof !47, !nosanitize !46

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %84, 0, !nosanitize !46
  store i64 %88, ptr %52, align 8, !tbaa !90
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %92 = load ptr, ptr %91, align 8, !tbaa !42
  store ptr %92, ptr %64, align 8, !tbaa !91
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
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1204

100:                                              ; preds = %49
  br i1 %31, label %102, label %123

101:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !46
  unreachable, !nosanitize !46

102:                                              ; preds = %100
  %103 = shl nuw nsw i32 %1, 1
  %104 = icmp eq i32 %1, 5
  %105 = select i1 %104, i32 -9, i32 0
  %106 = add nsw i32 %105, %103
  %107 = add i32 %51, 1073741824
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %110, label %101, !prof !75, !nosanitize !46

109:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !46
  unreachable, !nosanitize !46

110:                                              ; preds = %102
  %111 = shl nsw i32 %51, 1
  %112 = icmp sgt i32 %51, 4
  %113 = select i1 %112, i32 9, i32 0
  %114 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %111, i32 %113), !nosanitize !46
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !46
  br i1 %115, label %109, label %116, !prof !47, !nosanitize !46

116:                                              ; preds = %110
  %117 = extractvalue { i32, i1 } %114, 0, !nosanitize !46
  %118 = icmp sle i32 %106, %117
  %119 = and i1 %37, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !44
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %121, ptr %122, align 8, !tbaa !9
  br label %1204

123:                                              ; preds = %116, %100, %97
  %124 = phi i64 [ %94, %97 ], [ 0, %100 ], [ 0, %116 ]
  %125 = phi i32 [ %98, %97 ], [ %21, %100 ], [ %21, %116 ]
  switch i32 %125, label %241 [
    i32 666, label %126
    i32 42, label %132
  ]

126:                                              ; preds = %123
  %127 = load i32, ptr %29, align 8, !tbaa !73
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %984, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !44
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %130, ptr %131, align 8, !tbaa !9
  br label %1204

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
  %140 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 8), !nosanitize !46
  %141 = extractvalue { i32, i1 } %140, 1, !nosanitize !46
  br i1 %141, label %142, label %143, !prof !47, !nosanitize !46

142:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

143:                                              ; preds = %137
  %144 = extractvalue { i32, i1 } %140, 0, !nosanitize !46
  %145 = shl i32 %144, 12
  %146 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %147 = load i32, ptr %146, align 8, !tbaa !50
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %158, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %151 = load i32, ptr %150, align 4, !tbaa !49
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
  %162 = load i32, ptr %160, align 4, !tbaa !64
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i32 2048, i32 2080
  %165 = or disjoint i32 %164, %161
  %166 = urem i32 %165, 31
  %167 = or disjoint i32 %166, %165
  %168 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 1), !nosanitize !46
  %169 = extractvalue { i64, i1 } %168, 1, !nosanitize !46
  br i1 %169, label %170, label %171, !prof !47, !nosanitize !46

170:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

171:                                              ; preds = %158
  %172 = extractvalue { i64, i1 } %168, 0, !nosanitize !46
  %173 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %174 = load ptr, ptr %173, align 8, !tbaa !42
  %175 = lshr i32 %165, 8
  %176 = trunc i32 %175 to i8
  store i64 %172, ptr %52, align 8, !tbaa !90
  %177 = getelementptr inbounds nuw i8, ptr %174, i64 %124
  store i8 %176, ptr %177, align 1, !tbaa !8
  %178 = load i64, ptr %52, align 8, !tbaa !90
  %179 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %178, i64 1), !nosanitize !46
  %180 = extractvalue { i64, i1 } %179, 1, !nosanitize !46
  br i1 %180, label %181, label %182, !prof !47, !nosanitize !46

181:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

182:                                              ; preds = %171
  %183 = extractvalue { i64, i1 } %179, 0, !nosanitize !46
  %184 = load ptr, ptr %173, align 8, !tbaa !42
  %185 = trunc i32 %167 to i8
  %186 = xor i8 %185, 31
  store i64 %183, ptr %52, align 8, !tbaa !90
  %187 = getelementptr inbounds nuw i8, ptr %184, i64 %178
  store i8 %186, ptr %187, align 1, !tbaa !8
  %188 = load i32, ptr %160, align 4, !tbaa !64
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %233, label %190

190:                                              ; preds = %182
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %192 = load i64, ptr %191, align 8, !tbaa !72
  %193 = lshr i64 %192, 16
  %194 = load i64, ptr %52, align 8, !tbaa !90
  %195 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %194, i64 1), !nosanitize !46
  %196 = extractvalue { i64, i1 } %195, 1, !nosanitize !46
  br i1 %196, label %197, label %198, !prof !47, !nosanitize !46

197:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

198:                                              ; preds = %190
  %199 = extractvalue { i64, i1 } %195, 0, !nosanitize !46
  %200 = load ptr, ptr %173, align 8, !tbaa !42
  %201 = lshr i64 %192, 24
  %202 = trunc i64 %201 to i8
  store i64 %199, ptr %52, align 8, !tbaa !90
  %203 = getelementptr inbounds nuw i8, ptr %200, i64 %194
  store i8 %202, ptr %203, align 1, !tbaa !8
  %204 = load i64, ptr %52, align 8, !tbaa !90
  %205 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 1), !nosanitize !46
  %206 = extractvalue { i64, i1 } %205, 1, !nosanitize !46
  br i1 %206, label %207, label %208, !prof !47, !nosanitize !46

207:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

208:                                              ; preds = %198
  %209 = extractvalue { i64, i1 } %205, 0, !nosanitize !46
  %210 = load ptr, ptr %173, align 8, !tbaa !42
  %211 = trunc i64 %193 to i8
  store i64 %209, ptr %52, align 8, !tbaa !90
  %212 = getelementptr inbounds nuw i8, ptr %210, i64 %204
  store i8 %211, ptr %212, align 1, !tbaa !8
  %213 = load i64, ptr %191, align 8, !tbaa !72
  %214 = trunc i64 %213 to i8
  %215 = load i64, ptr %52, align 8, !tbaa !90
  %216 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %215, i64 1), !nosanitize !46
  %217 = extractvalue { i64, i1 } %216, 1, !nosanitize !46
  br i1 %217, label %218, label %219, !prof !47, !nosanitize !46

218:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

219:                                              ; preds = %208
  %220 = extractvalue { i64, i1 } %216, 0, !nosanitize !46
  %221 = load ptr, ptr %173, align 8, !tbaa !42
  %222 = lshr i64 %213, 8
  %223 = trunc i64 %222 to i8
  store i64 %220, ptr %52, align 8, !tbaa !90
  %224 = getelementptr inbounds nuw i8, ptr %221, i64 %215
  store i8 %223, ptr %224, align 1, !tbaa !8
  %225 = load i64, ptr %52, align 8, !tbaa !90
  %226 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %225, i64 1), !nosanitize !46
  %227 = extractvalue { i64, i1 } %226, 1, !nosanitize !46
  br i1 %227, label %228, label %229, !prof !47, !nosanitize !46

228:                                              ; preds = %219
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

229:                                              ; preds = %219
  %230 = extractvalue { i64, i1 } %226, 0, !nosanitize !46
  %231 = load ptr, ptr %173, align 8, !tbaa !42
  store i64 %230, ptr %52, align 8, !tbaa !90
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 %225
  store i8 %214, ptr %232, align 1, !tbaa !8
  br label %233

233:                                              ; preds = %229, %182
  %234 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %234, ptr %235, align 8, !tbaa !72
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %236 = load i64, ptr %52, align 8, !tbaa !90
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32, ptr %20, align 8, !tbaa !28
  br label %241

240:                                              ; preds = %233
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1204

241:                                              ; preds = %238, %123
  %242 = phi i32 [ %239, %238 ], [ %125, %123 ]
  %243 = icmp eq i32 %242, 57
  br i1 %243, label %244, label %503

244:                                              ; preds = %241
  %245 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %245, ptr %246, align 8, !tbaa !72
  %247 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %248 = load i64, ptr %52, align 8, !tbaa !90
  %249 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %248, i64 1), !nosanitize !46
  %250 = extractvalue { i64, i1 } %249, 1, !nosanitize !46
  br i1 %250, label %251, label %252, !prof !47, !nosanitize !46

251:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

252:                                              ; preds = %244
  %253 = extractvalue { i64, i1 } %249, 0, !nosanitize !46
  %254 = load ptr, ptr %247, align 8, !tbaa !42
  store i64 %253, ptr %52, align 8, !tbaa !90
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 %248
  store i8 31, ptr %255, align 1, !tbaa !8
  %256 = load i64, ptr %52, align 8, !tbaa !90
  %257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %256, i64 1), !nosanitize !46
  %258 = extractvalue { i64, i1 } %257, 1, !nosanitize !46
  br i1 %258, label %259, label %260, !prof !47, !nosanitize !46

259:                                              ; preds = %252
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

260:                                              ; preds = %252
  %261 = extractvalue { i64, i1 } %257, 0, !nosanitize !46
  %262 = load ptr, ptr %247, align 8, !tbaa !42
  store i64 %261, ptr %52, align 8, !tbaa !90
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 %256
  store i8 -117, ptr %263, align 1, !tbaa !8
  %264 = load i64, ptr %52, align 8, !tbaa !90
  %265 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %264, i64 1), !nosanitize !46
  %266 = extractvalue { i64, i1 } %265, 1, !nosanitize !46
  br i1 %266, label %267, label %268, !prof !47, !nosanitize !46

267:                                              ; preds = %260
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

268:                                              ; preds = %260
  %269 = extractvalue { i64, i1 } %265, 0, !nosanitize !46
  %270 = load ptr, ptr %247, align 8, !tbaa !42
  store i64 %269, ptr %52, align 8, !tbaa !90
  %271 = getelementptr inbounds nuw i8, ptr %270, i64 %264
  store i8 8, ptr %271, align 1, !tbaa !8
  %272 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %273 = load ptr, ptr %272, align 8, !tbaa !93
  %274 = icmp eq ptr %273, null
  %275 = load i64, ptr %52, align 8, !tbaa !90
  %276 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %275, i64 1), !nosanitize !46
  %277 = extractvalue { i64, i1 } %276, 1, !nosanitize !46
  br i1 %274, label %278, label %347

278:                                              ; preds = %268
  br i1 %277, label %279, label %280, !prof !47, !nosanitize !46

279:                                              ; preds = %278
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

280:                                              ; preds = %278
  %281 = extractvalue { i64, i1 } %276, 0, !nosanitize !46
  %282 = load ptr, ptr %247, align 8, !tbaa !42
  store i64 %281, ptr %52, align 8, !tbaa !90
  %283 = getelementptr inbounds nuw i8, ptr %282, i64 %275
  store i8 0, ptr %283, align 1, !tbaa !8
  %284 = load i64, ptr %52, align 8, !tbaa !90
  %285 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %284, i64 1), !nosanitize !46
  %286 = extractvalue { i64, i1 } %285, 1, !nosanitize !46
  br i1 %286, label %287, label %288, !prof !47, !nosanitize !46

287:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

288:                                              ; preds = %280
  %289 = extractvalue { i64, i1 } %285, 0, !nosanitize !46
  %290 = load ptr, ptr %247, align 8, !tbaa !42
  store i64 %289, ptr %52, align 8, !tbaa !90
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 %284
  store i8 0, ptr %291, align 1, !tbaa !8
  %292 = load i64, ptr %52, align 8, !tbaa !90
  %293 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %292, i64 1), !nosanitize !46
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !46
  br i1 %294, label %295, label %296, !prof !47, !nosanitize !46

295:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

296:                                              ; preds = %288
  %297 = extractvalue { i64, i1 } %293, 0, !nosanitize !46
  %298 = load ptr, ptr %247, align 8, !tbaa !42
  store i64 %297, ptr %52, align 8, !tbaa !90
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 %292
  store i8 0, ptr %299, align 1, !tbaa !8
  %300 = load i64, ptr %52, align 8, !tbaa !90
  %301 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %300, i64 1), !nosanitize !46
  %302 = extractvalue { i64, i1 } %301, 1, !nosanitize !46
  br i1 %302, label %303, label %304, !prof !47, !nosanitize !46

303:                                              ; preds = %296
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

304:                                              ; preds = %296
  %305 = extractvalue { i64, i1 } %301, 0, !nosanitize !46
  %306 = load ptr, ptr %247, align 8, !tbaa !42
  store i64 %305, ptr %52, align 8, !tbaa !90
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 %300
  store i8 0, ptr %307, align 1, !tbaa !8
  %308 = load i64, ptr %52, align 8, !tbaa !90
  %309 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %308, i64 1), !nosanitize !46
  %310 = extractvalue { i64, i1 } %309, 1, !nosanitize !46
  br i1 %310, label %311, label %312, !prof !47, !nosanitize !46

311:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

312:                                              ; preds = %304
  %313 = extractvalue { i64, i1 } %309, 0, !nosanitize !46
  %314 = load ptr, ptr %247, align 8, !tbaa !42
  store i64 %313, ptr %52, align 8, !tbaa !90
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 %308
  store i8 0, ptr %315, align 1, !tbaa !8
  %316 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %317 = load i32, ptr %316, align 4, !tbaa !49
  %318 = icmp eq i32 %317, 9
  br i1 %318, label %326, label %319

319:                                              ; preds = %312
  %320 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %321 = load i32, ptr %320, align 8, !tbaa !50
  %322 = icmp sgt i32 %321, 1
  %323 = icmp slt i32 %317, 2
  %324 = or i1 %323, %322
  %325 = select i1 %324, i8 4, i8 0
  br label %326

326:                                              ; preds = %319, %312
  %327 = phi i8 [ %325, %319 ], [ 2, %312 ]
  %328 = load i64, ptr %52, align 8, !tbaa !90
  %329 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %328, i64 1), !nosanitize !46
  %330 = extractvalue { i64, i1 } %329, 1, !nosanitize !46
  br i1 %330, label %331, label %332, !prof !47, !nosanitize !46

331:                                              ; preds = %326
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

332:                                              ; preds = %326
  %333 = extractvalue { i64, i1 } %329, 0, !nosanitize !46
  %334 = load ptr, ptr %247, align 8, !tbaa !42
  store i64 %333, ptr %52, align 8, !tbaa !90
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 %328
  store i8 %327, ptr %335, align 1, !tbaa !8
  %336 = load i64, ptr %52, align 8, !tbaa !90
  %337 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %336, i64 1), !nosanitize !46
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !46
  br i1 %338, label %339, label %340, !prof !47, !nosanitize !46

339:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

340:                                              ; preds = %332
  %341 = extractvalue { i64, i1 } %337, 0, !nosanitize !46
  %342 = load ptr, ptr %247, align 8, !tbaa !42
  store i64 %341, ptr %52, align 8, !tbaa !90
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 %336
  store i8 3, ptr %343, align 1, !tbaa !8
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %344 = load i64, ptr %52, align 8, !tbaa !90
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %501, label %346

346:                                              ; preds = %340
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1204

347:                                              ; preds = %268
  br i1 %277, label %348, label %349, !prof !47, !nosanitize !46

348:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

349:                                              ; preds = %347
  %350 = extractvalue { i64, i1 } %276, 0, !nosanitize !46
  %351 = load ptr, ptr %247, align 8, !tbaa !42
  %352 = getelementptr inbounds nuw i8, ptr %273, i64 56
  %353 = load ptr, ptr %352, align 8, !tbaa !103
  %354 = icmp eq ptr %353, null
  %355 = getelementptr inbounds nuw i8, ptr %273, i64 40
  %356 = load ptr, ptr %355, align 8, !tbaa !105
  %357 = icmp eq ptr %356, null
  %358 = getelementptr inbounds nuw i8, ptr %273, i64 24
  %359 = load ptr, ptr %358, align 8, !tbaa !106
  %360 = icmp eq ptr %359, null
  %361 = load i32, ptr %273, align 8, !tbaa !107
  %362 = icmp ne i32 %361, 0
  %363 = getelementptr inbounds nuw i8, ptr %273, i64 68
  %364 = load i32, ptr %363, align 4, !tbaa !108
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
  store i64 %350, ptr %52, align 8, !tbaa !90
  %375 = getelementptr inbounds nuw i8, ptr %351, i64 %275
  store i8 %374, ptr %375, align 1, !tbaa !8
  %376 = load i64, ptr %52, align 8, !tbaa !90
  %377 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %376, i64 1), !nosanitize !46
  %378 = extractvalue { i64, i1 } %377, 1, !nosanitize !46
  br i1 %378, label %379, label %380, !prof !47, !nosanitize !46

379:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

380:                                              ; preds = %349
  %381 = extractvalue { i64, i1 } %377, 0, !nosanitize !46
  %382 = load ptr, ptr %247, align 8, !tbaa !42
  %383 = load ptr, ptr %272, align 8, !tbaa !93
  %384 = getelementptr inbounds nuw i8, ptr %383, i64 8
  %385 = load i64, ptr %384, align 8, !tbaa !109
  %386 = trunc i64 %385 to i8
  store i64 %381, ptr %52, align 8, !tbaa !90
  %387 = getelementptr inbounds nuw i8, ptr %382, i64 %376
  store i8 %386, ptr %387, align 1, !tbaa !8
  %388 = load i64, ptr %52, align 8, !tbaa !90
  %389 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %388, i64 1), !nosanitize !46
  %390 = extractvalue { i64, i1 } %389, 1, !nosanitize !46
  br i1 %390, label %391, label %392, !prof !47, !nosanitize !46

391:                                              ; preds = %380
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

392:                                              ; preds = %380
  %393 = extractvalue { i64, i1 } %389, 0, !nosanitize !46
  %394 = load ptr, ptr %247, align 8, !tbaa !42
  %395 = load ptr, ptr %272, align 8, !tbaa !93
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 8
  %397 = load i64, ptr %396, align 8, !tbaa !109
  %398 = lshr i64 %397, 8
  %399 = trunc i64 %398 to i8
  store i64 %393, ptr %52, align 8, !tbaa !90
  %400 = getelementptr inbounds nuw i8, ptr %394, i64 %388
  store i8 %399, ptr %400, align 1, !tbaa !8
  %401 = load i64, ptr %52, align 8, !tbaa !90
  %402 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %401, i64 1), !nosanitize !46
  %403 = extractvalue { i64, i1 } %402, 1, !nosanitize !46
  br i1 %403, label %404, label %405, !prof !47, !nosanitize !46

404:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

405:                                              ; preds = %392
  %406 = extractvalue { i64, i1 } %402, 0, !nosanitize !46
  %407 = load ptr, ptr %247, align 8, !tbaa !42
  %408 = load ptr, ptr %272, align 8, !tbaa !93
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 8
  %410 = load i64, ptr %409, align 8, !tbaa !109
  %411 = lshr i64 %410, 16
  %412 = trunc i64 %411 to i8
  store i64 %406, ptr %52, align 8, !tbaa !90
  %413 = getelementptr inbounds nuw i8, ptr %407, i64 %401
  store i8 %412, ptr %413, align 1, !tbaa !8
  %414 = load i64, ptr %52, align 8, !tbaa !90
  %415 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %414, i64 1), !nosanitize !46
  %416 = extractvalue { i64, i1 } %415, 1, !nosanitize !46
  br i1 %416, label %417, label %418, !prof !47, !nosanitize !46

417:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

418:                                              ; preds = %405
  %419 = extractvalue { i64, i1 } %415, 0, !nosanitize !46
  %420 = load ptr, ptr %247, align 8, !tbaa !42
  %421 = load ptr, ptr %272, align 8, !tbaa !93
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 8
  %423 = load i64, ptr %422, align 8, !tbaa !109
  %424 = lshr i64 %423, 24
  %425 = trunc i64 %424 to i8
  store i64 %419, ptr %52, align 8, !tbaa !90
  %426 = getelementptr inbounds nuw i8, ptr %420, i64 %414
  store i8 %425, ptr %426, align 1, !tbaa !8
  %427 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %428 = load i32, ptr %427, align 4, !tbaa !49
  %429 = icmp eq i32 %428, 9
  br i1 %429, label %437, label %430

430:                                              ; preds = %418
  %431 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %432 = load i32, ptr %431, align 8, !tbaa !50
  %433 = icmp sgt i32 %432, 1
  %434 = icmp slt i32 %428, 2
  %435 = or i1 %434, %433
  %436 = select i1 %435, i8 4, i8 0
  br label %437

437:                                              ; preds = %430, %418
  %438 = phi i8 [ %436, %430 ], [ 2, %418 ]
  %439 = load i64, ptr %52, align 8, !tbaa !90
  %440 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %439, i64 1), !nosanitize !46
  %441 = extractvalue { i64, i1 } %440, 1, !nosanitize !46
  br i1 %441, label %442, label %443, !prof !47, !nosanitize !46

442:                                              ; preds = %437
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

443:                                              ; preds = %437
  %444 = extractvalue { i64, i1 } %440, 0, !nosanitize !46
  %445 = load ptr, ptr %247, align 8, !tbaa !42
  store i64 %444, ptr %52, align 8, !tbaa !90
  %446 = getelementptr inbounds nuw i8, ptr %445, i64 %439
  store i8 %438, ptr %446, align 1, !tbaa !8
  %447 = load i64, ptr %52, align 8, !tbaa !90
  %448 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %447, i64 1), !nosanitize !46
  %449 = extractvalue { i64, i1 } %448, 1, !nosanitize !46
  br i1 %449, label %450, label %451, !prof !47, !nosanitize !46

450:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

451:                                              ; preds = %443
  %452 = extractvalue { i64, i1 } %448, 0, !nosanitize !46
  %453 = load ptr, ptr %247, align 8, !tbaa !42
  %454 = load ptr, ptr %272, align 8, !tbaa !93
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 20
  %456 = load i32, ptr %455, align 4, !tbaa !110
  %457 = trunc i32 %456 to i8
  store i64 %452, ptr %52, align 8, !tbaa !90
  %458 = getelementptr inbounds nuw i8, ptr %453, i64 %447
  store i8 %457, ptr %458, align 1, !tbaa !8
  %459 = load ptr, ptr %272, align 8, !tbaa !93
  %460 = getelementptr inbounds nuw i8, ptr %459, i64 24
  %461 = load ptr, ptr %460, align 8, !tbaa !106
  %462 = icmp eq ptr %461, null
  br i1 %462, label %489, label %463

463:                                              ; preds = %451
  %464 = load i64, ptr %52, align 8, !tbaa !90
  %465 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %464, i64 1), !nosanitize !46
  %466 = extractvalue { i64, i1 } %465, 1, !nosanitize !46
  br i1 %466, label %467, label %468, !prof !47, !nosanitize !46

467:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

468:                                              ; preds = %463
  %469 = extractvalue { i64, i1 } %465, 0, !nosanitize !46
  %470 = load ptr, ptr %247, align 8, !tbaa !42
  %471 = getelementptr inbounds nuw i8, ptr %459, i64 32
  %472 = load i32, ptr %471, align 8, !tbaa !111
  %473 = trunc i32 %472 to i8
  store i64 %469, ptr %52, align 8, !tbaa !90
  %474 = getelementptr inbounds nuw i8, ptr %470, i64 %464
  store i8 %473, ptr %474, align 1, !tbaa !8
  %475 = load i64, ptr %52, align 8, !tbaa !90
  %476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %475, i64 1), !nosanitize !46
  %477 = extractvalue { i64, i1 } %476, 1, !nosanitize !46
  br i1 %477, label %478, label %479, !prof !47, !nosanitize !46

478:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

479:                                              ; preds = %468
  %480 = extractvalue { i64, i1 } %476, 0, !nosanitize !46
  %481 = load ptr, ptr %247, align 8, !tbaa !42
  %482 = load ptr, ptr %272, align 8, !tbaa !93
  %483 = getelementptr inbounds nuw i8, ptr %482, i64 32
  %484 = load i32, ptr %483, align 8, !tbaa !111
  %485 = lshr i32 %484, 8
  %486 = trunc i32 %485 to i8
  store i64 %480, ptr %52, align 8, !tbaa !90
  %487 = getelementptr inbounds nuw i8, ptr %481, i64 %475
  store i8 %486, ptr %487, align 1, !tbaa !8
  %488 = load ptr, ptr %272, align 8, !tbaa !93
  br label %489

489:                                              ; preds = %479, %451
  %490 = phi ptr [ %488, %479 ], [ %459, %451 ]
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 68
  %492 = load i32, ptr %491, align 4, !tbaa !108
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %499, label %494

494:                                              ; preds = %489
  %495 = load i64, ptr %246, align 8, !tbaa !72
  %496 = load ptr, ptr %247, align 8, !tbaa !42
  %497 = load i64, ptr %52, align 8, !tbaa !90
  %498 = tail call i64 @crc32_z(i64 noundef %495, ptr noundef %496, i64 noundef %497) #11
  store i64 %498, ptr %246, align 8, !tbaa !72
  br label %499

499:                                              ; preds = %494, %489
  %500 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %500, align 8, !tbaa !112
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
  %507 = load ptr, ptr %506, align 8, !tbaa !93
  %508 = getelementptr inbounds nuw i8, ptr %507, i64 24
  %509 = load ptr, ptr %508, align 8, !tbaa !106
  %510 = icmp eq ptr %509, null
  br i1 %510, label %712, label %511

511:                                              ; preds = %505
  %512 = getelementptr inbounds nuw i8, ptr %507, i64 32
  %513 = load i32, ptr %512, align 8, !tbaa !111
  %514 = and i32 %513, 65535
  %515 = zext nneg i32 %514 to i64
  %516 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %517 = load i64, ptr %516, align 8, !tbaa !112
  %518 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %515, i64 %517), !nosanitize !46
  %519 = extractvalue { i64, i1 } %518, 1, !nosanitize !46
  br i1 %519, label %520, label %521, !prof !47, !nosanitize !46

520:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

521:                                              ; preds = %511
  %522 = load i64, ptr %52, align 8, !tbaa !90
  %523 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %524 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %526 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %527 = extractvalue { i64, i1 } %518, 0
  %528 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %522, i64 %527), !nosanitize !46
  %529 = extractvalue { i64, i1 } %528, 1, !nosanitize !46
  br i1 %529, label %602, label %530, !prof !47, !nosanitize !46

530:                                              ; preds = %521
  %531 = extractvalue { i64, i1 } %528, 0, !nosanitize !46
  %532 = load i64, ptr %523, align 8, !tbaa !43
  %533 = icmp ugt i64 %531, %532
  br i1 %533, label %534, label %685

534:                                              ; preds = %530
  %535 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %532, i64 %522), !nosanitize !46
  %536 = extractvalue { i64, i1 } %535, 0, !nosanitize !46
  %537 = extractvalue { i64, i1 } %535, 1, !nosanitize !46
  br i1 %537, label %608, label %538, !prof !47, !nosanitize !46

538:                                              ; preds = %534
  %539 = load ptr, ptr %524, align 8, !tbaa !42
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 %522
  %541 = getelementptr inbounds nuw i8, ptr %509, i64 %517
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %540, ptr nonnull align 1 %541, i64 %536, i1 false)
  %542 = load i64, ptr %523, align 8, !tbaa !43
  store i64 %542, ptr %52, align 8, !tbaa !90
  %543 = load ptr, ptr %506, align 8, !tbaa !93
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 68
  %545 = load i32, ptr %544, align 4, !tbaa !108
  %546 = icmp ne i32 %545, 0
  %547 = icmp ugt i64 %542, %522
  %548 = select i1 %546, i1 %547, i1 false
  br i1 %548, label %549, label %555

549:                                              ; preds = %538
  %550 = sub nuw i64 %542, %522
  %551 = load ptr, ptr %524, align 8, !tbaa !42
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 %522
  %553 = load i64, ptr %525, align 8, !tbaa !72
  %554 = tail call i64 @crc32_z(i64 noundef %553, ptr noundef %552, i64 noundef %550) #11
  store i64 %554, ptr %525, align 8, !tbaa !72
  br label %555

555:                                              ; preds = %549, %538
  %556 = load i64, ptr %516, align 8, !tbaa !112
  %557 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %556, i64 %536), !nosanitize !46
  %558 = extractvalue { i64, i1 } %557, 1, !nosanitize !46
  br i1 %558, label %631, label %559, !prof !47, !nosanitize !46

559:                                              ; preds = %555
  %560 = extractvalue { i64, i1 } %557, 0, !nosanitize !46
  store i64 %560, ptr %516, align 8, !tbaa !112
  %561 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %561) #11
  %562 = getelementptr inbounds nuw i8, ptr %561, i64 40
  %563 = load i64, ptr %562, align 8, !tbaa !90
  %564 = load i32, ptr %43, align 8, !tbaa !101
  %565 = zext i32 %564 to i64
  %566 = tail call i64 @llvm.umin.i64(i64 %563, i64 %565)
  %567 = trunc nuw i64 %566 to i32
  %568 = icmp eq i64 %566, 0
  br i1 %568, label %596, label %569

569:                                              ; preds = %559
  %570 = load ptr, ptr %25, align 8, !tbaa !100
  %571 = getelementptr inbounds nuw i8, ptr %561, i64 32
  %572 = load ptr, ptr %571, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %570, ptr align 1 %572, i64 %566, i1 false)
  %573 = load ptr, ptr %25, align 8, !tbaa !100
  %574 = getelementptr inbounds nuw i8, ptr %573, i64 %566
  store ptr %574, ptr %25, align 8, !tbaa !100
  %575 = load ptr, ptr %571, align 8, !tbaa !91
  %576 = getelementptr inbounds nuw i8, ptr %575, i64 %566
  store ptr %576, ptr %571, align 8, !tbaa !91
  %577 = load i64, ptr %526, align 8, !tbaa !102
  %578 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %577, i64 %566), !nosanitize !46
  %579 = extractvalue { i64, i1 } %578, 1, !nosanitize !46
  br i1 %579, label %653, label %580, !prof !47, !nosanitize !46

580:                                              ; preds = %569
  %581 = extractvalue { i64, i1 } %578, 0, !nosanitize !46
  store i64 %581, ptr %526, align 8, !tbaa !102
  %582 = load i32, ptr %43, align 8, !tbaa !101
  %583 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %582, i32 %567), !nosanitize !46
  %584 = extractvalue { i32, i1 } %583, 1, !nosanitize !46
  br i1 %584, label %659, label %585, !prof !47, !nosanitize !46

585:                                              ; preds = %580
  %586 = extractvalue { i32, i1 } %583, 0, !nosanitize !46
  store i32 %586, ptr %43, align 8, !tbaa !101
  %587 = load i64, ptr %562, align 8, !tbaa !90
  %588 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %587, i64 %566), !nosanitize !46
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !46
  br i1 %589, label %665, label %590, !prof !47, !nosanitize !46

590:                                              ; preds = %585
  %591 = extractvalue { i64, i1 } %588, 0, !nosanitize !46
  store i64 %591, ptr %562, align 8, !tbaa !90
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %593, label %596

593:                                              ; preds = %590
  %594 = getelementptr inbounds nuw i8, ptr %561, i64 16
  %595 = load ptr, ptr %594, align 8, !tbaa !42
  store ptr %595, ptr %571, align 8, !tbaa !91
  br label %596

596:                                              ; preds = %593, %590, %559
  %597 = load i64, ptr %52, align 8, !tbaa !90
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %599, label %675

599:                                              ; preds = %596
  %600 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %527, i64 %536), !nosanitize !46
  %601 = extractvalue { i64, i1 } %600, 1, !nosanitize !46
  br i1 %601, label %679, label %603, !prof !47, !nosanitize !46

602:                                              ; preds = %521
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

603:                                              ; preds = %676, %599
  %604 = phi { i64, i1 } [ %677, %676 ], [ %600, %599 ]
  %605 = extractvalue { i64, i1 } %604, 0
  %606 = load i64, ptr %523, align 8, !tbaa !43
  %607 = icmp ugt i64 %605, %606
  br i1 %607, label %609, label %680

608:                                              ; preds = %534
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

609:                                              ; preds = %603
  %610 = load ptr, ptr %524, align 8, !tbaa !42
  %611 = load ptr, ptr %506, align 8, !tbaa !93
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 24
  %613 = load ptr, ptr %612, align 8, !tbaa !106
  %614 = load i64, ptr %516, align 8, !tbaa !112
  %615 = getelementptr inbounds nuw i8, ptr %613, i64 %614
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %610, ptr align 1 %615, i64 %606, i1 false)
  %616 = load i64, ptr %523, align 8, !tbaa !43
  store i64 %616, ptr %52, align 8, !tbaa !90
  %617 = load ptr, ptr %506, align 8, !tbaa !93
  %618 = getelementptr inbounds nuw i8, ptr %617, i64 68
  %619 = load i32, ptr %618, align 4, !tbaa !108
  %620 = icmp ne i32 %619, 0
  %621 = icmp ne i64 %616, 0
  %622 = select i1 %620, i1 %621, i1 false
  br i1 %622, label %623, label %627

623:                                              ; preds = %609
  %624 = load ptr, ptr %524, align 8, !tbaa !42
  %625 = load i64, ptr %525, align 8, !tbaa !72
  %626 = tail call i64 @crc32_z(i64 noundef %625, ptr noundef %624, i64 noundef %616) #11
  store i64 %626, ptr %525, align 8, !tbaa !72
  br label %627

627:                                              ; preds = %623, %609
  %628 = load i64, ptr %516, align 8, !tbaa !112
  %629 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %628, i64 %606), !nosanitize !46
  %630 = extractvalue { i64, i1 } %629, 1, !nosanitize !46
  br i1 %630, label %631, label %632, !prof !47, !nosanitize !46

631:                                              ; preds = %627, %555
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

632:                                              ; preds = %627
  %633 = extractvalue { i64, i1 } %629, 0, !nosanitize !46
  store i64 %633, ptr %516, align 8, !tbaa !112
  %634 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %634) #11
  %635 = getelementptr inbounds nuw i8, ptr %634, i64 40
  %636 = load i64, ptr %635, align 8, !tbaa !90
  %637 = load i32, ptr %43, align 8, !tbaa !101
  %638 = zext i32 %637 to i64
  %639 = tail call i64 @llvm.umin.i64(i64 %636, i64 %638)
  %640 = trunc nuw i64 %639 to i32
  %641 = icmp eq i64 %639, 0
  br i1 %641, label %672, label %642

642:                                              ; preds = %632
  %643 = load ptr, ptr %25, align 8, !tbaa !100
  %644 = getelementptr inbounds nuw i8, ptr %634, i64 32
  %645 = load ptr, ptr %644, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %643, ptr align 1 %645, i64 %639, i1 false)
  %646 = load ptr, ptr %25, align 8, !tbaa !100
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 %639
  store ptr %647, ptr %25, align 8, !tbaa !100
  %648 = load ptr, ptr %644, align 8, !tbaa !91
  %649 = getelementptr inbounds nuw i8, ptr %648, i64 %639
  store ptr %649, ptr %644, align 8, !tbaa !91
  %650 = load i64, ptr %526, align 8, !tbaa !102
  %651 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %650, i64 %639), !nosanitize !46
  %652 = extractvalue { i64, i1 } %651, 1, !nosanitize !46
  br i1 %652, label %653, label %654, !prof !47, !nosanitize !46

653:                                              ; preds = %642, %569
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

654:                                              ; preds = %642
  %655 = extractvalue { i64, i1 } %651, 0, !nosanitize !46
  store i64 %655, ptr %526, align 8, !tbaa !102
  %656 = load i32, ptr %43, align 8, !tbaa !101
  %657 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %656, i32 %640), !nosanitize !46
  %658 = extractvalue { i32, i1 } %657, 1, !nosanitize !46
  br i1 %658, label %659, label %660, !prof !47, !nosanitize !46

659:                                              ; preds = %654, %580
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

660:                                              ; preds = %654
  %661 = extractvalue { i32, i1 } %657, 0, !nosanitize !46
  store i32 %661, ptr %43, align 8, !tbaa !101
  %662 = load i64, ptr %635, align 8, !tbaa !90
  %663 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %662, i64 %639), !nosanitize !46
  %664 = extractvalue { i64, i1 } %663, 1, !nosanitize !46
  br i1 %664, label %665, label %666, !prof !47, !nosanitize !46

665:                                              ; preds = %660, %585
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

666:                                              ; preds = %660
  %667 = extractvalue { i64, i1 } %663, 0, !nosanitize !46
  store i64 %667, ptr %635, align 8, !tbaa !90
  %668 = icmp eq i64 %667, 0
  br i1 %668, label %669, label %672

669:                                              ; preds = %666
  %670 = getelementptr inbounds nuw i8, ptr %634, i64 16
  %671 = load ptr, ptr %670, align 8, !tbaa !42
  store ptr %671, ptr %644, align 8, !tbaa !91
  br label %672

672:                                              ; preds = %669, %666, %632
  %673 = load i64, ptr %52, align 8, !tbaa !90
  %674 = icmp eq i64 %673, 0
  br i1 %674, label %676, label %675

675:                                              ; preds = %672, %596
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1204

676:                                              ; preds = %672
  %677 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %605, i64 %606), !nosanitize !46
  %678 = extractvalue { i64, i1 } %677, 1, !nosanitize !46
  br i1 %678, label %679, label %603, !prof !47, !llvm.loop !113, !nosanitize !46

679:                                              ; preds = %676, %599
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

680:                                              ; preds = %603
  %681 = load ptr, ptr %506, align 8, !tbaa !93
  %682 = getelementptr inbounds nuw i8, ptr %681, i64 24
  %683 = load ptr, ptr %682, align 8, !tbaa !106
  %684 = load i64, ptr %516, align 8, !tbaa !112
  br label %685

685:                                              ; preds = %680, %530
  %686 = phi i64 [ %517, %530 ], [ %684, %680 ]
  %687 = phi ptr [ %509, %530 ], [ %683, %680 ]
  %688 = phi i64 [ %522, %530 ], [ 0, %680 ]
  %689 = phi i64 [ %527, %530 ], [ %605, %680 ]
  %690 = load ptr, ptr %524, align 8, !tbaa !42
  %691 = getelementptr inbounds nuw i8, ptr %690, i64 %688
  %692 = getelementptr inbounds nuw i8, ptr %687, i64 %686
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %691, ptr align 1 %692, i64 %689, i1 false)
  %693 = load i64, ptr %52, align 8, !tbaa !90
  %694 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %693, i64 %689), !nosanitize !46
  %695 = extractvalue { i64, i1 } %694, 0, !nosanitize !46
  %696 = extractvalue { i64, i1 } %694, 1, !nosanitize !46
  br i1 %696, label %697, label %698, !prof !47, !nosanitize !46

697:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

698:                                              ; preds = %685
  store i64 %695, ptr %52, align 8, !tbaa !90
  %699 = load ptr, ptr %506, align 8, !tbaa !93
  %700 = getelementptr inbounds nuw i8, ptr %699, i64 68
  %701 = load i32, ptr %700, align 4, !tbaa !108
  %702 = icmp ne i32 %701, 0
  %703 = icmp ugt i64 %695, %688
  %704 = select i1 %702, i1 %703, i1 false
  br i1 %704, label %705, label %711

705:                                              ; preds = %698
  %706 = sub nuw i64 %695, %688
  %707 = load ptr, ptr %524, align 8, !tbaa !42
  %708 = getelementptr inbounds nuw i8, ptr %707, i64 %688
  %709 = load i64, ptr %525, align 8, !tbaa !72
  %710 = tail call i64 @crc32_z(i64 noundef %709, ptr noundef %708, i64 noundef %706) #11
  store i64 %710, ptr %525, align 8, !tbaa !72
  br label %711

711:                                              ; preds = %705, %698
  store i64 0, ptr %516, align 8, !tbaa !112
  br label %712

712:                                              ; preds = %711, %505
  store i32 73, ptr %20, align 8, !tbaa !28
  br label %713

713:                                              ; preds = %712, %503
  %714 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %715 = load ptr, ptr %714, align 8, !tbaa !93
  %716 = getelementptr inbounds nuw i8, ptr %715, i64 40
  %717 = load ptr, ptr %716, align 8, !tbaa !105
  %718 = icmp eq ptr %717, null
  br i1 %718, label %824, label %719

719:                                              ; preds = %713
  %720 = load i64, ptr %52, align 8, !tbaa !90
  %721 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %722 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %723 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %724 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %725 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %726

726:                                              ; preds = %802, %719
  %727 = phi i64 [ %720, %719 ], [ %789, %802 ]
  %728 = load i64, ptr %52, align 8, !tbaa !90
  %729 = load i64, ptr %721, align 8, !tbaa !43
  %730 = icmp eq i64 %728, %729
  br i1 %730, label %731, label %787

731:                                              ; preds = %726
  %732 = load ptr, ptr %714, align 8, !tbaa !93
  %733 = getelementptr inbounds nuw i8, ptr %732, i64 68
  %734 = load i32, ptr %733, align 4, !tbaa !108
  %735 = icmp ne i32 %734, 0
  %736 = icmp ugt i64 %728, %727
  %737 = select i1 %735, i1 %736, i1 false
  br i1 %737, label %738, label %744

738:                                              ; preds = %731
  %739 = sub nuw i64 %728, %727
  %740 = load ptr, ptr %722, align 8, !tbaa !42
  %741 = getelementptr inbounds nuw i8, ptr %740, i64 %727
  %742 = load i64, ptr %723, align 8, !tbaa !72
  %743 = tail call i64 @crc32_z(i64 noundef %742, ptr noundef %741, i64 noundef %739) #11
  store i64 %743, ptr %723, align 8, !tbaa !72
  br label %744

744:                                              ; preds = %738, %731
  %745 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %745) #11
  %746 = getelementptr inbounds nuw i8, ptr %745, i64 40
  %747 = load i64, ptr %746, align 8, !tbaa !90
  %748 = load i32, ptr %43, align 8, !tbaa !101
  %749 = zext i32 %748 to i64
  %750 = tail call i64 @llvm.umin.i64(i64 %747, i64 %749)
  %751 = trunc nuw i64 %750 to i32
  %752 = icmp eq i64 %750, 0
  br i1 %752, label %783, label %753

753:                                              ; preds = %744
  %754 = load ptr, ptr %25, align 8, !tbaa !100
  %755 = getelementptr inbounds nuw i8, ptr %745, i64 32
  %756 = load ptr, ptr %755, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %754, ptr align 1 %756, i64 %750, i1 false)
  %757 = load ptr, ptr %25, align 8, !tbaa !100
  %758 = getelementptr inbounds nuw i8, ptr %757, i64 %750
  store ptr %758, ptr %25, align 8, !tbaa !100
  %759 = load ptr, ptr %755, align 8, !tbaa !91
  %760 = getelementptr inbounds nuw i8, ptr %759, i64 %750
  store ptr %760, ptr %755, align 8, !tbaa !91
  %761 = load i64, ptr %724, align 8, !tbaa !102
  %762 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %761, i64 %750), !nosanitize !46
  %763 = extractvalue { i64, i1 } %762, 1, !nosanitize !46
  br i1 %763, label %764, label %765, !prof !47, !nosanitize !46

764:                                              ; preds = %753
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

765:                                              ; preds = %753
  %766 = extractvalue { i64, i1 } %762, 0, !nosanitize !46
  store i64 %766, ptr %724, align 8, !tbaa !102
  %767 = load i32, ptr %43, align 8, !tbaa !101
  %768 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %767, i32 %751), !nosanitize !46
  %769 = extractvalue { i32, i1 } %768, 1, !nosanitize !46
  br i1 %769, label %770, label %771, !prof !47, !nosanitize !46

770:                                              ; preds = %765
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

771:                                              ; preds = %765
  %772 = extractvalue { i32, i1 } %768, 0, !nosanitize !46
  store i32 %772, ptr %43, align 8, !tbaa !101
  %773 = load i64, ptr %746, align 8, !tbaa !90
  %774 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %773, i64 %750), !nosanitize !46
  %775 = extractvalue { i64, i1 } %774, 1, !nosanitize !46
  br i1 %775, label %776, label %777, !prof !47, !nosanitize !46

776:                                              ; preds = %771
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

777:                                              ; preds = %771
  %778 = extractvalue { i64, i1 } %774, 0, !nosanitize !46
  store i64 %778, ptr %746, align 8, !tbaa !90
  %779 = icmp eq i64 %778, 0
  br i1 %779, label %780, label %783

780:                                              ; preds = %777
  %781 = getelementptr inbounds nuw i8, ptr %745, i64 16
  %782 = load ptr, ptr %781, align 8, !tbaa !42
  store ptr %782, ptr %755, align 8, !tbaa !91
  br label %783

783:                                              ; preds = %780, %777, %744
  %784 = load i64, ptr %52, align 8, !tbaa !90
  %785 = icmp eq i64 %784, 0
  br i1 %785, label %787, label %786

786:                                              ; preds = %783
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1204

787:                                              ; preds = %783, %726
  %788 = phi i64 [ %728, %726 ], [ 0, %783 ]
  %789 = phi i64 [ %727, %726 ], [ 0, %783 ]
  %790 = load i64, ptr %725, align 8, !tbaa !112
  %791 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %790, i64 1), !nosanitize !46
  %792 = extractvalue { i64, i1 } %791, 1, !nosanitize !46
  br i1 %792, label %793, label %794, !prof !47, !nosanitize !46

793:                                              ; preds = %787
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

794:                                              ; preds = %787
  %795 = extractvalue { i64, i1 } %791, 0, !nosanitize !46
  %796 = load ptr, ptr %714, align 8, !tbaa !93
  %797 = getelementptr inbounds nuw i8, ptr %796, i64 40
  %798 = load ptr, ptr %797, align 8, !tbaa !105
  store i64 %795, ptr %725, align 8, !tbaa !112
  %799 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %788, i64 1), !nosanitize !46
  %800 = extractvalue { i64, i1 } %799, 1, !nosanitize !46
  br i1 %800, label %801, label %802, !prof !47, !nosanitize !46

801:                                              ; preds = %794
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

802:                                              ; preds = %794
  %803 = extractvalue { i64, i1 } %799, 0, !nosanitize !46
  %804 = load ptr, ptr %722, align 8, !tbaa !42
  %805 = getelementptr inbounds nuw i8, ptr %798, i64 %790
  %806 = load i8, ptr %805, align 1, !tbaa !8
  store i64 %803, ptr %52, align 8, !tbaa !90
  %807 = getelementptr inbounds nuw i8, ptr %804, i64 %788
  store i8 %806, ptr %807, align 1, !tbaa !8
  %808 = icmp eq i8 %806, 0
  br i1 %808, label %809, label %726, !llvm.loop !116

809:                                              ; preds = %802
  %810 = load ptr, ptr %714, align 8, !tbaa !93
  %811 = getelementptr inbounds nuw i8, ptr %810, i64 68
  %812 = load i32, ptr %811, align 4, !tbaa !108
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %823, label %814

814:                                              ; preds = %809
  %815 = load i64, ptr %52, align 8, !tbaa !90
  %816 = icmp ugt i64 %815, %789
  br i1 %816, label %817, label %823

817:                                              ; preds = %814
  %818 = sub nuw i64 %815, %789
  %819 = load ptr, ptr %722, align 8, !tbaa !42
  %820 = getelementptr inbounds nuw i8, ptr %819, i64 %789
  %821 = load i64, ptr %723, align 8, !tbaa !72
  %822 = tail call i64 @crc32_z(i64 noundef %821, ptr noundef %820, i64 noundef %818) #11
  store i64 %822, ptr %723, align 8, !tbaa !72
  br label %823

823:                                              ; preds = %817, %814, %809
  store i64 0, ptr %725, align 8, !tbaa !112
  br label %824

824:                                              ; preds = %823, %713
  store i32 91, ptr %20, align 8, !tbaa !28
  br label %825

825:                                              ; preds = %824, %503
  %826 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %827 = load ptr, ptr %826, align 8, !tbaa !93
  %828 = getelementptr inbounds nuw i8, ptr %827, i64 56
  %829 = load ptr, ptr %828, align 8, !tbaa !103
  %830 = icmp eq ptr %829, null
  br i1 %830, label %935, label %831

831:                                              ; preds = %825
  %832 = load i64, ptr %52, align 8, !tbaa !90
  %833 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %834 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %835 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %836 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %837 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %838

838:                                              ; preds = %914, %831
  %839 = phi i64 [ %832, %831 ], [ %901, %914 ]
  %840 = load i64, ptr %52, align 8, !tbaa !90
  %841 = load i64, ptr %833, align 8, !tbaa !43
  %842 = icmp eq i64 %840, %841
  br i1 %842, label %843, label %899

843:                                              ; preds = %838
  %844 = load ptr, ptr %826, align 8, !tbaa !93
  %845 = getelementptr inbounds nuw i8, ptr %844, i64 68
  %846 = load i32, ptr %845, align 4, !tbaa !108
  %847 = icmp ne i32 %846, 0
  %848 = icmp ugt i64 %840, %839
  %849 = select i1 %847, i1 %848, i1 false
  br i1 %849, label %850, label %856

850:                                              ; preds = %843
  %851 = sub nuw i64 %840, %839
  %852 = load ptr, ptr %834, align 8, !tbaa !42
  %853 = getelementptr inbounds nuw i8, ptr %852, i64 %839
  %854 = load i64, ptr %835, align 8, !tbaa !72
  %855 = tail call i64 @crc32_z(i64 noundef %854, ptr noundef %853, i64 noundef %851) #11
  store i64 %855, ptr %835, align 8, !tbaa !72
  br label %856

856:                                              ; preds = %850, %843
  %857 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %857) #11
  %858 = getelementptr inbounds nuw i8, ptr %857, i64 40
  %859 = load i64, ptr %858, align 8, !tbaa !90
  %860 = load i32, ptr %43, align 8, !tbaa !101
  %861 = zext i32 %860 to i64
  %862 = tail call i64 @llvm.umin.i64(i64 %859, i64 %861)
  %863 = trunc nuw i64 %862 to i32
  %864 = icmp eq i64 %862, 0
  br i1 %864, label %895, label %865

865:                                              ; preds = %856
  %866 = load ptr, ptr %25, align 8, !tbaa !100
  %867 = getelementptr inbounds nuw i8, ptr %857, i64 32
  %868 = load ptr, ptr %867, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %866, ptr align 1 %868, i64 %862, i1 false)
  %869 = load ptr, ptr %25, align 8, !tbaa !100
  %870 = getelementptr inbounds nuw i8, ptr %869, i64 %862
  store ptr %870, ptr %25, align 8, !tbaa !100
  %871 = load ptr, ptr %867, align 8, !tbaa !91
  %872 = getelementptr inbounds nuw i8, ptr %871, i64 %862
  store ptr %872, ptr %867, align 8, !tbaa !91
  %873 = load i64, ptr %836, align 8, !tbaa !102
  %874 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %873, i64 %862), !nosanitize !46
  %875 = extractvalue { i64, i1 } %874, 1, !nosanitize !46
  br i1 %875, label %876, label %877, !prof !47, !nosanitize !46

876:                                              ; preds = %865
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

877:                                              ; preds = %865
  %878 = extractvalue { i64, i1 } %874, 0, !nosanitize !46
  store i64 %878, ptr %836, align 8, !tbaa !102
  %879 = load i32, ptr %43, align 8, !tbaa !101
  %880 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %879, i32 %863), !nosanitize !46
  %881 = extractvalue { i32, i1 } %880, 1, !nosanitize !46
  br i1 %881, label %882, label %883, !prof !47, !nosanitize !46

882:                                              ; preds = %877
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

883:                                              ; preds = %877
  %884 = extractvalue { i32, i1 } %880, 0, !nosanitize !46
  store i32 %884, ptr %43, align 8, !tbaa !101
  %885 = load i64, ptr %858, align 8, !tbaa !90
  %886 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %885, i64 %862), !nosanitize !46
  %887 = extractvalue { i64, i1 } %886, 1, !nosanitize !46
  br i1 %887, label %888, label %889, !prof !47, !nosanitize !46

888:                                              ; preds = %883
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

889:                                              ; preds = %883
  %890 = extractvalue { i64, i1 } %886, 0, !nosanitize !46
  store i64 %890, ptr %858, align 8, !tbaa !90
  %891 = icmp eq i64 %890, 0
  br i1 %891, label %892, label %895

892:                                              ; preds = %889
  %893 = getelementptr inbounds nuw i8, ptr %857, i64 16
  %894 = load ptr, ptr %893, align 8, !tbaa !42
  store ptr %894, ptr %867, align 8, !tbaa !91
  br label %895

895:                                              ; preds = %892, %889, %856
  %896 = load i64, ptr %52, align 8, !tbaa !90
  %897 = icmp eq i64 %896, 0
  br i1 %897, label %899, label %898

898:                                              ; preds = %895
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1204

899:                                              ; preds = %895, %838
  %900 = phi i64 [ %840, %838 ], [ 0, %895 ]
  %901 = phi i64 [ %839, %838 ], [ 0, %895 ]
  %902 = load i64, ptr %837, align 8, !tbaa !112
  %903 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %902, i64 1), !nosanitize !46
  %904 = extractvalue { i64, i1 } %903, 1, !nosanitize !46
  br i1 %904, label %905, label %906, !prof !47, !nosanitize !46

905:                                              ; preds = %899
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

906:                                              ; preds = %899
  %907 = extractvalue { i64, i1 } %903, 0, !nosanitize !46
  %908 = load ptr, ptr %826, align 8, !tbaa !93
  %909 = getelementptr inbounds nuw i8, ptr %908, i64 56
  %910 = load ptr, ptr %909, align 8, !tbaa !103
  store i64 %907, ptr %837, align 8, !tbaa !112
  %911 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %900, i64 1), !nosanitize !46
  %912 = extractvalue { i64, i1 } %911, 1, !nosanitize !46
  br i1 %912, label %913, label %914, !prof !47, !nosanitize !46

913:                                              ; preds = %906
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

914:                                              ; preds = %906
  %915 = extractvalue { i64, i1 } %911, 0, !nosanitize !46
  %916 = load ptr, ptr %834, align 8, !tbaa !42
  %917 = getelementptr inbounds nuw i8, ptr %910, i64 %902
  %918 = load i8, ptr %917, align 1, !tbaa !8
  store i64 %915, ptr %52, align 8, !tbaa !90
  %919 = getelementptr inbounds nuw i8, ptr %916, i64 %900
  store i8 %918, ptr %919, align 1, !tbaa !8
  %920 = icmp eq i8 %918, 0
  br i1 %920, label %921, label %838, !llvm.loop !117

921:                                              ; preds = %914
  %922 = load ptr, ptr %826, align 8, !tbaa !93
  %923 = getelementptr inbounds nuw i8, ptr %922, i64 68
  %924 = load i32, ptr %923, align 4, !tbaa !108
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %935, label %926

926:                                              ; preds = %921
  %927 = load i64, ptr %52, align 8, !tbaa !90
  %928 = icmp ugt i64 %927, %901
  br i1 %928, label %929, label %935

929:                                              ; preds = %926
  %930 = sub nuw i64 %927, %901
  %931 = load ptr, ptr %834, align 8, !tbaa !42
  %932 = getelementptr inbounds nuw i8, ptr %931, i64 %901
  %933 = load i64, ptr %835, align 8, !tbaa !72
  %934 = tail call i64 @crc32_z(i64 noundef %933, ptr noundef %932, i64 noundef %930) #11
  store i64 %934, ptr %835, align 8, !tbaa !72
  br label %935

935:                                              ; preds = %929, %926, %921, %825
  store i32 103, ptr %20, align 8, !tbaa !28
  br label %936

936:                                              ; preds = %935, %503
  %937 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %938 = load ptr, ptr %937, align 8, !tbaa !93
  %939 = getelementptr inbounds nuw i8, ptr %938, i64 68
  %940 = load i32, ptr %939, align 4, !tbaa !108
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %977, label %942

942:                                              ; preds = %936
  %943 = load i64, ptr %52, align 8, !tbaa !90
  %944 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %943, i64 2), !nosanitize !46
  %945 = extractvalue { i64, i1 } %944, 1, !nosanitize !46
  br i1 %945, label %946, label %947, !prof !47, !nosanitize !46

946:                                              ; preds = %942
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

947:                                              ; preds = %942
  %948 = extractvalue { i64, i1 } %944, 0, !nosanitize !46
  %949 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %950 = load i64, ptr %949, align 8, !tbaa !43
  %951 = icmp ugt i64 %948, %950
  br i1 %951, label %952, label %956

952:                                              ; preds = %947
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %953 = load i64, ptr %52, align 8, !tbaa !90
  %954 = icmp eq i64 %953, 0
  br i1 %954, label %956, label %955

955:                                              ; preds = %952
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1204

956:                                              ; preds = %952, %947
  %957 = phi i64 [ 0, %952 ], [ %943, %947 ]
  %958 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %959 = add nuw i64 %957, 1
  %960 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %961 = load ptr, ptr %960, align 8, !tbaa !42
  %962 = load i64, ptr %958, align 8, !tbaa !72
  %963 = trunc i64 %962 to i8
  store i64 %959, ptr %52, align 8, !tbaa !90
  %964 = getelementptr inbounds nuw i8, ptr %961, i64 %957
  store i8 %963, ptr %964, align 1, !tbaa !8
  %965 = load i64, ptr %52, align 8, !tbaa !90
  %966 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %965, i64 1), !nosanitize !46
  %967 = extractvalue { i64, i1 } %966, 1, !nosanitize !46
  br i1 %967, label %968, label %969, !prof !47, !nosanitize !46

968:                                              ; preds = %956
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

969:                                              ; preds = %956
  %970 = extractvalue { i64, i1 } %966, 0, !nosanitize !46
  %971 = load ptr, ptr %960, align 8, !tbaa !42
  %972 = load i64, ptr %958, align 8, !tbaa !72
  %973 = lshr i64 %972, 8
  %974 = trunc i64 %973 to i8
  store i64 %970, ptr %52, align 8, !tbaa !90
  %975 = getelementptr inbounds nuw i8, ptr %971, i64 %965
  store i8 %974, ptr %975, align 1, !tbaa !8
  %976 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %976, ptr %958, align 8, !tbaa !72
  br label %977

977:                                              ; preds = %969, %936
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %978 = load i64, ptr %52, align 8, !tbaa !90
  %979 = icmp eq i64 %978, 0
  br i1 %979, label %981, label %980

980:                                              ; preds = %977
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1204

981:                                              ; preds = %977, %503, %136
  %982 = load i32, ptr %29, align 8, !tbaa !73
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %984, label %993

984:                                              ; preds = %981, %126
  %985 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %986 = load i32, ptr %985, align 4, !tbaa !66
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %993

988:                                              ; preds = %984
  %989 = icmp eq i32 %1, 0
  br i1 %989, label %1204, label %990

990:                                              ; preds = %988
  %991 = load i32, ptr %20, align 8, !tbaa !28
  %992 = icmp eq i32 %991, 666
  br i1 %992, label %1055, label %993

993:                                              ; preds = %990, %984, %981
  %994 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %995 = load i32, ptr %994, align 4, !tbaa !49
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %999

997:                                              ; preds = %993
  %998 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %1012

999:                                              ; preds = %993
  %1000 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %1001 = load i32, ptr %1000, align 8, !tbaa !50
  switch i32 %1001, label %1006 [
    i32 2, label %1002
    i32 3, label %1004
  ]

1002:                                             ; preds = %999
  %1003 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %1012

1004:                                             ; preds = %999
  %1005 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %1012

1006:                                             ; preds = %999
  %1007 = sext i32 %995 to i64
  %1008 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1007
  %1009 = getelementptr inbounds nuw i8, ptr %1008, i64 8
  %1010 = load ptr, ptr %1009, align 8, !tbaa !98
  %1011 = tail call i32 %1010(ptr noundef nonnull %14, i32 noundef %1) #11
  br label %1012

1012:                                             ; preds = %1006, %1004, %1002, %997
  %1013 = phi i32 [ %998, %997 ], [ %1003, %1002 ], [ %1005, %1004 ], [ %1011, %1006 ]
  %1014 = and i32 %1013, -2
  %1015 = icmp eq i32 %1014, 2
  br i1 %1015, label %1016, label %1017

1016:                                             ; preds = %1012
  store i32 666, ptr %20, align 8, !tbaa !28
  br label %1017

1017:                                             ; preds = %1016, %1012
  %1018 = and i32 %1013, -3
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1020, label %1024

1020:                                             ; preds = %1017
  %1021 = load i32, ptr %43, align 8, !tbaa !101
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1023, label %1204

1023:                                             ; preds = %1020
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1204

1024:                                             ; preds = %1017
  %1025 = icmp eq i32 %1013, 1
  br i1 %1025, label %1026, label %1055

1026:                                             ; preds = %1024
  switch i32 %1, label %1028 [
    i32 1, label %1027
    i32 5, label %1051
  ]

1027:                                             ; preds = %1026
  tail call void @_tr_align(ptr noundef nonnull %14) #11
  br label %1051

1028:                                             ; preds = %1026
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %1029 = icmp eq i32 %1, 3
  br i1 %1029, label %1030, label %1051

1030:                                             ; preds = %1028
  %1031 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %1032 = load i32, ptr %1031, align 4, !tbaa !34
  %1033 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1032, i32 1), !nosanitize !46
  %1034 = extractvalue { i32, i1 } %1033, 1, !nosanitize !46
  br i1 %1034, label %1035, label %1036, !prof !47, !nosanitize !46

1035:                                             ; preds = %1030
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

1036:                                             ; preds = %1030
  %1037 = extractvalue { i32, i1 } %1033, 0, !nosanitize !46
  %1038 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %1039 = load ptr, ptr %1038, align 8, !tbaa !39
  %1040 = zext i32 %1037 to i64
  %1041 = getelementptr inbounds nuw [2 x i8], ptr %1039, i64 %1040
  store i16 0, ptr %1041, align 2, !tbaa !53
  %1042 = shl nuw nsw i64 %1040, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1039, i8 0, i64 %1042, i1 false)
  %1043 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %1043, align 8, !tbaa !54
  %1044 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %1045 = load i32, ptr %1044, align 4, !tbaa !66
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1047, label %1051

1047:                                             ; preds = %1036
  %1048 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %1048, align 4, !tbaa !64
  %1049 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %1049, align 8, !tbaa !65
  %1050 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %1050, align 4, !tbaa !67
  br label %1051

1051:                                             ; preds = %1047, %1036, %1028, %1027, %1026
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1052 = load i32, ptr %43, align 8, !tbaa !101
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1054, label %1055

1054:                                             ; preds = %1051
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1204

1055:                                             ; preds = %1051, %1024, %990
  br i1 %37, label %1204, label %1056

1056:                                             ; preds = %1055
  %1057 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %1058 = load i32, ptr %1057, align 8, !tbaa !29
  %1059 = icmp slt i32 %1058, 1
  br i1 %1059, label %1204, label %1060

1060:                                             ; preds = %1056
  %1061 = icmp eq i32 %1058, 2
  %1062 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1061, label %1063, label %1152

1063:                                             ; preds = %1060
  %1064 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1065 = load i64, ptr %52, align 8, !tbaa !90
  %1066 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1065, i64 1), !nosanitize !46
  %1067 = extractvalue { i64, i1 } %1066, 1, !nosanitize !46
  br i1 %1067, label %1068, label %1069, !prof !47, !nosanitize !46

1068:                                             ; preds = %1063
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

1069:                                             ; preds = %1063
  %1070 = extractvalue { i64, i1 } %1066, 0, !nosanitize !46
  %1071 = load ptr, ptr %1064, align 8, !tbaa !42
  %1072 = load i64, ptr %1062, align 8, !tbaa !72
  %1073 = trunc i64 %1072 to i8
  store i64 %1070, ptr %52, align 8, !tbaa !90
  %1074 = getelementptr inbounds nuw i8, ptr %1071, i64 %1065
  store i8 %1073, ptr %1074, align 1, !tbaa !8
  %1075 = load i64, ptr %52, align 8, !tbaa !90
  %1076 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1075, i64 1), !nosanitize !46
  %1077 = extractvalue { i64, i1 } %1076, 1, !nosanitize !46
  br i1 %1077, label %1078, label %1079, !prof !47, !nosanitize !46

1078:                                             ; preds = %1069
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

1079:                                             ; preds = %1069
  %1080 = extractvalue { i64, i1 } %1076, 0, !nosanitize !46
  %1081 = load ptr, ptr %1064, align 8, !tbaa !42
  %1082 = load i64, ptr %1062, align 8, !tbaa !72
  %1083 = lshr i64 %1082, 8
  %1084 = trunc i64 %1083 to i8
  store i64 %1080, ptr %52, align 8, !tbaa !90
  %1085 = getelementptr inbounds nuw i8, ptr %1081, i64 %1075
  store i8 %1084, ptr %1085, align 1, !tbaa !8
  %1086 = load i64, ptr %52, align 8, !tbaa !90
  %1087 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1086, i64 1), !nosanitize !46
  %1088 = extractvalue { i64, i1 } %1087, 1, !nosanitize !46
  br i1 %1088, label %1089, label %1090, !prof !47, !nosanitize !46

1089:                                             ; preds = %1079
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

1090:                                             ; preds = %1079
  %1091 = extractvalue { i64, i1 } %1087, 0, !nosanitize !46
  %1092 = load ptr, ptr %1064, align 8, !tbaa !42
  %1093 = load i64, ptr %1062, align 8, !tbaa !72
  %1094 = lshr i64 %1093, 16
  %1095 = trunc i64 %1094 to i8
  store i64 %1091, ptr %52, align 8, !tbaa !90
  %1096 = getelementptr inbounds nuw i8, ptr %1092, i64 %1086
  store i8 %1095, ptr %1096, align 1, !tbaa !8
  %1097 = load i64, ptr %52, align 8, !tbaa !90
  %1098 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1097, i64 1), !nosanitize !46
  %1099 = extractvalue { i64, i1 } %1098, 1, !nosanitize !46
  br i1 %1099, label %1100, label %1101, !prof !47, !nosanitize !46

1100:                                             ; preds = %1090
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

1101:                                             ; preds = %1090
  %1102 = extractvalue { i64, i1 } %1098, 0, !nosanitize !46
  %1103 = load ptr, ptr %1064, align 8, !tbaa !42
  %1104 = load i64, ptr %1062, align 8, !tbaa !72
  %1105 = lshr i64 %1104, 24
  %1106 = trunc i64 %1105 to i8
  store i64 %1102, ptr %52, align 8, !tbaa !90
  %1107 = getelementptr inbounds nuw i8, ptr %1103, i64 %1097
  store i8 %1106, ptr %1107, align 1, !tbaa !8
  %1108 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1109 = load i64, ptr %52, align 8, !tbaa !90
  %1110 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1109, i64 1), !nosanitize !46
  %1111 = extractvalue { i64, i1 } %1110, 1, !nosanitize !46
  br i1 %1111, label %1112, label %1113, !prof !47, !nosanitize !46

1112:                                             ; preds = %1101
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

1113:                                             ; preds = %1101
  %1114 = extractvalue { i64, i1 } %1110, 0, !nosanitize !46
  %1115 = load ptr, ptr %1064, align 8, !tbaa !42
  %1116 = load i64, ptr %1108, align 8, !tbaa !86
  %1117 = trunc i64 %1116 to i8
  store i64 %1114, ptr %52, align 8, !tbaa !90
  %1118 = getelementptr inbounds nuw i8, ptr %1115, i64 %1109
  store i8 %1117, ptr %1118, align 1, !tbaa !8
  %1119 = load i64, ptr %52, align 8, !tbaa !90
  %1120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1119, i64 1), !nosanitize !46
  %1121 = extractvalue { i64, i1 } %1120, 1, !nosanitize !46
  br i1 %1121, label %1122, label %1123, !prof !47, !nosanitize !46

1122:                                             ; preds = %1113
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

1123:                                             ; preds = %1113
  %1124 = extractvalue { i64, i1 } %1120, 0, !nosanitize !46
  %1125 = load ptr, ptr %1064, align 8, !tbaa !42
  %1126 = load i64, ptr %1108, align 8, !tbaa !86
  %1127 = lshr i64 %1126, 8
  %1128 = trunc i64 %1127 to i8
  store i64 %1124, ptr %52, align 8, !tbaa !90
  %1129 = getelementptr inbounds nuw i8, ptr %1125, i64 %1119
  store i8 %1128, ptr %1129, align 1, !tbaa !8
  %1130 = load i64, ptr %52, align 8, !tbaa !90
  %1131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1130, i64 1), !nosanitize !46
  %1132 = extractvalue { i64, i1 } %1131, 1, !nosanitize !46
  br i1 %1132, label %1133, label %1134, !prof !47, !nosanitize !46

1133:                                             ; preds = %1123
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

1134:                                             ; preds = %1123
  %1135 = extractvalue { i64, i1 } %1131, 0, !nosanitize !46
  %1136 = load ptr, ptr %1064, align 8, !tbaa !42
  %1137 = load i64, ptr %1108, align 8, !tbaa !86
  %1138 = lshr i64 %1137, 16
  %1139 = trunc i64 %1138 to i8
  store i64 %1135, ptr %52, align 8, !tbaa !90
  %1140 = getelementptr inbounds nuw i8, ptr %1136, i64 %1130
  store i8 %1139, ptr %1140, align 1, !tbaa !8
  %1141 = load i64, ptr %52, align 8, !tbaa !90
  %1142 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1141, i64 1), !nosanitize !46
  %1143 = extractvalue { i64, i1 } %1142, 1, !nosanitize !46
  br i1 %1143, label %1144, label %1145, !prof !47, !nosanitize !46

1144:                                             ; preds = %1134
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

1145:                                             ; preds = %1134
  %1146 = extractvalue { i64, i1 } %1142, 0, !nosanitize !46
  %1147 = load ptr, ptr %1064, align 8, !tbaa !42
  %1148 = load i64, ptr %1108, align 8, !tbaa !86
  %1149 = lshr i64 %1148, 24
  %1150 = trunc i64 %1149 to i8
  store i64 %1146, ptr %52, align 8, !tbaa !90
  %1151 = getelementptr inbounds nuw i8, ptr %1147, i64 %1141
  store i8 %1150, ptr %1151, align 1, !tbaa !8
  br label %1195

1152:                                             ; preds = %1060
  %1153 = load i64, ptr %1062, align 8, !tbaa !72
  %1154 = lshr i64 %1153, 16
  %1155 = load i64, ptr %52, align 8, !tbaa !90
  %1156 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1155, i64 1), !nosanitize !46
  %1157 = extractvalue { i64, i1 } %1156, 1, !nosanitize !46
  br i1 %1157, label %1158, label %1159, !prof !47, !nosanitize !46

1158:                                             ; preds = %1152
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

1159:                                             ; preds = %1152
  %1160 = extractvalue { i64, i1 } %1156, 0, !nosanitize !46
  %1161 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1162 = load ptr, ptr %1161, align 8, !tbaa !42
  %1163 = lshr i64 %1153, 24
  %1164 = trunc i64 %1163 to i8
  store i64 %1160, ptr %52, align 8, !tbaa !90
  %1165 = getelementptr inbounds nuw i8, ptr %1162, i64 %1155
  store i8 %1164, ptr %1165, align 1, !tbaa !8
  %1166 = load i64, ptr %52, align 8, !tbaa !90
  %1167 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1166, i64 1), !nosanitize !46
  %1168 = extractvalue { i64, i1 } %1167, 1, !nosanitize !46
  br i1 %1168, label %1169, label %1170, !prof !47, !nosanitize !46

1169:                                             ; preds = %1159
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

1170:                                             ; preds = %1159
  %1171 = extractvalue { i64, i1 } %1167, 0, !nosanitize !46
  %1172 = load ptr, ptr %1161, align 8, !tbaa !42
  %1173 = trunc i64 %1154 to i8
  store i64 %1171, ptr %52, align 8, !tbaa !90
  %1174 = getelementptr inbounds nuw i8, ptr %1172, i64 %1166
  store i8 %1173, ptr %1174, align 1, !tbaa !8
  %1175 = load i64, ptr %1062, align 8, !tbaa !72
  %1176 = trunc i64 %1175 to i8
  %1177 = load i64, ptr %52, align 8, !tbaa !90
  %1178 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1177, i64 1), !nosanitize !46
  %1179 = extractvalue { i64, i1 } %1178, 1, !nosanitize !46
  br i1 %1179, label %1180, label %1181, !prof !47, !nosanitize !46

1180:                                             ; preds = %1170
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

1181:                                             ; preds = %1170
  %1182 = extractvalue { i64, i1 } %1178, 0, !nosanitize !46
  %1183 = load ptr, ptr %1161, align 8, !tbaa !42
  %1184 = lshr i64 %1175, 8
  %1185 = trunc i64 %1184 to i8
  store i64 %1182, ptr %52, align 8, !tbaa !90
  %1186 = getelementptr inbounds nuw i8, ptr %1183, i64 %1177
  store i8 %1185, ptr %1186, align 1, !tbaa !8
  %1187 = load i64, ptr %52, align 8, !tbaa !90
  %1188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1187, i64 1), !nosanitize !46
  %1189 = extractvalue { i64, i1 } %1188, 1, !nosanitize !46
  br i1 %1189, label %1190, label %1191, !prof !47, !nosanitize !46

1190:                                             ; preds = %1181
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

1191:                                             ; preds = %1181
  %1192 = extractvalue { i64, i1 } %1188, 0, !nosanitize !46
  %1193 = load ptr, ptr %1161, align 8, !tbaa !42
  store i64 %1192, ptr %52, align 8, !tbaa !90
  %1194 = getelementptr inbounds nuw i8, ptr %1193, i64 %1187
  store i8 %1176, ptr %1194, align 1, !tbaa !8
  br label %1195

1195:                                             ; preds = %1191, %1145
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1196 = load i32, ptr %1057, align 8, !tbaa !29
  %1197 = icmp sgt i32 %1196, 0
  br i1 %1197, label %1198, label %1200

1198:                                             ; preds = %1195
  %1199 = sub nsw i32 0, %1196
  store i32 %1199, ptr %1057, align 8, !tbaa !29
  br label %1200

1200:                                             ; preds = %1198, %1195
  %1201 = load i64, ptr %52, align 8, !tbaa !90
  %1202 = icmp eq i64 %1201, 0
  %1203 = zext i1 %1202 to i32
  br label %1204

1204:                                             ; preds = %1200, %1056, %1055, %1054, %1023, %1020, %988, %980, %955, %898, %786, %675, %346, %240, %129, %120, %99, %46, %39, %22, %19, %16, %12, %8, %4, %2
  %1205 = phi i32 [ -5, %120 ], [ -2, %39 ], [ -5, %46 ], [ 0, %99 ], [ -5, %129 ], [ 0, %346 ], [ 0, %955 ], [ 0, %980 ], [ -2, %22 ], [ 0, %1055 ], [ %1203, %1200 ], [ 1, %1056 ], [ 0, %898 ], [ 0, %786 ], [ 0, %675 ], [ 0, %240 ], [ 0, %1023 ], [ 0, %1054 ], [ 0, %1020 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ 0, %988 ]
  ret i32 %1205
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @slide_hash(ptr noundef captures(none) %0) unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %8
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %37, label %11, !prof !47, !nosanitize !46

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
  %26 = load <8 x i16>, ptr %25, align 2, !tbaa !53
  %27 = zext <8 x i16> %26 to <8 x i32>
  %28 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %27, <8 x i32> %20)
  %29 = trunc nuw <8 x i32> %28 to <8 x i16>
  store <8 x i16> %29, ptr %25, align 2, !tbaa !53
  %30 = add nuw i64 %22, 8
  %31 = icmp eq i64 %30, %14
  br i1 %31, label %32, label %21, !llvm.loop !118

32:                                               ; preds = %21
  %33 = icmp eq i64 %14, %8
  br i1 %33, label %53, label %34

34:                                               ; preds = %32, %11
  %35 = phi ptr [ %9, %11 ], [ %16, %32 ]
  %36 = phi i32 [ %5, %11 ], [ %18, %32 ]
  br label %43

37:                                               ; preds = %1
  %38 = getelementptr inbounds i8, ptr %9, i64 -2
  %39 = load i16, ptr %38, align 2, !tbaa !53
  %40 = zext i16 %39 to i32
  %41 = tail call i32 @llvm.usub.sat.i32(i32 %40, i32 %3)
  %42 = trunc nuw i32 %41 to i16
  store i16 %42, ptr %38, align 2, !tbaa !53
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

43:                                               ; preds = %43, %34
  %44 = phi ptr [ %46, %43 ], [ %35, %34 ]
  %45 = phi i32 [ %51, %43 ], [ %36, %34 ]
  %46 = getelementptr inbounds i8, ptr %44, i64 -2
  %47 = load i16, ptr %46, align 2, !tbaa !53
  %48 = zext i16 %47 to i32
  %49 = tail call i32 @llvm.usub.sat.i32(i32 %48, i32 %3)
  %50 = trunc nuw i32 %49 to i16
  store i16 %50, ptr %46, align 2, !tbaa !53
  %51 = add i32 %45, -1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %43, !llvm.loop !119

53:                                               ; preds = %43, %32
  %54 = icmp eq i32 %3, 0
  br i1 %54, label %55, label %56, !prof !47, !nosanitize !46

55:                                               ; preds = %53
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

56:                                               ; preds = %53
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %58 = load ptr, ptr %57, align 8, !tbaa !38
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
  %75 = load <8 x i16>, ptr %74, align 2, !tbaa !53
  %76 = zext <8 x i16> %75 to <8 x i32>
  %77 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %76, <8 x i32> %69)
  %78 = trunc nuw <8 x i32> %77 to <8 x i16>
  store <8 x i16> %78, ptr %74, align 2, !tbaa !53
  %79 = add nuw i64 %71, 8
  %80 = icmp eq i64 %79, %63
  br i1 %80, label %81, label %70, !llvm.loop !120

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
  %90 = load i16, ptr %89, align 2, !tbaa !53
  %91 = zext i16 %90 to i32
  %92 = tail call i32 @llvm.usub.sat.i32(i32 %91, i32 %3)
  %93 = trunc nuw i32 %92 to i16
  store i16 %93, ptr %89, align 2, !tbaa !53
  %94 = add i32 %88, -1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %86, !llvm.loop !121

96:                                               ; preds = %86, %81
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %97, align 8, !tbaa !54
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
  store i32 %1, ptr %26, align 4, !tbaa !59
  %27 = getelementptr inbounds nuw i8, ptr %17, i64 192
  store i32 %2, ptr %27, align 8, !tbaa !57
  %28 = getelementptr inbounds nuw i8, ptr %17, i64 208
  store i32 %3, ptr %28, align 8, !tbaa !61
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 188
  store i32 %4, ptr %29, align 4, !tbaa !63
  br label %30

30:                                               ; preds = %25, %22, %19, %15, %11, %7, %5
  %31 = phi i32 [ 0, %25 ], [ -2, %5 ], [ -2, %11 ], [ -2, %7 ], [ -2, %22 ], [ -2, %19 ], [ -2, %15 ]
  ret i32 %31
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound_z(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !46
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !46
  br i1 %5, label %6, label %7, !prof !47, !nosanitize !46

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !46
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !46
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !46
  br i1 %11, label %12, label %13, !prof !47, !nosanitize !46

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !46
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !46
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !46
  br i1 %17, label %18, label %19, !prof !47, !nosanitize !46

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !46
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !46
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !46
  br i1 %22, label %23, label %24, !prof !47, !nosanitize !46

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !46
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !46
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !46
  br i1 %30, label %31, label %32, !prof !47, !nosanitize !46

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !46
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !46
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !46
  br i1 %36, label %37, label %38, !prof !47, !nosanitize !46

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !46
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !46
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !46
  br i1 %42, label %43, label %44, !prof !47, !nosanitize !46

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !46
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !46
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !46
  br i1 %47, label %48, label %49, !prof !47, !nosanitize !46

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

49:                                               ; preds = %44
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !46
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
  %74 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 18), !nosanitize !46
  %75 = extractvalue { i64, i1 } %74, 0, !nosanitize !46
  %76 = extractvalue { i64, i1 } %74, 1, !nosanitize !46
  br i1 %76, label %77, label %216, !prof !47, !nosanitize !46

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

78:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %79 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %80 = load i32, ptr %79, align 8, !tbaa !29
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %80), !nosanitize !46
  %84 = extractvalue { i32, i1 } %83, 0, !nosanitize !46
  %85 = extractvalue { i32, i1 } %83, 1, !nosanitize !46
  br i1 %85, label %86, label %87, !prof !47, !nosanitize !46

86:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !46
  unreachable, !nosanitize !46

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %84, %82 ], [ %80, %78 ]
  switch i32 %88, label %161 [
    i32 0, label %162
    i32 1, label %89
    i32 2, label %94
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %91 = load i32, ptr %90, align 4, !tbaa !64
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 6, i64 10
  br label %162

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %96 = load ptr, ptr %95, align 8, !tbaa !93
  %97 = icmp eq ptr %96, null
  br i1 %97, label %162, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %100 = load ptr, ptr %99, align 8, !tbaa !106
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %104 = load i32, ptr %103, align 8, !tbaa !111
  %105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 2), !nosanitize !46
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !46
  br i1 %106, label %107, label %108, !prof !47, !nosanitize !46

107:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

108:                                              ; preds = %102
  %109 = extractvalue { i32, i1 } %105, 0, !nosanitize !46
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %110, 18
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi i64 [ %111, %108 ], [ 18, %98 ]
  %114 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %115 = load ptr, ptr %114, align 8, !tbaa !105
  %116 = icmp eq ptr %115, null
  br i1 %116, label %131, label %117

117:                                              ; preds = %112
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %113, i64 1), !nosanitize !46
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !46
  br i1 %119, label %124, label %125, !prof !122, !nosanitize !46

120:                                              ; preds = %125
  %121 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %122 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %128, i64 1), !nosanitize !46
  %123 = extractvalue { i64, i1 } %122, 1, !nosanitize !46
  br i1 %123, label %124, label %125, !prof !123, !llvm.loop !124, !nosanitize !46

124:                                              ; preds = %120, %117
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

125:                                              ; preds = %120, %117
  %126 = phi { i64, i1 } [ %122, %120 ], [ %118, %117 ]
  %127 = phi ptr [ %121, %120 ], [ %115, %117 ]
  %128 = extractvalue { i64, i1 } %126, 0, !nosanitize !46
  %129 = load i8, ptr %127, align 1, !tbaa !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %120, !llvm.loop !124

131:                                              ; preds = %125, %112
  %132 = phi i64 [ %113, %112 ], [ %128, %125 ]
  %133 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %134 = load ptr, ptr %133, align 8, !tbaa !103
  %135 = icmp eq ptr %134, null
  br i1 %135, label %150, label %136

136:                                              ; preds = %131
  %137 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 1), !nosanitize !46
  %138 = extractvalue { i64, i1 } %137, 1, !nosanitize !46
  br i1 %138, label %143, label %144, !prof !122, !nosanitize !46

139:                                              ; preds = %144
  %140 = getelementptr inbounds nuw i8, ptr %146, i64 1
  %141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %147, i64 1), !nosanitize !46
  %142 = extractvalue { i64, i1 } %141, 1, !nosanitize !46
  br i1 %142, label %143, label %144, !prof !123, !llvm.loop !125, !nosanitize !46

143:                                              ; preds = %139, %136
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

144:                                              ; preds = %139, %136
  %145 = phi { i64, i1 } [ %141, %139 ], [ %137, %136 ]
  %146 = phi ptr [ %140, %139 ], [ %134, %136 ]
  %147 = extractvalue { i64, i1 } %145, 0, !nosanitize !46
  %148 = load i8, ptr %146, align 1, !tbaa !8
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %139, !llvm.loop !125

150:                                              ; preds = %144, %131
  %151 = phi i64 [ %132, %131 ], [ %147, %144 ]
  %152 = getelementptr inbounds nuw i8, ptr %96, i64 68
  %153 = load i32, ptr %152, align 4, !tbaa !108
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %151, i64 2), !nosanitize !46
  %157 = extractvalue { i64, i1 } %156, 1, !nosanitize !46
  br i1 %157, label %158, label %159, !prof !47, !nosanitize !46

158:                                              ; preds = %155
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

159:                                              ; preds = %155
  %160 = extractvalue { i64, i1 } %156, 0, !nosanitize !46
  br label %162

161:                                              ; preds = %87
  br label %162

162:                                              ; preds = %161, %159, %150, %94, %89, %87
  %163 = phi i64 [ 18, %161 ], [ 18, %94 ], [ %93, %89 ], [ 0, %87 ], [ %160, %159 ], [ %151, %150 ]
  %164 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %165 = load i32, ptr %164, align 4, !tbaa !30
  %166 = icmp eq i32 %165, 15
  %167 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %168 = load i32, ptr %167, align 8, !tbaa !33
  %169 = icmp eq i32 %168, 15
  %170 = select i1 %166, i1 %169, i1 false
  br i1 %170, label %184, label %171

171:                                              ; preds = %162
  %172 = icmp ugt i32 %165, %168
  br i1 %172, label %177, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %175 = load i32, ptr %174, align 4, !tbaa !49
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173, %171
  br label %178

178:                                              ; preds = %177, %173
  %179 = phi i64 [ %52, %177 ], [ %27, %173 ]
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %179, i64 %163), !nosanitize !46
  %181 = extractvalue { i64, i1 } %180, 0, !nosanitize !46
  %182 = extractvalue { i64, i1 } %180, 1, !nosanitize !46
  br i1 %182, label %183, label %216, !prof !47, !nosanitize !46

183:                                              ; preds = %178
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

184:                                              ; preds = %162
  %185 = lshr i64 %1, 12
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %185), !nosanitize !46
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !46
  br i1 %187, label %188, label %189, !prof !47, !nosanitize !46

188:                                              ; preds = %184
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

189:                                              ; preds = %184
  %190 = extractvalue { i64, i1 } %186, 0, !nosanitize !46
  %191 = lshr i64 %1, 14
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 %191), !nosanitize !46
  %193 = extractvalue { i64, i1 } %192, 1, !nosanitize !46
  br i1 %193, label %194, label %195, !prof !47, !nosanitize !46

194:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

195:                                              ; preds = %189
  %196 = extractvalue { i64, i1 } %192, 0, !nosanitize !46
  %197 = lshr i64 %1, 25
  %198 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %196, i64 %197), !nosanitize !46
  %199 = extractvalue { i64, i1 } %198, 1, !nosanitize !46
  br i1 %199, label %200, label %201, !prof !47, !nosanitize !46

200:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

201:                                              ; preds = %195
  %202 = extractvalue { i64, i1 } %198, 0, !nosanitize !46
  %203 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %202, i64 13), !nosanitize !46
  %204 = extractvalue { i64, i1 } %203, 1, !nosanitize !46
  br i1 %204, label %205, label %206, !prof !47, !nosanitize !46

205:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

206:                                              ; preds = %201
  %207 = extractvalue { i64, i1 } %203, 0, !nosanitize !46
  %208 = add i64 %207, -6
  %209 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %208, i64 %163), !nosanitize !46
  %210 = extractvalue { i64, i1 } %209, 1, !nosanitize !46
  br i1 %210, label %211, label %212, !prof !47, !nosanitize !46

211:                                              ; preds = %206
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

212:                                              ; preds = %206
  %213 = extractvalue { i64, i1 } %209, 0, !nosanitize !46
  %214 = icmp ult i64 %213, %1
  %215 = select i1 %214, i64 -1, i64 %213
  br label %216

216:                                              ; preds = %212, %178, %72
  %217 = phi i64 [ %215, %212 ], [ %75, %72 ], [ %181, %178 ]
  ret i64 %217
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = tail call i64 @deflateBound_z(ptr noundef %0, i64 noundef %1)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %3) #11
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc nuw i64 %9 to i32
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %9, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !100
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %9
  store ptr %18, ptr %13, align 8, !tbaa !100
  %19 = load ptr, ptr %15, align 8, !tbaa !91
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  store ptr %20, ptr %15, align 8, !tbaa !91
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8, !tbaa !102
  %23 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 %9), !nosanitize !46
  %24 = extractvalue { i64, i1 } %23, 1, !nosanitize !46
  br i1 %24, label %25, label %26, !prof !47, !nosanitize !46

25:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

26:                                               ; preds = %12
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !46
  store i64 %27, ptr %21, align 8, !tbaa !102
  %28 = load i32, ptr %6, align 8, !tbaa !101
  %29 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %10), !nosanitize !46
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !46
  br i1 %30, label %31, label %32, !prof !47, !nosanitize !46

31:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !46
  store i32 %33, ptr %6, align 8, !tbaa !101
  %34 = load i64, ptr %4, align 8, !tbaa !90
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %9), !nosanitize !46
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !46
  br i1 %36, label %37, label %38, !prof !47, !nosanitize !46

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !46
  store i64 %39, ptr %4, align 8, !tbaa !90
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %43 = load ptr, ptr %42, align 8, !tbaa !42
  store ptr %43, ptr %15, align 8, !tbaa !91
  br label %44

44:                                               ; preds = %41, %38, %1
  ret void
}

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 5), !nosanitize !46
  %6 = extractvalue { i64, i1 } %5, 1, !nosanitize !46
  br i1 %6, label %7, label %8, !prof !47, !nosanitize !46

7:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

8:                                                ; preds = %2
  %9 = extractvalue { i64, i1 } %5, 0, !nosanitize !46
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %11 = load i32, ptr %10, align 8, !tbaa !31
  %12 = zext i32 %11 to i64
  %13 = tail call i64 @llvm.umin.i64(i64 %9, i64 %12)
  %14 = trunc nuw i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !19
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load i32, ptr %16, align 8, !tbaa !73
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
  %28 = load i32, ptr %18, align 4, !tbaa !94
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 42), !nosanitize !46
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !46
  br i1 %30, label %31, label %32, !prof !47, !nosanitize !46

31:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

32:                                               ; preds = %27
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !46
  %34 = lshr i32 %33, 3
  %35 = load ptr, ptr %0, align 8, !tbaa !19
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = load i32, ptr %36, align 8, !tbaa !101
  %38 = icmp ult i32 %37, %34
  br i1 %38, label %277, label %39

39:                                               ; preds = %32
  %40 = sub nuw i32 %37, %34
  %41 = load i32, ptr %19, align 4, !tbaa !64
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %20, align 8, !tbaa !65
  %44 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %42, i64 %43), !nosanitize !46
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !46
  br i1 %45, label %46, label %47, !prof !47, !nosanitize !46

46:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

47:                                               ; preds = %39
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !46
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %51 = load i32, ptr %50, align 8, !tbaa !73
  %52 = and i64 %48, 4294967295
  %53 = zext i32 %51 to i64
  %54 = add nuw nsw i64 %52, %53
  %55 = icmp samesign ult i64 %54, 65535
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !46
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !46
  br i1 %58, label %59, label %60, !prof !47, !nosanitize !46

59:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

60:                                               ; preds = %56
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !46
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
  %71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !46
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !46
  br i1 %72, label %73, label %74, !prof !47, !nosanitize !46

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

74:                                               ; preds = %70
  %75 = extractvalue { i32, i1 } %71, 0, !nosanitize !46
  %76 = icmp eq i32 %64, %75
  br i1 %76, label %77, label %277

77:                                               ; preds = %74, %62
  br i1 %23, label %78, label %86

78:                                               ; preds = %77
  %79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !46
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !46
  br i1 %80, label %81, label %82, !prof !47, !nosanitize !46

81:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

82:                                               ; preds = %78
  %83 = extractvalue { i32, i1 } %79, 0, !nosanitize !46
  %84 = icmp eq i32 %64, %83
  %85 = zext i1 %84 to i32
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi i32 [ 0, %77 ], [ %85, %82 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %87) #11
  %88 = load i64, ptr %25, align 8, !tbaa !90
  %89 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %88, i64 4), !nosanitize !46
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !46
  br i1 %90, label %91, label %92, !prof !47, !nosanitize !46

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

92:                                               ; preds = %86
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !46
  %94 = load ptr, ptr %24, align 8, !tbaa !42
  %95 = trunc i32 %64 to i8
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 %93
  store i8 %95, ptr %96, align 1, !tbaa !8
  %97 = load i64, ptr %25, align 8, !tbaa !90
  %98 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %97, i64 3), !nosanitize !46
  %99 = extractvalue { i64, i1 } %98, 1, !nosanitize !46
  br i1 %99, label %100, label %101, !prof !47, !nosanitize !46

100:                                              ; preds = %92
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

101:                                              ; preds = %92
  %102 = extractvalue { i64, i1 } %98, 0, !nosanitize !46
  %103 = load ptr, ptr %24, align 8, !tbaa !42
  %104 = lshr i32 %64, 8
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds nuw i8, ptr %103, i64 %102
  store i8 %105, ptr %106, align 1, !tbaa !8
  %107 = load i64, ptr %25, align 8, !tbaa !90
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 2), !nosanitize !46
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !46
  br i1 %109, label %110, label %111, !prof !47, !nosanitize !46

110:                                              ; preds = %101
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

111:                                              ; preds = %101
  %112 = extractvalue { i64, i1 } %108, 0, !nosanitize !46
  %113 = load ptr, ptr %24, align 8, !tbaa !42
  %114 = xor i32 %64, -1
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds nuw i8, ptr %113, i64 %112
  store i8 %115, ptr %116, align 1, !tbaa !8
  %117 = load i64, ptr %25, align 8, !tbaa !90
  %118 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %117, i64 1), !nosanitize !46
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !46
  br i1 %119, label %120, label %121, !prof !47, !nosanitize !46

120:                                              ; preds = %111
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

121:                                              ; preds = %111
  %122 = extractvalue { i64, i1 } %118, 0, !nosanitize !46
  %123 = load ptr, ptr %24, align 8, !tbaa !42
  %124 = lshr i32 %114, 8
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds nuw i8, ptr %123, i64 %122
  store i8 %125, ptr %126, align 1, !tbaa !8
  %127 = load ptr, ptr %0, align 8, !tbaa !19
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 56
  %129 = load ptr, ptr %128, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %129) #11
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 40
  %131 = load i64, ptr %130, align 8, !tbaa !90
  %132 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %133 = load i32, ptr %132, align 8, !tbaa !101
  %134 = zext i32 %133 to i64
  %135 = tail call i64 @llvm.umin.i64(i64 %131, i64 %134)
  %136 = trunc nuw i64 %135 to i32
  %137 = icmp eq i64 %135, 0
  br i1 %137, label %170, label %138

138:                                              ; preds = %121
  %139 = getelementptr inbounds nuw i8, ptr %127, i64 24
  %140 = load ptr, ptr %139, align 8, !tbaa !100
  %141 = getelementptr inbounds nuw i8, ptr %129, i64 32
  %142 = load ptr, ptr %141, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %140, ptr align 1 %142, i64 %135, i1 false)
  %143 = load ptr, ptr %139, align 8, !tbaa !100
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 %135
  store ptr %144, ptr %139, align 8, !tbaa !100
  %145 = load ptr, ptr %141, align 8, !tbaa !91
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 %135
  store ptr %146, ptr %141, align 8, !tbaa !91
  %147 = getelementptr inbounds nuw i8, ptr %127, i64 40
  %148 = load i64, ptr %147, align 8, !tbaa !102
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %148, i64 %135), !nosanitize !46
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !46
  br i1 %150, label %151, label %152, !prof !47, !nosanitize !46

151:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

152:                                              ; preds = %138
  %153 = extractvalue { i64, i1 } %149, 0, !nosanitize !46
  store i64 %153, ptr %147, align 8, !tbaa !102
  %154 = load i32, ptr %132, align 8, !tbaa !101
  %155 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %154, i32 %136), !nosanitize !46
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !46
  br i1 %156, label %157, label %158, !prof !47, !nosanitize !46

157:                                              ; preds = %152
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

158:                                              ; preds = %152
  %159 = extractvalue { i32, i1 } %155, 0, !nosanitize !46
  store i32 %159, ptr %132, align 8, !tbaa !101
  %160 = load i64, ptr %130, align 8, !tbaa !90
  %161 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %160, i64 %135), !nosanitize !46
  %162 = extractvalue { i64, i1 } %161, 1, !nosanitize !46
  br i1 %162, label %163, label %164, !prof !47, !nosanitize !46

163:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

164:                                              ; preds = %158
  %165 = extractvalue { i64, i1 } %161, 0, !nosanitize !46
  store i64 %165, ptr %130, align 8, !tbaa !90
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = getelementptr inbounds nuw i8, ptr %129, i64 16
  %169 = load ptr, ptr %168, align 8, !tbaa !42
  store ptr %169, ptr %141, align 8, !tbaa !91
  br label %170

170:                                              ; preds = %167, %164, %121
  %171 = icmp eq i32 %49, 0
  br i1 %171, label %209, label %172

172:                                              ; preds = %170
  %173 = tail call i32 @llvm.umin.i32(i32 %64, i32 %49)
  %174 = load ptr, ptr %0, align 8, !tbaa !19
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 24
  %176 = load ptr, ptr %175, align 8, !tbaa !100
  %177 = load ptr, ptr %26, align 8, !tbaa !37
  %178 = load i64, ptr %20, align 8, !tbaa !65
  %179 = getelementptr inbounds i8, ptr %177, i64 %178
  %180 = zext i32 %173 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %176, ptr align 1 %179, i64 %180, i1 false)
  %181 = load ptr, ptr %0, align 8, !tbaa !19
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 24
  %183 = load ptr, ptr %182, align 8, !tbaa !100
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 %180
  store ptr %184, ptr %182, align 8, !tbaa !100
  %185 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %186 = load i32, ptr %185, align 8, !tbaa !101
  %187 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %186, i32 %173), !nosanitize !46
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !46
  br i1 %188, label %189, label %190, !prof !47, !nosanitize !46

189:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

190:                                              ; preds = %172
  %191 = extractvalue { i32, i1 } %187, 0, !nosanitize !46
  store i32 %191, ptr %185, align 8, !tbaa !101
  %192 = getelementptr inbounds nuw i8, ptr %181, i64 40
  %193 = load i64, ptr %192, align 8, !tbaa !102
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 %180), !nosanitize !46
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !46
  br i1 %195, label %196, label %197, !prof !47, !nosanitize !46

196:                                              ; preds = %197, %190
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

197:                                              ; preds = %190
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !46
  store i64 %198, ptr %192, align 8, !tbaa !102
  %199 = load i64, ptr %20, align 8, !tbaa !65
  %200 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %199, i64 %180), !nosanitize !46
  %201 = extractvalue { i64, i1 } %200, 1, !nosanitize !46
  br i1 %201, label %196, label %202, !prof !47, !nosanitize !46

202:                                              ; preds = %197
  %203 = extractvalue { i64, i1 } %200, 0, !nosanitize !46
  store i64 %203, ptr %20, align 8, !tbaa !65
  %204 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %64, i32 %173), !nosanitize !46
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !46
  br i1 %205, label %206, label %207, !prof !47, !nosanitize !46

206:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

207:                                              ; preds = %202
  %208 = extractvalue { i32, i1 } %204, 0, !nosanitize !46
  br label %209

209:                                              ; preds = %207, %170
  %210 = phi i32 [ %208, %207 ], [ %64, %170 ]
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %273, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %0, align 8, !tbaa !19
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 24
  %215 = load ptr, ptr %214, align 8, !tbaa !100
  %216 = getelementptr inbounds nuw i8, ptr %213, i64 8
  %217 = load i32, ptr %216, align 8, !tbaa !73
  %218 = tail call i32 @llvm.umin.i32(i32 %217, i32 %210)
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %253, label %220

220:                                              ; preds = %212
  %221 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %217, i32 %218), !nosanitize !46
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !46
  br i1 %222, label %223, label %224, !prof !47, !nosanitize !46

223:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

224:                                              ; preds = %220
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !46
  store i32 %225, ptr %216, align 8, !tbaa !73
  %226 = load ptr, ptr %213, align 8, !tbaa !74
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
  %234 = load i64, ptr %233, align 8, !tbaa !72
  %235 = tail call i64 @adler32(i64 noundef %234, ptr noundef %215, i32 noundef %218) #11
  store i64 %235, ptr %233, align 8, !tbaa !72
  br label %240

236:                                              ; preds = %224
  %237 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %238 = load i64, ptr %237, align 8, !tbaa !72
  %239 = tail call i64 @crc32(i64 noundef %238, ptr noundef %215, i32 noundef %218) #11
  store i64 %239, ptr %237, align 8, !tbaa !72
  br label %240

240:                                              ; preds = %236, %232, %224
  %241 = load ptr, ptr %213, align 8, !tbaa !74
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 %227
  store ptr %242, ptr %213, align 8, !tbaa !74
  %243 = getelementptr inbounds nuw i8, ptr %213, i64 16
  %244 = load i64, ptr %243, align 8, !tbaa !86
  %245 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %244, i64 %227), !nosanitize !46
  %246 = extractvalue { i64, i1 } %245, 1, !nosanitize !46
  br i1 %246, label %247, label %248, !prof !47, !nosanitize !46

247:                                              ; preds = %240
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

248:                                              ; preds = %240
  %249 = extractvalue { i64, i1 } %245, 0, !nosanitize !46
  store i64 %249, ptr %243, align 8, !tbaa !86
  %250 = load ptr, ptr %0, align 8, !tbaa !19
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 24
  %252 = load ptr, ptr %251, align 8, !tbaa !100
  br label %253

253:                                              ; preds = %248, %212
  %254 = phi ptr [ %215, %212 ], [ %252, %248 ]
  %255 = phi ptr [ %213, %212 ], [ %250, %248 ]
  %256 = getelementptr inbounds nuw i8, ptr %255, i64 24
  %257 = zext i32 %210 to i64
  %258 = getelementptr inbounds nuw i8, ptr %254, i64 %257
  store ptr %258, ptr %256, align 8, !tbaa !100
  %259 = getelementptr inbounds nuw i8, ptr %255, i64 32
  %260 = load i32, ptr %259, align 8, !tbaa !101
  %261 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %260, i32 %210), !nosanitize !46
  %262 = extractvalue { i32, i1 } %261, 1, !nosanitize !46
  br i1 %262, label %263, label %264, !prof !47, !nosanitize !46

263:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

264:                                              ; preds = %253
  %265 = extractvalue { i32, i1 } %261, 0, !nosanitize !46
  store i32 %265, ptr %259, align 8, !tbaa !101
  %266 = getelementptr inbounds nuw i8, ptr %255, i64 40
  %267 = load i64, ptr %266, align 8, !tbaa !102
  %268 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %267, i64 %257), !nosanitize !46
  %269 = extractvalue { i64, i1 } %268, 1, !nosanitize !46
  br i1 %269, label %270, label %271, !prof !47, !nosanitize !46

270:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

271:                                              ; preds = %264
  %272 = extractvalue { i64, i1 } %268, 0, !nosanitize !46
  store i64 %272, ptr %266, align 8, !tbaa !102
  br label %273

273:                                              ; preds = %271, %209
  %274 = icmp eq i32 %87, 0
  br i1 %274, label %27, label %275, !llvm.loop !126

275:                                              ; preds = %273
  %276 = load ptr, ptr %0, align 8, !tbaa !19
  br label %277, !llvm.loop !126

277:                                              ; preds = %275, %74, %66, %32
  %278 = phi ptr [ %276, %275 ], [ %35, %32 ], [ %35, %66 ], [ %35, %74 ]
  %279 = phi i1 [ false, %275 ], [ true, %32 ], [ true, %66 ], [ true, %74 ]
  %280 = getelementptr inbounds nuw i8, ptr %278, i64 8
  %281 = load i32, ptr %280, align 8, !tbaa !73
  %282 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %281), !nosanitize !46
  %283 = extractvalue { i32, i1 } %282, 0, !nosanitize !46
  %284 = extractvalue { i32, i1 } %282, 1, !nosanitize !46
  br i1 %284, label %285, label %286, !prof !47, !nosanitize !46

285:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

286:                                              ; preds = %277
  %287 = icmp eq i32 %283, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %286
  %289 = load i32, ptr %19, align 4, !tbaa !64
  %290 = zext i32 %289 to i64
  br label %368

291:                                              ; preds = %286
  %292 = load i32, ptr %10, align 8, !tbaa !31
  %293 = icmp ult i32 %283, %292
  br i1 %293, label %303, label %294

294:                                              ; preds = %291
  %295 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %295, align 8, !tbaa !99
  %296 = load ptr, ptr %26, align 8, !tbaa !37
  %297 = load ptr, ptr %278, align 8, !tbaa !74
  %298 = zext i32 %292 to i64
  %299 = sub nsw i64 0, %298
  %300 = getelementptr inbounds i8, ptr %297, i64 %299
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %296, ptr align 1 %300, i64 %298, i1 false)
  %301 = load i32, ptr %10, align 8, !tbaa !31
  store i32 %301, ptr %19, align 4, !tbaa !64
  %302 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %301, ptr %302, align 4, !tbaa !67
  br label %365

303:                                              ; preds = %291
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %305 = load i64, ptr %304, align 8, !tbaa !52
  %306 = load i32, ptr %19, align 4, !tbaa !64
  %307 = zext i32 %306 to i64
  %308 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %305, i64 %307), !nosanitize !46
  %309 = extractvalue { i64, i1 } %308, 1, !nosanitize !46
  br i1 %309, label %310, label %311, !prof !47, !nosanitize !46

310:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

311:                                              ; preds = %303
  %312 = extractvalue { i64, i1 } %308, 0, !nosanitize !46
  %313 = zext i32 %283 to i64
  %314 = icmp ugt i64 %312, %313
  br i1 %314, label %336, label %315

315:                                              ; preds = %311
  %316 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %306, i32 %292), !nosanitize !46
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !46
  br i1 %317, label %318, label %319, !prof !47, !nosanitize !46

318:                                              ; preds = %315
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

319:                                              ; preds = %315
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !46
  store i32 %320, ptr %19, align 4, !tbaa !64
  %321 = load ptr, ptr %26, align 8, !tbaa !37
  %322 = zext i32 %292 to i64
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 %322
  %324 = zext i32 %320 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %321, ptr nonnull align 1 %323, i64 %324, i1 false)
  %325 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %326 = load i32, ptr %325, align 8, !tbaa !99
  %327 = icmp ult i32 %326, 2
  br i1 %327, label %328, label %330

328:                                              ; preds = %319
  %329 = add nuw nsw i32 %326, 1
  store i32 %329, ptr %325, align 8, !tbaa !99
  br label %330

330:                                              ; preds = %328, %319
  %331 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %332 = load i32, ptr %331, align 4, !tbaa !67
  %333 = load i32, ptr %19, align 4, !tbaa !64
  %334 = icmp ugt i32 %332, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  store i32 %333, ptr %331, align 4, !tbaa !67
  br label %336

336:                                              ; preds = %335, %330, %311
  %337 = phi i32 [ %333, %330 ], [ %333, %335 ], [ %306, %311 ]
  %338 = load ptr, ptr %26, align 8, !tbaa !37
  %339 = zext i32 %337 to i64
  %340 = getelementptr inbounds nuw i8, ptr %338, i64 %339
  %341 = load ptr, ptr %0, align 8, !tbaa !19
  %342 = load ptr, ptr %341, align 8, !tbaa !74
  %343 = sub nsw i64 0, %313
  %344 = getelementptr inbounds i8, ptr %342, i64 %343
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %340, ptr nonnull align 1 %344, i64 %313, i1 false)
  %345 = load i32, ptr %19, align 4, !tbaa !64
  %346 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %345, i32 %283), !nosanitize !46
  %347 = extractvalue { i32, i1 } %346, 1, !nosanitize !46
  br i1 %347, label %348, label %349, !prof !47, !nosanitize !46

348:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

349:                                              ; preds = %336
  %350 = extractvalue { i32, i1 } %346, 0, !nosanitize !46
  store i32 %350, ptr %19, align 4, !tbaa !64
  %351 = load i32, ptr %10, align 8, !tbaa !31
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %353 = load i32, ptr %352, align 4, !tbaa !67
  %354 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %351, i32 %353), !nosanitize !46
  %355 = extractvalue { i32, i1 } %354, 1, !nosanitize !46
  br i1 %355, label %356, label %357, !prof !47, !nosanitize !46

356:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

357:                                              ; preds = %349
  %358 = extractvalue { i32, i1 } %354, 0, !nosanitize !46
  %359 = tail call i32 @llvm.umin.i32(i32 %283, i32 %358)
  %360 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %353, i32 %359), !nosanitize !46
  %361 = extractvalue { i32, i1 } %360, 1, !nosanitize !46
  br i1 %361, label %362, label %363, !prof !47, !nosanitize !46

362:                                              ; preds = %357
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

363:                                              ; preds = %357
  %364 = extractvalue { i32, i1 } %360, 0, !nosanitize !46
  store i32 %364, ptr %352, align 4, !tbaa !67
  br label %365

365:                                              ; preds = %363, %294
  %366 = phi i32 [ %350, %363 ], [ %301, %294 ]
  %367 = zext i32 %366 to i64
  store i64 %367, ptr %20, align 8, !tbaa !65
  br label %368

368:                                              ; preds = %365, %288
  %369 = phi i64 [ %290, %288 ], [ %367, %365 ]
  %370 = phi i32 [ %289, %288 ], [ %366, %365 ]
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %372 = load i64, ptr %371, align 8, !tbaa !40
  %373 = icmp ult i64 %372, %369
  br i1 %373, label %374, label %375

374:                                              ; preds = %368
  store i64 %369, ptr %371, align 8, !tbaa !40
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
  %381 = load i32, ptr %380, align 8, !tbaa !73
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %378
  %384 = load i64, ptr %20, align 8, !tbaa !65
  %385 = icmp eq i64 %384, %369
  br i1 %385, label %602, label %386

386:                                              ; preds = %383, %378, %376, %376
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %388 = load i64, ptr %387, align 8, !tbaa !52
  %389 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %388, i64 %369), !nosanitize !46
  %390 = extractvalue { i64, i1 } %389, 1, !nosanitize !46
  br i1 %390, label %391, label %392, !prof !47, !nosanitize !46

391:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

392:                                              ; preds = %386
  %393 = extractvalue { i64, i1 } %389, 0, !nosanitize !46
  %394 = trunc i64 %393 to i32
  %395 = load ptr, ptr %0, align 8, !tbaa !19
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 8
  %397 = load i32, ptr %396, align 8, !tbaa !73
  %398 = icmp ugt i32 %397, %394
  br i1 %398, label %399, label %431

399:                                              ; preds = %392
  %400 = load i64, ptr %20, align 8, !tbaa !65
  %401 = load i32, ptr %10, align 8, !tbaa !31
  %402 = zext i32 %401 to i64
  %403 = icmp slt i64 %400, %402
  br i1 %403, label %431, label %404

404:                                              ; preds = %399
  %405 = sub nsw i64 %400, %402
  store i64 %405, ptr %20, align 8, !tbaa !65
  %406 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %370, i32 %401), !nosanitize !46
  %407 = extractvalue { i32, i1 } %406, 1, !nosanitize !46
  br i1 %407, label %408, label %409, !prof !47, !nosanitize !46

408:                                              ; preds = %404
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

409:                                              ; preds = %404
  %410 = extractvalue { i32, i1 } %406, 0, !nosanitize !46
  store i32 %410, ptr %19, align 4, !tbaa !64
  %411 = load ptr, ptr %26, align 8, !tbaa !37
  %412 = getelementptr inbounds nuw i8, ptr %411, i64 %402
  %413 = zext i32 %410 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %411, ptr align 1 %412, i64 %413, i1 false)
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %415 = load i32, ptr %414, align 8, !tbaa !99
  %416 = icmp ult i32 %415, 2
  br i1 %416, label %417, label %419

417:                                              ; preds = %409
  %418 = add nuw nsw i32 %415, 1
  store i32 %418, ptr %414, align 8, !tbaa !99
  br label %419

419:                                              ; preds = %417, %409
  %420 = load i32, ptr %10, align 8, !tbaa !31
  %421 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %394, i32 %420), !nosanitize !46
  %422 = extractvalue { i32, i1 } %421, 0, !nosanitize !46
  %423 = extractvalue { i32, i1 } %421, 1, !nosanitize !46
  br i1 %423, label %424, label %425, !prof !47, !nosanitize !46

424:                                              ; preds = %419
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

425:                                              ; preds = %419
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %427 = load i32, ptr %426, align 4, !tbaa !67
  %428 = load i32, ptr %19, align 4, !tbaa !64
  %429 = icmp ugt i32 %427, %428
  br i1 %429, label %430, label %431

430:                                              ; preds = %425
  store i32 %428, ptr %426, align 4, !tbaa !67
  br label %431

431:                                              ; preds = %430, %425, %399, %392
  %432 = phi i32 [ %428, %430 ], [ %428, %425 ], [ %370, %399 ], [ %370, %392 ]
  %433 = phi i32 [ %422, %430 ], [ %422, %425 ], [ %394, %399 ], [ %394, %392 ]
  %434 = load ptr, ptr %0, align 8, !tbaa !19
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 8
  %436 = load i32, ptr %435, align 8, !tbaa !73
  %437 = tail call i32 @llvm.umin.i32(i32 %433, i32 %436)
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %492, label %439

439:                                              ; preds = %431
  %440 = load ptr, ptr %26, align 8, !tbaa !37
  %441 = zext i32 %432 to i64
  %442 = getelementptr inbounds nuw i8, ptr %440, i64 %441
  %443 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %436, i32 %437), !nosanitize !46
  %444 = extractvalue { i32, i1 } %443, 1, !nosanitize !46
  br i1 %444, label %445, label %446, !prof !47, !nosanitize !46

445:                                              ; preds = %439
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

446:                                              ; preds = %439
  %447 = extractvalue { i32, i1 } %443, 0, !nosanitize !46
  store i32 %447, ptr %435, align 8, !tbaa !73
  %448 = load ptr, ptr %434, align 8, !tbaa !74
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
  %456 = load i64, ptr %455, align 8, !tbaa !72
  %457 = tail call i64 @adler32(i64 noundef %456, ptr noundef %442, i32 noundef %437) #11
  store i64 %457, ptr %455, align 8, !tbaa !72
  br label %462

458:                                              ; preds = %446
  %459 = getelementptr inbounds nuw i8, ptr %434, i64 96
  %460 = load i64, ptr %459, align 8, !tbaa !72
  %461 = tail call i64 @crc32(i64 noundef %460, ptr noundef %442, i32 noundef %437) #11
  store i64 %461, ptr %459, align 8, !tbaa !72
  br label %462

462:                                              ; preds = %458, %454, %446
  %463 = load ptr, ptr %434, align 8, !tbaa !74
  %464 = getelementptr inbounds nuw i8, ptr %463, i64 %449
  store ptr %464, ptr %434, align 8, !tbaa !74
  %465 = getelementptr inbounds nuw i8, ptr %434, i64 16
  %466 = load i64, ptr %465, align 8, !tbaa !86
  %467 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %466, i64 %449), !nosanitize !46
  %468 = extractvalue { i64, i1 } %467, 1, !nosanitize !46
  br i1 %468, label %469, label %470, !prof !47, !nosanitize !46

469:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

470:                                              ; preds = %462
  %471 = extractvalue { i64, i1 } %467, 0, !nosanitize !46
  store i64 %471, ptr %465, align 8, !tbaa !86
  %472 = load i32, ptr %19, align 4, !tbaa !64
  %473 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %472, i32 %437), !nosanitize !46
  %474 = extractvalue { i32, i1 } %473, 1, !nosanitize !46
  br i1 %474, label %475, label %476, !prof !47, !nosanitize !46

475:                                              ; preds = %470
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

476:                                              ; preds = %470
  %477 = extractvalue { i32, i1 } %473, 0, !nosanitize !46
  store i32 %477, ptr %19, align 4, !tbaa !64
  %478 = load i32, ptr %10, align 8, !tbaa !31
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %480 = load i32, ptr %479, align 4, !tbaa !67
  %481 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %478, i32 %480), !nosanitize !46
  %482 = extractvalue { i32, i1 } %481, 1, !nosanitize !46
  br i1 %482, label %483, label %484, !prof !47, !nosanitize !46

483:                                              ; preds = %476
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

484:                                              ; preds = %476
  %485 = extractvalue { i32, i1 } %481, 0, !nosanitize !46
  %486 = tail call i32 @llvm.umin.i32(i32 %437, i32 %485)
  %487 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %480, i32 %486), !nosanitize !46
  %488 = extractvalue { i32, i1 } %487, 1, !nosanitize !46
  br i1 %488, label %489, label %490, !prof !47, !nosanitize !46

489:                                              ; preds = %484
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

490:                                              ; preds = %484
  %491 = extractvalue { i32, i1 } %487, 0, !nosanitize !46
  store i32 %491, ptr %479, align 4, !tbaa !67
  br label %492

492:                                              ; preds = %490, %431
  %493 = phi i32 [ %477, %490 ], [ %432, %431 ]
  %494 = load i64, ptr %371, align 8, !tbaa !40
  %495 = zext i32 %493 to i64
  %496 = icmp ult i64 %494, %495
  br i1 %496, label %497, label %498

497:                                              ; preds = %492
  store i64 %495, ptr %371, align 8, !tbaa !40
  br label %498

498:                                              ; preds = %497, %492
  %499 = load i32, ptr %18, align 4, !tbaa !94
  %500 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %499, i32 42), !nosanitize !46
  %501 = extractvalue { i32, i1 } %500, 1, !nosanitize !46
  br i1 %501, label %502, label %503, !prof !47, !nosanitize !46

502:                                              ; preds = %544, %498
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

503:                                              ; preds = %498
  %504 = extractvalue { i32, i1 } %500, 0, !nosanitize !46
  %505 = lshr i32 %504, 3
  %506 = load i64, ptr %3, align 8, !tbaa !43
  %507 = zext nneg i32 %505 to i64
  %508 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %506, i64 %507), !nosanitize !46
  %509 = extractvalue { i64, i1 } %508, 1, !nosanitize !46
  br i1 %509, label %510, label %511, !prof !47, !nosanitize !46

510:                                              ; preds = %503
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

511:                                              ; preds = %503
  %512 = extractvalue { i64, i1 } %508, 0, !nosanitize !46
  %513 = tail call i64 @llvm.umin.i64(i64 %512, i64 65535)
  %514 = trunc nuw nsw i64 %513 to i32
  %515 = load i64, ptr %20, align 8, !tbaa !65
  %516 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %495, i64 %515), !nosanitize !46
  %517 = extractvalue { i64, i1 } %516, 1, !nosanitize !46
  br i1 %517, label %518, label %519, !prof !47, !nosanitize !46

518:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

519:                                              ; preds = %511
  %520 = load i32, ptr %10, align 8, !tbaa !31
  %521 = tail call i32 @llvm.umin.i32(i32 %520, i32 %514)
  %522 = extractvalue { i64, i1 } %516, 0, !nosanitize !46
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
  %532 = load i32, ptr %531, align 8, !tbaa !73
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %602

534:                                              ; preds = %529, %519
  %535 = tail call i32 @llvm.umin.i32(i32 %514, i32 %523)
  br i1 %23, label %536, label %544

536:                                              ; preds = %534
  %537 = load ptr, ptr %0, align 8, !tbaa !19
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 8
  %539 = load i32, ptr %538, align 8, !tbaa !73
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %544

541:                                              ; preds = %536
  %542 = icmp uge i32 %514, %523
  %543 = zext i1 %542 to i32
  br label %544

544:                                              ; preds = %541, %536, %534
  %545 = phi i32 [ 0, %536 ], [ 0, %534 ], [ %543, %541 ]
  %546 = load ptr, ptr %26, align 8, !tbaa !37
  %547 = getelementptr inbounds i8, ptr %546, i64 %515
  %548 = zext nneg i32 %535 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %547, i64 noundef %548, i32 noundef %545) #11
  %549 = load i64, ptr %20, align 8, !tbaa !65
  %550 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %549, i64 %548), !nosanitize !46
  %551 = extractvalue { i64, i1 } %550, 1, !nosanitize !46
  br i1 %551, label %502, label %552, !prof !47, !nosanitize !46

552:                                              ; preds = %544
  %553 = extractvalue { i64, i1 } %550, 0, !nosanitize !46
  store i64 %553, ptr %20, align 8, !tbaa !65
  %554 = load ptr, ptr %0, align 8, !tbaa !19
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 56
  %556 = load ptr, ptr %555, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %556) #11
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 40
  %558 = load i64, ptr %557, align 8, !tbaa !90
  %559 = getelementptr inbounds nuw i8, ptr %554, i64 32
  %560 = load i32, ptr %559, align 8, !tbaa !101
  %561 = zext i32 %560 to i64
  %562 = tail call i64 @llvm.umin.i64(i64 %558, i64 %561)
  %563 = trunc nuw i64 %562 to i32
  %564 = icmp eq i64 %562, 0
  br i1 %564, label %597, label %565

565:                                              ; preds = %552
  %566 = getelementptr inbounds nuw i8, ptr %554, i64 24
  %567 = load ptr, ptr %566, align 8, !tbaa !100
  %568 = getelementptr inbounds nuw i8, ptr %556, i64 32
  %569 = load ptr, ptr %568, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %567, ptr align 1 %569, i64 %562, i1 false)
  %570 = load ptr, ptr %566, align 8, !tbaa !100
  %571 = getelementptr inbounds nuw i8, ptr %570, i64 %562
  store ptr %571, ptr %566, align 8, !tbaa !100
  %572 = load ptr, ptr %568, align 8, !tbaa !91
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 %562
  store ptr %573, ptr %568, align 8, !tbaa !91
  %574 = getelementptr inbounds nuw i8, ptr %554, i64 40
  %575 = load i64, ptr %574, align 8, !tbaa !102
  %576 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %575, i64 %562), !nosanitize !46
  %577 = extractvalue { i64, i1 } %576, 1, !nosanitize !46
  br i1 %577, label %578, label %579, !prof !47, !nosanitize !46

578:                                              ; preds = %565
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

579:                                              ; preds = %565
  %580 = extractvalue { i64, i1 } %576, 0, !nosanitize !46
  store i64 %580, ptr %574, align 8, !tbaa !102
  %581 = load i32, ptr %559, align 8, !tbaa !101
  %582 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %581, i32 %563), !nosanitize !46
  %583 = extractvalue { i32, i1 } %582, 1, !nosanitize !46
  br i1 %583, label %584, label %585, !prof !47, !nosanitize !46

584:                                              ; preds = %579
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

585:                                              ; preds = %579
  %586 = extractvalue { i32, i1 } %582, 0, !nosanitize !46
  store i32 %586, ptr %559, align 8, !tbaa !101
  %587 = load i64, ptr %557, align 8, !tbaa !90
  %588 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %587, i64 %562), !nosanitize !46
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !46
  br i1 %589, label %590, label %591, !prof !47, !nosanitize !46

590:                                              ; preds = %585
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

591:                                              ; preds = %585
  %592 = extractvalue { i64, i1 } %588, 0, !nosanitize !46
  store i64 %592, ptr %557, align 8, !tbaa !90
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %597

594:                                              ; preds = %591
  %595 = getelementptr inbounds nuw i8, ptr %556, i64 16
  %596 = load ptr, ptr %595, align 8, !tbaa !42
  store ptr %596, ptr %568, align 8, !tbaa !91
  br label %597

597:                                              ; preds = %594, %591, %552
  %598 = icmp eq i32 %545, 0
  br i1 %598, label %602, label %599

599:                                              ; preds = %597, %375
  %600 = phi i32 [ 3, %375 ], [ 2, %597 ]
  %601 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %601, align 8, !tbaa !95
  br label %602

602:                                              ; preds = %599, %597, %529, %525, %383
  %603 = phi i32 [ 0, %529 ], [ 1, %383 ], [ 0, %525 ], [ 0, %597 ], [ %600, %599 ]
  ret i32 %603
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_huff(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %12

12:                                               ; preds = %136, %2
  %13 = load i32, ptr %3, align 4, !tbaa !66
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %16 = load i32, ptr %3, align 4, !tbaa !66
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %275, label %137

20:                                               ; preds = %15, %12
  store i32 0, ptr %4, align 8, !tbaa !69
  %21 = load ptr, ptr %5, align 8, !tbaa !37
  %22 = load i32, ptr %6, align 4, !tbaa !64
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !8
  %26 = load i32, ptr %8, align 4, !tbaa !127
  %27 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %26, i32 1), !nosanitize !46
  %28 = extractvalue { i32, i1 } %27, 1, !nosanitize !46
  br i1 %28, label %29, label %30, !prof !47, !nosanitize !46

29:                                               ; preds = %20
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

30:                                               ; preds = %20
  %31 = extractvalue { i32, i1 } %27, 0, !nosanitize !46
  %32 = load ptr, ptr %7, align 8, !tbaa !45
  store i32 %31, ptr %8, align 4, !tbaa !127
  %33 = zext i32 %26 to i64
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !8
  %35 = load i32, ptr %8, align 4, !tbaa !127
  %36 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %35, i32 1), !nosanitize !46
  %37 = extractvalue { i32, i1 } %36, 1, !nosanitize !46
  br i1 %37, label %38, label %39, !prof !47, !nosanitize !46

38:                                               ; preds = %30
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

39:                                               ; preds = %30
  %40 = extractvalue { i32, i1 } %36, 0, !nosanitize !46
  %41 = load ptr, ptr %7, align 8, !tbaa !45
  store i32 %40, ptr %8, align 4, !tbaa !127
  %42 = zext i32 %35 to i64
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 %42
  store i8 0, ptr %43, align 1, !tbaa !8
  %44 = load i32, ptr %8, align 4, !tbaa !127
  %45 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 1), !nosanitize !46
  %46 = extractvalue { i32, i1 } %45, 1, !nosanitize !46
  br i1 %46, label %47, label %48, !prof !47, !nosanitize !46

47:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

48:                                               ; preds = %39
  %49 = extractvalue { i32, i1 } %45, 0, !nosanitize !46
  %50 = load ptr, ptr %7, align 8, !tbaa !45
  store i32 %49, ptr %8, align 4, !tbaa !127
  %51 = zext i32 %44 to i64
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 %51
  store i8 %25, ptr %52, align 1, !tbaa !8
  %53 = zext i8 %25 to i64
  %54 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %53
  %55 = load i16, ptr %54, align 4, !tbaa !8
  %56 = add i16 %55, 1
  store i16 %56, ptr %54, align 4, !tbaa !8
  %57 = load i32, ptr %8, align 4, !tbaa !127
  %58 = load i32, ptr %10, align 8, !tbaa !48
  %59 = icmp eq i32 %57, %58
  %60 = load i32, ptr %3, align 4, !tbaa !66
  %61 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %60, i32 1), !nosanitize !46
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !46
  br i1 %62, label %63, label %64, !prof !47, !nosanitize !46

63:                                               ; preds = %216, %147, %79, %48
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

64:                                               ; preds = %48
  %65 = extractvalue { i32, i1 } %61, 0, !nosanitize !46
  store i32 %65, ptr %3, align 4, !tbaa !66
  %66 = load i32, ptr %6, align 4, !tbaa !64
  %67 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %66, i32 1), !nosanitize !46
  %68 = extractvalue { i32, i1 } %67, 1, !nosanitize !46
  br i1 %68, label %69, label %70, !prof !47, !nosanitize !46

69:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

70:                                               ; preds = %64
  %71 = extractvalue { i32, i1 } %67, 0, !nosanitize !46
  store i32 %71, ptr %6, align 4, !tbaa !64
  br i1 %59, label %72, label %136

72:                                               ; preds = %70
  %73 = load i64, ptr %11, align 8, !tbaa !65
  %74 = icmp sgt i64 %73, -1
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load ptr, ptr %5, align 8, !tbaa !37
  %77 = and i64 %73, 4294967295
  %78 = getelementptr inbounds nuw i8, ptr %76, i64 %77
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi ptr [ %78, %75 ], [ null, %72 ]
  %81 = zext i32 %71 to i64
  %82 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %81, i64 %73), !nosanitize !46
  %83 = extractvalue { i64, i1 } %82, 1, !nosanitize !46
  br i1 %83, label %63, label %84, !prof !47, !nosanitize !46

84:                                               ; preds = %79
  %85 = extractvalue { i64, i1 } %82, 0, !nosanitize !46
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %80, i64 noundef %85, i32 noundef 0) #11
  %86 = load i32, ptr %6, align 4, !tbaa !64
  %87 = zext i32 %86 to i64
  store i64 %87, ptr %11, align 8, !tbaa !65
  %88 = load ptr, ptr %0, align 8, !tbaa !19
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 56
  %90 = load ptr, ptr %89, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %90) #11
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 40
  %92 = load i64, ptr %91, align 8, !tbaa !90
  %93 = getelementptr inbounds nuw i8, ptr %88, i64 32
  %94 = load i32, ptr %93, align 8, !tbaa !101
  %95 = zext i32 %94 to i64
  %96 = tail call i64 @llvm.umin.i64(i64 %92, i64 %95)
  %97 = trunc nuw i64 %96 to i32
  %98 = icmp eq i64 %96, 0
  br i1 %98, label %131, label %99

99:                                               ; preds = %84
  %100 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %101 = load ptr, ptr %100, align 8, !tbaa !100
  %102 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %103 = load ptr, ptr %102, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %101, ptr align 1 %103, i64 %96, i1 false)
  %104 = load ptr, ptr %100, align 8, !tbaa !100
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 %96
  store ptr %105, ptr %100, align 8, !tbaa !100
  %106 = load ptr, ptr %102, align 8, !tbaa !91
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 %96
  store ptr %107, ptr %102, align 8, !tbaa !91
  %108 = getelementptr inbounds nuw i8, ptr %88, i64 40
  %109 = load i64, ptr %108, align 8, !tbaa !102
  %110 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %109, i64 %96), !nosanitize !46
  %111 = extractvalue { i64, i1 } %110, 1, !nosanitize !46
  br i1 %111, label %112, label %113, !prof !47, !nosanitize !46

112:                                              ; preds = %99
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

113:                                              ; preds = %99
  %114 = extractvalue { i64, i1 } %110, 0, !nosanitize !46
  store i64 %114, ptr %108, align 8, !tbaa !102
  %115 = load i32, ptr %93, align 8, !tbaa !101
  %116 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %115, i32 %97), !nosanitize !46
  %117 = extractvalue { i32, i1 } %116, 1, !nosanitize !46
  br i1 %117, label %118, label %119, !prof !47, !nosanitize !46

118:                                              ; preds = %113
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

119:                                              ; preds = %113
  %120 = extractvalue { i32, i1 } %116, 0, !nosanitize !46
  store i32 %120, ptr %93, align 8, !tbaa !101
  %121 = load i64, ptr %91, align 8, !tbaa !90
  %122 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %121, i64 %96), !nosanitize !46
  %123 = extractvalue { i64, i1 } %122, 1, !nosanitize !46
  br i1 %123, label %124, label %125, !prof !47, !nosanitize !46

124:                                              ; preds = %119
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

125:                                              ; preds = %119
  %126 = extractvalue { i64, i1 } %122, 0, !nosanitize !46
  store i64 %126, ptr %91, align 8, !tbaa !90
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = getelementptr inbounds nuw i8, ptr %90, i64 16
  %130 = load ptr, ptr %129, align 8, !tbaa !42
  store ptr %130, ptr %102, align 8, !tbaa !91
  br label %131

131:                                              ; preds = %128, %125, %84
  %132 = load ptr, ptr %0, align 8, !tbaa !19
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 32
  %134 = load i32, ptr %133, align 8, !tbaa !101
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %275, label %136

136:                                              ; preds = %131, %70
  br label %12

137:                                              ; preds = %18
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 0, ptr %138, align 4, !tbaa !67
  %139 = icmp eq i32 %1, 4
  br i1 %139, label %140, label %206

140:                                              ; preds = %137
  %141 = load i64, ptr %11, align 8, !tbaa !65
  %142 = icmp sgt i64 %141, -1
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load ptr, ptr %5, align 8, !tbaa !37
  %145 = and i64 %141, 4294967295
  %146 = getelementptr inbounds nuw i8, ptr %144, i64 %145
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi ptr [ %146, %143 ], [ null, %140 ]
  %149 = load i32, ptr %6, align 4, !tbaa !64
  %150 = zext i32 %149 to i64
  %151 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %150, i64 %141), !nosanitize !46
  %152 = extractvalue { i64, i1 } %151, 1, !nosanitize !46
  br i1 %152, label %63, label %153, !prof !47, !nosanitize !46

153:                                              ; preds = %147
  %154 = extractvalue { i64, i1 } %151, 0, !nosanitize !46
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %148, i64 noundef %154, i32 noundef 1) #11
  %155 = load i32, ptr %6, align 4, !tbaa !64
  %156 = zext i32 %155 to i64
  store i64 %156, ptr %11, align 8, !tbaa !65
  %157 = load ptr, ptr %0, align 8, !tbaa !19
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 56
  %159 = load ptr, ptr %158, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %159) #11
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 40
  %161 = load i64, ptr %160, align 8, !tbaa !90
  %162 = getelementptr inbounds nuw i8, ptr %157, i64 32
  %163 = load i32, ptr %162, align 8, !tbaa !101
  %164 = zext i32 %163 to i64
  %165 = tail call i64 @llvm.umin.i64(i64 %161, i64 %164)
  %166 = trunc nuw i64 %165 to i32
  %167 = icmp eq i64 %165, 0
  br i1 %167, label %200, label %168

168:                                              ; preds = %153
  %169 = getelementptr inbounds nuw i8, ptr %157, i64 24
  %170 = load ptr, ptr %169, align 8, !tbaa !100
  %171 = getelementptr inbounds nuw i8, ptr %159, i64 32
  %172 = load ptr, ptr %171, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %170, ptr align 1 %172, i64 %165, i1 false)
  %173 = load ptr, ptr %169, align 8, !tbaa !100
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 %165
  store ptr %174, ptr %169, align 8, !tbaa !100
  %175 = load ptr, ptr %171, align 8, !tbaa !91
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 %165
  store ptr %176, ptr %171, align 8, !tbaa !91
  %177 = getelementptr inbounds nuw i8, ptr %157, i64 40
  %178 = load i64, ptr %177, align 8, !tbaa !102
  %179 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %178, i64 %165), !nosanitize !46
  %180 = extractvalue { i64, i1 } %179, 1, !nosanitize !46
  br i1 %180, label %181, label %182, !prof !47, !nosanitize !46

181:                                              ; preds = %168
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

182:                                              ; preds = %168
  %183 = extractvalue { i64, i1 } %179, 0, !nosanitize !46
  store i64 %183, ptr %177, align 8, !tbaa !102
  %184 = load i32, ptr %162, align 8, !tbaa !101
  %185 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %184, i32 %166), !nosanitize !46
  %186 = extractvalue { i32, i1 } %185, 1, !nosanitize !46
  br i1 %186, label %187, label %188, !prof !47, !nosanitize !46

187:                                              ; preds = %182
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

188:                                              ; preds = %182
  %189 = extractvalue { i32, i1 } %185, 0, !nosanitize !46
  store i32 %189, ptr %162, align 8, !tbaa !101
  %190 = load i64, ptr %160, align 8, !tbaa !90
  %191 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %190, i64 %165), !nosanitize !46
  %192 = extractvalue { i64, i1 } %191, 1, !nosanitize !46
  br i1 %192, label %193, label %194, !prof !47, !nosanitize !46

193:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

194:                                              ; preds = %188
  %195 = extractvalue { i64, i1 } %191, 0, !nosanitize !46
  store i64 %195, ptr %160, align 8, !tbaa !90
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = getelementptr inbounds nuw i8, ptr %159, i64 16
  %199 = load ptr, ptr %198, align 8, !tbaa !42
  store ptr %199, ptr %171, align 8, !tbaa !91
  br label %200

200:                                              ; preds = %197, %194, %153
  %201 = load ptr, ptr %0, align 8, !tbaa !19
  %202 = getelementptr inbounds nuw i8, ptr %201, i64 32
  %203 = load i32, ptr %202, align 8, !tbaa !101
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, i32 2, i32 3
  br label %275

206:                                              ; preds = %137
  %207 = load i32, ptr %8, align 4, !tbaa !127
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %274, label %209

209:                                              ; preds = %206
  %210 = load i64, ptr %11, align 8, !tbaa !65
  %211 = icmp sgt i64 %210, -1
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load ptr, ptr %5, align 8, !tbaa !37
  %214 = and i64 %210, 4294967295
  %215 = getelementptr inbounds nuw i8, ptr %213, i64 %214
  br label %216

216:                                              ; preds = %212, %209
  %217 = phi ptr [ %215, %212 ], [ null, %209 ]
  %218 = load i32, ptr %6, align 4, !tbaa !64
  %219 = zext i32 %218 to i64
  %220 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %219, i64 %210), !nosanitize !46
  %221 = extractvalue { i64, i1 } %220, 1, !nosanitize !46
  br i1 %221, label %63, label %222, !prof !47, !nosanitize !46

222:                                              ; preds = %216
  %223 = extractvalue { i64, i1 } %220, 0, !nosanitize !46
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %217, i64 noundef %223, i32 noundef 0) #11
  %224 = load i32, ptr %6, align 4, !tbaa !64
  %225 = zext i32 %224 to i64
  store i64 %225, ptr %11, align 8, !tbaa !65
  %226 = load ptr, ptr %0, align 8, !tbaa !19
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 56
  %228 = load ptr, ptr %227, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %228) #11
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 40
  %230 = load i64, ptr %229, align 8, !tbaa !90
  %231 = getelementptr inbounds nuw i8, ptr %226, i64 32
  %232 = load i32, ptr %231, align 8, !tbaa !101
  %233 = zext i32 %232 to i64
  %234 = tail call i64 @llvm.umin.i64(i64 %230, i64 %233)
  %235 = trunc nuw i64 %234 to i32
  %236 = icmp eq i64 %234, 0
  br i1 %236, label %269, label %237

237:                                              ; preds = %222
  %238 = getelementptr inbounds nuw i8, ptr %226, i64 24
  %239 = load ptr, ptr %238, align 8, !tbaa !100
  %240 = getelementptr inbounds nuw i8, ptr %228, i64 32
  %241 = load ptr, ptr %240, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %239, ptr align 1 %241, i64 %234, i1 false)
  %242 = load ptr, ptr %238, align 8, !tbaa !100
  %243 = getelementptr inbounds nuw i8, ptr %242, i64 %234
  store ptr %243, ptr %238, align 8, !tbaa !100
  %244 = load ptr, ptr %240, align 8, !tbaa !91
  %245 = getelementptr inbounds nuw i8, ptr %244, i64 %234
  store ptr %245, ptr %240, align 8, !tbaa !91
  %246 = getelementptr inbounds nuw i8, ptr %226, i64 40
  %247 = load i64, ptr %246, align 8, !tbaa !102
  %248 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %247, i64 %234), !nosanitize !46
  %249 = extractvalue { i64, i1 } %248, 1, !nosanitize !46
  br i1 %249, label %250, label %251, !prof !47, !nosanitize !46

250:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

251:                                              ; preds = %237
  %252 = extractvalue { i64, i1 } %248, 0, !nosanitize !46
  store i64 %252, ptr %246, align 8, !tbaa !102
  %253 = load i32, ptr %231, align 8, !tbaa !101
  %254 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %253, i32 %235), !nosanitize !46
  %255 = extractvalue { i32, i1 } %254, 1, !nosanitize !46
  br i1 %255, label %256, label %257, !prof !47, !nosanitize !46

256:                                              ; preds = %251
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

257:                                              ; preds = %251
  %258 = extractvalue { i32, i1 } %254, 0, !nosanitize !46
  store i32 %258, ptr %231, align 8, !tbaa !101
  %259 = load i64, ptr %229, align 8, !tbaa !90
  %260 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %259, i64 %234), !nosanitize !46
  %261 = extractvalue { i64, i1 } %260, 1, !nosanitize !46
  br i1 %261, label %262, label %263, !prof !47, !nosanitize !46

262:                                              ; preds = %257
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

263:                                              ; preds = %257
  %264 = extractvalue { i64, i1 } %260, 0, !nosanitize !46
  store i64 %264, ptr %229, align 8, !tbaa !90
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = getelementptr inbounds nuw i8, ptr %228, i64 16
  %268 = load ptr, ptr %267, align 8, !tbaa !42
  store ptr %268, ptr %240, align 8, !tbaa !91
  br label %269

269:                                              ; preds = %266, %263, %222
  %270 = load ptr, ptr %0, align 8, !tbaa !19
  %271 = getelementptr inbounds nuw i8, ptr %270, i64 32
  %272 = load i32, ptr %271, align 8, !tbaa !101
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %269, %206
  br label %275

275:                                              ; preds = %274, %269, %200, %131, %18
  %276 = phi i32 [ 0, %18 ], [ %205, %200 ], [ 0, %269 ], [ 1, %274 ], [ 0, %131 ]
  ret i32 %276
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_rle(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %12 = getelementptr i8, ptr %0, i64 1240
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %15

15:                                               ; preds = %175, %2
  %16 = load i32, ptr %3, align 4, !tbaa !66
  %17 = icmp ult i32 %16, 259
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  store i32 0, ptr %4, align 8, !tbaa !69
  %19 = load i32, ptr %6, align 4, !tbaa !64
  br label %29

20:                                               ; preds = %15
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %21 = load i32, ptr %3, align 4, !tbaa !66
  %22 = icmp ult i32 %21, 259
  %23 = and i1 %5, %22
  br i1 %23, label %434, label %24

24:                                               ; preds = %20
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %296, label %26

26:                                               ; preds = %24
  store i32 0, ptr %4, align 8, !tbaa !69
  %27 = icmp ugt i32 %21, 2
  %28 = load i32, ptr %6, align 4, !tbaa !64
  br i1 %27, label %29, label %176

29:                                               ; preds = %26, %18
  %30 = phi i32 [ %19, %18 ], [ %28, %26 ]
  %31 = phi i32 [ %16, %18 ], [ %21, %26 ]
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %176, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %7, align 8, !tbaa !37
  %35 = zext i32 %30 to i64
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 %35
  %37 = getelementptr inbounds i8, ptr %36, i64 -1
  %38 = load i8, ptr %37, align 1, !tbaa !8
  %39 = load i8, ptr %36, align 1, !tbaa !8
  %40 = icmp eq i8 %38, %39
  br i1 %40, label %41, label %176

41:                                               ; preds = %33
  %42 = getelementptr inbounds nuw i8, ptr %36, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !8
  %44 = icmp eq i8 %38, %43
  br i1 %44, label %45, label %176

45:                                               ; preds = %41
  %46 = getelementptr inbounds nuw i8, ptr %36, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !8
  %48 = icmp eq i8 %38, %47
  br i1 %48, label %49, label %176

49:                                               ; preds = %45
  %50 = getelementptr inbounds nuw i8, ptr %36, i64 258
  br label %51

51:                                               ; preds = %81, %49
  %52 = phi i64 [ 2, %49 ], [ %82, %81 ]
  %53 = getelementptr inbounds nuw i8, ptr %36, i64 %52
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !8
  %56 = icmp eq i8 %38, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %51
  %58 = getelementptr inbounds nuw i8, ptr %53, i64 2
  %59 = load i8, ptr %58, align 1, !tbaa !8
  %60 = icmp eq i8 %38, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %53, i64 3
  %63 = load i8, ptr %62, align 1, !tbaa !8
  %64 = icmp eq i8 %38, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %61
  %66 = getelementptr inbounds nuw i8, ptr %53, i64 4
  %67 = load i8, ptr %66, align 1, !tbaa !8
  %68 = icmp eq i8 %38, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw i8, ptr %53, i64 5
  %71 = load i8, ptr %70, align 1, !tbaa !8
  %72 = icmp eq i8 %38, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %53, i64 6
  %75 = load i8, ptr %74, align 1, !tbaa !8
  %76 = icmp eq i8 %38, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = getelementptr inbounds nuw i8, ptr %53, i64 7
  %79 = load i8, ptr %78, align 1, !tbaa !8
  %80 = icmp eq i8 %38, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = add nuw nsw i64 %52, 8
  %83 = getelementptr inbounds nuw i8, ptr %36, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !8
  %85 = icmp eq i8 %38, %84
  %86 = icmp samesign ult i64 %52, 250
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %51, label %102, !llvm.loop !128

88:                                               ; preds = %51
  %89 = getelementptr inbounds nuw i8, ptr %53, i64 1
  br label %104

90:                                               ; preds = %57
  %91 = getelementptr inbounds nuw i8, ptr %53, i64 2
  br label %104

92:                                               ; preds = %61
  %93 = getelementptr inbounds nuw i8, ptr %53, i64 3
  br label %104

94:                                               ; preds = %65
  %95 = getelementptr inbounds nuw i8, ptr %53, i64 4
  br label %104

96:                                               ; preds = %69
  %97 = getelementptr inbounds nuw i8, ptr %53, i64 5
  br label %104

98:                                               ; preds = %73
  %99 = getelementptr inbounds nuw i8, ptr %53, i64 6
  br label %104

100:                                              ; preds = %77
  %101 = getelementptr inbounds nuw i8, ptr %53, i64 7
  br label %104

102:                                              ; preds = %81
  %103 = getelementptr inbounds nuw i8, ptr %36, i64 %82
  br label %104

104:                                              ; preds = %102, %100, %98, %96, %94, %92, %90, %88
  %105 = phi ptr [ %91, %90 ], [ %93, %92 ], [ %89, %88 ], [ %101, %100 ], [ %99, %98 ], [ %97, %96 ], [ %95, %94 ], [ %103, %102 ]
  %106 = ptrtoint ptr %50 to i64
  %107 = ptrtoint ptr %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %109), !nosanitize !46
  %111 = extractvalue { i32, i1 } %110, 1, !nosanitize !46
  br i1 %111, label %112, label %113, !prof !47, !nosanitize !46

112:                                              ; preds = %104
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

113:                                              ; preds = %104
  %114 = extractvalue { i32, i1 } %110, 0, !nosanitize !46
  %115 = tail call i32 @llvm.umin.i32(i32 %114, i32 %31)
  store i32 %115, ptr %4, align 8
  %116 = icmp ugt i32 %115, 2
  %117 = load i32, ptr %9, align 4, !tbaa !127
  br i1 %116, label %118, label %179

118:                                              ; preds = %113
  %119 = trunc i32 %115 to i8
  %120 = add i8 %119, -3
  %121 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %117, i32 1), !nosanitize !46
  %122 = extractvalue { i32, i1 } %121, 1, !nosanitize !46
  br i1 %122, label %123, label %124, !prof !47, !nosanitize !46

123:                                              ; preds = %118
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

124:                                              ; preds = %118
  %125 = extractvalue { i32, i1 } %121, 0, !nosanitize !46
  %126 = load ptr, ptr %8, align 8, !tbaa !45
  store i32 %125, ptr %9, align 4, !tbaa !127
  %127 = zext i32 %117 to i64
  %128 = getelementptr inbounds nuw i8, ptr %126, i64 %127
  store i8 1, ptr %128, align 1, !tbaa !8
  %129 = load i32, ptr %9, align 4, !tbaa !127
  %130 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %129, i32 1), !nosanitize !46
  %131 = extractvalue { i32, i1 } %130, 1, !nosanitize !46
  br i1 %131, label %132, label %133, !prof !47, !nosanitize !46

132:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

133:                                              ; preds = %124
  %134 = extractvalue { i32, i1 } %130, 0, !nosanitize !46
  %135 = load ptr, ptr %8, align 8, !tbaa !45
  store i32 %134, ptr %9, align 4, !tbaa !127
  %136 = zext i32 %129 to i64
  %137 = getelementptr inbounds nuw i8, ptr %135, i64 %136
  store i8 0, ptr %137, align 1, !tbaa !8
  %138 = load i32, ptr %9, align 4, !tbaa !127
  %139 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %138, i32 1), !nosanitize !46
  %140 = extractvalue { i32, i1 } %139, 1, !nosanitize !46
  br i1 %140, label %141, label %142, !prof !47, !nosanitize !46

141:                                              ; preds = %133
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

142:                                              ; preds = %133
  %143 = extractvalue { i32, i1 } %139, 0, !nosanitize !46
  %144 = load ptr, ptr %8, align 8, !tbaa !45
  store i32 %143, ptr %9, align 4, !tbaa !127
  %145 = zext i32 %138 to i64
  %146 = getelementptr inbounds nuw i8, ptr %144, i64 %145
  store i8 %120, ptr %146, align 1, !tbaa !8
  %147 = zext i8 %120 to i64
  %148 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !8
  %150 = zext i8 %149 to i64
  %151 = getelementptr [4 x i8], ptr %12, i64 %150
  %152 = load i16, ptr %151, align 4, !tbaa !8
  %153 = add i16 %152, 1
  store i16 %153, ptr %151, align 4, !tbaa !8
  %154 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %155
  %157 = load i16, ptr %156, align 4, !tbaa !8
  %158 = add i16 %157, 1
  store i16 %158, ptr %156, align 4, !tbaa !8
  %159 = load i32, ptr %9, align 4, !tbaa !127
  %160 = load i32, ptr %11, align 8, !tbaa !48
  %161 = icmp eq i32 %159, %160
  %162 = load i32, ptr %4, align 8, !tbaa !69
  %163 = load i32, ptr %3, align 4, !tbaa !66
  %164 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %163, i32 %162), !nosanitize !46
  %165 = extractvalue { i32, i1 } %164, 1, !nosanitize !46
  br i1 %165, label %166, label %167, !prof !47, !nosanitize !46

166:                                              ; preds = %142
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

167:                                              ; preds = %142
  %168 = extractvalue { i32, i1 } %164, 0, !nosanitize !46
  store i32 %168, ptr %3, align 4, !tbaa !66
  %169 = load i32, ptr %6, align 4, !tbaa !64
  %170 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %169, i32 %162), !nosanitize !46
  %171 = extractvalue { i32, i1 } %170, 1, !nosanitize !46
  br i1 %171, label %172, label %173, !prof !47, !nosanitize !46

172:                                              ; preds = %167
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

173:                                              ; preds = %167
  %174 = extractvalue { i32, i1 } %170, 0, !nosanitize !46
  store i32 %174, ptr %6, align 4, !tbaa !64
  store i32 0, ptr %4, align 8, !tbaa !69
  br i1 %161, label %231, label %175

175:                                              ; preds = %291, %229, %173
  br label %15

176:                                              ; preds = %45, %41, %33, %29, %26
  %177 = phi i32 [ %28, %26 ], [ %30, %29 ], [ %30, %45 ], [ %30, %41 ], [ %30, %33 ]
  %178 = load i32, ptr %9, align 4, !tbaa !127
  br label %179

179:                                              ; preds = %176, %113
  %180 = phi i32 [ %117, %113 ], [ %178, %176 ]
  %181 = phi i32 [ %30, %113 ], [ %177, %176 ]
  %182 = load ptr, ptr %7, align 8, !tbaa !37
  %183 = zext i32 %181 to i64
  %184 = getelementptr inbounds nuw i8, ptr %182, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !8
  %186 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %180, i32 1), !nosanitize !46
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !46
  br i1 %187, label %188, label %189, !prof !47, !nosanitize !46

188:                                              ; preds = %179
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

189:                                              ; preds = %179
  %190 = extractvalue { i32, i1 } %186, 0, !nosanitize !46
  %191 = load ptr, ptr %8, align 8, !tbaa !45
  store i32 %190, ptr %9, align 4, !tbaa !127
  %192 = zext i32 %180 to i64
  %193 = getelementptr inbounds nuw i8, ptr %191, i64 %192
  store i8 0, ptr %193, align 1, !tbaa !8
  %194 = load i32, ptr %9, align 4, !tbaa !127
  %195 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %194, i32 1), !nosanitize !46
  %196 = extractvalue { i32, i1 } %195, 1, !nosanitize !46
  br i1 %196, label %197, label %198, !prof !47, !nosanitize !46

197:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

198:                                              ; preds = %189
  %199 = extractvalue { i32, i1 } %195, 0, !nosanitize !46
  %200 = load ptr, ptr %8, align 8, !tbaa !45
  store i32 %199, ptr %9, align 4, !tbaa !127
  %201 = zext i32 %194 to i64
  %202 = getelementptr inbounds nuw i8, ptr %200, i64 %201
  store i8 0, ptr %202, align 1, !tbaa !8
  %203 = load i32, ptr %9, align 4, !tbaa !127
  %204 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %203, i32 1), !nosanitize !46
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !46
  br i1 %205, label %206, label %207, !prof !47, !nosanitize !46

206:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

207:                                              ; preds = %198
  %208 = extractvalue { i32, i1 } %204, 0, !nosanitize !46
  %209 = load ptr, ptr %8, align 8, !tbaa !45
  store i32 %208, ptr %9, align 4, !tbaa !127
  %210 = zext i32 %203 to i64
  %211 = getelementptr inbounds nuw i8, ptr %209, i64 %210
  store i8 %185, ptr %211, align 1, !tbaa !8
  %212 = zext i8 %185 to i64
  %213 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %212
  %214 = load i16, ptr %213, align 4, !tbaa !8
  %215 = add i16 %214, 1
  store i16 %215, ptr %213, align 4, !tbaa !8
  %216 = load i32, ptr %9, align 4, !tbaa !127
  %217 = load i32, ptr %11, align 8, !tbaa !48
  %218 = icmp eq i32 %216, %217
  %219 = load i32, ptr %3, align 4, !tbaa !66
  %220 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %219, i32 1), !nosanitize !46
  %221 = extractvalue { i32, i1 } %220, 1, !nosanitize !46
  br i1 %221, label %222, label %223, !prof !47, !nosanitize !46

222:                                              ; preds = %375, %306, %239, %207
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

223:                                              ; preds = %207
  %224 = extractvalue { i32, i1 } %220, 0, !nosanitize !46
  store i32 %224, ptr %3, align 4, !tbaa !66
  %225 = load i32, ptr %6, align 4, !tbaa !64
  %226 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %225, i32 1), !nosanitize !46
  %227 = extractvalue { i32, i1 } %226, 1, !nosanitize !46
  br i1 %227, label %228, label %229, !prof !47, !nosanitize !46

228:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

229:                                              ; preds = %223
  %230 = extractvalue { i32, i1 } %226, 0, !nosanitize !46
  store i32 %230, ptr %6, align 4, !tbaa !64
  br i1 %218, label %231, label %175

231:                                              ; preds = %229, %173
  %232 = phi i32 [ %174, %173 ], [ %230, %229 ]
  %233 = load i64, ptr %14, align 8, !tbaa !65
  %234 = icmp sgt i64 %233, -1
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load ptr, ptr %7, align 8, !tbaa !37
  %237 = and i64 %233, 4294967295
  %238 = getelementptr inbounds nuw i8, ptr %236, i64 %237
  br label %239

239:                                              ; preds = %235, %231
  %240 = phi ptr [ %238, %235 ], [ null, %231 ]
  %241 = zext i32 %232 to i64
  %242 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %241, i64 %233), !nosanitize !46
  %243 = extractvalue { i64, i1 } %242, 1, !nosanitize !46
  br i1 %243, label %222, label %244, !prof !47, !nosanitize !46

244:                                              ; preds = %239
  %245 = extractvalue { i64, i1 } %242, 0, !nosanitize !46
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %240, i64 noundef %245, i32 noundef 0) #11
  %246 = load i32, ptr %6, align 4, !tbaa !64
  %247 = zext i32 %246 to i64
  store i64 %247, ptr %14, align 8, !tbaa !65
  %248 = load ptr, ptr %0, align 8, !tbaa !19
  %249 = getelementptr inbounds nuw i8, ptr %248, i64 56
  %250 = load ptr, ptr %249, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %250) #11
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 40
  %252 = load i64, ptr %251, align 8, !tbaa !90
  %253 = getelementptr inbounds nuw i8, ptr %248, i64 32
  %254 = load i32, ptr %253, align 8, !tbaa !101
  %255 = zext i32 %254 to i64
  %256 = tail call i64 @llvm.umin.i64(i64 %252, i64 %255)
  %257 = trunc nuw i64 %256 to i32
  %258 = icmp eq i64 %256, 0
  br i1 %258, label %291, label %259

259:                                              ; preds = %244
  %260 = getelementptr inbounds nuw i8, ptr %248, i64 24
  %261 = load ptr, ptr %260, align 8, !tbaa !100
  %262 = getelementptr inbounds nuw i8, ptr %250, i64 32
  %263 = load ptr, ptr %262, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %261, ptr align 1 %263, i64 %256, i1 false)
  %264 = load ptr, ptr %260, align 8, !tbaa !100
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 %256
  store ptr %265, ptr %260, align 8, !tbaa !100
  %266 = load ptr, ptr %262, align 8, !tbaa !91
  %267 = getelementptr inbounds nuw i8, ptr %266, i64 %256
  store ptr %267, ptr %262, align 8, !tbaa !91
  %268 = getelementptr inbounds nuw i8, ptr %248, i64 40
  %269 = load i64, ptr %268, align 8, !tbaa !102
  %270 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %269, i64 %256), !nosanitize !46
  %271 = extractvalue { i64, i1 } %270, 1, !nosanitize !46
  br i1 %271, label %272, label %273, !prof !47, !nosanitize !46

272:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

273:                                              ; preds = %259
  %274 = extractvalue { i64, i1 } %270, 0, !nosanitize !46
  store i64 %274, ptr %268, align 8, !tbaa !102
  %275 = load i32, ptr %253, align 8, !tbaa !101
  %276 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %275, i32 %257), !nosanitize !46
  %277 = extractvalue { i32, i1 } %276, 1, !nosanitize !46
  br i1 %277, label %278, label %279, !prof !47, !nosanitize !46

278:                                              ; preds = %273
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

279:                                              ; preds = %273
  %280 = extractvalue { i32, i1 } %276, 0, !nosanitize !46
  store i32 %280, ptr %253, align 8, !tbaa !101
  %281 = load i64, ptr %251, align 8, !tbaa !90
  %282 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %281, i64 %256), !nosanitize !46
  %283 = extractvalue { i64, i1 } %282, 1, !nosanitize !46
  br i1 %283, label %284, label %285, !prof !47, !nosanitize !46

284:                                              ; preds = %279
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

285:                                              ; preds = %279
  %286 = extractvalue { i64, i1 } %282, 0, !nosanitize !46
  store i64 %286, ptr %251, align 8, !tbaa !90
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = getelementptr inbounds nuw i8, ptr %250, i64 16
  %290 = load ptr, ptr %289, align 8, !tbaa !42
  store ptr %290, ptr %262, align 8, !tbaa !91
  br label %291

291:                                              ; preds = %288, %285, %244
  %292 = load ptr, ptr %0, align 8, !tbaa !19
  %293 = getelementptr inbounds nuw i8, ptr %292, i64 32
  %294 = load i32, ptr %293, align 8, !tbaa !101
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %434, label %175

296:                                              ; preds = %24
  %297 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 0, ptr %297, align 4, !tbaa !67
  %298 = icmp eq i32 %1, 4
  br i1 %298, label %299, label %365

299:                                              ; preds = %296
  %300 = load i64, ptr %14, align 8, !tbaa !65
  %301 = icmp sgt i64 %300, -1
  br i1 %301, label %302, label %306

302:                                              ; preds = %299
  %303 = load ptr, ptr %7, align 8, !tbaa !37
  %304 = and i64 %300, 4294967295
  %305 = getelementptr inbounds nuw i8, ptr %303, i64 %304
  br label %306

306:                                              ; preds = %302, %299
  %307 = phi ptr [ %305, %302 ], [ null, %299 ]
  %308 = load i32, ptr %6, align 4, !tbaa !64
  %309 = zext i32 %308 to i64
  %310 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %309, i64 %300), !nosanitize !46
  %311 = extractvalue { i64, i1 } %310, 1, !nosanitize !46
  br i1 %311, label %222, label %312, !prof !47, !nosanitize !46

312:                                              ; preds = %306
  %313 = extractvalue { i64, i1 } %310, 0, !nosanitize !46
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %307, i64 noundef %313, i32 noundef 1) #11
  %314 = load i32, ptr %6, align 4, !tbaa !64
  %315 = zext i32 %314 to i64
  store i64 %315, ptr %14, align 8, !tbaa !65
  %316 = load ptr, ptr %0, align 8, !tbaa !19
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 56
  %318 = load ptr, ptr %317, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %318) #11
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 40
  %320 = load i64, ptr %319, align 8, !tbaa !90
  %321 = getelementptr inbounds nuw i8, ptr %316, i64 32
  %322 = load i32, ptr %321, align 8, !tbaa !101
  %323 = zext i32 %322 to i64
  %324 = tail call i64 @llvm.umin.i64(i64 %320, i64 %323)
  %325 = trunc nuw i64 %324 to i32
  %326 = icmp eq i64 %324, 0
  br i1 %326, label %359, label %327

327:                                              ; preds = %312
  %328 = getelementptr inbounds nuw i8, ptr %316, i64 24
  %329 = load ptr, ptr %328, align 8, !tbaa !100
  %330 = getelementptr inbounds nuw i8, ptr %318, i64 32
  %331 = load ptr, ptr %330, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %329, ptr align 1 %331, i64 %324, i1 false)
  %332 = load ptr, ptr %328, align 8, !tbaa !100
  %333 = getelementptr inbounds nuw i8, ptr %332, i64 %324
  store ptr %333, ptr %328, align 8, !tbaa !100
  %334 = load ptr, ptr %330, align 8, !tbaa !91
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 %324
  store ptr %335, ptr %330, align 8, !tbaa !91
  %336 = getelementptr inbounds nuw i8, ptr %316, i64 40
  %337 = load i64, ptr %336, align 8, !tbaa !102
  %338 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %337, i64 %324), !nosanitize !46
  %339 = extractvalue { i64, i1 } %338, 1, !nosanitize !46
  br i1 %339, label %340, label %341, !prof !47, !nosanitize !46

340:                                              ; preds = %327
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

341:                                              ; preds = %327
  %342 = extractvalue { i64, i1 } %338, 0, !nosanitize !46
  store i64 %342, ptr %336, align 8, !tbaa !102
  %343 = load i32, ptr %321, align 8, !tbaa !101
  %344 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %343, i32 %325), !nosanitize !46
  %345 = extractvalue { i32, i1 } %344, 1, !nosanitize !46
  br i1 %345, label %346, label %347, !prof !47, !nosanitize !46

346:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

347:                                              ; preds = %341
  %348 = extractvalue { i32, i1 } %344, 0, !nosanitize !46
  store i32 %348, ptr %321, align 8, !tbaa !101
  %349 = load i64, ptr %319, align 8, !tbaa !90
  %350 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %349, i64 %324), !nosanitize !46
  %351 = extractvalue { i64, i1 } %350, 1, !nosanitize !46
  br i1 %351, label %352, label %353, !prof !47, !nosanitize !46

352:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

353:                                              ; preds = %347
  %354 = extractvalue { i64, i1 } %350, 0, !nosanitize !46
  store i64 %354, ptr %319, align 8, !tbaa !90
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = getelementptr inbounds nuw i8, ptr %318, i64 16
  %358 = load ptr, ptr %357, align 8, !tbaa !42
  store ptr %358, ptr %330, align 8, !tbaa !91
  br label %359

359:                                              ; preds = %356, %353, %312
  %360 = load ptr, ptr %0, align 8, !tbaa !19
  %361 = getelementptr inbounds nuw i8, ptr %360, i64 32
  %362 = load i32, ptr %361, align 8, !tbaa !101
  %363 = icmp eq i32 %362, 0
  %364 = select i1 %363, i32 2, i32 3
  br label %434

365:                                              ; preds = %296
  %366 = load i32, ptr %9, align 4, !tbaa !127
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %433, label %368

368:                                              ; preds = %365
  %369 = load i64, ptr %14, align 8, !tbaa !65
  %370 = icmp sgt i64 %369, -1
  br i1 %370, label %371, label %375

371:                                              ; preds = %368
  %372 = load ptr, ptr %7, align 8, !tbaa !37
  %373 = and i64 %369, 4294967295
  %374 = getelementptr inbounds nuw i8, ptr %372, i64 %373
  br label %375

375:                                              ; preds = %371, %368
  %376 = phi ptr [ %374, %371 ], [ null, %368 ]
  %377 = load i32, ptr %6, align 4, !tbaa !64
  %378 = zext i32 %377 to i64
  %379 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %378, i64 %369), !nosanitize !46
  %380 = extractvalue { i64, i1 } %379, 1, !nosanitize !46
  br i1 %380, label %222, label %381, !prof !47, !nosanitize !46

381:                                              ; preds = %375
  %382 = extractvalue { i64, i1 } %379, 0, !nosanitize !46
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %376, i64 noundef %382, i32 noundef 0) #11
  %383 = load i32, ptr %6, align 4, !tbaa !64
  %384 = zext i32 %383 to i64
  store i64 %384, ptr %14, align 8, !tbaa !65
  %385 = load ptr, ptr %0, align 8, !tbaa !19
  %386 = getelementptr inbounds nuw i8, ptr %385, i64 56
  %387 = load ptr, ptr %386, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %387) #11
  %388 = getelementptr inbounds nuw i8, ptr %387, i64 40
  %389 = load i64, ptr %388, align 8, !tbaa !90
  %390 = getelementptr inbounds nuw i8, ptr %385, i64 32
  %391 = load i32, ptr %390, align 8, !tbaa !101
  %392 = zext i32 %391 to i64
  %393 = tail call i64 @llvm.umin.i64(i64 %389, i64 %392)
  %394 = trunc nuw i64 %393 to i32
  %395 = icmp eq i64 %393, 0
  br i1 %395, label %428, label %396

396:                                              ; preds = %381
  %397 = getelementptr inbounds nuw i8, ptr %385, i64 24
  %398 = load ptr, ptr %397, align 8, !tbaa !100
  %399 = getelementptr inbounds nuw i8, ptr %387, i64 32
  %400 = load ptr, ptr %399, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %398, ptr align 1 %400, i64 %393, i1 false)
  %401 = load ptr, ptr %397, align 8, !tbaa !100
  %402 = getelementptr inbounds nuw i8, ptr %401, i64 %393
  store ptr %402, ptr %397, align 8, !tbaa !100
  %403 = load ptr, ptr %399, align 8, !tbaa !91
  %404 = getelementptr inbounds nuw i8, ptr %403, i64 %393
  store ptr %404, ptr %399, align 8, !tbaa !91
  %405 = getelementptr inbounds nuw i8, ptr %385, i64 40
  %406 = load i64, ptr %405, align 8, !tbaa !102
  %407 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %406, i64 %393), !nosanitize !46
  %408 = extractvalue { i64, i1 } %407, 1, !nosanitize !46
  br i1 %408, label %409, label %410, !prof !47, !nosanitize !46

409:                                              ; preds = %396
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

410:                                              ; preds = %396
  %411 = extractvalue { i64, i1 } %407, 0, !nosanitize !46
  store i64 %411, ptr %405, align 8, !tbaa !102
  %412 = load i32, ptr %390, align 8, !tbaa !101
  %413 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %412, i32 %394), !nosanitize !46
  %414 = extractvalue { i32, i1 } %413, 1, !nosanitize !46
  br i1 %414, label %415, label %416, !prof !47, !nosanitize !46

415:                                              ; preds = %410
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

416:                                              ; preds = %410
  %417 = extractvalue { i32, i1 } %413, 0, !nosanitize !46
  store i32 %417, ptr %390, align 8, !tbaa !101
  %418 = load i64, ptr %388, align 8, !tbaa !90
  %419 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %418, i64 %393), !nosanitize !46
  %420 = extractvalue { i64, i1 } %419, 1, !nosanitize !46
  br i1 %420, label %421, label %422, !prof !47, !nosanitize !46

421:                                              ; preds = %416
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

422:                                              ; preds = %416
  %423 = extractvalue { i64, i1 } %419, 0, !nosanitize !46
  store i64 %423, ptr %388, align 8, !tbaa !90
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %425, label %428

425:                                              ; preds = %422
  %426 = getelementptr inbounds nuw i8, ptr %387, i64 16
  %427 = load ptr, ptr %426, align 8, !tbaa !42
  store ptr %427, ptr %399, align 8, !tbaa !91
  br label %428

428:                                              ; preds = %425, %422, %381
  %429 = load ptr, ptr %0, align 8, !tbaa !19
  %430 = getelementptr inbounds nuw i8, ptr %429, i64 32
  %431 = load i32, ptr %430, align 8, !tbaa !101
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %434, label %433

433:                                              ; preds = %428, %365
  br label %434

434:                                              ; preds = %433, %428, %359, %291, %20
  %435 = phi i32 [ 1, %433 ], [ %364, %359 ], [ 0, %428 ], [ 0, %20 ], [ 0, %291 ]
  ret i32 %435
}

declare void @_tr_align(ptr noundef) local_unnamed_addr #1

declare void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @deflateCopy(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %132, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %132, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %132, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %132, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %132

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
  switch i32 %21, label %132 [
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
  br i1 %23, label %132, label %24

24:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %132, label %31

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
  store ptr %37, ptr %38, align 8, !tbaa !37
  %39 = load ptr, ptr %25, align 8, !tbaa !15
  %40 = load ptr, ptr %27, align 8, !tbaa !16
  %41 = load i32, ptr %35, align 8, !tbaa !31
  %42 = tail call ptr %39(ptr noundef %40, i32 noundef %41, i32 noundef 2) #11
  %43 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %42, ptr %43, align 8, !tbaa !38
  %44 = load ptr, ptr %25, align 8, !tbaa !15
  %45 = load ptr, ptr %27, align 8, !tbaa !16
  %46 = getelementptr inbounds nuw i8, ptr %29, i64 132
  %47 = load i32, ptr %46, align 4, !tbaa !34
  %48 = tail call ptr %44(ptr noundef %45, i32 noundef %47, i32 noundef 2) #11
  %49 = getelementptr inbounds nuw i8, ptr %29, i64 120
  store ptr %48, ptr %49, align 8, !tbaa !39
  %50 = load ptr, ptr %25, align 8, !tbaa !15
  %51 = load ptr, ptr %27, align 8, !tbaa !16
  %52 = getelementptr inbounds nuw i8, ptr %29, i64 5896
  %53 = load i32, ptr %52, align 8, !tbaa !41
  %54 = tail call ptr %50(ptr noundef %51, i32 noundef %53, i32 noundef 4) #11
  %55 = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %54, ptr %55, align 8, !tbaa !42
  %56 = load ptr, ptr %38, align 8, !tbaa !37
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %31
  %59 = load ptr, ptr %43, align 8, !tbaa !38
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %49, align 8, !tbaa !39
  %63 = icmp eq ptr %62, null
  %64 = icmp eq ptr %54, null
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61, %58, %31
  %67 = tail call i32 @deflateEnd(ptr noundef nonnull %0)
  br label %132

68:                                               ; preds = %61
  %69 = getelementptr inbounds nuw i8, ptr %14, i64 96
  %70 = load ptr, ptr %69, align 8, !tbaa !37
  %71 = getelementptr inbounds nuw i8, ptr %14, i64 5952
  %72 = load i64, ptr %71, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %56, ptr align 1 %70, i64 %72, i1 false)
  %73 = load ptr, ptr %43, align 8, !tbaa !38
  %74 = getelementptr inbounds nuw i8, ptr %14, i64 112
  %75 = load ptr, ptr %74, align 8, !tbaa !38
  %76 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  %77 = load i32, ptr %76, align 8, !tbaa !54
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %68
  %80 = load i32, ptr %35, align 8, !tbaa !31
  br label %93

81:                                               ; preds = %68
  %82 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %83 = load i32, ptr %82, align 4, !tbaa !64
  %84 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  %85 = load i32, ptr %84, align 4, !tbaa !67
  %86 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %85), !nosanitize !46
  %87 = extractvalue { i32, i1 } %86, 1, !nosanitize !46
  br i1 %87, label %88, label %89, !prof !47, !nosanitize !46

88:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

89:                                               ; preds = %81
  %90 = extractvalue { i32, i1 } %86, 0, !nosanitize !46
  %91 = load i32, ptr %35, align 8, !tbaa !31
  %92 = tail call i32 @llvm.umin.i32(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %79
  %94 = phi i32 [ %92, %89 ], [ %80, %79 ]
  %95 = zext i32 %94 to i64
  %96 = shl nuw nsw i64 %95, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %73, ptr align 2 %75, i64 %96, i1 false)
  %97 = load i32, ptr %46, align 4, !tbaa !34
  %98 = zext i32 %97 to i64
  %99 = shl nuw nsw i64 %98, 1
  %100 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %101 = load ptr, ptr %100, align 8, !tbaa !39
  %102 = load ptr, ptr %49, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %102, ptr align 2 %101, i64 %99, i1 false)
  %103 = load ptr, ptr %55, align 8, !tbaa !42
  %104 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %105 = load ptr, ptr %104, align 8, !tbaa !91
  %106 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %107 = load ptr, ptr %106, align 8, !tbaa !42
  %108 = ptrtoint ptr %105 to i64
  %109 = ptrtoint ptr %107 to i64
  %110 = sub i64 %108, %109
  %111 = getelementptr inbounds i8, ptr %103, i64 %110
  %112 = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %111, ptr %112, align 8, !tbaa !91
  %113 = load ptr, ptr %104, align 8, !tbaa !91
  %114 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %115 = load i64, ptr %114, align 8, !tbaa !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %111, ptr align 1 %113, i64 %115, i1 false)
  %116 = load ptr, ptr %55, align 8, !tbaa !42
  %117 = load i32, ptr %52, align 8, !tbaa !41
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds nuw i8, ptr %116, i64 %118
  %120 = getelementptr inbounds nuw i8, ptr %29, i64 5888
  store ptr %119, ptr %120, align 8, !tbaa !45
  %121 = getelementptr inbounds nuw i8, ptr %14, i64 5888
  %122 = load ptr, ptr %121, align 8, !tbaa !45
  %123 = getelementptr inbounds nuw i8, ptr %14, i64 5900
  %124 = load i32, ptr %123, align 4, !tbaa !127
  %125 = zext i32 %124 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %119, ptr align 1 %122, i64 %125, i1 false)
  %126 = getelementptr inbounds nuw i8, ptr %29, i64 212
  %127 = getelementptr inbounds nuw i8, ptr %29, i64 2904
  store ptr %126, ptr %127, align 8, !tbaa !129
  %128 = getelementptr inbounds nuw i8, ptr %29, i64 2504
  %129 = getelementptr inbounds nuw i8, ptr %29, i64 2928
  store ptr %128, ptr %129, align 8, !tbaa !130
  %130 = getelementptr inbounds nuw i8, ptr %29, i64 2748
  %131 = getelementptr inbounds nuw i8, ptr %29, i64 2952
  store ptr %130, ptr %131, align 8, !tbaa !131
  br label %132

132:                                              ; preds = %93, %66, %24, %22, %19, %16, %12, %8, %4, %2
  %133 = phi i32 [ 0, %93 ], [ -2, %22 ], [ -4, %66 ], [ -4, %24 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %133
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_fast(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %20 = getelementptr i8, ptr %0, i64 1240
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %24

24:                                               ; preds = %280, %2
  %25 = load i32, ptr %3, align 4, !tbaa !66
  %26 = icmp ult i32 %25, 262
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %28 = load i32, ptr %3, align 4, !tbaa !66
  %29 = icmp ult i32 %28, 262
  %30 = and i1 %4, %29
  br i1 %30, label %495, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %357, label %33

33:                                               ; preds = %31
  %34 = icmp ugt i32 %28, 2
  br i1 %34, label %35, label %80

35:                                               ; preds = %33, %24
  %36 = load i32, ptr %5, align 4, !tbaa !64
  %37 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %36, i32 2), !nosanitize !46
  %38 = extractvalue { i32, i1 } %37, 1, !nosanitize !46
  br i1 %38, label %39, label %40, !prof !47, !nosanitize !46

39:                                               ; preds = %35
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

40:                                               ; preds = %35
  %41 = extractvalue { i32, i1 } %37, 0, !nosanitize !46
  %42 = load ptr, ptr %6, align 8, !tbaa !37
  %43 = load i32, ptr %7, align 8, !tbaa !71
  %44 = load i32, ptr %8, align 8, !tbaa !36
  %45 = shl i32 %43, %44
  %46 = zext i32 %41 to i64
  %47 = getelementptr inbounds nuw i8, ptr %42, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !8
  %49 = zext i8 %48 to i32
  %50 = xor i32 %45, %49
  %51 = load i32, ptr %9, align 4, !tbaa !35
  %52 = and i32 %50, %51
  store i32 %52, ptr %7, align 8, !tbaa !71
  %53 = load ptr, ptr %10, align 8, !tbaa !39
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds nuw [2 x i8], ptr %53, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !53
  %57 = load ptr, ptr %11, align 8, !tbaa !38
  %58 = load i32, ptr %12, align 8, !tbaa !32
  %59 = and i32 %58, %36
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds nuw [2 x i8], ptr %57, i64 %60
  store i16 %56, ptr %61, align 2, !tbaa !53
  %62 = zext i16 %56 to i32
  %63 = trunc i32 %36 to i16
  store i16 %63, ptr %55, align 2, !tbaa !53
  %64 = icmp eq i16 %56, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %40
  %66 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %36, i32 %62), !nosanitize !46
  %67 = extractvalue { i32, i1 } %66, 0, !nosanitize !46
  %68 = extractvalue { i32, i1 } %66, 1, !nosanitize !46
  br i1 %68, label %69, label %70, !prof !47, !nosanitize !46

69:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

70:                                               ; preds = %65
  %71 = load i32, ptr %13, align 8, !tbaa !31
  %72 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %71, i32 262), !nosanitize !46
  %73 = extractvalue { i32, i1 } %72, 1, !nosanitize !46
  br i1 %73, label %74, label %75, !prof !47, !nosanitize !46

74:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

75:                                               ; preds = %70
  %76 = extractvalue { i32, i1 } %72, 0, !nosanitize !46
  %77 = icmp ugt i32 %67, %76
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %62)
  store i32 %79, ptr %14, align 8, !tbaa !69
  br label %82

80:                                               ; preds = %75, %40, %33
  %81 = load i32, ptr %14, align 8, !tbaa !69
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %81, %80 ], [ %79, %78 ]
  %84 = icmp ugt i32 %83, 2
  br i1 %84, label %85, label %228

85:                                               ; preds = %82
  %86 = trunc i32 %83 to i8
  %87 = add i8 %86, -3
  %88 = load i32, ptr %5, align 4, !tbaa !64
  %89 = load i32, ptr %19, align 8, !tbaa !79
  %90 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %88, i32 %89), !nosanitize !46
  %91 = extractvalue { i32, i1 } %90, 1, !nosanitize !46
  br i1 %91, label %92, label %93, !prof !47, !nosanitize !46

92:                                               ; preds = %85
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

93:                                               ; preds = %85
  %94 = extractvalue { i32, i1 } %90, 0, !nosanitize !46
  %95 = trunc i32 %94 to i16
  %96 = load i32, ptr %16, align 4, !tbaa !127
  %97 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %96, i32 1), !nosanitize !46
  %98 = extractvalue { i32, i1 } %97, 1, !nosanitize !46
  br i1 %98, label %99, label %100, !prof !47, !nosanitize !46

99:                                               ; preds = %93
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

100:                                              ; preds = %93
  %101 = extractvalue { i32, i1 } %97, 0, !nosanitize !46
  %102 = load ptr, ptr %15, align 8, !tbaa !45
  %103 = trunc i32 %94 to i8
  store i32 %101, ptr %16, align 4, !tbaa !127
  %104 = zext i32 %96 to i64
  %105 = getelementptr inbounds nuw i8, ptr %102, i64 %104
  store i8 %103, ptr %105, align 1, !tbaa !8
  %106 = load i32, ptr %16, align 4, !tbaa !127
  %107 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %106, i32 1), !nosanitize !46
  %108 = extractvalue { i32, i1 } %107, 1, !nosanitize !46
  br i1 %108, label %109, label %110, !prof !47, !nosanitize !46

109:                                              ; preds = %100
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

110:                                              ; preds = %100
  %111 = extractvalue { i32, i1 } %107, 0, !nosanitize !46
  %112 = load ptr, ptr %15, align 8, !tbaa !45
  %113 = lshr i32 %94, 8
  %114 = trunc i32 %113 to i8
  store i32 %111, ptr %16, align 4, !tbaa !127
  %115 = zext i32 %106 to i64
  %116 = getelementptr inbounds nuw i8, ptr %112, i64 %115
  store i8 %114, ptr %116, align 1, !tbaa !8
  %117 = load i32, ptr %16, align 4, !tbaa !127
  %118 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %117, i32 1), !nosanitize !46
  %119 = extractvalue { i32, i1 } %118, 1, !nosanitize !46
  br i1 %119, label %120, label %121, !prof !47, !nosanitize !46

120:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

121:                                              ; preds = %110
  %122 = extractvalue { i32, i1 } %118, 0, !nosanitize !46
  %123 = load ptr, ptr %15, align 8, !tbaa !45
  store i32 %122, ptr %16, align 4, !tbaa !127
  %124 = zext i32 %117 to i64
  %125 = getelementptr inbounds nuw i8, ptr %123, i64 %124
  store i8 %87, ptr %125, align 1, !tbaa !8
  %126 = add i16 %95, -1
  %127 = zext i8 %87 to i64
  %128 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !8
  %130 = zext i8 %129 to i64
  %131 = getelementptr [4 x i8], ptr %20, i64 %130
  %132 = load i16, ptr %131, align 4, !tbaa !8
  %133 = add i16 %132, 1
  store i16 %133, ptr %131, align 4, !tbaa !8
  %134 = icmp ult i16 %126, 256
  br i1 %134, label %135, label %138

135:                                              ; preds = %121
  %136 = zext nneg i16 %126 to i64
  %137 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %136
  br label %143

138:                                              ; preds = %121
  %139 = lshr i16 %126, 7
  %140 = zext nneg i16 %139 to i64
  %141 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %140
  %142 = getelementptr inbounds nuw i8, ptr %141, i64 256
  br label %143

143:                                              ; preds = %138, %135
  %144 = phi ptr [ %137, %135 ], [ %142, %138 ]
  %145 = load i8, ptr %144, align 1, !tbaa !8
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %146
  %148 = load i16, ptr %147, align 4, !tbaa !8
  %149 = add i16 %148, 1
  store i16 %149, ptr %147, align 4, !tbaa !8
  %150 = load i32, ptr %16, align 4, !tbaa !127
  %151 = load i32, ptr %18, align 8, !tbaa !48
  %152 = icmp eq i32 %150, %151
  %153 = load i32, ptr %14, align 8, !tbaa !69
  %154 = load i32, ptr %3, align 4, !tbaa !66
  %155 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %154, i32 %153), !nosanitize !46
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !46
  br i1 %156, label %157, label %158, !prof !47, !nosanitize !46

157:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

158:                                              ; preds = %143
  %159 = extractvalue { i32, i1 } %155, 0, !nosanitize !46
  store i32 %159, ptr %3, align 4, !tbaa !66
  %160 = load i32, ptr %22, align 8, !tbaa !57
  %161 = icmp ule i32 %153, %160
  %162 = icmp ugt i32 %159, 2
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %164, label %213

164:                                              ; preds = %158
  %165 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %153, i32 1), !nosanitize !46
  %166 = extractvalue { i32, i1 } %165, 1, !nosanitize !46
  br i1 %166, label %167, label %168, !prof !47, !nosanitize !46

167:                                              ; preds = %164
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

168:                                              ; preds = %164
  %169 = extractvalue { i32, i1 } %165, 0, !nosanitize !46
  store i32 %169, ptr %14, align 8, !tbaa !69
  %170 = load i32, ptr %5, align 4, !tbaa !64
  br label %171

171:                                              ; preds = %208, %168
  %172 = phi i32 [ %209, %208 ], [ %169, %168 ]
  %173 = phi i32 [ %178, %208 ], [ %170, %168 ]
  %174 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %173, i32 1), !nosanitize !46
  %175 = extractvalue { i32, i1 } %174, 1, !nosanitize !46
  br i1 %175, label %176, label %177, !prof !47, !nosanitize !46

176:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

177:                                              ; preds = %171
  %178 = extractvalue { i32, i1 } %174, 0, !nosanitize !46
  store i32 %178, ptr %5, align 4, !tbaa !64
  %179 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %178, i32 2), !nosanitize !46
  %180 = extractvalue { i32, i1 } %179, 1, !nosanitize !46
  br i1 %180, label %181, label %182, !prof !47, !nosanitize !46

181:                                              ; preds = %177
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

182:                                              ; preds = %177
  %183 = extractvalue { i32, i1 } %179, 0, !nosanitize !46
  %184 = load ptr, ptr %6, align 8, !tbaa !37
  %185 = load i32, ptr %7, align 8, !tbaa !71
  %186 = load i32, ptr %8, align 8, !tbaa !36
  %187 = shl i32 %185, %186
  %188 = zext i32 %183 to i64
  %189 = getelementptr inbounds nuw i8, ptr %184, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !8
  %191 = zext i8 %190 to i32
  %192 = xor i32 %187, %191
  %193 = load i32, ptr %9, align 4, !tbaa !35
  %194 = and i32 %192, %193
  store i32 %194, ptr %7, align 8, !tbaa !71
  %195 = load ptr, ptr %10, align 8, !tbaa !39
  %196 = zext i32 %194 to i64
  %197 = getelementptr inbounds nuw [2 x i8], ptr %195, i64 %196
  %198 = load i16, ptr %197, align 2, !tbaa !53
  %199 = load ptr, ptr %11, align 8, !tbaa !38
  %200 = load i32, ptr %12, align 8, !tbaa !32
  %201 = and i32 %200, %178
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds nuw [2 x i8], ptr %199, i64 %202
  store i16 %198, ptr %203, align 2, !tbaa !53
  %204 = trunc i32 %178 to i16
  store i16 %204, ptr %197, align 2, !tbaa !53
  %205 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %172, i32 1), !nosanitize !46
  %206 = extractvalue { i32, i1 } %205, 1, !nosanitize !46
  br i1 %206, label %207, label %208, !prof !47, !nosanitize !46

207:                                              ; preds = %182
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

208:                                              ; preds = %182
  %209 = extractvalue { i32, i1 } %205, 0, !nosanitize !46
  store i32 %209, ptr %14, align 8, !tbaa !69
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %171, !llvm.loop !132

211:                                              ; preds = %208
  %212 = add nuw i32 %178, 1
  store i32 %212, ptr %5, align 4, !tbaa !64
  br i1 %152, label %292, label %280

213:                                              ; preds = %158
  %214 = load i32, ptr %5, align 4, !tbaa !64
  %215 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %214, i32 %153), !nosanitize !46
  %216 = extractvalue { i32, i1 } %215, 1, !nosanitize !46
  br i1 %216, label %217, label %218, !prof !47, !nosanitize !46

217:                                              ; preds = %213
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

218:                                              ; preds = %213
  %219 = extractvalue { i32, i1 } %215, 0, !nosanitize !46
  store i32 %219, ptr %5, align 4, !tbaa !64
  store i32 0, ptr %14, align 8, !tbaa !69
  %220 = load ptr, ptr %6, align 8, !tbaa !37
  %221 = zext i32 %219 to i64
  %222 = getelementptr inbounds nuw i8, ptr %220, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !8
  %224 = zext i8 %223 to i32
  store i32 %224, ptr %7, align 8, !tbaa !71
  %225 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %219, i32 1), !nosanitize !46
  %226 = extractvalue { i32, i1 } %225, 1, !nosanitize !46
  br i1 %226, label %227, label %281, !prof !47, !nosanitize !46

227:                                              ; preds = %218
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

228:                                              ; preds = %82
  %229 = load ptr, ptr %6, align 8, !tbaa !37
  %230 = load i32, ptr %5, align 4, !tbaa !64
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds nuw i8, ptr %229, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !8
  %234 = load i32, ptr %16, align 4, !tbaa !127
  %235 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 1), !nosanitize !46
  %236 = extractvalue { i32, i1 } %235, 1, !nosanitize !46
  br i1 %236, label %237, label %238, !prof !47, !nosanitize !46

237:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

238:                                              ; preds = %228
  %239 = extractvalue { i32, i1 } %235, 0, !nosanitize !46
  %240 = load ptr, ptr %15, align 8, !tbaa !45
  store i32 %239, ptr %16, align 4, !tbaa !127
  %241 = zext i32 %234 to i64
  %242 = getelementptr inbounds nuw i8, ptr %240, i64 %241
  store i8 0, ptr %242, align 1, !tbaa !8
  %243 = load i32, ptr %16, align 4, !tbaa !127
  %244 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %243, i32 1), !nosanitize !46
  %245 = extractvalue { i32, i1 } %244, 1, !nosanitize !46
  br i1 %245, label %246, label %247, !prof !47, !nosanitize !46

246:                                              ; preds = %238
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

247:                                              ; preds = %238
  %248 = extractvalue { i32, i1 } %244, 0, !nosanitize !46
  %249 = load ptr, ptr %15, align 8, !tbaa !45
  store i32 %248, ptr %16, align 4, !tbaa !127
  %250 = zext i32 %243 to i64
  %251 = getelementptr inbounds nuw i8, ptr %249, i64 %250
  store i8 0, ptr %251, align 1, !tbaa !8
  %252 = load i32, ptr %16, align 4, !tbaa !127
  %253 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %252, i32 1), !nosanitize !46
  %254 = extractvalue { i32, i1 } %253, 1, !nosanitize !46
  br i1 %254, label %255, label %256, !prof !47, !nosanitize !46

255:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

256:                                              ; preds = %247
  %257 = extractvalue { i32, i1 } %253, 0, !nosanitize !46
  %258 = load ptr, ptr %15, align 8, !tbaa !45
  store i32 %257, ptr %16, align 4, !tbaa !127
  %259 = zext i32 %252 to i64
  %260 = getelementptr inbounds nuw i8, ptr %258, i64 %259
  store i8 %233, ptr %260, align 1, !tbaa !8
  %261 = zext i8 %233 to i64
  %262 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %261
  %263 = load i16, ptr %262, align 4, !tbaa !8
  %264 = add i16 %263, 1
  store i16 %264, ptr %262, align 4, !tbaa !8
  %265 = load i32, ptr %16, align 4, !tbaa !127
  %266 = load i32, ptr %18, align 8, !tbaa !48
  %267 = icmp eq i32 %265, %266
  %268 = load i32, ptr %3, align 4, !tbaa !66
  %269 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %268, i32 1), !nosanitize !46
  %270 = extractvalue { i32, i1 } %269, 1, !nosanitize !46
  br i1 %270, label %271, label %272, !prof !47, !nosanitize !46

271:                                              ; preds = %437, %369, %300, %256
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

272:                                              ; preds = %256
  %273 = extractvalue { i32, i1 } %269, 0, !nosanitize !46
  store i32 %273, ptr %3, align 4, !tbaa !66
  %274 = load i32, ptr %5, align 4, !tbaa !64
  %275 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %274, i32 1), !nosanitize !46
  %276 = extractvalue { i32, i1 } %275, 1, !nosanitize !46
  br i1 %276, label %277, label %278, !prof !47, !nosanitize !46

277:                                              ; preds = %272
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

278:                                              ; preds = %272
  %279 = extractvalue { i32, i1 } %275, 0, !nosanitize !46
  store i32 %279, ptr %5, align 4, !tbaa !64
  br i1 %267, label %292, label %280

280:                                              ; preds = %352, %281, %278, %211
  br label %24

281:                                              ; preds = %218
  %282 = extractvalue { i32, i1 } %225, 0, !nosanitize !46
  %283 = load i32, ptr %8, align 8, !tbaa !36
  %284 = shl i32 %224, %283
  %285 = zext i32 %282 to i64
  %286 = getelementptr inbounds nuw i8, ptr %220, i64 %285
  %287 = load i8, ptr %286, align 1, !tbaa !8
  %288 = zext i8 %287 to i32
  %289 = xor i32 %284, %288
  %290 = load i32, ptr %9, align 4, !tbaa !35
  %291 = and i32 %289, %290
  store i32 %291, ptr %7, align 8, !tbaa !71
  br i1 %152, label %292, label %280

292:                                              ; preds = %281, %278, %211
  %293 = phi i32 [ %279, %278 ], [ %212, %211 ], [ %219, %281 ]
  %294 = load i64, ptr %23, align 8, !tbaa !65
  %295 = icmp sgt i64 %294, -1
  br i1 %295, label %296, label %300

296:                                              ; preds = %292
  %297 = load ptr, ptr %6, align 8, !tbaa !37
  %298 = and i64 %294, 4294967295
  %299 = getelementptr inbounds nuw i8, ptr %297, i64 %298
  br label %300

300:                                              ; preds = %296, %292
  %301 = phi ptr [ %299, %296 ], [ null, %292 ]
  %302 = zext i32 %293 to i64
  %303 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %302, i64 %294), !nosanitize !46
  %304 = extractvalue { i64, i1 } %303, 1, !nosanitize !46
  br i1 %304, label %271, label %305, !prof !47, !nosanitize !46

305:                                              ; preds = %300
  %306 = extractvalue { i64, i1 } %303, 0, !nosanitize !46
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %301, i64 noundef %306, i32 noundef 0) #11
  %307 = load i32, ptr %5, align 4, !tbaa !64
  %308 = zext i32 %307 to i64
  store i64 %308, ptr %23, align 8, !tbaa !65
  %309 = load ptr, ptr %0, align 8, !tbaa !19
  %310 = getelementptr inbounds nuw i8, ptr %309, i64 56
  %311 = load ptr, ptr %310, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %311) #11
  %312 = getelementptr inbounds nuw i8, ptr %311, i64 40
  %313 = load i64, ptr %312, align 8, !tbaa !90
  %314 = getelementptr inbounds nuw i8, ptr %309, i64 32
  %315 = load i32, ptr %314, align 8, !tbaa !101
  %316 = zext i32 %315 to i64
  %317 = tail call i64 @llvm.umin.i64(i64 %313, i64 %316)
  %318 = trunc nuw i64 %317 to i32
  %319 = icmp eq i64 %317, 0
  br i1 %319, label %352, label %320

320:                                              ; preds = %305
  %321 = getelementptr inbounds nuw i8, ptr %309, i64 24
  %322 = load ptr, ptr %321, align 8, !tbaa !100
  %323 = getelementptr inbounds nuw i8, ptr %311, i64 32
  %324 = load ptr, ptr %323, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %322, ptr align 1 %324, i64 %317, i1 false)
  %325 = load ptr, ptr %321, align 8, !tbaa !100
  %326 = getelementptr inbounds nuw i8, ptr %325, i64 %317
  store ptr %326, ptr %321, align 8, !tbaa !100
  %327 = load ptr, ptr %323, align 8, !tbaa !91
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 %317
  store ptr %328, ptr %323, align 8, !tbaa !91
  %329 = getelementptr inbounds nuw i8, ptr %309, i64 40
  %330 = load i64, ptr %329, align 8, !tbaa !102
  %331 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %330, i64 %317), !nosanitize !46
  %332 = extractvalue { i64, i1 } %331, 1, !nosanitize !46
  br i1 %332, label %333, label %334, !prof !47, !nosanitize !46

333:                                              ; preds = %320
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

334:                                              ; preds = %320
  %335 = extractvalue { i64, i1 } %331, 0, !nosanitize !46
  store i64 %335, ptr %329, align 8, !tbaa !102
  %336 = load i32, ptr %314, align 8, !tbaa !101
  %337 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %336, i32 %318), !nosanitize !46
  %338 = extractvalue { i32, i1 } %337, 1, !nosanitize !46
  br i1 %338, label %339, label %340, !prof !47, !nosanitize !46

339:                                              ; preds = %334
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

340:                                              ; preds = %334
  %341 = extractvalue { i32, i1 } %337, 0, !nosanitize !46
  store i32 %341, ptr %314, align 8, !tbaa !101
  %342 = load i64, ptr %312, align 8, !tbaa !90
  %343 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %342, i64 %317), !nosanitize !46
  %344 = extractvalue { i64, i1 } %343, 1, !nosanitize !46
  br i1 %344, label %345, label %346, !prof !47, !nosanitize !46

345:                                              ; preds = %340
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

346:                                              ; preds = %340
  %347 = extractvalue { i64, i1 } %343, 0, !nosanitize !46
  store i64 %347, ptr %312, align 8, !tbaa !90
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = getelementptr inbounds nuw i8, ptr %311, i64 16
  %351 = load ptr, ptr %350, align 8, !tbaa !42
  store ptr %351, ptr %323, align 8, !tbaa !91
  br label %352

352:                                              ; preds = %349, %346, %305
  %353 = load ptr, ptr %0, align 8, !tbaa !19
  %354 = getelementptr inbounds nuw i8, ptr %353, i64 32
  %355 = load i32, ptr %354, align 8, !tbaa !101
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %495, label %280

357:                                              ; preds = %31
  %358 = load i32, ptr %5, align 4, !tbaa !64
  %359 = tail call i32 @llvm.umin.i32(i32 %358, i32 2)
  %360 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %359, ptr %360, align 4, !tbaa !67
  %361 = icmp eq i32 %1, 4
  br i1 %361, label %362, label %427

362:                                              ; preds = %357
  %363 = load i64, ptr %23, align 8, !tbaa !65
  %364 = icmp sgt i64 %363, -1
  br i1 %364, label %365, label %369

365:                                              ; preds = %362
  %366 = load ptr, ptr %6, align 8, !tbaa !37
  %367 = and i64 %363, 4294967295
  %368 = getelementptr inbounds nuw i8, ptr %366, i64 %367
  br label %369

369:                                              ; preds = %365, %362
  %370 = phi ptr [ %368, %365 ], [ null, %362 ]
  %371 = zext i32 %358 to i64
  %372 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %371, i64 %363), !nosanitize !46
  %373 = extractvalue { i64, i1 } %372, 1, !nosanitize !46
  br i1 %373, label %271, label %374, !prof !47, !nosanitize !46

374:                                              ; preds = %369
  %375 = extractvalue { i64, i1 } %372, 0, !nosanitize !46
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %370, i64 noundef %375, i32 noundef 1) #11
  %376 = load i32, ptr %5, align 4, !tbaa !64
  %377 = zext i32 %376 to i64
  store i64 %377, ptr %23, align 8, !tbaa !65
  %378 = load ptr, ptr %0, align 8, !tbaa !19
  %379 = getelementptr inbounds nuw i8, ptr %378, i64 56
  %380 = load ptr, ptr %379, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %380) #11
  %381 = getelementptr inbounds nuw i8, ptr %380, i64 40
  %382 = load i64, ptr %381, align 8, !tbaa !90
  %383 = getelementptr inbounds nuw i8, ptr %378, i64 32
  %384 = load i32, ptr %383, align 8, !tbaa !101
  %385 = zext i32 %384 to i64
  %386 = tail call i64 @llvm.umin.i64(i64 %382, i64 %385)
  %387 = trunc nuw i64 %386 to i32
  %388 = icmp eq i64 %386, 0
  br i1 %388, label %421, label %389

389:                                              ; preds = %374
  %390 = getelementptr inbounds nuw i8, ptr %378, i64 24
  %391 = load ptr, ptr %390, align 8, !tbaa !100
  %392 = getelementptr inbounds nuw i8, ptr %380, i64 32
  %393 = load ptr, ptr %392, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %391, ptr align 1 %393, i64 %386, i1 false)
  %394 = load ptr, ptr %390, align 8, !tbaa !100
  %395 = getelementptr inbounds nuw i8, ptr %394, i64 %386
  store ptr %395, ptr %390, align 8, !tbaa !100
  %396 = load ptr, ptr %392, align 8, !tbaa !91
  %397 = getelementptr inbounds nuw i8, ptr %396, i64 %386
  store ptr %397, ptr %392, align 8, !tbaa !91
  %398 = getelementptr inbounds nuw i8, ptr %378, i64 40
  %399 = load i64, ptr %398, align 8, !tbaa !102
  %400 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %399, i64 %386), !nosanitize !46
  %401 = extractvalue { i64, i1 } %400, 1, !nosanitize !46
  br i1 %401, label %402, label %403, !prof !47, !nosanitize !46

402:                                              ; preds = %389
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

403:                                              ; preds = %389
  %404 = extractvalue { i64, i1 } %400, 0, !nosanitize !46
  store i64 %404, ptr %398, align 8, !tbaa !102
  %405 = load i32, ptr %383, align 8, !tbaa !101
  %406 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %405, i32 %387), !nosanitize !46
  %407 = extractvalue { i32, i1 } %406, 1, !nosanitize !46
  br i1 %407, label %408, label %409, !prof !47, !nosanitize !46

408:                                              ; preds = %403
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

409:                                              ; preds = %403
  %410 = extractvalue { i32, i1 } %406, 0, !nosanitize !46
  store i32 %410, ptr %383, align 8, !tbaa !101
  %411 = load i64, ptr %381, align 8, !tbaa !90
  %412 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %411, i64 %386), !nosanitize !46
  %413 = extractvalue { i64, i1 } %412, 1, !nosanitize !46
  br i1 %413, label %414, label %415, !prof !47, !nosanitize !46

414:                                              ; preds = %409
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

415:                                              ; preds = %409
  %416 = extractvalue { i64, i1 } %412, 0, !nosanitize !46
  store i64 %416, ptr %381, align 8, !tbaa !90
  %417 = icmp eq i64 %416, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %415
  %419 = getelementptr inbounds nuw i8, ptr %380, i64 16
  %420 = load ptr, ptr %419, align 8, !tbaa !42
  store ptr %420, ptr %392, align 8, !tbaa !91
  br label %421

421:                                              ; preds = %418, %415, %374
  %422 = load ptr, ptr %0, align 8, !tbaa !19
  %423 = getelementptr inbounds nuw i8, ptr %422, i64 32
  %424 = load i32, ptr %423, align 8, !tbaa !101
  %425 = icmp eq i32 %424, 0
  %426 = select i1 %425, i32 2, i32 3
  br label %495

427:                                              ; preds = %357
  %428 = load i32, ptr %16, align 4, !tbaa !127
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %494, label %430

430:                                              ; preds = %427
  %431 = load i64, ptr %23, align 8, !tbaa !65
  %432 = icmp sgt i64 %431, -1
  br i1 %432, label %433, label %437

433:                                              ; preds = %430
  %434 = load ptr, ptr %6, align 8, !tbaa !37
  %435 = and i64 %431, 4294967295
  %436 = getelementptr inbounds nuw i8, ptr %434, i64 %435
  br label %437

437:                                              ; preds = %433, %430
  %438 = phi ptr [ %436, %433 ], [ null, %430 ]
  %439 = zext i32 %358 to i64
  %440 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %439, i64 %431), !nosanitize !46
  %441 = extractvalue { i64, i1 } %440, 1, !nosanitize !46
  br i1 %441, label %271, label %442, !prof !47, !nosanitize !46

442:                                              ; preds = %437
  %443 = extractvalue { i64, i1 } %440, 0, !nosanitize !46
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %438, i64 noundef %443, i32 noundef 0) #11
  %444 = load i32, ptr %5, align 4, !tbaa !64
  %445 = zext i32 %444 to i64
  store i64 %445, ptr %23, align 8, !tbaa !65
  %446 = load ptr, ptr %0, align 8, !tbaa !19
  %447 = getelementptr inbounds nuw i8, ptr %446, i64 56
  %448 = load ptr, ptr %447, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %448) #11
  %449 = getelementptr inbounds nuw i8, ptr %448, i64 40
  %450 = load i64, ptr %449, align 8, !tbaa !90
  %451 = getelementptr inbounds nuw i8, ptr %446, i64 32
  %452 = load i32, ptr %451, align 8, !tbaa !101
  %453 = zext i32 %452 to i64
  %454 = tail call i64 @llvm.umin.i64(i64 %450, i64 %453)
  %455 = trunc nuw i64 %454 to i32
  %456 = icmp eq i64 %454, 0
  br i1 %456, label %489, label %457

457:                                              ; preds = %442
  %458 = getelementptr inbounds nuw i8, ptr %446, i64 24
  %459 = load ptr, ptr %458, align 8, !tbaa !100
  %460 = getelementptr inbounds nuw i8, ptr %448, i64 32
  %461 = load ptr, ptr %460, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %459, ptr align 1 %461, i64 %454, i1 false)
  %462 = load ptr, ptr %458, align 8, !tbaa !100
  %463 = getelementptr inbounds nuw i8, ptr %462, i64 %454
  store ptr %463, ptr %458, align 8, !tbaa !100
  %464 = load ptr, ptr %460, align 8, !tbaa !91
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 %454
  store ptr %465, ptr %460, align 8, !tbaa !91
  %466 = getelementptr inbounds nuw i8, ptr %446, i64 40
  %467 = load i64, ptr %466, align 8, !tbaa !102
  %468 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %467, i64 %454), !nosanitize !46
  %469 = extractvalue { i64, i1 } %468, 1, !nosanitize !46
  br i1 %469, label %470, label %471, !prof !47, !nosanitize !46

470:                                              ; preds = %457
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

471:                                              ; preds = %457
  %472 = extractvalue { i64, i1 } %468, 0, !nosanitize !46
  store i64 %472, ptr %466, align 8, !tbaa !102
  %473 = load i32, ptr %451, align 8, !tbaa !101
  %474 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %473, i32 %455), !nosanitize !46
  %475 = extractvalue { i32, i1 } %474, 1, !nosanitize !46
  br i1 %475, label %476, label %477, !prof !47, !nosanitize !46

476:                                              ; preds = %471
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

477:                                              ; preds = %471
  %478 = extractvalue { i32, i1 } %474, 0, !nosanitize !46
  store i32 %478, ptr %451, align 8, !tbaa !101
  %479 = load i64, ptr %449, align 8, !tbaa !90
  %480 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %479, i64 %454), !nosanitize !46
  %481 = extractvalue { i64, i1 } %480, 1, !nosanitize !46
  br i1 %481, label %482, label %483, !prof !47, !nosanitize !46

482:                                              ; preds = %477
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

483:                                              ; preds = %477
  %484 = extractvalue { i64, i1 } %480, 0, !nosanitize !46
  store i64 %484, ptr %449, align 8, !tbaa !90
  %485 = icmp eq i64 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %483
  %487 = getelementptr inbounds nuw i8, ptr %448, i64 16
  %488 = load ptr, ptr %487, align 8, !tbaa !42
  store ptr %488, ptr %460, align 8, !tbaa !91
  br label %489

489:                                              ; preds = %486, %483, %442
  %490 = load ptr, ptr %0, align 8, !tbaa !19
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 32
  %492 = load i32, ptr %491, align 8, !tbaa !101
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %495, label %494

494:                                              ; preds = %489, %427
  br label %495

495:                                              ; preds = %494, %489, %421, %352, %27
  %496 = phi i32 [ 1, %494 ], [ %426, %421 ], [ 0, %489 ], [ 0, %27 ], [ 0, %352 ]
  ret i32 %496
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_slow(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 164
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %22 = getelementptr i8, ptr %0, i64 1240
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %28

28:                                               ; preds = %268, %2
  %29 = load i32, ptr %3, align 4, !tbaa !66
  %30 = icmp ult i32 %29, 262
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %32 = load i32, ptr %3, align 4, !tbaa !66
  %33 = icmp ult i32 %32, 262
  %34 = and i1 %4, %33
  br i1 %34, label %654, label %35

35:                                               ; preds = %31
  %36 = icmp eq i32 %32, 0
  br i1 %36, label %471, label %37

37:                                               ; preds = %35
  %38 = icmp ugt i32 %32, 2
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %5, align 8, !tbaa !69
  store i32 %40, ptr %6, align 8, !tbaa !68
  %41 = load i32, ptr %7, align 8, !tbaa !79
  store i32 %41, ptr %8, align 4, !tbaa !133
  store i32 2, ptr %5, align 8, !tbaa !69
  br label %111

42:                                               ; preds = %37, %28
  %43 = load i32, ptr %9, align 4, !tbaa !64
  %44 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %43, i32 2), !nosanitize !46
  %45 = extractvalue { i32, i1 } %44, 1, !nosanitize !46
  br i1 %45, label %46, label %47, !prof !47, !nosanitize !46

46:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

47:                                               ; preds = %42
  %48 = extractvalue { i32, i1 } %44, 0, !nosanitize !46
  %49 = load ptr, ptr %10, align 8, !tbaa !37
  %50 = load i32, ptr %11, align 8, !tbaa !71
  %51 = load i32, ptr %12, align 8, !tbaa !36
  %52 = shl i32 %50, %51
  %53 = zext i32 %48 to i64
  %54 = getelementptr inbounds nuw i8, ptr %49, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !8
  %56 = zext i8 %55 to i32
  %57 = xor i32 %52, %56
  %58 = load i32, ptr %13, align 4, !tbaa !35
  %59 = and i32 %57, %58
  store i32 %59, ptr %11, align 8, !tbaa !71
  %60 = load ptr, ptr %14, align 8, !tbaa !39
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds nuw [2 x i8], ptr %60, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !53
  %64 = load ptr, ptr %15, align 8, !tbaa !38
  %65 = load i32, ptr %16, align 8, !tbaa !32
  %66 = and i32 %65, %43
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds nuw [2 x i8], ptr %64, i64 %67
  store i16 %63, ptr %68, align 2, !tbaa !53
  %69 = zext i16 %63 to i32
  %70 = trunc i32 %43 to i16
  store i16 %70, ptr %62, align 2, !tbaa !53
  %71 = load i32, ptr %5, align 8, !tbaa !69
  store i32 %71, ptr %6, align 8, !tbaa !68
  %72 = load i32, ptr %7, align 8, !tbaa !79
  store i32 %72, ptr %8, align 4, !tbaa !133
  store i32 2, ptr %5, align 8, !tbaa !69
  %73 = icmp eq i16 %63, 0
  br i1 %73, label %111, label %74

74:                                               ; preds = %47
  %75 = load i32, ptr %17, align 8, !tbaa !57
  %76 = icmp ult i32 %71, %75
  br i1 %76, label %77, label %108

77:                                               ; preds = %74
  %78 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %43, i32 %69), !nosanitize !46
  %79 = extractvalue { i32, i1 } %78, 0, !nosanitize !46
  %80 = extractvalue { i32, i1 } %78, 1, !nosanitize !46
  br i1 %80, label %81, label %82, !prof !47, !nosanitize !46

81:                                               ; preds = %77
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

82:                                               ; preds = %77
  %83 = load i32, ptr %18, align 8, !tbaa !31
  %84 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 262), !nosanitize !46
  %85 = extractvalue { i32, i1 } %84, 1, !nosanitize !46
  br i1 %85, label %86, label %87, !prof !47, !nosanitize !46

86:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

87:                                               ; preds = %82
  %88 = extractvalue { i32, i1 } %84, 0, !nosanitize !46
  %89 = icmp ugt i32 %79, %88
  br i1 %89, label %108, label %90

90:                                               ; preds = %87
  %91 = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %69)
  store i32 %91, ptr %5, align 8, !tbaa !69
  %92 = icmp ult i32 %91, 6
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = load i32, ptr %19, align 8, !tbaa !50
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %107, label %96

96:                                               ; preds = %93
  %97 = icmp eq i32 %91, 3
  br i1 %97, label %98, label %108

98:                                               ; preds = %96
  %99 = load i32, ptr %9, align 4, !tbaa !64
  %100 = load i32, ptr %7, align 8, !tbaa !79
  %101 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %99, i32 %100), !nosanitize !46
  %102 = extractvalue { i32, i1 } %101, 1, !nosanitize !46
  br i1 %102, label %103, label %104, !prof !47, !nosanitize !46

103:                                              ; preds = %98
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

104:                                              ; preds = %98
  %105 = extractvalue { i32, i1 } %101, 0, !nosanitize !46
  %106 = icmp ugt i32 %105, 4096
  br i1 %106, label %107, label %108

107:                                              ; preds = %104, %93
  store i32 2, ptr %5, align 8, !tbaa !69
  br label %108

108:                                              ; preds = %107, %104, %96, %90, %87, %74
  %109 = phi i32 [ 2, %74 ], [ 2, %87 ], [ 2, %107 ], [ 3, %104 ], [ %91, %96 ], [ %91, %90 ]
  %110 = load i32, ptr %6, align 8, !tbaa !68
  br label %111

111:                                              ; preds = %108, %47, %39
  %112 = phi i32 [ %110, %108 ], [ %40, %39 ], [ %71, %47 ]
  %113 = phi i32 [ %109, %108 ], [ 2, %39 ], [ 2, %47 ]
  %114 = icmp ult i32 %112, 3
  %115 = icmp ugt i32 %113, %112
  %116 = or i1 %114, %115
  br i1 %116, label %333, label %117

117:                                              ; preds = %111
  %118 = load i32, ptr %9, align 4, !tbaa !64
  %119 = load i32, ptr %3, align 4, !tbaa !66
  %120 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %118, i32 %119), !nosanitize !46
  %121 = extractvalue { i32, i1 } %120, 1, !nosanitize !46
  br i1 %121, label %122, label %123, !prof !47, !nosanitize !46

122:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

123:                                              ; preds = %117
  %124 = extractvalue { i32, i1 } %120, 0, !nosanitize !46
  %125 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %124, i32 3), !nosanitize !46
  %126 = extractvalue { i32, i1 } %125, 0, !nosanitize !46
  %127 = extractvalue { i32, i1 } %125, 1, !nosanitize !46
  br i1 %127, label %128, label %129, !prof !47, !nosanitize !46

128:                                              ; preds = %123
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

129:                                              ; preds = %123
  %130 = trunc i32 %112 to i8
  %131 = add i8 %130, -3
  %132 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %118, i32 1), !nosanitize !46
  %133 = extractvalue { i32, i1 } %132, 1, !nosanitize !46
  br i1 %133, label %134, label %135, !prof !47, !nosanitize !46

134:                                              ; preds = %129
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

135:                                              ; preds = %129
  %136 = extractvalue { i32, i1 } %132, 0, !nosanitize !46
  %137 = load i32, ptr %8, align 4, !tbaa !133
  %138 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %136, i32 %137), !nosanitize !46
  %139 = extractvalue { i32, i1 } %138, 1, !nosanitize !46
  br i1 %139, label %140, label %141, !prof !47, !nosanitize !46

140:                                              ; preds = %135
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

141:                                              ; preds = %135
  %142 = extractvalue { i32, i1 } %138, 0, !nosanitize !46
  %143 = trunc i32 %142 to i16
  %144 = load i32, ptr %21, align 4, !tbaa !127
  %145 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %144, i32 1), !nosanitize !46
  %146 = extractvalue { i32, i1 } %145, 1, !nosanitize !46
  br i1 %146, label %147, label %148, !prof !47, !nosanitize !46

147:                                              ; preds = %141
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

148:                                              ; preds = %141
  %149 = extractvalue { i32, i1 } %145, 0, !nosanitize !46
  %150 = load ptr, ptr %20, align 8, !tbaa !45
  %151 = trunc i32 %142 to i8
  store i32 %149, ptr %21, align 4, !tbaa !127
  %152 = zext i32 %144 to i64
  %153 = getelementptr inbounds nuw i8, ptr %150, i64 %152
  store i8 %151, ptr %153, align 1, !tbaa !8
  %154 = load i32, ptr %21, align 4, !tbaa !127
  %155 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %154, i32 1), !nosanitize !46
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !46
  br i1 %156, label %157, label %158, !prof !47, !nosanitize !46

157:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

158:                                              ; preds = %148
  %159 = extractvalue { i32, i1 } %155, 0, !nosanitize !46
  %160 = load ptr, ptr %20, align 8, !tbaa !45
  %161 = lshr i32 %142, 8
  %162 = trunc i32 %161 to i8
  store i32 %159, ptr %21, align 4, !tbaa !127
  %163 = zext i32 %154 to i64
  %164 = getelementptr inbounds nuw i8, ptr %160, i64 %163
  store i8 %162, ptr %164, align 1, !tbaa !8
  %165 = load i32, ptr %21, align 4, !tbaa !127
  %166 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %165, i32 1), !nosanitize !46
  %167 = extractvalue { i32, i1 } %166, 1, !nosanitize !46
  br i1 %167, label %168, label %169, !prof !47, !nosanitize !46

168:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

169:                                              ; preds = %158
  %170 = extractvalue { i32, i1 } %166, 0, !nosanitize !46
  %171 = load ptr, ptr %20, align 8, !tbaa !45
  store i32 %170, ptr %21, align 4, !tbaa !127
  %172 = zext i32 %165 to i64
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 %172
  store i8 %131, ptr %173, align 1, !tbaa !8
  %174 = add i16 %143, -1
  %175 = zext i8 %131 to i64
  %176 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !8
  %178 = zext i8 %177 to i64
  %179 = getelementptr [4 x i8], ptr %22, i64 %178
  %180 = load i16, ptr %179, align 4, !tbaa !8
  %181 = add i16 %180, 1
  store i16 %181, ptr %179, align 4, !tbaa !8
  %182 = icmp ult i16 %174, 256
  br i1 %182, label %183, label %186

183:                                              ; preds = %169
  %184 = zext nneg i16 %174 to i64
  %185 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %184
  br label %191

186:                                              ; preds = %169
  %187 = lshr i16 %174, 7
  %188 = zext nneg i16 %187 to i64
  %189 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %188
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 256
  br label %191

191:                                              ; preds = %186, %183
  %192 = phi ptr [ %185, %183 ], [ %190, %186 ]
  %193 = load i8, ptr %192, align 1, !tbaa !8
  %194 = zext i8 %193 to i64
  %195 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %194
  %196 = load i16, ptr %195, align 4, !tbaa !8
  %197 = add i16 %196, 1
  store i16 %197, ptr %195, align 4, !tbaa !8
  %198 = load i32, ptr %21, align 4, !tbaa !127
  %199 = load i32, ptr %24, align 8, !tbaa !48
  %200 = icmp eq i32 %198, %199
  %201 = load i32, ptr %6, align 8, !tbaa !68
  %202 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %201, i32 1), !nosanitize !46
  %203 = extractvalue { i32, i1 } %202, 1, !nosanitize !46
  br i1 %203, label %204, label %205, !prof !47, !nosanitize !46

204:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

205:                                              ; preds = %191
  %206 = extractvalue { i32, i1 } %202, 0, !nosanitize !46
  %207 = load i32, ptr %3, align 4, !tbaa !66
  %208 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %207, i32 %206), !nosanitize !46
  %209 = extractvalue { i32, i1 } %208, 1, !nosanitize !46
  br i1 %209, label %210, label %211, !prof !47, !nosanitize !46

210:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

211:                                              ; preds = %205
  %212 = extractvalue { i32, i1 } %208, 0, !nosanitize !46
  store i32 %212, ptr %3, align 4, !tbaa !66
  %213 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %201, i32 2), !nosanitize !46
  %214 = extractvalue { i32, i1 } %213, 1, !nosanitize !46
  br i1 %214, label %215, label %216, !prof !47, !nosanitize !46

215:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

216:                                              ; preds = %211
  %217 = extractvalue { i32, i1 } %213, 0, !nosanitize !46
  store i32 %217, ptr %6, align 8, !tbaa !68
  %218 = load i32, ptr %9, align 4, !tbaa !64
  br label %219

219:                                              ; preds = %259, %216
  %220 = phi i32 [ %260, %259 ], [ %217, %216 ]
  %221 = phi i32 [ %223, %259 ], [ %218, %216 ]
  %222 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %221, i32 1), !nosanitize !46
  %223 = extractvalue { i32, i1 } %222, 0, !nosanitize !46
  %224 = extractvalue { i32, i1 } %222, 1, !nosanitize !46
  br i1 %224, label %225, label %226, !prof !47, !nosanitize !46

225:                                              ; preds = %219
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

226:                                              ; preds = %219
  store i32 %223, ptr %9, align 4, !tbaa !64
  %227 = icmp ugt i32 %223, %126
  br i1 %227, label %255, label %228

228:                                              ; preds = %226
  %229 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %223, i32 2), !nosanitize !46
  %230 = extractvalue { i32, i1 } %229, 1, !nosanitize !46
  br i1 %230, label %231, label %232, !prof !47, !nosanitize !46

231:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

232:                                              ; preds = %228
  %233 = extractvalue { i32, i1 } %229, 0, !nosanitize !46
  %234 = load ptr, ptr %10, align 8, !tbaa !37
  %235 = load i32, ptr %11, align 8, !tbaa !71
  %236 = load i32, ptr %12, align 8, !tbaa !36
  %237 = shl i32 %235, %236
  %238 = zext i32 %233 to i64
  %239 = getelementptr inbounds nuw i8, ptr %234, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !8
  %241 = zext i8 %240 to i32
  %242 = xor i32 %237, %241
  %243 = load i32, ptr %13, align 4, !tbaa !35
  %244 = and i32 %242, %243
  store i32 %244, ptr %11, align 8, !tbaa !71
  %245 = load ptr, ptr %14, align 8, !tbaa !39
  %246 = zext i32 %244 to i64
  %247 = getelementptr inbounds nuw [2 x i8], ptr %245, i64 %246
  %248 = load i16, ptr %247, align 2, !tbaa !53
  %249 = load ptr, ptr %15, align 8, !tbaa !38
  %250 = load i32, ptr %16, align 8, !tbaa !32
  %251 = and i32 %250, %223
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds nuw [2 x i8], ptr %249, i64 %252
  store i16 %248, ptr %253, align 2, !tbaa !53
  %254 = trunc i32 %223 to i16
  store i16 %254, ptr %247, align 2, !tbaa !53
  br label %255

255:                                              ; preds = %232, %226
  %256 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %220, i32 1), !nosanitize !46
  %257 = extractvalue { i32, i1 } %256, 1, !nosanitize !46
  br i1 %257, label %258, label %259, !prof !47, !nosanitize !46

258:                                              ; preds = %276, %255
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

259:                                              ; preds = %255
  %260 = extractvalue { i32, i1 } %256, 0, !nosanitize !46
  store i32 %260, ptr %6, align 8, !tbaa !68
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %219, !llvm.loop !134

262:                                              ; preds = %259
  store i32 0, ptr %25, align 8, !tbaa !70
  store i32 2, ptr %5, align 8, !tbaa !69
  %263 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %223, i32 1), !nosanitize !46
  %264 = extractvalue { i32, i1 } %263, 1, !nosanitize !46
  br i1 %264, label %265, label %266, !prof !47, !nosanitize !46

265:                                              ; preds = %262
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

266:                                              ; preds = %262
  %267 = extractvalue { i32, i1 } %263, 0, !nosanitize !46
  store i32 %267, ptr %9, align 4, !tbaa !64
  br i1 %200, label %269, label %268

268:                                              ; preds = %469, %452, %328, %266
  br label %28

269:                                              ; preds = %266
  %270 = load i64, ptr %26, align 8, !tbaa !65
  %271 = icmp sgt i64 %270, -1
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load ptr, ptr %10, align 8, !tbaa !37
  %274 = and i64 %270, 4294967295
  %275 = getelementptr inbounds nuw i8, ptr %273, i64 %274
  br label %276

276:                                              ; preds = %272, %269
  %277 = phi ptr [ %275, %272 ], [ null, %269 ]
  %278 = zext i32 %267 to i64
  %279 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %278, i64 %270), !nosanitize !46
  %280 = extractvalue { i64, i1 } %279, 1, !nosanitize !46
  br i1 %280, label %258, label %281, !prof !47, !nosanitize !46

281:                                              ; preds = %276
  %282 = extractvalue { i64, i1 } %279, 0, !nosanitize !46
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %277, i64 noundef %282, i32 noundef 0) #11
  %283 = load i32, ptr %9, align 4, !tbaa !64
  %284 = zext i32 %283 to i64
  store i64 %284, ptr %26, align 8, !tbaa !65
  %285 = load ptr, ptr %0, align 8, !tbaa !19
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 56
  %287 = load ptr, ptr %286, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %287) #11
  %288 = getelementptr inbounds nuw i8, ptr %287, i64 40
  %289 = load i64, ptr %288, align 8, !tbaa !90
  %290 = getelementptr inbounds nuw i8, ptr %285, i64 32
  %291 = load i32, ptr %290, align 8, !tbaa !101
  %292 = zext i32 %291 to i64
  %293 = tail call i64 @llvm.umin.i64(i64 %289, i64 %292)
  %294 = trunc nuw i64 %293 to i32
  %295 = icmp eq i64 %293, 0
  br i1 %295, label %328, label %296

296:                                              ; preds = %281
  %297 = getelementptr inbounds nuw i8, ptr %285, i64 24
  %298 = load ptr, ptr %297, align 8, !tbaa !100
  %299 = getelementptr inbounds nuw i8, ptr %287, i64 32
  %300 = load ptr, ptr %299, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %298, ptr align 1 %300, i64 %293, i1 false)
  %301 = load ptr, ptr %297, align 8, !tbaa !100
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 %293
  store ptr %302, ptr %297, align 8, !tbaa !100
  %303 = load ptr, ptr %299, align 8, !tbaa !91
  %304 = getelementptr inbounds nuw i8, ptr %303, i64 %293
  store ptr %304, ptr %299, align 8, !tbaa !91
  %305 = getelementptr inbounds nuw i8, ptr %285, i64 40
  %306 = load i64, ptr %305, align 8, !tbaa !102
  %307 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %306, i64 %293), !nosanitize !46
  %308 = extractvalue { i64, i1 } %307, 1, !nosanitize !46
  br i1 %308, label %309, label %310, !prof !47, !nosanitize !46

309:                                              ; preds = %296
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

310:                                              ; preds = %296
  %311 = extractvalue { i64, i1 } %307, 0, !nosanitize !46
  store i64 %311, ptr %305, align 8, !tbaa !102
  %312 = load i32, ptr %290, align 8, !tbaa !101
  %313 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %312, i32 %294), !nosanitize !46
  %314 = extractvalue { i32, i1 } %313, 1, !nosanitize !46
  br i1 %314, label %315, label %316, !prof !47, !nosanitize !46

315:                                              ; preds = %310
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

316:                                              ; preds = %310
  %317 = extractvalue { i32, i1 } %313, 0, !nosanitize !46
  store i32 %317, ptr %290, align 8, !tbaa !101
  %318 = load i64, ptr %288, align 8, !tbaa !90
  %319 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %318, i64 %293), !nosanitize !46
  %320 = extractvalue { i64, i1 } %319, 1, !nosanitize !46
  br i1 %320, label %321, label %322, !prof !47, !nosanitize !46

321:                                              ; preds = %316
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

322:                                              ; preds = %316
  %323 = extractvalue { i64, i1 } %319, 0, !nosanitize !46
  store i64 %323, ptr %288, align 8, !tbaa !90
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = getelementptr inbounds nuw i8, ptr %287, i64 16
  %327 = load ptr, ptr %326, align 8, !tbaa !42
  store ptr %327, ptr %299, align 8, !tbaa !91
  br label %328

328:                                              ; preds = %325, %322, %281
  %329 = load ptr, ptr %0, align 8, !tbaa !19
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 32
  %331 = load i32, ptr %330, align 8, !tbaa !101
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %654, label %268

333:                                              ; preds = %111
  %334 = load i32, ptr %25, align 8, !tbaa !70
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %458, label %336

336:                                              ; preds = %333
  %337 = load i32, ptr %9, align 4, !tbaa !64
  %338 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %337, i32 1), !nosanitize !46
  %339 = extractvalue { i32, i1 } %338, 1, !nosanitize !46
  br i1 %339, label %340, label %341, !prof !47, !nosanitize !46

340:                                              ; preds = %388, %336
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

341:                                              ; preds = %336
  %342 = extractvalue { i32, i1 } %338, 0, !nosanitize !46
  %343 = load ptr, ptr %10, align 8, !tbaa !37
  %344 = zext i32 %342 to i64
  %345 = getelementptr inbounds nuw i8, ptr %343, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !8
  %347 = load i32, ptr %21, align 4, !tbaa !127
  %348 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %347, i32 1), !nosanitize !46
  %349 = extractvalue { i32, i1 } %348, 1, !nosanitize !46
  br i1 %349, label %350, label %351, !prof !47, !nosanitize !46

350:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

351:                                              ; preds = %341
  %352 = extractvalue { i32, i1 } %348, 0, !nosanitize !46
  %353 = load ptr, ptr %20, align 8, !tbaa !45
  store i32 %352, ptr %21, align 4, !tbaa !127
  %354 = zext i32 %347 to i64
  %355 = getelementptr inbounds nuw i8, ptr %353, i64 %354
  store i8 0, ptr %355, align 1, !tbaa !8
  %356 = load i32, ptr %21, align 4, !tbaa !127
  %357 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %356, i32 1), !nosanitize !46
  %358 = extractvalue { i32, i1 } %357, 1, !nosanitize !46
  br i1 %358, label %359, label %360, !prof !47, !nosanitize !46

359:                                              ; preds = %351
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

360:                                              ; preds = %351
  %361 = extractvalue { i32, i1 } %357, 0, !nosanitize !46
  %362 = load ptr, ptr %20, align 8, !tbaa !45
  store i32 %361, ptr %21, align 4, !tbaa !127
  %363 = zext i32 %356 to i64
  %364 = getelementptr inbounds nuw i8, ptr %362, i64 %363
  store i8 0, ptr %364, align 1, !tbaa !8
  %365 = load i32, ptr %21, align 4, !tbaa !127
  %366 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %365, i32 1), !nosanitize !46
  %367 = extractvalue { i32, i1 } %366, 1, !nosanitize !46
  br i1 %367, label %368, label %369, !prof !47, !nosanitize !46

368:                                              ; preds = %360
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

369:                                              ; preds = %360
  %370 = extractvalue { i32, i1 } %366, 0, !nosanitize !46
  %371 = load ptr, ptr %20, align 8, !tbaa !45
  store i32 %370, ptr %21, align 4, !tbaa !127
  %372 = zext i32 %365 to i64
  %373 = getelementptr inbounds nuw i8, ptr %371, i64 %372
  store i8 %346, ptr %373, align 1, !tbaa !8
  %374 = zext i8 %346 to i64
  %375 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %374
  %376 = load i16, ptr %375, align 4, !tbaa !8
  %377 = add i16 %376, 1
  store i16 %377, ptr %375, align 4, !tbaa !8
  %378 = load i32, ptr %21, align 4, !tbaa !127
  %379 = load i32, ptr %24, align 8, !tbaa !48
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %441

381:                                              ; preds = %369
  %382 = load i64, ptr %26, align 8, !tbaa !65
  %383 = icmp sgt i64 %382, -1
  br i1 %383, label %384, label %388

384:                                              ; preds = %381
  %385 = load ptr, ptr %10, align 8, !tbaa !37
  %386 = and i64 %382, 4294967295
  %387 = getelementptr inbounds nuw i8, ptr %385, i64 %386
  br label %388

388:                                              ; preds = %384, %381
  %389 = phi ptr [ %387, %384 ], [ null, %381 ]
  %390 = load i32, ptr %9, align 4, !tbaa !64
  %391 = zext i32 %390 to i64
  %392 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %391, i64 %382), !nosanitize !46
  %393 = extractvalue { i64, i1 } %392, 1, !nosanitize !46
  br i1 %393, label %340, label %394, !prof !47, !nosanitize !46

394:                                              ; preds = %388
  %395 = extractvalue { i64, i1 } %392, 0, !nosanitize !46
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %389, i64 noundef %395, i32 noundef 0) #11
  %396 = load i32, ptr %9, align 4, !tbaa !64
  %397 = zext i32 %396 to i64
  store i64 %397, ptr %26, align 8, !tbaa !65
  %398 = load ptr, ptr %0, align 8, !tbaa !19
  %399 = getelementptr inbounds nuw i8, ptr %398, i64 56
  %400 = load ptr, ptr %399, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %400) #11
  %401 = getelementptr inbounds nuw i8, ptr %400, i64 40
  %402 = load i64, ptr %401, align 8, !tbaa !90
  %403 = getelementptr inbounds nuw i8, ptr %398, i64 32
  %404 = load i32, ptr %403, align 8, !tbaa !101
  %405 = zext i32 %404 to i64
  %406 = tail call i64 @llvm.umin.i64(i64 %402, i64 %405)
  %407 = trunc nuw i64 %406 to i32
  %408 = icmp eq i64 %406, 0
  br i1 %408, label %441, label %409

409:                                              ; preds = %394
  %410 = getelementptr inbounds nuw i8, ptr %398, i64 24
  %411 = load ptr, ptr %410, align 8, !tbaa !100
  %412 = getelementptr inbounds nuw i8, ptr %400, i64 32
  %413 = load ptr, ptr %412, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %411, ptr align 1 %413, i64 %406, i1 false)
  %414 = load ptr, ptr %410, align 8, !tbaa !100
  %415 = getelementptr inbounds nuw i8, ptr %414, i64 %406
  store ptr %415, ptr %410, align 8, !tbaa !100
  %416 = load ptr, ptr %412, align 8, !tbaa !91
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 %406
  store ptr %417, ptr %412, align 8, !tbaa !91
  %418 = getelementptr inbounds nuw i8, ptr %398, i64 40
  %419 = load i64, ptr %418, align 8, !tbaa !102
  %420 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %419, i64 %406), !nosanitize !46
  %421 = extractvalue { i64, i1 } %420, 1, !nosanitize !46
  br i1 %421, label %422, label %423, !prof !47, !nosanitize !46

422:                                              ; preds = %409
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

423:                                              ; preds = %409
  %424 = extractvalue { i64, i1 } %420, 0, !nosanitize !46
  store i64 %424, ptr %418, align 8, !tbaa !102
  %425 = load i32, ptr %403, align 8, !tbaa !101
  %426 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %425, i32 %407), !nosanitize !46
  %427 = extractvalue { i32, i1 } %426, 1, !nosanitize !46
  br i1 %427, label %428, label %429, !prof !47, !nosanitize !46

428:                                              ; preds = %423
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

429:                                              ; preds = %423
  %430 = extractvalue { i32, i1 } %426, 0, !nosanitize !46
  store i32 %430, ptr %403, align 8, !tbaa !101
  %431 = load i64, ptr %401, align 8, !tbaa !90
  %432 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %431, i64 %406), !nosanitize !46
  %433 = extractvalue { i64, i1 } %432, 1, !nosanitize !46
  br i1 %433, label %434, label %435, !prof !47, !nosanitize !46

434:                                              ; preds = %429
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

435:                                              ; preds = %429
  %436 = extractvalue { i64, i1 } %432, 0, !nosanitize !46
  store i64 %436, ptr %401, align 8, !tbaa !90
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %435
  %439 = getelementptr inbounds nuw i8, ptr %400, i64 16
  %440 = load ptr, ptr %439, align 8, !tbaa !42
  store ptr %440, ptr %412, align 8, !tbaa !91
  br label %441

441:                                              ; preds = %438, %435, %394, %369
  %442 = load i32, ptr %9, align 4, !tbaa !64
  %443 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %442, i32 1), !nosanitize !46
  %444 = extractvalue { i32, i1 } %443, 1, !nosanitize !46
  br i1 %444, label %445, label %446, !prof !47, !nosanitize !46

445:                                              ; preds = %441
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

446:                                              ; preds = %441
  %447 = extractvalue { i32, i1 } %443, 0, !nosanitize !46
  store i32 %447, ptr %9, align 4, !tbaa !64
  %448 = load i32, ptr %3, align 4, !tbaa !66
  %449 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %448, i32 1), !nosanitize !46
  %450 = extractvalue { i32, i1 } %449, 1, !nosanitize !46
  br i1 %450, label %451, label %452, !prof !47, !nosanitize !46

451:                                              ; preds = %446
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

452:                                              ; preds = %446
  %453 = extractvalue { i32, i1 } %449, 0, !nosanitize !46
  store i32 %453, ptr %3, align 4, !tbaa !66
  %454 = load ptr, ptr %0, align 8, !tbaa !19
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 32
  %456 = load i32, ptr %455, align 8, !tbaa !101
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %654, label %268

458:                                              ; preds = %333
  store i32 1, ptr %25, align 8, !tbaa !70
  %459 = load i32, ptr %9, align 4, !tbaa !64
  %460 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %459, i32 1), !nosanitize !46
  %461 = extractvalue { i32, i1 } %460, 1, !nosanitize !46
  br i1 %461, label %462, label %463, !prof !47, !nosanitize !46

462:                                              ; preds = %458
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

463:                                              ; preds = %458
  %464 = extractvalue { i32, i1 } %460, 0, !nosanitize !46
  store i32 %464, ptr %9, align 4, !tbaa !64
  %465 = load i32, ptr %3, align 4, !tbaa !66
  %466 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %465, i32 1), !nosanitize !46
  %467 = extractvalue { i32, i1 } %466, 1, !nosanitize !46
  br i1 %467, label %468, label %469, !prof !47, !nosanitize !46

468:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

469:                                              ; preds = %463
  %470 = extractvalue { i32, i1 } %466, 0, !nosanitize !46
  store i32 %470, ptr %3, align 4, !tbaa !66
  br label %268

471:                                              ; preds = %35
  %472 = load i32, ptr %25, align 8, !tbaa !70
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %516, label %474

474:                                              ; preds = %471
  %475 = load i32, ptr %9, align 4, !tbaa !64
  %476 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %475, i32 1), !nosanitize !46
  %477 = extractvalue { i32, i1 } %476, 1, !nosanitize !46
  br i1 %477, label %478, label %479, !prof !47, !nosanitize !46

478:                                              ; preds = %596, %528, %474
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

479:                                              ; preds = %474
  %480 = extractvalue { i32, i1 } %476, 0, !nosanitize !46
  %481 = load ptr, ptr %10, align 8, !tbaa !37
  %482 = zext i32 %480 to i64
  %483 = getelementptr inbounds nuw i8, ptr %481, i64 %482
  %484 = load i8, ptr %483, align 1, !tbaa !8
  %485 = load i32, ptr %21, align 4, !tbaa !127
  %486 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %485, i32 1), !nosanitize !46
  %487 = extractvalue { i32, i1 } %486, 1, !nosanitize !46
  br i1 %487, label %488, label %489, !prof !47, !nosanitize !46

488:                                              ; preds = %479
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

489:                                              ; preds = %479
  %490 = extractvalue { i32, i1 } %486, 0, !nosanitize !46
  %491 = load ptr, ptr %20, align 8, !tbaa !45
  store i32 %490, ptr %21, align 4, !tbaa !127
  %492 = zext i32 %485 to i64
  %493 = getelementptr inbounds nuw i8, ptr %491, i64 %492
  store i8 0, ptr %493, align 1, !tbaa !8
  %494 = load i32, ptr %21, align 4, !tbaa !127
  %495 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %494, i32 1), !nosanitize !46
  %496 = extractvalue { i32, i1 } %495, 1, !nosanitize !46
  br i1 %496, label %497, label %498, !prof !47, !nosanitize !46

497:                                              ; preds = %489
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

498:                                              ; preds = %489
  %499 = extractvalue { i32, i1 } %495, 0, !nosanitize !46
  %500 = load ptr, ptr %20, align 8, !tbaa !45
  store i32 %499, ptr %21, align 4, !tbaa !127
  %501 = zext i32 %494 to i64
  %502 = getelementptr inbounds nuw i8, ptr %500, i64 %501
  store i8 0, ptr %502, align 1, !tbaa !8
  %503 = load i32, ptr %21, align 4, !tbaa !127
  %504 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %503, i32 1), !nosanitize !46
  %505 = extractvalue { i32, i1 } %504, 1, !nosanitize !46
  br i1 %505, label %506, label %507, !prof !47, !nosanitize !46

506:                                              ; preds = %498
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

507:                                              ; preds = %498
  %508 = extractvalue { i32, i1 } %504, 0, !nosanitize !46
  %509 = load ptr, ptr %20, align 8, !tbaa !45
  store i32 %508, ptr %21, align 4, !tbaa !127
  %510 = zext i32 %503 to i64
  %511 = getelementptr inbounds nuw i8, ptr %509, i64 %510
  store i8 %484, ptr %511, align 1, !tbaa !8
  %512 = zext i8 %484 to i64
  %513 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %512
  %514 = load i16, ptr %513, align 4, !tbaa !8
  %515 = add i16 %514, 1
  store i16 %515, ptr %513, align 4, !tbaa !8
  store i32 0, ptr %25, align 8, !tbaa !70
  br label %516

516:                                              ; preds = %507, %471
  %517 = load i32, ptr %9, align 4, !tbaa !64
  %518 = tail call i32 @llvm.umin.i32(i32 %517, i32 2)
  %519 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %518, ptr %519, align 4, !tbaa !67
  %520 = icmp eq i32 %1, 4
  br i1 %520, label %521, label %586

521:                                              ; preds = %516
  %522 = load i64, ptr %26, align 8, !tbaa !65
  %523 = icmp sgt i64 %522, -1
  br i1 %523, label %524, label %528

524:                                              ; preds = %521
  %525 = load ptr, ptr %10, align 8, !tbaa !37
  %526 = and i64 %522, 4294967295
  %527 = getelementptr inbounds nuw i8, ptr %525, i64 %526
  br label %528

528:                                              ; preds = %524, %521
  %529 = phi ptr [ %527, %524 ], [ null, %521 ]
  %530 = zext i32 %517 to i64
  %531 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %530, i64 %522), !nosanitize !46
  %532 = extractvalue { i64, i1 } %531, 1, !nosanitize !46
  br i1 %532, label %478, label %533, !prof !47, !nosanitize !46

533:                                              ; preds = %528
  %534 = extractvalue { i64, i1 } %531, 0, !nosanitize !46
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %529, i64 noundef %534, i32 noundef 1) #11
  %535 = load i32, ptr %9, align 4, !tbaa !64
  %536 = zext i32 %535 to i64
  store i64 %536, ptr %26, align 8, !tbaa !65
  %537 = load ptr, ptr %0, align 8, !tbaa !19
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 56
  %539 = load ptr, ptr %538, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %539) #11
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 40
  %541 = load i64, ptr %540, align 8, !tbaa !90
  %542 = getelementptr inbounds nuw i8, ptr %537, i64 32
  %543 = load i32, ptr %542, align 8, !tbaa !101
  %544 = zext i32 %543 to i64
  %545 = tail call i64 @llvm.umin.i64(i64 %541, i64 %544)
  %546 = trunc nuw i64 %545 to i32
  %547 = icmp eq i64 %545, 0
  br i1 %547, label %580, label %548

548:                                              ; preds = %533
  %549 = getelementptr inbounds nuw i8, ptr %537, i64 24
  %550 = load ptr, ptr %549, align 8, !tbaa !100
  %551 = getelementptr inbounds nuw i8, ptr %539, i64 32
  %552 = load ptr, ptr %551, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %550, ptr align 1 %552, i64 %545, i1 false)
  %553 = load ptr, ptr %549, align 8, !tbaa !100
  %554 = getelementptr inbounds nuw i8, ptr %553, i64 %545
  store ptr %554, ptr %549, align 8, !tbaa !100
  %555 = load ptr, ptr %551, align 8, !tbaa !91
  %556 = getelementptr inbounds nuw i8, ptr %555, i64 %545
  store ptr %556, ptr %551, align 8, !tbaa !91
  %557 = getelementptr inbounds nuw i8, ptr %537, i64 40
  %558 = load i64, ptr %557, align 8, !tbaa !102
  %559 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %558, i64 %545), !nosanitize !46
  %560 = extractvalue { i64, i1 } %559, 1, !nosanitize !46
  br i1 %560, label %561, label %562, !prof !47, !nosanitize !46

561:                                              ; preds = %548
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

562:                                              ; preds = %548
  %563 = extractvalue { i64, i1 } %559, 0, !nosanitize !46
  store i64 %563, ptr %557, align 8, !tbaa !102
  %564 = load i32, ptr %542, align 8, !tbaa !101
  %565 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %564, i32 %546), !nosanitize !46
  %566 = extractvalue { i32, i1 } %565, 1, !nosanitize !46
  br i1 %566, label %567, label %568, !prof !47, !nosanitize !46

567:                                              ; preds = %562
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

568:                                              ; preds = %562
  %569 = extractvalue { i32, i1 } %565, 0, !nosanitize !46
  store i32 %569, ptr %542, align 8, !tbaa !101
  %570 = load i64, ptr %540, align 8, !tbaa !90
  %571 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %570, i64 %545), !nosanitize !46
  %572 = extractvalue { i64, i1 } %571, 1, !nosanitize !46
  br i1 %572, label %573, label %574, !prof !47, !nosanitize !46

573:                                              ; preds = %568
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

574:                                              ; preds = %568
  %575 = extractvalue { i64, i1 } %571, 0, !nosanitize !46
  store i64 %575, ptr %540, align 8, !tbaa !90
  %576 = icmp eq i64 %575, 0
  br i1 %576, label %577, label %580

577:                                              ; preds = %574
  %578 = getelementptr inbounds nuw i8, ptr %539, i64 16
  %579 = load ptr, ptr %578, align 8, !tbaa !42
  store ptr %579, ptr %551, align 8, !tbaa !91
  br label %580

580:                                              ; preds = %577, %574, %533
  %581 = load ptr, ptr %0, align 8, !tbaa !19
  %582 = getelementptr inbounds nuw i8, ptr %581, i64 32
  %583 = load i32, ptr %582, align 8, !tbaa !101
  %584 = icmp eq i32 %583, 0
  %585 = select i1 %584, i32 2, i32 3
  br label %654

586:                                              ; preds = %516
  %587 = load i32, ptr %21, align 4, !tbaa !127
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %653, label %589

589:                                              ; preds = %586
  %590 = load i64, ptr %26, align 8, !tbaa !65
  %591 = icmp sgt i64 %590, -1
  br i1 %591, label %592, label %596

592:                                              ; preds = %589
  %593 = load ptr, ptr %10, align 8, !tbaa !37
  %594 = and i64 %590, 4294967295
  %595 = getelementptr inbounds nuw i8, ptr %593, i64 %594
  br label %596

596:                                              ; preds = %592, %589
  %597 = phi ptr [ %595, %592 ], [ null, %589 ]
  %598 = zext i32 %517 to i64
  %599 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %598, i64 %590), !nosanitize !46
  %600 = extractvalue { i64, i1 } %599, 1, !nosanitize !46
  br i1 %600, label %478, label %601, !prof !47, !nosanitize !46

601:                                              ; preds = %596
  %602 = extractvalue { i64, i1 } %599, 0, !nosanitize !46
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %597, i64 noundef %602, i32 noundef 0) #11
  %603 = load i32, ptr %9, align 4, !tbaa !64
  %604 = zext i32 %603 to i64
  store i64 %604, ptr %26, align 8, !tbaa !65
  %605 = load ptr, ptr %0, align 8, !tbaa !19
  %606 = getelementptr inbounds nuw i8, ptr %605, i64 56
  %607 = load ptr, ptr %606, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %607) #11
  %608 = getelementptr inbounds nuw i8, ptr %607, i64 40
  %609 = load i64, ptr %608, align 8, !tbaa !90
  %610 = getelementptr inbounds nuw i8, ptr %605, i64 32
  %611 = load i32, ptr %610, align 8, !tbaa !101
  %612 = zext i32 %611 to i64
  %613 = tail call i64 @llvm.umin.i64(i64 %609, i64 %612)
  %614 = trunc nuw i64 %613 to i32
  %615 = icmp eq i64 %613, 0
  br i1 %615, label %648, label %616

616:                                              ; preds = %601
  %617 = getelementptr inbounds nuw i8, ptr %605, i64 24
  %618 = load ptr, ptr %617, align 8, !tbaa !100
  %619 = getelementptr inbounds nuw i8, ptr %607, i64 32
  %620 = load ptr, ptr %619, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %618, ptr align 1 %620, i64 %613, i1 false)
  %621 = load ptr, ptr %617, align 8, !tbaa !100
  %622 = getelementptr inbounds nuw i8, ptr %621, i64 %613
  store ptr %622, ptr %617, align 8, !tbaa !100
  %623 = load ptr, ptr %619, align 8, !tbaa !91
  %624 = getelementptr inbounds nuw i8, ptr %623, i64 %613
  store ptr %624, ptr %619, align 8, !tbaa !91
  %625 = getelementptr inbounds nuw i8, ptr %605, i64 40
  %626 = load i64, ptr %625, align 8, !tbaa !102
  %627 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %626, i64 %613), !nosanitize !46
  %628 = extractvalue { i64, i1 } %627, 1, !nosanitize !46
  br i1 %628, label %629, label %630, !prof !47, !nosanitize !46

629:                                              ; preds = %616
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !46
  unreachable, !nosanitize !46

630:                                              ; preds = %616
  %631 = extractvalue { i64, i1 } %627, 0, !nosanitize !46
  store i64 %631, ptr %625, align 8, !tbaa !102
  %632 = load i32, ptr %610, align 8, !tbaa !101
  %633 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %632, i32 %614), !nosanitize !46
  %634 = extractvalue { i32, i1 } %633, 1, !nosanitize !46
  br i1 %634, label %635, label %636, !prof !47, !nosanitize !46

635:                                              ; preds = %630
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

636:                                              ; preds = %630
  %637 = extractvalue { i32, i1 } %633, 0, !nosanitize !46
  store i32 %637, ptr %610, align 8, !tbaa !101
  %638 = load i64, ptr %608, align 8, !tbaa !90
  %639 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %638, i64 %613), !nosanitize !46
  %640 = extractvalue { i64, i1 } %639, 1, !nosanitize !46
  br i1 %640, label %641, label %642, !prof !47, !nosanitize !46

641:                                              ; preds = %636
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

642:                                              ; preds = %636
  %643 = extractvalue { i64, i1 } %639, 0, !nosanitize !46
  store i64 %643, ptr %608, align 8, !tbaa !90
  %644 = icmp eq i64 %643, 0
  br i1 %644, label %645, label %648

645:                                              ; preds = %642
  %646 = getelementptr inbounds nuw i8, ptr %607, i64 16
  %647 = load ptr, ptr %646, align 8, !tbaa !42
  store ptr %647, ptr %619, align 8, !tbaa !91
  br label %648

648:                                              ; preds = %645, %642, %601
  %649 = load ptr, ptr %0, align 8, !tbaa !19
  %650 = getelementptr inbounds nuw i8, ptr %649, i64 32
  %651 = load i32, ptr %650, align 8, !tbaa !101
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %654, label %653

653:                                              ; preds = %648, %586
  br label %654

654:                                              ; preds = %653, %648, %580, %452, %328, %31
  %655 = phi i32 [ 0, %648 ], [ %585, %580 ], [ 1, %653 ], [ 0, %31 ], [ 0, %328 ], [ 0, %452 ]
  ret i32 %655
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc i32 @longest_match(ptr noundef captures(none) %0, i32 noundef range(i32 1, 65536) %1) unnamed_addr #10 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 188
  %4 = load i32, ptr %3, align 4, !tbaa !63
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %8 = load i32, ptr %7, align 4, !tbaa !64
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %12 = load i32, ptr %11, align 8, !tbaa !68
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %14 = load i32, ptr %13, align 8, !tbaa !61
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %16 = load i32, ptr %15, align 8, !tbaa !31
  %17 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %16, i32 262), !nosanitize !46
  %18 = extractvalue { i32, i1 } %17, 1, !nosanitize !46
  br i1 %18, label %19, label %20, !prof !47, !nosanitize !46

19:                                               ; preds = %2
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

20:                                               ; preds = %2
  %21 = extractvalue { i32, i1 } %17, 0, !nosanitize !46
  %22 = tail call i32 @llvm.usub.sat.i32(i32 %8, i32 %21)
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %26 = load i32, ptr %25, align 8, !tbaa !32
  %27 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 -1)
  %28 = extractvalue { i32, i1 } %27, 1, !nosanitize !46
  br i1 %28, label %29, label %30, !prof !47, !nosanitize !46

29:                                               ; preds = %152, %62, %20
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

30:                                               ; preds = %20
  %31 = getelementptr inbounds nuw i8, ptr %10, i64 258
  %32 = extractvalue { i32, i1 } %27, 0, !nosanitize !46
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %10, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !8
  %36 = sext i32 %12 to i64
  %37 = getelementptr inbounds i8, ptr %10, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !8
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 204
  %40 = load i32, ptr %39, align 4, !tbaa !59
  %41 = icmp ult i32 %12, %40
  %42 = lshr i32 %4, 2
  %43 = select i1 %41, i32 %4, i32 %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %45 = load i32, ptr %44, align 4, !tbaa !66
  %46 = tail call i32 @llvm.umin.i32(i32 %14, i32 %45)
  %47 = getelementptr inbounds nuw i8, ptr %10, i64 1
  %48 = ptrtoint ptr %31 to i64
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %50

50:                                               ; preds = %184, %30
  %51 = phi i32 [ %12, %30 ], [ %171, %184 ]
  %52 = phi i32 [ %43, %30 ], [ %185, %184 ]
  %53 = phi i32 [ %1, %30 ], [ %178, %184 ]
  %54 = phi i8 [ %35, %30 ], [ %172, %184 ]
  %55 = phi i8 [ %38, %30 ], [ %173, %184 ]
  %56 = zext nneg i32 %53 to i64
  %57 = getelementptr inbounds nuw i8, ptr %6, i64 %56
  %58 = sext i32 %51 to i64
  %59 = getelementptr inbounds i8, ptr %57, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !8
  %61 = icmp eq i8 %60, %55
  br i1 %61, label %62, label %170

62:                                               ; preds = %50
  %63 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %51, i32 -1)
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !46
  br i1 %64, label %29, label %65, !prof !47, !nosanitize !46

65:                                               ; preds = %62
  %66 = extractvalue { i32, i1 } %63, 0, !nosanitize !46
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %57, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !8
  %70 = icmp eq i8 %69, %54
  br i1 %70, label %71, label %170

71:                                               ; preds = %65
  %72 = load i8, ptr %57, align 1, !tbaa !8
  %73 = load i8, ptr %10, align 1, !tbaa !8
  %74 = icmp eq i8 %72, %73
  br i1 %74, label %75, label %170

75:                                               ; preds = %71
  %76 = getelementptr inbounds nuw i8, ptr %57, i64 1
  %77 = load i8, ptr %76, align 1, !tbaa !8
  %78 = load i8, ptr %47, align 1, !tbaa !8
  %79 = icmp eq i8 %77, %78
  br i1 %79, label %80, label %170

80:                                               ; preds = %75
  %81 = getelementptr inbounds nuw i8, ptr %57, i64 2
  br label %82

82:                                               ; preds = %127, %80
  %83 = phi ptr [ %81, %80 ], [ %131, %127 ]
  %84 = phi i64 [ 2, %80 ], [ %128, %127 ]
  %85 = getelementptr inbounds nuw i8, ptr %10, i64 %84
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !8
  %88 = getelementptr inbounds nuw i8, ptr %83, i64 1
  %89 = load i8, ptr %88, align 1, !tbaa !8
  %90 = icmp eq i8 %87, %89
  br i1 %90, label %91, label %136

91:                                               ; preds = %82
  %92 = getelementptr inbounds nuw i8, ptr %85, i64 2
  %93 = load i8, ptr %92, align 1, !tbaa !8
  %94 = getelementptr inbounds nuw i8, ptr %83, i64 2
  %95 = load i8, ptr %94, align 1, !tbaa !8
  %96 = icmp eq i8 %93, %95
  br i1 %96, label %97, label %138

97:                                               ; preds = %91
  %98 = getelementptr inbounds nuw i8, ptr %85, i64 3
  %99 = load i8, ptr %98, align 1, !tbaa !8
  %100 = getelementptr inbounds nuw i8, ptr %83, i64 3
  %101 = load i8, ptr %100, align 1, !tbaa !8
  %102 = icmp eq i8 %99, %101
  br i1 %102, label %103, label %140

103:                                              ; preds = %97
  %104 = getelementptr inbounds nuw i8, ptr %85, i64 4
  %105 = load i8, ptr %104, align 1, !tbaa !8
  %106 = getelementptr inbounds nuw i8, ptr %83, i64 4
  %107 = load i8, ptr %106, align 1, !tbaa !8
  %108 = icmp eq i8 %105, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %103
  %110 = getelementptr inbounds nuw i8, ptr %85, i64 5
  %111 = load i8, ptr %110, align 1, !tbaa !8
  %112 = getelementptr inbounds nuw i8, ptr %83, i64 5
  %113 = load i8, ptr %112, align 1, !tbaa !8
  %114 = icmp eq i8 %111, %113
  br i1 %114, label %115, label %144

115:                                              ; preds = %109
  %116 = getelementptr inbounds nuw i8, ptr %85, i64 6
  %117 = load i8, ptr %116, align 1, !tbaa !8
  %118 = getelementptr inbounds nuw i8, ptr %83, i64 6
  %119 = load i8, ptr %118, align 1, !tbaa !8
  %120 = icmp eq i8 %117, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %115
  %122 = getelementptr inbounds nuw i8, ptr %85, i64 7
  %123 = load i8, ptr %122, align 1, !tbaa !8
  %124 = getelementptr inbounds nuw i8, ptr %83, i64 7
  %125 = load i8, ptr %124, align 1, !tbaa !8
  %126 = icmp eq i8 %123, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %121
  %128 = add nuw nsw i64 %84, 8
  %129 = getelementptr inbounds nuw i8, ptr %10, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !8
  %131 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %132 = load i8, ptr %131, align 1, !tbaa !8
  %133 = icmp eq i8 %130, %132
  %134 = icmp samesign ult i64 %84, 250
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %82, label %150, !llvm.loop !135

136:                                              ; preds = %82
  %137 = getelementptr inbounds nuw i8, ptr %85, i64 1
  br label %152

138:                                              ; preds = %91
  %139 = getelementptr inbounds nuw i8, ptr %85, i64 2
  br label %152

140:                                              ; preds = %97
  %141 = getelementptr inbounds nuw i8, ptr %85, i64 3
  br label %152

142:                                              ; preds = %103
  %143 = getelementptr inbounds nuw i8, ptr %85, i64 4
  br label %152

144:                                              ; preds = %109
  %145 = getelementptr inbounds nuw i8, ptr %85, i64 5
  br label %152

146:                                              ; preds = %115
  %147 = getelementptr inbounds nuw i8, ptr %85, i64 6
  br label %152

148:                                              ; preds = %121
  %149 = getelementptr inbounds nuw i8, ptr %85, i64 7
  br label %152

150:                                              ; preds = %127
  %151 = getelementptr inbounds nuw i8, ptr %10, i64 %128
  br label %152

152:                                              ; preds = %150, %148, %146, %144, %142, %140, %138, %136
  %153 = phi ptr [ %139, %138 ], [ %141, %140 ], [ %137, %136 ], [ %149, %148 ], [ %147, %146 ], [ %145, %144 ], [ %143, %142 ], [ %151, %150 ]
  %154 = ptrtoint ptr %153 to i64
  %155 = sub i64 %48, %154
  %156 = trunc i64 %155 to i32
  %157 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %156), !nosanitize !46
  %158 = extractvalue { i32, i1 } %157, 0, !nosanitize !46
  %159 = extractvalue { i32, i1 } %157, 1, !nosanitize !46
  br i1 %159, label %29, label %160, !prof !47, !nosanitize !46

160:                                              ; preds = %152
  %161 = icmp sgt i32 %158, %51
  br i1 %161, label %162, label %170

162:                                              ; preds = %160
  store i32 %53, ptr %49, align 8, !tbaa !79
  %163 = icmp slt i32 %158, %46
  br i1 %163, label %164, label %187

164:                                              ; preds = %162
  %165 = sext i32 %158 to i64
  %166 = getelementptr i8, ptr %10, i64 %165
  %167 = getelementptr i8, ptr %166, i64 -1
  %168 = load i8, ptr %167, align 1, !tbaa !8
  %169 = load i8, ptr %166, align 1, !tbaa !8
  br label %170

170:                                              ; preds = %164, %160, %75, %71, %65, %50
  %171 = phi i32 [ %51, %50 ], [ %51, %65 ], [ %51, %71 ], [ %51, %75 ], [ %158, %164 ], [ %51, %160 ]
  %172 = phi i8 [ %54, %50 ], [ %54, %65 ], [ %54, %71 ], [ %54, %75 ], [ %168, %164 ], [ %54, %160 ]
  %173 = phi i8 [ %55, %50 ], [ %55, %65 ], [ %55, %71 ], [ %55, %75 ], [ %169, %164 ], [ %55, %160 ]
  %174 = and i32 %53, %26
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds nuw [2 x i8], ptr %24, i64 %175
  %177 = load i16, ptr %176, align 2, !tbaa !53
  %178 = zext i16 %177 to i32
  %179 = icmp ult i32 %22, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %170
  %181 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %52, i32 1), !nosanitize !46
  %182 = extractvalue { i32, i1 } %181, 1, !nosanitize !46
  br i1 %182, label %183, label %184, !prof !47, !nosanitize !46

183:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !46
  unreachable, !nosanitize !46

184:                                              ; preds = %180
  %185 = extractvalue { i32, i1 } %181, 0, !nosanitize !46
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %50, !llvm.loop !136

187:                                              ; preds = %184, %170, %162
  %188 = phi i32 [ %171, %184 ], [ %171, %170 ], [ %158, %162 ]
  %189 = tail call i32 @llvm.umin.i32(i32 %188, i32 %45)
  ret i32 %189
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!18 = !{!10, !14, i64 56}
!19 = !{!20, !21, i64 0}
!20 = !{!"internal_state", !21, i64 0, !5, i64 8, !11, i64 16, !13, i64 24, !11, i64 32, !13, i64 40, !5, i64 48, !22, i64 56, !13, i64 64, !6, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !11, i64 96, !13, i64 104, !23, i64 112, !23, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !13, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !6, i64 212, !6, i64 2504, !6, i64 2748, !24, i64 2904, !24, i64 2928, !24, i64 2952, !6, i64 2976, !6, i64 3008, !5, i64 5300, !5, i64 5304, !6, i64 5308, !11, i64 5888, !5, i64 5896, !5, i64 5900, !5, i64 5904, !13, i64 5912, !13, i64 5920, !5, i64 5928, !5, i64 5932, !27, i64 5936, !5, i64 5940, !5, i64 5944, !13, i64 5952, !5, i64 5960}
!21 = !{!"p1 _ZTS10z_stream_s", !12, i64 0}
!22 = !{!"p1 _ZTS11gz_header_s", !12, i64 0}
!23 = !{!"p1 short", !12, i64 0}
!24 = !{!"tree_desc_s", !25, i64 0, !5, i64 8, !26, i64 16}
!25 = !{!"p1 _ZTS9ct_data_s", !12, i64 0}
!26 = !{!"p1 _ZTS18static_tree_desc_s", !12, i64 0}
!27 = !{!"short", !6, i64 0}
!28 = !{!20, !5, i64 8}
!29 = !{!20, !5, i64 48}
!30 = !{!20, !5, i64 84}
!31 = !{!20, !5, i64 80}
!32 = !{!20, !5, i64 88}
!33 = !{!20, !5, i64 136}
!34 = !{!20, !5, i64 132}
!35 = !{!20, !5, i64 140}
!36 = !{!20, !5, i64 144}
!37 = !{!20, !11, i64 96}
!38 = !{!20, !23, i64 112}
!39 = !{!20, !23, i64 120}
!40 = !{!20, !13, i64 5952}
!41 = !{!20, !5, i64 5896}
!42 = !{!20, !11, i64 16}
!43 = !{!20, !13, i64 24}
!44 = !{!11, !11, i64 0}
!45 = !{!20, !11, i64 5888}
!46 = !{}
!47 = !{!"branch_weights", i32 1, i32 1048575}
!48 = !{!20, !5, i64 5904}
!49 = !{!20, !5, i64 196}
!50 = !{!20, !5, i64 200}
!51 = !{!20, !6, i64 72}
!52 = !{!20, !13, i64 104}
!53 = !{!27, !27, i64 0}
!54 = !{!20, !5, i64 5960}
!55 = !{!56, !27, i64 2}
!56 = !{!"config_s", !27, i64 0, !27, i64 2, !27, i64 4, !27, i64 6, !12, i64 8}
!57 = !{!20, !5, i64 192}
!58 = !{!56, !27, i64 0}
!59 = !{!20, !5, i64 204}
!60 = !{!56, !27, i64 4}
!61 = !{!20, !5, i64 208}
!62 = !{!56, !27, i64 6}
!63 = !{!20, !5, i64 188}
!64 = !{!20, !5, i64 172}
!65 = !{!20, !13, i64 152}
!66 = !{!20, !5, i64 180}
!67 = !{!20, !5, i64 5932}
!68 = !{!20, !5, i64 184}
!69 = !{!20, !5, i64 160}
!70 = !{!20, !5, i64 168}
!71 = !{!20, !5, i64 128}
!72 = !{!10, !13, i64 96}
!73 = !{!10, !5, i64 8}
!74 = !{!10, !11, i64 0}
!75 = !{!"branch_weights", i32 1048575, i32 1}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = distinct !{!78, !77}
!79 = !{!20, !5, i64 176}
!80 = distinct !{!80, !77, !81, !82}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = distinct !{!83, !77, !82, !81}
!84 = distinct !{!84, !77, !81, !82}
!85 = distinct !{!85, !77, !82, !81}
!86 = !{!10, !13, i64 16}
!87 = distinct !{!87, !77}
!88 = distinct !{!88, !77}
!89 = !{!10, !5, i64 88}
!90 = !{!20, !13, i64 40}
!91 = !{!20, !11, i64 32}
!92 = !{!20, !5, i64 76}
!93 = !{!20, !22, i64 56}
!94 = !{!20, !5, i64 5940}
!95 = !{!20, !5, i64 5944}
!96 = !{!20, !27, i64 5936}
!97 = distinct !{!97, !77}
!98 = !{!56, !12, i64 8}
!99 = !{!20, !5, i64 5928}
!100 = !{!10, !11, i64 24}
!101 = !{!10, !5, i64 32}
!102 = !{!10, !13, i64 40}
!103 = !{!104, !11, i64 56}
!104 = !{!"gz_header_s", !5, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !11, i64 24, !5, i64 32, !5, i64 36, !11, i64 40, !5, i64 48, !11, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!105 = !{!104, !11, i64 40}
!106 = !{!104, !11, i64 24}
!107 = !{!104, !5, i64 0}
!108 = !{!104, !5, i64 68}
!109 = !{!104, !13, i64 8}
!110 = !{!104, !5, i64 20}
!111 = !{!104, !5, i64 32}
!112 = !{!20, !13, i64 64}
!113 = distinct !{!113, !77, !114, !115}
!114 = !{!"llvm.loop.peeled.count", i32 1}
!115 = !{!"llvm.loop.estimated_trip_count", i32 1048575}
!116 = distinct !{!116, !77}
!117 = distinct !{!117, !77}
!118 = distinct !{!118, !77, !81, !82}
!119 = distinct !{!119, !77, !82, !81}
!120 = distinct !{!120, !77, !81, !82}
!121 = distinct !{!121, !77, !82, !81}
!122 = !{!"branch_weights", i32 1, i32 127}
!123 = !{!"branch_weights", i32 127, i32 134217473}
!124 = distinct !{!124, !77}
!125 = distinct !{!125, !77}
!126 = distinct !{!126, !77}
!127 = !{!20, !5, i64 5900}
!128 = distinct !{!128, !77}
!129 = !{!20, !25, i64 2904}
!130 = !{!20, !25, i64 2928}
!131 = !{!20, !25, i64 2952}
!132 = distinct !{!132, !77}
!133 = !{!20, !5, i64 164}
!134 = distinct !{!134, !77}
!135 = distinct !{!135, !77}
!136 = distinct !{!136, !77}
