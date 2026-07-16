; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.inflate.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inflate.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown header flags set\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"header crc mismatch\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"incorrect length check\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateResetKeep(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %24, align 8, !tbaa !21
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %26, align 8, !tbaa !22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %27, align 8, !tbaa !23
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %29 = load i32, ptr %28, align 8, !tbaa !24
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = and i32 %29, 1
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %33, ptr %34, align 8, !tbaa !25
  br label %35

35:                                               ; preds = %31, %23
  store i32 16180, ptr %19, align 8, !tbaa !20
  %36 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 0, ptr %36, align 4, !tbaa !26
  %37 = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %37, align 4, !tbaa !27
  %38 = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 -1, ptr %38, align 8, !tbaa !28
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 32768, ptr %39, align 4, !tbaa !29
  %40 = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr null, ptr %40, align 8, !tbaa !30
  %41 = getelementptr inbounds nuw i8, ptr %13, i64 80
  store i64 0, ptr %41, align 8, !tbaa !31
  %42 = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i32 0, ptr %42, align 8, !tbaa !32
  %43 = getelementptr inbounds nuw i8, ptr %13, i64 1368
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 144
  store ptr %43, ptr %44, align 8, !tbaa !33
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 112
  store ptr %43, ptr %45, align 8, !tbaa !34
  %46 = getelementptr inbounds nuw i8, ptr %13, i64 104
  store ptr %43, ptr %46, align 8, !tbaa !35
  %47 = getelementptr inbounds nuw i8, ptr %13, i64 7144
  store i32 1, ptr %47, align 8, !tbaa !36
  %48 = getelementptr inbounds nuw i8, ptr %13, i64 7148
  store i32 -1, ptr %48, align 4, !tbaa !37
  br label %49

49:                                               ; preds = %35, %18, %15, %11, %7, %3, %1
  %50 = phi i32 [ 0, %35 ], [ -2, %18 ], [ -2, %11 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %15 ]
  ret i32 %50
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %52

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 60
  store i32 0, ptr %24, align 4, !tbaa !38
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i32 0, ptr %25, align 8, !tbaa !39
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 68
  store i32 0, ptr %26, align 4, !tbaa !40
  %27 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %27, align 8, !tbaa !21
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %29, align 8, !tbaa !22
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %30, align 8, !tbaa !23
  %31 = getelementptr inbounds nuw i8, ptr %13, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  %32 = load i32, ptr %31, align 8, !tbaa !24
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %23
  %35 = and i32 %32, 1
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %36, ptr %37, align 8, !tbaa !25
  br label %38

38:                                               ; preds = %34, %23
  store i32 16180, ptr %19, align 8, !tbaa !20
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 0, ptr %39, align 4, !tbaa !26
  %40 = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %40, align 4, !tbaa !27
  %41 = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 -1, ptr %41, align 8, !tbaa !28
  %42 = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 32768, ptr %42, align 4, !tbaa !29
  %43 = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr null, ptr %43, align 8, !tbaa !30
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 80
  store i64 0, ptr %44, align 8, !tbaa !31
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i32 0, ptr %45, align 8, !tbaa !32
  %46 = getelementptr inbounds nuw i8, ptr %13, i64 1368
  %47 = getelementptr inbounds nuw i8, ptr %13, i64 144
  store ptr %46, ptr %47, align 8, !tbaa !33
  %48 = getelementptr inbounds nuw i8, ptr %13, i64 112
  store ptr %46, ptr %48, align 8, !tbaa !34
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 104
  store ptr %46, ptr %49, align 8, !tbaa !35
  %50 = getelementptr inbounds nuw i8, ptr %13, i64 7144
  store i32 1, ptr %50, align 8, !tbaa !36
  %51 = getelementptr inbounds nuw i8, ptr %13, i64 7148
  store i32 -1, ptr %51, align 4, !tbaa !37
  br label %52

52:                                               ; preds = %38, %18, %15, %11, %7, %3, %1
  %53 = phi i32 [ -2, %3 ], [ -2, %18 ], [ 0, %38 ], [ -2, %1 ], [ -2, %15 ], [ -2, %7 ], [ -2, %11 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateReset2(ptr noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %100, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %100, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %100, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %100, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %100

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %100

24:                                               ; preds = %19
  %25 = icmp slt i32 %1, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = icmp samesign ult i32 %1, -15
  br i1 %27, label %100, label %28

28:                                               ; preds = %26
  %29 = sub nsw i32 0, %1
  br label %36

30:                                               ; preds = %24
  %31 = lshr i32 %1, 4
  %32 = add nuw nsw i32 %31, 5
  %33 = icmp samesign ult i32 %1, 48
  %34 = and i32 %1, 15
  %35 = select i1 %33, i32 %34, i32 %1
  br label %36

36:                                               ; preds = %30, %28
  %37 = phi i32 [ %29, %28 ], [ %35, %30 ]
  %38 = phi i32 [ 0, %28 ], [ %32, %30 ]
  switch i32 %37, label %100 [
    i32 15, label %39
    i32 14, label %39
    i32 13, label %39
    i32 12, label %39
    i32 11, label %39
    i32 10, label %39
    i32 9, label %39
    i32 8, label %39
    i32 0, label %39
  ]

39:                                               ; preds = %36, %36, %36, %36, %36, %36, %36, %36, %36
  %40 = getelementptr inbounds nuw i8, ptr %14, i64 72
  %41 = load ptr, ptr %40, align 8, !tbaa !41
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %45 = load i32, ptr %44, align 8, !tbaa !42
  %46 = icmp eq i32 %45, %37
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %38, ptr %48, align 8, !tbaa !24
  %49 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 %37, ptr %49, align 8, !tbaa !42
  br label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  tail call void %10(ptr noundef %52, ptr noundef nonnull %41) #12
  store ptr null, ptr %40, align 8, !tbaa !41
  %53 = load ptr, ptr %5, align 8, !tbaa !8
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %38, ptr %55, align 8, !tbaa !24
  %56 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 %37, ptr %56, align 8, !tbaa !42
  br i1 %54, label %100, label %57

57:                                               ; preds = %50, %47
  %58 = load ptr, ptr %9, align 8, !tbaa !14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %100, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %13, align 8, !tbaa !15
  %62 = icmp eq ptr %61, null
  br i1 %62, label %100, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %61, align 8, !tbaa !16
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %66, label %100

66:                                               ; preds = %63
  %67 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %68 = load i32, ptr %67, align 8, !tbaa !20
  %69 = add i32 %68, -16180
  %70 = icmp ult i32 %69, 32
  br i1 %70, label %71, label %100

71:                                               ; preds = %66
  %72 = getelementptr inbounds nuw i8, ptr %61, i64 60
  store i32 0, ptr %72, align 4, !tbaa !38
  %73 = getelementptr inbounds nuw i8, ptr %61, i64 64
  store i32 0, ptr %73, align 8, !tbaa !39
  %74 = getelementptr inbounds nuw i8, ptr %61, i64 68
  store i32 0, ptr %74, align 4, !tbaa !40
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 40
  store i64 0, ptr %75, align 8, !tbaa !21
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %77, align 8, !tbaa !22
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %78, align 8, !tbaa !23
  %79 = getelementptr inbounds nuw i8, ptr %61, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  %80 = load i32, ptr %79, align 8, !tbaa !24
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %71
  %83 = and i32 %80, 1
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %84, ptr %85, align 8, !tbaa !25
  br label %86

86:                                               ; preds = %82, %71
  store i32 16180, ptr %67, align 8, !tbaa !20
  %87 = getelementptr inbounds nuw i8, ptr %61, i64 12
  store i32 0, ptr %87, align 4, !tbaa !26
  %88 = getelementptr inbounds nuw i8, ptr %61, i64 20
  store i32 0, ptr %88, align 4, !tbaa !27
  %89 = getelementptr inbounds nuw i8, ptr %61, i64 24
  store i32 -1, ptr %89, align 8, !tbaa !28
  %90 = getelementptr inbounds nuw i8, ptr %61, i64 28
  store i32 32768, ptr %90, align 4, !tbaa !29
  %91 = getelementptr inbounds nuw i8, ptr %61, i64 48
  store ptr null, ptr %91, align 8, !tbaa !30
  %92 = getelementptr inbounds nuw i8, ptr %61, i64 80
  store i64 0, ptr %92, align 8, !tbaa !31
  %93 = getelementptr inbounds nuw i8, ptr %61, i64 88
  store i32 0, ptr %93, align 8, !tbaa !32
  %94 = getelementptr inbounds nuw i8, ptr %61, i64 1368
  %95 = getelementptr inbounds nuw i8, ptr %61, i64 144
  store ptr %94, ptr %95, align 8, !tbaa !33
  %96 = getelementptr inbounds nuw i8, ptr %61, i64 112
  store ptr %94, ptr %96, align 8, !tbaa !34
  %97 = getelementptr inbounds nuw i8, ptr %61, i64 104
  store ptr %94, ptr %97, align 8, !tbaa !35
  %98 = getelementptr inbounds nuw i8, ptr %61, i64 7144
  store i32 1, ptr %98, align 8, !tbaa !36
  %99 = getelementptr inbounds nuw i8, ptr %61, i64 7148
  store i32 -1, ptr %99, align 4, !tbaa !37
  br label %100

100:                                              ; preds = %86, %66, %63, %60, %57, %50, %36, %26, %19, %16, %12, %8, %4, %2
  %101 = phi i32 [ -2, %57 ], [ -2, %19 ], [ -2, %26 ], [ -2, %36 ], [ -2, %50 ], [ -2, %66 ], [ 0, %86 ], [ -2, %60 ], [ -2, %63 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %101
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @inflateInit2_(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %87, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !44
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %87, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %87, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %14, align 8, !tbaa !45
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load ptr, ptr %15, align 8, !tbaa !8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store ptr @zcalloc, ptr %15, align 8, !tbaa !8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %19, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ @zcalloc, %18 ], [ %16, %13 ]
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store ptr @zcfree, ptr %22, align 8, !tbaa !14
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = tail call ptr %21(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %87, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7152) %32, i8 0, i64 7152, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %29, ptr %33, align 8, !tbaa !15
  store ptr %0, ptr %29, align 8, !tbaa !16
  %34 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 16180, ptr %34, align 8, !tbaa !20
  %35 = load ptr, ptr %15, align 8, !tbaa !8
  %36 = icmp eq ptr %35, null
  %37 = load ptr, ptr %22, align 8, !tbaa !14
  %38 = icmp eq ptr %37, null
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %85, label %40

40:                                               ; preds = %31
  %41 = icmp slt i32 %1, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = icmp samesign ult i32 %1, -15
  br i1 %43, label %85, label %44

44:                                               ; preds = %42
  %45 = sub nsw i32 0, %1
  br label %52

46:                                               ; preds = %40
  %47 = lshr i32 %1, 4
  %48 = add nuw nsw i32 %47, 5
  %49 = icmp samesign ult i32 %1, 48
  %50 = and i32 %1, 15
  %51 = select i1 %49, i32 %50, i32 %1
  br label %52

52:                                               ; preds = %46, %44
  %53 = phi i32 [ %45, %44 ], [ %51, %46 ]
  %54 = phi i32 [ 0, %44 ], [ %48, %46 ]
  switch i32 %53, label %85 [
    i32 15, label %55
    i32 14, label %55
    i32 13, label %55
    i32 12, label %55
    i32 11, label %55
    i32 10, label %55
    i32 9, label %55
    i32 8, label %55
    i32 0, label %55
  ]

55:                                               ; preds = %52, %52, %52, %52, %52, %52, %52, %52, %52
  %56 = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 %54, ptr %56, align 8, !tbaa !24
  %57 = getelementptr inbounds nuw i8, ptr %29, i64 56
  store i32 %53, ptr %57, align 8, !tbaa !42
  %58 = getelementptr inbounds nuw i8, ptr %29, i64 60
  store i32 0, ptr %58, align 4, !tbaa !38
  %59 = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i32 0, ptr %59, align 8, !tbaa !39
  %60 = getelementptr inbounds nuw i8, ptr %29, i64 68
  store i32 0, ptr %60, align 4, !tbaa !40
  %61 = getelementptr inbounds nuw i8, ptr %29, i64 40
  store i64 0, ptr %61, align 8, !tbaa !21
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %63, align 8, !tbaa !22
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %64, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false)
  %65 = load i32, ptr %56, align 8, !tbaa !24
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %55
  %68 = and i32 %65, 1
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %69, ptr %70, align 8, !tbaa !25
  br label %71

71:                                               ; preds = %67, %55
  store i32 16180, ptr %34, align 8, !tbaa !20
  %72 = getelementptr inbounds nuw i8, ptr %29, i64 12
  store i32 0, ptr %72, align 4, !tbaa !26
  %73 = getelementptr inbounds nuw i8, ptr %29, i64 20
  store i32 0, ptr %73, align 4, !tbaa !27
  %74 = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i32 -1, ptr %74, align 8, !tbaa !28
  %75 = getelementptr inbounds nuw i8, ptr %29, i64 28
  store i32 32768, ptr %75, align 4, !tbaa !29
  %76 = getelementptr inbounds nuw i8, ptr %29, i64 48
  store ptr null, ptr %76, align 8, !tbaa !30
  %77 = getelementptr inbounds nuw i8, ptr %29, i64 80
  store i64 0, ptr %77, align 8, !tbaa !31
  %78 = getelementptr inbounds nuw i8, ptr %29, i64 88
  store i32 0, ptr %78, align 8, !tbaa !32
  %79 = getelementptr inbounds nuw i8, ptr %29, i64 1368
  %80 = getelementptr inbounds nuw i8, ptr %29, i64 144
  store ptr %79, ptr %80, align 8, !tbaa !33
  %81 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %79, ptr %81, align 8, !tbaa !34
  %82 = getelementptr inbounds nuw i8, ptr %29, i64 104
  store ptr %79, ptr %82, align 8, !tbaa !35
  %83 = getelementptr inbounds nuw i8, ptr %29, i64 7144
  store i32 1, ptr %83, align 8, !tbaa !36
  %84 = getelementptr inbounds nuw i8, ptr %29, i64 7148
  store i32 -1, ptr %84, align 4, !tbaa !37
  br label %87

85:                                               ; preds = %52, %42, %31
  %86 = load ptr, ptr %27, align 8, !tbaa !43
  tail call void %37(ptr noundef %86, ptr noundef nonnull %29) #12
  store ptr null, ptr %33, align 8, !tbaa !15
  br label %87

87:                                               ; preds = %85, %71, %26, %11, %6, %4
  %88 = phi i32 [ -4, %26 ], [ -6, %4 ], [ -2, %11 ], [ -6, %6 ], [ -2, %85 ], [ 0, %71 ]
  ret i32 %88
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #5

declare void @zcfree(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @inflateInit_(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %67, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !44
  %7 = icmp ne i8 %6, 49
  %8 = icmp ne i32 %2, 112
  %9 = or i1 %8, %7
  br i1 %9, label %67, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %0, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %15 = load ptr, ptr %14, align 8, !tbaa !8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  store ptr @zcalloc, ptr %14, align 8, !tbaa !8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %18, align 8, !tbaa !43
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ @zcalloc, %17 ], [ %15, %12 ]
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store ptr @zcfree, ptr %21, align 8, !tbaa !14
  br label %25

25:                                               ; preds = %24, %19
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = tail call ptr %20(ptr noundef %27, i32 noundef 1, i32 noundef 7160) #12, !inline_history !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7152) %31, i8 0, i64 7152, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %28, ptr %32, align 8, !tbaa !15
  store ptr %0, ptr %28, align 8, !tbaa !16
  store i32 16180, ptr %31, align 8, !tbaa !20
  %33 = load ptr, ptr %14, align 8, !tbaa !8
  %34 = icmp eq ptr %33, null
  %35 = load ptr, ptr %21, align 8, !tbaa !14
  %36 = icmp eq ptr %35, null
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %65, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 5, ptr %39, align 8, !tbaa !24
  %40 = getelementptr inbounds nuw i8, ptr %28, i64 56
  store <4 x i32> <i32 15, i32 0, i32 0, i32 0>, ptr %40, align 8, !tbaa !4
  %41 = getelementptr inbounds nuw i8, ptr %28, i64 40
  store i64 0, ptr %41, align 8, !tbaa !21
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %43, align 8, !tbaa !22
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %44, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  %45 = load i32, ptr %39, align 8, !tbaa !24
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %38
  %48 = and i32 %45, 1
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %49, ptr %50, align 8, !tbaa !25
  br label %51

51:                                               ; preds = %47, %38
  store i32 16180, ptr %31, align 8, !tbaa !20
  %52 = getelementptr inbounds nuw i8, ptr %28, i64 12
  store i32 0, ptr %52, align 4, !tbaa !26
  %53 = getelementptr inbounds nuw i8, ptr %28, i64 20
  store i32 0, ptr %53, align 4, !tbaa !27
  %54 = getelementptr inbounds nuw i8, ptr %28, i64 24
  store i32 -1, ptr %54, align 8, !tbaa !28
  %55 = getelementptr inbounds nuw i8, ptr %28, i64 28
  store i32 32768, ptr %55, align 4, !tbaa !29
  %56 = getelementptr inbounds nuw i8, ptr %28, i64 48
  store ptr null, ptr %56, align 8, !tbaa !30
  %57 = getelementptr inbounds nuw i8, ptr %28, i64 80
  store i64 0, ptr %57, align 8, !tbaa !31
  %58 = getelementptr inbounds nuw i8, ptr %28, i64 88
  store i32 0, ptr %58, align 8, !tbaa !32
  %59 = getelementptr inbounds nuw i8, ptr %28, i64 1368
  %60 = getelementptr inbounds nuw i8, ptr %28, i64 144
  store ptr %59, ptr %60, align 8, !tbaa !33
  %61 = getelementptr inbounds nuw i8, ptr %28, i64 112
  store ptr %59, ptr %61, align 8, !tbaa !34
  %62 = getelementptr inbounds nuw i8, ptr %28, i64 104
  store ptr %59, ptr %62, align 8, !tbaa !35
  %63 = getelementptr inbounds nuw i8, ptr %28, i64 7144
  store i32 1, ptr %63, align 8, !tbaa !36
  %64 = getelementptr inbounds nuw i8, ptr %28, i64 7148
  store i32 -1, ptr %64, align 4, !tbaa !37
  br label %67

65:                                               ; preds = %30
  %66 = load ptr, ptr %26, align 8, !tbaa !43
  tail call void %35(ptr noundef %66, ptr noundef nonnull %28) #12, !inline_history !46
  store ptr null, ptr %32, align 8, !tbaa !15
  br label %67

67:                                               ; preds = %65, %51, %25, %10, %5, %3
  %68 = phi i32 [ -4, %25 ], [ -6, %3 ], [ -2, %10 ], [ -6, %5 ], [ -2, %65 ], [ 0, %51 ]
  ret i32 %68
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %59, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %59, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %59

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %59

25:                                               ; preds = %20
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %25
  %28 = icmp slt i32 %1, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 80
  store i64 0, ptr %30, align 8, !tbaa !31
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 88
  store i32 0, ptr %31, align 8, !tbaa !32
  br label %59

32:                                               ; preds = %27
  %33 = icmp samesign ugt i32 %1, 16
  br i1 %33, label %59, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 88
  %36 = load i32, ptr %35, align 8, !tbaa !32
  %37 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %36, i32 %1), !nosanitize !47
  %38 = extractvalue { i32, i1 } %37, 1, !nosanitize !47
  br i1 %38, label %39, label %40, !prof !48, !nosanitize !47

39:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

40:                                               ; preds = %34
  %41 = extractvalue { i32, i1 } %37, 0, !nosanitize !47
  %42 = icmp ugt i32 %41, 32
  br i1 %42, label %59, label %43

43:                                               ; preds = %40
  %44 = zext nneg i32 %1 to i64
  %45 = shl nsw i64 -1, %44
  %46 = trunc nsw i64 %45 to i32
  %47 = xor i32 %46, -1
  %48 = and i32 %2, %47
  %49 = zext nneg i32 %48 to i64
  %50 = zext nneg i32 %36 to i64
  %51 = shl i64 %49, %50
  %52 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %53 = load i64, ptr %52, align 8, !tbaa !31
  %54 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %53, i64 %51), !nosanitize !47
  %55 = extractvalue { i64, i1 } %54, 1, !nosanitize !47
  br i1 %55, label %56, label %57, !prof !48, !nosanitize !47

56:                                               ; preds = %43
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

57:                                               ; preds = %43
  %58 = extractvalue { i64, i1 } %54, 0, !nosanitize !47
  store i64 %58, ptr %52, align 8, !tbaa !31
  store i32 %41, ptr %35, align 8, !tbaa !32
  br label %59

59:                                               ; preds = %57, %40, %32, %29, %25, %20, %17, %13, %9, %5, %3
  %60 = phi i32 [ 0, %57 ], [ -2, %20 ], [ 0, %29 ], [ 0, %25 ], [ -2, %40 ], [ -2, %32 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %60
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %4 = icmp eq ptr %0, null
  br i1 %4, label %2685, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %2685, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %2685, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %2685, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %2685

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %2685

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %2685, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !50
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %2685

36:                                               ; preds = %32, %29
  %37 = icmp eq i32 %22, 16191
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %22, %36 ], [ 16192, %38 ]
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %42 = load i32, ptr %41, align 8, !tbaa !52
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %44 = load i32, ptr %43, align 8, !tbaa !51
  %45 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %46 = load i64, ptr %45, align 8, !tbaa !31
  %47 = getelementptr inbounds nuw i8, ptr %15, i64 88
  %48 = load i32, ptr %47, align 8, !tbaa !32
  %49 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %51 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %52 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %53 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %56 = getelementptr inbounds nuw i8, ptr %15, i64 92
  %57 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %58 = getelementptr inbounds nuw i8, ptr %15, i64 136
  %59 = getelementptr inbounds nuw i8, ptr %15, i64 128
  %60 = getelementptr inbounds nuw i8, ptr %15, i64 140
  %61 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %62 = getelementptr inbounds nuw i8, ptr %15, i64 1368
  %63 = getelementptr inbounds nuw i8, ptr %15, i64 144
  %64 = getelementptr inbounds nuw i8, ptr %15, i64 112
  %65 = getelementptr inbounds nuw i8, ptr %15, i64 104
  %66 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %67 = getelementptr inbounds nuw i8, ptr %15, i64 792
  %68 = getelementptr inbounds nuw i8, ptr %15, i64 664
  %69 = getelementptr inbounds nuw i8, ptr %15, i64 124
  %70 = icmp eq i32 %1, 6
  %71 = getelementptr inbounds nuw i8, ptr %15, i64 7148
  %72 = getelementptr inbounds nuw i8, ptr %15, i64 100
  %73 = getelementptr inbounds nuw i8, ptr %15, i64 7152
  %74 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %75 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %76 = getelementptr inbounds nuw i8, ptr %15, i64 7144
  %77 = getelementptr inbounds nuw i8, ptr %15, i64 68
  %78 = getelementptr inbounds nuw i8, ptr %15, i64 72
  %79 = getelementptr inbounds nuw i8, ptr %15, i64 60
  %80 = getelementptr inbounds nuw i8, ptr %15, i64 20
  %81 = add i32 %1, -5
  %82 = icmp ult i32 %81, 2
  %83 = getelementptr inbounds nuw i8, ptr %15, i64 12
  %84 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %85 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 28
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %88

88:                                               ; preds = %2358, %39
  %89 = phi i32 [ %40, %39 ], [ %2367, %2358 ]
  %90 = phi ptr [ %30, %39 ], [ %2359, %2358 ]
  %91 = phi ptr [ %27, %39 ], [ %2360, %2358 ]
  %92 = phi i32 [ %44, %39 ], [ %2361, %2358 ]
  %93 = phi i32 [ %42, %39 ], [ %2362, %2358 ]
  %94 = phi i64 [ %46, %39 ], [ %2363, %2358 ]
  %95 = phi i32 [ %48, %39 ], [ %2364, %2358 ]
  %96 = phi i32 [ %42, %39 ], [ %2365, %2358 ]
  %97 = phi i32 [ 0, %39 ], [ %2366, %2358 ]
  %98 = ptrtoaddr ptr %91 to i64
  switch i32 %89, label %2685 [
    i32 16180, label %120
    i32 16181, label %115
    i32 16182, label %281
    i32 16183, label %364
    i32 16184, label %423
    i32 16185, label %501
    i32 16186, label %580
    i32 16187, label %644
    i32 16188, label %708
    i32 16189, label %110
    i32 16190, label %840
    i32 16191, label %850
    i32 16192, label %855
    i32 16193, label %906
    i32 16194, label %989
    i32 16195, label %994
    i32 16196, label %105
    i32 16197, label %1079
    i32 16198, label %1154
    i32 16199, label %1469
    i32 16200, label %1475
    i32 16201, label %101
    i32 16202, label %1722
    i32 16203, label %99
    i32 16204, label %1955
    i32 16205, label %2128
    i32 16206, label %2135
    i32 16207, label %103
    i32 16208, label %2491
    i32 16209, label %2492
    i32 16210, label %2684
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !53
  br label %1885

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !53
  br label %1651

103:                                              ; preds = %88
  %104 = load i32, ptr %49, align 8, !tbaa !24
  br label %2265

105:                                              ; preds = %88
  %106 = icmp ult i32 %95, 14
  br i1 %106, label %107, label %1058

107:                                              ; preds = %105
  %108 = zext nneg i32 %95 to i64
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %2473, label %1026

110:                                              ; preds = %88
  %111 = icmp ult i32 %95, 32
  br i1 %111, label %112, label %833

112:                                              ; preds = %110
  %113 = zext nneg i32 %95 to i64
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %2410, label %780

115:                                              ; preds = %88
  %116 = icmp ult i32 %95, 16
  br i1 %116, label %117, label %250

117:                                              ; preds = %115
  %118 = zext nneg i32 %95 to i64
  %119 = icmp eq i32 %92, 0
  br i1 %119, label %2404, label %218

120:                                              ; preds = %88
  %121 = load i32, ptr %49, align 8, !tbaa !24
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = icmp ult i32 %95, 16
  br i1 %124, label %125, label %161

125:                                              ; preds = %123
  %126 = zext nneg i32 %95 to i64
  %127 = icmp eq i32 %92, 0
  br i1 %127, label %2374, label %129

128:                                              ; preds = %120
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2358

129:                                              ; preds = %125
  %130 = load i8, ptr %90, align 1, !tbaa !44
  %131 = zext i8 %130 to i64
  %132 = shl nuw nsw i64 %131, %126
  %133 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %132), !nosanitize !47
  %134 = extractvalue { i64, i1 } %133, 1, !nosanitize !47
  br i1 %134, label %135, label %136, !prof !48, !nosanitize !47

135:                                              ; preds = %144, %129
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

136:                                              ; preds = %129
  %137 = extractvalue { i64, i1 } %133, 0, !nosanitize !47
  %138 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %139 = add i32 %92, -1
  %140 = add nuw nsw i64 %126, 8
  %141 = icmp ult i32 %95, 8
  br i1 %141, label %142, label %155

142:                                              ; preds = %136
  %143 = icmp eq i32 %139, 0
  br i1 %143, label %2374, label %144

144:                                              ; preds = %142
  %145 = load i8, ptr %138, align 1, !tbaa !44
  %146 = zext i8 %145 to i64
  %147 = shl nuw nsw i64 %146, %140
  %148 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %137, i64 %147), !nosanitize !47
  %149 = extractvalue { i64, i1 } %148, 1, !nosanitize !47
  br i1 %149, label %135, label %150, !prof !48, !nosanitize !47

150:                                              ; preds = %144
  %151 = extractvalue { i64, i1 } %148, 0, !nosanitize !47
  %152 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %153 = add i32 %92, -2
  %154 = or disjoint i64 %126, 16
  br label %155

155:                                              ; preds = %150, %136
  %156 = phi i64 [ %137, %136 ], [ %151, %150 ]
  %157 = phi ptr [ %138, %136 ], [ %152, %150 ]
  %158 = phi i32 [ %139, %136 ], [ %153, %150 ]
  %159 = phi i64 [ %140, %136 ], [ %154, %150 ]
  %160 = trunc nuw nsw i64 %159 to i32
  br label %161

161:                                              ; preds = %155, %123
  %162 = phi ptr [ %90, %123 ], [ %157, %155 ]
  %163 = phi i32 [ %92, %123 ], [ %158, %155 ]
  %164 = phi i64 [ %94, %123 ], [ %156, %155 ]
  %165 = phi i32 [ %95, %123 ], [ %160, %155 ]
  %166 = and i32 %121, 2
  %167 = icmp ne i32 %166, 0
  %168 = icmp eq i64 %164, 35615
  %169 = select i1 %167, i1 %168, i1 false
  br i1 %169, label %170, label %177

170:                                              ; preds = %161
  %171 = load i32, ptr %85, align 8, !tbaa !42
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 15, ptr %85, align 8, !tbaa !42
  br label %174

174:                                              ; preds = %173, %170
  %175 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %175, ptr %53, align 8, !tbaa !54
  store i8 31, ptr %3, align 4, !tbaa !44
  store i8 -117, ptr %87, align 1, !tbaa !44
  %176 = call i64 @crc32(i64 noundef %175, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %176, ptr %53, align 8, !tbaa !54
  store i32 16181, ptr %21, align 8, !tbaa !20
  br label %2358

177:                                              ; preds = %161
  %178 = load ptr, ptr %84, align 8, !tbaa !30
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds nuw i8, ptr %178, i64 72
  store i32 -1, ptr %181, align 8, !tbaa !55
  br label %182

182:                                              ; preds = %180, %177
  %183 = and i32 %121, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %182
  %186 = shl i64 %164, 8
  %187 = and i64 %186, 65280
  %188 = lshr i64 %164, 8
  %189 = add nuw nsw i64 %187, %188
  %190 = urem i64 %189, 31
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %185, %182
  store ptr @.str.1, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

193:                                              ; preds = %185
  %194 = and i64 %164, 15
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

197:                                              ; preds = %193
  %198 = lshr i64 %164, 4
  %199 = add i32 %165, -4
  %200 = trunc i64 %198 to i32
  %201 = and i32 %200, 15
  %202 = add nuw nsw i32 %201, 8
  %203 = load i32, ptr %85, align 8, !tbaa !42
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  store i32 %202, ptr %85, align 8, !tbaa !42
  br label %206

206:                                              ; preds = %205, %197
  %207 = phi i32 [ %202, %205 ], [ %203, %197 ]
  %208 = icmp samesign ugt i32 %201, 7
  %209 = icmp ugt i32 %202, %207
  %210 = select i1 %208, i1 true, i1 %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  store ptr @.str.3, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

212:                                              ; preds = %206
  %213 = shl nuw nsw i32 256, %201
  store i32 %213, ptr %86, align 4, !tbaa !29
  store i32 0, ptr %52, align 8, !tbaa !28
  %214 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %214, ptr %53, align 8, !tbaa !54
  store i64 %214, ptr %54, align 8, !tbaa !25
  %215 = and i64 %164, 8192
  %216 = icmp eq i64 %215, 0
  %217 = select i1 %216, i32 16191, i32 16189
  store i32 %217, ptr %21, align 8, !tbaa !20
  br label %2358

218:                                              ; preds = %117
  %219 = load i8, ptr %90, align 1, !tbaa !44
  %220 = zext i8 %219 to i64
  %221 = shl nuw nsw i64 %220, %118
  %222 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %221), !nosanitize !47
  %223 = extractvalue { i64, i1 } %222, 1, !nosanitize !47
  br i1 %223, label %224, label %225, !prof !48, !nosanitize !47

224:                                              ; preds = %233, %218
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

225:                                              ; preds = %218
  %226 = extractvalue { i64, i1 } %222, 0, !nosanitize !47
  %227 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %228 = add i32 %92, -1
  %229 = add nuw nsw i64 %118, 8
  %230 = icmp ult i32 %95, 8
  br i1 %230, label %231, label %244

231:                                              ; preds = %225
  %232 = icmp eq i32 %228, 0
  br i1 %232, label %2404, label %233

233:                                              ; preds = %231
  %234 = load i8, ptr %227, align 1, !tbaa !44
  %235 = zext i8 %234 to i64
  %236 = shl nuw nsw i64 %235, %229
  %237 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %226, i64 %236), !nosanitize !47
  %238 = extractvalue { i64, i1 } %237, 1, !nosanitize !47
  br i1 %238, label %224, label %239, !prof !48, !nosanitize !47

