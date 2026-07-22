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
  br i1 %4, label %2670, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %2670, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %2670, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %2670, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %2670

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %2670

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %2670, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !50
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %2670

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

88:                                               ; preds = %2346, %39
  %89 = phi i32 [ %40, %39 ], [ %2355, %2346 ]
  %90 = phi ptr [ %30, %39 ], [ %2347, %2346 ]
  %91 = phi ptr [ %27, %39 ], [ %2348, %2346 ]
  %92 = phi i32 [ %44, %39 ], [ %2349, %2346 ]
  %93 = phi i32 [ %42, %39 ], [ %2350, %2346 ]
  %94 = phi i64 [ %46, %39 ], [ %2351, %2346 ]
  %95 = phi i32 [ %48, %39 ], [ %2352, %2346 ]
  %96 = phi i32 [ %42, %39 ], [ %2353, %2346 ]
  %97 = phi i32 [ 0, %39 ], [ %2354, %2346 ]
  %98 = ptrtoaddr ptr %91 to i64
  switch i32 %89, label %2670 [
    i32 16180, label %120
    i32 16181, label %115
    i32 16182, label %281
    i32 16183, label %364
    i32 16184, label %423
    i32 16185, label %501
    i32 16186, label %574
    i32 16187, label %638
    i32 16188, label %702
    i32 16189, label %110
    i32 16190, label %834
    i32 16191, label %844
    i32 16192, label %849
    i32 16193, label %900
    i32 16194, label %983
    i32 16195, label %988
    i32 16196, label %105
    i32 16197, label %1070
    i32 16198, label %1145
    i32 16199, label %1460
    i32 16200, label %1466
    i32 16201, label %101
    i32 16202, label %1713
    i32 16203, label %99
    i32 16204, label %1946
    i32 16205, label %2116
    i32 16206, label %2123
    i32 16207, label %103
    i32 16208, label %2479
    i32 16209, label %2480
    i32 16210, label %2669
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !53
  br label %1876

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !53
  br label %1642

103:                                              ; preds = %88
  %104 = load i32, ptr %49, align 8, !tbaa !24
  br label %2253

105:                                              ; preds = %88
  %106 = icmp ult i32 %95, 14
  br i1 %106, label %107, label %1049

107:                                              ; preds = %105
  %108 = zext nneg i32 %95 to i64
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %2461, label %1017

110:                                              ; preds = %88
  %111 = icmp ult i32 %95, 32
  br i1 %111, label %112, label %827

112:                                              ; preds = %110
  %113 = zext nneg i32 %95 to i64
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %2398, label %774

115:                                              ; preds = %88
  %116 = icmp ult i32 %95, 16
  br i1 %116, label %117, label %250

117:                                              ; preds = %115
  %118 = zext nneg i32 %95 to i64
  %119 = icmp eq i32 %92, 0
  br i1 %119, label %2392, label %218

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
  br i1 %127, label %2362, label %129

128:                                              ; preds = %120
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2346

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
  br i1 %143, label %2362, label %144

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
  br label %2346

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
  br label %2346

193:                                              ; preds = %185
  %194 = and i64 %164, 15
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

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
  br label %2346

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
  br label %2346

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
  br i1 %232, label %2392, label %233

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
  br label %2346

259:                                              ; preds = %250
  %260 = and i32 %255, 57344
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

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
  br i1 %289, label %2386, label %290

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
  br i1 %304, label %2386, label %305

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
  br i1 %318, label %2386, label %319

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
  br i1 %332, label %2386, label %333

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
  br i1 %372, label %2380, label %373

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
  br i1 %387, label %2380, label %388

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
  br i1 %440, label %2374, label %441

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
  br i1 %455, label %2374, label %456

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
  br i1 %508, label %571, label %509

509:                                              ; preds = %501
  %510 = load i32, ptr %56, align 4, !tbaa !61
  %511 = call i32 @llvm.umin.i32(i32 %510, i32 %503)
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %566, label %513

513:                                              ; preds = %509
  %514 = load ptr, ptr %84, align 8, !tbaa !30
  %515 = icmp eq ptr %514, null
  br i1 %515, label %544, label %516

516:                                              ; preds = %513
  %517 = getelementptr inbounds nuw i8, ptr %514, i64 24
  %518 = load ptr, ptr %517, align 8, !tbaa !63
  %519 = icmp eq ptr %518, null
  br i1 %519, label %544, label %520

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
  br i1 %530, label %531, label %544

531:                                              ; preds = %527
  %532 = zext i32 %524 to i64
  %533 = getelementptr inbounds nuw i8, ptr %518, i64 %532
  %534 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %524, i32 %511), !nosanitize !47
  %535 = extractvalue { i32, i1 } %534, 0, !nosanitize !47
  %536 = icmp ugt i32 %535, %529
  br i1 %536, label %537, label %540

537:                                              ; preds = %531
  %538 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %529, i32 %524), !nosanitize !47
  %539 = extractvalue { i32, i1 } %538, 0, !nosanitize !47
  br label %540

540:                                              ; preds = %537, %531
  %541 = phi i32 [ %539, %537 ], [ %511, %531 ]
  %542 = zext i32 %541 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %533, ptr align 1 %502, i64 %542, i1 false)
  %543 = load i32, ptr %52, align 8, !tbaa !28
  br label %544

544:                                              ; preds = %540, %527, %516, %513
  %545 = phi i32 [ %543, %540 ], [ %506, %527 ], [ %506, %516 ], [ %506, %513 ]
  %546 = and i32 %545, 512
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %555, label %548

548:                                              ; preds = %544
  %549 = load i32, ptr %49, align 8, !tbaa !24
  %550 = and i32 %549, 4
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %555, label %552

552:                                              ; preds = %548
  %553 = load i64, ptr %53, align 8, !tbaa !54
  %554 = call i64 @crc32(i64 noundef %553, ptr noundef %502, i32 noundef %511) #12
  store i64 %554, ptr %53, align 8, !tbaa !54
  br label %555

555:                                              ; preds = %552, %548, %544
  %556 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %511), !nosanitize !47
  %557 = extractvalue { i32, i1 } %556, 0, !nosanitize !47
  %558 = load i32, ptr %56, align 4, !tbaa !61
  %559 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %558, i32 %511), !nosanitize !47
  %560 = extractvalue { i32, i1 } %559, 1, !nosanitize !47
  br i1 %560, label %561, label %562, !prof !48, !nosanitize !47

561:                                              ; preds = %555
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

562:                                              ; preds = %555
  %563 = extractvalue { i32, i1 } %559, 0, !nosanitize !47
  %564 = zext i32 %511 to i64
  %565 = getelementptr inbounds nuw i8, ptr %502, i64 %564
  store i32 %563, ptr %56, align 4, !tbaa !61
  br label %566

566:                                              ; preds = %562, %509
  %567 = phi i32 [ %563, %562 ], [ %510, %509 ]
  %568 = phi ptr [ %565, %562 ], [ %502, %509 ]
  %569 = phi i32 [ %557, %562 ], [ %503, %509 ]
  %570 = icmp eq i32 %567, 0
  br i1 %570, label %571, label %2480

571:                                              ; preds = %566, %501
  %572 = phi ptr [ %568, %566 ], [ %502, %501 ]
  %573 = phi i32 [ %569, %566 ], [ %503, %501 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16186, ptr %21, align 8, !tbaa !20
  br label %574

574:                                              ; preds = %571, %88
  %575 = phi ptr [ %572, %571 ], [ %90, %88 ]
  %576 = phi i32 [ %573, %571 ], [ %92, %88 ]
  %577 = phi i64 [ %504, %571 ], [ %94, %88 ]
  %578 = phi i32 [ %505, %571 ], [ %95, %88 ]
  %579 = load i32, ptr %52, align 8, !tbaa !28
  %580 = and i32 %579, 2048
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %630, label %582

582:                                              ; preds = %574
  %583 = icmp eq i32 %576, 0
  br i1 %583, label %2480, label %584

584:                                              ; preds = %582
  %585 = zext i32 %576 to i64
  br label %586

586:                                              ; preds = %606, %584
  %587 = phi i64 [ 0, %584 ], [ %588, %606 ]
  %588 = add nuw nsw i64 %587, 1
  %589 = getelementptr inbounds nuw i8, ptr %575, i64 %587
  %590 = load i8, ptr %589, align 1, !tbaa !44
  %591 = load ptr, ptr %84, align 8, !tbaa !30
  %592 = icmp eq ptr %591, null
  br i1 %592, label %606, label %593

593:                                              ; preds = %586
  %594 = getelementptr inbounds nuw i8, ptr %591, i64 40
  %595 = load ptr, ptr %594, align 8, !tbaa !65
  %596 = icmp eq ptr %595, null
  br i1 %596, label %606, label %597

597:                                              ; preds = %593
  %598 = load i32, ptr %56, align 4, !tbaa !61
  %599 = getelementptr inbounds nuw i8, ptr %591, i64 48
  %600 = load i32, ptr %599, align 8, !tbaa !66
  %601 = icmp ult i32 %598, %600
  br i1 %601, label %602, label %606

602:                                              ; preds = %597
  %603 = add nuw i32 %598, 1
  store i32 %603, ptr %56, align 4, !tbaa !61
  %604 = zext i32 %598 to i64
  %605 = getelementptr inbounds nuw i8, ptr %595, i64 %604
  store i8 %590, ptr %605, align 1, !tbaa !44
  br label %606

606:                                              ; preds = %602, %597, %593, %586
  %607 = icmp ne i8 %590, 0
  %608 = icmp samesign ult i64 %588, %585
  %609 = select i1 %607, i1 %608, i1 false
  br i1 %609, label %586, label %610, !llvm.loop !67

610:                                              ; preds = %606
  %611 = trunc nuw i64 %588 to i32
  %612 = load i32, ptr %52, align 8, !tbaa !28
  %613 = and i32 %612, 512
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %622, label %615

615:                                              ; preds = %610
  %616 = load i32, ptr %49, align 8, !tbaa !24
  %617 = and i32 %616, 4
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %622, label %619

619:                                              ; preds = %615
  %620 = load i64, ptr %53, align 8, !tbaa !54
  %621 = call i64 @crc32(i64 noundef %620, ptr noundef nonnull %575, i32 noundef %611) #12
  store i64 %621, ptr %53, align 8, !tbaa !54
  br label %622

622:                                              ; preds = %619, %615, %610
  %623 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %576, i32 %611), !nosanitize !47
  %624 = extractvalue { i32, i1 } %623, 1, !nosanitize !47
  br i1 %624, label %625, label %626, !prof !48, !nosanitize !47

625:                                              ; preds = %622
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

626:                                              ; preds = %622
  %627 = extractvalue { i32, i1 } %623, 0, !nosanitize !47
  %628 = and i64 %588, 4294967295
  %629 = getelementptr inbounds nuw i8, ptr %575, i64 %628
  br i1 %607, label %2480, label %635

630:                                              ; preds = %574
  %631 = load ptr, ptr %84, align 8, !tbaa !30
  %632 = icmp eq ptr %631, null
  br i1 %632, label %635, label %633

633:                                              ; preds = %630
  %634 = getelementptr inbounds nuw i8, ptr %631, i64 40
  store ptr null, ptr %634, align 8, !tbaa !65
  br label %635

635:                                              ; preds = %633, %630, %626
  %636 = phi ptr [ %629, %626 ], [ %575, %633 ], [ %575, %630 ]
  %637 = phi i32 [ %627, %626 ], [ %576, %633 ], [ %576, %630 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16187, ptr %21, align 8, !tbaa !20
  br label %638

638:                                              ; preds = %635, %88
  %639 = phi ptr [ %636, %635 ], [ %90, %88 ]
  %640 = phi i32 [ %637, %635 ], [ %92, %88 ]
  %641 = phi i64 [ %577, %635 ], [ %94, %88 ]
  %642 = phi i32 [ %578, %635 ], [ %95, %88 ]
  %643 = load i32, ptr %52, align 8, !tbaa !28
  %644 = and i32 %643, 4096
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %694, label %646

646:                                              ; preds = %638
  %647 = icmp eq i32 %640, 0
  br i1 %647, label %2480, label %648

648:                                              ; preds = %646
  %649 = zext i32 %640 to i64
  br label %650

650:                                              ; preds = %670, %648
  %651 = phi i64 [ 0, %648 ], [ %652, %670 ]
  %652 = add nuw nsw i64 %651, 1
  %653 = getelementptr inbounds nuw i8, ptr %639, i64 %651
  %654 = load i8, ptr %653, align 1, !tbaa !44
  %655 = load ptr, ptr %84, align 8, !tbaa !30
  %656 = icmp eq ptr %655, null
  br i1 %656, label %670, label %657

657:                                              ; preds = %650
  %658 = getelementptr inbounds nuw i8, ptr %655, i64 56
  %659 = load ptr, ptr %658, align 8, !tbaa !69
  %660 = icmp eq ptr %659, null
  br i1 %660, label %670, label %661

661:                                              ; preds = %657
  %662 = load i32, ptr %56, align 4, !tbaa !61
  %663 = getelementptr inbounds nuw i8, ptr %655, i64 64
  %664 = load i32, ptr %663, align 8, !tbaa !70
  %665 = icmp ult i32 %662, %664
  br i1 %665, label %666, label %670

666:                                              ; preds = %661
  %667 = add nuw i32 %662, 1
  store i32 %667, ptr %56, align 4, !tbaa !61
  %668 = zext i32 %662 to i64
  %669 = getelementptr inbounds nuw i8, ptr %659, i64 %668
  store i8 %654, ptr %669, align 1, !tbaa !44
  br label %670

670:                                              ; preds = %666, %661, %657, %650
  %671 = icmp ne i8 %654, 0
  %672 = icmp samesign ult i64 %652, %649
  %673 = select i1 %671, i1 %672, i1 false
  br i1 %673, label %650, label %674, !llvm.loop !71

674:                                              ; preds = %670
  %675 = trunc nuw i64 %652 to i32
  %676 = load i32, ptr %52, align 8, !tbaa !28
  %677 = and i32 %676, 512
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %686, label %679

679:                                              ; preds = %674
  %680 = load i32, ptr %49, align 8, !tbaa !24
  %681 = and i32 %680, 4
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %686, label %683

683:                                              ; preds = %679
  %684 = load i64, ptr %53, align 8, !tbaa !54
  %685 = call i64 @crc32(i64 noundef %684, ptr noundef nonnull %639, i32 noundef %675) #12
  store i64 %685, ptr %53, align 8, !tbaa !54
  br label %686

686:                                              ; preds = %683, %679, %674
  %687 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %640, i32 %675), !nosanitize !47
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !47
  br i1 %688, label %689, label %690, !prof !48, !nosanitize !47

689:                                              ; preds = %686
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

690:                                              ; preds = %686
  %691 = extractvalue { i32, i1 } %687, 0, !nosanitize !47
  %692 = and i64 %652, 4294967295
  %693 = getelementptr inbounds nuw i8, ptr %639, i64 %692
  br i1 %671, label %2480, label %699

694:                                              ; preds = %638
  %695 = load ptr, ptr %84, align 8, !tbaa !30
  %696 = icmp eq ptr %695, null
  br i1 %696, label %699, label %697

697:                                              ; preds = %694
  %698 = getelementptr inbounds nuw i8, ptr %695, i64 56
  store ptr null, ptr %698, align 8, !tbaa !69
  br label %699

699:                                              ; preds = %697, %694, %690
  %700 = phi ptr [ %693, %690 ], [ %639, %697 ], [ %639, %694 ]
  %701 = phi i32 [ %691, %690 ], [ %640, %697 ], [ %640, %694 ]
  store i32 16188, ptr %21, align 8, !tbaa !20
  br label %702

702:                                              ; preds = %699, %88
  %703 = phi ptr [ %700, %699 ], [ %90, %88 ]
  %704 = phi i32 [ %701, %699 ], [ %92, %88 ]
  %705 = phi i64 [ %641, %699 ], [ %94, %88 ]
  %706 = phi i32 [ %642, %699 ], [ %95, %88 ]
  %707 = load i32, ptr %52, align 8, !tbaa !28
  %708 = and i32 %707, 512
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %760, label %710

710:                                              ; preds = %702
  %711 = icmp ult i32 %706, 16
  br i1 %711, label %712, label %747

712:                                              ; preds = %710
  %713 = zext nneg i32 %706 to i64
  %714 = icmp eq i32 %704, 0
  br i1 %714, label %2368, label %715

715:                                              ; preds = %712
  %716 = load i8, ptr %703, align 1, !tbaa !44
  %717 = zext i8 %716 to i64
  %718 = shl nuw nsw i64 %717, %713
  %719 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %705, i64 %718), !nosanitize !47
  %720 = extractvalue { i64, i1 } %719, 1, !nosanitize !47
  br i1 %720, label %721, label %722, !prof !48, !nosanitize !47

721:                                              ; preds = %730, %715
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

722:                                              ; preds = %715
  %723 = extractvalue { i64, i1 } %719, 0, !nosanitize !47
  %724 = getelementptr inbounds nuw i8, ptr %703, i64 1
  %725 = add i32 %704, -1
  %726 = add nuw nsw i64 %713, 8
  %727 = icmp ult i32 %706, 8
  br i1 %727, label %728, label %741

728:                                              ; preds = %722
  %729 = icmp eq i32 %725, 0
  br i1 %729, label %2368, label %730

730:                                              ; preds = %728
  %731 = load i8, ptr %724, align 1, !tbaa !44
  %732 = zext i8 %731 to i64
  %733 = shl nuw nsw i64 %732, %726
  %734 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %723, i64 %733), !nosanitize !47
  %735 = extractvalue { i64, i1 } %734, 1, !nosanitize !47
  br i1 %735, label %721, label %736, !prof !48, !nosanitize !47

736:                                              ; preds = %730
  %737 = extractvalue { i64, i1 } %734, 0, !nosanitize !47
  %738 = getelementptr inbounds nuw i8, ptr %703, i64 2
  %739 = add i32 %704, -2
  %740 = or disjoint i64 %713, 16
  br label %741

741:                                              ; preds = %736, %722
  %742 = phi i64 [ %723, %722 ], [ %737, %736 ]
  %743 = phi ptr [ %724, %722 ], [ %738, %736 ]
  %744 = phi i32 [ %725, %722 ], [ %739, %736 ]
  %745 = phi i64 [ %726, %722 ], [ %740, %736 ]
  %746 = trunc nuw nsw i64 %745 to i32
  br label %747

747:                                              ; preds = %741, %710
  %748 = phi ptr [ %703, %710 ], [ %743, %741 ]
  %749 = phi i32 [ %704, %710 ], [ %744, %741 ]
  %750 = phi i64 [ %705, %710 ], [ %742, %741 ]
  %751 = phi i32 [ %706, %710 ], [ %746, %741 ]
  %752 = load i32, ptr %49, align 8, !tbaa !24
  %753 = and i32 %752, 4
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %760, label %755

755:                                              ; preds = %747
  %756 = load i64, ptr %53, align 8, !tbaa !54
  %757 = and i64 %756, 65535
  %758 = icmp eq i64 %750, %757
  br i1 %758, label %760, label %759

759:                                              ; preds = %755
  store ptr @.str.5, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

760:                                              ; preds = %755, %747, %702
  %761 = phi ptr [ %703, %702 ], [ %748, %747 ], [ %748, %755 ]
  %762 = phi i32 [ %704, %702 ], [ %749, %747 ], [ %749, %755 ]
  %763 = phi i64 [ %705, %702 ], [ 0, %747 ], [ 0, %755 ]
  %764 = phi i32 [ %706, %702 ], [ 0, %747 ], [ 0, %755 ]
  %765 = load ptr, ptr %84, align 8, !tbaa !30
  %766 = icmp eq ptr %765, null
  br i1 %766, label %772, label %767

767:                                              ; preds = %760
  %768 = lshr i32 %707, 9
  %769 = and i32 %768, 1
  %770 = getelementptr inbounds nuw i8, ptr %765, i64 68
  store i32 %769, ptr %770, align 4, !tbaa !72
  %771 = getelementptr inbounds nuw i8, ptr %765, i64 72
  store i32 1, ptr %771, align 8, !tbaa !55
  br label %772

772:                                              ; preds = %767, %760
  %773 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %773, ptr %53, align 8, !tbaa !54
  store i64 %773, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2346

774:                                              ; preds = %112
  %775 = load i8, ptr %90, align 1, !tbaa !44
  %776 = zext i8 %775 to i64
  %777 = shl nuw nsw i64 %776, %113
  %778 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %777), !nosanitize !47
  %779 = extractvalue { i64, i1 } %778, 1, !nosanitize !47
  br i1 %779, label %780, label %781, !prof !48, !nosanitize !47

780:                                              ; preds = %817, %803, %789, %774
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

781:                                              ; preds = %774
  %782 = extractvalue { i64, i1 } %778, 0, !nosanitize !47
  %783 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %784 = add i32 %92, -1
  %785 = add nuw nsw i64 %113, 8
  %786 = icmp ult i32 %95, 24
  br i1 %786, label %787, label %827

787:                                              ; preds = %781
  %788 = icmp eq i32 %784, 0
  br i1 %788, label %2398, label %789

789:                                              ; preds = %787
  %790 = load i8, ptr %783, align 1, !tbaa !44
  %791 = zext i8 %790 to i64
  %792 = shl nuw nsw i64 %791, %785
  %793 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %782, i64 %792), !nosanitize !47
  %794 = extractvalue { i64, i1 } %793, 1, !nosanitize !47
  br i1 %794, label %780, label %795, !prof !48, !nosanitize !47

795:                                              ; preds = %789
  %796 = extractvalue { i64, i1 } %793, 0, !nosanitize !47
  %797 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %798 = add i32 %92, -2
  %799 = add nuw nsw i64 %113, 16
  %800 = icmp ult i32 %95, 16
  br i1 %800, label %801, label %827