239:                                              ; preds = %233
  %240 = extractvalue { i64, i1 } %237, 0, !nosanitize !47
  %241 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %242 = add i32 %92, -2
  %243 = or disjoint i64 %118, 16
  br label %244

244:                                              ; preds = %239, %225
  %245 = phi i64 [ %226, %225 ], [ %240, %239 ]
  %246 = phi ptr [ %227, %225 ], [ %241, %239 ]
  %247 = phi i32 [ %228, %225 ], [ %242, %239 ]
  %248 = phi i64 [ %229, %225 ], [ %243, %239 ]
  %249 = trunc nuw nsw i64 %248 to i32
  br label %250

250:                                              ; preds = %244, %115
  %251 = phi ptr [ %90, %115 ], [ %246, %244 ]
  %252 = phi i32 [ %92, %115 ], [ %247, %244 ]
  %253 = phi i64 [ %94, %115 ], [ %245, %244 ]
  %254 = phi i32 [ %95, %115 ], [ %249, %244 ]
  %255 = trunc i64 %253 to i32
  store i32 %255, ptr %52, align 8, !tbaa !28
  %256 = and i32 %255, 255
  %257 = icmp eq i32 %256, 8
  br i1 %257, label %259, label %258

258:                                              ; preds = %250
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

259:                                              ; preds = %250
  %260 = and i32 %255, 57344
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

263:                                              ; preds = %259
  %264 = load ptr, ptr %84, align 8, !tbaa !30
  %265 = icmp eq ptr %264, null
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = lshr i32 %255, 8
  %268 = and i32 %267, 1
  store i32 %268, ptr %264, align 8, !tbaa !57
  br label %269

269:                                              ; preds = %266, %263
  %270 = and i32 %255, 512
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %280, label %272

272:                                              ; preds = %269
  %273 = load i32, ptr %49, align 8, !tbaa !24
  %274 = and i32 %273, 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %272
  %277 = trunc i64 %253 to i16
  store i16 %277, ptr %3, align 4
  %278 = load i64, ptr %53, align 8, !tbaa !54
  %279 = call i64 @crc32(i64 noundef %278, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %279, ptr %53, align 8, !tbaa !54
  br label %280

280:                                              ; preds = %276, %272, %269
  store i32 16182, ptr %21, align 8, !tbaa !20
  br label %283

281:                                              ; preds = %88
  %282 = icmp ult i32 %95, 32
  br i1 %282, label %283, label %343

283:                                              ; preds = %281, %280
  %284 = phi i32 [ 0, %280 ], [ %95, %281 ]
  %285 = phi i64 [ 0, %280 ], [ %94, %281 ]
  %286 = phi i32 [ %252, %280 ], [ %92, %281 ]
  %287 = phi ptr [ %251, %280 ], [ %90, %281 ]
  %288 = zext nneg i32 %284 to i64
  %289 = icmp eq i32 %286, 0
  br i1 %289, label %2398, label %290

290:                                              ; preds = %283
  %291 = load i8, ptr %287, align 1, !tbaa !44
  %292 = zext i8 %291 to i64
  %293 = shl nuw nsw i64 %292, %288
  %294 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %285, i64 %293), !nosanitize !47
  %295 = extractvalue { i64, i1 } %294, 1, !nosanitize !47
  br i1 %295, label %296, label %297, !prof !48, !nosanitize !47

296:                                              ; preds = %333, %319, %305, %290
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

297:                                              ; preds = %290
  %298 = extractvalue { i64, i1 } %294, 0, !nosanitize !47
  %299 = getelementptr inbounds nuw i8, ptr %287, i64 1
  %300 = add i32 %286, -1
  %301 = add nuw nsw i64 %288, 8
  %302 = icmp samesign ult i32 %284, 24
  br i1 %302, label %303, label %343

303:                                              ; preds = %297
  %304 = icmp eq i32 %300, 0
  br i1 %304, label %2398, label %305

305:                                              ; preds = %303
  %306 = load i8, ptr %299, align 1, !tbaa !44
  %307 = zext i8 %306 to i64
  %308 = shl nuw nsw i64 %307, %301
  %309 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %298, i64 %308), !nosanitize !47
  %310 = extractvalue { i64, i1 } %309, 1, !nosanitize !47
  br i1 %310, label %296, label %311, !prof !48, !nosanitize !47

311:                                              ; preds = %305
  %312 = extractvalue { i64, i1 } %309, 0, !nosanitize !47
  %313 = getelementptr inbounds nuw i8, ptr %287, i64 2
  %314 = add i32 %286, -2
  %315 = add nuw nsw i64 %288, 16
  %316 = icmp samesign ult i32 %284, 16
  br i1 %316, label %317, label %343

317:                                              ; preds = %311
  %318 = icmp eq i32 %314, 0
  br i1 %318, label %2398, label %319

319:                                              ; preds = %317
  %320 = load i8, ptr %313, align 1, !tbaa !44
  %321 = zext i8 %320 to i64
  %322 = shl nuw nsw i64 %321, %315
  %323 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %312, i64 %322), !nosanitize !47
  %324 = extractvalue { i64, i1 } %323, 1, !nosanitize !47
  br i1 %324, label %296, label %325, !prof !48, !nosanitize !47

325:                                              ; preds = %319
  %326 = extractvalue { i64, i1 } %323, 0, !nosanitize !47
  %327 = getelementptr inbounds nuw i8, ptr %287, i64 3
  %328 = add i32 %286, -3
  %329 = add nuw nsw i64 %288, 24
  %330 = icmp samesign ult i32 %284, 8
  br i1 %330, label %331, label %343

331:                                              ; preds = %325
  %332 = icmp eq i32 %328, 0
  br i1 %332, label %2398, label %333

333:                                              ; preds = %331
  %334 = load i8, ptr %327, align 1, !tbaa !44
  %335 = zext i8 %334 to i64
  %336 = shl nuw nsw i64 %335, %329
  %337 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %326, i64 %336), !nosanitize !47
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !47
  br i1 %338, label %296, label %339, !prof !48, !nosanitize !47

339:                                              ; preds = %333
  %340 = extractvalue { i64, i1 } %337, 0, !nosanitize !47
  %341 = getelementptr inbounds nuw i8, ptr %287, i64 4
  %342 = add i32 %286, -4
  br label %343

343:                                              ; preds = %339, %325, %311, %297, %281
  %344 = phi ptr [ %90, %281 ], [ %299, %297 ], [ %313, %311 ], [ %327, %325 ], [ %341, %339 ]
  %345 = phi i32 [ %92, %281 ], [ %300, %297 ], [ %314, %311 ], [ %328, %325 ], [ %342, %339 ]
  %346 = phi i64 [ %94, %281 ], [ %298, %297 ], [ %312, %311 ], [ %326, %325 ], [ %340, %339 ]
  %347 = load ptr, ptr %84, align 8, !tbaa !30
  %348 = icmp eq ptr %347, null
  br i1 %348, label %351, label %349

349:                                              ; preds = %343
  %350 = getelementptr inbounds nuw i8, ptr %347, i64 8
  store i64 %346, ptr %350, align 8, !tbaa !58
  br label %351

351:                                              ; preds = %349, %343
  %352 = load i32, ptr %52, align 8, !tbaa !28
  %353 = and i32 %352, 512
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %363, label %355

355:                                              ; preds = %351
  %356 = load i32, ptr %49, align 8, !tbaa !24
  %357 = and i32 %356, 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %363, label %359

359:                                              ; preds = %355
  %360 = trunc i64 %346 to i32
  store i32 %360, ptr %3, align 4
  %361 = load i64, ptr %53, align 8, !tbaa !54
  %362 = call i64 @crc32(i64 noundef %361, ptr noundef nonnull %3, i32 noundef 4) #12
  store i64 %362, ptr %53, align 8, !tbaa !54
  br label %363

363:                                              ; preds = %359, %355, %351
  store i32 16183, ptr %21, align 8, !tbaa !20
  br label %366

364:                                              ; preds = %88
  %365 = icmp ult i32 %95, 16
  br i1 %365, label %366, label %398

366:                                              ; preds = %364, %363
  %367 = phi i32 [ 0, %363 ], [ %95, %364 ]
  %368 = phi i64 [ 0, %363 ], [ %94, %364 ]
  %369 = phi i32 [ %345, %363 ], [ %92, %364 ]
  %370 = phi ptr [ %344, %363 ], [ %90, %364 ]
  %371 = zext nneg i32 %367 to i64
  %372 = icmp eq i32 %369, 0
  br i1 %372, label %2392, label %373

373:                                              ; preds = %366
  %374 = load i8, ptr %370, align 1, !tbaa !44
  %375 = zext i8 %374 to i64
  %376 = shl nuw nsw i64 %375, %371
  %377 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %368, i64 %376), !nosanitize !47
  %378 = extractvalue { i64, i1 } %377, 1, !nosanitize !47
  br i1 %378, label %379, label %380, !prof !48, !nosanitize !47

379:                                              ; preds = %388, %373
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

380:                                              ; preds = %373
  %381 = extractvalue { i64, i1 } %377, 0, !nosanitize !47
  %382 = getelementptr inbounds nuw i8, ptr %370, i64 1
  %383 = add i32 %369, -1
  %384 = add nuw nsw i64 %371, 8
  %385 = icmp samesign ult i32 %367, 8
  br i1 %385, label %386, label %398

386:                                              ; preds = %380
  %387 = icmp eq i32 %383, 0
  br i1 %387, label %2392, label %388

388:                                              ; preds = %386
  %389 = load i8, ptr %382, align 1, !tbaa !44
  %390 = zext i8 %389 to i64
  %391 = shl nuw nsw i64 %390, %384
  %392 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %381, i64 %391), !nosanitize !47
  %393 = extractvalue { i64, i1 } %392, 1, !nosanitize !47
  br i1 %393, label %379, label %394, !prof !48, !nosanitize !47

394:                                              ; preds = %388
  %395 = extractvalue { i64, i1 } %392, 0, !nosanitize !47
  %396 = getelementptr inbounds nuw i8, ptr %370, i64 2
  %397 = add i32 %369, -2
  br label %398

398:                                              ; preds = %394, %380, %364
  %399 = phi ptr [ %90, %364 ], [ %382, %380 ], [ %396, %394 ]
  %400 = phi i32 [ %92, %364 ], [ %383, %380 ], [ %397, %394 ]
  %401 = phi i64 [ %94, %364 ], [ %381, %380 ], [ %395, %394 ]
  %402 = load ptr, ptr %84, align 8, !tbaa !30
  %403 = icmp eq ptr %402, null
  br i1 %403, label %411, label %404

404:                                              ; preds = %398
  %405 = trunc i64 %401 to i32
  %406 = and i32 %405, 255
  %407 = getelementptr inbounds nuw i8, ptr %402, i64 16
  store i32 %406, ptr %407, align 8, !tbaa !59
  %408 = lshr i64 %401, 8
  %409 = trunc i64 %408 to i32
  %410 = getelementptr inbounds nuw i8, ptr %402, i64 20
  store i32 %409, ptr %410, align 4, !tbaa !60
  br label %411

411:                                              ; preds = %404, %398
  %412 = load i32, ptr %52, align 8, !tbaa !28
  %413 = and i32 %412, 512
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %427, label %415

415:                                              ; preds = %411
  %416 = load i32, ptr %49, align 8, !tbaa !24
  %417 = and i32 %416, 4
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %427, label %419

419:                                              ; preds = %415
  %420 = trunc i64 %401 to i16
  store i16 %420, ptr %3, align 4
  %421 = load i64, ptr %53, align 8, !tbaa !54
  %422 = call i64 @crc32(i64 noundef %421, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %422, ptr %53, align 8, !tbaa !54
  br label %427

423:                                              ; preds = %88
  %424 = load i32, ptr %52, align 8, !tbaa !28
  %425 = and i32 %424, 1024
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %487, label %431

427:                                              ; preds = %419, %415, %411
  store i32 16184, ptr %21, align 8, !tbaa !20
  %428 = load i32, ptr %52, align 8, !tbaa !28
  %429 = and i32 %428, 1024
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %487, label %433

431:                                              ; preds = %423
  %432 = icmp ult i32 %95, 16
  br i1 %432, label %433, label %466

433:                                              ; preds = %431, %427
  %434 = phi ptr [ %90, %431 ], [ %399, %427 ]
  %435 = phi i32 [ %92, %431 ], [ %400, %427 ]
  %436 = phi i64 [ %94, %431 ], [ 0, %427 ]
  %437 = phi i32 [ %95, %431 ], [ 0, %427 ]
  %438 = phi i32 [ %424, %431 ], [ %428, %427 ]
  %439 = zext nneg i32 %437 to i64
  %440 = icmp eq i32 %435, 0
  br i1 %440, label %2386, label %441

441:                                              ; preds = %433
  %442 = load i8, ptr %434, align 1, !tbaa !44
  %443 = zext i8 %442 to i64
  %444 = shl nuw nsw i64 %443, %439
  %445 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %436, i64 %444), !nosanitize !47
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !47
  br i1 %446, label %447, label %448, !prof !48, !nosanitize !47

447:                                              ; preds = %456, %441
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

448:                                              ; preds = %441
  %449 = extractvalue { i64, i1 } %445, 0, !nosanitize !47
  %450 = getelementptr inbounds nuw i8, ptr %434, i64 1
  %451 = add i32 %435, -1
  %452 = add nuw nsw i64 %439, 8
  %453 = icmp samesign ult i32 %437, 8
  br i1 %453, label %454, label %466

454:                                              ; preds = %448
  %455 = icmp eq i32 %451, 0
  br i1 %455, label %2386, label %456

456:                                              ; preds = %454
  %457 = load i8, ptr %450, align 1, !tbaa !44
  %458 = zext i8 %457 to i64
  %459 = shl nuw nsw i64 %458, %452
  %460 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %449, i64 %459), !nosanitize !47
  %461 = extractvalue { i64, i1 } %460, 1, !nosanitize !47
  br i1 %461, label %447, label %462, !prof !48, !nosanitize !47

462:                                              ; preds = %456
  %463 = extractvalue { i64, i1 } %460, 0, !nosanitize !47
  %464 = getelementptr inbounds nuw i8, ptr %434, i64 2
  %465 = add i32 %435, -2
  br label %466

466:                                              ; preds = %462, %448, %431
  %467 = phi i32 [ %424, %431 ], [ %438, %462 ], [ %438, %448 ]
  %468 = phi ptr [ %90, %431 ], [ %450, %448 ], [ %464, %462 ]
  %469 = phi i32 [ %92, %431 ], [ %451, %448 ], [ %465, %462 ]
  %470 = phi i64 [ %94, %431 ], [ %449, %448 ], [ %463, %462 ]
  %471 = trunc i64 %470 to i32
  store i32 %471, ptr %56, align 4, !tbaa !61
  %472 = load ptr, ptr %84, align 8, !tbaa !30
  %473 = icmp eq ptr %472, null
  br i1 %473, label %476, label %474

474:                                              ; preds = %466
  %475 = getelementptr inbounds nuw i8, ptr %472, i64 32
  store i32 %471, ptr %475, align 8, !tbaa !62
  br label %476

476:                                              ; preds = %474, %466
  %477 = and i32 %467, 512
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %496, label %479

479:                                              ; preds = %476
  %480 = load i32, ptr %49, align 8, !tbaa !24
  %481 = and i32 %480, 4
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %496, label %483

483:                                              ; preds = %479
  %484 = trunc i64 %470 to i16
  store i16 %484, ptr %3, align 4
  %485 = load i64, ptr %53, align 8, !tbaa !54
  %486 = call i64 @crc32(i64 noundef %485, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %486, ptr %53, align 8, !tbaa !54
  br label %496

487:                                              ; preds = %427, %423
  %488 = phi i32 [ 0, %427 ], [ %95, %423 ]
  %489 = phi i64 [ 0, %427 ], [ %94, %423 ]
  %490 = phi i32 [ %400, %427 ], [ %92, %423 ]
  %491 = phi ptr [ %399, %427 ], [ %90, %423 ]
  %492 = load ptr, ptr %84, align 8, !tbaa !30
  %493 = icmp eq ptr %492, null
  br i1 %493, label %496, label %494

494:                                              ; preds = %487
  %495 = getelementptr inbounds nuw i8, ptr %492, i64 24
  store ptr null, ptr %495, align 8, !tbaa !63
  br label %496

496:                                              ; preds = %494, %487, %483, %479, %476
  %497 = phi ptr [ %491, %487 ], [ %491, %494 ], [ %468, %476 ], [ %468, %479 ], [ %468, %483 ]
  %498 = phi i32 [ %490, %487 ], [ %490, %494 ], [ %469, %476 ], [ %469, %479 ], [ %469, %483 ]
  %499 = phi i64 [ %489, %487 ], [ %489, %494 ], [ 0, %476 ], [ 0, %479 ], [ 0, %483 ]
  %500 = phi i32 [ %488, %487 ], [ %488, %494 ], [ 0, %476 ], [ 0, %479 ], [ 0, %483 ]
  store i32 16185, ptr %21, align 8, !tbaa !20
  br label %501

501:                                              ; preds = %496, %88
  %502 = phi ptr [ %497, %496 ], [ %90, %88 ]
  %503 = phi i32 [ %498, %496 ], [ %92, %88 ]
  %504 = phi i64 [ %499, %496 ], [ %94, %88 ]
  %505 = phi i32 [ %500, %496 ], [ %95, %88 ]
  %506 = load i32, ptr %52, align 8, !tbaa !28
  %507 = and i32 %506, 1024
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %577, label %509

509:                                              ; preds = %501
  %510 = load i32, ptr %56, align 4, !tbaa !61
  %511 = call i32 @llvm.umin.i32(i32 %510, i32 %503)
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %572, label %513

513:                                              ; preds = %509
  %514 = load ptr, ptr %84, align 8, !tbaa !30
  %515 = icmp eq ptr %514, null
  br i1 %515, label %547, label %516

516:                                              ; preds = %513
  %517 = getelementptr inbounds nuw i8, ptr %514, i64 24
  %518 = load ptr, ptr %517, align 8, !tbaa !63
  %519 = icmp eq ptr %518, null
  br i1 %519, label %547, label %520

520:                                              ; preds = %516
  %521 = getelementptr inbounds nuw i8, ptr %514, i64 32
  %522 = load i32, ptr %521, align 8, !tbaa !62
  %523 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %522, i32 %510), !nosanitize !47
  %524 = extractvalue { i32, i1 } %523, 0, !nosanitize !47
  %525 = extractvalue { i32, i1 } %523, 1, !nosanitize !47
  br i1 %525, label %526, label %527, !prof !48, !nosanitize !47

526:                                              ; preds = %520
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

527:                                              ; preds = %520
  %528 = getelementptr inbounds nuw i8, ptr %514, i64 36
  %529 = load i32, ptr %528, align 4, !tbaa !64
  %530 = icmp ult i32 %524, %529
  br i1 %530, label %531, label %547

531:                                              ; preds = %527
  %532 = zext i32 %524 to i64
  %533 = getelementptr inbounds nuw i8, ptr %518, i64 %532
  %534 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %524, i32 %511), !nosanitize !47
  %535 = extractvalue { i32, i1 } %534, 1, !nosanitize !47
  br i1 %535, label %536, label %537, !prof !48, !nosanitize !47

536:                                              ; preds = %531
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

537:                                              ; preds = %531
  %538 = extractvalue { i32, i1 } %534, 0, !nosanitize !47
  %539 = icmp ugt i32 %538, %529
  br i1 %539, label %540, label %543

540:                                              ; preds = %537
  %541 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %529, i32 %524), !nosanitize !47
  %542 = extractvalue { i32, i1 } %541, 0, !nosanitize !47
  br label %543

543:                                              ; preds = %540, %537
  %544 = phi i32 [ %542, %540 ], [ %511, %537 ]
  %545 = zext i32 %544 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %533, ptr align 1 %502, i64 %545, i1 false)
  %546 = load i32, ptr %52, align 8, !tbaa !28
  br label %547

547:                                              ; preds = %543, %527, %516, %513
  %548 = phi i32 [ %546, %543 ], [ %506, %527 ], [ %506, %516 ], [ %506, %513 ]
  %549 = and i32 %548, 512
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %558, label %551

551:                                              ; preds = %547
  %552 = load i32, ptr %49, align 8, !tbaa !24
  %553 = and i32 %552, 4
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %558, label %555

555:                                              ; preds = %551
  %556 = load i64, ptr %53, align 8, !tbaa !54
  %557 = call i64 @crc32(i64 noundef %556, ptr noundef %502, i32 noundef %511) #12
  store i64 %557, ptr %53, align 8, !tbaa !54
  br label %558

558:                                              ; preds = %555, %551, %547
  %559 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %511), !nosanitize !47
  %560 = extractvalue { i32, i1 } %559, 0, !nosanitize !47
  %561 = extractvalue { i32, i1 } %559, 1, !nosanitize !47
  br i1 %561, label %562, label %563, !prof !48, !nosanitize !47

562:                                              ; preds = %558
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

563:                                              ; preds = %558
  %564 = load i32, ptr %56, align 4, !tbaa !61
  %565 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %564, i32 %511), !nosanitize !47
  %566 = extractvalue { i32, i1 } %565, 1, !nosanitize !47
  br i1 %566, label %567, label %568, !prof !48, !nosanitize !47

567:                                              ; preds = %563
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

568:                                              ; preds = %563
  %569 = extractvalue { i32, i1 } %565, 0, !nosanitize !47
  %570 = zext i32 %511 to i64
  %571 = getelementptr inbounds nuw i8, ptr %502, i64 %570
  store i32 %569, ptr %56, align 4, !tbaa !61
  br label %572

572:                                              ; preds = %568, %509
  %573 = phi i32 [ %569, %568 ], [ %510, %509 ]
  %574 = phi ptr [ %571, %568 ], [ %502, %509 ]
  %575 = phi i32 [ %560, %568 ], [ %503, %509 ]
  %576 = icmp eq i32 %573, 0
  br i1 %576, label %577, label %2492

577:                                              ; preds = %572, %501
  %578 = phi ptr [ %574, %572 ], [ %502, %501 ]
  %579 = phi i32 [ %575, %572 ], [ %503, %501 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16186, ptr %21, align 8, !tbaa !20
  br label %580

580:                                              ; preds = %577, %88
  %581 = phi ptr [ %578, %577 ], [ %90, %88 ]
  %582 = phi i32 [ %579, %577 ], [ %92, %88 ]
  %583 = phi i64 [ %504, %577 ], [ %94, %88 ]
  %584 = phi i32 [ %505, %577 ], [ %95, %88 ]
  %585 = load i32, ptr %52, align 8, !tbaa !28
  %586 = and i32 %585, 2048
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %636, label %588

588:                                              ; preds = %580
  %589 = icmp eq i32 %582, 0
  br i1 %589, label %2492, label %590

590:                                              ; preds = %588
  %591 = zext i32 %582 to i64
  br label %592

592:                                              ; preds = %612, %590
  %593 = phi i64 [ 0, %590 ], [ %594, %612 ]
  %594 = add nuw nsw i64 %593, 1
  %595 = getelementptr inbounds nuw i8, ptr %581, i64 %593
  %596 = load i8, ptr %595, align 1, !tbaa !44
  %597 = load ptr, ptr %84, align 8, !tbaa !30
  %598 = icmp eq ptr %597, null
  br i1 %598, label %612, label %599

599:                                              ; preds = %592
  %600 = getelementptr inbounds nuw i8, ptr %597, i64 40
  %601 = load ptr, ptr %600, align 8, !tbaa !65
  %602 = icmp eq ptr %601, null
  br i1 %602, label %612, label %603

603:                                              ; preds = %599
  %604 = load i32, ptr %56, align 4, !tbaa !61
  %605 = getelementptr inbounds nuw i8, ptr %597, i64 48
  %606 = load i32, ptr %605, align 8, !tbaa !66
  %607 = icmp ult i32 %604, %606
  br i1 %607, label %608, label %612

608:                                              ; preds = %603
  %609 = add nuw i32 %604, 1
  store i32 %609, ptr %56, align 4, !tbaa !61
  %610 = zext i32 %604 to i64
  %611 = getelementptr inbounds nuw i8, ptr %601, i64 %610
  store i8 %596, ptr %611, align 1, !tbaa !44
  br label %612

612:                                              ; preds = %608, %603, %599, %592
  %613 = icmp ne i8 %596, 0
  %614 = icmp samesign ult i64 %594, %591
  %615 = select i1 %613, i1 %614, i1 false
  br i1 %615, label %592, label %616, !llvm.loop !67

616:                                              ; preds = %612
  %617 = trunc nuw i64 %594 to i32
  %618 = load i32, ptr %52, align 8, !tbaa !28
  %619 = and i32 %618, 512
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %628, label %621

621:                                              ; preds = %616
  %622 = load i32, ptr %49, align 8, !tbaa !24
  %623 = and i32 %622, 4
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %628, label %625

625:                                              ; preds = %621
  %626 = load i64, ptr %53, align 8, !tbaa !54
  %627 = call i64 @crc32(i64 noundef %626, ptr noundef nonnull %581, i32 noundef %617) #12
  store i64 %627, ptr %53, align 8, !tbaa !54
  br label %628

628:                                              ; preds = %625, %621, %616
  %629 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %582, i32 %617), !nosanitize !47
  %630 = extractvalue { i32, i1 } %629, 1, !nosanitize !47
  br i1 %630, label %631, label %632, !prof !48, !nosanitize !47

631:                                              ; preds = %628
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

632:                                              ; preds = %628
  %633 = extractvalue { i32, i1 } %629, 0, !nosanitize !47
  %634 = and i64 %594, 4294967295
  %635 = getelementptr inbounds nuw i8, ptr %581, i64 %634
  br i1 %613, label %2492, label %641

636:                                              ; preds = %580
  %637 = load ptr, ptr %84, align 8, !tbaa !30
  %638 = icmp eq ptr %637, null
  br i1 %638, label %641, label %639

639:                                              ; preds = %636
  %640 = getelementptr inbounds nuw i8, ptr %637, i64 40
  store ptr null, ptr %640, align 8, !tbaa !65
  br label %641

641:                                              ; preds = %639, %636, %632
  %642 = phi ptr [ %635, %632 ], [ %581, %639 ], [ %581, %636 ]
  %643 = phi i32 [ %633, %632 ], [ %582, %639 ], [ %582, %636 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16187, ptr %21, align 8, !tbaa !20
  br label %644

644:                                              ; preds = %641, %88
  %645 = phi ptr [ %642, %641 ], [ %90, %88 ]
  %646 = phi i32 [ %643, %641 ], [ %92, %88 ]
  %647 = phi i64 [ %583, %641 ], [ %94, %88 ]
  %648 = phi i32 [ %584, %641 ], [ %95, %88 ]
  %649 = load i32, ptr %52, align 8, !tbaa !28
  %650 = and i32 %649, 4096
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %700, label %652

652:                                              ; preds = %644
  %653 = icmp eq i32 %646, 0
  br i1 %653, label %2492, label %654

654:                                              ; preds = %652
  %655 = zext i32 %646 to i64
  br label %656

656:                                              ; preds = %676, %654
  %657 = phi i64 [ 0, %654 ], [ %658, %676 ]
  %658 = add nuw nsw i64 %657, 1
  %659 = getelementptr inbounds nuw i8, ptr %645, i64 %657
  %660 = load i8, ptr %659, align 1, !tbaa !44
  %661 = load ptr, ptr %84, align 8, !tbaa !30
  %662 = icmp eq ptr %661, null
  br i1 %662, label %676, label %663

663:                                              ; preds = %656
  %664 = getelementptr inbounds nuw i8, ptr %661, i64 56
  %665 = load ptr, ptr %664, align 8, !tbaa !69
  %666 = icmp eq ptr %665, null
  br i1 %666, label %676, label %667

667:                                              ; preds = %663
  %668 = load i32, ptr %56, align 4, !tbaa !61
  %669 = getelementptr inbounds nuw i8, ptr %661, i64 64
  %670 = load i32, ptr %669, align 8, !tbaa !70
  %671 = icmp ult i32 %668, %670
  br i1 %671, label %672, label %676

672:                                              ; preds = %667
  %673 = add nuw i32 %668, 1
  store i32 %673, ptr %56, align 4, !tbaa !61
  %674 = zext i32 %668 to i64
  %675 = getelementptr inbounds nuw i8, ptr %665, i64 %674
  store i8 %660, ptr %675, align 1, !tbaa !44
  br label %676

676:                                              ; preds = %672, %667, %663, %656
  %677 = icmp ne i8 %660, 0
  %678 = icmp samesign ult i64 %658, %655
  %679 = select i1 %677, i1 %678, i1 false
  br i1 %679, label %656, label %680, !llvm.loop !71

680:                                              ; preds = %676
  %681 = trunc nuw i64 %658 to i32
  %682 = load i32, ptr %52, align 8, !tbaa !28
  %683 = and i32 %682, 512
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %692, label %685

685:                                              ; preds = %680
  %686 = load i32, ptr %49, align 8, !tbaa !24
  %687 = and i32 %686, 4
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %692, label %689

689:                                              ; preds = %685
  %690 = load i64, ptr %53, align 8, !tbaa !54
  %691 = call i64 @crc32(i64 noundef %690, ptr noundef nonnull %645, i32 noundef %681) #12
  store i64 %691, ptr %53, align 8, !tbaa !54
  br label %692

692:                                              ; preds = %689, %685, %680
  %693 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %646, i32 %681), !nosanitize !47
  %694 = extractvalue { i32, i1 } %693, 1, !nosanitize !47
  br i1 %694, label %695, label %696, !prof !48, !nosanitize !47

695:                                              ; preds = %692
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

696:                                              ; preds = %692
  %697 = extractvalue { i32, i1 } %693, 0, !nosanitize !47
  %698 = and i64 %658, 4294967295
  %699 = getelementptr inbounds nuw i8, ptr %645, i64 %698
  br i1 %677, label %2492, label %705

700:                                              ; preds = %644
  %701 = load ptr, ptr %84, align 8, !tbaa !30
  %702 = icmp eq ptr %701, null
  br i1 %702, label %705, label %703

703:                                              ; preds = %700
  %704 = getelementptr inbounds nuw i8, ptr %701, i64 56
  store ptr null, ptr %704, align 8, !tbaa !69
  br label %705

705:                                              ; preds = %703, %700, %696
  %706 = phi ptr [ %699, %696 ], [ %645, %703 ], [ %645, %700 ]
  %707 = phi i32 [ %697, %696 ], [ %646, %703 ], [ %646, %700 ]
  store i32 16188, ptr %21, align 8, !tbaa !20
  br label %708

708:                                              ; preds = %705, %88
  %709 = phi ptr [ %706, %705 ], [ %90, %88 ]
  %710 = phi i32 [ %707, %705 ], [ %92, %88 ]
  %711 = phi i64 [ %647, %705 ], [ %94, %88 ]
  %712 = phi i32 [ %648, %705 ], [ %95, %88 ]
  %713 = load i32, ptr %52, align 8, !tbaa !28
  %714 = and i32 %713, 512
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %766, label %716

716:                                              ; preds = %708
  %717 = icmp ult i32 %712, 16
  br i1 %717, label %718, label %753

718:                                              ; preds = %716
  %719 = zext nneg i32 %712 to i64
  %720 = icmp eq i32 %710, 0
  br i1 %720, label %2380, label %721

721:                                              ; preds = %718
  %722 = load i8, ptr %709, align 1, !tbaa !44
  %723 = zext i8 %722 to i64
  %724 = shl nuw nsw i64 %723, %719
  %725 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %711, i64 %724), !nosanitize !47
  %726 = extractvalue { i64, i1 } %725, 1, !nosanitize !47
  br i1 %726, label %727, label %728, !prof !48, !nosanitize !47

727:                                              ; preds = %736, %721
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

728:                                              ; preds = %721
  %729 = extractvalue { i64, i1 } %725, 0, !nosanitize !47
  %730 = getelementptr inbounds nuw i8, ptr %709, i64 1
  %731 = add i32 %710, -1
  %732 = add nuw nsw i64 %719, 8
  %733 = icmp ult i32 %712, 8
  br i1 %733, label %734, label %747

734:                                              ; preds = %728
  %735 = icmp eq i32 %731, 0
  br i1 %735, label %2380, label %736

736:                                              ; preds = %734
  %737 = load i8, ptr %730, align 1, !tbaa !44
  %738 = zext i8 %737 to i64
  %739 = shl nuw nsw i64 %738, %732
  %740 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %729, i64 %739), !nosanitize !47
  %741 = extractvalue { i64, i1 } %740, 1, !nosanitize !47
  br i1 %741, label %727, label %742, !prof !48, !nosanitize !47

742:                                              ; preds = %736
  %743 = extractvalue { i64, i1 } %740, 0, !nosanitize !47
  %744 = getelementptr inbounds nuw i8, ptr %709, i64 2
  %745 = add i32 %710, -2
  %746 = or disjoint i64 %719, 16
  br label %747

747:                                              ; preds = %742, %728
  %748 = phi i64 [ %729, %728 ], [ %743, %742 ]
  %749 = phi ptr [ %730, %728 ], [ %744, %742 ]
  %750 = phi i32 [ %731, %728 ], [ %745, %742 ]
  %751 = phi i64 [ %732, %728 ], [ %746, %742 ]
  %752 = trunc nuw nsw i64 %751 to i32
  br label %753

753:                                              ; preds = %747, %716
  %754 = phi ptr [ %709, %716 ], [ %749, %747 ]
  %755 = phi i32 [ %710, %716 ], [ %750, %747 ]
  %756 = phi i64 [ %711, %716 ], [ %748, %747 ]
  %757 = phi i32 [ %712, %716 ], [ %752, %747 ]
  %758 = load i32, ptr %49, align 8, !tbaa !24
  %759 = and i32 %758, 4
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %766, label %761

761:                                              ; preds = %753
  %762 = load i64, ptr %53, align 8, !tbaa !54
  %763 = and i64 %762, 65535
  %764 = icmp eq i64 %756, %763
  br i1 %764, label %766, label %765

765:                                              ; preds = %761
  store ptr @.str.5, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

766:                                              ; preds = %761, %753, %708
  %767 = phi ptr [ %709, %708 ], [ %754, %753 ], [ %754, %761 ]
  %768 = phi i32 [ %710, %708 ], [ %755, %753 ], [ %755, %761 ]
  %769 = phi i64 [ %711, %708 ], [ 0, %753 ], [ 0, %761 ]
  %770 = phi i32 [ %712, %708 ], [ 0, %753 ], [ 0, %761 ]
  %771 = load ptr, ptr %84, align 8, !tbaa !30
  %772 = icmp eq ptr %771, null
  br i1 %772, label %778, label %773

773:                                              ; preds = %766
  %774 = lshr i32 %713, 9
  %775 = and i32 %774, 1
  %776 = getelementptr inbounds nuw i8, ptr %771, i64 68
  store i32 %775, ptr %776, align 4, !tbaa !72
  %777 = getelementptr inbounds nuw i8, ptr %771, i64 72
  store i32 1, ptr %777, align 8, !tbaa !55
  br label %778

778:                                              ; preds = %773, %766
  %779 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %779, ptr %53, align 8, !tbaa !54
  store i64 %779, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2358

780:                                              ; preds = %112
  %781 = load i8, ptr %90, align 1, !tbaa !44
  %782 = zext i8 %781 to i64
  %783 = shl nuw nsw i64 %782, %113
  %784 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %783), !nosanitize !47
  %785 = extractvalue { i64, i1 } %784, 1, !nosanitize !47
  br i1 %785, label %786, label %787, !prof !48, !nosanitize !47

786:                                              ; preds = %823, %809, %795, %780
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

787:                                              ; preds = %780
  %788 = extractvalue { i64, i1 } %784, 0, !nosanitize !47
  %789 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %790 = add i32 %92, -1
  %791 = add nuw nsw i64 %113, 8
  %792 = icmp ult i32 %95, 24
  br i1 %792, label %793, label %833

793:                                              ; preds = %787
  %794 = icmp eq i32 %790, 0
  br i1 %794, label %2410, label %795

795:                                              ; preds = %793
  %796 = load i8, ptr %789, align 1, !tbaa !44
  %797 = zext i8 %796 to i64
  %798 = shl nuw nsw i64 %797, %791
  %799 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %788, i64 %798), !nosanitize !47
  %800 = extractvalue { i64, i1 } %799, 1, !nosanitize !47
  br i1 %800, label %786, label %801, !prof !48, !nosanitize !47

801:                                              ; preds = %795
  %802 = extractvalue { i64, i1 } %799, 0, !nosanitize !47
  %803 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %804 = add i32 %92, -2
  %805 = add nuw nsw i64 %113, 16
  %806 = icmp ult i32 %95, 16
  br i1 %806, label %807, label %833

807:                                              ; preds = %801
  %808 = icmp eq i32 %804, 0
  br i1 %808, label %2410, label %809

809:                                              ; preds = %807
  %810 = load i8, ptr %803, align 1, !tbaa !44
  %811 = zext i8 %810 to i64
  %812 = shl nuw nsw i64 %811, %805
  %813 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %802, i64 %812), !nosanitize !47
  %814 = extractvalue { i64, i1 } %813, 1, !nosanitize !47
  br i1 %814, label %786, label %815, !prof !48, !nosanitize !47

815:                                              ; preds = %809
  %816 = extractvalue { i64, i1 } %813, 0, !nosanitize !47
  %817 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %818 = add i32 %92, -3
  %819 = add nuw nsw i64 %113, 24
  %820 = icmp ult i32 %95, 8
  br i1 %820, label %821, label %833

821:                                              ; preds = %815
  %822 = icmp eq i32 %818, 0
  br i1 %822, label %2410, label %823

823:                                              ; preds = %821
  %824 = load i8, ptr %817, align 1, !tbaa !44
  %825 = zext i8 %824 to i64
  %826 = shl nuw nsw i64 %825, %819
  %827 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %816, i64 %826), !nosanitize !47
  %828 = extractvalue { i64, i1 } %827, 1, !nosanitize !47
  br i1 %828, label %786, label %829, !prof !48, !nosanitize !47

829:                                              ; preds = %823
  %830 = extractvalue { i64, i1 } %827, 0, !nosanitize !47
  %831 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %832 = add i32 %92, -4
  br label %833

833:                                              ; preds = %829, %815, %801, %787, %110
  %834 = phi ptr [ %90, %110 ], [ %789, %787 ], [ %803, %801 ], [ %817, %815 ], [ %831, %829 ]
  %835 = phi i32 [ %92, %110 ], [ %790, %787 ], [ %804, %801 ], [ %818, %815 ], [ %832, %829 ]
  %836 = phi i64 [ %94, %110 ], [ %788, %787 ], [ %802, %801 ], [ %816, %815 ], [ %830, %829 ]
  %837 = trunc i64 %836 to i32
  %838 = call i32 @llvm.bswap.i32(i32 %837)
  %839 = zext i32 %838 to i64
  store i64 %839, ptr %53, align 8, !tbaa !54
  store i64 %839, ptr %54, align 8, !tbaa !25
  store i32 16190, ptr %21, align 8, !tbaa !20
  br label %840

840:                                              ; preds = %833, %88
  %841 = phi ptr [ %834, %833 ], [ %90, %88 ]
  %842 = phi i32 [ %835, %833 ], [ %92, %88 ]
  %843 = phi i64 [ 0, %833 ], [ %94, %88 ]
  %844 = phi i32 [ 0, %833 ], [ %95, %88 ]
  %845 = load i32, ptr %80, align 4, !tbaa !27
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %848

847:                                              ; preds = %840
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %841, ptr %0, align 8, !tbaa !50
  store i32 %842, ptr %43, align 8, !tbaa !51
  store i64 %843, ptr %45, align 8, !tbaa !31
  store i32 %844, ptr %47, align 8, !tbaa !32
  br label %2685

848:                                              ; preds = %840
  %849 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %849, ptr %53, align 8, !tbaa !54
  store i64 %849, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %850

850:                                              ; preds = %848, %88
  %851 = phi ptr [ %841, %848 ], [ %90, %88 ]
  %852 = phi i32 [ %842, %848 ], [ %92, %88 ]
  %853 = phi i64 [ %843, %848 ], [ %94, %88 ]
  %854 = phi i32 [ %844, %848 ], [ %95, %88 ]
  br i1 %82, label %2492, label %855

855:                                              ; preds = %850, %88
  %856 = phi ptr [ %851, %850 ], [ %90, %88 ]
  %857 = phi i32 [ %852, %850 ], [ %92, %88 ]
  %858 = phi i64 [ %853, %850 ], [ %94, %88 ]
  %859 = phi i32 [ %854, %850 ], [ %95, %88 ]
  %860 = load i32, ptr %83, align 4, !tbaa !26
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %862, label %867

862:                                              ; preds = %855
  %863 = icmp ult i32 %859, 3
  br i1 %863, label %864, label %885

864:                                              ; preds = %862
  %865 = or disjoint i32 %859, 8
  %866 = icmp eq i32 %857, 0
  br i1 %866, label %2492, label %873

867:                                              ; preds = %855
  %868 = and i32 %859, 7
  %869 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %859, i32 %868), !nosanitize !47
  %870 = extractvalue { i32, i1 } %869, 0, !nosanitize !47
  %871 = zext nneg i32 %868 to i64
  %872 = lshr i64 %858, %871
  store i32 16206, ptr %21, align 8, !tbaa !20
  br label %2358

873:                                              ; preds = %864
  %874 = load i8, ptr %856, align 1, !tbaa !44
  %875 = zext i8 %874 to i64
  %876 = zext nneg i32 %859 to i64
  %877 = shl nuw nsw i64 %875, %876
  %878 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %858, i64 %877), !nosanitize !47
  %879 = extractvalue { i64, i1 } %878, 1, !nosanitize !47
  br i1 %879, label %880, label %881, !prof !48, !nosanitize !47

880:                                              ; preds = %873
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

881:                                              ; preds = %873
  %882 = extractvalue { i64, i1 } %878, 0, !nosanitize !47
  %883 = getelementptr inbounds nuw i8, ptr %856, i64 1
  %884 = add i32 %857, -1
  br label %885

885:                                              ; preds = %881, %862
  %886 = phi ptr [ %883, %881 ], [ %856, %862 ]
  %887 = phi i32 [ %884, %881 ], [ %857, %862 ]
  %888 = phi i64 [ %882, %881 ], [ %858, %862 ]
  %889 = phi i32 [ %865, %881 ], [ %859, %862 ]
  %890 = trunc i64 %888 to i32
  %891 = and i32 %890, 1
  store i32 %891, ptr %83, align 4, !tbaa !26
  %892 = lshr i32 %890, 1
  %893 = and i32 %892, 3
  switch i32 %893, label %899 [
    i32 0, label %901
    i32 1, label %894
    i32 2, label %898
    i32 3, label %900
  ]

894:                                              ; preds = %885
  call void @inflate_fixed(ptr noundef nonnull %15) #12
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %895, label %903

895:                                              ; preds = %894
  %896 = add i32 %889, -3
  %897 = lshr i64 %888, 3
  br label %2492

898:                                              ; preds = %885
  br label %901

899:                                              ; preds = %885
  unreachable

900:                                              ; preds = %885
  store ptr @.str.6, ptr %55, align 8, !tbaa !45
  br label %901

901:                                              ; preds = %900, %898, %885
  %902 = phi i32 [ 16209, %900 ], [ 16196, %898 ], [ 16193, %885 ]
  store i32 %902, ptr %21, align 8, !tbaa !20
  br label %903

903:                                              ; preds = %901, %894
  %904 = add i32 %889, -3
  %905 = lshr i64 %888, 3
  br label %2358

906:                                              ; preds = %88
  %907 = and i32 %95, 7
  %908 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %95, i32 %907), !nosanitize !47
  %909 = zext nneg i32 %907 to i64
  %910 = lshr i64 %94, %909
  %911 = extractvalue { i32, i1 } %908, 0
  %912 = icmp ult i32 %911, 32
  br i1 %912, label %913, label %976

913:                                              ; preds = %906
  %914 = and i32 %95, -8
  %915 = zext i32 %914 to i64
  %916 = icmp eq i32 %92, 0
  br i1 %916, label %2416, label %917

917:                                              ; preds = %913
  %918 = load i8, ptr %90, align 1, !tbaa !44
  %919 = zext i8 %918 to i64
  %920 = shl nuw nsw i64 %919, %915
  %921 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %910, i64 %920), !nosanitize !47
  %922 = extractvalue { i64, i1 } %921, 1, !nosanitize !47
  br i1 %922, label %923, label %924, !prof !48, !nosanitize !47

923:                                              ; preds = %960, %946, %932, %917
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

924:                                              ; preds = %917
  %925 = extractvalue { i64, i1 } %921, 0, !nosanitize !47
  %926 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %927 = add i32 %92, -1
  %928 = add nuw nsw i64 %915, 8
  %929 = icmp ult i32 %95, 24
  br i1 %929, label %930, label %970

930:                                              ; preds = %924
  %931 = icmp eq i32 %927, 0
  br i1 %931, label %2416, label %932

932:                                              ; preds = %930
  %933 = load i8, ptr %926, align 1, !tbaa !44
  %934 = zext i8 %933 to i64
  %935 = shl nuw nsw i64 %934, %928
  %936 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %925, i64 %935), !nosanitize !47
  %937 = extractvalue { i64, i1 } %936, 1, !nosanitize !47
  br i1 %937, label %923, label %938, !prof !48, !nosanitize !47

938:                                              ; preds = %932
  %939 = extractvalue { i64, i1 } %936, 0, !nosanitize !47
  %940 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %941 = add i32 %92, -2
  %942 = add nuw nsw i64 %915, 16
  %943 = icmp ult i32 %95, 16
  br i1 %943, label %944, label %970

944:                                              ; preds = %938
  %945 = icmp eq i32 %941, 0
  br i1 %945, label %2416, label %946

946:                                              ; preds = %944
  %947 = load i8, ptr %940, align 1, !tbaa !44
  %948 = zext i8 %947 to i64
  %949 = shl nuw nsw i64 %948, %942
  %950 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %939, i64 %949), !nosanitize !47
  %951 = extractvalue { i64, i1 } %950, 1, !nosanitize !47
  br i1 %951, label %923, label %952, !prof !48, !nosanitize !47

952:                                              ; preds = %946
  %953 = extractvalue { i64, i1 } %950, 0, !nosanitize !47
  %954 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %955 = add i32 %92, -3
  %956 = add nuw nsw i64 %915, 24
  %957 = icmp eq i32 %914, 0
  br i1 %957, label %958, label %970

958:                                              ; preds = %952
  %959 = icmp eq i32 %955, 0
  br i1 %959, label %2416, label %960

960:                                              ; preds = %958
  %961 = load i8, ptr %954, align 1, !tbaa !44
  %962 = zext i8 %961 to i64
  %963 = shl nuw nsw i64 %962, %956
  %964 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %953, i64 %963), !nosanitize !47
  %965 = extractvalue { i64, i1 } %964, 1, !nosanitize !47
  br i1 %965, label %923, label %966, !prof !48, !nosanitize !47

966:                                              ; preds = %960
  %967 = extractvalue { i64, i1 } %964, 0, !nosanitize !47
  %968 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %969 = add i32 %92, -4
  br label %970

970:                                              ; preds = %966, %952, %938, %924
  %971 = phi i64 [ %925, %924 ], [ %939, %938 ], [ %953, %952 ], [ %967, %966 ]
  %972 = phi ptr [ %926, %924 ], [ %940, %938 ], [ %954, %952 ], [ %968, %966 ]
  %973 = phi i32 [ %927, %924 ], [ %941, %938 ], [ %955, %952 ], [ %969, %966 ]
  %974 = phi i64 [ %928, %924 ], [ %942, %938 ], [ %956, %952 ], [ 32, %966 ]
  %975 = trunc nuw nsw i64 %974 to i32
  br label %976

976:                                              ; preds = %970, %906
  %977 = phi ptr [ %90, %906 ], [ %972, %970 ]
  %978 = phi i32 [ %92, %906 ], [ %973, %970 ]
  %979 = phi i64 [ %910, %906 ], [ %971, %970 ]
  %980 = phi i32 [ %911, %906 ], [ %975, %970 ]
  %981 = and i64 %979, 65535
  %982 = lshr i64 %979, 16
  %983 = xor i64 %982, %981
  %984 = icmp eq i64 %983, 65535
  br i1 %984, label %986, label %985

985:                                              ; preds = %976
  store ptr @.str.7, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

986:                                              ; preds = %976
  %987 = trunc i64 %979 to i32
  %988 = and i32 %987, 65535
  store i32 %988, ptr %56, align 4, !tbaa !61
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2492, label %989

989:                                              ; preds = %986, %88
  %990 = phi ptr [ %977, %986 ], [ %90, %88 ]
  %991 = phi i32 [ %978, %986 ], [ %92, %88 ]
  %992 = phi i64 [ 0, %986 ], [ %94, %88 ]
  %993 = phi i32 [ 0, %986 ], [ %95, %88 ]
  store i32 16195, ptr %21, align 8, !tbaa !20
  br label %994

994:                                              ; preds = %989, %88
  %995 = phi ptr [ %990, %989 ], [ %90, %88 ]
  %996 = phi i32 [ %991, %989 ], [ %92, %88 ]
  %997 = phi i64 [ %992, %989 ], [ %94, %88 ]
  %998 = phi i32 [ %993, %989 ], [ %95, %88 ]
  %999 = load i32, ptr %56, align 4, !tbaa !61
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1025, label %1001

1001:                                             ; preds = %994
  %1002 = call i32 @llvm.umin.i32(i32 %999, i32 %996)
  %1003 = call i32 @llvm.umin.i32(i32 %1002, i32 %93)
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %2492, label %1005

1005:                                             ; preds = %1001
  %1006 = zext i32 %1003 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr align 1 %995, i64 %1006, i1 false)
  %1007 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %996, i32 %1003), !nosanitize !47
  %1008 = extractvalue { i32, i1 } %1007, 0, !nosanitize !47
  %1009 = extractvalue { i32, i1 } %1007, 1, !nosanitize !47
  br i1 %1009, label %1010, label %1011, !prof !48, !nosanitize !47

1010:                                             ; preds = %1005
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1011:                                             ; preds = %1005
  %1012 = getelementptr inbounds nuw i8, ptr %995, i64 %1006
  %1013 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %1003), !nosanitize !47
  %1014 = extractvalue { i32, i1 } %1013, 0, !nosanitize !47
  %1015 = extractvalue { i32, i1 } %1013, 1, !nosanitize !47
  br i1 %1015, label %1016, label %1017, !prof !48, !nosanitize !47

1016:                                             ; preds = %1011
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1017:                                             ; preds = %1011
  %1018 = load i32, ptr %56, align 4, !tbaa !61
  %1019 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1018, i32 %1003), !nosanitize !47
  %1020 = extractvalue { i32, i1 } %1019, 1, !nosanitize !47
  br i1 %1020, label %1021, label %1022, !prof !48, !nosanitize !47

1021:                                             ; preds = %1017
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1022:                                             ; preds = %1017
  %1023 = extractvalue { i32, i1 } %1019, 0, !nosanitize !47
  %1024 = getelementptr inbounds nuw i8, ptr %91, i64 %1006
  store i32 %1023, ptr %56, align 4, !tbaa !61
  br label %2358

1025:                                             ; preds = %994
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2358

1026:                                             ; preds = %107
  %1027 = load i8, ptr %90, align 1, !tbaa !44
  %1028 = zext i8 %1027 to i64
  %1029 = shl nuw nsw i64 %1028, %108
  %1030 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %1029), !nosanitize !47
  %1031 = extractvalue { i64, i1 } %1030, 1, !nosanitize !47
  br i1 %1031, label %1032, label %1033, !prof !48, !nosanitize !47

1032:                                             ; preds = %1041, %1026
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1033:                                             ; preds = %1026
  %1034 = extractvalue { i64, i1 } %1030, 0, !nosanitize !47
  %1035 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %1036 = add i32 %92, -1
  %1037 = add nuw nsw i64 %108, 8
  %1038 = icmp ult i32 %95, 6
  br i1 %1038, label %1039, label %1052

1039:                                             ; preds = %1033
  %1040 = icmp eq i32 %1036, 0
  br i1 %1040, label %2473, label %1041

1041:                                             ; preds = %1039
  %1042 = load i8, ptr %1035, align 1, !tbaa !44
  %1043 = zext i8 %1042 to i64
  %1044 = shl nuw nsw i64 %1043, %1037
  %1045 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1034, i64 %1044), !nosanitize !47
  %1046 = extractvalue { i64, i1 } %1045, 1, !nosanitize !47
  br i1 %1046, label %1032, label %1047, !prof !48, !nosanitize !47

1047:                                             ; preds = %1041
  %1048 = extractvalue { i64, i1 } %1045, 0, !nosanitize !47
  %1049 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %1050 = add i32 %92, -2
  %1051 = or disjoint i64 %108, 16
  br label %1052

1052:                                             ; preds = %1047, %1033
  %1053 = phi i64 [ %1034, %1033 ], [ %1048, %1047 ]
  %1054 = phi ptr [ %1035, %1033 ], [ %1049, %1047 ]
  %1055 = phi i32 [ %1036, %1033 ], [ %1050, %1047 ]
  %1056 = phi i64 [ %1037, %1033 ], [ %1051, %1047 ]
  %1057 = trunc nuw nsw i64 %1056 to i32
  br label %1058

1058:                                             ; preds = %1052, %105
  %1059 = phi ptr [ %90, %105 ], [ %1054, %1052 ]
  %1060 = phi i32 [ %92, %105 ], [ %1055, %1052 ]
  %1061 = phi i64 [ %94, %105 ], [ %1053, %1052 ]
  %1062 = phi i32 [ %95, %105 ], [ %1057, %1052 ]
  %1063 = trunc i64 %1061 to i32
  %1064 = and i32 %1063, 31
  %1065 = add nuw nsw i32 %1064, 257
  store i32 %1065, ptr %57, align 4, !tbaa !73
  %1066 = lshr i32 %1063, 5
  %1067 = and i32 %1066, 31
  %1068 = add nuw nsw i32 %1067, 1
  store i32 %1068, ptr %58, align 8, !tbaa !74
  %1069 = lshr i32 %1063, 10
  %1070 = and i32 %1069, 15
  %1071 = add nuw nsw i32 %1070, 4
  store i32 %1071, ptr %59, align 8, !tbaa !75
  %1072 = lshr i64 %1061, 14
  %1073 = add i32 %1062, -14
  %1074 = icmp samesign ugt i32 %1064, 29
  %1075 = icmp samesign ugt i32 %1067, 29
  %1076 = select i1 %1074, i1 true, i1 %1075
  br i1 %1076, label %1077, label %1078

1077:                                             ; preds = %1058
  store ptr @.str.8, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

1078:                                             ; preds = %1058
  store i32 0, ptr %60, align 4, !tbaa !76
  store i32 16197, ptr %21, align 8, !tbaa !20
  br label %1083

1079:                                             ; preds = %88
  %1080 = load i32, ptr %59, align 8, !tbaa !75
  %1081 = load i32, ptr %60, align 4, !tbaa !76
  %1082 = icmp ult i32 %1081, %1080
  br i1 %1082, label %1083, label %1092

1083:                                             ; preds = %1079, %1078
  %1084 = phi i32 [ %1073, %1078 ], [ %95, %1079 ]
  %1085 = phi i64 [ %1072, %1078 ], [ %94, %1079 ]
  %1086 = phi i32 [ %1060, %1078 ], [ %92, %1079 ]
  %1087 = phi ptr [ %1059, %1078 ], [ %90, %1079 ]
  %1088 = phi i32 [ %1071, %1078 ], [ %1080, %1079 ]
  %1089 = phi i32 [ 0, %1078 ], [ %1081, %1079 ]
  %1090 = zext i32 %1089 to i64
  %1091 = zext i32 %1088 to i64
  br label %1101

1092:                                             ; preds = %1123, %1079
  %1093 = phi ptr [ %90, %1079 ], [ %1124, %1123 ]
  %1094 = phi i32 [ %92, %1079 ], [ %1125, %1123 ]
  %1095 = phi i64 [ %94, %1079 ], [ %1137, %1123 ]
  %1096 = phi i32 [ %95, %1079 ], [ %1136, %1123 ]
  %1097 = phi i32 [ %1081, %1079 ], [ %1088, %1123 ]
  %1098 = icmp ult i32 %1097, 19
  br i1 %1098, label %1099, label %1149

1099:                                             ; preds = %1092
  %1100 = zext nneg i32 %1097 to i64
  br label %1139

1101:                                             ; preds = %1123, %1083
  %1102 = phi i64 [ %1090, %1083 ], [ %1128, %1123 ]
  %1103 = phi i32 [ %1084, %1083 ], [ %1136, %1123 ]
  %1104 = phi i64 [ %1085, %1083 ], [ %1137, %1123 ]
  %1105 = phi i32 [ %1086, %1083 ], [ %1125, %1123 ]
  %1106 = phi ptr [ %1087, %1083 ], [ %1124, %1123 ]
  %1107 = icmp ult i32 %1103, 3
  br i1 %1107, label %1108, label %1123

1108:                                             ; preds = %1101
  %1109 = or disjoint i32 %1103, 8
  %1110 = icmp eq i32 %1105, 0
  br i1 %1110, label %2492, label %1111

1111:                                             ; preds = %1108
  %1112 = load i8, ptr %1106, align 1, !tbaa !44
  %1113 = zext i8 %1112 to i64
  %1114 = zext nneg i32 %1103 to i64
  %1115 = shl nuw nsw i64 %1113, %1114
  %1116 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1104, i64 %1115), !nosanitize !47
  %1117 = extractvalue { i64, i1 } %1116, 1, !nosanitize !47
  br i1 %1117, label %1118, label %1119, !prof !48, !nosanitize !47

1118:                                             ; preds = %1111
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1119:                                             ; preds = %1111
  %1120 = extractvalue { i64, i1 } %1116, 0, !nosanitize !47
  %1121 = getelementptr inbounds nuw i8, ptr %1106, i64 1
  %1122 = add i32 %1105, -1
  br label %1123

1123:                                             ; preds = %1119, %1101
  %1124 = phi ptr [ %1121, %1119 ], [ %1106, %1101 ]
  %1125 = phi i32 [ %1122, %1119 ], [ %1105, %1101 ]
  %1126 = phi i64 [ %1120, %1119 ], [ %1104, %1101 ]
  %1127 = phi i32 [ %1109, %1119 ], [ %1103, %1101 ]
  %1128 = add nuw nsw i64 %1102, 1
  %1129 = trunc i64 %1126 to i16
  %1130 = and i16 %1129, 7
  %1131 = trunc nuw i64 %1128 to i32
  store i32 %1131, ptr %60, align 4, !tbaa !76
  %1132 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1102
  %1133 = load i16, ptr %1132, align 2, !tbaa !77
  %1134 = zext i16 %1133 to i64
  %1135 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1134
  store i16 %1130, ptr %1135, align 2, !tbaa !77
  %1136 = add i32 %1127, -3
  %1137 = lshr i64 %1126, 3
  %1138 = icmp eq i64 %1128, %1091
  br i1 %1138, label %1092, label %1101, !llvm.loop !79

1139:                                             ; preds = %1139, %1099
  %1140 = phi i64 [ %1100, %1099 ], [ %1141, %1139 ]
  %1141 = add nuw nsw i64 %1140, 1
  %1142 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1140
  %1143 = load i16, ptr %1142, align 2, !tbaa !77
  %1144 = zext i16 %1143 to i64
  %1145 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1144
  store i16 0, ptr %1145, align 2, !tbaa !77
  %1146 = and i64 %1141, 4294967295
  %1147 = icmp eq i64 %1146, 19
  br i1 %1147, label %1148, label %1139, !llvm.loop !80

1148:                                             ; preds = %1139
  store i32 19, ptr %60, align 4, !tbaa !76
  br label %1149

1149:                                             ; preds = %1148, %1092
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %64, align 8, !tbaa !34
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 7, ptr %66, align 8, !tbaa !81
  %1150 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1153, label %1152

1152:                                             ; preds = %1149
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

1153:                                             ; preds = %1149
  store i32 0, ptr %60, align 4, !tbaa !76
  store i32 16198, ptr %21, align 8, !tbaa !20
  br label %1154

1154:                                             ; preds = %1153, %88
  %1155 = phi ptr [ %1093, %1153 ], [ %90, %88 ]
  %1156 = phi i32 [ %1094, %1153 ], [ %92, %88 ]
  %1157 = phi i64 [ %1095, %1153 ], [ %94, %88 ]
  %1158 = phi i32 [ %1096, %1153 ], [ %95, %88 ]
  %1159 = phi i32 [ 0, %1153 ], [ %97, %88 ]
  %1160 = load i32, ptr %57, align 4, !tbaa !73
  %1161 = load i32, ptr %58, align 8, !tbaa !74
  %1162 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1160, i32 %1161), !nosanitize !47
  %1163 = extractvalue { i32, i1 } %1162, 1, !nosanitize !47
  br i1 %1163, label %1176, label %1164, !prof !82, !nosanitize !47