801:                                              ; preds = %795
  %802 = icmp eq i32 %798, 0
  br i1 %802, label %2398, label %803

803:                                              ; preds = %801
  %804 = load i8, ptr %797, align 1, !tbaa !44
  %805 = zext i8 %804 to i64
  %806 = shl nuw nsw i64 %805, %799
  %807 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %796, i64 %806), !nosanitize !47
  %808 = extractvalue { i64, i1 } %807, 1, !nosanitize !47
  br i1 %808, label %780, label %809, !prof !48, !nosanitize !47

809:                                              ; preds = %803
  %810 = extractvalue { i64, i1 } %807, 0, !nosanitize !47
  %811 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %812 = add i32 %92, -3
  %813 = add nuw nsw i64 %113, 24
  %814 = icmp ult i32 %95, 8
  br i1 %814, label %815, label %827

815:                                              ; preds = %809
  %816 = icmp eq i32 %812, 0
  br i1 %816, label %2398, label %817

817:                                              ; preds = %815
  %818 = load i8, ptr %811, align 1, !tbaa !44
  %819 = zext i8 %818 to i64
  %820 = shl nuw nsw i64 %819, %813
  %821 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %810, i64 %820), !nosanitize !47
  %822 = extractvalue { i64, i1 } %821, 1, !nosanitize !47
  br i1 %822, label %780, label %823, !prof !48, !nosanitize !47

823:                                              ; preds = %817
  %824 = extractvalue { i64, i1 } %821, 0, !nosanitize !47
  %825 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %826 = add i32 %92, -4
  br label %827

827:                                              ; preds = %823, %809, %795, %781, %110
  %828 = phi ptr [ %90, %110 ], [ %783, %781 ], [ %797, %795 ], [ %811, %809 ], [ %825, %823 ]
  %829 = phi i32 [ %92, %110 ], [ %784, %781 ], [ %798, %795 ], [ %812, %809 ], [ %826, %823 ]
  %830 = phi i64 [ %94, %110 ], [ %782, %781 ], [ %796, %795 ], [ %810, %809 ], [ %824, %823 ]
  %831 = trunc i64 %830 to i32
  %832 = call i32 @llvm.bswap.i32(i32 %831)
  %833 = zext i32 %832 to i64
  store i64 %833, ptr %53, align 8, !tbaa !54
  store i64 %833, ptr %54, align 8, !tbaa !25
  store i32 16190, ptr %21, align 8, !tbaa !20
  br label %834

834:                                              ; preds = %827, %88
  %835 = phi ptr [ %828, %827 ], [ %90, %88 ]
  %836 = phi i32 [ %829, %827 ], [ %92, %88 ]
  %837 = phi i64 [ 0, %827 ], [ %94, %88 ]
  %838 = phi i32 [ 0, %827 ], [ %95, %88 ]
  %839 = load i32, ptr %80, align 4, !tbaa !27
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %841, label %842

841:                                              ; preds = %834
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %835, ptr %0, align 8, !tbaa !50
  store i32 %836, ptr %43, align 8, !tbaa !51
  store i64 %837, ptr %45, align 8, !tbaa !31
  store i32 %838, ptr %47, align 8, !tbaa !32
  br label %2670

842:                                              ; preds = %834
  %843 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %843, ptr %53, align 8, !tbaa !54
  store i64 %843, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %844

844:                                              ; preds = %842, %88
  %845 = phi ptr [ %835, %842 ], [ %90, %88 ]
  %846 = phi i32 [ %836, %842 ], [ %92, %88 ]
  %847 = phi i64 [ %837, %842 ], [ %94, %88 ]
  %848 = phi i32 [ %838, %842 ], [ %95, %88 ]
  br i1 %82, label %2480, label %849

849:                                              ; preds = %844, %88
  %850 = phi ptr [ %845, %844 ], [ %90, %88 ]
  %851 = phi i32 [ %846, %844 ], [ %92, %88 ]
  %852 = phi i64 [ %847, %844 ], [ %94, %88 ]
  %853 = phi i32 [ %848, %844 ], [ %95, %88 ]
  %854 = load i32, ptr %83, align 4, !tbaa !26
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %861

856:                                              ; preds = %849
  %857 = icmp ult i32 %853, 3
  br i1 %857, label %858, label %879

858:                                              ; preds = %856
  %859 = or disjoint i32 %853, 8
  %860 = icmp eq i32 %851, 0
  br i1 %860, label %2480, label %867

861:                                              ; preds = %849
  %862 = and i32 %853, 7
  %863 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %853, i32 %862), !nosanitize !47
  %864 = extractvalue { i32, i1 } %863, 0, !nosanitize !47
  %865 = zext nneg i32 %862 to i64
  %866 = lshr i64 %852, %865
  store i32 16206, ptr %21, align 8, !tbaa !20
  br label %2346

867:                                              ; preds = %858
  %868 = load i8, ptr %850, align 1, !tbaa !44
  %869 = zext i8 %868 to i64
  %870 = zext nneg i32 %853 to i64
  %871 = shl nuw nsw i64 %869, %870
  %872 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %852, i64 %871), !nosanitize !47
  %873 = extractvalue { i64, i1 } %872, 1, !nosanitize !47
  br i1 %873, label %874, label %875, !prof !48, !nosanitize !47

874:                                              ; preds = %867
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

875:                                              ; preds = %867
  %876 = extractvalue { i64, i1 } %872, 0, !nosanitize !47
  %877 = getelementptr inbounds nuw i8, ptr %850, i64 1
  %878 = add i32 %851, -1
  br label %879

879:                                              ; preds = %875, %856
  %880 = phi ptr [ %877, %875 ], [ %850, %856 ]
  %881 = phi i32 [ %878, %875 ], [ %851, %856 ]
  %882 = phi i64 [ %876, %875 ], [ %852, %856 ]
  %883 = phi i32 [ %859, %875 ], [ %853, %856 ]
  %884 = trunc i64 %882 to i32
  %885 = and i32 %884, 1
  store i32 %885, ptr %83, align 4, !tbaa !26
  %886 = lshr i32 %884, 1
  %887 = and i32 %886, 3
  switch i32 %887, label %893 [
    i32 0, label %895
    i32 1, label %888
    i32 2, label %892
    i32 3, label %894
  ]

888:                                              ; preds = %879
  call void @inflate_fixed(ptr noundef nonnull %15) #12
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %889, label %897

889:                                              ; preds = %888
  %890 = add i32 %883, -3
  %891 = lshr i64 %882, 3
  br label %2480

892:                                              ; preds = %879
  br label %895

893:                                              ; preds = %879
  unreachable

894:                                              ; preds = %879
  store ptr @.str.6, ptr %55, align 8, !tbaa !45
  br label %895

895:                                              ; preds = %894, %892, %879
  %896 = phi i32 [ 16209, %894 ], [ 16196, %892 ], [ 16193, %879 ]
  store i32 %896, ptr %21, align 8, !tbaa !20
  br label %897

897:                                              ; preds = %895, %888
  %898 = add i32 %883, -3
  %899 = lshr i64 %882, 3
  br label %2346

900:                                              ; preds = %88
  %901 = and i32 %95, 7
  %902 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %95, i32 %901), !nosanitize !47
  %903 = zext nneg i32 %901 to i64
  %904 = lshr i64 %94, %903
  %905 = extractvalue { i32, i1 } %902, 0
  %906 = icmp ult i32 %905, 32
  br i1 %906, label %907, label %970

907:                                              ; preds = %900
  %908 = and i32 %95, -8
  %909 = zext i32 %908 to i64
  %910 = icmp eq i32 %92, 0
  br i1 %910, label %2404, label %911

911:                                              ; preds = %907
  %912 = load i8, ptr %90, align 1, !tbaa !44
  %913 = zext i8 %912 to i64
  %914 = shl nuw nsw i64 %913, %909
  %915 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %904, i64 %914), !nosanitize !47
  %916 = extractvalue { i64, i1 } %915, 1, !nosanitize !47
  br i1 %916, label %917, label %918, !prof !48, !nosanitize !47

917:                                              ; preds = %954, %940, %926, %911
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

918:                                              ; preds = %911
  %919 = extractvalue { i64, i1 } %915, 0, !nosanitize !47
  %920 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %921 = add i32 %92, -1
  %922 = add nuw nsw i64 %909, 8
  %923 = icmp ult i32 %95, 24
  br i1 %923, label %924, label %964

924:                                              ; preds = %918
  %925 = icmp eq i32 %921, 0
  br i1 %925, label %2404, label %926

926:                                              ; preds = %924
  %927 = load i8, ptr %920, align 1, !tbaa !44
  %928 = zext i8 %927 to i64
  %929 = shl nuw nsw i64 %928, %922
  %930 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %919, i64 %929), !nosanitize !47
  %931 = extractvalue { i64, i1 } %930, 1, !nosanitize !47
  br i1 %931, label %917, label %932, !prof !48, !nosanitize !47

932:                                              ; preds = %926
  %933 = extractvalue { i64, i1 } %930, 0, !nosanitize !47
  %934 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %935 = add i32 %92, -2
  %936 = add nuw nsw i64 %909, 16
  %937 = icmp ult i32 %95, 16
  br i1 %937, label %938, label %964

938:                                              ; preds = %932
  %939 = icmp eq i32 %935, 0
  br i1 %939, label %2404, label %940

940:                                              ; preds = %938
  %941 = load i8, ptr %934, align 1, !tbaa !44
  %942 = zext i8 %941 to i64
  %943 = shl nuw nsw i64 %942, %936
  %944 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %933, i64 %943), !nosanitize !47
  %945 = extractvalue { i64, i1 } %944, 1, !nosanitize !47
  br i1 %945, label %917, label %946, !prof !48, !nosanitize !47

946:                                              ; preds = %940
  %947 = extractvalue { i64, i1 } %944, 0, !nosanitize !47
  %948 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %949 = add i32 %92, -3
  %950 = add nuw nsw i64 %909, 24
  %951 = icmp eq i32 %908, 0
  br i1 %951, label %952, label %964

952:                                              ; preds = %946
  %953 = icmp eq i32 %949, 0
  br i1 %953, label %2404, label %954

954:                                              ; preds = %952
  %955 = load i8, ptr %948, align 1, !tbaa !44
  %956 = zext i8 %955 to i64
  %957 = shl nuw nsw i64 %956, %950
  %958 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %947, i64 %957), !nosanitize !47
  %959 = extractvalue { i64, i1 } %958, 1, !nosanitize !47
  br i1 %959, label %917, label %960, !prof !48, !nosanitize !47

960:                                              ; preds = %954
  %961 = extractvalue { i64, i1 } %958, 0, !nosanitize !47
  %962 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %963 = add i32 %92, -4
  br label %964

964:                                              ; preds = %960, %946, %932, %918
  %965 = phi i64 [ %919, %918 ], [ %933, %932 ], [ %947, %946 ], [ %961, %960 ]
  %966 = phi ptr [ %920, %918 ], [ %934, %932 ], [ %948, %946 ], [ %962, %960 ]
  %967 = phi i32 [ %921, %918 ], [ %935, %932 ], [ %949, %946 ], [ %963, %960 ]
  %968 = phi i64 [ %922, %918 ], [ %936, %932 ], [ %950, %946 ], [ 32, %960 ]
  %969 = trunc nuw nsw i64 %968 to i32
  br label %970

970:                                              ; preds = %964, %900
  %971 = phi ptr [ %90, %900 ], [ %966, %964 ]
  %972 = phi i32 [ %92, %900 ], [ %967, %964 ]
  %973 = phi i64 [ %904, %900 ], [ %965, %964 ]
  %974 = phi i32 [ %905, %900 ], [ %969, %964 ]
  %975 = and i64 %973, 65535
  %976 = lshr i64 %973, 16
  %977 = xor i64 %976, %975
  %978 = icmp eq i64 %977, 65535
  br i1 %978, label %980, label %979

979:                                              ; preds = %970
  store ptr @.str.7, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

980:                                              ; preds = %970
  %981 = trunc i64 %973 to i32
  %982 = and i32 %981, 65535
  store i32 %982, ptr %56, align 4, !tbaa !61
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2480, label %983

983:                                              ; preds = %980, %88
  %984 = phi ptr [ %971, %980 ], [ %90, %88 ]
  %985 = phi i32 [ %972, %980 ], [ %92, %88 ]
  %986 = phi i64 [ 0, %980 ], [ %94, %88 ]
  %987 = phi i32 [ 0, %980 ], [ %95, %88 ]
  store i32 16195, ptr %21, align 8, !tbaa !20
  br label %988

988:                                              ; preds = %983, %88
  %989 = phi ptr [ %984, %983 ], [ %90, %88 ]
  %990 = phi i32 [ %985, %983 ], [ %92, %88 ]
  %991 = phi i64 [ %986, %983 ], [ %94, %88 ]
  %992 = phi i32 [ %987, %983 ], [ %95, %88 ]
  %993 = load i32, ptr %56, align 4, !tbaa !61
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1016, label %995

995:                                              ; preds = %988
  %996 = call i32 @llvm.umin.i32(i32 %993, i32 %990)
  %997 = call i32 @llvm.umin.i32(i32 %996, i32 %93)
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %2480, label %999

999:                                              ; preds = %995
  %1000 = zext i32 %997 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr align 1 %989, i64 %1000, i1 false)
  %1001 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %990, i32 %997), !nosanitize !47
  %1002 = extractvalue { i32, i1 } %1001, 0, !nosanitize !47
  %1003 = extractvalue { i32, i1 } %1001, 1, !nosanitize !47
  br i1 %1003, label %1004, label %1005, !prof !48, !nosanitize !47

1004:                                             ; preds = %999
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1005:                                             ; preds = %999
  %1006 = getelementptr inbounds nuw i8, ptr %989, i64 %1000
  %1007 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %997), !nosanitize !47
  %1008 = extractvalue { i32, i1 } %1007, 0, !nosanitize !47
  %1009 = load i32, ptr %56, align 4, !tbaa !61
  %1010 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1009, i32 %997), !nosanitize !47
  %1011 = extractvalue { i32, i1 } %1010, 1, !nosanitize !47
  br i1 %1011, label %1012, label %1013, !prof !48, !nosanitize !47

1012:                                             ; preds = %1005
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1013:                                             ; preds = %1005
  %1014 = extractvalue { i32, i1 } %1010, 0, !nosanitize !47
  %1015 = getelementptr inbounds nuw i8, ptr %91, i64 %1000
  store i32 %1014, ptr %56, align 4, !tbaa !61
  br label %2346

1016:                                             ; preds = %988
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2346

1017:                                             ; preds = %107
  %1018 = load i8, ptr %90, align 1, !tbaa !44
  %1019 = zext i8 %1018 to i64
  %1020 = shl nuw nsw i64 %1019, %108
  %1021 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %1020), !nosanitize !47
  %1022 = extractvalue { i64, i1 } %1021, 1, !nosanitize !47
  br i1 %1022, label %1023, label %1024, !prof !48, !nosanitize !47

1023:                                             ; preds = %1032, %1017
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1024:                                             ; preds = %1017
  %1025 = extractvalue { i64, i1 } %1021, 0, !nosanitize !47
  %1026 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %1027 = add i32 %92, -1
  %1028 = add nuw nsw i64 %108, 8
  %1029 = icmp ult i32 %95, 6
  br i1 %1029, label %1030, label %1043

1030:                                             ; preds = %1024
  %1031 = icmp eq i32 %1027, 0
  br i1 %1031, label %2461, label %1032

1032:                                             ; preds = %1030
  %1033 = load i8, ptr %1026, align 1, !tbaa !44
  %1034 = zext i8 %1033 to i64
  %1035 = shl nuw nsw i64 %1034, %1028
  %1036 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1025, i64 %1035), !nosanitize !47
  %1037 = extractvalue { i64, i1 } %1036, 1, !nosanitize !47
  br i1 %1037, label %1023, label %1038, !prof !48, !nosanitize !47

1038:                                             ; preds = %1032
  %1039 = extractvalue { i64, i1 } %1036, 0, !nosanitize !47
  %1040 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %1041 = add i32 %92, -2
  %1042 = or disjoint i64 %108, 16
  br label %1043

1043:                                             ; preds = %1038, %1024
  %1044 = phi i64 [ %1025, %1024 ], [ %1039, %1038 ]
  %1045 = phi ptr [ %1026, %1024 ], [ %1040, %1038 ]
  %1046 = phi i32 [ %1027, %1024 ], [ %1041, %1038 ]
  %1047 = phi i64 [ %1028, %1024 ], [ %1042, %1038 ]
  %1048 = trunc nuw nsw i64 %1047 to i32
  br label %1049

1049:                                             ; preds = %1043, %105
  %1050 = phi ptr [ %90, %105 ], [ %1045, %1043 ]
  %1051 = phi i32 [ %92, %105 ], [ %1046, %1043 ]
  %1052 = phi i64 [ %94, %105 ], [ %1044, %1043 ]
  %1053 = phi i32 [ %95, %105 ], [ %1048, %1043 ]
  %1054 = trunc i64 %1052 to i32
  %1055 = and i32 %1054, 31
  %1056 = add nuw nsw i32 %1055, 257
  store i32 %1056, ptr %57, align 4, !tbaa !73
  %1057 = lshr i32 %1054, 5
  %1058 = and i32 %1057, 31
  %1059 = add nuw nsw i32 %1058, 1
  store i32 %1059, ptr %58, align 8, !tbaa !74
  %1060 = lshr i32 %1054, 10
  %1061 = and i32 %1060, 15
  %1062 = add nuw nsw i32 %1061, 4
  store i32 %1062, ptr %59, align 8, !tbaa !75
  %1063 = lshr i64 %1052, 14
  %1064 = add i32 %1053, -14
  %1065 = icmp samesign ugt i32 %1055, 29
  %1066 = icmp samesign ugt i32 %1058, 29
  %1067 = select i1 %1065, i1 true, i1 %1066
  br i1 %1067, label %1068, label %1069

1068:                                             ; preds = %1049
  store ptr @.str.8, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

1069:                                             ; preds = %1049
  store i32 0, ptr %60, align 4, !tbaa !76
  store i32 16197, ptr %21, align 8, !tbaa !20
  br label %1074

1070:                                             ; preds = %88
  %1071 = load i32, ptr %59, align 8, !tbaa !75
  %1072 = load i32, ptr %60, align 4, !tbaa !76
  %1073 = icmp ult i32 %1072, %1071
  br i1 %1073, label %1074, label %1083

1074:                                             ; preds = %1070, %1069
  %1075 = phi i32 [ %1064, %1069 ], [ %95, %1070 ]
  %1076 = phi i64 [ %1063, %1069 ], [ %94, %1070 ]
  %1077 = phi i32 [ %1051, %1069 ], [ %92, %1070 ]
  %1078 = phi ptr [ %1050, %1069 ], [ %90, %1070 ]
  %1079 = phi i32 [ %1062, %1069 ], [ %1071, %1070 ]
  %1080 = phi i32 [ 0, %1069 ], [ %1072, %1070 ]
  %1081 = zext i32 %1080 to i64
  %1082 = zext i32 %1079 to i64
  br label %1092

1083:                                             ; preds = %1114, %1070
  %1084 = phi ptr [ %90, %1070 ], [ %1115, %1114 ]
  %1085 = phi i32 [ %92, %1070 ], [ %1116, %1114 ]
  %1086 = phi i64 [ %94, %1070 ], [ %1128, %1114 ]
  %1087 = phi i32 [ %95, %1070 ], [ %1127, %1114 ]
  %1088 = phi i32 [ %1072, %1070 ], [ %1079, %1114 ]
  %1089 = icmp ult i32 %1088, 19
  br i1 %1089, label %1090, label %1140

1090:                                             ; preds = %1083
  %1091 = zext nneg i32 %1088 to i64
  br label %1130

1092:                                             ; preds = %1114, %1074
  %1093 = phi i64 [ %1081, %1074 ], [ %1119, %1114 ]
  %1094 = phi i32 [ %1075, %1074 ], [ %1127, %1114 ]
  %1095 = phi i64 [ %1076, %1074 ], [ %1128, %1114 ]
  %1096 = phi i32 [ %1077, %1074 ], [ %1116, %1114 ]
  %1097 = phi ptr [ %1078, %1074 ], [ %1115, %1114 ]
  %1098 = icmp ult i32 %1094, 3
  br i1 %1098, label %1099, label %1114

1099:                                             ; preds = %1092
  %1100 = or disjoint i32 %1094, 8
  %1101 = icmp eq i32 %1096, 0
  br i1 %1101, label %2480, label %1102

1102:                                             ; preds = %1099
  %1103 = load i8, ptr %1097, align 1, !tbaa !44
  %1104 = zext i8 %1103 to i64
  %1105 = zext nneg i32 %1094 to i64
  %1106 = shl nuw nsw i64 %1104, %1105
  %1107 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1095, i64 %1106), !nosanitize !47
  %1108 = extractvalue { i64, i1 } %1107, 1, !nosanitize !47
  br i1 %1108, label %1109, label %1110, !prof !48, !nosanitize !47

1109:                                             ; preds = %1102
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1110:                                             ; preds = %1102
  %1111 = extractvalue { i64, i1 } %1107, 0, !nosanitize !47
  %1112 = getelementptr inbounds nuw i8, ptr %1097, i64 1
  %1113 = add i32 %1096, -1
  br label %1114

1114:                                             ; preds = %1110, %1092
  %1115 = phi ptr [ %1112, %1110 ], [ %1097, %1092 ]
  %1116 = phi i32 [ %1113, %1110 ], [ %1096, %1092 ]
  %1117 = phi i64 [ %1111, %1110 ], [ %1095, %1092 ]
  %1118 = phi i32 [ %1100, %1110 ], [ %1094, %1092 ]
  %1119 = add nuw nsw i64 %1093, 1
  %1120 = trunc i64 %1117 to i16
  %1121 = and i16 %1120, 7
  %1122 = trunc nuw i64 %1119 to i32
  store i32 %1122, ptr %60, align 4, !tbaa !76
  %1123 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1093
  %1124 = load i16, ptr %1123, align 2, !tbaa !77
  %1125 = zext i16 %1124 to i64
  %1126 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1125
  store i16 %1121, ptr %1126, align 2, !tbaa !77
  %1127 = add i32 %1118, -3
  %1128 = lshr i64 %1117, 3
  %1129 = icmp eq i64 %1119, %1082
  br i1 %1129, label %1083, label %1092, !llvm.loop !79

1130:                                             ; preds = %1130, %1090
  %1131 = phi i64 [ %1091, %1090 ], [ %1132, %1130 ]
  %1132 = add nuw nsw i64 %1131, 1
  %1133 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1131
  %1134 = load i16, ptr %1133, align 2, !tbaa !77
  %1135 = zext i16 %1134 to i64
  %1136 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1135
  store i16 0, ptr %1136, align 2, !tbaa !77
  %1137 = and i64 %1132, 4294967295
  %1138 = icmp eq i64 %1137, 19
  br i1 %1138, label %1139, label %1130, !llvm.loop !80

1139:                                             ; preds = %1130
  store i32 19, ptr %60, align 4, !tbaa !76
  br label %1140

1140:                                             ; preds = %1139, %1083
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %64, align 8, !tbaa !34
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 7, ptr %66, align 8, !tbaa !81
  %1141 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1144, label %1143

1143:                                             ; preds = %1140
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

1144:                                             ; preds = %1140
  store i32 0, ptr %60, align 4, !tbaa !76
  store i32 16198, ptr %21, align 8, !tbaa !20
  br label %1145

1145:                                             ; preds = %1144, %88
  %1146 = phi ptr [ %1084, %1144 ], [ %90, %88 ]
  %1147 = phi i32 [ %1085, %1144 ], [ %92, %88 ]
  %1148 = phi i64 [ %1086, %1144 ], [ %94, %88 ]
  %1149 = phi i32 [ %1087, %1144 ], [ %95, %88 ]
  %1150 = phi i32 [ 0, %1144 ], [ %97, %88 ]
  %1151 = load i32, ptr %57, align 4, !tbaa !73
  %1152 = load i32, ptr %58, align 8, !tbaa !74
  %1153 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1151, i32 %1152), !nosanitize !47
  %1154 = extractvalue { i32, i1 } %1153, 1, !nosanitize !47
  br i1 %1154, label %1167, label %1155, !prof !82, !nosanitize !47

1155:                                             ; preds = %1145
  %1156 = extractvalue { i32, i1 } %1153, 0, !nosanitize !47
  %1157 = load i32, ptr %60, align 4, !tbaa !76
  %1158 = call i32 @llvm.umax.i32(i32 %1157, i32 %1156)
  %1159 = zext i32 %1158 to i64
  %1160 = icmp ult i32 %1157, %1156
  br i1 %1160, label %1161, label %1438

1161:                                             ; preds = %1155
  %1162 = zext i32 %1157 to i64
  %1163 = load i32, ptr %66, align 8, !tbaa !81
  %1164 = shl nsw i32 -1, %1163
  %1165 = xor i32 %1164, -1
  %1166 = load ptr, ptr %65, align 8, !tbaa !35
  br label %1168

1167:                                             ; preds = %1145
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1168:                                             ; preds = %1433, %1161
  %1169 = phi ptr [ %1146, %1161 ], [ %1218, %1433 ]
  %1170 = phi i32 [ %1147, %1161 ], [ %1219, %1433 ]
  %1171 = phi i64 [ %1148, %1161 ], [ %1230, %1433 ]
  %1172 = phi i32 [ %1149, %1161 ], [ %1232, %1433 ]
  %1173 = phi i64 [ %1162, %1161 ], [ %1434, %1433 ]
  %1174 = phi i32 [ %1157, %1161 ], [ %1435, %1433 ]
  %1175 = trunc i64 %1171 to i32
  %1176 = and i32 %1165, %1175
  %1177 = zext nneg i32 %1176 to i64
  %1178 = getelementptr inbounds nuw [4 x i8], ptr %1166, i64 %1177
  %1179 = getelementptr inbounds nuw i8, ptr %1178, i64 1
  %1180 = load i8, ptr %1179, align 1, !tbaa !44
  %1181 = zext i8 %1180 to i32
  %1182 = icmp ult i32 %1172, %1181
  br i1 %1182, label %1183, label %1216

1183:                                             ; preds = %1168
  %1184 = icmp eq i32 %1170, 0
  br i1 %1184, label %2356, label %1185

1185:                                             ; preds = %1183
  %1186 = zext nneg i32 %1172 to i64
  br label %1189

1187:                                             ; preds = %1200
  %1188 = icmp eq i32 %1203, 0
  br i1 %1188, label %2356, label %1189

1189:                                             ; preds = %1187, %1185
  %1190 = phi ptr [ %1169, %1185 ], [ %1202, %1187 ]
  %1191 = phi i32 [ %1170, %1185 ], [ %1203, %1187 ]
  %1192 = phi i64 [ %1171, %1185 ], [ %1201, %1187 ]
  %1193 = phi i64 [ %1186, %1185 ], [ %1204, %1187 ]
  %1194 = load i8, ptr %1190, align 1, !tbaa !44
  %1195 = zext i8 %1194 to i64
  %1196 = shl i64 %1195, %1193
  %1197 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1192, i64 %1196), !nosanitize !47
  %1198 = extractvalue { i64, i1 } %1197, 1, !nosanitize !47
  br i1 %1198, label %1199, label %1200, !prof !48, !nosanitize !47

1199:                                             ; preds = %1189
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1200:                                             ; preds = %1189
  %1201 = extractvalue { i64, i1 } %1197, 0, !nosanitize !47
  %1202 = getelementptr inbounds nuw i8, ptr %1190, i64 1
  %1203 = add i32 %1191, -1
  %1204 = add nuw nsw i64 %1193, 8
  %1205 = trunc i64 %1201 to i32
  %1206 = and i32 %1165, %1205
  %1207 = zext nneg i32 %1206 to i64
  %1208 = getelementptr inbounds nuw [4 x i8], ptr %1166, i64 %1207
  %1209 = getelementptr inbounds nuw i8, ptr %1208, i64 1
  %1210 = load i8, ptr %1209, align 1, !tbaa !44
  %1211 = zext i8 %1210 to i64
  %1212 = icmp samesign ult i64 %1204, %1211
  br i1 %1212, label %1187, label %1213

1213:                                             ; preds = %1200
  %1214 = zext i8 %1210 to i32
  %1215 = trunc nuw nsw i64 %1204 to i32
  br label %1216

1216:                                             ; preds = %1213, %1168
  %1217 = phi i64 [ %1177, %1168 ], [ %1207, %1213 ]
  %1218 = phi ptr [ %1169, %1168 ], [ %1202, %1213 ]
  %1219 = phi i32 [ %1170, %1168 ], [ %1203, %1213 ]
  %1220 = phi i64 [ %1171, %1168 ], [ %1201, %1213 ]
  %1221 = phi i32 [ %1172, %1168 ], [ %1215, %1213 ]
  %1222 = phi i8 [ %1180, %1168 ], [ %1210, %1213 ]
  %1223 = phi i32 [ %1181, %1168 ], [ %1214, %1213 ]
  %1224 = getelementptr inbounds nuw [4 x i8], ptr %1166, i64 %1217
  %1225 = getelementptr inbounds nuw i8, ptr %1224, i64 2
  %1226 = load i16, ptr %1225, align 2, !tbaa !77
  %1227 = icmp ult i16 %1226, 16
  br i1 %1227, label %1228, label %1238

1228:                                             ; preds = %1216
  %1229 = zext nneg i8 %1222 to i64
  %1230 = lshr i64 %1220, %1229
  %1231 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1221, i32 %1223), !nosanitize !47
  %1232 = extractvalue { i32, i1 } %1231, 0, !nosanitize !47
  %1233 = extractvalue { i32, i1 } %1231, 1, !nosanitize !47
  br i1 %1233, label %1234, label %1235, !prof !48, !nosanitize !47

1234:                                             ; preds = %1228
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1235:                                             ; preds = %1228
  %1236 = icmp eq i64 %1173, 4294967295
  br i1 %1236, label %1237, label %1433, !prof !48, !nosanitize !47

1237:                                             ; preds = %1235
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1238:                                             ; preds = %1216
  %1239 = trunc nuw i64 %1173 to i32
  switch i16 %1226, label %1252 [
    i16 16, label %1246
    i16 17, label %1240
  ]

1240:                                             ; preds = %1238
  %1241 = add nuw nsw i32 %1223, 3
  %1242 = icmp ult i32 %1221, %1241
  br i1 %1242, label %1243, label %1323

1243:                                             ; preds = %1240
  %1244 = zext nneg i32 %1221 to i64
  %1245 = zext nneg i32 %1241 to i64
  br label %1302

1246:                                             ; preds = %1238
  %1247 = add nuw nsw i32 %1223, 2
  %1248 = icmp ult i32 %1221, %1247
  br i1 %1248, label %1249, label %1279

1249:                                             ; preds = %1246
  %1250 = zext nneg i32 %1221 to i64
  %1251 = zext nneg i32 %1247 to i64
  br label %1258

1252:                                             ; preds = %1238
  %1253 = add nuw nsw i32 %1223, 7
  %1254 = icmp ult i32 %1221, %1253
  br i1 %1254, label %1255, label %1360

1255:                                             ; preds = %1252
  %1256 = zext nneg i32 %1221 to i64
  %1257 = zext nneg i32 %1253 to i64
  br label %1339

1258:                                             ; preds = %1271, %1249
  %1259 = phi i64 [ %1250, %1249 ], [ %1275, %1271 ]
  %1260 = phi i64 [ %1220, %1249 ], [ %1272, %1271 ]
  %1261 = phi i32 [ %1219, %1249 ], [ %1274, %1271 ]
  %1262 = phi ptr [ %1218, %1249 ], [ %1273, %1271 ]
  %1263 = icmp eq i32 %1261, 0
  br i1 %1263, label %2451, label %1264

1264:                                             ; preds = %1258
  %1265 = load i8, ptr %1262, align 1, !tbaa !44
  %1266 = zext i8 %1265 to i64
  %1267 = shl i64 %1266, %1259
  %1268 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1260, i64 %1267), !nosanitize !47
  %1269 = extractvalue { i64, i1 } %1268, 1, !nosanitize !47
  br i1 %1269, label %1270, label %1271, !prof !48, !nosanitize !47

1270:                                             ; preds = %1264
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1271:                                             ; preds = %1264
  %1272 = extractvalue { i64, i1 } %1268, 0, !nosanitize !47
  %1273 = getelementptr inbounds nuw i8, ptr %1262, i64 1
  %1274 = add i32 %1261, -1
  %1275 = add nuw nsw i64 %1259, 8
  %1276 = icmp samesign ult i64 %1275, %1251
  br i1 %1276, label %1258, label %1277, !llvm.loop !83

1277:                                             ; preds = %1271
  %1278 = trunc nuw nsw i64 %1275 to i32
  br label %1279

1279:                                             ; preds = %1277, %1246
  %1280 = phi ptr [ %1218, %1246 ], [ %1273, %1277 ]
  %1281 = phi i32 [ %1219, %1246 ], [ %1274, %1277 ]
  %1282 = phi i64 [ %1220, %1246 ], [ %1272, %1277 ]
  %1283 = phi i32 [ %1221, %1246 ], [ %1278, %1277 ]
  %1284 = zext nneg i8 %1222 to i64
  %1285 = lshr i64 %1282, %1284
  %1286 = sub nuw i32 %1283, %1223
  %1287 = icmp eq i64 %1173, 0
  br i1 %1287, label %1288, label %1289

1288:                                             ; preds = %1279
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

1289:                                             ; preds = %1279
  %1290 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1286, i32 2), !nosanitize !47
  %1291 = extractvalue { i32, i1 } %1290, 1, !nosanitize !47
  br i1 %1291, label %1292, label %1293, !prof !48, !nosanitize !47

1292:                                             ; preds = %1289
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1293:                                             ; preds = %1289
  %1294 = trunc i64 %1285 to i32
  %1295 = and i32 %1294, 3
  %1296 = add nuw nsw i32 %1295, 3
  %1297 = add nuw i64 %1173, 4294967295
  %1298 = and i64 %1297, 4294967295
  %1299 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1298
  %1300 = load i16, ptr %1299, align 2, !tbaa !77
  %1301 = lshr i64 %1285, 2
  br label %1376

1302:                                             ; preds = %1315, %1243
  %1303 = phi i64 [ %1244, %1243 ], [ %1319, %1315 ]
  %1304 = phi i64 [ %1220, %1243 ], [ %1316, %1315 ]
  %1305 = phi i32 [ %1219, %1243 ], [ %1318, %1315 ]
  %1306 = phi ptr [ %1218, %1243 ], [ %1317, %1315 ]
  %1307 = icmp eq i32 %1305, 0
  br i1 %1307, label %2456, label %1308

1308:                                             ; preds = %1302
  %1309 = load i8, ptr %1306, align 1, !tbaa !44
  %1310 = zext i8 %1309 to i64
  %1311 = shl i64 %1310, %1303
  %1312 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1304, i64 %1311), !nosanitize !47
  %1313 = extractvalue { i64, i1 } %1312, 1, !nosanitize !47
  br i1 %1313, label %1314, label %1315, !prof !48, !nosanitize !47

1314:                                             ; preds = %1308
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1315:                                             ; preds = %1308
  %1316 = extractvalue { i64, i1 } %1312, 0, !nosanitize !47
  %1317 = getelementptr inbounds nuw i8, ptr %1306, i64 1
  %1318 = add i32 %1305, -1
  %1319 = add nuw nsw i64 %1303, 8
  %1320 = icmp samesign ult i64 %1319, %1245
  br i1 %1320, label %1302, label %1321, !llvm.loop !84

1321:                                             ; preds = %1315
  %1322 = trunc nuw nsw i64 %1319 to i32
  br label %1323

1323:                                             ; preds = %1321, %1240
  %1324 = phi ptr [ %1218, %1240 ], [ %1317, %1321 ]
  %1325 = phi i32 [ %1219, %1240 ], [ %1318, %1321 ]
  %1326 = phi i64 [ %1220, %1240 ], [ %1316, %1321 ]
  %1327 = phi i32 [ %1221, %1240 ], [ %1322, %1321 ]
  %1328 = sub nuw i32 %1327, %1223
  %1329 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1328, i32 3), !nosanitize !47
  %1330 = extractvalue { i32, i1 } %1329, 1, !nosanitize !47
  br i1 %1330, label %1331, label %1332, !prof !48, !nosanitize !47

1331:                                             ; preds = %1323
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1332:                                             ; preds = %1323
  %1333 = zext nneg i8 %1222 to i64
  %1334 = lshr i64 %1326, %1333
  %1335 = trunc i64 %1334 to i32
  %1336 = and i32 %1335, 7
  %1337 = add nuw nsw i32 %1336, 3
  %1338 = lshr i64 %1334, 3
  br label %1376

1339:                                             ; preds = %1352, %1255
  %1340 = phi i64 [ %1256, %1255 ], [ %1356, %1352 ]
  %1341 = phi i64 [ %1220, %1255 ], [ %1353, %1352 ]
  %1342 = phi i32 [ %1219, %1255 ], [ %1355, %1352 ]
  %1343 = phi ptr [ %1218, %1255 ], [ %1354, %1352 ]
  %1344 = icmp eq i32 %1342, 0
  br i1 %1344, label %2446, label %1345

1345:                                             ; preds = %1339
  %1346 = load i8, ptr %1343, align 1, !tbaa !44
  %1347 = zext i8 %1346 to i64
  %1348 = shl i64 %1347, %1340
  %1349 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1341, i64 %1348), !nosanitize !47
  %1350 = extractvalue { i64, i1 } %1349, 1, !nosanitize !47
  br i1 %1350, label %1351, label %1352, !prof !48, !nosanitize !47

1351:                                             ; preds = %1345
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1352:                                             ; preds = %1345
  %1353 = extractvalue { i64, i1 } %1349, 0, !nosanitize !47
  %1354 = getelementptr inbounds nuw i8, ptr %1343, i64 1
  %1355 = add i32 %1342, -1
  %1356 = add nuw nsw i64 %1340, 8
  %1357 = icmp samesign ult i64 %1356, %1257
  br i1 %1357, label %1339, label %1358, !llvm.loop !85

1358:                                             ; preds = %1352
  %1359 = trunc nuw nsw i64 %1356 to i32
  br label %1360

1360:                                             ; preds = %1358, %1252
  %1361 = phi ptr [ %1218, %1252 ], [ %1354, %1358 ]
  %1362 = phi i32 [ %1219, %1252 ], [ %1355, %1358 ]
  %1363 = phi i64 [ %1220, %1252 ], [ %1353, %1358 ]
  %1364 = phi i32 [ %1221, %1252 ], [ %1359, %1358 ]
  %1365 = sub nuw i32 %1364, %1223
  %1366 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1365, i32 7), !nosanitize !47
  %1367 = extractvalue { i32, i1 } %1366, 1, !nosanitize !47
  br i1 %1367, label %1368, label %1369, !prof !48, !nosanitize !47

1368:                                             ; preds = %1360
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1369:                                             ; preds = %1360
  %1370 = zext nneg i8 %1222 to i64
  %1371 = lshr i64 %1363, %1370
  %1372 = trunc i64 %1371 to i32
  %1373 = and i32 %1372, 127
  %1374 = add nuw nsw i32 %1373, 11
  %1375 = lshr i64 %1371, 7
  br label %1376

1376:                                             ; preds = %1369, %1332, %1293
  %1377 = phi ptr [ %1280, %1293 ], [ %1324, %1332 ], [ %1361, %1369 ]
  %1378 = phi i32 [ %1281, %1293 ], [ %1325, %1332 ], [ %1362, %1369 ]
  %1379 = phi i64 [ %1301, %1293 ], [ %1338, %1332 ], [ %1375, %1369 ]
  %1380 = phi { i32, i1 } [ %1290, %1293 ], [ %1329, %1332 ], [ %1366, %1369 ]
  %1381 = phi i32 [ %1296, %1293 ], [ %1337, %1332 ], [ %1374, %1369 ]
  %1382 = phi i16 [ %1300, %1293 ], [ 0, %1332 ], [ 0, %1369 ]
  %1383 = extractvalue { i32, i1 } %1380, 0
  %1384 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1239, i32 %1381), !nosanitize !47
  %1385 = extractvalue { i32, i1 } %1384, 1, !nosanitize !47
  br i1 %1385, label %1386, label %1387, !prof !48, !nosanitize !47

1386:                                             ; preds = %1376
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1387:                                             ; preds = %1376
  %1388 = extractvalue { i32, i1 } %1384, 0, !nosanitize !47
  %1389 = icmp ugt i32 %1388, %1156
  br i1 %1389, label %1409, label %1390

1390:                                             ; preds = %1387
  %1391 = freeze i32 %1174
  %1392 = icmp eq i32 %1391, -1
  br i1 %1392, label %1423, label %1393, !prof !82, !nosanitize !47

1393:                                             ; preds = %1390
  %1394 = zext i32 %1391 to i64
  %1395 = add nsw i32 %1381, -1
  %1396 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %1395, 0
  %1397 = and i64 %1394, 1
  %1398 = icmp eq i64 %1397, 0
  br i1 %1398, label %1399, label %1405, !prof !82

1399:                                             ; preds = %1393
  %1400 = or disjoint i64 %1394, 1
  %1401 = trunc nuw i64 %1400 to i32
  store i32 %1401, ptr %60, align 4, !tbaa !76
  %1402 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1394
  store i16 %1382, ptr %1402, align 2, !tbaa !77
  %1403 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1395, i32 1), !nosanitize !47
  %1404 = extractvalue { i32, i1 } %1403, 1, !nosanitize !47
  br i1 %1404, label %1412, label %1405, !prof !86, !llvm.loop !87, !nosanitize !47

1405:                                             ; preds = %1399, %1393
  %1406 = phi { i32, i1 } [ %1396, %1393 ], [ %1403, %1399 ]
  %1407 = phi i64 [ %1394, %1393 ], [ %1400, %1399 ]
  %1408 = icmp eq i32 %1391, -2
  br i1 %1408, label %1423, label %1424, !prof !82

1409:                                             ; preds = %1387
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

1410:                                             ; preds = %1424, %1413
  %1411 = phi i32 [ %1416, %1413 ], [ %1429, %1424 ]
  store i32 %1411, ptr %60, align 4, !tbaa !76
  br label %1412

1412:                                             ; preds = %1410, %1399
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1413:                                             ; preds = %1424
  %1414 = extractvalue { i32, i1 } %1431, 0
  %1415 = add nuw nsw i64 %1426, 2
  %1416 = trunc i64 %1415 to i32
  %1417 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1428
  store i16 %1382, ptr %1417, align 2, !tbaa !77
  %1418 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1414, i32 1), !nosanitize !47
  %1419 = extractvalue { i32, i1 } %1418, 1, !nosanitize !47
  br i1 %1419, label %1410, label %1420, !prof !86, !llvm.loop !87, !nosanitize !47

1420:                                             ; preds = %1413
  %1421 = icmp eq i64 %1415, 4294967295
  br i1 %1421, label %1422, label %1424, !prof !86, !llvm.loop !88, !nosanitize !47