1164:                                             ; preds = %1154
  %1165 = extractvalue { i32, i1 } %1162, 0, !nosanitize !47
  %1166 = load i32, ptr %60, align 4, !tbaa !76
  %1167 = call i32 @llvm.umax.i32(i32 %1166, i32 %1165)
  %1168 = zext i32 %1167 to i64
  %1169 = icmp ult i32 %1166, %1165
  br i1 %1169, label %1170, label %1447

1170:                                             ; preds = %1164
  %1171 = zext i32 %1166 to i64
  %1172 = load i32, ptr %66, align 8, !tbaa !81
  %1173 = shl nsw i32 -1, %1172
  %1174 = xor i32 %1173, -1
  %1175 = load ptr, ptr %65, align 8, !tbaa !35
  br label %1177

1176:                                             ; preds = %1154
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1177:                                             ; preds = %1442, %1170
  %1178 = phi ptr [ %1155, %1170 ], [ %1227, %1442 ]
  %1179 = phi i32 [ %1156, %1170 ], [ %1228, %1442 ]
  %1180 = phi i64 [ %1157, %1170 ], [ %1239, %1442 ]
  %1181 = phi i32 [ %1158, %1170 ], [ %1241, %1442 ]
  %1182 = phi i64 [ %1171, %1170 ], [ %1443, %1442 ]
  %1183 = phi i32 [ %1166, %1170 ], [ %1444, %1442 ]
  %1184 = trunc i64 %1180 to i32
  %1185 = and i32 %1174, %1184
  %1186 = zext nneg i32 %1185 to i64
  %1187 = getelementptr inbounds nuw [4 x i8], ptr %1175, i64 %1186
  %1188 = getelementptr inbounds nuw i8, ptr %1187, i64 1
  %1189 = load i8, ptr %1188, align 1, !tbaa !44
  %1190 = zext i8 %1189 to i32
  %1191 = icmp ult i32 %1181, %1190
  br i1 %1191, label %1192, label %1225

1192:                                             ; preds = %1177
  %1193 = icmp eq i32 %1179, 0
  br i1 %1193, label %2368, label %1194

1194:                                             ; preds = %1192
  %1195 = zext nneg i32 %1181 to i64
  br label %1198

1196:                                             ; preds = %1209
  %1197 = icmp eq i32 %1212, 0
  br i1 %1197, label %2368, label %1198

1198:                                             ; preds = %1196, %1194
  %1199 = phi ptr [ %1178, %1194 ], [ %1211, %1196 ]
  %1200 = phi i32 [ %1179, %1194 ], [ %1212, %1196 ]
  %1201 = phi i64 [ %1180, %1194 ], [ %1210, %1196 ]
  %1202 = phi i64 [ %1195, %1194 ], [ %1213, %1196 ]
  %1203 = load i8, ptr %1199, align 1, !tbaa !44
  %1204 = zext i8 %1203 to i64
  %1205 = shl i64 %1204, %1202
  %1206 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1201, i64 %1205), !nosanitize !47
  %1207 = extractvalue { i64, i1 } %1206, 1, !nosanitize !47
  br i1 %1207, label %1208, label %1209, !prof !48, !nosanitize !47

1208:                                             ; preds = %1198
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1209:                                             ; preds = %1198
  %1210 = extractvalue { i64, i1 } %1206, 0, !nosanitize !47
  %1211 = getelementptr inbounds nuw i8, ptr %1199, i64 1
  %1212 = add i32 %1200, -1
  %1213 = add nuw nsw i64 %1202, 8
  %1214 = trunc i64 %1210 to i32
  %1215 = and i32 %1174, %1214
  %1216 = zext nneg i32 %1215 to i64
  %1217 = getelementptr inbounds nuw [4 x i8], ptr %1175, i64 %1216
  %1218 = getelementptr inbounds nuw i8, ptr %1217, i64 1
  %1219 = load i8, ptr %1218, align 1, !tbaa !44
  %1220 = zext i8 %1219 to i64
  %1221 = icmp samesign ult i64 %1213, %1220
  br i1 %1221, label %1196, label %1222

1222:                                             ; preds = %1209
  %1223 = zext i8 %1219 to i32
  %1224 = trunc nuw nsw i64 %1213 to i32
  br label %1225

1225:                                             ; preds = %1222, %1177
  %1226 = phi i64 [ %1186, %1177 ], [ %1216, %1222 ]
  %1227 = phi ptr [ %1178, %1177 ], [ %1211, %1222 ]
  %1228 = phi i32 [ %1179, %1177 ], [ %1212, %1222 ]
  %1229 = phi i64 [ %1180, %1177 ], [ %1210, %1222 ]
  %1230 = phi i32 [ %1181, %1177 ], [ %1224, %1222 ]
  %1231 = phi i8 [ %1189, %1177 ], [ %1219, %1222 ]
  %1232 = phi i32 [ %1190, %1177 ], [ %1223, %1222 ]
  %1233 = getelementptr inbounds nuw [4 x i8], ptr %1175, i64 %1226
  %1234 = getelementptr inbounds nuw i8, ptr %1233, i64 2
  %1235 = load i16, ptr %1234, align 2, !tbaa !77
  %1236 = icmp ult i16 %1235, 16
  br i1 %1236, label %1237, label %1247

1237:                                             ; preds = %1225
  %1238 = zext nneg i8 %1231 to i64
  %1239 = lshr i64 %1229, %1238
  %1240 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1230, i32 %1232), !nosanitize !47
  %1241 = extractvalue { i32, i1 } %1240, 0, !nosanitize !47
  %1242 = extractvalue { i32, i1 } %1240, 1, !nosanitize !47
  br i1 %1242, label %1243, label %1244, !prof !48, !nosanitize !47

1243:                                             ; preds = %1237
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1244:                                             ; preds = %1237
  %1245 = icmp eq i64 %1182, 4294967295
  br i1 %1245, label %1246, label %1442, !prof !48, !nosanitize !47

1246:                                             ; preds = %1244
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1247:                                             ; preds = %1225
  %1248 = trunc nuw i64 %1182 to i32
  switch i16 %1235, label %1261 [
    i16 16, label %1255
    i16 17, label %1249
  ]

1249:                                             ; preds = %1247
  %1250 = add nuw nsw i32 %1232, 3
  %1251 = icmp ult i32 %1230, %1250
  br i1 %1251, label %1252, label %1332

1252:                                             ; preds = %1249
  %1253 = zext nneg i32 %1230 to i64
  %1254 = zext nneg i32 %1250 to i64
  br label %1311

1255:                                             ; preds = %1247
  %1256 = add nuw nsw i32 %1232, 2
  %1257 = icmp ult i32 %1230, %1256
  br i1 %1257, label %1258, label %1288

1258:                                             ; preds = %1255
  %1259 = zext nneg i32 %1230 to i64
  %1260 = zext nneg i32 %1256 to i64
  br label %1267

1261:                                             ; preds = %1247
  %1262 = add nuw nsw i32 %1232, 7
  %1263 = icmp ult i32 %1230, %1262
  br i1 %1263, label %1264, label %1369

1264:                                             ; preds = %1261
  %1265 = zext nneg i32 %1230 to i64
  %1266 = zext nneg i32 %1262 to i64
  br label %1348

1267:                                             ; preds = %1280, %1258
  %1268 = phi i64 [ %1259, %1258 ], [ %1284, %1280 ]
  %1269 = phi i64 [ %1229, %1258 ], [ %1281, %1280 ]
  %1270 = phi i32 [ %1228, %1258 ], [ %1283, %1280 ]
  %1271 = phi ptr [ %1227, %1258 ], [ %1282, %1280 ]
  %1272 = icmp eq i32 %1270, 0
  br i1 %1272, label %2463, label %1273

1273:                                             ; preds = %1267
  %1274 = load i8, ptr %1271, align 1, !tbaa !44
  %1275 = zext i8 %1274 to i64
  %1276 = shl i64 %1275, %1268
  %1277 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1269, i64 %1276), !nosanitize !47
  %1278 = extractvalue { i64, i1 } %1277, 1, !nosanitize !47
  br i1 %1278, label %1279, label %1280, !prof !48, !nosanitize !47

1279:                                             ; preds = %1273
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1280:                                             ; preds = %1273
  %1281 = extractvalue { i64, i1 } %1277, 0, !nosanitize !47
  %1282 = getelementptr inbounds nuw i8, ptr %1271, i64 1
  %1283 = add i32 %1270, -1
  %1284 = add nuw nsw i64 %1268, 8
  %1285 = icmp samesign ult i64 %1284, %1260
  br i1 %1285, label %1267, label %1286, !llvm.loop !83

1286:                                             ; preds = %1280
  %1287 = trunc nuw nsw i64 %1284 to i32
  br label %1288

1288:                                             ; preds = %1286, %1255
  %1289 = phi ptr [ %1227, %1255 ], [ %1282, %1286 ]
  %1290 = phi i32 [ %1228, %1255 ], [ %1283, %1286 ]
  %1291 = phi i64 [ %1229, %1255 ], [ %1281, %1286 ]
  %1292 = phi i32 [ %1230, %1255 ], [ %1287, %1286 ]
  %1293 = zext nneg i8 %1231 to i64
  %1294 = lshr i64 %1291, %1293
  %1295 = sub nuw i32 %1292, %1232
  %1296 = icmp eq i64 %1182, 0
  br i1 %1296, label %1297, label %1298

1297:                                             ; preds = %1288
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

1298:                                             ; preds = %1288
  %1299 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1295, i32 2), !nosanitize !47
  %1300 = extractvalue { i32, i1 } %1299, 1, !nosanitize !47
  br i1 %1300, label %1301, label %1302, !prof !48, !nosanitize !47

1301:                                             ; preds = %1298
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1302:                                             ; preds = %1298
  %1303 = trunc i64 %1294 to i32
  %1304 = and i32 %1303, 3
  %1305 = add nuw nsw i32 %1304, 3
  %1306 = add nuw i64 %1182, 4294967295
  %1307 = and i64 %1306, 4294967295
  %1308 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1307
  %1309 = load i16, ptr %1308, align 2, !tbaa !77
  %1310 = lshr i64 %1294, 2
  br label %1385

1311:                                             ; preds = %1324, %1252
  %1312 = phi i64 [ %1253, %1252 ], [ %1328, %1324 ]
  %1313 = phi i64 [ %1229, %1252 ], [ %1325, %1324 ]
  %1314 = phi i32 [ %1228, %1252 ], [ %1327, %1324 ]
  %1315 = phi ptr [ %1227, %1252 ], [ %1326, %1324 ]
  %1316 = icmp eq i32 %1314, 0
  br i1 %1316, label %2468, label %1317

1317:                                             ; preds = %1311
  %1318 = load i8, ptr %1315, align 1, !tbaa !44
  %1319 = zext i8 %1318 to i64
  %1320 = shl i64 %1319, %1312
  %1321 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1313, i64 %1320), !nosanitize !47
  %1322 = extractvalue { i64, i1 } %1321, 1, !nosanitize !47
  br i1 %1322, label %1323, label %1324, !prof !48, !nosanitize !47

1323:                                             ; preds = %1317
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1324:                                             ; preds = %1317
  %1325 = extractvalue { i64, i1 } %1321, 0, !nosanitize !47
  %1326 = getelementptr inbounds nuw i8, ptr %1315, i64 1
  %1327 = add i32 %1314, -1
  %1328 = add nuw nsw i64 %1312, 8
  %1329 = icmp samesign ult i64 %1328, %1254
  br i1 %1329, label %1311, label %1330, !llvm.loop !84

1330:                                             ; preds = %1324
  %1331 = trunc nuw nsw i64 %1328 to i32
  br label %1332

1332:                                             ; preds = %1330, %1249
  %1333 = phi ptr [ %1227, %1249 ], [ %1326, %1330 ]
  %1334 = phi i32 [ %1228, %1249 ], [ %1327, %1330 ]
  %1335 = phi i64 [ %1229, %1249 ], [ %1325, %1330 ]
  %1336 = phi i32 [ %1230, %1249 ], [ %1331, %1330 ]
  %1337 = sub nuw i32 %1336, %1232
  %1338 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1337, i32 3), !nosanitize !47
  %1339 = extractvalue { i32, i1 } %1338, 1, !nosanitize !47
  br i1 %1339, label %1340, label %1341, !prof !48, !nosanitize !47

1340:                                             ; preds = %1332
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1341:                                             ; preds = %1332
  %1342 = zext nneg i8 %1231 to i64
  %1343 = lshr i64 %1335, %1342
  %1344 = trunc i64 %1343 to i32
  %1345 = and i32 %1344, 7
  %1346 = add nuw nsw i32 %1345, 3
  %1347 = lshr i64 %1343, 3
  br label %1385

1348:                                             ; preds = %1361, %1264
  %1349 = phi i64 [ %1265, %1264 ], [ %1365, %1361 ]
  %1350 = phi i64 [ %1229, %1264 ], [ %1362, %1361 ]
  %1351 = phi i32 [ %1228, %1264 ], [ %1364, %1361 ]
  %1352 = phi ptr [ %1227, %1264 ], [ %1363, %1361 ]
  %1353 = icmp eq i32 %1351, 0
  br i1 %1353, label %2458, label %1354

1354:                                             ; preds = %1348
  %1355 = load i8, ptr %1352, align 1, !tbaa !44
  %1356 = zext i8 %1355 to i64
  %1357 = shl i64 %1356, %1349
  %1358 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1350, i64 %1357), !nosanitize !47
  %1359 = extractvalue { i64, i1 } %1358, 1, !nosanitize !47
  br i1 %1359, label %1360, label %1361, !prof !48, !nosanitize !47

1360:                                             ; preds = %1354
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1361:                                             ; preds = %1354
  %1362 = extractvalue { i64, i1 } %1358, 0, !nosanitize !47
  %1363 = getelementptr inbounds nuw i8, ptr %1352, i64 1
  %1364 = add i32 %1351, -1
  %1365 = add nuw nsw i64 %1349, 8
  %1366 = icmp samesign ult i64 %1365, %1266
  br i1 %1366, label %1348, label %1367, !llvm.loop !85

1367:                                             ; preds = %1361
  %1368 = trunc nuw nsw i64 %1365 to i32
  br label %1369

1369:                                             ; preds = %1367, %1261
  %1370 = phi ptr [ %1227, %1261 ], [ %1363, %1367 ]
  %1371 = phi i32 [ %1228, %1261 ], [ %1364, %1367 ]
  %1372 = phi i64 [ %1229, %1261 ], [ %1362, %1367 ]
  %1373 = phi i32 [ %1230, %1261 ], [ %1368, %1367 ]
  %1374 = sub nuw i32 %1373, %1232
  %1375 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1374, i32 7), !nosanitize !47
  %1376 = extractvalue { i32, i1 } %1375, 1, !nosanitize !47
  br i1 %1376, label %1377, label %1378, !prof !48, !nosanitize !47

1377:                                             ; preds = %1369
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1378:                                             ; preds = %1369
  %1379 = zext nneg i8 %1231 to i64
  %1380 = lshr i64 %1372, %1379
  %1381 = trunc i64 %1380 to i32
  %1382 = and i32 %1381, 127
  %1383 = add nuw nsw i32 %1382, 11
  %1384 = lshr i64 %1380, 7
  br label %1385

1385:                                             ; preds = %1378, %1341, %1302
  %1386 = phi ptr [ %1289, %1302 ], [ %1333, %1341 ], [ %1370, %1378 ]
  %1387 = phi i32 [ %1290, %1302 ], [ %1334, %1341 ], [ %1371, %1378 ]
  %1388 = phi i64 [ %1310, %1302 ], [ %1347, %1341 ], [ %1384, %1378 ]
  %1389 = phi { i32, i1 } [ %1299, %1302 ], [ %1338, %1341 ], [ %1375, %1378 ]
  %1390 = phi i32 [ %1305, %1302 ], [ %1346, %1341 ], [ %1383, %1378 ]
  %1391 = phi i16 [ %1309, %1302 ], [ 0, %1341 ], [ 0, %1378 ]
  %1392 = extractvalue { i32, i1 } %1389, 0
  %1393 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1248, i32 %1390), !nosanitize !47
  %1394 = extractvalue { i32, i1 } %1393, 1, !nosanitize !47
  br i1 %1394, label %1395, label %1396, !prof !48, !nosanitize !47

1395:                                             ; preds = %1385
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1396:                                             ; preds = %1385
  %1397 = extractvalue { i32, i1 } %1393, 0, !nosanitize !47
  %1398 = icmp ugt i32 %1397, %1165
  br i1 %1398, label %1418, label %1399

1399:                                             ; preds = %1396
  %1400 = freeze i32 %1183
  %1401 = icmp eq i32 %1400, -1
  br i1 %1401, label %1432, label %1402, !prof !82, !nosanitize !47

1402:                                             ; preds = %1399
  %1403 = zext i32 %1400 to i64
  %1404 = add nsw i32 %1390, -1
  %1405 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %1404, 0
  %1406 = and i64 %1403, 1
  %1407 = icmp eq i64 %1406, 0
  br i1 %1407, label %1408, label %1414, !prof !82

1408:                                             ; preds = %1402
  %1409 = or disjoint i64 %1403, 1
  %1410 = trunc nuw i64 %1409 to i32
  store i32 %1410, ptr %60, align 4, !tbaa !76
  %1411 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1403
  store i16 %1391, ptr %1411, align 2, !tbaa !77
  %1412 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1404, i32 1), !nosanitize !47
  %1413 = extractvalue { i32, i1 } %1412, 1, !nosanitize !47
  br i1 %1413, label %1421, label %1414, !prof !86, !llvm.loop !87, !nosanitize !47

1414:                                             ; preds = %1408, %1402
  %1415 = phi { i32, i1 } [ %1405, %1402 ], [ %1412, %1408 ]
  %1416 = phi i64 [ %1403, %1402 ], [ %1409, %1408 ]
  %1417 = icmp eq i32 %1400, -2
  br i1 %1417, label %1432, label %1433, !prof !82

1418:                                             ; preds = %1396
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

1419:                                             ; preds = %1433, %1422
  %1420 = phi i32 [ %1425, %1422 ], [ %1438, %1433 ]
  store i32 %1420, ptr %60, align 4, !tbaa !76
  br label %1421

1421:                                             ; preds = %1419, %1408
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1422:                                             ; preds = %1433
  %1423 = extractvalue { i32, i1 } %1440, 0
  %1424 = add nuw nsw i64 %1435, 2
  %1425 = trunc i64 %1424 to i32
  %1426 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1437
  store i16 %1391, ptr %1426, align 2, !tbaa !77
  %1427 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1423, i32 1), !nosanitize !47
  %1428 = extractvalue { i32, i1 } %1427, 1, !nosanitize !47
  br i1 %1428, label %1419, label %1429, !prof !86, !llvm.loop !87, !nosanitize !47

1429:                                             ; preds = %1422
  %1430 = icmp eq i64 %1424, 4294967295
  br i1 %1430, label %1431, label %1433, !prof !86, !llvm.loop !88, !nosanitize !47

1431:                                             ; preds = %1429
  store i32 %1425, ptr %60, align 4, !tbaa !76
  br label %1432

1432:                                             ; preds = %1431, %1414, %1399
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1433:                                             ; preds = %1429, %1414
  %1434 = phi { i32, i1 } [ %1427, %1429 ], [ %1415, %1414 ]
  %1435 = phi i64 [ %1424, %1429 ], [ %1416, %1414 ]
  %1436 = extractvalue { i32, i1 } %1434, 0
  %1437 = add nuw nsw i64 %1435, 1
  %1438 = trunc i64 %1437 to i32
  %1439 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1435
  store i16 %1391, ptr %1439, align 2, !tbaa !77
  %1440 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1436, i32 1), !nosanitize !47
  %1441 = extractvalue { i32, i1 } %1440, 1, !nosanitize !47
  br i1 %1441, label %1419, label %1422, !prof !86, !llvm.loop !87, !nosanitize !47

1442:                                             ; preds = %1244
  %1443 = add nuw nsw i64 %1182, 1
  %1444 = trunc i64 %1443 to i32
  store i32 %1444, ptr %60, align 4, !tbaa !76
  %1445 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1182
  store i16 %1235, ptr %1445, align 2, !tbaa !77
  %1446 = icmp eq i64 %1443, %1168
  br i1 %1446, label %1447, label %1177

1447:                                             ; preds = %1442, %1164
  %1448 = phi i32 [ %1158, %1164 ], [ %1241, %1442 ]
  %1449 = phi i64 [ %1157, %1164 ], [ %1239, %1442 ]
  %1450 = phi i32 [ %1156, %1164 ], [ %1228, %1442 ]
  %1451 = phi ptr [ %1155, %1164 ], [ %1227, %1442 ]
  %1452 = load i16, ptr %68, align 8, !tbaa !77
  %1453 = icmp eq i16 %1452, 0
  br i1 %1453, label %1454, label %1455

1454:                                             ; preds = %1447
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

1455:                                             ; preds = %1447
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !81
  %1456 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1160, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1459, label %1458

1458:                                             ; preds = %1455
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

1459:                                             ; preds = %1455
  %1460 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1460, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !90
  %1461 = load i32, ptr %57, align 4, !tbaa !73
  %1462 = zext i32 %1461 to i64
  %1463 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1462
  %1464 = load i32, ptr %58, align 8, !tbaa !74
  %1465 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1463, i32 noundef %1464, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #12
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1468, label %1467

1467:                                             ; preds = %1459
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

1468:                                             ; preds = %1459
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2492, label %1469

1469:                                             ; preds = %1468, %88
  %1470 = phi ptr [ %1451, %1468 ], [ %90, %88 ]
  %1471 = phi i32 [ %1450, %1468 ], [ %92, %88 ]
  %1472 = phi i64 [ %1449, %1468 ], [ %94, %88 ]
  %1473 = phi i32 [ %1448, %1468 ], [ %95, %88 ]
  %1474 = phi i32 [ 0, %1468 ], [ %97, %88 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1475

1475:                                             ; preds = %1469, %88
  %1476 = phi ptr [ %1470, %1469 ], [ %90, %88 ]
  %1477 = phi i32 [ %1471, %1469 ], [ %92, %88 ]
  %1478 = phi i64 [ %1472, %1469 ], [ %94, %88 ]
  %1479 = phi i32 [ %1473, %1469 ], [ %95, %88 ]
  %1480 = phi i32 [ %1474, %1469 ], [ %97, %88 ]
  %1481 = icmp ugt i32 %1477, 5
  %1482 = icmp ugt i32 %93, 257
  %1483 = select i1 %1481, i1 %1482, i1 false
  br i1 %1483, label %1484, label %1494

1484:                                             ; preds = %1475
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %1476, ptr %0, align 8, !tbaa !50
  store i32 %1477, ptr %43, align 8, !tbaa !51
  store i64 %1478, ptr %45, align 8, !tbaa !31
  store i32 %1479, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %96) #12
  %1485 = load ptr, ptr %26, align 8, !tbaa !49
  %1486 = load i32, ptr %41, align 8, !tbaa !52
  %1487 = load ptr, ptr %0, align 8, !tbaa !50
  %1488 = load i32, ptr %43, align 8, !tbaa !51
  %1489 = load i64, ptr %45, align 8, !tbaa !31
  %1490 = load i32, ptr %47, align 8, !tbaa !32
  %1491 = load i32, ptr %21, align 8, !tbaa !20
  %1492 = icmp eq i32 %1491, 16191
  br i1 %1492, label %1493, label %2358

1493:                                             ; preds = %1484
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2358

1494:                                             ; preds = %1475
  store i32 0, ptr %71, align 4, !tbaa !37
  %1495 = load i32, ptr %66, align 8, !tbaa !81
  %1496 = shl nsw i32 -1, %1495
  %1497 = xor i32 %1496, -1
  %1498 = load ptr, ptr %65, align 8, !tbaa !35
  %1499 = trunc i64 %1478 to i32
  %1500 = and i32 %1497, %1499
  %1501 = zext nneg i32 %1500 to i64
  %1502 = getelementptr inbounds nuw [4 x i8], ptr %1498, i64 %1501
  %1503 = getelementptr inbounds nuw i8, ptr %1502, i64 1
  %1504 = load i8, ptr %1503, align 1, !tbaa !44
  %1505 = zext i8 %1504 to i32
  %1506 = icmp ult i32 %1479, %1505
  br i1 %1506, label %1507, label %1540

1507:                                             ; preds = %1494
  %1508 = icmp eq i32 %1477, 0
  br i1 %1508, label %2452, label %1509

1509:                                             ; preds = %1507
  %1510 = zext nneg i32 %1479 to i64
  br label %1513

1511:                                             ; preds = %1524
  %1512 = icmp eq i32 %1527, 0
  br i1 %1512, label %2452, label %1513

1513:                                             ; preds = %1511, %1509
  %1514 = phi ptr [ %1476, %1509 ], [ %1526, %1511 ]
  %1515 = phi i32 [ %1477, %1509 ], [ %1527, %1511 ]
  %1516 = phi i64 [ %1478, %1509 ], [ %1525, %1511 ]
  %1517 = phi i64 [ %1510, %1509 ], [ %1528, %1511 ]
  %1518 = load i8, ptr %1514, align 1, !tbaa !44
  %1519 = zext i8 %1518 to i64
  %1520 = shl i64 %1519, %1517
  %1521 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1516, i64 %1520), !nosanitize !47
  %1522 = extractvalue { i64, i1 } %1521, 1, !nosanitize !47
  br i1 %1522, label %1523, label %1524, !prof !48, !nosanitize !47

1523:                                             ; preds = %1513
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1524:                                             ; preds = %1513
  %1525 = extractvalue { i64, i1 } %1521, 0, !nosanitize !47
  %1526 = getelementptr inbounds nuw i8, ptr %1514, i64 1
  %1527 = add i32 %1515, -1
  %1528 = add nuw nsw i64 %1517, 8
  %1529 = trunc i64 %1525 to i32
  %1530 = and i32 %1497, %1529
  %1531 = zext nneg i32 %1530 to i64
  %1532 = getelementptr inbounds nuw [4 x i8], ptr %1498, i64 %1531
  %1533 = getelementptr inbounds nuw i8, ptr %1532, i64 1
  %1534 = load i8, ptr %1533, align 1, !tbaa !44
  %1535 = zext i8 %1534 to i64
  %1536 = icmp samesign ult i64 %1528, %1535
  br i1 %1536, label %1511, label %1537

1537:                                             ; preds = %1524
  %1538 = zext i8 %1534 to i32
  %1539 = trunc nuw nsw i64 %1528 to i32
  br label %1540

1540:                                             ; preds = %1537, %1494
  %1541 = phi ptr [ %1502, %1494 ], [ %1532, %1537 ]
  %1542 = phi ptr [ %1476, %1494 ], [ %1526, %1537 ]
  %1543 = phi i32 [ %1477, %1494 ], [ %1527, %1537 ]
  %1544 = phi i64 [ %1478, %1494 ], [ %1525, %1537 ]
  %1545 = phi i32 [ %1479, %1494 ], [ %1539, %1537 ]
  %1546 = phi i8 [ %1504, %1494 ], [ %1534, %1537 ]
  %1547 = phi i32 [ %1505, %1494 ], [ %1538, %1537 ]
  %1548 = getelementptr inbounds nuw i8, ptr %1541, i64 2
  %1549 = load i16, ptr %1548, align 2, !tbaa !77
  %1550 = load i8, ptr %1541, align 2, !tbaa !44
  %1551 = add i8 %1550, -1
  %1552 = icmp ult i8 %1551, 15
  br i1 %1552, label %1553, label %1619

1553:                                             ; preds = %1540
  %1554 = zext nneg i8 %1550 to i32
  %1555 = add nuw nsw i32 %1547, %1554
  %1556 = shl nsw i32 -1, %1555
  %1557 = xor i32 %1556, -1
  %1558 = zext i16 %1549 to i32
  %1559 = trunc i64 %1544 to i32
  %1560 = and i32 %1559, %1557
  %1561 = lshr i32 %1560, %1547
  %1562 = add nuw i32 %1561, %1558
  %1563 = zext i32 %1562 to i64
  %1564 = getelementptr inbounds nuw [4 x i8], ptr %1498, i64 %1563
  %1565 = getelementptr inbounds nuw i8, ptr %1564, i64 1
  %1566 = load i8, ptr %1565, align 1, !tbaa !44
  %1567 = zext i8 %1566 to i32
  %1568 = add nuw nsw i32 %1547, %1567
  %1569 = icmp ugt i32 %1568, %1545
  br i1 %1569, label %1570, label %1606

1570:                                             ; preds = %1553
  %1571 = icmp eq i32 %1543, 0
  br i1 %1571, label %2446, label %1572

1572:                                             ; preds = %1570
  %1573 = zext nneg i32 %1545 to i64
  br label %1576

1574:                                             ; preds = %1587
  %1575 = icmp eq i32 %1590, 0
  br i1 %1575, label %2446, label %1576

1576:                                             ; preds = %1574, %1572
  %1577 = phi ptr [ %1542, %1572 ], [ %1589, %1574 ]
  %1578 = phi i32 [ %1543, %1572 ], [ %1590, %1574 ]
  %1579 = phi i64 [ %1544, %1572 ], [ %1588, %1574 ]
  %1580 = phi i64 [ %1573, %1572 ], [ %1591, %1574 ]
  %1581 = load i8, ptr %1577, align 1, !tbaa !44
  %1582 = zext i8 %1581 to i64
  %1583 = shl i64 %1582, %1580
  %1584 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1579, i64 %1583), !nosanitize !47
  %1585 = extractvalue { i64, i1 } %1584, 1, !nosanitize !47
  br i1 %1585, label %1586, label %1587, !prof !48, !nosanitize !47

1586:                                             ; preds = %1576
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1587:                                             ; preds = %1576
  %1588 = extractvalue { i64, i1 } %1584, 0, !nosanitize !47
  %1589 = getelementptr inbounds nuw i8, ptr %1577, i64 1
  %1590 = add i32 %1578, -1
  %1591 = add nuw nsw i64 %1580, 8
  %1592 = trunc i64 %1588 to i32
  %1593 = and i32 %1592, %1557
  %1594 = lshr i32 %1593, %1547
  %1595 = add nuw i32 %1594, %1558
  %1596 = zext i32 %1595 to i64
  %1597 = getelementptr inbounds nuw [4 x i8], ptr %1498, i64 %1596
  %1598 = getelementptr inbounds nuw i8, ptr %1597, i64 1
  %1599 = load i8, ptr %1598, align 1, !tbaa !44
  %1600 = zext i8 %1599 to i32
  %1601 = add nuw nsw i32 %1547, %1600
  %1602 = zext nneg i32 %1601 to i64
  %1603 = icmp samesign ult i64 %1591, %1602
  br i1 %1603, label %1574, label %1604

1604:                                             ; preds = %1587
  %1605 = trunc nuw nsw i64 %1591 to i32
  br label %1606