1422:                                             ; preds = %1420
  store i32 %1416, ptr %60, align 4, !tbaa !76
  br label %1423

1423:                                             ; preds = %1422, %1405, %1390
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1424:                                             ; preds = %1420, %1405
  %1425 = phi { i32, i1 } [ %1418, %1420 ], [ %1406, %1405 ]
  %1426 = phi i64 [ %1415, %1420 ], [ %1407, %1405 ]
  %1427 = extractvalue { i32, i1 } %1425, 0
  %1428 = add nuw nsw i64 %1426, 1
  %1429 = trunc i64 %1428 to i32
  %1430 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1426
  store i16 %1382, ptr %1430, align 2, !tbaa !77
  %1431 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1427, i32 1), !nosanitize !47
  %1432 = extractvalue { i32, i1 } %1431, 1, !nosanitize !47
  br i1 %1432, label %1410, label %1413, !prof !86, !llvm.loop !87, !nosanitize !47

1433:                                             ; preds = %1235
  %1434 = add nuw nsw i64 %1173, 1
  %1435 = trunc i64 %1434 to i32
  store i32 %1435, ptr %60, align 4, !tbaa !76
  %1436 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1173
  store i16 %1226, ptr %1436, align 2, !tbaa !77
  %1437 = icmp eq i64 %1434, %1159
  br i1 %1437, label %1438, label %1168

1438:                                             ; preds = %1433, %1155
  %1439 = phi i32 [ %1149, %1155 ], [ %1232, %1433 ]
  %1440 = phi i64 [ %1148, %1155 ], [ %1230, %1433 ]
  %1441 = phi i32 [ %1147, %1155 ], [ %1219, %1433 ]
  %1442 = phi ptr [ %1146, %1155 ], [ %1218, %1433 ]
  %1443 = load i16, ptr %68, align 8, !tbaa !77
  %1444 = icmp eq i16 %1443, 0
  br i1 %1444, label %1445, label %1446

1445:                                             ; preds = %1438
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

1446:                                             ; preds = %1438
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !81
  %1447 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1151, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1448 = icmp eq i32 %1447, 0
  br i1 %1448, label %1450, label %1449

1449:                                             ; preds = %1446
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

1450:                                             ; preds = %1446
  %1451 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1451, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !90
  %1452 = load i32, ptr %57, align 4, !tbaa !73
  %1453 = zext i32 %1452 to i64
  %1454 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1453
  %1455 = load i32, ptr %58, align 8, !tbaa !74
  %1456 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1454, i32 noundef %1455, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #12
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1459, label %1458

1458:                                             ; preds = %1450
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

1459:                                             ; preds = %1450
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2480, label %1460

1460:                                             ; preds = %1459, %88
  %1461 = phi ptr [ %1442, %1459 ], [ %90, %88 ]
  %1462 = phi i32 [ %1441, %1459 ], [ %92, %88 ]
  %1463 = phi i64 [ %1440, %1459 ], [ %94, %88 ]
  %1464 = phi i32 [ %1439, %1459 ], [ %95, %88 ]
  %1465 = phi i32 [ 0, %1459 ], [ %97, %88 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1466

1466:                                             ; preds = %1460, %88
  %1467 = phi ptr [ %1461, %1460 ], [ %90, %88 ]
  %1468 = phi i32 [ %1462, %1460 ], [ %92, %88 ]
  %1469 = phi i64 [ %1463, %1460 ], [ %94, %88 ]
  %1470 = phi i32 [ %1464, %1460 ], [ %95, %88 ]
  %1471 = phi i32 [ %1465, %1460 ], [ %97, %88 ]
  %1472 = icmp ugt i32 %1468, 5
  %1473 = icmp ugt i32 %93, 257
  %1474 = select i1 %1472, i1 %1473, i1 false
  br i1 %1474, label %1475, label %1485

1475:                                             ; preds = %1466
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %1467, ptr %0, align 8, !tbaa !50
  store i32 %1468, ptr %43, align 8, !tbaa !51
  store i64 %1469, ptr %45, align 8, !tbaa !31
  store i32 %1470, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %96) #12
  %1476 = load ptr, ptr %26, align 8, !tbaa !49
  %1477 = load i32, ptr %41, align 8, !tbaa !52
  %1478 = load ptr, ptr %0, align 8, !tbaa !50
  %1479 = load i32, ptr %43, align 8, !tbaa !51
  %1480 = load i64, ptr %45, align 8, !tbaa !31
  %1481 = load i32, ptr %47, align 8, !tbaa !32
  %1482 = load i32, ptr %21, align 8, !tbaa !20
  %1483 = icmp eq i32 %1482, 16191
  br i1 %1483, label %1484, label %2346

1484:                                             ; preds = %1475
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2346

1485:                                             ; preds = %1466
  store i32 0, ptr %71, align 4, !tbaa !37
  %1486 = load i32, ptr %66, align 8, !tbaa !81
  %1487 = shl nsw i32 -1, %1486
  %1488 = xor i32 %1487, -1
  %1489 = load ptr, ptr %65, align 8, !tbaa !35
  %1490 = trunc i64 %1469 to i32
  %1491 = and i32 %1488, %1490
  %1492 = zext nneg i32 %1491 to i64
  %1493 = getelementptr inbounds nuw [4 x i8], ptr %1489, i64 %1492
  %1494 = getelementptr inbounds nuw i8, ptr %1493, i64 1
  %1495 = load i8, ptr %1494, align 1, !tbaa !44
  %1496 = zext i8 %1495 to i32
  %1497 = icmp ult i32 %1470, %1496
  br i1 %1497, label %1498, label %1531

1498:                                             ; preds = %1485
  %1499 = icmp eq i32 %1468, 0
  br i1 %1499, label %2440, label %1500

1500:                                             ; preds = %1498
  %1501 = zext nneg i32 %1470 to i64
  br label %1504

1502:                                             ; preds = %1515
  %1503 = icmp eq i32 %1518, 0
  br i1 %1503, label %2440, label %1504

1504:                                             ; preds = %1502, %1500
  %1505 = phi ptr [ %1467, %1500 ], [ %1517, %1502 ]
  %1506 = phi i32 [ %1468, %1500 ], [ %1518, %1502 ]
  %1507 = phi i64 [ %1469, %1500 ], [ %1516, %1502 ]
  %1508 = phi i64 [ %1501, %1500 ], [ %1519, %1502 ]
  %1509 = load i8, ptr %1505, align 1, !tbaa !44
  %1510 = zext i8 %1509 to i64
  %1511 = shl i64 %1510, %1508
  %1512 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1507, i64 %1511), !nosanitize !47
  %1513 = extractvalue { i64, i1 } %1512, 1, !nosanitize !47
  br i1 %1513, label %1514, label %1515, !prof !48, !nosanitize !47

1514:                                             ; preds = %1504
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1515:                                             ; preds = %1504
  %1516 = extractvalue { i64, i1 } %1512, 0, !nosanitize !47
  %1517 = getelementptr inbounds nuw i8, ptr %1505, i64 1
  %1518 = add i32 %1506, -1
  %1519 = add nuw nsw i64 %1508, 8
  %1520 = trunc i64 %1516 to i32
  %1521 = and i32 %1488, %1520
  %1522 = zext nneg i32 %1521 to i64
  %1523 = getelementptr inbounds nuw [4 x i8], ptr %1489, i64 %1522
  %1524 = getelementptr inbounds nuw i8, ptr %1523, i64 1
  %1525 = load i8, ptr %1524, align 1, !tbaa !44
  %1526 = zext i8 %1525 to i64
  %1527 = icmp samesign ult i64 %1519, %1526
  br i1 %1527, label %1502, label %1528

1528:                                             ; preds = %1515
  %1529 = zext i8 %1525 to i32
  %1530 = trunc nuw nsw i64 %1519 to i32
  br label %1531

1531:                                             ; preds = %1528, %1485
  %1532 = phi ptr [ %1493, %1485 ], [ %1523, %1528 ]
  %1533 = phi ptr [ %1467, %1485 ], [ %1517, %1528 ]
  %1534 = phi i32 [ %1468, %1485 ], [ %1518, %1528 ]
  %1535 = phi i64 [ %1469, %1485 ], [ %1516, %1528 ]
  %1536 = phi i32 [ %1470, %1485 ], [ %1530, %1528 ]
  %1537 = phi i8 [ %1495, %1485 ], [ %1525, %1528 ]
  %1538 = phi i32 [ %1496, %1485 ], [ %1529, %1528 ]
  %1539 = getelementptr inbounds nuw i8, ptr %1532, i64 2
  %1540 = load i16, ptr %1539, align 2, !tbaa !77
  %1541 = load i8, ptr %1532, align 2, !tbaa !44
  %1542 = add i8 %1541, -1
  %1543 = icmp ult i8 %1542, 15
  br i1 %1543, label %1544, label %1610

1544:                                             ; preds = %1531
  %1545 = zext nneg i8 %1541 to i32
  %1546 = add nuw nsw i32 %1538, %1545
  %1547 = shl nsw i32 -1, %1546
  %1548 = xor i32 %1547, -1
  %1549 = zext i16 %1540 to i32
  %1550 = trunc i64 %1535 to i32
  %1551 = and i32 %1550, %1548
  %1552 = lshr i32 %1551, %1538
  %1553 = add nuw i32 %1552, %1549
  %1554 = zext i32 %1553 to i64
  %1555 = getelementptr inbounds nuw [4 x i8], ptr %1489, i64 %1554
  %1556 = getelementptr inbounds nuw i8, ptr %1555, i64 1
  %1557 = load i8, ptr %1556, align 1, !tbaa !44
  %1558 = zext i8 %1557 to i32
  %1559 = add nuw nsw i32 %1538, %1558
  %1560 = icmp ugt i32 %1559, %1536
  br i1 %1560, label %1561, label %1597

1561:                                             ; preds = %1544
  %1562 = icmp eq i32 %1534, 0
  br i1 %1562, label %2434, label %1563

1563:                                             ; preds = %1561
  %1564 = zext nneg i32 %1536 to i64
  br label %1567

1565:                                             ; preds = %1578
  %1566 = icmp eq i32 %1581, 0
  br i1 %1566, label %2434, label %1567

1567:                                             ; preds = %1565, %1563
  %1568 = phi ptr [ %1533, %1563 ], [ %1580, %1565 ]
  %1569 = phi i32 [ %1534, %1563 ], [ %1581, %1565 ]
  %1570 = phi i64 [ %1535, %1563 ], [ %1579, %1565 ]
  %1571 = phi i64 [ %1564, %1563 ], [ %1582, %1565 ]
  %1572 = load i8, ptr %1568, align 1, !tbaa !44
  %1573 = zext i8 %1572 to i64
  %1574 = shl i64 %1573, %1571
  %1575 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1570, i64 %1574), !nosanitize !47
  %1576 = extractvalue { i64, i1 } %1575, 1, !nosanitize !47
  br i1 %1576, label %1577, label %1578, !prof !48, !nosanitize !47

1577:                                             ; preds = %1567
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1578:                                             ; preds = %1567
  %1579 = extractvalue { i64, i1 } %1575, 0, !nosanitize !47
  %1580 = getelementptr inbounds nuw i8, ptr %1568, i64 1
  %1581 = add i32 %1569, -1
  %1582 = add nuw nsw i64 %1571, 8
  %1583 = trunc i64 %1579 to i32
  %1584 = and i32 %1583, %1548
  %1585 = lshr i32 %1584, %1538
  %1586 = add nuw i32 %1585, %1549
  %1587 = zext i32 %1586 to i64
  %1588 = getelementptr inbounds nuw [4 x i8], ptr %1489, i64 %1587
  %1589 = getelementptr inbounds nuw i8, ptr %1588, i64 1
  %1590 = load i8, ptr %1589, align 1, !tbaa !44
  %1591 = zext i8 %1590 to i32
  %1592 = add nuw nsw i32 %1538, %1591
  %1593 = zext nneg i32 %1592 to i64
  %1594 = icmp samesign ult i64 %1582, %1593
  br i1 %1594, label %1565, label %1595

1595:                                             ; preds = %1578
  %1596 = trunc nuw nsw i64 %1582 to i32
  br label %1597

1597:                                             ; preds = %1595, %1544
  %1598 = phi ptr [ %1555, %1544 ], [ %1588, %1595 ]
  %1599 = phi ptr [ %1533, %1544 ], [ %1580, %1595 ]
  %1600 = phi i32 [ %1534, %1544 ], [ %1581, %1595 ]
  %1601 = phi i64 [ %1535, %1544 ], [ %1579, %1595 ]
  %1602 = phi i32 [ %1536, %1544 ], [ %1596, %1595 ]
  %1603 = phi i8 [ %1557, %1544 ], [ %1590, %1595 ]
  %1604 = load i8, ptr %1598, align 2, !tbaa !44
  %1605 = getelementptr inbounds nuw i8, ptr %1598, i64 2
  %1606 = load i16, ptr %1605, align 2, !tbaa !77
  %1607 = sub nuw i32 %1602, %1538
  %1608 = zext nneg i8 %1537 to i64
  %1609 = lshr i64 %1601, %1608
  store i32 %1538, ptr %71, align 4, !tbaa !37
  br label %1610

1610:                                             ; preds = %1597, %1531
  %1611 = phi i32 [ %1538, %1597 ], [ 0, %1531 ]
  %1612 = phi ptr [ %1599, %1597 ], [ %1533, %1531 ]
  %1613 = phi i32 [ %1600, %1597 ], [ %1534, %1531 ]
  %1614 = phi i64 [ %1609, %1597 ], [ %1535, %1531 ]
  %1615 = phi i32 [ %1607, %1597 ], [ %1536, %1531 ]
  %1616 = phi i16 [ %1606, %1597 ], [ %1540, %1531 ]
  %1617 = phi i8 [ %1603, %1597 ], [ %1537, %1531 ]
  %1618 = phi i8 [ %1604, %1597 ], [ %1541, %1531 ]
  %1619 = zext i8 %1617 to i32
  %1620 = zext nneg i8 %1617 to i64
  %1621 = lshr i64 %1614, %1620
  %1622 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1615, i32 %1619), !nosanitize !47
  %1623 = extractvalue { i32, i1 } %1622, 0, !nosanitize !47
  %1624 = extractvalue { i32, i1 } %1622, 1, !nosanitize !47
  br i1 %1624, label %1625, label %1626, !prof !48, !nosanitize !47

1625:                                             ; preds = %1610
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1626:                                             ; preds = %1610
  %1627 = add nsw i32 %1611, %1619
  store i32 %1627, ptr %71, align 4, !tbaa !37
  %1628 = zext i16 %1616 to i32
  store i32 %1628, ptr %56, align 4, !tbaa !61
  %1629 = zext i8 %1618 to i32
  %1630 = icmp eq i8 %1618, 0
  br i1 %1630, label %1631, label %1632

1631:                                             ; preds = %1626
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2346

1632:                                             ; preds = %1626
  %1633 = and i32 %1629, 32
  %1634 = icmp eq i32 %1633, 0
  br i1 %1634, label %1636, label %1635

1635:                                             ; preds = %1632
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2346

1636:                                             ; preds = %1632
  %1637 = and i32 %1629, 64
  %1638 = icmp eq i32 %1637, 0
  br i1 %1638, label %1640, label %1639

1639:                                             ; preds = %1636
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

1640:                                             ; preds = %1636
  %1641 = and i32 %1629, 15
  store i32 %1641, ptr %72, align 4, !tbaa !53
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1642

1642:                                             ; preds = %1640, %101
  %1643 = phi i32 [ %1641, %1640 ], [ %102, %101 ]
  %1644 = phi ptr [ %1612, %1640 ], [ %90, %101 ]
  %1645 = phi i32 [ %1613, %1640 ], [ %92, %101 ]
  %1646 = phi i64 [ %1621, %1640 ], [ %94, %101 ]
  %1647 = phi i32 [ %1623, %1640 ], [ %95, %101 ]
  %1648 = phi i32 [ %1471, %1640 ], [ %97, %101 ]
  %1649 = icmp eq i32 %1643, 0
  br i1 %1649, label %1707, label %1650

1650:                                             ; preds = %1642
  %1651 = icmp ult i32 %1647, %1643
  br i1 %1651, label %1652, label %1679

1652:                                             ; preds = %1650
  %1653 = icmp eq i32 %1645, 0
  br i1 %1653, label %2428, label %1654

1654:                                             ; preds = %1652
  %1655 = zext i32 %1647 to i64
  br label %1658

1656:                                             ; preds = %1675
  %1657 = icmp eq i32 %1663, 0
  br i1 %1657, label %2428, label %1658, !llvm.loop !91

1658:                                             ; preds = %1656, %1654
  %1659 = phi ptr [ %1644, %1654 ], [ %1664, %1656 ]
  %1660 = phi i32 [ %1645, %1654 ], [ %1663, %1656 ]
  %1661 = phi i64 [ %1646, %1654 ], [ %1669, %1656 ]
  %1662 = phi i64 [ %1655, %1654 ], [ %1676, %1656 ]
  %1663 = add i32 %1660, -1
  %1664 = getelementptr inbounds nuw i8, ptr %1659, i64 1
  %1665 = load i8, ptr %1659, align 1, !tbaa !44
  %1666 = zext i8 %1665 to i64
  %1667 = shl i64 %1666, %1662
  %1668 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1661, i64 %1667), !nosanitize !47
  %1669 = extractvalue { i64, i1 } %1668, 0, !nosanitize !47
  %1670 = extractvalue { i64, i1 } %1668, 1, !nosanitize !47
  br i1 %1670, label %1671, label %1672, !prof !48, !nosanitize !47

1671:                                             ; preds = %1658
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1672:                                             ; preds = %1658
  %1673 = icmp samesign ugt i64 %1662, 4294967287
  br i1 %1673, label %1674, label %1675, !prof !48, !nosanitize !47

1674:                                             ; preds = %1672
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1675:                                             ; preds = %1672
  %1676 = add nuw nsw i64 %1662, 8
  %1677 = trunc nuw i64 %1676 to i32
  %1678 = icmp ugt i32 %1643, %1677
  br i1 %1678, label %1656, label %1679, !llvm.loop !91

1679:                                             ; preds = %1675, %1650
  %1680 = phi ptr [ %1644, %1650 ], [ %1664, %1675 ]
  %1681 = phi i32 [ %1645, %1650 ], [ %1663, %1675 ]
  %1682 = phi i64 [ %1646, %1650 ], [ %1669, %1675 ]
  %1683 = phi i32 [ %1647, %1650 ], [ %1677, %1675 ]
  %1684 = shl nsw i32 -1, %1643
  %1685 = xor i32 %1684, -1
  %1686 = trunc i64 %1682 to i32
  %1687 = and i32 %1686, %1685
  %1688 = load i32, ptr %56, align 4, !tbaa !61
  %1689 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1688, i32 %1687), !nosanitize !47
  %1690 = extractvalue { i32, i1 } %1689, 1, !nosanitize !47
  br i1 %1690, label %1691, label %1692, !prof !48, !nosanitize !47

1691:                                             ; preds = %1679
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1692:                                             ; preds = %1679
  %1693 = extractvalue { i32, i1 } %1689, 0, !nosanitize !47
  store i32 %1693, ptr %56, align 4, !tbaa !61
  %1694 = zext nneg i32 %1643 to i64
  %1695 = lshr i64 %1682, %1694
  %1696 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1683, i32 %1643), !nosanitize !47
  %1697 = extractvalue { i32, i1 } %1696, 0, !nosanitize !47
  %1698 = extractvalue { i32, i1 } %1696, 1, !nosanitize !47
  br i1 %1698, label %1699, label %1700, !prof !48, !nosanitize !47

1699:                                             ; preds = %1692
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1700:                                             ; preds = %1692
  %1701 = load i32, ptr %71, align 4, !tbaa !37
  %1702 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1701, i32 %1643), !nosanitize !47
  %1703 = extractvalue { i32, i1 } %1702, 1, !nosanitize !47
  br i1 %1703, label %1704, label %1705, !prof !48, !nosanitize !47

1704:                                             ; preds = %1700
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1705:                                             ; preds = %1700
  %1706 = extractvalue { i32, i1 } %1702, 0, !nosanitize !47
  store i32 %1706, ptr %71, align 4, !tbaa !37
  br label %1707

1707:                                             ; preds = %1705, %1642
  %1708 = phi ptr [ %1680, %1705 ], [ %1644, %1642 ]
  %1709 = phi i32 [ %1681, %1705 ], [ %1645, %1642 ]
  %1710 = phi i64 [ %1695, %1705 ], [ %1646, %1642 ]
  %1711 = phi i32 [ %1697, %1705 ], [ %1647, %1642 ]
  %1712 = load i32, ptr %56, align 4, !tbaa !61
  store i32 %1712, ptr %73, align 8, !tbaa !92
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1713

1713:                                             ; preds = %1707, %88
  %1714 = phi ptr [ %1708, %1707 ], [ %90, %88 ]
  %1715 = phi i32 [ %1709, %1707 ], [ %92, %88 ]
  %1716 = phi i64 [ %1710, %1707 ], [ %94, %88 ]
  %1717 = phi i32 [ %1711, %1707 ], [ %95, %88 ]
  %1718 = phi i32 [ %1648, %1707 ], [ %97, %88 ]
  %1719 = load i32, ptr %69, align 4, !tbaa !90
  %1720 = shl nsw i32 -1, %1719
  %1721 = xor i32 %1720, -1
  %1722 = load ptr, ptr %64, align 8, !tbaa !34
  %1723 = trunc i64 %1716 to i32
  %1724 = and i32 %1721, %1723
  %1725 = zext nneg i32 %1724 to i64
  %1726 = getelementptr inbounds nuw [4 x i8], ptr %1722, i64 %1725
  %1727 = getelementptr inbounds nuw i8, ptr %1726, i64 1
  %1728 = load i8, ptr %1727, align 1, !tbaa !44
  %1729 = zext i8 %1728 to i32
  %1730 = icmp ult i32 %1717, %1729
  br i1 %1730, label %1731, label %1764

1731:                                             ; preds = %1713
  %1732 = icmp eq i32 %1715, 0
  br i1 %1732, label %2422, label %1733

1733:                                             ; preds = %1731
  %1734 = zext nneg i32 %1717 to i64
  br label %1737

1735:                                             ; preds = %1748
  %1736 = icmp eq i32 %1751, 0
  br i1 %1736, label %2422, label %1737

1737:                                             ; preds = %1735, %1733
  %1738 = phi ptr [ %1714, %1733 ], [ %1750, %1735 ]
  %1739 = phi i32 [ %1715, %1733 ], [ %1751, %1735 ]
  %1740 = phi i64 [ %1716, %1733 ], [ %1749, %1735 ]
  %1741 = phi i64 [ %1734, %1733 ], [ %1752, %1735 ]
  %1742 = load i8, ptr %1738, align 1, !tbaa !44
  %1743 = zext i8 %1742 to i64
  %1744 = shl i64 %1743, %1741
  %1745 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1740, i64 %1744), !nosanitize !47
  %1746 = extractvalue { i64, i1 } %1745, 1, !nosanitize !47
  br i1 %1746, label %1747, label %1748, !prof !48, !nosanitize !47

1747:                                             ; preds = %1737
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1748:                                             ; preds = %1737
  %1749 = extractvalue { i64, i1 } %1745, 0, !nosanitize !47
  %1750 = getelementptr inbounds nuw i8, ptr %1738, i64 1
  %1751 = add i32 %1739, -1
  %1752 = add nuw nsw i64 %1741, 8
  %1753 = trunc i64 %1749 to i32
  %1754 = and i32 %1721, %1753
  %1755 = zext nneg i32 %1754 to i64
  %1756 = getelementptr inbounds nuw [4 x i8], ptr %1722, i64 %1755
  %1757 = getelementptr inbounds nuw i8, ptr %1756, i64 1
  %1758 = load i8, ptr %1757, align 1, !tbaa !44
  %1759 = zext i8 %1758 to i64
  %1760 = icmp samesign ult i64 %1752, %1759
  br i1 %1760, label %1735, label %1761

1761:                                             ; preds = %1748
  %1762 = zext i8 %1758 to i32
  %1763 = trunc nuw nsw i64 %1752 to i32
  br label %1764

1764:                                             ; preds = %1761, %1713
  %1765 = phi ptr [ %1726, %1713 ], [ %1756, %1761 ]
  %1766 = phi ptr [ %1714, %1713 ], [ %1750, %1761 ]
  %1767 = phi i32 [ %1715, %1713 ], [ %1751, %1761 ]
  %1768 = phi i64 [ %1716, %1713 ], [ %1749, %1761 ]
  %1769 = phi i32 [ %1717, %1713 ], [ %1763, %1761 ]
  %1770 = phi i8 [ %1728, %1713 ], [ %1758, %1761 ]
  %1771 = phi i32 [ %1729, %1713 ], [ %1762, %1761 ]
  %1772 = getelementptr inbounds nuw i8, ptr %1765, i64 2
  %1773 = load i16, ptr %1772, align 2, !tbaa !77
  %1774 = load i8, ptr %1765, align 2, !tbaa !44
  %1775 = icmp ult i8 %1774, 16
  br i1 %1775, label %1776, label %1848

1776:                                             ; preds = %1764
  %1777 = zext nneg i8 %1774 to i32
  %1778 = add nuw nsw i32 %1771, %1777
  %1779 = shl nsw i32 -1, %1778
  %1780 = xor i32 %1779, -1
  %1781 = zext i16 %1773 to i32
  %1782 = trunc i64 %1768 to i32
  %1783 = and i32 %1782, %1780
  %1784 = lshr i32 %1783, %1771
  %1785 = add nuw i32 %1784, %1781
  %1786 = zext i32 %1785 to i64
  %1787 = getelementptr inbounds nuw [4 x i8], ptr %1722, i64 %1786
  %1788 = getelementptr inbounds nuw i8, ptr %1787, i64 1
  %1789 = load i8, ptr %1788, align 1, !tbaa !44
  %1790 = zext i8 %1789 to i32
  %1791 = add nuw nsw i32 %1771, %1790
  %1792 = icmp ugt i32 %1791, %1769
  br i1 %1792, label %1793, label %1830

1793:                                             ; preds = %1776
  %1794 = icmp eq i32 %1767, 0
  br i1 %1794, label %2416, label %1795

1795:                                             ; preds = %1793
  %1796 = zext nneg i32 %1769 to i64
  br label %1799

1797:                                             ; preds = %1811
  %1798 = icmp eq i32 %1814, 0
  br i1 %1798, label %2416, label %1799

1799:                                             ; preds = %1797, %1795
  %1800 = phi ptr [ %1766, %1795 ], [ %1813, %1797 ]
  %1801 = phi i32 [ %1767, %1795 ], [ %1814, %1797 ]
  %1802 = phi i64 [ %1768, %1795 ], [ %1812, %1797 ]
  %1803 = phi i64 [ %1796, %1795 ], [ %1815, %1797 ]
  %1804 = load i8, ptr %1800, align 1, !tbaa !44
  %1805 = zext i8 %1804 to i64
  %1806 = shl i64 %1805, %1803
  %1807 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1802, i64 %1806), !nosanitize !47
  %1808 = extractvalue { i64, i1 } %1807, 1, !nosanitize !47
  br i1 %1808, label %1809, label %1811, !prof !48, !nosanitize !47

1809:                                             ; preds = %1799
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1810:                                             ; preds = %1863, %1830
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1811:                                             ; preds = %1799
  %1812 = extractvalue { i64, i1 } %1807, 0, !nosanitize !47
  %1813 = getelementptr inbounds nuw i8, ptr %1800, i64 1
  %1814 = add i32 %1801, -1
  %1815 = add nuw nsw i64 %1803, 8
  %1816 = trunc i64 %1812 to i32
  %1817 = and i32 %1816, %1780
  %1818 = lshr i32 %1817, %1771
  %1819 = add nuw i32 %1818, %1781
  %1820 = zext i32 %1819 to i64
  %1821 = getelementptr inbounds nuw [4 x i8], ptr %1722, i64 %1820
  %1822 = getelementptr inbounds nuw i8, ptr %1821, i64 1
  %1823 = load i8, ptr %1822, align 1, !tbaa !44
  %1824 = zext i8 %1823 to i32
  %1825 = add nuw nsw i32 %1771, %1824
  %1826 = zext nneg i32 %1825 to i64
  %1827 = icmp samesign ult i64 %1815, %1826
  br i1 %1827, label %1797, label %1828

1828:                                             ; preds = %1811
  %1829 = trunc nuw nsw i64 %1815 to i32
  br label %1830

1830:                                             ; preds = %1828, %1776
  %1831 = phi ptr [ %1787, %1776 ], [ %1821, %1828 ]
  %1832 = phi ptr [ %1766, %1776 ], [ %1813, %1828 ]
  %1833 = phi i32 [ %1767, %1776 ], [ %1814, %1828 ]
  %1834 = phi i64 [ %1768, %1776 ], [ %1812, %1828 ]
  %1835 = phi i32 [ %1769, %1776 ], [ %1829, %1828 ]
  %1836 = phi i8 [ %1789, %1776 ], [ %1823, %1828 ]
  %1837 = load i32, ptr %71, align 4, !tbaa !37
  %1838 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1837, i32 %1771), !nosanitize !47
  %1839 = extractvalue { i32, i1 } %1838, 1, !nosanitize !47
  br i1 %1839, label %1810, label %1840, !prof !48, !nosanitize !47

1840:                                             ; preds = %1830
  %1841 = getelementptr inbounds nuw i8, ptr %1831, i64 2
  %1842 = load i16, ptr %1841, align 2, !tbaa !77
  %1843 = load i8, ptr %1831, align 2, !tbaa !44
  %1844 = sub nuw i32 %1835, %1771
  %1845 = zext nneg i8 %1770 to i64
  %1846 = lshr i64 %1834, %1845
  %1847 = extractvalue { i32, i1 } %1838, 0, !nosanitize !47
  store i32 %1847, ptr %71, align 4, !tbaa !37
  br label %1848

1848:                                             ; preds = %1840, %1764
  %1849 = phi ptr [ %1832, %1840 ], [ %1766, %1764 ]
  %1850 = phi i32 [ %1833, %1840 ], [ %1767, %1764 ]
  %1851 = phi i64 [ %1846, %1840 ], [ %1768, %1764 ]
  %1852 = phi i32 [ %1844, %1840 ], [ %1769, %1764 ]
  %1853 = phi i16 [ %1842, %1840 ], [ %1773, %1764 ]
  %1854 = phi i8 [ %1836, %1840 ], [ %1770, %1764 ]
  %1855 = phi i8 [ %1843, %1840 ], [ %1774, %1764 ]
  %1856 = zext i8 %1854 to i32
  %1857 = zext nneg i8 %1854 to i64
  %1858 = lshr i64 %1851, %1857
  %1859 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1852, i32 %1856), !nosanitize !47
  %1860 = extractvalue { i32, i1 } %1859, 0, !nosanitize !47
  %1861 = extractvalue { i32, i1 } %1859, 1, !nosanitize !47
  br i1 %1861, label %1862, label %1863, !prof !48, !nosanitize !47

1862:                                             ; preds = %1848
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1863:                                             ; preds = %1848
  %1864 = load i32, ptr %71, align 4, !tbaa !37
  %1865 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1864, i32 %1856), !nosanitize !47
  %1866 = extractvalue { i32, i1 } %1865, 1, !nosanitize !47
  br i1 %1866, label %1810, label %1867, !prof !48, !nosanitize !47

1867:                                             ; preds = %1863
  %1868 = extractvalue { i32, i1 } %1865, 0, !nosanitize !47
  store i32 %1868, ptr %71, align 4, !tbaa !37
  %1869 = zext i8 %1855 to i32
  %1870 = and i32 %1869, 64
  %1871 = icmp eq i32 %1870, 0
  br i1 %1871, label %1873, label %1872

1872:                                             ; preds = %1867
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

1873:                                             ; preds = %1867
  %1874 = zext i16 %1853 to i32
  store i32 %1874, ptr %74, align 8, !tbaa !93
  %1875 = and i32 %1869, 15
  store i32 %1875, ptr %72, align 4, !tbaa !53
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1876

1876:                                             ; preds = %1873, %99
  %1877 = phi i32 [ %1875, %1873 ], [ %100, %99 ]
  %1878 = phi ptr [ %1849, %1873 ], [ %90, %99 ]
  %1879 = phi i32 [ %1850, %1873 ], [ %92, %99 ]
  %1880 = phi i64 [ %1858, %1873 ], [ %94, %99 ]
  %1881 = phi i32 [ %1860, %1873 ], [ %95, %99 ]
  %1882 = phi i32 [ %1718, %1873 ], [ %97, %99 ]
  %1883 = icmp eq i32 %1877, 0
  br i1 %1883, label %1941, label %1884

1884:                                             ; preds = %1876
  %1885 = icmp ult i32 %1881, %1877
  br i1 %1885, label %1886, label %1913

1886:                                             ; preds = %1884
  %1887 = icmp eq i32 %1879, 0
  br i1 %1887, label %2410, label %1888

1888:                                             ; preds = %1886
  %1889 = zext i32 %1881 to i64
  br label %1892

1890:                                             ; preds = %1909
  %1891 = icmp eq i32 %1897, 0
  br i1 %1891, label %2410, label %1892, !llvm.loop !94

1892:                                             ; preds = %1890, %1888
  %1893 = phi ptr [ %1878, %1888 ], [ %1898, %1890 ]
  %1894 = phi i32 [ %1879, %1888 ], [ %1897, %1890 ]
  %1895 = phi i64 [ %1880, %1888 ], [ %1903, %1890 ]
  %1896 = phi i64 [ %1889, %1888 ], [ %1910, %1890 ]
  %1897 = add i32 %1894, -1
  %1898 = getelementptr inbounds nuw i8, ptr %1893, i64 1
  %1899 = load i8, ptr %1893, align 1, !tbaa !44
  %1900 = zext i8 %1899 to i64
  %1901 = shl i64 %1900, %1896
  %1902 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1895, i64 %1901), !nosanitize !47
  %1903 = extractvalue { i64, i1 } %1902, 0, !nosanitize !47
  %1904 = extractvalue { i64, i1 } %1902, 1, !nosanitize !47
  br i1 %1904, label %1905, label %1906, !prof !48, !nosanitize !47

1905:                                             ; preds = %1892
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1906:                                             ; preds = %1892
  %1907 = icmp samesign ugt i64 %1896, 4294967287
  br i1 %1907, label %1908, label %1909, !prof !48, !nosanitize !47

1908:                                             ; preds = %1906
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1909:                                             ; preds = %1906
  %1910 = add nuw nsw i64 %1896, 8
  %1911 = trunc nuw i64 %1910 to i32
  %1912 = icmp ugt i32 %1877, %1911
  br i1 %1912, label %1890, label %1913, !llvm.loop !94

1913:                                             ; preds = %1909, %1884
  %1914 = phi ptr [ %1878, %1884 ], [ %1898, %1909 ]
  %1915 = phi i32 [ %1879, %1884 ], [ %1897, %1909 ]
  %1916 = phi i64 [ %1880, %1884 ], [ %1903, %1909 ]
  %1917 = phi i32 [ %1881, %1884 ], [ %1911, %1909 ]
  %1918 = shl nsw i32 -1, %1877
  %1919 = xor i32 %1918, -1
  %1920 = trunc i64 %1916 to i32
  %1921 = and i32 %1920, %1919
  %1922 = load i32, ptr %74, align 8, !tbaa !93
  %1923 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1922, i32 %1921), !nosanitize !47
  %1924 = extractvalue { i32, i1 } %1923, 1, !nosanitize !47
  br i1 %1924, label %1925, label %1926, !prof !48, !nosanitize !47

1925:                                             ; preds = %1913
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1926:                                             ; preds = %1913
  %1927 = extractvalue { i32, i1 } %1923, 0, !nosanitize !47
  store i32 %1927, ptr %74, align 8, !tbaa !93
  %1928 = zext nneg i32 %1877 to i64
  %1929 = lshr i64 %1916, %1928
  %1930 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1917, i32 %1877), !nosanitize !47
  %1931 = extractvalue { i32, i1 } %1930, 0, !nosanitize !47
  %1932 = extractvalue { i32, i1 } %1930, 1, !nosanitize !47
  br i1 %1932, label %1933, label %1934, !prof !48, !nosanitize !47

1933:                                             ; preds = %1926
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1934:                                             ; preds = %1926
  %1935 = load i32, ptr %71, align 4, !tbaa !37
  %1936 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1935, i32 %1877), !nosanitize !47
  %1937 = extractvalue { i32, i1 } %1936, 1, !nosanitize !47
  br i1 %1937, label %1938, label %1939, !prof !48, !nosanitize !47

1938:                                             ; preds = %1934
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1939:                                             ; preds = %1934
  %1940 = extractvalue { i32, i1 } %1936, 0, !nosanitize !47
  store i32 %1940, ptr %71, align 4, !tbaa !37
  br label %1941

1941:                                             ; preds = %1939, %1876
  %1942 = phi ptr [ %1914, %1939 ], [ %1878, %1876 ]
  %1943 = phi i32 [ %1915, %1939 ], [ %1879, %1876 ]
  %1944 = phi i64 [ %1929, %1939 ], [ %1880, %1876 ]
  %1945 = phi i32 [ %1931, %1939 ], [ %1881, %1876 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1946

1946:                                             ; preds = %1941, %88
  %1947 = phi ptr [ %1942, %1941 ], [ %90, %88 ]
  %1948 = phi i32 [ %1943, %1941 ], [ %92, %88 ]
  %1949 = phi i64 [ %1944, %1941 ], [ %94, %88 ]
  %1950 = phi i32 [ %1945, %1941 ], [ %95, %88 ]
  %1951 = phi i32 [ %1882, %1941 ], [ %97, %88 ]
  %1952 = icmp eq i32 %93, 0
  br i1 %1952, label %2480, label %1953

1953:                                             ; preds = %1946
  %1954 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %1955 = extractvalue { i32, i1 } %1954, 0, !nosanitize !47
  %1956 = extractvalue { i32, i1 } %1954, 1, !nosanitize !47
  br i1 %1956, label %1957, label %1958, !prof !48, !nosanitize !47

1957:                                             ; preds = %1953
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1958:                                             ; preds = %1953
  %1959 = load i32, ptr %74, align 8, !tbaa !93
  %1960 = icmp ugt i32 %1959, %1955
  br i1 %1960, label %1961, label %1990

1961:                                             ; preds = %1958
  %1962 = sub nuw i32 %1959, %1955
  %1963 = load i32, ptr %75, align 8, !tbaa !39
  %1964 = icmp ugt i32 %1962, %1963
  br i1 %1964, label %1965, label %1969

1965:                                             ; preds = %1961
  %1966 = load i32, ptr %76, align 8, !tbaa !36
  %1967 = icmp eq i32 %1966, 0
  br i1 %1967, label %1969, label %1968

1968:                                             ; preds = %1965
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

1969:                                             ; preds = %1965, %1961
  %1970 = load i32, ptr %77, align 4, !tbaa !40
  %1971 = icmp ugt i32 %1962, %1970
  br i1 %1971, label %1972, label %1980

1972:                                             ; preds = %1969
  %1973 = sub nuw i32 %1962, %1970
  %1974 = load i32, ptr %79, align 4, !tbaa !38
  %1975 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1974, i32 %1973), !nosanitize !47
  %1976 = extractvalue { i32, i1 } %1975, 1, !nosanitize !47
  br i1 %1976, label %1977, label %1978, !prof !48, !nosanitize !47

1977:                                             ; preds = %1972
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1978:                                             ; preds = %1972
  %1979 = extractvalue { i32, i1 } %1975, 0, !nosanitize !47
  br label %1982

1980:                                             ; preds = %1969
  %1981 = sub nuw i32 %1970, %1962
  br label %1982

1982:                                             ; preds = %1980, %1978
  %1983 = phi i32 [ %1981, %1980 ], [ %1979, %1978 ]
  %1984 = phi i32 [ %1962, %1980 ], [ %1973, %1978 ]
  %1985 = load ptr, ptr %78, align 8, !tbaa !41
  %1986 = zext i32 %1983 to i64
  %1987 = getelementptr inbounds nuw i8, ptr %1985, i64 %1986
  %1988 = load i32, ptr %56, align 4, !tbaa !61
  %1989 = call i32 @llvm.umin.i32(i32 %1984, i32 %1988)
  br label %1995

1990:                                             ; preds = %1958
  %1991 = zext i32 %1959 to i64
  %1992 = sub nsw i64 0, %1991
  %1993 = getelementptr inbounds i8, ptr %91, i64 %1992
  %1994 = load i32, ptr %56, align 4, !tbaa !61
  br label %1995

1995:                                             ; preds = %1990, %1982
  %1996 = phi i32 [ %1994, %1990 ], [ %1988, %1982 ]
  %1997 = phi i32 [ %1994, %1990 ], [ %1989, %1982 ]
  %1998 = phi ptr [ %1993, %1990 ], [ %1987, %1982 ]
  %1999 = ptrtoaddr ptr %1998 to i64
  %2000 = call i32 @llvm.umin.i32(i32 %1997, i32 %93)
  %2001 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %2000), !nosanitize !47
  %2002 = extractvalue { i32, i1 } %2001, 0, !nosanitize !47
  %2003 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1996, i32 %2000), !nosanitize !47
  %2004 = extractvalue { i32, i1 } %2003, 1, !nosanitize !47
  br i1 %2004, label %2005, label %2006, !prof !48, !nosanitize !47

2005:                                             ; preds = %1995
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2006:                                             ; preds = %1995
  %2007 = extractvalue { i32, i1 } %2003, 0, !nosanitize !47
  store i32 %2007, ptr %56, align 4, !tbaa !61
  %2008 = icmp eq i32 %2000, 0
  br i1 %2008, label %2079, label %2009, !prof !48, !nosanitize !47

2009:                                             ; preds = %2006
  %2010 = call i32 @llvm.umin.i32(i32 %1997, i32 %93)
  %2011 = zext i32 %2010 to i64
  %2012 = icmp ult i32 %2010, 4
  %2013 = sub i64 %98, %1999
  %2014 = icmp ult i64 %2013, 32
  %2015 = select i1 %2012, i1 true, i1 %2014
  br i1 %2015, label %2055, label %2016

2016:                                             ; preds = %2009
  %2017 = icmp ult i32 %2010, 32
  br i1 %2017, label %2039, label %2018

2018:                                             ; preds = %2016
  %2019 = and i64 %2011, 28
  %2020 = and i64 %2011, 4294967264
  %2021 = getelementptr i8, ptr %91, i64 %2020
  %2022 = trunc nuw i64 %2020 to i32
  %2023 = sub i32 %2000, %2022
  %2024 = getelementptr i8, ptr %1998, i64 %2020
  br label %2025