1606:                                             ; preds = %1604, %1553
  %1607 = phi ptr [ %1564, %1553 ], [ %1597, %1604 ]
  %1608 = phi ptr [ %1542, %1553 ], [ %1589, %1604 ]
  %1609 = phi i32 [ %1543, %1553 ], [ %1590, %1604 ]
  %1610 = phi i64 [ %1544, %1553 ], [ %1588, %1604 ]
  %1611 = phi i32 [ %1545, %1553 ], [ %1605, %1604 ]
  %1612 = phi i8 [ %1566, %1553 ], [ %1599, %1604 ]
  %1613 = load i8, ptr %1607, align 2, !tbaa !44
  %1614 = getelementptr inbounds nuw i8, ptr %1607, i64 2
  %1615 = load i16, ptr %1614, align 2, !tbaa !77
  %1616 = sub nuw i32 %1611, %1547
  %1617 = zext nneg i8 %1546 to i64
  %1618 = lshr i64 %1610, %1617
  store i32 %1547, ptr %71, align 4, !tbaa !37
  br label %1619

1619:                                             ; preds = %1606, %1540
  %1620 = phi i32 [ %1547, %1606 ], [ 0, %1540 ]
  %1621 = phi ptr [ %1608, %1606 ], [ %1542, %1540 ]
  %1622 = phi i32 [ %1609, %1606 ], [ %1543, %1540 ]
  %1623 = phi i64 [ %1618, %1606 ], [ %1544, %1540 ]
  %1624 = phi i32 [ %1616, %1606 ], [ %1545, %1540 ]
  %1625 = phi i16 [ %1615, %1606 ], [ %1549, %1540 ]
  %1626 = phi i8 [ %1612, %1606 ], [ %1546, %1540 ]
  %1627 = phi i8 [ %1613, %1606 ], [ %1550, %1540 ]
  %1628 = zext i8 %1626 to i32
  %1629 = zext nneg i8 %1626 to i64
  %1630 = lshr i64 %1623, %1629
  %1631 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1624, i32 %1628), !nosanitize !47
  %1632 = extractvalue { i32, i1 } %1631, 0, !nosanitize !47
  %1633 = extractvalue { i32, i1 } %1631, 1, !nosanitize !47
  br i1 %1633, label %1634, label %1635, !prof !48, !nosanitize !47

1634:                                             ; preds = %1619
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1635:                                             ; preds = %1619
  %1636 = add nsw i32 %1620, %1628
  store i32 %1636, ptr %71, align 4, !tbaa !37
  %1637 = zext i16 %1625 to i32
  store i32 %1637, ptr %56, align 4, !tbaa !61
  %1638 = zext i8 %1627 to i32
  %1639 = icmp eq i8 %1627, 0
  br i1 %1639, label %1640, label %1641

1640:                                             ; preds = %1635
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2358

1641:                                             ; preds = %1635
  %1642 = and i32 %1638, 32
  %1643 = icmp eq i32 %1642, 0
  br i1 %1643, label %1645, label %1644

1644:                                             ; preds = %1641
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2358

1645:                                             ; preds = %1641
  %1646 = and i32 %1638, 64
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1649, label %1648

1648:                                             ; preds = %1645
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

1649:                                             ; preds = %1645
  %1650 = and i32 %1638, 15
  store i32 %1650, ptr %72, align 4, !tbaa !53
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1651

1651:                                             ; preds = %1649, %101
  %1652 = phi i32 [ %1650, %1649 ], [ %102, %101 ]
  %1653 = phi ptr [ %1621, %1649 ], [ %90, %101 ]
  %1654 = phi i32 [ %1622, %1649 ], [ %92, %101 ]
  %1655 = phi i64 [ %1630, %1649 ], [ %94, %101 ]
  %1656 = phi i32 [ %1632, %1649 ], [ %95, %101 ]
  %1657 = phi i32 [ %1480, %1649 ], [ %97, %101 ]
  %1658 = icmp eq i32 %1652, 0
  br i1 %1658, label %1716, label %1659

1659:                                             ; preds = %1651
  %1660 = icmp ult i32 %1656, %1652
  br i1 %1660, label %1661, label %1688

1661:                                             ; preds = %1659
  %1662 = icmp eq i32 %1654, 0
  br i1 %1662, label %2440, label %1663

1663:                                             ; preds = %1661
  %1664 = zext i32 %1656 to i64
  br label %1667

1665:                                             ; preds = %1684
  %1666 = icmp eq i32 %1672, 0
  br i1 %1666, label %2440, label %1667, !llvm.loop !91

1667:                                             ; preds = %1665, %1663
  %1668 = phi ptr [ %1653, %1663 ], [ %1673, %1665 ]
  %1669 = phi i32 [ %1654, %1663 ], [ %1672, %1665 ]
  %1670 = phi i64 [ %1655, %1663 ], [ %1678, %1665 ]
  %1671 = phi i64 [ %1664, %1663 ], [ %1685, %1665 ]
  %1672 = add i32 %1669, -1
  %1673 = getelementptr inbounds nuw i8, ptr %1668, i64 1
  %1674 = load i8, ptr %1668, align 1, !tbaa !44
  %1675 = zext i8 %1674 to i64
  %1676 = shl i64 %1675, %1671
  %1677 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1670, i64 %1676), !nosanitize !47
  %1678 = extractvalue { i64, i1 } %1677, 0, !nosanitize !47
  %1679 = extractvalue { i64, i1 } %1677, 1, !nosanitize !47
  br i1 %1679, label %1680, label %1681, !prof !48, !nosanitize !47

1680:                                             ; preds = %1667
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1681:                                             ; preds = %1667
  %1682 = icmp samesign ugt i64 %1671, 4294967287
  br i1 %1682, label %1683, label %1684, !prof !48, !nosanitize !47

1683:                                             ; preds = %1681
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1684:                                             ; preds = %1681
  %1685 = add nuw nsw i64 %1671, 8
  %1686 = trunc nuw i64 %1685 to i32
  %1687 = icmp ugt i32 %1652, %1686
  br i1 %1687, label %1665, label %1688, !llvm.loop !91

1688:                                             ; preds = %1684, %1659
  %1689 = phi ptr [ %1653, %1659 ], [ %1673, %1684 ]
  %1690 = phi i32 [ %1654, %1659 ], [ %1672, %1684 ]
  %1691 = phi i64 [ %1655, %1659 ], [ %1678, %1684 ]
  %1692 = phi i32 [ %1656, %1659 ], [ %1686, %1684 ]
  %1693 = shl nsw i32 -1, %1652
  %1694 = xor i32 %1693, -1
  %1695 = trunc i64 %1691 to i32
  %1696 = and i32 %1695, %1694
  %1697 = load i32, ptr %56, align 4, !tbaa !61
  %1698 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1697, i32 %1696), !nosanitize !47
  %1699 = extractvalue { i32, i1 } %1698, 1, !nosanitize !47
  br i1 %1699, label %1700, label %1701, !prof !48, !nosanitize !47

1700:                                             ; preds = %1688
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1701:                                             ; preds = %1688
  %1702 = extractvalue { i32, i1 } %1698, 0, !nosanitize !47
  store i32 %1702, ptr %56, align 4, !tbaa !61
  %1703 = zext nneg i32 %1652 to i64
  %1704 = lshr i64 %1691, %1703
  %1705 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1692, i32 %1652), !nosanitize !47
  %1706 = extractvalue { i32, i1 } %1705, 0, !nosanitize !47
  %1707 = extractvalue { i32, i1 } %1705, 1, !nosanitize !47
  br i1 %1707, label %1708, label %1709, !prof !48, !nosanitize !47

1708:                                             ; preds = %1701
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1709:                                             ; preds = %1701
  %1710 = load i32, ptr %71, align 4, !tbaa !37
  %1711 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1710, i32 %1652), !nosanitize !47
  %1712 = extractvalue { i32, i1 } %1711, 1, !nosanitize !47
  br i1 %1712, label %1713, label %1714, !prof !48, !nosanitize !47

1713:                                             ; preds = %1709
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1714:                                             ; preds = %1709
  %1715 = extractvalue { i32, i1 } %1711, 0, !nosanitize !47
  store i32 %1715, ptr %71, align 4, !tbaa !37
  br label %1716

1716:                                             ; preds = %1714, %1651
  %1717 = phi ptr [ %1689, %1714 ], [ %1653, %1651 ]
  %1718 = phi i32 [ %1690, %1714 ], [ %1654, %1651 ]
  %1719 = phi i64 [ %1704, %1714 ], [ %1655, %1651 ]
  %1720 = phi i32 [ %1706, %1714 ], [ %1656, %1651 ]
  %1721 = load i32, ptr %56, align 4, !tbaa !61
  store i32 %1721, ptr %73, align 8, !tbaa !92
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1722

1722:                                             ; preds = %1716, %88
  %1723 = phi ptr [ %1717, %1716 ], [ %90, %88 ]
  %1724 = phi i32 [ %1718, %1716 ], [ %92, %88 ]
  %1725 = phi i64 [ %1719, %1716 ], [ %94, %88 ]
  %1726 = phi i32 [ %1720, %1716 ], [ %95, %88 ]
  %1727 = phi i32 [ %1657, %1716 ], [ %97, %88 ]
  %1728 = load i32, ptr %69, align 4, !tbaa !90
  %1729 = shl nsw i32 -1, %1728
  %1730 = xor i32 %1729, -1
  %1731 = load ptr, ptr %64, align 8, !tbaa !34
  %1732 = trunc i64 %1725 to i32
  %1733 = and i32 %1730, %1732
  %1734 = zext nneg i32 %1733 to i64
  %1735 = getelementptr inbounds nuw [4 x i8], ptr %1731, i64 %1734
  %1736 = getelementptr inbounds nuw i8, ptr %1735, i64 1
  %1737 = load i8, ptr %1736, align 1, !tbaa !44
  %1738 = zext i8 %1737 to i32
  %1739 = icmp ult i32 %1726, %1738
  br i1 %1739, label %1740, label %1773

1740:                                             ; preds = %1722
  %1741 = icmp eq i32 %1724, 0
  br i1 %1741, label %2434, label %1742

1742:                                             ; preds = %1740
  %1743 = zext nneg i32 %1726 to i64
  br label %1746

1744:                                             ; preds = %1757
  %1745 = icmp eq i32 %1760, 0
  br i1 %1745, label %2434, label %1746

1746:                                             ; preds = %1744, %1742
  %1747 = phi ptr [ %1723, %1742 ], [ %1759, %1744 ]
  %1748 = phi i32 [ %1724, %1742 ], [ %1760, %1744 ]
  %1749 = phi i64 [ %1725, %1742 ], [ %1758, %1744 ]
  %1750 = phi i64 [ %1743, %1742 ], [ %1761, %1744 ]
  %1751 = load i8, ptr %1747, align 1, !tbaa !44
  %1752 = zext i8 %1751 to i64
  %1753 = shl i64 %1752, %1750
  %1754 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1749, i64 %1753), !nosanitize !47
  %1755 = extractvalue { i64, i1 } %1754, 1, !nosanitize !47
  br i1 %1755, label %1756, label %1757, !prof !48, !nosanitize !47

1756:                                             ; preds = %1746
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1757:                                             ; preds = %1746
  %1758 = extractvalue { i64, i1 } %1754, 0, !nosanitize !47
  %1759 = getelementptr inbounds nuw i8, ptr %1747, i64 1
  %1760 = add i32 %1748, -1
  %1761 = add nuw nsw i64 %1750, 8
  %1762 = trunc i64 %1758 to i32
  %1763 = and i32 %1730, %1762
  %1764 = zext nneg i32 %1763 to i64
  %1765 = getelementptr inbounds nuw [4 x i8], ptr %1731, i64 %1764
  %1766 = getelementptr inbounds nuw i8, ptr %1765, i64 1
  %1767 = load i8, ptr %1766, align 1, !tbaa !44
  %1768 = zext i8 %1767 to i64
  %1769 = icmp samesign ult i64 %1761, %1768
  br i1 %1769, label %1744, label %1770

1770:                                             ; preds = %1757
  %1771 = zext i8 %1767 to i32
  %1772 = trunc nuw nsw i64 %1761 to i32
  br label %1773

1773:                                             ; preds = %1770, %1722
  %1774 = phi ptr [ %1735, %1722 ], [ %1765, %1770 ]
  %1775 = phi ptr [ %1723, %1722 ], [ %1759, %1770 ]
  %1776 = phi i32 [ %1724, %1722 ], [ %1760, %1770 ]
  %1777 = phi i64 [ %1725, %1722 ], [ %1758, %1770 ]
  %1778 = phi i32 [ %1726, %1722 ], [ %1772, %1770 ]
  %1779 = phi i8 [ %1737, %1722 ], [ %1767, %1770 ]
  %1780 = phi i32 [ %1738, %1722 ], [ %1771, %1770 ]
  %1781 = getelementptr inbounds nuw i8, ptr %1774, i64 2
  %1782 = load i16, ptr %1781, align 2, !tbaa !77
  %1783 = load i8, ptr %1774, align 2, !tbaa !44
  %1784 = icmp ult i8 %1783, 16
  br i1 %1784, label %1785, label %1857

1785:                                             ; preds = %1773
  %1786 = zext nneg i8 %1783 to i32
  %1787 = add nuw nsw i32 %1780, %1786
  %1788 = shl nsw i32 -1, %1787
  %1789 = xor i32 %1788, -1
  %1790 = zext i16 %1782 to i32
  %1791 = trunc i64 %1777 to i32
  %1792 = and i32 %1791, %1789
  %1793 = lshr i32 %1792, %1780
  %1794 = add nuw i32 %1793, %1790
  %1795 = zext i32 %1794 to i64
  %1796 = getelementptr inbounds nuw [4 x i8], ptr %1731, i64 %1795
  %1797 = getelementptr inbounds nuw i8, ptr %1796, i64 1
  %1798 = load i8, ptr %1797, align 1, !tbaa !44
  %1799 = zext i8 %1798 to i32
  %1800 = add nuw nsw i32 %1780, %1799
  %1801 = icmp ugt i32 %1800, %1778
  br i1 %1801, label %1802, label %1839

1802:                                             ; preds = %1785
  %1803 = icmp eq i32 %1776, 0
  br i1 %1803, label %2428, label %1804

1804:                                             ; preds = %1802
  %1805 = zext nneg i32 %1778 to i64
  br label %1808

1806:                                             ; preds = %1820
  %1807 = icmp eq i32 %1823, 0
  br i1 %1807, label %2428, label %1808

1808:                                             ; preds = %1806, %1804
  %1809 = phi ptr [ %1775, %1804 ], [ %1822, %1806 ]
  %1810 = phi i32 [ %1776, %1804 ], [ %1823, %1806 ]
  %1811 = phi i64 [ %1777, %1804 ], [ %1821, %1806 ]
  %1812 = phi i64 [ %1805, %1804 ], [ %1824, %1806 ]
  %1813 = load i8, ptr %1809, align 1, !tbaa !44
  %1814 = zext i8 %1813 to i64
  %1815 = shl i64 %1814, %1812
  %1816 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1811, i64 %1815), !nosanitize !47
  %1817 = extractvalue { i64, i1 } %1816, 1, !nosanitize !47
  br i1 %1817, label %1818, label %1820, !prof !48, !nosanitize !47

1818:                                             ; preds = %1808
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1819:                                             ; preds = %1872, %1839
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1820:                                             ; preds = %1808
  %1821 = extractvalue { i64, i1 } %1816, 0, !nosanitize !47
  %1822 = getelementptr inbounds nuw i8, ptr %1809, i64 1
  %1823 = add i32 %1810, -1
  %1824 = add nuw nsw i64 %1812, 8
  %1825 = trunc i64 %1821 to i32
  %1826 = and i32 %1825, %1789
  %1827 = lshr i32 %1826, %1780
  %1828 = add nuw i32 %1827, %1790
  %1829 = zext i32 %1828 to i64
  %1830 = getelementptr inbounds nuw [4 x i8], ptr %1731, i64 %1829
  %1831 = getelementptr inbounds nuw i8, ptr %1830, i64 1
  %1832 = load i8, ptr %1831, align 1, !tbaa !44
  %1833 = zext i8 %1832 to i32
  %1834 = add nuw nsw i32 %1780, %1833
  %1835 = zext nneg i32 %1834 to i64
  %1836 = icmp samesign ult i64 %1824, %1835
  br i1 %1836, label %1806, label %1837

1837:                                             ; preds = %1820
  %1838 = trunc nuw nsw i64 %1824 to i32
  br label %1839

1839:                                             ; preds = %1837, %1785
  %1840 = phi ptr [ %1796, %1785 ], [ %1830, %1837 ]
  %1841 = phi ptr [ %1775, %1785 ], [ %1822, %1837 ]
  %1842 = phi i32 [ %1776, %1785 ], [ %1823, %1837 ]
  %1843 = phi i64 [ %1777, %1785 ], [ %1821, %1837 ]
  %1844 = phi i32 [ %1778, %1785 ], [ %1838, %1837 ]
  %1845 = phi i8 [ %1798, %1785 ], [ %1832, %1837 ]
  %1846 = load i32, ptr %71, align 4, !tbaa !37
  %1847 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1846, i32 %1780), !nosanitize !47
  %1848 = extractvalue { i32, i1 } %1847, 1, !nosanitize !47
  br i1 %1848, label %1819, label %1849, !prof !48, !nosanitize !47

1849:                                             ; preds = %1839
  %1850 = getelementptr inbounds nuw i8, ptr %1840, i64 2
  %1851 = load i16, ptr %1850, align 2, !tbaa !77
  %1852 = load i8, ptr %1840, align 2, !tbaa !44
  %1853 = sub nuw i32 %1844, %1780
  %1854 = zext nneg i8 %1779 to i64
  %1855 = lshr i64 %1843, %1854
  %1856 = extractvalue { i32, i1 } %1847, 0, !nosanitize !47
  store i32 %1856, ptr %71, align 4, !tbaa !37
  br label %1857

1857:                                             ; preds = %1849, %1773
  %1858 = phi ptr [ %1841, %1849 ], [ %1775, %1773 ]
  %1859 = phi i32 [ %1842, %1849 ], [ %1776, %1773 ]
  %1860 = phi i64 [ %1855, %1849 ], [ %1777, %1773 ]
  %1861 = phi i32 [ %1853, %1849 ], [ %1778, %1773 ]
  %1862 = phi i16 [ %1851, %1849 ], [ %1782, %1773 ]
  %1863 = phi i8 [ %1845, %1849 ], [ %1779, %1773 ]
  %1864 = phi i8 [ %1852, %1849 ], [ %1783, %1773 ]
  %1865 = zext i8 %1863 to i32
  %1866 = zext nneg i8 %1863 to i64
  %1867 = lshr i64 %1860, %1866
  %1868 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1861, i32 %1865), !nosanitize !47
  %1869 = extractvalue { i32, i1 } %1868, 0, !nosanitize !47
  %1870 = extractvalue { i32, i1 } %1868, 1, !nosanitize !47
  br i1 %1870, label %1871, label %1872, !prof !48, !nosanitize !47

1871:                                             ; preds = %1857
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1872:                                             ; preds = %1857
  %1873 = load i32, ptr %71, align 4, !tbaa !37
  %1874 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1873, i32 %1865), !nosanitize !47
  %1875 = extractvalue { i32, i1 } %1874, 1, !nosanitize !47
  br i1 %1875, label %1819, label %1876, !prof !48, !nosanitize !47

1876:                                             ; preds = %1872
  %1877 = extractvalue { i32, i1 } %1874, 0, !nosanitize !47
  store i32 %1877, ptr %71, align 4, !tbaa !37
  %1878 = zext i8 %1864 to i32
  %1879 = and i32 %1878, 64
  %1880 = icmp eq i32 %1879, 0
  br i1 %1880, label %1882, label %1881

1881:                                             ; preds = %1876
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

1882:                                             ; preds = %1876
  %1883 = zext i16 %1862 to i32
  store i32 %1883, ptr %74, align 8, !tbaa !93
  %1884 = and i32 %1878, 15
  store i32 %1884, ptr %72, align 4, !tbaa !53
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1885

1885:                                             ; preds = %1882, %99
  %1886 = phi i32 [ %1884, %1882 ], [ %100, %99 ]
  %1887 = phi ptr [ %1858, %1882 ], [ %90, %99 ]
  %1888 = phi i32 [ %1859, %1882 ], [ %92, %99 ]
  %1889 = phi i64 [ %1867, %1882 ], [ %94, %99 ]
  %1890 = phi i32 [ %1869, %1882 ], [ %95, %99 ]
  %1891 = phi i32 [ %1727, %1882 ], [ %97, %99 ]
  %1892 = icmp eq i32 %1886, 0
  br i1 %1892, label %1950, label %1893

1893:                                             ; preds = %1885
  %1894 = icmp ult i32 %1890, %1886
  br i1 %1894, label %1895, label %1922

1895:                                             ; preds = %1893
  %1896 = icmp eq i32 %1888, 0
  br i1 %1896, label %2422, label %1897

1897:                                             ; preds = %1895
  %1898 = zext i32 %1890 to i64
  br label %1901

1899:                                             ; preds = %1918
  %1900 = icmp eq i32 %1906, 0
  br i1 %1900, label %2422, label %1901, !llvm.loop !94

1901:                                             ; preds = %1899, %1897
  %1902 = phi ptr [ %1887, %1897 ], [ %1907, %1899 ]
  %1903 = phi i32 [ %1888, %1897 ], [ %1906, %1899 ]
  %1904 = phi i64 [ %1889, %1897 ], [ %1912, %1899 ]
  %1905 = phi i64 [ %1898, %1897 ], [ %1919, %1899 ]
  %1906 = add i32 %1903, -1
  %1907 = getelementptr inbounds nuw i8, ptr %1902, i64 1
  %1908 = load i8, ptr %1902, align 1, !tbaa !44
  %1909 = zext i8 %1908 to i64
  %1910 = shl i64 %1909, %1905
  %1911 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1904, i64 %1910), !nosanitize !47
  %1912 = extractvalue { i64, i1 } %1911, 0, !nosanitize !47
  %1913 = extractvalue { i64, i1 } %1911, 1, !nosanitize !47
  br i1 %1913, label %1914, label %1915, !prof !48, !nosanitize !47

1914:                                             ; preds = %1901
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1915:                                             ; preds = %1901
  %1916 = icmp samesign ugt i64 %1905, 4294967287
  br i1 %1916, label %1917, label %1918, !prof !48, !nosanitize !47

1917:                                             ; preds = %1915
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1918:                                             ; preds = %1915
  %1919 = add nuw nsw i64 %1905, 8
  %1920 = trunc nuw i64 %1919 to i32
  %1921 = icmp ugt i32 %1886, %1920
  br i1 %1921, label %1899, label %1922, !llvm.loop !94

1922:                                             ; preds = %1918, %1893
  %1923 = phi ptr [ %1887, %1893 ], [ %1907, %1918 ]
  %1924 = phi i32 [ %1888, %1893 ], [ %1906, %1918 ]
  %1925 = phi i64 [ %1889, %1893 ], [ %1912, %1918 ]
  %1926 = phi i32 [ %1890, %1893 ], [ %1920, %1918 ]
  %1927 = shl nsw i32 -1, %1886
  %1928 = xor i32 %1927, -1
  %1929 = trunc i64 %1925 to i32
  %1930 = and i32 %1929, %1928
  %1931 = load i32, ptr %74, align 8, !tbaa !93
  %1932 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1931, i32 %1930), !nosanitize !47
  %1933 = extractvalue { i32, i1 } %1932, 1, !nosanitize !47
  br i1 %1933, label %1934, label %1935, !prof !48, !nosanitize !47

1934:                                             ; preds = %1922
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1935:                                             ; preds = %1922
  %1936 = extractvalue { i32, i1 } %1932, 0, !nosanitize !47
  store i32 %1936, ptr %74, align 8, !tbaa !93
  %1937 = zext nneg i32 %1886 to i64
  %1938 = lshr i64 %1925, %1937
  %1939 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1926, i32 %1886), !nosanitize !47
  %1940 = extractvalue { i32, i1 } %1939, 0, !nosanitize !47
  %1941 = extractvalue { i32, i1 } %1939, 1, !nosanitize !47
  br i1 %1941, label %1942, label %1943, !prof !48, !nosanitize !47

1942:                                             ; preds = %1935
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1943:                                             ; preds = %1935
  %1944 = load i32, ptr %71, align 4, !tbaa !37
  %1945 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1944, i32 %1886), !nosanitize !47
  %1946 = extractvalue { i32, i1 } %1945, 1, !nosanitize !47
  br i1 %1946, label %1947, label %1948, !prof !48, !nosanitize !47

1947:                                             ; preds = %1943
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1948:                                             ; preds = %1943
  %1949 = extractvalue { i32, i1 } %1945, 0, !nosanitize !47
  store i32 %1949, ptr %71, align 4, !tbaa !37
  br label %1950

1950:                                             ; preds = %1948, %1885
  %1951 = phi ptr [ %1923, %1948 ], [ %1887, %1885 ]
  %1952 = phi i32 [ %1924, %1948 ], [ %1888, %1885 ]
  %1953 = phi i64 [ %1938, %1948 ], [ %1889, %1885 ]
  %1954 = phi i32 [ %1940, %1948 ], [ %1890, %1885 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1955

1955:                                             ; preds = %1950, %88
  %1956 = phi ptr [ %1951, %1950 ], [ %90, %88 ]
  %1957 = phi i32 [ %1952, %1950 ], [ %92, %88 ]
  %1958 = phi i64 [ %1953, %1950 ], [ %94, %88 ]
  %1959 = phi i32 [ %1954, %1950 ], [ %95, %88 ]
  %1960 = phi i32 [ %1891, %1950 ], [ %97, %88 ]
  %1961 = icmp eq i32 %93, 0
  br i1 %1961, label %2492, label %1962

1962:                                             ; preds = %1955
  %1963 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %1964 = extractvalue { i32, i1 } %1963, 0, !nosanitize !47
  %1965 = extractvalue { i32, i1 } %1963, 1, !nosanitize !47
  br i1 %1965, label %1966, label %1967, !prof !48, !nosanitize !47

1966:                                             ; preds = %1962
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1967:                                             ; preds = %1962
  %1968 = load i32, ptr %74, align 8, !tbaa !93
  %1969 = icmp ugt i32 %1968, %1964
  br i1 %1969, label %1970, label %1999

1970:                                             ; preds = %1967
  %1971 = sub nuw i32 %1968, %1964
  %1972 = load i32, ptr %75, align 8, !tbaa !39
  %1973 = icmp ugt i32 %1971, %1972
  br i1 %1973, label %1974, label %1978

1974:                                             ; preds = %1970
  %1975 = load i32, ptr %76, align 8, !tbaa !36
  %1976 = icmp eq i32 %1975, 0
  br i1 %1976, label %1978, label %1977

1977:                                             ; preds = %1974
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

1978:                                             ; preds = %1974, %1970
  %1979 = load i32, ptr %77, align 4, !tbaa !40
  %1980 = icmp ugt i32 %1971, %1979
  br i1 %1980, label %1981, label %1989

1981:                                             ; preds = %1978
  %1982 = sub nuw i32 %1971, %1979
  %1983 = load i32, ptr %79, align 4, !tbaa !38
  %1984 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1983, i32 %1982), !nosanitize !47
  %1985 = extractvalue { i32, i1 } %1984, 1, !nosanitize !47
  br i1 %1985, label %1986, label %1987, !prof !48, !nosanitize !47

1986:                                             ; preds = %1981
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1987:                                             ; preds = %1981
  %1988 = extractvalue { i32, i1 } %1984, 0, !nosanitize !47
  br label %1991

1989:                                             ; preds = %1978
  %1990 = sub nuw i32 %1979, %1971
  br label %1991

1991:                                             ; preds = %1989, %1987
  %1992 = phi i32 [ %1990, %1989 ], [ %1988, %1987 ]
  %1993 = phi i32 [ %1971, %1989 ], [ %1982, %1987 ]
  %1994 = load ptr, ptr %78, align 8, !tbaa !41
  %1995 = zext i32 %1992 to i64
  %1996 = getelementptr inbounds nuw i8, ptr %1994, i64 %1995
  %1997 = load i32, ptr %56, align 4, !tbaa !61
  %1998 = call i32 @llvm.umin.i32(i32 %1993, i32 %1997)
  br label %2004

1999:                                             ; preds = %1967
  %2000 = zext i32 %1968 to i64
  %2001 = sub nsw i64 0, %2000
  %2002 = getelementptr inbounds i8, ptr %91, i64 %2001
  %2003 = load i32, ptr %56, align 4, !tbaa !61
  br label %2004

2004:                                             ; preds = %1999, %1991
  %2005 = phi i32 [ %2003, %1999 ], [ %1997, %1991 ]
  %2006 = phi i32 [ %2003, %1999 ], [ %1998, %1991 ]
  %2007 = phi ptr [ %2002, %1999 ], [ %1996, %1991 ]
  %2008 = ptrtoaddr ptr %2007 to i64
  %2009 = call i32 @llvm.umin.i32(i32 %2006, i32 %93)
  %2010 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %2009), !nosanitize !47
  %2011 = extractvalue { i32, i1 } %2010, 0, !nosanitize !47
  %2012 = extractvalue { i32, i1 } %2010, 1, !nosanitize !47
  br i1 %2012, label %2013, label %2014, !prof !48, !nosanitize !47

2013:                                             ; preds = %2004
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2014:                                             ; preds = %2004
  %2015 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2005, i32 %2009), !nosanitize !47
  %2016 = extractvalue { i32, i1 } %2015, 1, !nosanitize !47
  br i1 %2016, label %2017, label %2018, !prof !48, !nosanitize !47

2017:                                             ; preds = %2014
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2018:                                             ; preds = %2014
  %2019 = extractvalue { i32, i1 } %2015, 0, !nosanitize !47
  store i32 %2019, ptr %56, align 4, !tbaa !61
  %2020 = icmp eq i32 %2009, 0
  br i1 %2020, label %2091, label %2021, !prof !48, !nosanitize !47

2021:                                             ; preds = %2018
  %2022 = call i32 @llvm.umin.i32(i32 %2006, i32 %93)
  %2023 = zext i32 %2022 to i64
  %2024 = icmp ult i32 %2022, 4
  %2025 = sub i64 %98, %2008
  %2026 = icmp ult i64 %2025, 32
  %2027 = select i1 %2024, i1 true, i1 %2026
  br i1 %2027, label %2067, label %2028

2028:                                             ; preds = %2021
  %2029 = icmp ult i32 %2022, 32
  br i1 %2029, label %2051, label %2030

2030:                                             ; preds = %2028
  %2031 = and i64 %2023, 28
  %2032 = and i64 %2023, 4294967264
  %2033 = getelementptr i8, ptr %91, i64 %2032
  %2034 = trunc nuw i64 %2032 to i32
  %2035 = sub i32 %2009, %2034
  %2036 = getelementptr i8, ptr %2007, i64 %2032
  br label %2037