2025:                                             ; preds = %2025, %2018
  %2026 = phi i64 [ 0, %2018 ], [ %2033, %2025 ]
  %2027 = getelementptr i8, ptr %91, i64 %2026
  %2028 = getelementptr i8, ptr %1998, i64 %2026
  %2029 = getelementptr i8, ptr %2028, i64 16
  %2030 = load <16 x i8>, ptr %2028, align 1, !tbaa !44
  %2031 = load <16 x i8>, ptr %2029, align 1, !tbaa !44
  %2032 = getelementptr i8, ptr %2027, i64 16
  store <16 x i8> %2030, ptr %2027, align 1, !tbaa !44
  store <16 x i8> %2031, ptr %2032, align 1, !tbaa !44
  %2033 = add nuw i64 %2026, 32
  %2034 = icmp eq i64 %2033, %2020
  br i1 %2034, label %2035, label %2025, !llvm.loop !95

2035:                                             ; preds = %2025
  %2036 = icmp eq i64 %2020, %2011
  br i1 %2036, label %2111, label %2037

2037:                                             ; preds = %2035
  %2038 = icmp eq i64 %2019, 0
  br i1 %2038, label %2055, label %2039, !prof !98

2039:                                             ; preds = %2037, %2016
  %2040 = phi i64 [ %2020, %2037 ], [ 0, %2016 ]
  %2041 = and i64 %2011, 4294967292
  %2042 = getelementptr i8, ptr %91, i64 %2041
  %2043 = trunc nuw i64 %2041 to i32
  %2044 = sub i32 %2000, %2043
  %2045 = getelementptr i8, ptr %1998, i64 %2041
  br label %2046

2046:                                             ; preds = %2046, %2039
  %2047 = phi i64 [ %2040, %2039 ], [ %2051, %2046 ]
  %2048 = getelementptr i8, ptr %91, i64 %2047
  %2049 = getelementptr i8, ptr %1998, i64 %2047
  %2050 = load <4 x i8>, ptr %2049, align 1, !tbaa !44
  store <4 x i8> %2050, ptr %2048, align 1, !tbaa !44
  %2051 = add nuw i64 %2047, 4
  %2052 = icmp eq i64 %2051, %2041
  br i1 %2052, label %2053, label %2046, !llvm.loop !99

2053:                                             ; preds = %2046
  %2054 = icmp eq i64 %2041, %2011
  br i1 %2054, label %2111, label %2055

2055:                                             ; preds = %2053, %2037, %2009
  %2056 = phi ptr [ %91, %2009 ], [ %2021, %2037 ], [ %2042, %2053 ]
  %2057 = phi i32 [ %2000, %2009 ], [ %2023, %2037 ], [ %2044, %2053 ]
  %2058 = phi ptr [ %1998, %2009 ], [ %2024, %2037 ], [ %2045, %2053 ]
  %2059 = add i32 %2057, -1
  %2060 = and i32 %2057, 7
  %2061 = icmp eq i32 %2060, 0
  br i1 %2061, label %2073, label %2062

2062:                                             ; preds = %2062, %2055
  %2063 = phi ptr [ %2068, %2062 ], [ %2056, %2055 ]
  %2064 = phi i32 [ %2069, %2062 ], [ %2057, %2055 ]
  %2065 = phi ptr [ %2070, %2062 ], [ %2058, %2055 ]
  %2066 = phi i32 [ %2071, %2062 ], [ 0, %2055 ]
  %2067 = load i8, ptr %2065, align 1, !tbaa !44
  store i8 %2067, ptr %2063, align 1, !tbaa !44
  %2068 = getelementptr inbounds nuw i8, ptr %2063, i64 1
  %2069 = add i32 %2064, -1
  %2070 = getelementptr inbounds nuw i8, ptr %2065, i64 1
  %2071 = add i32 %2066, 1
  %2072 = icmp eq i32 %2071, %2060
  br i1 %2072, label %2073, label %2062, !llvm.loop !100

2073:                                             ; preds = %2062, %2055
  %2074 = phi ptr [ poison, %2055 ], [ %2068, %2062 ]
  %2075 = phi ptr [ %2056, %2055 ], [ %2068, %2062 ]
  %2076 = phi i32 [ %2057, %2055 ], [ %2069, %2062 ]
  %2077 = phi ptr [ %2058, %2055 ], [ %2070, %2062 ]
  %2078 = icmp ult i32 %2059, 7
  br i1 %2078, label %2111, label %2081

2079:                                             ; preds = %2006
  %2080 = load i8, ptr %1998, align 1, !tbaa !44
  store i8 %2080, ptr %91, align 1, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2081:                                             ; preds = %2081, %2073
  %2082 = phi ptr [ %2107, %2081 ], [ %2075, %2073 ]
  %2083 = phi i32 [ %2108, %2081 ], [ %2076, %2073 ]
  %2084 = phi ptr [ %2109, %2081 ], [ %2077, %2073 ]
  %2085 = load i8, ptr %2084, align 1, !tbaa !44
  store i8 %2085, ptr %2082, align 1, !tbaa !44
  %2086 = getelementptr inbounds nuw i8, ptr %2082, i64 1
  %2087 = getelementptr inbounds nuw i8, ptr %2084, i64 1
  %2088 = load i8, ptr %2087, align 1, !tbaa !44
  store i8 %2088, ptr %2086, align 1, !tbaa !44
  %2089 = getelementptr inbounds nuw i8, ptr %2082, i64 2
  %2090 = getelementptr inbounds nuw i8, ptr %2084, i64 2
  %2091 = load i8, ptr %2090, align 1, !tbaa !44
  store i8 %2091, ptr %2089, align 1, !tbaa !44
  %2092 = getelementptr inbounds nuw i8, ptr %2082, i64 3
  %2093 = getelementptr inbounds nuw i8, ptr %2084, i64 3
  %2094 = load i8, ptr %2093, align 1, !tbaa !44
  store i8 %2094, ptr %2092, align 1, !tbaa !44
  %2095 = getelementptr inbounds nuw i8, ptr %2082, i64 4
  %2096 = getelementptr inbounds nuw i8, ptr %2084, i64 4
  %2097 = load i8, ptr %2096, align 1, !tbaa !44
  store i8 %2097, ptr %2095, align 1, !tbaa !44
  %2098 = getelementptr inbounds nuw i8, ptr %2082, i64 5
  %2099 = getelementptr inbounds nuw i8, ptr %2084, i64 5
  %2100 = load i8, ptr %2099, align 1, !tbaa !44
  store i8 %2100, ptr %2098, align 1, !tbaa !44
  %2101 = getelementptr inbounds nuw i8, ptr %2082, i64 6
  %2102 = getelementptr inbounds nuw i8, ptr %2084, i64 6
  %2103 = load i8, ptr %2102, align 1, !tbaa !44
  store i8 %2103, ptr %2101, align 1, !tbaa !44
  %2104 = getelementptr inbounds nuw i8, ptr %2082, i64 7
  %2105 = getelementptr inbounds nuw i8, ptr %2084, i64 7
  %2106 = load i8, ptr %2105, align 1, !tbaa !44
  store i8 %2106, ptr %2104, align 1, !tbaa !44
  %2107 = getelementptr inbounds nuw i8, ptr %2082, i64 8
  %2108 = add i32 %2083, -8
  %2109 = getelementptr inbounds nuw i8, ptr %2084, i64 8
  %2110 = icmp eq i32 %2108, 0
  br i1 %2110, label %2111, label %2081, !llvm.loop !102

2111:                                             ; preds = %2081, %2073, %2053, %2035
  %2112 = phi ptr [ %2042, %2053 ], [ %2021, %2035 ], [ %2074, %2073 ], [ %2107, %2081 ]
  %2113 = load i32, ptr %56, align 4, !tbaa !61
  %2114 = icmp eq i32 %2113, 0
  br i1 %2114, label %2115, label %2346

2115:                                             ; preds = %2111
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2346

2116:                                             ; preds = %88
  %2117 = icmp eq i32 %93, 0
  br i1 %2117, label %2480, label %2118

2118:                                             ; preds = %2116
  %2119 = load i32, ptr %56, align 4, !tbaa !61
  %2120 = trunc i32 %2119 to i8
  store i8 %2120, ptr %91, align 1, !tbaa !44
  %2121 = add i32 %93, -1
  %2122 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2346

2123:                                             ; preds = %88
  %2124 = load i32, ptr %49, align 8, !tbaa !24
  %2125 = icmp eq i32 %2124, 0
  br i1 %2125, label %2246, label %2126

2126:                                             ; preds = %2123
  %2127 = icmp ult i32 %95, 32
  br i1 %2127, label %2128, label %2191

2128:                                             ; preds = %2126
  %2129 = zext nneg i32 %95 to i64
  %2130 = icmp eq i32 %92, 0
  br i1 %2130, label %2473, label %2131

2131:                                             ; preds = %2128
  %2132 = load i8, ptr %90, align 1, !tbaa !44
  %2133 = zext i8 %2132 to i64
  %2134 = shl nuw nsw i64 %2133, %2129
  %2135 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %2134), !nosanitize !47
  %2136 = extractvalue { i64, i1 } %2135, 1, !nosanitize !47
  br i1 %2136, label %2137, label %2138, !prof !48, !nosanitize !47

2137:                                             ; preds = %2174, %2160, %2146, %2131
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2138:                                             ; preds = %2131
  %2139 = extractvalue { i64, i1 } %2135, 0, !nosanitize !47
  %2140 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %2141 = add i32 %92, -1
  %2142 = add nuw nsw i64 %2129, 8
  %2143 = icmp ult i32 %95, 24
  br i1 %2143, label %2144, label %2185

2144:                                             ; preds = %2138
  %2145 = icmp eq i32 %2141, 0
  br i1 %2145, label %2473, label %2146

2146:                                             ; preds = %2144
  %2147 = load i8, ptr %2140, align 1, !tbaa !44
  %2148 = zext i8 %2147 to i64
  %2149 = shl nuw nsw i64 %2148, %2142
  %2150 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2139, i64 %2149), !nosanitize !47
  %2151 = extractvalue { i64, i1 } %2150, 1, !nosanitize !47
  br i1 %2151, label %2137, label %2152, !prof !48, !nosanitize !47

2152:                                             ; preds = %2146
  %2153 = extractvalue { i64, i1 } %2150, 0, !nosanitize !47
  %2154 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %2155 = add i32 %92, -2
  %2156 = add nuw nsw i64 %2129, 16
  %2157 = icmp ult i32 %95, 16
  br i1 %2157, label %2158, label %2185

2158:                                             ; preds = %2152
  %2159 = icmp eq i32 %2155, 0
  br i1 %2159, label %2473, label %2160

2160:                                             ; preds = %2158
  %2161 = load i8, ptr %2154, align 1, !tbaa !44
  %2162 = zext i8 %2161 to i64
  %2163 = shl nuw nsw i64 %2162, %2156
  %2164 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2153, i64 %2163), !nosanitize !47
  %2165 = extractvalue { i64, i1 } %2164, 1, !nosanitize !47
  br i1 %2165, label %2137, label %2166, !prof !48, !nosanitize !47

2166:                                             ; preds = %2160
  %2167 = extractvalue { i64, i1 } %2164, 0, !nosanitize !47
  %2168 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %2169 = add i32 %92, -3
  %2170 = add nuw nsw i64 %2129, 24
  %2171 = icmp ult i32 %95, 8
  br i1 %2171, label %2172, label %2185

2172:                                             ; preds = %2166
  %2173 = icmp eq i32 %2169, 0
  br i1 %2173, label %2473, label %2174

2174:                                             ; preds = %2172
  %2175 = load i8, ptr %2168, align 1, !tbaa !44
  %2176 = zext i8 %2175 to i64
  %2177 = shl nuw nsw i64 %2176, %2170
  %2178 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2167, i64 %2177), !nosanitize !47
  %2179 = extractvalue { i64, i1 } %2178, 1, !nosanitize !47
  br i1 %2179, label %2137, label %2180, !prof !48, !nosanitize !47

2180:                                             ; preds = %2174
  %2181 = extractvalue { i64, i1 } %2178, 0, !nosanitize !47
  %2182 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %2183 = add i32 %92, -4
  %2184 = or disjoint i64 %2129, 32
  br label %2185

2185:                                             ; preds = %2180, %2166, %2152, %2138
  %2186 = phi i64 [ %2139, %2138 ], [ %2153, %2152 ], [ %2167, %2166 ], [ %2181, %2180 ]
  %2187 = phi ptr [ %2140, %2138 ], [ %2154, %2152 ], [ %2168, %2166 ], [ %2182, %2180 ]
  %2188 = phi i32 [ %2141, %2138 ], [ %2155, %2152 ], [ %2169, %2166 ], [ %2183, %2180 ]
  %2189 = phi i64 [ %2142, %2138 ], [ %2156, %2152 ], [ %2170, %2166 ], [ %2184, %2180 ]
  %2190 = trunc nuw nsw i64 %2189 to i32
  br label %2191

2191:                                             ; preds = %2185, %2126
  %2192 = phi ptr [ %90, %2126 ], [ %2187, %2185 ]
  %2193 = phi i32 [ %92, %2126 ], [ %2188, %2185 ]
  %2194 = phi i64 [ %94, %2126 ], [ %2186, %2185 ]
  %2195 = phi i32 [ %95, %2126 ], [ %2190, %2185 ]
  %2196 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %2197 = extractvalue { i32, i1 } %2196, 0, !nosanitize !47
  %2198 = extractvalue { i32, i1 } %2196, 1, !nosanitize !47
  br i1 %2198, label %2199, label %2200, !prof !48, !nosanitize !47

2199:                                             ; preds = %2191
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2200:                                             ; preds = %2191
  %2201 = zext i32 %2197 to i64
  %2202 = load i64, ptr %50, align 8, !tbaa !103
  %2203 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2202, i64 %2201), !nosanitize !47
  %2204 = extractvalue { i64, i1 } %2203, 1, !nosanitize !47
  br i1 %2204, label %2205, label %2206, !prof !48, !nosanitize !47

2205:                                             ; preds = %2200
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2206:                                             ; preds = %2200
  %2207 = extractvalue { i64, i1 } %2203, 0, !nosanitize !47
  store i64 %2207, ptr %50, align 8, !tbaa !103
  %2208 = load i64, ptr %51, align 8, !tbaa !21
  %2209 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2208, i64 %2201), !nosanitize !47
  %2210 = extractvalue { i64, i1 } %2209, 1, !nosanitize !47
  br i1 %2210, label %2211, label %2212, !prof !48, !nosanitize !47

2211:                                             ; preds = %2206
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2212:                                             ; preds = %2206
  %2213 = extractvalue { i64, i1 } %2209, 0, !nosanitize !47
  store i64 %2213, ptr %51, align 8, !tbaa !21
  %2214 = and i32 %2124, 4
  %2215 = icmp ne i32 %2214, 0
  %2216 = icmp ne i32 %2197, 0
  %2217 = select i1 %2215, i1 %2216, i1 false
  br i1 %2217, label %2218, label %2232

2218:                                             ; preds = %2212
  %2219 = load i32, ptr %52, align 8, !tbaa !28
  %2220 = icmp eq i32 %2219, 0
  %2221 = load i64, ptr %53, align 8, !tbaa !54
  %2222 = sub nsw i64 0, %2201
  %2223 = getelementptr inbounds i8, ptr %91, i64 %2222
  br i1 %2220, label %2226, label %2224

2224:                                             ; preds = %2218
  %2225 = call i64 @crc32(i64 noundef %2221, ptr noundef nonnull %2223, i32 noundef %2197) #12
  br label %2228

2226:                                             ; preds = %2218
  %2227 = call i64 @adler32(i64 noundef %2221, ptr noundef nonnull %2223, i32 noundef %2197) #12
  br label %2228

2228:                                             ; preds = %2226, %2224
  %2229 = phi i64 [ %2225, %2224 ], [ %2227, %2226 ]
  store i64 %2229, ptr %53, align 8, !tbaa !54
  store i64 %2229, ptr %54, align 8, !tbaa !25
  %2230 = load i32, ptr %49, align 8, !tbaa !24
  %2231 = and i32 %2230, 4
  br label %2232

2232:                                             ; preds = %2228, %2212
  %2233 = phi i32 [ %2231, %2228 ], [ %2214, %2212 ]
  %2234 = phi i32 [ %2230, %2228 ], [ %2124, %2212 ]
  %2235 = icmp eq i32 %2233, 0
  br i1 %2235, label %2246, label %2236

2236:                                             ; preds = %2232
  %2237 = load i32, ptr %52, align 8, !tbaa !28
  %2238 = icmp eq i32 %2237, 0
  %2239 = trunc i64 %2194 to i32
  %2240 = call i32 @llvm.bswap.i32(i32 %2239)
  %2241 = zext i32 %2240 to i64
  %2242 = select i1 %2238, i64 %2241, i64 %2194
  %2243 = load i64, ptr %53, align 8, !tbaa !54
  %2244 = icmp eq i64 %2242, %2243
  br i1 %2244, label %2246, label %2245

2245:                                             ; preds = %2236
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

2246:                                             ; preds = %2236, %2232, %2123
  %2247 = phi i32 [ 0, %2123 ], [ %2234, %2232 ], [ %2234, %2236 ]
  %2248 = phi ptr [ %90, %2123 ], [ %2192, %2232 ], [ %2192, %2236 ]
  %2249 = phi i32 [ %92, %2123 ], [ %2193, %2232 ], [ %2193, %2236 ]
  %2250 = phi i64 [ %94, %2123 ], [ 0, %2232 ], [ 0, %2236 ]
  %2251 = phi i32 [ %95, %2123 ], [ 0, %2232 ], [ 0, %2236 ]
  %2252 = phi i32 [ %96, %2123 ], [ %93, %2232 ], [ %93, %2236 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2253

2253:                                             ; preds = %2246, %103
  %2254 = phi i32 [ %2247, %2246 ], [ %104, %103 ]
  %2255 = phi ptr [ %2248, %2246 ], [ %90, %103 ]
  %2256 = phi i32 [ %2249, %2246 ], [ %92, %103 ]
  %2257 = phi i64 [ %2250, %2246 ], [ %94, %103 ]
  %2258 = phi i32 [ %2251, %2246 ], [ %95, %103 ]
  %2259 = phi i32 [ %2252, %2246 ], [ %96, %103 ]
  %2260 = icmp eq i32 %2254, 0
  br i1 %2260, label %2341, label %2261

2261:                                             ; preds = %2253
  %2262 = load i32, ptr %52, align 8, !tbaa !28
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2341, label %2264

2264:                                             ; preds = %2261
  %2265 = icmp ult i32 %2258, 32
  br i1 %2265, label %2266, label %2329

2266:                                             ; preds = %2264
  %2267 = zext nneg i32 %2258 to i64
  %2268 = icmp eq i32 %2256, 0
  br i1 %2268, label %2467, label %2269

2269:                                             ; preds = %2266
  %2270 = load i8, ptr %2255, align 1, !tbaa !44
  %2271 = zext i8 %2270 to i64
  %2272 = shl nuw nsw i64 %2271, %2267
  %2273 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2257, i64 %2272), !nosanitize !47
  %2274 = extractvalue { i64, i1 } %2273, 1, !nosanitize !47
  br i1 %2274, label %2275, label %2276, !prof !48, !nosanitize !47

2275:                                             ; preds = %2312, %2298, %2284, %2269
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2276:                                             ; preds = %2269
  %2277 = extractvalue { i64, i1 } %2273, 0, !nosanitize !47
  %2278 = getelementptr inbounds nuw i8, ptr %2255, i64 1
  %2279 = add i32 %2256, -1
  %2280 = add nuw nsw i64 %2267, 8
  %2281 = icmp ult i32 %2258, 24
  br i1 %2281, label %2282, label %2323

2282:                                             ; preds = %2276
  %2283 = icmp eq i32 %2279, 0
  br i1 %2283, label %2467, label %2284

2284:                                             ; preds = %2282
  %2285 = load i8, ptr %2278, align 1, !tbaa !44
  %2286 = zext i8 %2285 to i64
  %2287 = shl nuw nsw i64 %2286, %2280
  %2288 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2277, i64 %2287), !nosanitize !47
  %2289 = extractvalue { i64, i1 } %2288, 1, !nosanitize !47
  br i1 %2289, label %2275, label %2290, !prof !48, !nosanitize !47

2290:                                             ; preds = %2284
  %2291 = extractvalue { i64, i1 } %2288, 0, !nosanitize !47
  %2292 = getelementptr inbounds nuw i8, ptr %2255, i64 2
  %2293 = add i32 %2256, -2
  %2294 = add nuw nsw i64 %2267, 16
  %2295 = icmp ult i32 %2258, 16
  br i1 %2295, label %2296, label %2323

2296:                                             ; preds = %2290
  %2297 = icmp eq i32 %2293, 0
  br i1 %2297, label %2467, label %2298

2298:                                             ; preds = %2296
  %2299 = load i8, ptr %2292, align 1, !tbaa !44
  %2300 = zext i8 %2299 to i64
  %2301 = shl nuw nsw i64 %2300, %2294
  %2302 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2291, i64 %2301), !nosanitize !47
  %2303 = extractvalue { i64, i1 } %2302, 1, !nosanitize !47
  br i1 %2303, label %2275, label %2304, !prof !48, !nosanitize !47

2304:                                             ; preds = %2298
  %2305 = extractvalue { i64, i1 } %2302, 0, !nosanitize !47
  %2306 = getelementptr inbounds nuw i8, ptr %2255, i64 3
  %2307 = add i32 %2256, -3
  %2308 = add nuw nsw i64 %2267, 24
  %2309 = icmp ult i32 %2258, 8
  br i1 %2309, label %2310, label %2323

2310:                                             ; preds = %2304
  %2311 = icmp eq i32 %2307, 0
  br i1 %2311, label %2467, label %2312

2312:                                             ; preds = %2310
  %2313 = load i8, ptr %2306, align 1, !tbaa !44
  %2314 = zext i8 %2313 to i64
  %2315 = shl nuw nsw i64 %2314, %2308
  %2316 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2305, i64 %2315), !nosanitize !47
  %2317 = extractvalue { i64, i1 } %2316, 1, !nosanitize !47
  br i1 %2317, label %2275, label %2318, !prof !48, !nosanitize !47