2037:                                             ; preds = %2037, %2030
  %2038 = phi i64 [ 0, %2030 ], [ %2045, %2037 ]
  %2039 = getelementptr i8, ptr %91, i64 %2038
  %2040 = getelementptr i8, ptr %2007, i64 %2038
  %2041 = getelementptr i8, ptr %2040, i64 16
  %2042 = load <16 x i8>, ptr %2040, align 1, !tbaa !44
  %2043 = load <16 x i8>, ptr %2041, align 1, !tbaa !44
  %2044 = getelementptr i8, ptr %2039, i64 16
  store <16 x i8> %2042, ptr %2039, align 1, !tbaa !44
  store <16 x i8> %2043, ptr %2044, align 1, !tbaa !44
  %2045 = add nuw i64 %2038, 32
  %2046 = icmp eq i64 %2045, %2032
  br i1 %2046, label %2047, label %2037, !llvm.loop !95

2047:                                             ; preds = %2037
  %2048 = icmp eq i64 %2032, %2023
  br i1 %2048, label %2123, label %2049

2049:                                             ; preds = %2047
  %2050 = icmp eq i64 %2031, 0
  br i1 %2050, label %2067, label %2051, !prof !98

2051:                                             ; preds = %2049, %2028
  %2052 = phi i64 [ %2032, %2049 ], [ 0, %2028 ]
  %2053 = and i64 %2023, 4294967292
  %2054 = getelementptr i8, ptr %91, i64 %2053
  %2055 = trunc nuw i64 %2053 to i32
  %2056 = sub i32 %2009, %2055
  %2057 = getelementptr i8, ptr %2007, i64 %2053
  br label %2058

2058:                                             ; preds = %2058, %2051
  %2059 = phi i64 [ %2052, %2051 ], [ %2063, %2058 ]
  %2060 = getelementptr i8, ptr %91, i64 %2059
  %2061 = getelementptr i8, ptr %2007, i64 %2059
  %2062 = load <4 x i8>, ptr %2061, align 1, !tbaa !44
  store <4 x i8> %2062, ptr %2060, align 1, !tbaa !44
  %2063 = add nuw i64 %2059, 4
  %2064 = icmp eq i64 %2063, %2053
  br i1 %2064, label %2065, label %2058, !llvm.loop !99

2065:                                             ; preds = %2058
  %2066 = icmp eq i64 %2053, %2023
  br i1 %2066, label %2123, label %2067

2067:                                             ; preds = %2065, %2049, %2021
  %2068 = phi ptr [ %91, %2021 ], [ %2033, %2049 ], [ %2054, %2065 ]
  %2069 = phi i32 [ %2009, %2021 ], [ %2035, %2049 ], [ %2056, %2065 ]
  %2070 = phi ptr [ %2007, %2021 ], [ %2036, %2049 ], [ %2057, %2065 ]
  %2071 = add i32 %2069, -1
  %2072 = and i32 %2069, 7
  %2073 = icmp eq i32 %2072, 0
  br i1 %2073, label %2085, label %2074

2074:                                             ; preds = %2074, %2067
  %2075 = phi ptr [ %2080, %2074 ], [ %2068, %2067 ]
  %2076 = phi i32 [ %2081, %2074 ], [ %2069, %2067 ]
  %2077 = phi ptr [ %2082, %2074 ], [ %2070, %2067 ]
  %2078 = phi i32 [ %2083, %2074 ], [ 0, %2067 ]
  %2079 = load i8, ptr %2077, align 1, !tbaa !44
  store i8 %2079, ptr %2075, align 1, !tbaa !44
  %2080 = getelementptr inbounds nuw i8, ptr %2075, i64 1
  %2081 = add i32 %2076, -1
  %2082 = getelementptr inbounds nuw i8, ptr %2077, i64 1
  %2083 = add i32 %2078, 1
  %2084 = icmp eq i32 %2083, %2072
  br i1 %2084, label %2085, label %2074, !llvm.loop !100

2085:                                             ; preds = %2074, %2067
  %2086 = phi ptr [ poison, %2067 ], [ %2080, %2074 ]
  %2087 = phi ptr [ %2068, %2067 ], [ %2080, %2074 ]
  %2088 = phi i32 [ %2069, %2067 ], [ %2081, %2074 ]
  %2089 = phi ptr [ %2070, %2067 ], [ %2082, %2074 ]
  %2090 = icmp ult i32 %2071, 7
  br i1 %2090, label %2123, label %2093

2091:                                             ; preds = %2018
  %2092 = load i8, ptr %2007, align 1, !tbaa !44
  store i8 %2092, ptr %91, align 1, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2093:                                             ; preds = %2093, %2085
  %2094 = phi ptr [ %2119, %2093 ], [ %2087, %2085 ]
  %2095 = phi i32 [ %2120, %2093 ], [ %2088, %2085 ]
  %2096 = phi ptr [ %2121, %2093 ], [ %2089, %2085 ]
  %2097 = load i8, ptr %2096, align 1, !tbaa !44
  store i8 %2097, ptr %2094, align 1, !tbaa !44
  %2098 = getelementptr inbounds nuw i8, ptr %2094, i64 1
  %2099 = getelementptr inbounds nuw i8, ptr %2096, i64 1
  %2100 = load i8, ptr %2099, align 1, !tbaa !44
  store i8 %2100, ptr %2098, align 1, !tbaa !44
  %2101 = getelementptr inbounds nuw i8, ptr %2094, i64 2
  %2102 = getelementptr inbounds nuw i8, ptr %2096, i64 2
  %2103 = load i8, ptr %2102, align 1, !tbaa !44
  store i8 %2103, ptr %2101, align 1, !tbaa !44
  %2104 = getelementptr inbounds nuw i8, ptr %2094, i64 3
  %2105 = getelementptr inbounds nuw i8, ptr %2096, i64 3
  %2106 = load i8, ptr %2105, align 1, !tbaa !44
  store i8 %2106, ptr %2104, align 1, !tbaa !44
  %2107 = getelementptr inbounds nuw i8, ptr %2094, i64 4
  %2108 = getelementptr inbounds nuw i8, ptr %2096, i64 4
  %2109 = load i8, ptr %2108, align 1, !tbaa !44
  store i8 %2109, ptr %2107, align 1, !tbaa !44
  %2110 = getelementptr inbounds nuw i8, ptr %2094, i64 5
  %2111 = getelementptr inbounds nuw i8, ptr %2096, i64 5
  %2112 = load i8, ptr %2111, align 1, !tbaa !44
  store i8 %2112, ptr %2110, align 1, !tbaa !44
  %2113 = getelementptr inbounds nuw i8, ptr %2094, i64 6
  %2114 = getelementptr inbounds nuw i8, ptr %2096, i64 6
  %2115 = load i8, ptr %2114, align 1, !tbaa !44
  store i8 %2115, ptr %2113, align 1, !tbaa !44
  %2116 = getelementptr inbounds nuw i8, ptr %2094, i64 7
  %2117 = getelementptr inbounds nuw i8, ptr %2096, i64 7
  %2118 = load i8, ptr %2117, align 1, !tbaa !44
  store i8 %2118, ptr %2116, align 1, !tbaa !44
  %2119 = getelementptr inbounds nuw i8, ptr %2094, i64 8
  %2120 = add i32 %2095, -8
  %2121 = getelementptr inbounds nuw i8, ptr %2096, i64 8
  %2122 = icmp eq i32 %2120, 0
  br i1 %2122, label %2123, label %2093, !llvm.loop !102

2123:                                             ; preds = %2093, %2085, %2065, %2047
  %2124 = phi ptr [ %2054, %2065 ], [ %2033, %2047 ], [ %2086, %2085 ], [ %2119, %2093 ]
  %2125 = load i32, ptr %56, align 4, !tbaa !61
  %2126 = icmp eq i32 %2125, 0
  br i1 %2126, label %2127, label %2358

2127:                                             ; preds = %2123
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2358

2128:                                             ; preds = %88
  %2129 = icmp eq i32 %93, 0
  br i1 %2129, label %2492, label %2130

2130:                                             ; preds = %2128
  %2131 = load i32, ptr %56, align 4, !tbaa !61
  %2132 = trunc i32 %2131 to i8
  store i8 %2132, ptr %91, align 1, !tbaa !44
  %2133 = add i32 %93, -1
  %2134 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2358

2135:                                             ; preds = %88
  %2136 = load i32, ptr %49, align 8, !tbaa !24
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %2258, label %2138

2138:                                             ; preds = %2135
  %2139 = icmp ult i32 %95, 32
  br i1 %2139, label %2140, label %2203

2140:                                             ; preds = %2138
  %2141 = zext nneg i32 %95 to i64
  %2142 = icmp eq i32 %92, 0
  br i1 %2142, label %2485, label %2143

2143:                                             ; preds = %2140
  %2144 = load i8, ptr %90, align 1, !tbaa !44
  %2145 = zext i8 %2144 to i64
  %2146 = shl nuw nsw i64 %2145, %2141
  %2147 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %2146), !nosanitize !47
  %2148 = extractvalue { i64, i1 } %2147, 1, !nosanitize !47
  br i1 %2148, label %2149, label %2150, !prof !48, !nosanitize !47

2149:                                             ; preds = %2186, %2172, %2158, %2143
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2150:                                             ; preds = %2143
  %2151 = extractvalue { i64, i1 } %2147, 0, !nosanitize !47
  %2152 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %2153 = add i32 %92, -1
  %2154 = add nuw nsw i64 %2141, 8
  %2155 = icmp ult i32 %95, 24
  br i1 %2155, label %2156, label %2197

2156:                                             ; preds = %2150
  %2157 = icmp eq i32 %2153, 0
  br i1 %2157, label %2485, label %2158

2158:                                             ; preds = %2156
  %2159 = load i8, ptr %2152, align 1, !tbaa !44
  %2160 = zext i8 %2159 to i64
  %2161 = shl nuw nsw i64 %2160, %2154
  %2162 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2151, i64 %2161), !nosanitize !47
  %2163 = extractvalue { i64, i1 } %2162, 1, !nosanitize !47
  br i1 %2163, label %2149, label %2164, !prof !48, !nosanitize !47

2164:                                             ; preds = %2158
  %2165 = extractvalue { i64, i1 } %2162, 0, !nosanitize !47
  %2166 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %2167 = add i32 %92, -2
  %2168 = add nuw nsw i64 %2141, 16
  %2169 = icmp ult i32 %95, 16
  br i1 %2169, label %2170, label %2197

2170:                                             ; preds = %2164
  %2171 = icmp eq i32 %2167, 0
  br i1 %2171, label %2485, label %2172

2172:                                             ; preds = %2170
  %2173 = load i8, ptr %2166, align 1, !tbaa !44
  %2174 = zext i8 %2173 to i64
  %2175 = shl nuw nsw i64 %2174, %2168
  %2176 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2165, i64 %2175), !nosanitize !47
  %2177 = extractvalue { i64, i1 } %2176, 1, !nosanitize !47
  br i1 %2177, label %2149, label %2178, !prof !48, !nosanitize !47

2178:                                             ; preds = %2172
  %2179 = extractvalue { i64, i1 } %2176, 0, !nosanitize !47
  %2180 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %2181 = add i32 %92, -3
  %2182 = add nuw nsw i64 %2141, 24
  %2183 = icmp ult i32 %95, 8
  br i1 %2183, label %2184, label %2197

2184:                                             ; preds = %2178
  %2185 = icmp eq i32 %2181, 0
  br i1 %2185, label %2485, label %2186

2186:                                             ; preds = %2184
  %2187 = load i8, ptr %2180, align 1, !tbaa !44
  %2188 = zext i8 %2187 to i64
  %2189 = shl nuw nsw i64 %2188, %2182
  %2190 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2179, i64 %2189), !nosanitize !47
  %2191 = extractvalue { i64, i1 } %2190, 1, !nosanitize !47
  br i1 %2191, label %2149, label %2192, !prof !48, !nosanitize !47

2192:                                             ; preds = %2186
  %2193 = extractvalue { i64, i1 } %2190, 0, !nosanitize !47
  %2194 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %2195 = add i32 %92, -4
  %2196 = or disjoint i64 %2141, 32
  br label %2197

2197:                                             ; preds = %2192, %2178, %2164, %2150
  %2198 = phi i64 [ %2151, %2150 ], [ %2165, %2164 ], [ %2179, %2178 ], [ %2193, %2192 ]
  %2199 = phi ptr [ %2152, %2150 ], [ %2166, %2164 ], [ %2180, %2178 ], [ %2194, %2192 ]
  %2200 = phi i32 [ %2153, %2150 ], [ %2167, %2164 ], [ %2181, %2178 ], [ %2195, %2192 ]
  %2201 = phi i64 [ %2154, %2150 ], [ %2168, %2164 ], [ %2182, %2178 ], [ %2196, %2192 ]
  %2202 = trunc nuw nsw i64 %2201 to i32
  br label %2203

2203:                                             ; preds = %2197, %2138
  %2204 = phi ptr [ %90, %2138 ], [ %2199, %2197 ]
  %2205 = phi i32 [ %92, %2138 ], [ %2200, %2197 ]
  %2206 = phi i64 [ %94, %2138 ], [ %2198, %2197 ]
  %2207 = phi i32 [ %95, %2138 ], [ %2202, %2197 ]
  %2208 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %2209 = extractvalue { i32, i1 } %2208, 0, !nosanitize !47
  %2210 = extractvalue { i32, i1 } %2208, 1, !nosanitize !47
  br i1 %2210, label %2211, label %2212, !prof !48, !nosanitize !47

2211:                                             ; preds = %2203
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2212:                                             ; preds = %2203
  %2213 = zext i32 %2209 to i64
  %2214 = load i64, ptr %50, align 8, !tbaa !103
  %2215 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2214, i64 %2213), !nosanitize !47
  %2216 = extractvalue { i64, i1 } %2215, 1, !nosanitize !47
  br i1 %2216, label %2217, label %2218, !prof !48, !nosanitize !47

2217:                                             ; preds = %2212
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2218:                                             ; preds = %2212
  %2219 = extractvalue { i64, i1 } %2215, 0, !nosanitize !47
  store i64 %2219, ptr %50, align 8, !tbaa !103
  %2220 = load i64, ptr %51, align 8, !tbaa !21
  %2221 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2220, i64 %2213), !nosanitize !47
  %2222 = extractvalue { i64, i1 } %2221, 1, !nosanitize !47
  br i1 %2222, label %2223, label %2224, !prof !48, !nosanitize !47

2223:                                             ; preds = %2218
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2224:                                             ; preds = %2218
  %2225 = extractvalue { i64, i1 } %2221, 0, !nosanitize !47
  store i64 %2225, ptr %51, align 8, !tbaa !21
  %2226 = and i32 %2136, 4
  %2227 = icmp ne i32 %2226, 0
  %2228 = icmp ne i32 %2209, 0
  %2229 = select i1 %2227, i1 %2228, i1 false
  br i1 %2229, label %2230, label %2244

2230:                                             ; preds = %2224
  %2231 = load i32, ptr %52, align 8, !tbaa !28
  %2232 = icmp eq i32 %2231, 0
  %2233 = load i64, ptr %53, align 8, !tbaa !54
  %2234 = sub nsw i64 0, %2213
  %2235 = getelementptr inbounds i8, ptr %91, i64 %2234
  br i1 %2232, label %2238, label %2236

2236:                                             ; preds = %2230
  %2237 = call i64 @crc32(i64 noundef %2233, ptr noundef nonnull %2235, i32 noundef %2209) #12
  br label %2240

2238:                                             ; preds = %2230
  %2239 = call i64 @adler32(i64 noundef %2233, ptr noundef nonnull %2235, i32 noundef %2209) #12
  br label %2240

2240:                                             ; preds = %2238, %2236
  %2241 = phi i64 [ %2237, %2236 ], [ %2239, %2238 ]
  store i64 %2241, ptr %53, align 8, !tbaa !54
  store i64 %2241, ptr %54, align 8, !tbaa !25
  %2242 = load i32, ptr %49, align 8, !tbaa !24
  %2243 = and i32 %2242, 4
  br label %2244

2244:                                             ; preds = %2240, %2224
  %2245 = phi i32 [ %2243, %2240 ], [ %2226, %2224 ]
  %2246 = phi i32 [ %2242, %2240 ], [ %2136, %2224 ]
  %2247 = icmp eq i32 %2245, 0
  br i1 %2247, label %2258, label %2248

2248:                                             ; preds = %2244
  %2249 = load i32, ptr %52, align 8, !tbaa !28
  %2250 = icmp eq i32 %2249, 0
  %2251 = trunc i64 %2206 to i32
  %2252 = call i32 @llvm.bswap.i32(i32 %2251)
  %2253 = zext i32 %2252 to i64
  %2254 = select i1 %2250, i64 %2253, i64 %2206
  %2255 = load i64, ptr %53, align 8, !tbaa !54
  %2256 = icmp eq i64 %2254, %2255
  br i1 %2256, label %2258, label %2257

2257:                                             ; preds = %2248
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

2258:                                             ; preds = %2248, %2244, %2135
  %2259 = phi i32 [ 0, %2135 ], [ %2246, %2244 ], [ %2246, %2248 ]
  %2260 = phi ptr [ %90, %2135 ], [ %2204, %2244 ], [ %2204, %2248 ]
  %2261 = phi i32 [ %92, %2135 ], [ %2205, %2244 ], [ %2205, %2248 ]
  %2262 = phi i64 [ %94, %2135 ], [ 0, %2244 ], [ 0, %2248 ]
  %2263 = phi i32 [ %95, %2135 ], [ 0, %2244 ], [ 0, %2248 ]
  %2264 = phi i32 [ %96, %2135 ], [ %93, %2244 ], [ %93, %2248 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2265

2265:                                             ; preds = %2258, %103
  %2266 = phi i32 [ %2259, %2258 ], [ %104, %103 ]
  %2267 = phi ptr [ %2260, %2258 ], [ %90, %103 ]
  %2268 = phi i32 [ %2261, %2258 ], [ %92, %103 ]
  %2269 = phi i64 [ %2262, %2258 ], [ %94, %103 ]
  %2270 = phi i32 [ %2263, %2258 ], [ %95, %103 ]
  %2271 = phi i32 [ %2264, %2258 ], [ %96, %103 ]
  %2272 = icmp eq i32 %2266, 0
  br i1 %2272, label %2353, label %2273

2273:                                             ; preds = %2265
  %2274 = load i32, ptr %52, align 8, !tbaa !28
  %2275 = icmp eq i32 %2274, 0
  br i1 %2275, label %2353, label %2276

2276:                                             ; preds = %2273
  %2277 = icmp ult i32 %2270, 32
  br i1 %2277, label %2278, label %2341

2278:                                             ; preds = %2276
  %2279 = zext nneg i32 %2270 to i64
  %2280 = icmp eq i32 %2268, 0
  br i1 %2280, label %2479, label %2281

2281:                                             ; preds = %2278
  %2282 = load i8, ptr %2267, align 1, !tbaa !44
  %2283 = zext i8 %2282 to i64
  %2284 = shl nuw nsw i64 %2283, %2279
  %2285 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2269, i64 %2284), !nosanitize !47
  %2286 = extractvalue { i64, i1 } %2285, 1, !nosanitize !47
  br i1 %2286, label %2287, label %2288, !prof !48, !nosanitize !47

2287:                                             ; preds = %2324, %2310, %2296, %2281
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2288:                                             ; preds = %2281
  %2289 = extractvalue { i64, i1 } %2285, 0, !nosanitize !47
  %2290 = getelementptr inbounds nuw i8, ptr %2267, i64 1
  %2291 = add i32 %2268, -1
  %2292 = add nuw nsw i64 %2279, 8
  %2293 = icmp ult i32 %2270, 24
  br i1 %2293, label %2294, label %2335

2294:                                             ; preds = %2288
  %2295 = icmp eq i32 %2291, 0
  br i1 %2295, label %2479, label %2296

2296:                                             ; preds = %2294
  %2297 = load i8, ptr %2290, align 1, !tbaa !44
  %2298 = zext i8 %2297 to i64
  %2299 = shl nuw nsw i64 %2298, %2292
  %2300 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2289, i64 %2299), !nosanitize !47
  %2301 = extractvalue { i64, i1 } %2300, 1, !nosanitize !47
  br i1 %2301, label %2287, label %2302, !prof !48, !nosanitize !47

2302:                                             ; preds = %2296
  %2303 = extractvalue { i64, i1 } %2300, 0, !nosanitize !47
  %2304 = getelementptr inbounds nuw i8, ptr %2267, i64 2
  %2305 = add i32 %2268, -2
  %2306 = add nuw nsw i64 %2279, 16
  %2307 = icmp ult i32 %2270, 16
  br i1 %2307, label %2308, label %2335

2308:                                             ; preds = %2302
  %2309 = icmp eq i32 %2305, 0
  br i1 %2309, label %2479, label %2310

2310:                                             ; preds = %2308
  %2311 = load i8, ptr %2304, align 1, !tbaa !44
  %2312 = zext i8 %2311 to i64
  %2313 = shl nuw nsw i64 %2312, %2306
  %2314 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2303, i64 %2313), !nosanitize !47
  %2315 = extractvalue { i64, i1 } %2314, 1, !nosanitize !47
  br i1 %2315, label %2287, label %2316, !prof !48, !nosanitize !47

2316:                                             ; preds = %2310
  %2317 = extractvalue { i64, i1 } %2314, 0, !nosanitize !47
  %2318 = getelementptr inbounds nuw i8, ptr %2267, i64 3
  %2319 = add i32 %2268, -3
  %2320 = add nuw nsw i64 %2279, 24
  %2321 = icmp ult i32 %2270, 8
  br i1 %2321, label %2322, label %2335

2322:                                             ; preds = %2316
  %2323 = icmp eq i32 %2319, 0
  br i1 %2323, label %2479, label %2324

2324:                                             ; preds = %2322
  %2325 = load i8, ptr %2318, align 1, !tbaa !44
  %2326 = zext i8 %2325 to i64
  %2327 = shl nuw nsw i64 %2326, %2320
  %2328 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2317, i64 %2327), !nosanitize !47
  %2329 = extractvalue { i64, i1 } %2328, 1, !nosanitize !47
  br i1 %2329, label %2287, label %2330, !prof !48, !nosanitize !47

2330:                                             ; preds = %2324
  %2331 = extractvalue { i64, i1 } %2328, 0, !nosanitize !47
  %2332 = getelementptr inbounds nuw i8, ptr %2267, i64 4
  %2333 = add i32 %2268, -4
  %2334 = or disjoint i64 %2279, 32
  br label %2335

2335:                                             ; preds = %2330, %2316, %2302, %2288
  %2336 = phi i64 [ %2289, %2288 ], [ %2303, %2302 ], [ %2317, %2316 ], [ %2331, %2330 ]
  %2337 = phi ptr [ %2290, %2288 ], [ %2304, %2302 ], [ %2318, %2316 ], [ %2332, %2330 ]
  %2338 = phi i32 [ %2291, %2288 ], [ %2305, %2302 ], [ %2319, %2316 ], [ %2333, %2330 ]
  %2339 = phi i64 [ %2292, %2288 ], [ %2306, %2302 ], [ %2320, %2316 ], [ %2334, %2330 ]
  %2340 = trunc nuw nsw i64 %2339 to i32
  br label %2341

2341:                                             ; preds = %2335, %2276
  %2342 = phi ptr [ %2267, %2276 ], [ %2337, %2335 ]
  %2343 = phi i32 [ %2268, %2276 ], [ %2338, %2335 ]
  %2344 = phi i64 [ %2269, %2276 ], [ %2336, %2335 ]
  %2345 = phi i32 [ %2270, %2276 ], [ %2340, %2335 ]
  %2346 = and i32 %2266, 4
  %2347 = icmp eq i32 %2346, 0
  br i1 %2347, label %2353, label %2348

2348:                                             ; preds = %2341
  %2349 = load i64, ptr %51, align 8, !tbaa !21
  %2350 = and i64 %2349, 4294967295
  %2351 = icmp eq i64 %2344, %2350
  br i1 %2351, label %2353, label %2352

2352:                                             ; preds = %2348
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2358