2318:                                             ; preds = %2312
  %2319 = extractvalue { i64, i1 } %2316, 0, !nosanitize !47
  %2320 = getelementptr inbounds nuw i8, ptr %2255, i64 4
  %2321 = add i32 %2256, -4
  %2322 = or disjoint i64 %2267, 32
  br label %2323

2323:                                             ; preds = %2318, %2304, %2290, %2276
  %2324 = phi i64 [ %2277, %2276 ], [ %2291, %2290 ], [ %2305, %2304 ], [ %2319, %2318 ]
  %2325 = phi ptr [ %2278, %2276 ], [ %2292, %2290 ], [ %2306, %2304 ], [ %2320, %2318 ]
  %2326 = phi i32 [ %2279, %2276 ], [ %2293, %2290 ], [ %2307, %2304 ], [ %2321, %2318 ]
  %2327 = phi i64 [ %2280, %2276 ], [ %2294, %2290 ], [ %2308, %2304 ], [ %2322, %2318 ]
  %2328 = trunc nuw nsw i64 %2327 to i32
  br label %2329

2329:                                             ; preds = %2323, %2264
  %2330 = phi ptr [ %2255, %2264 ], [ %2325, %2323 ]
  %2331 = phi i32 [ %2256, %2264 ], [ %2326, %2323 ]
  %2332 = phi i64 [ %2257, %2264 ], [ %2324, %2323 ]
  %2333 = phi i32 [ %2258, %2264 ], [ %2328, %2323 ]
  %2334 = and i32 %2254, 4
  %2335 = icmp eq i32 %2334, 0
  br i1 %2335, label %2341, label %2336

2336:                                             ; preds = %2329
  %2337 = load i64, ptr %51, align 8, !tbaa !21
  %2338 = and i64 %2337, 4294967295
  %2339 = icmp eq i64 %2332, %2338
  br i1 %2339, label %2341, label %2340

2340:                                             ; preds = %2336
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2346

2341:                                             ; preds = %2336, %2329, %2261, %2253
  %2342 = phi ptr [ %2255, %2253 ], [ %2255, %2261 ], [ %2330, %2329 ], [ %2330, %2336 ]
  %2343 = phi i32 [ %2256, %2253 ], [ %2256, %2261 ], [ %2331, %2329 ], [ %2331, %2336 ]
  %2344 = phi i64 [ %2257, %2253 ], [ %2257, %2261 ], [ 0, %2329 ], [ 0, %2336 ]
  %2345 = phi i32 [ %2258, %2253 ], [ %2258, %2261 ], [ 0, %2329 ], [ 0, %2336 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %2480

2346:                                             ; preds = %2340, %2245, %2118, %2115, %2111, %1968, %1872, %1639, %1635, %1631, %1484, %1475, %1458, %1449, %1445, %1409, %1288, %1143, %1068, %1016, %1013, %979, %897, %861, %772, %759, %262, %258, %212, %211, %196, %192, %174, %128
  %2347 = phi ptr [ %90, %128 ], [ %162, %174 ], [ %162, %192 ], [ %162, %196 ], [ %162, %211 ], [ %162, %212 ], [ %251, %258 ], [ %251, %262 ], [ %748, %759 ], [ %761, %772 ], [ %850, %861 ], [ %880, %897 ], [ %971, %979 ], [ %1006, %1013 ], [ %989, %1016 ], [ %1050, %1068 ], [ %1084, %1143 ], [ %1280, %1288 ], [ %1442, %1445 ], [ %1442, %1449 ], [ %1442, %1458 ], [ %1478, %1484 ], [ %1478, %1475 ], [ %1612, %1631 ], [ %1612, %1635 ], [ %1612, %1639 ], [ %1849, %1872 ], [ %1947, %1968 ], [ %1947, %2115 ], [ %1947, %2111 ], [ %90, %2118 ], [ %2192, %2245 ], [ %2330, %2340 ], [ %1377, %1409 ]
  %2348 = phi ptr [ %91, %128 ], [ %91, %174 ], [ %91, %192 ], [ %91, %196 ], [ %91, %211 ], [ %91, %212 ], [ %91, %258 ], [ %91, %262 ], [ %91, %759 ], [ %91, %772 ], [ %91, %861 ], [ %91, %897 ], [ %91, %979 ], [ %1015, %1013 ], [ %91, %1016 ], [ %91, %1068 ], [ %91, %1143 ], [ %91, %1288 ], [ %91, %1445 ], [ %91, %1449 ], [ %91, %1458 ], [ %1476, %1484 ], [ %1476, %1475 ], [ %91, %1631 ], [ %91, %1635 ], [ %91, %1639 ], [ %91, %1872 ], [ %91, %1968 ], [ %2112, %2115 ], [ %2112, %2111 ], [ %2122, %2118 ], [ %91, %2245 ], [ %91, %2340 ], [ %91, %1409 ]
  %2349 = phi i32 [ %92, %128 ], [ %163, %174 ], [ %163, %192 ], [ %163, %196 ], [ %163, %211 ], [ %163, %212 ], [ %252, %258 ], [ %252, %262 ], [ %749, %759 ], [ %762, %772 ], [ %851, %861 ], [ %881, %897 ], [ %972, %979 ], [ %1002, %1013 ], [ %990, %1016 ], [ %1051, %1068 ], [ %1085, %1143 ], [ %1281, %1288 ], [ %1441, %1445 ], [ %1441, %1449 ], [ %1441, %1458 ], [ %1479, %1484 ], [ %1479, %1475 ], [ %1613, %1631 ], [ %1613, %1635 ], [ %1613, %1639 ], [ %1850, %1872 ], [ %1948, %1968 ], [ %1948, %2115 ], [ %1948, %2111 ], [ %92, %2118 ], [ %2193, %2245 ], [ %2331, %2340 ], [ %1378, %1409 ]
  %2350 = phi i32 [ %93, %128 ], [ %93, %174 ], [ %93, %192 ], [ %93, %196 ], [ %93, %211 ], [ %93, %212 ], [ %93, %258 ], [ %93, %262 ], [ %93, %759 ], [ %93, %772 ], [ %93, %861 ], [ %93, %897 ], [ %93, %979 ], [ %1008, %1013 ], [ %93, %1016 ], [ %93, %1068 ], [ %93, %1143 ], [ %93, %1288 ], [ %93, %1445 ], [ %93, %1449 ], [ %93, %1458 ], [ %1477, %1484 ], [ %1477, %1475 ], [ %93, %1631 ], [ %93, %1635 ], [ %93, %1639 ], [ %93, %1872 ], [ %93, %1968 ], [ %2002, %2115 ], [ %2002, %2111 ], [ %2121, %2118 ], [ %93, %2245 ], [ %93, %2340 ], [ %93, %1409 ]
  %2351 = phi i64 [ %94, %128 ], [ 0, %174 ], [ %164, %192 ], [ %164, %196 ], [ %198, %211 ], [ 0, %212 ], [ %253, %258 ], [ %253, %262 ], [ %750, %759 ], [ %763, %772 ], [ %866, %861 ], [ %899, %897 ], [ %973, %979 ], [ %991, %1013 ], [ %991, %1016 ], [ %1063, %1068 ], [ %1086, %1143 ], [ %1285, %1288 ], [ %1440, %1445 ], [ %1440, %1449 ], [ %1440, %1458 ], [ %1480, %1484 ], [ %1480, %1475 ], [ %1621, %1631 ], [ %1621, %1635 ], [ %1621, %1639 ], [ %1858, %1872 ], [ %1949, %1968 ], [ %1949, %2115 ], [ %1949, %2111 ], [ %94, %2118 ], [ %2194, %2245 ], [ %2332, %2340 ], [ %1379, %1409 ]
  %2352 = phi i32 [ %95, %128 ], [ 0, %174 ], [ %165, %192 ], [ %165, %196 ], [ %199, %211 ], [ 0, %212 ], [ %254, %258 ], [ %254, %262 ], [ %751, %759 ], [ %764, %772 ], [ %864, %861 ], [ %898, %897 ], [ %974, %979 ], [ %992, %1013 ], [ %992, %1016 ], [ %1064, %1068 ], [ %1087, %1143 ], [ %1286, %1288 ], [ %1439, %1445 ], [ %1439, %1449 ], [ %1439, %1458 ], [ %1481, %1484 ], [ %1481, %1475 ], [ %1623, %1631 ], [ %1623, %1635 ], [ %1623, %1639 ], [ %1860, %1872 ], [ %1950, %1968 ], [ %1950, %2115 ], [ %1950, %2111 ], [ %95, %2118 ], [ %2195, %2245 ], [ %2333, %2340 ], [ %1383, %1409 ]
  %2353 = phi i32 [ %96, %128 ], [ %96, %174 ], [ %96, %192 ], [ %96, %196 ], [ %96, %211 ], [ %96, %212 ], [ %96, %258 ], [ %96, %262 ], [ %96, %759 ], [ %96, %772 ], [ %96, %861 ], [ %96, %897 ], [ %96, %979 ], [ %96, %1013 ], [ %96, %1016 ], [ %96, %1068 ], [ %96, %1143 ], [ %96, %1288 ], [ %96, %1445 ], [ %96, %1449 ], [ %96, %1458 ], [ %96, %1484 ], [ %96, %1475 ], [ %96, %1631 ], [ %96, %1635 ], [ %96, %1639 ], [ %96, %1872 ], [ %96, %1968 ], [ %96, %2115 ], [ %96, %2111 ], [ %96, %2118 ], [ %93, %2245 ], [ %2259, %2340 ], [ %96, %1409 ]
  %2354 = phi i32 [ %97, %128 ], [ %97, %174 ], [ %97, %192 ], [ %97, %196 ], [ %97, %211 ], [ %97, %212 ], [ %97, %258 ], [ %97, %262 ], [ %97, %759 ], [ %97, %772 ], [ %97, %861 ], [ %97, %897 ], [ %97, %979 ], [ %97, %1013 ], [ %97, %1016 ], [ %97, %1068 ], [ %1141, %1143 ], [ %1150, %1288 ], [ %1150, %1445 ], [ %1447, %1449 ], [ %1456, %1458 ], [ %1471, %1484 ], [ %1471, %1475 ], [ %1471, %1631 ], [ %1471, %1635 ], [ %1471, %1639 ], [ %1718, %1872 ], [ %1951, %1968 ], [ %1951, %2115 ], [ %1951, %2111 ], [ %97, %2118 ], [ %97, %2245 ], [ %97, %2340 ], [ %1150, %1409 ]
  %2355 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

2356:                                             ; preds = %1187, %1183
  %2357 = phi i64 [ %1201, %1187 ], [ %1171, %1183 ]
  %2358 = zext i32 %1170 to i64
  %2359 = shl i32 %1170, 3
  %2360 = add i32 %2359, %1172
  %2361 = getelementptr i8, ptr %1169, i64 %2358
  br label %2480

2362:                                             ; preds = %142, %125
  %2363 = phi i64 [ %94, %125 ], [ %137, %142 ]
  %2364 = zext i32 %92 to i64
  %2365 = shl i32 %92, 3
  %2366 = add i32 %2365, %95
  %2367 = getelementptr i8, ptr %90, i64 %2364
  br label %2480

2368:                                             ; preds = %728, %712
  %2369 = phi i64 [ %705, %712 ], [ %723, %728 ]
  %2370 = zext i32 %704 to i64
  %2371 = shl i32 %704, 3
  %2372 = add i32 %2371, %706
  %2373 = getelementptr i8, ptr %703, i64 %2370
  br label %2480

2374:                                             ; preds = %454, %433
  %2375 = phi i64 [ %436, %433 ], [ %449, %454 ]
  %2376 = zext i32 %435 to i64
  %2377 = shl i32 %435, 3
  %2378 = add i32 %2377, %437
  %2379 = getelementptr i8, ptr %434, i64 %2376
  br label %2480

2380:                                             ; preds = %386, %366
  %2381 = phi i64 [ %368, %366 ], [ %381, %386 ]
  %2382 = zext i32 %369 to i64
  %2383 = shl i32 %369, 3
  %2384 = add i32 %2383, %367
  %2385 = getelementptr i8, ptr %370, i64 %2382
  br label %2480

2386:                                             ; preds = %331, %317, %303, %283
  %2387 = phi i64 [ %285, %283 ], [ %298, %303 ], [ %312, %317 ], [ %326, %331 ]
  %2388 = zext i32 %286 to i64
  %2389 = shl i32 %286, 3
  %2390 = add i32 %2389, %284
  %2391 = getelementptr i8, ptr %287, i64 %2388
  br label %2480

2392:                                             ; preds = %231, %117
  %2393 = phi i64 [ %94, %117 ], [ %226, %231 ]
  %2394 = zext i32 %92 to i64
  %2395 = shl i32 %92, 3
  %2396 = add i32 %2395, %95
  %2397 = getelementptr i8, ptr %90, i64 %2394
  br label %2480

2398:                                             ; preds = %815, %801, %787, %112
  %2399 = phi i64 [ %94, %112 ], [ %782, %787 ], [ %796, %801 ], [ %810, %815 ]
  %2400 = zext i32 %92 to i64
  %2401 = shl i32 %92, 3
  %2402 = add i32 %2401, %95
  %2403 = getelementptr i8, ptr %90, i64 %2400
  br label %2480

2404:                                             ; preds = %952, %938, %924, %907
  %2405 = phi i64 [ %904, %907 ], [ %919, %924 ], [ %933, %938 ], [ %947, %952 ]
  %2406 = zext i32 %92 to i64
  %2407 = shl i32 %92, 3
  %2408 = add i32 %2407, %908
  %2409 = getelementptr i8, ptr %90, i64 %2406
  br label %2480

2410:                                             ; preds = %1890, %1886
  %2411 = phi i64 [ %1903, %1890 ], [ %1880, %1886 ]
  %2412 = zext i32 %1879 to i64
  %2413 = shl i32 %1879, 3
  %2414 = add i32 %2413, %1881
  %2415 = getelementptr i8, ptr %1878, i64 %2412
  br label %2480

2416:                                             ; preds = %1797, %1793
  %2417 = phi i64 [ %1812, %1797 ], [ %1768, %1793 ]
  %2418 = zext i32 %1767 to i64
  %2419 = shl i32 %1767, 3
  %2420 = add i32 %2419, %1769
  %2421 = getelementptr i8, ptr %1766, i64 %2418
  br label %2480

2422:                                             ; preds = %1735, %1731
  %2423 = phi i64 [ %1749, %1735 ], [ %1716, %1731 ]
  %2424 = zext i32 %1715 to i64
  %2425 = shl i32 %1715, 3
  %2426 = add i32 %2425, %1717
  %2427 = getelementptr i8, ptr %1714, i64 %2424
  br label %2480

2428:                                             ; preds = %1656, %1652
  %2429 = phi i64 [ %1669, %1656 ], [ %1646, %1652 ]
  %2430 = zext i32 %1645 to i64
  %2431 = shl i32 %1645, 3
  %2432 = add i32 %2431, %1647
  %2433 = getelementptr i8, ptr %1644, i64 %2430
  br label %2480

2434:                                             ; preds = %1565, %1561
  %2435 = phi i64 [ %1579, %1565 ], [ %1535, %1561 ]
  %2436 = zext i32 %1534 to i64
  %2437 = shl i32 %1534, 3
  %2438 = add i32 %2437, %1536
  %2439 = getelementptr i8, ptr %1533, i64 %2436
  br label %2480

2440:                                             ; preds = %1502, %1498
  %2441 = phi i64 [ %1516, %1502 ], [ %1469, %1498 ]
  %2442 = zext i32 %1468 to i64
  %2443 = shl i32 %1468, 3
  %2444 = add i32 %2443, %1470
  %2445 = getelementptr i8, ptr %1467, i64 %2442
  br label %2480

2446:                                             ; preds = %1339
  %2447 = zext i32 %1219 to i64
  %2448 = shl i32 %1219, 3
  %2449 = add i32 %2448, %1221
  %2450 = getelementptr i8, ptr %1218, i64 %2447
  br label %2480

2451:                                             ; preds = %1258
  %2452 = zext i32 %1219 to i64
  %2453 = shl i32 %1219, 3
  %2454 = add i32 %2453, %1221
  %2455 = getelementptr i8, ptr %1218, i64 %2452
  br label %2480

2456:                                             ; preds = %1302
  %2457 = zext i32 %1219 to i64
  %2458 = shl i32 %1219, 3
  %2459 = add i32 %2458, %1221
  %2460 = getelementptr i8, ptr %1218, i64 %2457
  br label %2480

2461:                                             ; preds = %1030, %107
  %2462 = phi i64 [ %94, %107 ], [ %1025, %1030 ]
  %2463 = zext i32 %92 to i64
  %2464 = shl i32 %92, 3
  %2465 = add i32 %2464, %95
  %2466 = getelementptr i8, ptr %90, i64 %2463
  br label %2480

2467:                                             ; preds = %2310, %2296, %2282, %2266
  %2468 = phi i64 [ %2257, %2266 ], [ %2277, %2282 ], [ %2291, %2296 ], [ %2305, %2310 ]
  %2469 = zext i32 %2256 to i64
  %2470 = shl i32 %2256, 3
  %2471 = add i32 %2470, %2258
  %2472 = getelementptr i8, ptr %2255, i64 %2469
  br label %2480

2473:                                             ; preds = %2172, %2158, %2144, %2128
  %2474 = phi i64 [ %94, %2128 ], [ %2139, %2144 ], [ %2153, %2158 ], [ %2167, %2172 ]
  %2475 = zext i32 %92 to i64
  %2476 = shl i32 %92, 3
  %2477 = add i32 %2476, %95
  %2478 = getelementptr i8, ptr %90, i64 %2475
  br label %2480

2479:                                             ; preds = %88
  br label %2480

2480:                                             ; preds = %2479, %2473, %2467, %2461, %2456, %2451, %2446, %2440, %2434, %2428, %2422, %2416, %2410, %2404, %2398, %2392, %2386, %2380, %2374, %2368, %2362, %2356, %2341, %2116, %1946, %1459, %1099, %995, %980, %889, %858, %844, %690, %646, %626, %582, %566, %88
  %2481 = phi i32 [ %93, %2467 ], [ %93, %2362 ], [ %93, %2356 ], [ %93, %1099 ], [ %93, %2473 ], [ %93, %2446 ], [ %93, %2404 ], [ %93, %2410 ], [ %93, %2392 ], [ %93, %2380 ], [ %93, %2428 ], [ %93, %2374 ], [ %93, %2341 ], [ %93, %2368 ], [ %93, %889 ], [ %93, %2440 ], [ %93, %2456 ], [ %93, %2434 ], [ %93, %2416 ], [ %93, %2461 ], [ %93, %2386 ], [ %93, %2422 ], [ %93, %2451 ], [ %93, %2398 ], [ %93, %88 ], [ %93, %566 ], [ %93, %582 ], [ %93, %626 ], [ %93, %646 ], [ %93, %690 ], [ %93, %844 ], [ %93, %980 ], [ %93, %995 ], [ %93, %1459 ], [ 0, %1946 ], [ 0, %2116 ], [ %93, %858 ], [ %93, %2479 ]
  %2482 = phi ptr [ %2472, %2467 ], [ %2367, %2362 ], [ %2361, %2356 ], [ %1097, %1099 ], [ %2478, %2473 ], [ %2450, %2446 ], [ %2409, %2404 ], [ %2415, %2410 ], [ %2397, %2392 ], [ %2385, %2380 ], [ %2433, %2428 ], [ %2379, %2374 ], [ %2342, %2341 ], [ %2373, %2368 ], [ %880, %889 ], [ %2445, %2440 ], [ %2460, %2456 ], [ %2439, %2434 ], [ %2421, %2416 ], [ %2466, %2461 ], [ %2391, %2386 ], [ %2427, %2422 ], [ %2455, %2451 ], [ %2403, %2398 ], [ %90, %88 ], [ %568, %566 ], [ %575, %582 ], [ %629, %626 ], [ %639, %646 ], [ %693, %690 ], [ %845, %844 ], [ %971, %980 ], [ %989, %995 ], [ %1442, %1459 ], [ %1947, %1946 ], [ %90, %2116 ], [ %850, %858 ], [ %90, %2479 ]
  %2483 = phi i32 [ 0, %2467 ], [ 0, %2362 ], [ 0, %2356 ], [ 0, %1099 ], [ 0, %2473 ], [ 0, %2446 ], [ 0, %2404 ], [ 0, %2410 ], [ 0, %2392 ], [ 0, %2380 ], [ 0, %2428 ], [ 0, %2374 ], [ %2343, %2341 ], [ 0, %2368 ], [ %881, %889 ], [ 0, %2440 ], [ 0, %2456 ], [ 0, %2434 ], [ 0, %2416 ], [ 0, %2461 ], [ 0, %2386 ], [ 0, %2422 ], [ 0, %2451 ], [ 0, %2398 ], [ %92, %88 ], [ %569, %566 ], [ 0, %582 ], [ %627, %626 ], [ 0, %646 ], [ %691, %690 ], [ %846, %844 ], [ %972, %980 ], [ %990, %995 ], [ %1441, %1459 ], [ %1948, %1946 ], [ %92, %2116 ], [ 0, %858 ], [ %92, %2479 ]
  %2484 = phi i64 [ %2468, %2467 ], [ %2363, %2362 ], [ %2357, %2356 ], [ %1095, %1099 ], [ %2474, %2473 ], [ %1341, %2446 ], [ %2405, %2404 ], [ %2411, %2410 ], [ %2393, %2392 ], [ %2381, %2380 ], [ %2429, %2428 ], [ %2375, %2374 ], [ %2344, %2341 ], [ %2369, %2368 ], [ %891, %889 ], [ %2441, %2440 ], [ %1304, %2456 ], [ %2435, %2434 ], [ %2417, %2416 ], [ %2462, %2461 ], [ %2387, %2386 ], [ %2423, %2422 ], [ %1260, %2451 ], [ %2399, %2398 ], [ %94, %88 ], [ %504, %566 ], [ %577, %582 ], [ %577, %626 ], [ %641, %646 ], [ %641, %690 ], [ %847, %844 ], [ 0, %980 ], [ %991, %995 ], [ %1440, %1459 ], [ %1949, %1946 ], [ %94, %2116 ], [ %852, %858 ], [ %94, %2479 ]
  %2485 = phi i32 [ %2471, %2467 ], [ %2366, %2362 ], [ %2360, %2356 ], [ %1094, %1099 ], [ %2477, %2473 ], [ %2449, %2446 ], [ %2408, %2404 ], [ %2414, %2410 ], [ %2396, %2392 ], [ %2384, %2380 ], [ %2432, %2428 ], [ %2378, %2374 ], [ %2345, %2341 ], [ %2372, %2368 ], [ %890, %889 ], [ %2444, %2440 ], [ %2459, %2456 ], [ %2438, %2434 ], [ %2420, %2416 ], [ %2465, %2461 ], [ %2390, %2386 ], [ %2426, %2422 ], [ %2454, %2451 ], [ %2402, %2398 ], [ %95, %88 ], [ %505, %566 ], [ %578, %582 ], [ %578, %626 ], [ %642, %646 ], [ %642, %690 ], [ %848, %844 ], [ 0, %980 ], [ %992, %995 ], [ %1439, %1459 ], [ %1950, %1946 ], [ %95, %2116 ], [ %853, %858 ], [ %95, %2479 ]
  %2486 = phi i32 [ %2259, %2467 ], [ %96, %2362 ], [ %96, %2356 ], [ %96, %1099 ], [ %96, %2473 ], [ %96, %2446 ], [ %96, %2404 ], [ %96, %2410 ], [ %96, %2392 ], [ %96, %2380 ], [ %96, %2428 ], [ %96, %2374 ], [ %2259, %2341 ], [ %96, %2368 ], [ %96, %889 ], [ %96, %2440 ], [ %96, %2456 ], [ %96, %2434 ], [ %96, %2416 ], [ %96, %2461 ], [ %96, %2386 ], [ %96, %2422 ], [ %96, %2451 ], [ %96, %2398 ], [ %96, %88 ], [ %96, %858 ], [ %96, %2116 ], [ %96, %1946 ], [ %96, %1459 ], [ %96, %995 ], [ %96, %980 ], [ %96, %844 ], [ %96, %690 ], [ %96, %646 ], [ %96, %626 ], [ %96, %582 ], [ %96, %566 ], [ %96, %2479 ]
  %2487 = phi i32 [ %97, %2467 ], [ %97, %2362 ], [ %1150, %2356 ], [ %97, %1099 ], [ %97, %2473 ], [ %1150, %2446 ], [ %97, %2404 ], [ %1882, %2410 ], [ %97, %2392 ], [ %97, %2380 ], [ %1648, %2428 ], [ %97, %2374 ], [ 1, %2341 ], [ %97, %2368 ], [ %97, %889 ], [ %1471, %2440 ], [ %1150, %2456 ], [ %1471, %2434 ], [ %1718, %2416 ], [ %97, %2461 ], [ %97, %2386 ], [ %1718, %2422 ], [ %1150, %2451 ], [ %97, %2398 ], [ -3, %88 ], [ %97, %566 ], [ %97, %582 ], [ %97, %626 ], [ %97, %646 ], [ %97, %690 ], [ %97, %844 ], [ %97, %980 ], [ %97, %995 ], [ 0, %1459 ], [ %1951, %1946 ], [ %97, %2116 ], [ %97, %858 ], [ 1, %2479 ]
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %2481, ptr %41, align 8, !tbaa !52
  store ptr %2482, ptr %0, align 8, !tbaa !50
  store i32 %2483, ptr %43, align 8, !tbaa !51
  store i64 %2484, ptr %45, align 8, !tbaa !31
  store i32 %2485, ptr %47, align 8, !tbaa !32
  %2488 = load i32, ptr %79, align 4, !tbaa !38
  %2489 = icmp eq i32 %2488, 0
  br i1 %2489, label %2490, label %2499

2490:                                             ; preds = %2480
  %2491 = icmp eq i32 %2486, %2481
  br i1 %2491, label %2584, label %2492

2492:                                             ; preds = %2490
  %2493 = load i32, ptr %21, align 8, !tbaa !20
  %2494 = icmp ult i32 %2493, 16209
  br i1 %2494, label %2495, label %2584

2495:                                             ; preds = %2492
  %2496 = icmp samesign ult i32 %2493, 16206
  %2497 = icmp ne i32 %1, 4
  %2498 = or i1 %2497, %2496
  br i1 %2498, label %2499, label %2584

2499:                                             ; preds = %2495, %2480
  %2500 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2486, i32 %2481), !nosanitize !47
  %2501 = extractvalue { i32, i1 } %2500, 1, !nosanitize !47
  br i1 %2501, label %2502, label %2503, !prof !48, !nosanitize !47