2353:                                             ; preds = %2348, %2341, %2273, %2265
  %2354 = phi ptr [ %2267, %2265 ], [ %2267, %2273 ], [ %2342, %2341 ], [ %2342, %2348 ]
  %2355 = phi i32 [ %2268, %2265 ], [ %2268, %2273 ], [ %2343, %2341 ], [ %2343, %2348 ]
  %2356 = phi i64 [ %2269, %2265 ], [ %2269, %2273 ], [ 0, %2341 ], [ 0, %2348 ]
  %2357 = phi i32 [ %2270, %2265 ], [ %2270, %2273 ], [ 0, %2341 ], [ 0, %2348 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %2492

2358:                                             ; preds = %2352, %2257, %2130, %2127, %2123, %1977, %1881, %1648, %1644, %1640, %1493, %1484, %1467, %1458, %1454, %1418, %1297, %1152, %1077, %1025, %1022, %985, %903, %867, %778, %765, %262, %258, %212, %211, %196, %192, %174, %128
  %2359 = phi ptr [ %90, %128 ], [ %162, %174 ], [ %162, %192 ], [ %162, %196 ], [ %162, %211 ], [ %162, %212 ], [ %251, %258 ], [ %251, %262 ], [ %754, %765 ], [ %767, %778 ], [ %856, %867 ], [ %886, %903 ], [ %977, %985 ], [ %1012, %1022 ], [ %995, %1025 ], [ %1059, %1077 ], [ %1093, %1152 ], [ %1289, %1297 ], [ %1451, %1454 ], [ %1451, %1458 ], [ %1451, %1467 ], [ %1487, %1493 ], [ %1487, %1484 ], [ %1621, %1640 ], [ %1621, %1644 ], [ %1621, %1648 ], [ %1858, %1881 ], [ %1956, %1977 ], [ %1956, %2127 ], [ %1956, %2123 ], [ %90, %2130 ], [ %2204, %2257 ], [ %2342, %2352 ], [ %1386, %1418 ]
  %2360 = phi ptr [ %91, %128 ], [ %91, %174 ], [ %91, %192 ], [ %91, %196 ], [ %91, %211 ], [ %91, %212 ], [ %91, %258 ], [ %91, %262 ], [ %91, %765 ], [ %91, %778 ], [ %91, %867 ], [ %91, %903 ], [ %91, %985 ], [ %1024, %1022 ], [ %91, %1025 ], [ %91, %1077 ], [ %91, %1152 ], [ %91, %1297 ], [ %91, %1454 ], [ %91, %1458 ], [ %91, %1467 ], [ %1485, %1493 ], [ %1485, %1484 ], [ %91, %1640 ], [ %91, %1644 ], [ %91, %1648 ], [ %91, %1881 ], [ %91, %1977 ], [ %2124, %2127 ], [ %2124, %2123 ], [ %2134, %2130 ], [ %91, %2257 ], [ %91, %2352 ], [ %91, %1418 ]
  %2361 = phi i32 [ %92, %128 ], [ %163, %174 ], [ %163, %192 ], [ %163, %196 ], [ %163, %211 ], [ %163, %212 ], [ %252, %258 ], [ %252, %262 ], [ %755, %765 ], [ %768, %778 ], [ %857, %867 ], [ %887, %903 ], [ %978, %985 ], [ %1008, %1022 ], [ %996, %1025 ], [ %1060, %1077 ], [ %1094, %1152 ], [ %1290, %1297 ], [ %1450, %1454 ], [ %1450, %1458 ], [ %1450, %1467 ], [ %1488, %1493 ], [ %1488, %1484 ], [ %1622, %1640 ], [ %1622, %1644 ], [ %1622, %1648 ], [ %1859, %1881 ], [ %1957, %1977 ], [ %1957, %2127 ], [ %1957, %2123 ], [ %92, %2130 ], [ %2205, %2257 ], [ %2343, %2352 ], [ %1387, %1418 ]
  %2362 = phi i32 [ %93, %128 ], [ %93, %174 ], [ %93, %192 ], [ %93, %196 ], [ %93, %211 ], [ %93, %212 ], [ %93, %258 ], [ %93, %262 ], [ %93, %765 ], [ %93, %778 ], [ %93, %867 ], [ %93, %903 ], [ %93, %985 ], [ %1014, %1022 ], [ %93, %1025 ], [ %93, %1077 ], [ %93, %1152 ], [ %93, %1297 ], [ %93, %1454 ], [ %93, %1458 ], [ %93, %1467 ], [ %1486, %1493 ], [ %1486, %1484 ], [ %93, %1640 ], [ %93, %1644 ], [ %93, %1648 ], [ %93, %1881 ], [ %93, %1977 ], [ %2011, %2127 ], [ %2011, %2123 ], [ %2133, %2130 ], [ %93, %2257 ], [ %93, %2352 ], [ %93, %1418 ]
  %2363 = phi i64 [ %94, %128 ], [ 0, %174 ], [ %164, %192 ], [ %164, %196 ], [ %198, %211 ], [ 0, %212 ], [ %253, %258 ], [ %253, %262 ], [ %756, %765 ], [ %769, %778 ], [ %872, %867 ], [ %905, %903 ], [ %979, %985 ], [ %997, %1022 ], [ %997, %1025 ], [ %1072, %1077 ], [ %1095, %1152 ], [ %1294, %1297 ], [ %1449, %1454 ], [ %1449, %1458 ], [ %1449, %1467 ], [ %1489, %1493 ], [ %1489, %1484 ], [ %1630, %1640 ], [ %1630, %1644 ], [ %1630, %1648 ], [ %1867, %1881 ], [ %1958, %1977 ], [ %1958, %2127 ], [ %1958, %2123 ], [ %94, %2130 ], [ %2206, %2257 ], [ %2344, %2352 ], [ %1388, %1418 ]
  %2364 = phi i32 [ %95, %128 ], [ 0, %174 ], [ %165, %192 ], [ %165, %196 ], [ %199, %211 ], [ 0, %212 ], [ %254, %258 ], [ %254, %262 ], [ %757, %765 ], [ %770, %778 ], [ %870, %867 ], [ %904, %903 ], [ %980, %985 ], [ %998, %1022 ], [ %998, %1025 ], [ %1073, %1077 ], [ %1096, %1152 ], [ %1295, %1297 ], [ %1448, %1454 ], [ %1448, %1458 ], [ %1448, %1467 ], [ %1490, %1493 ], [ %1490, %1484 ], [ %1632, %1640 ], [ %1632, %1644 ], [ %1632, %1648 ], [ %1869, %1881 ], [ %1959, %1977 ], [ %1959, %2127 ], [ %1959, %2123 ], [ %95, %2130 ], [ %2207, %2257 ], [ %2345, %2352 ], [ %1392, %1418 ]
  %2365 = phi i32 [ %96, %128 ], [ %96, %174 ], [ %96, %192 ], [ %96, %196 ], [ %96, %211 ], [ %96, %212 ], [ %96, %258 ], [ %96, %262 ], [ %96, %765 ], [ %96, %778 ], [ %96, %867 ], [ %96, %903 ], [ %96, %985 ], [ %96, %1022 ], [ %96, %1025 ], [ %96, %1077 ], [ %96, %1152 ], [ %96, %1297 ], [ %96, %1454 ], [ %96, %1458 ], [ %96, %1467 ], [ %96, %1493 ], [ %96, %1484 ], [ %96, %1640 ], [ %96, %1644 ], [ %96, %1648 ], [ %96, %1881 ], [ %96, %1977 ], [ %96, %2127 ], [ %96, %2123 ], [ %96, %2130 ], [ %93, %2257 ], [ %2271, %2352 ], [ %96, %1418 ]
  %2366 = phi i32 [ %97, %128 ], [ %97, %174 ], [ %97, %192 ], [ %97, %196 ], [ %97, %211 ], [ %97, %212 ], [ %97, %258 ], [ %97, %262 ], [ %97, %765 ], [ %97, %778 ], [ %97, %867 ], [ %97, %903 ], [ %97, %985 ], [ %97, %1022 ], [ %97, %1025 ], [ %97, %1077 ], [ %1150, %1152 ], [ %1159, %1297 ], [ %1159, %1454 ], [ %1456, %1458 ], [ %1465, %1467 ], [ %1480, %1493 ], [ %1480, %1484 ], [ %1480, %1640 ], [ %1480, %1644 ], [ %1480, %1648 ], [ %1727, %1881 ], [ %1960, %1977 ], [ %1960, %2127 ], [ %1960, %2123 ], [ %97, %2130 ], [ %97, %2257 ], [ %97, %2352 ], [ %1159, %1418 ]
  %2367 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

2368:                                             ; preds = %1196, %1192
  %2369 = phi i64 [ %1210, %1196 ], [ %1180, %1192 ]
  %2370 = zext i32 %1179 to i64
  %2371 = shl i32 %1179, 3
  %2372 = add i32 %2371, %1181
  %2373 = getelementptr i8, ptr %1178, i64 %2370
  br label %2492

2374:                                             ; preds = %142, %125
  %2375 = phi i64 [ %94, %125 ], [ %137, %142 ]
  %2376 = zext i32 %92 to i64
  %2377 = shl i32 %92, 3
  %2378 = add i32 %2377, %95
  %2379 = getelementptr i8, ptr %90, i64 %2376
  br label %2492

2380:                                             ; preds = %734, %718
  %2381 = phi i64 [ %711, %718 ], [ %729, %734 ]
  %2382 = zext i32 %710 to i64
  %2383 = shl i32 %710, 3
  %2384 = add i32 %2383, %712
  %2385 = getelementptr i8, ptr %709, i64 %2382
  br label %2492

2386:                                             ; preds = %454, %433
  %2387 = phi i64 [ %436, %433 ], [ %449, %454 ]
  %2388 = zext i32 %435 to i64
  %2389 = shl i32 %435, 3
  %2390 = add i32 %2389, %437
  %2391 = getelementptr i8, ptr %434, i64 %2388
  br label %2492

2392:                                             ; preds = %386, %366
  %2393 = phi i64 [ %368, %366 ], [ %381, %386 ]
  %2394 = zext i32 %369 to i64
  %2395 = shl i32 %369, 3
  %2396 = add i32 %2395, %367
  %2397 = getelementptr i8, ptr %370, i64 %2394
  br label %2492

2398:                                             ; preds = %331, %317, %303, %283
  %2399 = phi i64 [ %285, %283 ], [ %298, %303 ], [ %312, %317 ], [ %326, %331 ]
  %2400 = zext i32 %286 to i64
  %2401 = shl i32 %286, 3
  %2402 = add i32 %2401, %284
  %2403 = getelementptr i8, ptr %287, i64 %2400
  br label %2492

2404:                                             ; preds = %231, %117
  %2405 = phi i64 [ %94, %117 ], [ %226, %231 ]
  %2406 = zext i32 %92 to i64
  %2407 = shl i32 %92, 3
  %2408 = add i32 %2407, %95
  %2409 = getelementptr i8, ptr %90, i64 %2406
  br label %2492

2410:                                             ; preds = %821, %807, %793, %112
  %2411 = phi i64 [ %94, %112 ], [ %788, %793 ], [ %802, %807 ], [ %816, %821 ]
  %2412 = zext i32 %92 to i64
  %2413 = shl i32 %92, 3
  %2414 = add i32 %2413, %95
  %2415 = getelementptr i8, ptr %90, i64 %2412
  br label %2492

2416:                                             ; preds = %958, %944, %930, %913
  %2417 = phi i64 [ %910, %913 ], [ %925, %930 ], [ %939, %944 ], [ %953, %958 ]
  %2418 = zext i32 %92 to i64
  %2419 = shl i32 %92, 3
  %2420 = add i32 %2419, %914
  %2421 = getelementptr i8, ptr %90, i64 %2418
  br label %2492

2422:                                             ; preds = %1899, %1895
  %2423 = phi i64 [ %1912, %1899 ], [ %1889, %1895 ]
  %2424 = zext i32 %1888 to i64
  %2425 = shl i32 %1888, 3
  %2426 = add i32 %2425, %1890
  %2427 = getelementptr i8, ptr %1887, i64 %2424
  br label %2492

2428:                                             ; preds = %1806, %1802
  %2429 = phi i64 [ %1821, %1806 ], [ %1777, %1802 ]
  %2430 = zext i32 %1776 to i64
  %2431 = shl i32 %1776, 3
  %2432 = add i32 %2431, %1778
  %2433 = getelementptr i8, ptr %1775, i64 %2430
  br label %2492

2434:                                             ; preds = %1744, %1740
  %2435 = phi i64 [ %1758, %1744 ], [ %1725, %1740 ]
  %2436 = zext i32 %1724 to i64
  %2437 = shl i32 %1724, 3
  %2438 = add i32 %2437, %1726
  %2439 = getelementptr i8, ptr %1723, i64 %2436
  br label %2492

2440:                                             ; preds = %1665, %1661
  %2441 = phi i64 [ %1678, %1665 ], [ %1655, %1661 ]
  %2442 = zext i32 %1654 to i64
  %2443 = shl i32 %1654, 3
  %2444 = add i32 %2443, %1656
  %2445 = getelementptr i8, ptr %1653, i64 %2442
  br label %2492

2446:                                             ; preds = %1574, %1570
  %2447 = phi i64 [ %1588, %1574 ], [ %1544, %1570 ]
  %2448 = zext i32 %1543 to i64
  %2449 = shl i32 %1543, 3
  %2450 = add i32 %2449, %1545
  %2451 = getelementptr i8, ptr %1542, i64 %2448
  br label %2492

2452:                                             ; preds = %1511, %1507
  %2453 = phi i64 [ %1525, %1511 ], [ %1478, %1507 ]
  %2454 = zext i32 %1477 to i64
  %2455 = shl i32 %1477, 3
  %2456 = add i32 %2455, %1479
  %2457 = getelementptr i8, ptr %1476, i64 %2454
  br label %2492

2458:                                             ; preds = %1348
  %2459 = zext i32 %1228 to i64
  %2460 = shl i32 %1228, 3
  %2461 = add i32 %2460, %1230
  %2462 = getelementptr i8, ptr %1227, i64 %2459
  br label %2492

2463:                                             ; preds = %1267
  %2464 = zext i32 %1228 to i64
  %2465 = shl i32 %1228, 3
  %2466 = add i32 %2465, %1230
  %2467 = getelementptr i8, ptr %1227, i64 %2464
  br label %2492

2468:                                             ; preds = %1311
  %2469 = zext i32 %1228 to i64
  %2470 = shl i32 %1228, 3
  %2471 = add i32 %2470, %1230
  %2472 = getelementptr i8, ptr %1227, i64 %2469
  br label %2492

2473:                                             ; preds = %1039, %107
  %2474 = phi i64 [ %94, %107 ], [ %1034, %1039 ]
  %2475 = zext i32 %92 to i64
  %2476 = shl i32 %92, 3
  %2477 = add i32 %2476, %95
  %2478 = getelementptr i8, ptr %90, i64 %2475
  br label %2492

2479:                                             ; preds = %2322, %2308, %2294, %2278
  %2480 = phi i64 [ %2269, %2278 ], [ %2289, %2294 ], [ %2303, %2308 ], [ %2317, %2322 ]
  %2481 = zext i32 %2268 to i64
  %2482 = shl i32 %2268, 3
  %2483 = add i32 %2482, %2270
  %2484 = getelementptr i8, ptr %2267, i64 %2481
  br label %2492

2485:                                             ; preds = %2184, %2170, %2156, %2140
  %2486 = phi i64 [ %94, %2140 ], [ %2151, %2156 ], [ %2165, %2170 ], [ %2179, %2184 ]
  %2487 = zext i32 %92 to i64
  %2488 = shl i32 %92, 3
  %2489 = add i32 %2488, %95
  %2490 = getelementptr i8, ptr %90, i64 %2487
  br label %2492

2491:                                             ; preds = %88
  br label %2492

2492:                                             ; preds = %2491, %2485, %2479, %2473, %2468, %2463, %2458, %2452, %2446, %2440, %2434, %2428, %2422, %2416, %2410, %2404, %2398, %2392, %2386, %2380, %2374, %2368, %2353, %2128, %1955, %1468, %1108, %1001, %986, %895, %864, %850, %696, %652, %632, %588, %572, %88
  %2493 = phi i32 [ %93, %2479 ], [ %93, %2374 ], [ %93, %2368 ], [ %93, %1108 ], [ %93, %2485 ], [ %93, %2458 ], [ %93, %2416 ], [ %93, %2422 ], [ %93, %2404 ], [ %93, %2392 ], [ %93, %2440 ], [ %93, %2386 ], [ %93, %2353 ], [ %93, %2380 ], [ %93, %895 ], [ %93, %2452 ], [ %93, %2468 ], [ %93, %2446 ], [ %93, %2428 ], [ %93, %2473 ], [ %93, %2398 ], [ %93, %2434 ], [ %93, %2463 ], [ %93, %2410 ], [ %93, %88 ], [ %93, %572 ], [ %93, %588 ], [ %93, %632 ], [ %93, %652 ], [ %93, %696 ], [ %93, %850 ], [ %93, %986 ], [ %93, %1001 ], [ %93, %1468 ], [ 0, %1955 ], [ 0, %2128 ], [ %93, %864 ], [ %93, %2491 ]
  %2494 = phi ptr [ %2484, %2479 ], [ %2379, %2374 ], [ %2373, %2368 ], [ %1106, %1108 ], [ %2490, %2485 ], [ %2462, %2458 ], [ %2421, %2416 ], [ %2427, %2422 ], [ %2409, %2404 ], [ %2397, %2392 ], [ %2445, %2440 ], [ %2391, %2386 ], [ %2354, %2353 ], [ %2385, %2380 ], [ %886, %895 ], [ %2457, %2452 ], [ %2472, %2468 ], [ %2451, %2446 ], [ %2433, %2428 ], [ %2478, %2473 ], [ %2403, %2398 ], [ %2439, %2434 ], [ %2467, %2463 ], [ %2415, %2410 ], [ %90, %88 ], [ %574, %572 ], [ %581, %588 ], [ %635, %632 ], [ %645, %652 ], [ %699, %696 ], [ %851, %850 ], [ %977, %986 ], [ %995, %1001 ], [ %1451, %1468 ], [ %1956, %1955 ], [ %90, %2128 ], [ %856, %864 ], [ %90, %2491 ]
  %2495 = phi i32 [ 0, %2479 ], [ 0, %2374 ], [ 0, %2368 ], [ 0, %1108 ], [ 0, %2485 ], [ 0, %2458 ], [ 0, %2416 ], [ 0, %2422 ], [ 0, %2404 ], [ 0, %2392 ], [ 0, %2440 ], [ 0, %2386 ], [ %2355, %2353 ], [ 0, %2380 ], [ %887, %895 ], [ 0, %2452 ], [ 0, %2468 ], [ 0, %2446 ], [ 0, %2428 ], [ 0, %2473 ], [ 0, %2398 ], [ 0, %2434 ], [ 0, %2463 ], [ 0, %2410 ], [ %92, %88 ], [ %575, %572 ], [ 0, %588 ], [ %633, %632 ], [ 0, %652 ], [ %697, %696 ], [ %852, %850 ], [ %978, %986 ], [ %996, %1001 ], [ %1450, %1468 ], [ %1957, %1955 ], [ %92, %2128 ], [ 0, %864 ], [ %92, %2491 ]
  %2496 = phi i64 [ %2480, %2479 ], [ %2375, %2374 ], [ %2369, %2368 ], [ %1104, %1108 ], [ %2486, %2485 ], [ %1350, %2458 ], [ %2417, %2416 ], [ %2423, %2422 ], [ %2405, %2404 ], [ %2393, %2392 ], [ %2441, %2440 ], [ %2387, %2386 ], [ %2356, %2353 ], [ %2381, %2380 ], [ %897, %895 ], [ %2453, %2452 ], [ %1313, %2468 ], [ %2447, %2446 ], [ %2429, %2428 ], [ %2474, %2473 ], [ %2399, %2398 ], [ %2435, %2434 ], [ %1269, %2463 ], [ %2411, %2410 ], [ %94, %88 ], [ %504, %572 ], [ %583, %588 ], [ %583, %632 ], [ %647, %652 ], [ %647, %696 ], [ %853, %850 ], [ 0, %986 ], [ %997, %1001 ], [ %1449, %1468 ], [ %1958, %1955 ], [ %94, %2128 ], [ %858, %864 ], [ %94, %2491 ]
  %2497 = phi i32 [ %2483, %2479 ], [ %2378, %2374 ], [ %2372, %2368 ], [ %1103, %1108 ], [ %2489, %2485 ], [ %2461, %2458 ], [ %2420, %2416 ], [ %2426, %2422 ], [ %2408, %2404 ], [ %2396, %2392 ], [ %2444, %2440 ], [ %2390, %2386 ], [ %2357, %2353 ], [ %2384, %2380 ], [ %896, %895 ], [ %2456, %2452 ], [ %2471, %2468 ], [ %2450, %2446 ], [ %2432, %2428 ], [ %2477, %2473 ], [ %2402, %2398 ], [ %2438, %2434 ], [ %2466, %2463 ], [ %2414, %2410 ], [ %95, %88 ], [ %505, %572 ], [ %584, %588 ], [ %584, %632 ], [ %648, %652 ], [ %648, %696 ], [ %854, %850 ], [ 0, %986 ], [ %998, %1001 ], [ %1448, %1468 ], [ %1959, %1955 ], [ %95, %2128 ], [ %859, %864 ], [ %95, %2491 ]
  %2498 = phi i32 [ %2271, %2479 ], [ %96, %2374 ], [ %96, %2368 ], [ %96, %1108 ], [ %96, %2485 ], [ %96, %2458 ], [ %96, %2416 ], [ %96, %2422 ], [ %96, %2404 ], [ %96, %2392 ], [ %96, %2440 ], [ %96, %2386 ], [ %2271, %2353 ], [ %96, %2380 ], [ %96, %895 ], [ %96, %2452 ], [ %96, %2468 ], [ %96, %2446 ], [ %96, %2428 ], [ %96, %2473 ], [ %96, %2398 ], [ %96, %2434 ], [ %96, %2463 ], [ %96, %2410 ], [ %96, %88 ], [ %96, %864 ], [ %96, %2128 ], [ %96, %1955 ], [ %96, %1468 ], [ %96, %1001 ], [ %96, %986 ], [ %96, %850 ], [ %96, %696 ], [ %96, %652 ], [ %96, %632 ], [ %96, %588 ], [ %96, %572 ], [ %96, %2491 ]
  %2499 = phi i32 [ %97, %2479 ], [ %97, %2374 ], [ %1159, %2368 ], [ %97, %1108 ], [ %97, %2485 ], [ %1159, %2458 ], [ %97, %2416 ], [ %1891, %2422 ], [ %97, %2404 ], [ %97, %2392 ], [ %1657, %2440 ], [ %97, %2386 ], [ 1, %2353 ], [ %97, %2380 ], [ %97, %895 ], [ %1480, %2452 ], [ %1159, %2468 ], [ %1480, %2446 ], [ %1727, %2428 ], [ %97, %2473 ], [ %97, %2398 ], [ %1727, %2434 ], [ %1159, %2463 ], [ %97, %2410 ], [ -3, %88 ], [ %97, %572 ], [ %97, %588 ], [ %97, %632 ], [ %97, %652 ], [ %97, %696 ], [ %97, %850 ], [ %97, %986 ], [ %97, %1001 ], [ 0, %1468 ], [ %1960, %1955 ], [ %97, %2128 ], [ %97, %864 ], [ 1, %2491 ]
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %2493, ptr %41, align 8, !tbaa !52
  store ptr %2494, ptr %0, align 8, !tbaa !50
  store i32 %2495, ptr %43, align 8, !tbaa !51
  store i64 %2496, ptr %45, align 8, !tbaa !31
  store i32 %2497, ptr %47, align 8, !tbaa !32
  %2500 = load i32, ptr %79, align 4, !tbaa !38
  %2501 = icmp eq i32 %2500, 0
  br i1 %2501, label %2502, label %2511

2502:                                             ; preds = %2492
  %2503 = icmp eq i32 %2498, %2493
  br i1 %2503, label %2599, label %2504

2504:                                             ; preds = %2502
  %2505 = load i32, ptr %21, align 8, !tbaa !20
  %2506 = icmp ult i32 %2505, 16209
  br i1 %2506, label %2507, label %2599

2507:                                             ; preds = %2504
  %2508 = icmp samesign ult i32 %2505, 16206
  %2509 = icmp ne i32 %1, 4
  %2510 = or i1 %2509, %2508
  br i1 %2510, label %2511, label %2599

2511:                                             ; preds = %2507, %2492
  %2512 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2498, i32 %2493), !nosanitize !47
  %2513 = extractvalue { i32, i1 } %2512, 1, !nosanitize !47
  br i1 %2513, label %2514, label %2515, !prof !48, !nosanitize !47

2514:                                             ; preds = %2511
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2515:                                             ; preds = %2511
  %2516 = extractvalue { i32, i1 } %2512, 0, !nosanitize !47
  %2517 = load ptr, ptr %14, align 8, !tbaa !15
  %2518 = getelementptr inbounds nuw i8, ptr %2517, i64 72
  %2519 = load ptr, ptr %2518, align 8, !tbaa !41
  %2520 = icmp eq ptr %2519, null
  br i1 %2520, label %2521, label %2530

2521:                                             ; preds = %2515
  %2522 = load ptr, ptr %6, align 8, !tbaa !8
  %2523 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2524 = load ptr, ptr %2523, align 8, !tbaa !43
  %2525 = getelementptr inbounds nuw i8, ptr %2517, i64 56
  %2526 = load i32, ptr %2525, align 8, !tbaa !42
  %2527 = shl nuw i32 1, %2526
  %2528 = call ptr %2522(ptr noundef %2524, i32 noundef %2527, i32 noundef 1) #12, !inline_history !104
  store ptr %2528, ptr %2518, align 8, !tbaa !41
  %2529 = icmp eq ptr %2528, null
  br i1 %2529, label %2598, label %2530

2530:                                             ; preds = %2521, %2515
  %2531 = phi ptr [ %2528, %2521 ], [ %2519, %2515 ]
  %2532 = getelementptr inbounds nuw i8, ptr %2517, i64 60
  %2533 = load i32, ptr %2532, align 4, !tbaa !38
  %2534 = icmp eq i32 %2533, 0
  br i1 %2534, label %2535, label %2541

2535:                                             ; preds = %2530
  %2536 = getelementptr inbounds nuw i8, ptr %2517, i64 56
  %2537 = load i32, ptr %2536, align 8, !tbaa !42
  %2538 = shl nuw i32 1, %2537
  store i32 %2538, ptr %2532, align 4, !tbaa !38
  %2539 = getelementptr inbounds nuw i8, ptr %2517, i64 68
  store i32 0, ptr %2539, align 4, !tbaa !40
  %2540 = getelementptr inbounds nuw i8, ptr %2517, i64 64
  store i32 0, ptr %2540, align 8, !tbaa !39
  br label %2541

2541:                                             ; preds = %2535, %2530
  %2542 = phi i32 [ %2538, %2535 ], [ %2533, %2530 ]
  %2543 = icmp ult i32 %2516, %2542
  br i1 %2543, label %2551, label %2544

2544:                                             ; preds = %2541
  %2545 = zext i32 %2542 to i64
  %2546 = sub nsw i64 0, %2545
  %2547 = getelementptr inbounds i8, ptr %91, i64 %2546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2531, ptr noundef nonnull readonly align 1 dereferenceable(1) %2547, i64 %2545, i1 false)
  %2548 = getelementptr inbounds nuw i8, ptr %2517, i64 68
  store i32 0, ptr %2548, align 4, !tbaa !40
  %2549 = load i32, ptr %2532, align 4, !tbaa !38
  %2550 = getelementptr inbounds nuw i8, ptr %2517, i64 64
  store i32 %2549, ptr %2550, align 8, !tbaa !39
  br label %2599

2551:                                             ; preds = %2541
  %2552 = getelementptr inbounds nuw i8, ptr %2517, i64 68
  %2553 = load i32, ptr %2552, align 4, !tbaa !40
  %2554 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2542, i32 %2553), !nosanitize !47
  %2555 = extractvalue { i32, i1 } %2554, 1, !nosanitize !47
  br i1 %2555, label %2556, label %2557, !prof !48, !nosanitize !47

2556:                                             ; preds = %2551
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2557:                                             ; preds = %2551
  %2558 = extractvalue { i32, i1 } %2554, 0, !nosanitize !47
  %2559 = call i32 @llvm.umin.i32(i32 %2558, i32 %2516)
  %2560 = zext i32 %2553 to i64
  %2561 = getelementptr inbounds nuw i8, ptr %2531, i64 %2560
  %2562 = zext i32 %2516 to i64
  %2563 = sub nsw i64 0, %2562
  %2564 = getelementptr inbounds i8, ptr %91, i64 %2563
  %2565 = zext i32 %2559 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2561, ptr readonly align 1 %2564, i64 %2565, i1 false)
  %2566 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2516, i32 %2559), !nosanitize !47
  %2567 = extractvalue { i32, i1 } %2566, 0, !nosanitize !47
  %2568 = extractvalue { i32, i1 } %2566, 1, !nosanitize !47
  br i1 %2568, label %2569, label %2570, !prof !48, !nosanitize !47

2569:                                             ; preds = %2557
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2570:                                             ; preds = %2557
  %2571 = icmp eq i32 %2567, 0
  br i1 %2571, label %2579, label %2572

2572:                                             ; preds = %2570
  %2573 = load ptr, ptr %2518, align 8, !tbaa !41
  %2574 = zext i32 %2567 to i64
  %2575 = sub nsw i64 0, %2574
  %2576 = getelementptr inbounds i8, ptr %91, i64 %2575
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2573, ptr nonnull readonly align 1 %2576, i64 %2574, i1 false)
  store i32 %2567, ptr %2552, align 4, !tbaa !40
  %2577 = load i32, ptr %2532, align 4, !tbaa !38
  %2578 = getelementptr inbounds nuw i8, ptr %2517, i64 64
  store i32 %2577, ptr %2578, align 8, !tbaa !39
  br label %2599

2579:                                             ; preds = %2570
  %2580 = load i32, ptr %2552, align 4, !tbaa !40
  %2581 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2580, i32 %2559), !nosanitize !47
  %2582 = extractvalue { i32, i1 } %2581, 1, !nosanitize !47
  br i1 %2582, label %2583, label %2584, !prof !48, !nosanitize !47

2583:                                             ; preds = %2579
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2584:                                             ; preds = %2579
  %2585 = extractvalue { i32, i1 } %2581, 0, !nosanitize !47
  %2586 = load i32, ptr %2532, align 4, !tbaa !38
  %2587 = icmp eq i32 %2585, %2586
  %2588 = select i1 %2587, i32 0, i32 %2585
  store i32 %2588, ptr %2552, align 4
  %2589 = getelementptr inbounds nuw i8, ptr %2517, i64 64
  %2590 = load i32, ptr %2589, align 8, !tbaa !39
  %2591 = icmp ult i32 %2590, %2586
  br i1 %2591, label %2592, label %2599

2592:                                             ; preds = %2584
  %2593 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2590, i32 %2559), !nosanitize !47
  %2594 = extractvalue { i32, i1 } %2593, 1, !nosanitize !47
  br i1 %2594, label %2595, label %2596, !prof !48, !nosanitize !47

2595:                                             ; preds = %2592
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2596:                                             ; preds = %2592
  %2597 = extractvalue { i32, i1 } %2593, 0, !nosanitize !47
  store i32 %2597, ptr %2589, align 8, !tbaa !39
  br label %2599

2598:                                             ; preds = %2521
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %2685

2599:                                             ; preds = %2596, %2584, %2572, %2544, %2507, %2504, %2502
  %2600 = load i32, ptr %43, align 8, !tbaa !51
  %2601 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2600), !nosanitize !47
  %2602 = extractvalue { i32, i1 } %2601, 0, !nosanitize !47
  %2603 = extractvalue { i32, i1 } %2601, 1, !nosanitize !47
  br i1 %2603, label %2604, label %2605, !prof !48, !nosanitize !47

2604:                                             ; preds = %2599
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2605:                                             ; preds = %2599
  %2606 = load i32, ptr %41, align 8, !tbaa !52
  %2607 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2498, i32 %2606), !nosanitize !47
  %2608 = extractvalue { i32, i1 } %2607, 0, !nosanitize !47
  %2609 = extractvalue { i32, i1 } %2607, 1, !nosanitize !47
  br i1 %2609, label %2610, label %2611, !prof !48, !nosanitize !47

2610:                                             ; preds = %2605
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2611:                                             ; preds = %2605
  %2612 = zext i32 %2602 to i64
  %2613 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2614 = load i64, ptr %2613, align 8, !tbaa !22
  %2615 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2614, i64 %2612), !nosanitize !47
  %2616 = extractvalue { i64, i1 } %2615, 1, !nosanitize !47
  br i1 %2616, label %2617, label %2618, !prof !48, !nosanitize !47

2617:                                             ; preds = %2611
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2618:                                             ; preds = %2611
  %2619 = extractvalue { i64, i1 } %2615, 0, !nosanitize !47
  store i64 %2619, ptr %2613, align 8, !tbaa !22
  %2620 = zext i32 %2608 to i64
  %2621 = load i64, ptr %50, align 8, !tbaa !103
  %2622 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2621, i64 %2620), !nosanitize !47
  %2623 = extractvalue { i64, i1 } %2622, 1, !nosanitize !47
  br i1 %2623, label %2624, label %2625, !prof !48, !nosanitize !47

2624:                                             ; preds = %2618
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2625:                                             ; preds = %2618
  %2626 = extractvalue { i64, i1 } %2622, 0, !nosanitize !47
  store i64 %2626, ptr %50, align 8, !tbaa !103
  %2627 = load i64, ptr %51, align 8, !tbaa !21
  %2628 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2627, i64 %2620), !nosanitize !47
  %2629 = extractvalue { i64, i1 } %2628, 1, !nosanitize !47
  br i1 %2629, label %2630, label %2631, !prof !48, !nosanitize !47

2630:                                             ; preds = %2665, %2658, %2651, %2625
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2631:                                             ; preds = %2625
  %2632 = extractvalue { i64, i1 } %2628, 0, !nosanitize !47
  store i64 %2632, ptr %51, align 8, !tbaa !21
  %2633 = load i32, ptr %49, align 8, !tbaa !24
  %2634 = and i32 %2633, 4
  %2635 = icmp ne i32 %2634, 0
  %2636 = icmp ne i32 %2608, 0
  %2637 = select i1 %2635, i1 %2636, i1 false
  br i1 %2637, label %2638, label %2651

2638:                                             ; preds = %2631
  %2639 = load i32, ptr %52, align 8, !tbaa !28
  %2640 = icmp eq i32 %2639, 0
  %2641 = load i64, ptr %53, align 8, !tbaa !54
  %2642 = load ptr, ptr %26, align 8, !tbaa !49
  %2643 = sub nsw i64 0, %2620
  %2644 = getelementptr inbounds i8, ptr %2642, i64 %2643
  br i1 %2640, label %2647, label %2645

2645:                                             ; preds = %2638
  %2646 = call i64 @crc32(i64 noundef %2641, ptr noundef nonnull %2644, i32 noundef %2608) #12
  br label %2649

2647:                                             ; preds = %2638
  %2648 = call i64 @adler32(i64 noundef %2641, ptr noundef nonnull %2644, i32 noundef %2608) #12
  br label %2649

2649:                                             ; preds = %2647, %2645
  %2650 = phi i64 [ %2646, %2645 ], [ %2648, %2647 ]
  store i64 %2650, ptr %53, align 8, !tbaa !54
  store i64 %2650, ptr %54, align 8, !tbaa !25
  br label %2651

2651:                                             ; preds = %2649, %2631
  %2652 = load i32, ptr %47, align 8, !tbaa !32
  %2653 = load i32, ptr %83, align 4, !tbaa !26
  %2654 = icmp eq i32 %2653, 0
  %2655 = select i1 %2654, i32 0, i32 64
  %2656 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2652, i32 %2655), !nosanitize !47
  %2657 = extractvalue { i32, i1 } %2656, 1, !nosanitize !47
  br i1 %2657, label %2630, label %2658, !prof !48, !nosanitize !47

2658:                                             ; preds = %2651
  %2659 = extractvalue { i32, i1 } %2656, 0, !nosanitize !47
  %2660 = load i32, ptr %21, align 8, !tbaa !20
  %2661 = icmp eq i32 %2660, 16191
  %2662 = select i1 %2661, i32 128, i32 0
  %2663 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2659, i32 %2662), !nosanitize !47
  %2664 = extractvalue { i32, i1 } %2663, 1, !nosanitize !47
  br i1 %2664, label %2630, label %2665, !prof !48, !nosanitize !47

2665:                                             ; preds = %2658
  %2666 = extractvalue { i32, i1 } %2663, 0, !nosanitize !47
  %2667 = icmp eq i32 %2660, 16199
  %2668 = icmp eq i32 %2660, 16194
  %2669 = or i1 %2667, %2668
  %2670 = select i1 %2669, i32 256, i32 0
  %2671 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2666, i32 %2670), !nosanitize !47
  %2672 = extractvalue { i32, i1 } %2671, 1, !nosanitize !47
  br i1 %2672, label %2630, label %2673, !prof !48, !nosanitize !47

2673:                                             ; preds = %2665
  %2674 = extractvalue { i32, i1 } %2671, 0, !nosanitize !47
  %2675 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2674, ptr %2675, align 8, !tbaa !23
  %2676 = icmp eq i32 %2602, 0
  %2677 = icmp eq i32 %2608, 0
  %2678 = select i1 %2676, i1 %2677, i1 false
  %2679 = icmp eq i32 %1, 4
  %2680 = or i1 %2679, %2678
  %2681 = icmp eq i32 %2499, 0
  %2682 = select i1 %2680, i1 %2681, i1 false
  %2683 = select i1 %2682, i32 -5, i32 %2499
  br label %2685

2684:                                             ; preds = %88
  br label %2685