2502:                                             ; preds = %2499
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2503:                                             ; preds = %2499
  %2504 = extractvalue { i32, i1 } %2500, 0, !nosanitize !47
  %2505 = load ptr, ptr %14, align 8, !tbaa !15
  %2506 = getelementptr inbounds nuw i8, ptr %2505, i64 72
  %2507 = load ptr, ptr %2506, align 8, !tbaa !41
  %2508 = icmp eq ptr %2507, null
  br i1 %2508, label %2509, label %2518

2509:                                             ; preds = %2503
  %2510 = load ptr, ptr %6, align 8, !tbaa !8
  %2511 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2512 = load ptr, ptr %2511, align 8, !tbaa !43
  %2513 = getelementptr inbounds nuw i8, ptr %2505, i64 56
  %2514 = load i32, ptr %2513, align 8, !tbaa !42
  %2515 = shl nuw i32 1, %2514
  %2516 = call ptr %2510(ptr noundef %2512, i32 noundef %2515, i32 noundef 1) #12, !inline_history !104
  store ptr %2516, ptr %2506, align 8, !tbaa !41
  %2517 = icmp eq ptr %2516, null
  br i1 %2517, label %2583, label %2518

2518:                                             ; preds = %2509, %2503
  %2519 = phi ptr [ %2516, %2509 ], [ %2507, %2503 ]
  %2520 = getelementptr inbounds nuw i8, ptr %2505, i64 60
  %2521 = load i32, ptr %2520, align 4, !tbaa !38
  %2522 = icmp eq i32 %2521, 0
  br i1 %2522, label %2523, label %2529

2523:                                             ; preds = %2518
  %2524 = getelementptr inbounds nuw i8, ptr %2505, i64 56
  %2525 = load i32, ptr %2524, align 8, !tbaa !42
  %2526 = shl nuw i32 1, %2525
  store i32 %2526, ptr %2520, align 4, !tbaa !38
  %2527 = getelementptr inbounds nuw i8, ptr %2505, i64 68
  store i32 0, ptr %2527, align 4, !tbaa !40
  %2528 = getelementptr inbounds nuw i8, ptr %2505, i64 64
  store i32 0, ptr %2528, align 8, !tbaa !39
  br label %2529

2529:                                             ; preds = %2523, %2518
  %2530 = phi i32 [ %2526, %2523 ], [ %2521, %2518 ]
  %2531 = icmp ult i32 %2504, %2530
  br i1 %2531, label %2539, label %2532

2532:                                             ; preds = %2529
  %2533 = zext i32 %2530 to i64
  %2534 = sub nsw i64 0, %2533
  %2535 = getelementptr inbounds i8, ptr %91, i64 %2534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2519, ptr noundef nonnull readonly align 1 dereferenceable(1) %2535, i64 %2533, i1 false)
  %2536 = getelementptr inbounds nuw i8, ptr %2505, i64 68
  store i32 0, ptr %2536, align 4, !tbaa !40
  %2537 = load i32, ptr %2520, align 4, !tbaa !38
  %2538 = getelementptr inbounds nuw i8, ptr %2505, i64 64
  store i32 %2537, ptr %2538, align 8, !tbaa !39
  br label %2584

2539:                                             ; preds = %2529
  %2540 = getelementptr inbounds nuw i8, ptr %2505, i64 68
  %2541 = load i32, ptr %2540, align 4, !tbaa !40
  %2542 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2530, i32 %2541), !nosanitize !47
  %2543 = extractvalue { i32, i1 } %2542, 1, !nosanitize !47
  br i1 %2543, label %2544, label %2545, !prof !48, !nosanitize !47

2544:                                             ; preds = %2539
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2545:                                             ; preds = %2539
  %2546 = extractvalue { i32, i1 } %2542, 0, !nosanitize !47
  %2547 = call i32 @llvm.umin.i32(i32 %2546, i32 %2504)
  %2548 = zext i32 %2541 to i64
  %2549 = getelementptr inbounds nuw i8, ptr %2519, i64 %2548
  %2550 = zext i32 %2504 to i64
  %2551 = sub nsw i64 0, %2550
  %2552 = getelementptr inbounds i8, ptr %91, i64 %2551
  %2553 = zext i32 %2547 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2549, ptr readonly align 1 %2552, i64 %2553, i1 false)
  %2554 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2504, i32 %2547), !nosanitize !47
  %2555 = extractvalue { i32, i1 } %2554, 0, !nosanitize !47
  %2556 = icmp eq i32 %2555, 0
  br i1 %2556, label %2564, label %2557

2557:                                             ; preds = %2545
  %2558 = load ptr, ptr %2506, align 8, !tbaa !41
  %2559 = zext i32 %2555 to i64
  %2560 = sub nsw i64 0, %2559
  %2561 = getelementptr inbounds i8, ptr %91, i64 %2560
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2558, ptr nonnull readonly align 1 %2561, i64 %2559, i1 false)
  store i32 %2555, ptr %2540, align 4, !tbaa !40
  %2562 = load i32, ptr %2520, align 4, !tbaa !38
  %2563 = getelementptr inbounds nuw i8, ptr %2505, i64 64
  store i32 %2562, ptr %2563, align 8, !tbaa !39
  br label %2584

2564:                                             ; preds = %2545
  %2565 = load i32, ptr %2540, align 4, !tbaa !40
  %2566 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2565, i32 %2547), !nosanitize !47
  %2567 = extractvalue { i32, i1 } %2566, 1, !nosanitize !47
  br i1 %2567, label %2568, label %2569, !prof !48, !nosanitize !47

2568:                                             ; preds = %2564
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2569:                                             ; preds = %2564
  %2570 = extractvalue { i32, i1 } %2566, 0, !nosanitize !47
  %2571 = load i32, ptr %2520, align 4, !tbaa !38
  %2572 = icmp eq i32 %2570, %2571
  %2573 = select i1 %2572, i32 0, i32 %2570
  store i32 %2573, ptr %2540, align 4
  %2574 = getelementptr inbounds nuw i8, ptr %2505, i64 64
  %2575 = load i32, ptr %2574, align 8, !tbaa !39
  %2576 = icmp ult i32 %2575, %2571
  br i1 %2576, label %2577, label %2584

2577:                                             ; preds = %2569
  %2578 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2575, i32 %2547), !nosanitize !47
  %2579 = extractvalue { i32, i1 } %2578, 1, !nosanitize !47
  br i1 %2579, label %2580, label %2581, !prof !48, !nosanitize !47

2580:                                             ; preds = %2577
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2581:                                             ; preds = %2577
  %2582 = extractvalue { i32, i1 } %2578, 0, !nosanitize !47
  store i32 %2582, ptr %2574, align 8, !tbaa !39
  br label %2584

2583:                                             ; preds = %2509
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %2670

2584:                                             ; preds = %2581, %2569, %2557, %2532, %2495, %2492, %2490
  %2585 = load i32, ptr %43, align 8, !tbaa !51
  %2586 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2585), !nosanitize !47
  %2587 = extractvalue { i32, i1 } %2586, 0, !nosanitize !47
  %2588 = extractvalue { i32, i1 } %2586, 1, !nosanitize !47
  br i1 %2588, label %2589, label %2590, !prof !48, !nosanitize !47

2589:                                             ; preds = %2584
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2590:                                             ; preds = %2584
  %2591 = load i32, ptr %41, align 8, !tbaa !52
  %2592 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2486, i32 %2591), !nosanitize !47
  %2593 = extractvalue { i32, i1 } %2592, 0, !nosanitize !47
  %2594 = extractvalue { i32, i1 } %2592, 1, !nosanitize !47
  br i1 %2594, label %2595, label %2596, !prof !48, !nosanitize !47

2595:                                             ; preds = %2590
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2596:                                             ; preds = %2590
  %2597 = zext i32 %2587 to i64
  %2598 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2599 = load i64, ptr %2598, align 8, !tbaa !22
  %2600 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2599, i64 %2597), !nosanitize !47
  %2601 = extractvalue { i64, i1 } %2600, 1, !nosanitize !47
  br i1 %2601, label %2602, label %2603, !prof !48, !nosanitize !47

2602:                                             ; preds = %2596
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2603:                                             ; preds = %2596
  %2604 = extractvalue { i64, i1 } %2600, 0, !nosanitize !47
  store i64 %2604, ptr %2598, align 8, !tbaa !22
  %2605 = zext i32 %2593 to i64
  %2606 = load i64, ptr %50, align 8, !tbaa !103
  %2607 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2606, i64 %2605), !nosanitize !47
  %2608 = extractvalue { i64, i1 } %2607, 1, !nosanitize !47
  br i1 %2608, label %2609, label %2610, !prof !48, !nosanitize !47

2609:                                             ; preds = %2603
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2610:                                             ; preds = %2603
  %2611 = extractvalue { i64, i1 } %2607, 0, !nosanitize !47
  store i64 %2611, ptr %50, align 8, !tbaa !103
  %2612 = load i64, ptr %51, align 8, !tbaa !21
  %2613 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2612, i64 %2605), !nosanitize !47
  %2614 = extractvalue { i64, i1 } %2613, 1, !nosanitize !47
  br i1 %2614, label %2615, label %2616, !prof !48, !nosanitize !47

2615:                                             ; preds = %2650, %2643, %2636, %2610
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2616:                                             ; preds = %2610
  %2617 = extractvalue { i64, i1 } %2613, 0, !nosanitize !47
  store i64 %2617, ptr %51, align 8, !tbaa !21
  %2618 = load i32, ptr %49, align 8, !tbaa !24
  %2619 = and i32 %2618, 4
  %2620 = icmp ne i32 %2619, 0
  %2621 = icmp ne i32 %2593, 0
  %2622 = select i1 %2620, i1 %2621, i1 false
  br i1 %2622, label %2623, label %2636

2623:                                             ; preds = %2616
  %2624 = load i32, ptr %52, align 8, !tbaa !28
  %2625 = icmp eq i32 %2624, 0
  %2626 = load i64, ptr %53, align 8, !tbaa !54
  %2627 = load ptr, ptr %26, align 8, !tbaa !49
  %2628 = sub nsw i64 0, %2605
  %2629 = getelementptr inbounds i8, ptr %2627, i64 %2628
  br i1 %2625, label %2632, label %2630

2630:                                             ; preds = %2623
  %2631 = call i64 @crc32(i64 noundef %2626, ptr noundef nonnull %2629, i32 noundef %2593) #12
  br label %2634

2632:                                             ; preds = %2623
  %2633 = call i64 @adler32(i64 noundef %2626, ptr noundef nonnull %2629, i32 noundef %2593) #12
  br label %2634

2634:                                             ; preds = %2632, %2630
  %2635 = phi i64 [ %2631, %2630 ], [ %2633, %2632 ]
  store i64 %2635, ptr %53, align 8, !tbaa !54
  store i64 %2635, ptr %54, align 8, !tbaa !25
  br label %2636

2636:                                             ; preds = %2634, %2616
  %2637 = load i32, ptr %47, align 8, !tbaa !32
  %2638 = load i32, ptr %83, align 4, !tbaa !26
  %2639 = icmp eq i32 %2638, 0
  %2640 = select i1 %2639, i32 0, i32 64
  %2641 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2637, i32 %2640), !nosanitize !47
  %2642 = extractvalue { i32, i1 } %2641, 1, !nosanitize !47
  br i1 %2642, label %2615, label %2643, !prof !48, !nosanitize !47

2643:                                             ; preds = %2636
  %2644 = extractvalue { i32, i1 } %2641, 0, !nosanitize !47
  %2645 = load i32, ptr %21, align 8, !tbaa !20
  %2646 = icmp eq i32 %2645, 16191
  %2647 = select i1 %2646, i32 128, i32 0
  %2648 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2644, i32 %2647), !nosanitize !47
  %2649 = extractvalue { i32, i1 } %2648, 1, !nosanitize !47
  br i1 %2649, label %2615, label %2650, !prof !48, !nosanitize !47

2650:                                             ; preds = %2643
  %2651 = extractvalue { i32, i1 } %2648, 0, !nosanitize !47
  %2652 = icmp eq i32 %2645, 16199
  %2653 = icmp eq i32 %2645, 16194
  %2654 = or i1 %2652, %2653
  %2655 = select i1 %2654, i32 256, i32 0
  %2656 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2651, i32 %2655), !nosanitize !47
  %2657 = extractvalue { i32, i1 } %2656, 1, !nosanitize !47
  br i1 %2657, label %2615, label %2658, !prof !48, !nosanitize !47

2658:                                             ; preds = %2650
  %2659 = extractvalue { i32, i1 } %2656, 0, !nosanitize !47
  %2660 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2659, ptr %2660, align 8, !tbaa !23
  %2661 = icmp eq i32 %2587, 0
  %2662 = icmp eq i32 %2593, 0
  %2663 = select i1 %2661, i1 %2662, i1 false
  %2664 = icmp eq i32 %1, 4
  %2665 = or i1 %2664, %2663
  %2666 = icmp eq i32 %2487, 0
  %2667 = select i1 %2665, i1 %2666, i1 false
  %2668 = select i1 %2667, i32 -5, i32 %2487
  br label %2670

2669:                                             ; preds = %88
  br label %2670

2670:                                             ; preds = %2669, %2658, %2583, %841, %88, %32, %25, %20, %17, %13, %9, %5, %2
  %2671 = phi i32 [ -2, %20 ], [ -4, %2669 ], [ -4, %2583 ], [ %2668, %2658 ], [ 2, %841 ], [ -2, %32 ], [ -2, %25 ], [ -2, %17 ], [ -2, %13 ], [ -2, %2 ], [ -2, %9 ], [ -2, %5 ], [ -2, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %2671
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
  br i1 %4, label %121, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %121, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %121, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %121, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %121

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %121

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %27 = load i32, ptr %26, align 8, !tbaa !24
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %22, 16190
  br i1 %28, label %31, label %30

30:                                               ; preds = %25
  br i1 %29, label %32, label %121

31:                                               ; preds = %25
  br i1 %29, label %32, label %40

32:                                               ; preds = %31, %30
  %33 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %34 = tail call i64 @adler32(i64 noundef %33, ptr noundef %1, i32 noundef %2) #12
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %36 = load i64, ptr %35, align 8, !tbaa !54
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %121

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
  br i1 %55, label %118, label %56

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
  br label %119

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
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %83
  %93 = load ptr, ptr %44, align 8, !tbaa !41
  %94 = zext i32 %90 to i64
  %95 = sub nsw i64 0, %94
  %96 = getelementptr inbounds i8, ptr %43, i64 %95
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %93, ptr nonnull readonly align 1 %96, i64 %94, i1 false)
  store i32 %90, ptr %78, align 4, !tbaa !40
  %97 = load i32, ptr %58, align 4, !tbaa !38
  %98 = getelementptr inbounds nuw i8, ptr %41, i64 64
  store i32 %97, ptr %98, align 8, !tbaa !39
  br label %119

99:                                               ; preds = %83
  %100 = load i32, ptr %78, align 4, !tbaa !40
  %101 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %100, i32 %85), !nosanitize !47
  %102 = extractvalue { i32, i1 } %101, 1, !nosanitize !47
  br i1 %102, label %103, label %104, !prof !48, !nosanitize !47

103:                                              ; preds = %99
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

104:                                              ; preds = %99
  %105 = extractvalue { i32, i1 } %101, 0, !nosanitize !47
  %106 = load i32, ptr %58, align 4, !tbaa !38
  %107 = icmp eq i32 %105, %106
  %108 = select i1 %107, i32 0, i32 %105
  store i32 %108, ptr %78, align 4
  %109 = getelementptr inbounds nuw i8, ptr %41, i64 64
  %110 = load i32, ptr %109, align 8, !tbaa !39
  %111 = icmp ult i32 %110, %106
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %110, i32 %85), !nosanitize !47
  %114 = extractvalue { i32, i1 } %113, 1, !nosanitize !47
  br i1 %114, label %115, label %116, !prof !48, !nosanitize !47

115:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

116:                                              ; preds = %112
  %117 = extractvalue { i32, i1 } %113, 0, !nosanitize !47
  store i32 %117, ptr %109, align 8, !tbaa !39
  br label %119

118:                                              ; preds = %47
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %121

119:                                              ; preds = %116, %104, %92, %70
  %120 = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 1, ptr %120, align 4, !tbaa !27
  br label %121

121:                                              ; preds = %119, %118, %32, %30, %20, %17, %13, %9, %5, %3
  %122 = phi i32 [ 0, %119 ], [ -2, %20 ], [ -2, %30 ], [ -4, %118 ], [ -3, %32 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %122
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