2685:                                             ; preds = %2684, %2673, %2598, %847, %88, %32, %25, %20, %17, %13, %9, %5, %2
  %2686 = phi i32 [ -2, %20 ], [ -4, %2684 ], [ -4, %2598 ], [ %2683, %2673 ], [ 2, %847 ], [ -2, %32 ], [ -2, %25 ], [ -2, %17 ], [ -2, %13 ], [ -2, %2 ], [ -2, %9 ], [ -2, %5 ], [ -2, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %2686
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #4

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #5

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateEnd(ptr noundef captures(address) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 72
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  tail call void %9(ptr noundef %29, ptr noundef nonnull %25) #12
  %30 = load ptr, ptr %8, align 8, !tbaa !14
  %31 = load ptr, ptr %12, align 8, !tbaa !15
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi ptr [ %31, %27 ], [ %13, %23 ]
  %34 = phi ptr [ %30, %27 ], [ %9, %23 ]
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  tail call void %34(ptr noundef %36, ptr noundef %33) #12
  store ptr null, ptr %12, align 8, !tbaa !15
  br label %37

37:                                               ; preds = %32, %18, %15, %11, %7, %3, %1
  %38 = phi i32 [ 0, %32 ], [ -2, %18 ], [ -2, %11 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %15 ]
  ret i32 %38
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %56, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %56, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %56, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %56

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %56

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %27 = load i32, ptr %26, align 8, !tbaa !39
  %28 = icmp ne i32 %27, 0
  %29 = icmp ne ptr %1, null
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = getelementptr inbounds nuw i8, ptr %15, i64 68
  %33 = load i32, ptr %32, align 4, !tbaa !40
  %34 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %27, i32 %33), !nosanitize !47
  %35 = extractvalue { i32, i1 } %34, 1, !nosanitize !47
  br i1 %35, label %36, label %37, !prof !48, !nosanitize !47

36:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

37:                                               ; preds = %31
  %38 = extractvalue { i32, i1 } %34, 0, !nosanitize !47
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 72
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  %41 = zext i32 %33 to i64
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 %41
  %43 = zext i32 %38 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %42, i64 %43, i1 false)
  %44 = load i32, ptr %26, align 8, !tbaa !39
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 %45
  %47 = load i32, ptr %32, align 4, !tbaa !40
  %48 = zext i32 %47 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  %51 = load ptr, ptr %39, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %50, ptr align 1 %51, i64 %48, i1 false)
  br label %52

52:                                               ; preds = %37, %25
  %53 = icmp eq ptr %2, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %26, align 8, !tbaa !39
  store i32 %55, ptr %2, align 4, !tbaa !4
  br label %56

56:                                               ; preds = %54, %52, %20, %17, %13, %9, %5, %3
  %57 = phi i32 [ -2, %20 ], [ 0, %54 ], [ 0, %52 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @inflateSetDictionary(ptr noundef readonly captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %124, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %124, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %124, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %124, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %124

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %124

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %27 = load i32, ptr %26, align 8, !tbaa !24
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %22, 16190
  br i1 %28, label %31, label %30

30:                                               ; preds = %25
  br i1 %29, label %32, label %124

31:                                               ; preds = %25
  br i1 %29, label %32, label %40

32:                                               ; preds = %31, %30
  %33 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %34 = tail call i64 @adler32(i64 noundef %33, ptr noundef %1, i32 noundef %2) #12
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %36 = load i64, ptr %35, align 8, !tbaa !54
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %124

38:                                               ; preds = %32
  %39 = load ptr, ptr %14, align 8, !tbaa !15
  br label %40

40:                                               ; preds = %38, %31
  %41 = phi ptr [ %39, %38 ], [ %15, %31 ]
  %42 = zext i32 %2 to i64
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 %42
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 72
  %45 = load ptr, ptr %44, align 8, !tbaa !41
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load ptr, ptr %6, align 8, !tbaa !8
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  %51 = getelementptr inbounds nuw i8, ptr %41, i64 56
  %52 = load i32, ptr %51, align 8, !tbaa !42
  %53 = shl nuw i32 1, %52
  %54 = tail call ptr %48(ptr noundef %50, i32 noundef %53, i32 noundef 1) #12, !inline_history !104
  store ptr %54, ptr %44, align 8, !tbaa !41
  %55 = icmp eq ptr %54, null
  br i1 %55, label %121, label %56

56:                                               ; preds = %47, %40
  %57 = phi ptr [ %54, %47 ], [ %45, %40 ]
  %58 = getelementptr inbounds nuw i8, ptr %41, i64 60
  %59 = load i32, ptr %58, align 4, !tbaa !38
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = getelementptr inbounds nuw i8, ptr %41, i64 56
  %63 = load i32, ptr %62, align 8, !tbaa !42
  %64 = shl nuw i32 1, %63
  store i32 %64, ptr %58, align 4, !tbaa !38
  %65 = getelementptr inbounds nuw i8, ptr %41, i64 68
  store i32 0, ptr %65, align 4, !tbaa !40
  %66 = getelementptr inbounds nuw i8, ptr %41, i64 64
  store i32 0, ptr %66, align 8, !tbaa !39
  br label %67

67:                                               ; preds = %61, %56
  %68 = phi i32 [ %64, %61 ], [ %59, %56 ]
  %69 = icmp ult i32 %2, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = zext i32 %68 to i64
  %72 = sub nsw i64 0, %71
  %73 = getelementptr inbounds i8, ptr %43, i64 %72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %57, ptr noundef nonnull readonly align 1 dereferenceable(1) %73, i64 %71, i1 false)
  %74 = getelementptr inbounds nuw i8, ptr %41, i64 68
  store i32 0, ptr %74, align 4, !tbaa !40
  %75 = load i32, ptr %58, align 4, !tbaa !38
  %76 = getelementptr inbounds nuw i8, ptr %41, i64 64
  store i32 %75, ptr %76, align 8, !tbaa !39
  br label %122

77:                                               ; preds = %67
  %78 = getelementptr inbounds nuw i8, ptr %41, i64 68
  %79 = load i32, ptr %78, align 4, !tbaa !40
  %80 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %68, i32 %79), !nosanitize !47
  %81 = extractvalue { i32, i1 } %80, 1, !nosanitize !47
  br i1 %81, label %82, label %83, !prof !48, !nosanitize !47

82:                                               ; preds = %77
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

83:                                               ; preds = %77
  %84 = extractvalue { i32, i1 } %80, 0, !nosanitize !47
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 %2)
  %86 = zext i32 %79 to i64
  %87 = getelementptr inbounds nuw i8, ptr %57, i64 %86
  %88 = zext i32 %85 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %87, ptr readonly align 1 %1, i64 %88, i1 false)
  %89 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %85), !nosanitize !47
  %90 = extractvalue { i32, i1 } %89, 0, !nosanitize !47
  %91 = extractvalue { i32, i1 } %89, 1, !nosanitize !47
  br i1 %91, label %92, label %93, !prof !48, !nosanitize !47

92:                                               ; preds = %83
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

93:                                               ; preds = %83
  %94 = icmp eq i32 %90, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr %44, align 8, !tbaa !41
  %97 = zext i32 %90 to i64
  %98 = sub nsw i64 0, %97
  %99 = getelementptr inbounds i8, ptr %43, i64 %98
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %96, ptr nonnull readonly align 1 %99, i64 %97, i1 false)
  store i32 %90, ptr %78, align 4, !tbaa !40
  %100 = load i32, ptr %58, align 4, !tbaa !38
  %101 = getelementptr inbounds nuw i8, ptr %41, i64 64
  store i32 %100, ptr %101, align 8, !tbaa !39
  br label %122

102:                                              ; preds = %93
  %103 = load i32, ptr %78, align 4, !tbaa !40
  %104 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %103, i32 %85), !nosanitize !47
  %105 = extractvalue { i32, i1 } %104, 1, !nosanitize !47
  br i1 %105, label %106, label %107, !prof !48, !nosanitize !47

106:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

107:                                              ; preds = %102
  %108 = extractvalue { i32, i1 } %104, 0, !nosanitize !47
  %109 = load i32, ptr %58, align 4, !tbaa !38
  %110 = icmp eq i32 %108, %109
  %111 = select i1 %110, i32 0, i32 %108
  store i32 %111, ptr %78, align 4
  %112 = getelementptr inbounds nuw i8, ptr %41, i64 64
  %113 = load i32, ptr %112, align 8, !tbaa !39
  %114 = icmp ult i32 %113, %109
  br i1 %114, label %115, label %122

115:                                              ; preds = %107
  %116 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %113, i32 %85), !nosanitize !47
  %117 = extractvalue { i32, i1 } %116, 1, !nosanitize !47
  br i1 %117, label %118, label %119, !prof !48, !nosanitize !47

118:                                              ; preds = %115
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

119:                                              ; preds = %115
  %120 = extractvalue { i32, i1 } %116, 0, !nosanitize !47
  store i32 %120, ptr %112, align 8, !tbaa !39
  br label %122

121:                                              ; preds = %47
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %124

122:                                              ; preds = %119, %107, %95, %70
  %123 = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 1, ptr %123, align 4, !tbaa !27
  br label %124

124:                                              ; preds = %122, %121, %32, %30, %20, %17, %13, %9, %5, %3
  %125 = phi i32 [ 0, %122 ], [ -2, %20 ], [ -2, %30 ], [ -4, %121 ], [ -3, %32 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateGetHeader(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %26 = load i32, ptr %25, align 8, !tbaa !24
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %1, ptr %30, align 8, !tbaa !30
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 0, ptr %31, align 8, !tbaa !55
  br label %32

32:                                               ; preds = %29, %24, %19, %16, %12, %8, %4, %2
  %33 = phi i32 [ 0, %29 ], [ -2, %19 ], [ -2, %24 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %33
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @inflateSync(ptr noundef captures(address) %0) local_unnamed_addr #7 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %3 = icmp eq ptr %0, null
  br i1 %3, label %207, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %207, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %207, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %207, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %207

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %207

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %30 = load i32, ptr %29, align 8, !tbaa !32
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %207, label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq i32 %21, 16211
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %36 = load i32, ptr %35, align 4, !tbaa !4
  br label %121

37:                                               ; preds = %32
  store i32 16211, ptr %20, align 8, !tbaa !20
  %38 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %39 = load i32, ptr %38, align 8, !tbaa !32
  %40 = and i32 %39, 7
  %41 = getelementptr inbounds nuw i8, ptr %14, i64 80
  %42 = load i64, ptr %41, align 8, !tbaa !31
  %43 = zext nneg i32 %40 to i64
  %44 = lshr i64 %42, %43
  store i64 %44, ptr %41, align 8, !tbaa !31
  %45 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %39, i32 %40), !nosanitize !47
  %46 = extractvalue { i32, i1 } %45, 0
  %47 = icmp ugt i32 %46, 7
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  store i32 %46, ptr %38, align 8, !tbaa !32
  br label %117

49:                                               ; preds = %37
  %50 = add i32 %46, -8
  %51 = lshr i32 %50, 3
  %52 = add nuw nsw i32 %51, 1
  %53 = zext nneg i32 %52 to i64
  %54 = and i64 %53, 3
  %55 = icmp ult i32 %50, 24
  br i1 %55, label %82, label %56

56:                                               ; preds = %49
  %57 = and i64 %53, 1073741820
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi i64 [ %44, %56 ], [ %77, %58 ]
  %60 = phi i64 [ 0, %56 ], [ %73, %58 ]
  %61 = phi i64 [ 0, %56 ], [ %78, %58 ]
  %62 = trunc i64 %59 to i8
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  store i8 %62, ptr %63, align 1, !tbaa !44
  %64 = lshr i64 %59, 8
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 1
  store i8 %65, ptr %67, align 1, !tbaa !44
  %68 = lshr i64 %59, 16
  %69 = trunc i64 %68 to i8
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 2
  store i8 %69, ptr %71, align 1, !tbaa !44
  %72 = lshr i64 %59, 24
  %73 = add nuw nsw i64 %60, 4
  %74 = trunc i64 %72 to i8
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 3
  store i8 %74, ptr %76, align 1, !tbaa !44
  %77 = lshr i64 %59, 32
  %78 = add i64 %61, 4
  %79 = icmp eq i64 %78, %57
  br i1 %79, label %80, label %58, !llvm.loop !105

80:                                               ; preds = %58
  %81 = icmp eq i64 %54, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %80, %49
  %83 = phi i64 [ %44, %49 ], [ %77, %80 ]
  %84 = phi i64 [ 0, %49 ], [ %73, %80 ]
  %85 = icmp ne i64 %54, 0
  tail call void @llvm.assume(i1 %85)
  br label %86

86:                                               ; preds = %86, %82
  %87 = phi i64 [ %83, %82 ], [ %93, %86 ]
  %88 = phi i64 [ %84, %82 ], [ %90, %86 ]
  %89 = phi i64 [ 0, %82 ], [ %94, %86 ]
  %90 = add nuw nsw i64 %88, 1
  %91 = trunc i64 %87 to i8
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 %88
  store i8 %91, ptr %92, align 1, !tbaa !44
  %93 = lshr i64 %87, 8
  %94 = add i64 %89, 1
  %95 = icmp eq i64 %94, %54
  br i1 %95, label %96, label %86, !llvm.loop !106

96:                                               ; preds = %86, %80
  %97 = phi i64 [ %77, %80 ], [ %93, %86 ]
  store i64 %97, ptr %41, align 8, !tbaa !31
  store i32 0, ptr %38, align 8, !tbaa !32
  %98 = zext nneg i32 %52 to i64
  br label %99

99:                                               ; preds = %99, %96
  %100 = phi i64 [ 0, %96 ], [ %102, %99 ]
  %101 = phi i32 [ 0, %96 ], [ %113, %99 ]
  %102 = add nuw nsw i64 %100, 1
  %103 = icmp samesign ult i32 %101, 2
  %104 = select i1 %103, i32 0, i32 255
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %106 = load i8, ptr %105, align 1, !tbaa !44
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %104, %107
  %109 = add nuw nsw i32 %101, 1
  %110 = icmp eq i8 %106, 0
  %111 = sub nuw nsw i32 4, %101
  %112 = select i1 %110, i32 %111, i32 0
  %113 = select i1 %108, i32 %109, i32 %112
  %114 = icmp samesign ult i64 %102, %98
  %115 = icmp samesign ult i32 %113, 4
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %99, label %117, !llvm.loop !107

117:                                              ; preds = %99, %48
  %118 = phi i32 [ 0, %48 ], [ %113, %99 ]
  %119 = getelementptr inbounds nuw i8, ptr %14, i64 140
  store i32 %118, ptr %119, align 4, !tbaa !4
  %120 = load i32, ptr %25, align 8, !tbaa !51
  br label %121

121:                                              ; preds = %117, %34
  %122 = phi i32 [ %118, %117 ], [ %36, %34 ]
  %123 = phi i32 [ %120, %117 ], [ %26, %34 ]
  %124 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %125 = load ptr, ptr %0, align 8, !tbaa !50
  %126 = icmp ne i32 %123, 0
  %127 = icmp ult i32 %122, 4
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %129, label %151

129:                                              ; preds = %121
  %130 = zext i32 %123 to i64
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi i64 [ 0, %129 ], [ %134, %131 ]
  %133 = phi i32 [ %122, %129 ], [ %145, %131 ]
  %134 = add nuw nsw i64 %132, 1
  %135 = icmp samesign ult i32 %133, 2
  %136 = select i1 %135, i32 0, i32 255
  %137 = getelementptr inbounds nuw i8, ptr %125, i64 %132
  %138 = load i8, ptr %137, align 1, !tbaa !44
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %136, %139
  %141 = add nuw nsw i32 %133, 1
  %142 = icmp eq i8 %138, 0
  %143 = sub nuw nsw i32 4, %133
  %144 = select i1 %142, i32 %143, i32 0
  %145 = select i1 %140, i32 %141, i32 %144
  %146 = icmp samesign ult i64 %134, %130
  %147 = icmp samesign ult i32 %145, 4
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %131, label %149, !llvm.loop !107

149:                                              ; preds = %131
  %150 = trunc nuw i64 %134 to i32
  br label %151

151:                                              ; preds = %149, %121
  %152 = phi i32 [ %122, %121 ], [ %145, %149 ]
  %153 = phi i32 [ 0, %121 ], [ %150, %149 ]
  store i32 %152, ptr %124, align 4, !tbaa !4
  %154 = load i32, ptr %25, align 8, !tbaa !51
  %155 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %154, i32 %153), !nosanitize !47
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !47
  br i1 %156, label %157, label %158, !prof !48, !nosanitize !47

157:                                              ; preds = %151
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

158:                                              ; preds = %151
  %159 = extractvalue { i32, i1 } %155, 0, !nosanitize !47
  store i32 %159, ptr %25, align 8, !tbaa !51
  %160 = zext i32 %153 to i64
  %161 = getelementptr inbounds nuw i8, ptr %125, i64 %160
  store ptr %161, ptr %0, align 8, !tbaa !50
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %163 = load i64, ptr %162, align 8, !tbaa !22
  %164 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %163, i64 %160), !nosanitize !47
  %165 = extractvalue { i64, i1 } %164, 1, !nosanitize !47
  br i1 %165, label %166, label %167, !prof !48, !nosanitize !47

166:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

167:                                              ; preds = %158
  %168 = extractvalue { i64, i1 } %164, 0, !nosanitize !47
  store i64 %168, ptr %162, align 8, !tbaa !22
  %169 = icmp eq i32 %152, 4
  br i1 %169, label %170, label %207

170:                                              ; preds = %167
  %171 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %172 = load i32, ptr %171, align 8, !tbaa !28
  %173 = icmp eq i32 %172, -1
  %174 = getelementptr inbounds nuw i8, ptr %14, i64 16
  br i1 %173, label %178, label %175

175:                                              ; preds = %170
  %176 = load i32, ptr %174, align 8, !tbaa !24
  %177 = and i32 %176, -5
  br label %178

178:                                              ; preds = %175, %170
  %179 = phi i32 [ %177, %175 ], [ 0, %170 ]
  store i32 %179, ptr %174, align 8, !tbaa !24
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %181 = load i64, ptr %180, align 8, !tbaa !103
  %182 = getelementptr inbounds nuw i8, ptr %14, i64 60
  store i32 0, ptr %182, align 4, !tbaa !38
  %183 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 0, ptr %183, align 8, !tbaa !39
  %184 = getelementptr inbounds nuw i8, ptr %14, i64 68
  store i32 0, ptr %184, align 4, !tbaa !40
  %185 = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %185, align 8, !tbaa !21
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %186, align 8, !tbaa !23
  %187 = getelementptr inbounds nuw i8, ptr %14, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %180, i8 0, i64 16, i1 false)
  %188 = load i32, ptr %187, align 8, !tbaa !24
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %178
  %191 = and i32 %188, 1
  %192 = zext nneg i32 %191 to i64
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %192, ptr %193, align 8, !tbaa !25
  br label %194

194:                                              ; preds = %190, %178
  %195 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 0, ptr %195, align 4, !tbaa !26
  %196 = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %196, align 4, !tbaa !27
  %197 = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 32768, ptr %197, align 4, !tbaa !29
  %198 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr null, ptr %198, align 8, !tbaa !30
  %199 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store i64 0, ptr %199, align 8, !tbaa !31
  %200 = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i32 0, ptr %200, align 8, !tbaa !32
  %201 = getelementptr inbounds nuw i8, ptr %14, i64 1368
  %202 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store ptr %201, ptr %202, align 8, !tbaa !33
  %203 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store ptr %201, ptr %203, align 8, !tbaa !34
  %204 = getelementptr inbounds nuw i8, ptr %14, i64 104
  store ptr %201, ptr %204, align 8, !tbaa !35
  %205 = getelementptr inbounds nuw i8, ptr %14, i64 7144
  store i32 1, ptr %205, align 8, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %14, i64 7148
  store i32 -1, ptr %206, align 4, !tbaa !37
  store i64 %168, ptr %162, align 8, !tbaa !22
  store i64 %181, ptr %180, align 8, !tbaa !103
  store i32 %172, ptr %171, align 8, !tbaa !28
  store i32 16191, ptr %20, align 8, !tbaa !20
  br label %207

207:                                              ; preds = %194, %167, %28, %19, %16, %12, %8, %4, %1
  %208 = phi i32 [ 0, %194 ], [ -2, %19 ], [ -5, %28 ], [ -3, %167 ], [ -2, %12 ], [ -2, %1 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %208
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 2) i32 @inflateSyncPoint(ptr noundef readonly captures(address) %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = icmp eq i32 %20, 16193
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 88
  %27 = load i32, ptr %26, align 8, !tbaa !32
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %25, %23, %18, %15, %11, %7, %3, %1
  %31 = phi i32 [ -2, %18 ], [ 0, %23 ], [ %29, %25 ], [ -2, %11 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %15 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @inflateCopy(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %88, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %88, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %88, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %88, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %88

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16212
  %23 = icmp ult i32 %22, -32
  %24 = icmp eq ptr %0, null
  %25 = or i1 %24, %23
  br i1 %25, label %88, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = tail call ptr %6(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %88, label %31

31:                                               ; preds = %26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %29, i8 0, i64 7160, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %14, i64 72
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %5, align 8, !tbaa !8
  %37 = load ptr, ptr %27, align 8, !tbaa !43
  %38 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %39 = load i32, ptr %38, align 8, !tbaa !42
  %40 = shl nuw i32 1, %39
  %41 = tail call ptr %36(ptr noundef %37, i32 noundef %40, i32 noundef 1) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load ptr, ptr %9, align 8, !tbaa !14
  %45 = load ptr, ptr %27, align 8, !tbaa !43
  tail call void %44(ptr noundef %45, ptr noundef nonnull %29) #12
  br label %88

46:                                               ; preds = %35, %31
  %47 = phi ptr [ %41, %35 ], [ null, %31 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %29, ptr noundef nonnull align 8 dereferenceable(7160) %14, i64 7160, i1 false)
  store ptr %0, ptr %29, align 8, !tbaa !16
  %48 = getelementptr inbounds nuw i8, ptr %14, i64 104
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 1368
  %51 = icmp ult ptr %49, %50
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 7140
  %53 = icmp ugt ptr %49, %52
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = ptrtoint ptr %50 to i64
  br label %70

57:                                               ; preds = %46
  %58 = getelementptr inbounds nuw i8, ptr %29, i64 1368
  %59 = ptrtoint ptr %49 to i64
  %60 = ptrtoint ptr %50 to i64
  %61 = sub i64 %59, %60
  %62 = getelementptr inbounds i8, ptr %58, i64 %61
  %63 = getelementptr inbounds nuw i8, ptr %29, i64 104
  store ptr %62, ptr %63, align 8, !tbaa !35
  %64 = getelementptr inbounds nuw i8, ptr %14, i64 112
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = ptrtoint ptr %65 to i64
  %67 = sub i64 %66, %60
  %68 = getelementptr inbounds i8, ptr %58, i64 %67
  %69 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %68, ptr %69, align 8, !tbaa !34
  br label %70

70:                                               ; preds = %57, %55
  %71 = phi i64 [ %56, %55 ], [ %60, %57 ]
  %72 = getelementptr inbounds nuw i8, ptr %29, i64 1368
  %73 = getelementptr inbounds nuw i8, ptr %14, i64 144
  %74 = load ptr, ptr %73, align 8, !tbaa !33
  %75 = ptrtoint ptr %74 to i64
  %76 = sub i64 %75, %71
  %77 = getelementptr inbounds i8, ptr %72, i64 %76
  %78 = getelementptr inbounds nuw i8, ptr %29, i64 144
  store ptr %77, ptr %78, align 8, !tbaa !33
  %79 = icmp eq ptr %47, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %70
  %81 = load ptr, ptr %32, align 8, !tbaa !41
  %82 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %83 = load i32, ptr %82, align 8, !tbaa !39
  %84 = zext i32 %83 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr align 1 %81, i64 %84, i1 false)
  br label %85

85:                                               ; preds = %80, %70
  %86 = getelementptr inbounds nuw i8, ptr %29, i64 72
  store ptr %47, ptr %86, align 8, !tbaa !41
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %29, ptr %87, align 8, !tbaa !15
  br label %88

88:                                               ; preds = %85, %43, %26, %19, %16, %12, %8, %4, %2
  %89 = phi i32 [ 0, %85 ], [ -2, %19 ], [ -4, %43 ], [ -4, %26 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %89
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -3, -1) i32 @inflateUndermine(ptr noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 7144
  store i32 1, ptr %25, align 8, !tbaa !36
  br label %26

26:                                               ; preds = %24, %19, %16, %12, %8, %4, %2
  %27 = phi i32 [ -3, %24 ], [ -2, %19 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateValidate(ptr noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = icmp eq i32 %1, 0
  %26 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %27 = load i32, ptr %26, align 8, !tbaa !24
  br i1 %25, label %28, label %30

28:                                               ; preds = %24
  %29 = and i32 %27, -5
  br label %34

30:                                               ; preds = %24
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = or i32 %27, 4
  store i32 %33, ptr %26, align 8, !tbaa !24
  br label %37

34:                                               ; preds = %30, %28
  %35 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %36 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %35, ptr %36, align 8, !tbaa !24
  br label %37

37:                                               ; preds = %34, %32, %19, %16, %12, %8, %4, %2
  %38 = phi i32 [ -2, %19 ], [ 0, %34 ], [ 0, %32 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %38
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i64 -140737488355328, 140741783257088) i64 @inflateMark(ptr noundef readonly captures(address) %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 7148
  %25 = load i32, ptr %24, align 4, !tbaa !37
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 16
  switch i32 %20, label %40 [
    i32 16195, label %28
    i32 16204, label %31
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 92
  %30 = load i32, ptr %29, align 4, !tbaa !61
  br label %40

31:                                               ; preds = %23
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 7152
  %33 = load i32, ptr %32, align 8, !tbaa !92
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 92
  %35 = load i32, ptr %34, align 4, !tbaa !61
  %36 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %33, i32 %35), !nosanitize !47
  %37 = extractvalue { i32, i1 } %36, 0, !nosanitize !47
  %38 = extractvalue { i32, i1 } %36, 1, !nosanitize !47
  br i1 %38, label %39, label %40, !prof !48, !nosanitize !47

39:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

40:                                               ; preds = %31, %28, %23
  %41 = phi i32 [ %30, %28 ], [ %37, %31 ], [ 0, %23 ]
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %27, %42
  br label %44

44:                                               ; preds = %40, %18, %15, %11, %7, %3, %1
  %45 = phi i64 [ %43, %40 ], [ -65536, %18 ], [ -65536, %11 ], [ -65536, %1 ], [ -65536, %7 ], [ -65536, %3 ], [ -65536, %15 ]
  ret i64 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -2305843009213693952, 2305843009213693952) i64 @inflateCodesUsed(ptr noundef readonly captures(address) %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 144
  %25 = load ptr, ptr %24, align 8, !tbaa !33
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 1368
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 2
  br label %31

31:                                               ; preds = %23, %18, %15, %11, %7, %3, %1
  %32 = phi i64 [ %30, %23 ], [ -1, %18 ], [ -1, %11 ], [ -1, %1 ], [ -1, %7 ], [ -1, %3 ], [ -1, %15 ]
  ret i64 %32
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!8 = !{!9, !11, i64 64}
!9 = !{!"z_stream_s", !10, i64 0, !5, i64 8, !12, i64 16, !10, i64 24, !5, i64 32, !12, i64 40, !10, i64 48, !13, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !5, i64 88, !12, i64 96, !12, i64 104}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!14 = !{!9, !11, i64 72}
!15 = !{!9, !13, i64 56}
!16 = !{!17, !18, i64 0}
!17 = !{!"inflate_state", !18, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !12, i64 32, !12, i64 40, !19, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !10, i64 72, !12, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !11, i64 104, !11, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !11, i64 144, !6, i64 152, !6, i64 792, !6, i64 1368, !5, i64 7144, !5, i64 7148, !5, i64 7152}
!18 = !{!"p1 _ZTS10z_stream_s", !11, i64 0}
!19 = !{!"p1 _ZTS11gz_header_s", !11, i64 0}
!20 = !{!17, !5, i64 8}
!21 = !{!17, !12, i64 40}
!22 = !{!9, !12, i64 16}
!23 = !{!9, !5, i64 88}
!24 = !{!17, !5, i64 16}
!25 = !{!9, !12, i64 96}
!26 = !{!17, !5, i64 12}
!27 = !{!17, !5, i64 20}
!28 = !{!17, !5, i64 24}
!29 = !{!17, !5, i64 28}
!30 = !{!17, !19, i64 48}
!31 = !{!17, !12, i64 80}
!32 = !{!17, !5, i64 88}
!33 = !{!17, !11, i64 144}
!34 = !{!17, !11, i64 112}
!35 = !{!17, !11, i64 104}
!36 = !{!17, !5, i64 7144}
!37 = !{!17, !5, i64 7148}
!38 = !{!17, !5, i64 60}
!39 = !{!17, !5, i64 64}
!40 = !{!17, !5, i64 68}
!41 = !{!17, !10, i64 72}
!42 = !{!17, !5, i64 56}
!43 = !{!9, !11, i64 80}
!44 = !{!6, !6, i64 0}
!45 = !{!9, !10, i64 48}
!46 = !{ptr @inflateInit2_}
!47 = !{}
!48 = !{!"branch_weights", i32 1, i32 1048575}
!49 = !{!9, !10, i64 24}
!50 = !{!9, !10, i64 0}
!51 = !{!9, !5, i64 8}
!52 = !{!9, !5, i64 32}
!53 = !{!17, !5, i64 100}
!54 = !{!17, !12, i64 32}
!55 = !{!56, !5, i64 72}
!56 = !{!"gz_header_s", !5, i64 0, !12, i64 8, !5, i64 16, !5, i64 20, !10, i64 24, !5, i64 32, !5, i64 36, !10, i64 40, !5, i64 48, !10, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!57 = !{!56, !5, i64 0}
!58 = !{!56, !12, i64 8}
!59 = !{!56, !5, i64 16}
!60 = !{!56, !5, i64 20}
!61 = !{!17, !5, i64 92}
!62 = !{!56, !5, i64 32}
!63 = !{!56, !10, i64 24}
!64 = !{!56, !5, i64 36}
!65 = !{!56, !10, i64 40}
!66 = !{!56, !5, i64 48}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!56, !10, i64 56}
!70 = !{!56, !5, i64 64}
!71 = distinct !{!71, !68}
!72 = !{!56, !5, i64 68}
!73 = !{!17, !5, i64 132}
!74 = !{!17, !5, i64 136}
!75 = !{!17, !5, i64 128}
!76 = !{!17, !5, i64 140}
!77 = !{!78, !78, i64 0}
!78 = !{!"short", !6, i64 0}
!79 = distinct !{!79, !68}
!80 = distinct !{!80, !68}
!81 = !{!17, !5, i64 120}
!82 = !{!"branch_weights", i32 1, i32 127}
!83 = distinct !{!83, !68}
!84 = distinct !{!84, !68}
!85 = distinct !{!85, !68}
!86 = !{!"branch_weights", i32 127, i32 134217473}
!87 = distinct !{!87, !68}
!88 = distinct !{!88, !68, !89}
!89 = !{!"llvm.loop.estimated_trip_count", i32 528415}
!90 = !{!17, !5, i64 124}
!91 = distinct !{!91, !68}
!92 = !{!17, !5, i64 7152}
!93 = !{!17, !5, i64 96}
!94 = distinct !{!94, !68}
!95 = distinct !{!95, !68, !96, !97}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = !{!"branch_weights", i32 4, i32 28}
!99 = distinct !{!99, !68, !96, !97}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = distinct !{!102, !68, !96}
!103 = !{!9, !12, i64 40}
!104 = distinct !{null}
!105 = distinct !{!105, !68}
!106 = distinct !{!106, !101}
!107 = distinct !{!107, !68}
