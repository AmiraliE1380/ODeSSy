; ModuleID = '/home/amiralie1380/michigan/pl/zlib/inflate.c'
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

49:                                               ; preds = %15, %3, %7, %1, %11, %18, %35
  %50 = phi i32 [ 0, %35 ], [ -2, %18 ], [ -2, %11 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %15 ]
  ret i32 %50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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

52:                                               ; preds = %15, %3, %7, %1, %11, %38, %18
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

47:                                               ; preds = %39, %43
  %48 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %38, ptr %48, align 8, !tbaa !24
  %49 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 %37, ptr %49, align 8, !tbaa !42
  br label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  tail call void %10(ptr noundef %52, ptr noundef nonnull %41) #13
  store ptr null, ptr %40, align 8, !tbaa !41
  %53 = load ptr, ptr %5, align 8, !tbaa !8
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %38, ptr %55, align 8, !tbaa !24
  %56 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 %37, ptr %56, align 8, !tbaa !42
  br i1 %54, label %100, label %57

57:                                               ; preds = %47, %50
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

100:                                              ; preds = %16, %4, %8, %2, %12, %86, %66, %63, %60, %57, %50, %36, %26, %19
  %101 = phi i32 [ -2, %57 ], [ -2, %19 ], [ -2, %26 ], [ -2, %36 ], [ -2, %50 ], [ -2, %66 ], [ 0, %86 ], [ -2, %60 ], [ -2, %63 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %101
}

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
  %29 = tail call ptr %21(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #13
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

71:                                               ; preds = %55, %67
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

85:                                               ; preds = %42, %52, %31
  %86 = load ptr, ptr %27, align 8, !tbaa !43
  tail call void %37(ptr noundef %86, ptr noundef nonnull %29) #13
  store ptr null, ptr %33, align 8, !tbaa !15
  br label %87

87:                                               ; preds = %71, %85, %26, %11, %4, %6
  %88 = phi i32 [ -4, %26 ], [ -6, %4 ], [ -2, %11 ], [ -6, %6 ], [ -2, %85 ], [ 0, %71 ]
  ret i32 %88
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #3

declare void @zcfree(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

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
  %28 = tail call ptr %20(ptr noundef %27, i32 noundef 1, i32 noundef 7160) #13, !inline_history !46
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
  tail call void %35(ptr noundef %66, ptr noundef nonnull %28) #13, !inline_history !46
  store ptr null, ptr %32, align 8, !tbaa !15
  br label %67

67:                                               ; preds = %3, %5, %10, %25, %51, %65
  %68 = phi i32 [ -4, %25 ], [ -6, %3 ], [ -2, %10 ], [ -6, %5 ], [ -2, %65 ], [ 0, %51 ]
  ret i32 %68
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
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
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
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
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

57:                                               ; preds = %43
  %58 = extractvalue { i64, i1 } %54, 0, !nosanitize !47
  store i64 %58, ptr %52, align 8, !tbaa !31
  store i32 %41, ptr %35, align 8, !tbaa !32
  br label %59

59:                                               ; preds = %17, %5, %9, %3, %13, %32, %40, %25, %20, %57, %29
  %60 = phi i32 [ 0, %57 ], [ -2, %20 ], [ 0, %29 ], [ 0, %25 ], [ -2, %40 ], [ -2, %32 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %60
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #7

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %4 = icmp eq ptr %0, null
  br i1 %4, label %2677, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %2677, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %2677, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %2677, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %2677

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %2677

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %2677, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !50
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %2677

36:                                               ; preds = %32, %29
  %37 = icmp eq i32 %22, 16191
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %39

39:                                               ; preds = %36, %38
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

88:                                               ; preds = %2359, %39
  %89 = phi i32 [ %40, %39 ], [ %2368, %2359 ]
  %90 = phi ptr [ %30, %39 ], [ %2360, %2359 ]
  %91 = phi ptr [ %27, %39 ], [ %2361, %2359 ]
  %92 = phi i32 [ %44, %39 ], [ %2362, %2359 ]
  %93 = phi i32 [ %42, %39 ], [ %2363, %2359 ]
  %94 = phi i64 [ %46, %39 ], [ %2364, %2359 ]
  %95 = phi i32 [ %48, %39 ], [ %2365, %2359 ]
  %96 = phi i32 [ %42, %39 ], [ %2366, %2359 ]
  %97 = phi i32 [ 0, %39 ], [ %2367, %2359 ]
  %98 = ptrtoaddr ptr %91 to i64
  switch i32 %89, label %2677 [
    i32 16180, label %120
    i32 16181, label %115
    i32 16182, label %281
    i32 16183, label %364
    i32 16184, label %423
    i32 16185, label %501
    i32 16186, label %582
    i32 16187, label %646
    i32 16188, label %710
    i32 16189, label %110
    i32 16190, label %842
    i32 16191, label %852
    i32 16192, label %857
    i32 16193, label %911
    i32 16194, label %997
    i32 16195, label %1002
    i32 16196, label %105
    i32 16197, label %1087
    i32 16198, label %1162
    i32 16199, label %1477
    i32 16200, label %1483
    i32 16201, label %101
    i32 16202, label %1730
    i32 16203, label %99
    i32 16204, label %1956
    i32 16205, label %2129
    i32 16206, label %2136
    i32 16207, label %103
    i32 16208, label %2492
    i32 16209, label %2493
    i32 16210, label %2676
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !53
  br label %1886

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !53
  br label %1659

103:                                              ; preds = %88
  %104 = load i32, ptr %49, align 8, !tbaa !24
  br label %2266

105:                                              ; preds = %88
  %106 = icmp ult i32 %95, 14
  br i1 %106, label %107, label %1066

107:                                              ; preds = %105
  %108 = zext nneg i32 %95 to i64
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %2474, label %1034

110:                                              ; preds = %88
  %111 = icmp ult i32 %95, 32
  br i1 %111, label %112, label %835

112:                                              ; preds = %110
  %113 = zext nneg i32 %95 to i64
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %2411, label %782

115:                                              ; preds = %88
  %116 = icmp ult i32 %95, 16
  br i1 %116, label %117, label %250

117:                                              ; preds = %115
  %118 = zext nneg i32 %95 to i64
  %119 = icmp eq i32 %92, 0
  br i1 %119, label %2405, label %218

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
  br i1 %127, label %2375, label %129

128:                                              ; preds = %120
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2359

129:                                              ; preds = %125
  %130 = load i8, ptr %90, align 1, !tbaa !44
  %131 = zext i8 %130 to i64
  %132 = shl nuw nsw i64 %131, %126
  %133 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %132), !nosanitize !47
  %134 = extractvalue { i64, i1 } %133, 1, !nosanitize !47
  br i1 %134, label %135, label %136, !prof !48, !nosanitize !47

135:                                              ; preds = %144, %129
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
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
  br i1 %143, label %2375, label %144

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
  %175 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  store i64 %175, ptr %53, align 8, !tbaa !54
  store i8 31, ptr %3, align 4, !tbaa !44
  store i8 -117, ptr %87, align 1, !tbaa !44
  %176 = call i64 @crc32(i64 noundef %175, ptr noundef nonnull %3, i32 noundef 2) #13
  store i64 %176, ptr %53, align 8, !tbaa !54
  store i32 16181, ptr %21, align 8, !tbaa !20
  br label %2359

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
  br label %2359

193:                                              ; preds = %185
  %194 = and i64 %164, 15
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

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
  br label %2359

212:                                              ; preds = %206
  %213 = shl nuw nsw i32 256, %201
  store i32 %213, ptr %86, align 4, !tbaa !29
  store i32 0, ptr %52, align 8, !tbaa !28
  %214 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  store i64 %214, ptr %53, align 8, !tbaa !54
  store i64 %214, ptr %54, align 8, !tbaa !25
  %215 = and i64 %164, 8192
  %216 = icmp eq i64 %215, 0
  %217 = select i1 %216, i32 16191, i32 16189
  store i32 %217, ptr %21, align 8, !tbaa !20
  br label %2359

218:                                              ; preds = %117
  %219 = load i8, ptr %90, align 1, !tbaa !44
  %220 = zext i8 %219 to i64
  %221 = shl nuw nsw i64 %220, %118
  %222 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %221), !nosanitize !47
  %223 = extractvalue { i64, i1 } %222, 1, !nosanitize !47
  br i1 %223, label %224, label %225, !prof !48, !nosanitize !47

224:                                              ; preds = %233, %218
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
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
  br i1 %232, label %2405, label %233

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
  br label %2359

259:                                              ; preds = %250
  %260 = and i32 %255, 57344
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

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
  %279 = call i64 @crc32(i64 noundef %278, ptr noundef nonnull %3, i32 noundef 2) #13
  store i64 %279, ptr %53, align 8, !tbaa !54
  br label %280

280:                                              ; preds = %276, %272, %269
  store i32 16182, ptr %21, align 8, !tbaa !20
  br label %283

281:                                              ; preds = %88
  %282 = icmp ult i32 %95, 32
  br i1 %282, label %283, label %343

283:                                              ; preds = %280, %281
  %284 = phi i32 [ 0, %280 ], [ %95, %281 ]
  %285 = phi i64 [ 0, %280 ], [ %94, %281 ]
  %286 = phi i32 [ %252, %280 ], [ %92, %281 ]
  %287 = phi ptr [ %251, %280 ], [ %90, %281 ]
  %288 = zext nneg i32 %284 to i64
  %289 = icmp eq i32 %286, 0
  br i1 %289, label %2399, label %290

290:                                              ; preds = %283
  %291 = load i8, ptr %287, align 1, !tbaa !44
  %292 = zext i8 %291 to i64
  %293 = shl nuw nsw i64 %292, %288
  %294 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %285, i64 %293), !nosanitize !47
  %295 = extractvalue { i64, i1 } %294, 1, !nosanitize !47
  br i1 %295, label %296, label %297, !prof !48, !nosanitize !47

296:                                              ; preds = %333, %319, %305, %290
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
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
  br i1 %304, label %2399, label %305

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
  br i1 %318, label %2399, label %319

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
  br i1 %332, label %2399, label %333

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

343:                                              ; preds = %297, %311, %325, %339, %281
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
  %362 = call i64 @crc32(i64 noundef %361, ptr noundef nonnull %3, i32 noundef 4) #13
  store i64 %362, ptr %53, align 8, !tbaa !54
  br label %363

363:                                              ; preds = %359, %355, %351
  store i32 16183, ptr %21, align 8, !tbaa !20
  br label %366

364:                                              ; preds = %88
  %365 = icmp ult i32 %95, 16
  br i1 %365, label %366, label %398

366:                                              ; preds = %363, %364
  %367 = phi i32 [ 0, %363 ], [ %95, %364 ]
  %368 = phi i64 [ 0, %363 ], [ %94, %364 ]
  %369 = phi i32 [ %345, %363 ], [ %92, %364 ]
  %370 = phi ptr [ %344, %363 ], [ %90, %364 ]
  %371 = zext nneg i32 %367 to i64
  %372 = icmp eq i32 %369, 0
  br i1 %372, label %2393, label %373

373:                                              ; preds = %366
  %374 = load i8, ptr %370, align 1, !tbaa !44
  %375 = zext i8 %374 to i64
  %376 = shl nuw nsw i64 %375, %371
  %377 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %368, i64 %376), !nosanitize !47
  %378 = extractvalue { i64, i1 } %377, 1, !nosanitize !47
  br i1 %378, label %379, label %380, !prof !48, !nosanitize !47

379:                                              ; preds = %388, %373
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
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
  br i1 %387, label %2393, label %388

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

398:                                              ; preds = %380, %394, %364
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
  %422 = call i64 @crc32(i64 noundef %421, ptr noundef nonnull %3, i32 noundef 2) #13
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

433:                                              ; preds = %427, %431
  %434 = phi ptr [ %90, %431 ], [ %399, %427 ]
  %435 = phi i32 [ %92, %431 ], [ %400, %427 ]
  %436 = phi i64 [ %94, %431 ], [ 0, %427 ]
  %437 = phi i32 [ %95, %431 ], [ 0, %427 ]
  %438 = phi i32 [ %424, %431 ], [ %428, %427 ]
  %439 = zext nneg i32 %437 to i64
  %440 = icmp eq i32 %435, 0
  br i1 %440, label %2387, label %441

441:                                              ; preds = %433
  %442 = load i8, ptr %434, align 1, !tbaa !44
  %443 = zext i8 %442 to i64
  %444 = shl nuw nsw i64 %443, %439
  %445 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %436, i64 %444), !nosanitize !47
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !47
  br i1 %446, label %447, label %448, !prof !48, !nosanitize !47

447:                                              ; preds = %456, %441
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
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
  br i1 %455, label %2387, label %456

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

466:                                              ; preds = %448, %462, %431
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
  %486 = call i64 @crc32(i64 noundef %485, ptr noundef nonnull %3, i32 noundef 2) #13
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

496:                                              ; preds = %483, %479, %476, %487, %494
  %497 = phi ptr [ %491, %487 ], [ %491, %494 ], [ %468, %476 ], [ %468, %479 ], [ %468, %483 ]
  %498 = phi i32 [ %490, %487 ], [ %490, %494 ], [ %469, %476 ], [ %469, %479 ], [ %469, %483 ]
  %499 = phi i64 [ %489, %487 ], [ %489, %494 ], [ 0, %476 ], [ 0, %479 ], [ 0, %483 ]
  %500 = phi i32 [ %488, %487 ], [ %488, %494 ], [ 0, %476 ], [ 0, %479 ], [ 0, %483 ]
  store i32 16185, ptr %21, align 8, !tbaa !20
  br label %501

501:                                              ; preds = %88, %496
  %502 = phi ptr [ %497, %496 ], [ %90, %88 ]
  %503 = phi i32 [ %498, %496 ], [ %92, %88 ]
  %504 = phi i64 [ %499, %496 ], [ %94, %88 ]
  %505 = phi i32 [ %500, %496 ], [ %95, %88 ]
  %506 = load i32, ptr %52, align 8, !tbaa !28
  %507 = and i32 %506, 1024
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %579, label %509

509:                                              ; preds = %501
  %510 = load i32, ptr %56, align 4, !tbaa !61
  %511 = call i32 @llvm.umin.i32(i32 %510, i32 %503)
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %574, label %513

513:                                              ; preds = %509
  %514 = load ptr, ptr %84, align 8, !tbaa !30
  %515 = icmp eq ptr %514, null
  br i1 %515, label %549, label %516

516:                                              ; preds = %513
  %517 = getelementptr inbounds nuw i8, ptr %514, i64 24
  %518 = load ptr, ptr %517, align 8, !tbaa !63
  %519 = icmp eq ptr %518, null
  br i1 %519, label %549, label %520

520:                                              ; preds = %516
  %521 = getelementptr inbounds nuw i8, ptr %514, i64 32
  %522 = load i32, ptr %521, align 8, !tbaa !62
  %523 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %522, i32 %510), !nosanitize !47
  %524 = extractvalue { i32, i1 } %523, 0, !nosanitize !47
  %525 = extractvalue { i32, i1 } %523, 1, !nosanitize !47
  br i1 %525, label %526, label %527, !prof !48, !nosanitize !47

526:                                              ; preds = %520
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

527:                                              ; preds = %520
  %528 = getelementptr inbounds nuw i8, ptr %514, i64 36
  %529 = load i32, ptr %528, align 4, !tbaa !64
  %530 = icmp ult i32 %524, %529
  br i1 %530, label %531, label %549

531:                                              ; preds = %527
  %532 = zext i32 %524 to i64
  %533 = getelementptr inbounds nuw i8, ptr %518, i64 %532
  %534 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %524, i32 %511), !nosanitize !47
  %535 = extractvalue { i32, i1 } %534, 1, !nosanitize !47
  br i1 %535, label %536, label %537, !prof !48, !nosanitize !47

536:                                              ; preds = %531
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

537:                                              ; preds = %531
  %538 = extractvalue { i32, i1 } %534, 0, !nosanitize !47
  %539 = icmp ugt i32 %538, %529
  br i1 %539, label %540, label %545

540:                                              ; preds = %537
  %541 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %529, i32 %524), !nosanitize !47
  %542 = extractvalue { i32, i1 } %541, 0, !nosanitize !47
  %543 = extractvalue { i32, i1 } %541, 1, !nosanitize !47
  br i1 %543, label %544, label %545, !prof !48, !nosanitize !47

544:                                              ; preds = %540
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

545:                                              ; preds = %537, %540
  %546 = phi i32 [ %542, %540 ], [ %511, %537 ]
  %547 = zext i32 %546 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %533, ptr align 1 %502, i64 %547, i1 false)
  %548 = load i32, ptr %52, align 8, !tbaa !28
  br label %549

549:                                              ; preds = %545, %527, %516, %513
  %550 = phi i32 [ %548, %545 ], [ %506, %527 ], [ %506, %516 ], [ %506, %513 ]
  %551 = and i32 %550, 512
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %560, label %553

553:                                              ; preds = %549
  %554 = load i32, ptr %49, align 8, !tbaa !24
  %555 = and i32 %554, 4
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %560, label %557

557:                                              ; preds = %553
  %558 = load i64, ptr %53, align 8, !tbaa !54
  %559 = call i64 @crc32(i64 noundef %558, ptr noundef %502, i32 noundef %511) #13
  store i64 %559, ptr %53, align 8, !tbaa !54
  br label %560

560:                                              ; preds = %557, %553, %549
  %561 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %511), !nosanitize !47
  %562 = extractvalue { i32, i1 } %561, 0, !nosanitize !47
  %563 = extractvalue { i32, i1 } %561, 1, !nosanitize !47
  br i1 %563, label %564, label %565, !prof !48, !nosanitize !47

564:                                              ; preds = %560
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

565:                                              ; preds = %560
  %566 = load i32, ptr %56, align 4, !tbaa !61
  %567 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %566, i32 %511), !nosanitize !47
  %568 = extractvalue { i32, i1 } %567, 1, !nosanitize !47
  br i1 %568, label %569, label %570, !prof !48, !nosanitize !47

569:                                              ; preds = %565
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

570:                                              ; preds = %565
  %571 = extractvalue { i32, i1 } %567, 0, !nosanitize !47
  %572 = zext i32 %511 to i64
  %573 = getelementptr inbounds nuw i8, ptr %502, i64 %572
  store i32 %571, ptr %56, align 4, !tbaa !61
  br label %574

574:                                              ; preds = %570, %509
  %575 = phi i32 [ %571, %570 ], [ %510, %509 ]
  %576 = phi ptr [ %573, %570 ], [ %502, %509 ]
  %577 = phi i32 [ %562, %570 ], [ %503, %509 ]
  %578 = icmp eq i32 %575, 0
  br i1 %578, label %579, label %2493

579:                                              ; preds = %574, %501
  %580 = phi ptr [ %576, %574 ], [ %502, %501 ]
  %581 = phi i32 [ %577, %574 ], [ %503, %501 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16186, ptr %21, align 8, !tbaa !20
  br label %582

582:                                              ; preds = %88, %579
  %583 = phi ptr [ %580, %579 ], [ %90, %88 ]
  %584 = phi i32 [ %581, %579 ], [ %92, %88 ]
  %585 = phi i64 [ %504, %579 ], [ %94, %88 ]
  %586 = phi i32 [ %505, %579 ], [ %95, %88 ]
  %587 = load i32, ptr %52, align 8, !tbaa !28
  %588 = and i32 %587, 2048
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %638, label %590

590:                                              ; preds = %582
  %591 = icmp eq i32 %584, 0
  br i1 %591, label %2493, label %592

592:                                              ; preds = %590
  %593 = zext i32 %584 to i64
  br label %594

594:                                              ; preds = %592, %614
  %595 = phi i64 [ 0, %592 ], [ %596, %614 ]
  %596 = add nuw nsw i64 %595, 1
  %597 = getelementptr inbounds nuw i8, ptr %583, i64 %595
  %598 = load i8, ptr %597, align 1, !tbaa !44
  %599 = load ptr, ptr %84, align 8, !tbaa !30
  %600 = icmp eq ptr %599, null
  br i1 %600, label %614, label %601

601:                                              ; preds = %594
  %602 = getelementptr inbounds nuw i8, ptr %599, i64 40
  %603 = load ptr, ptr %602, align 8, !tbaa !65
  %604 = icmp eq ptr %603, null
  br i1 %604, label %614, label %605

605:                                              ; preds = %601
  %606 = load i32, ptr %56, align 4, !tbaa !61
  %607 = getelementptr inbounds nuw i8, ptr %599, i64 48
  %608 = load i32, ptr %607, align 8, !tbaa !66
  %609 = icmp ult i32 %606, %608
  br i1 %609, label %610, label %614

610:                                              ; preds = %605
  %611 = add nuw i32 %606, 1
  store i32 %611, ptr %56, align 4, !tbaa !61
  %612 = zext i32 %606 to i64
  %613 = getelementptr inbounds nuw i8, ptr %603, i64 %612
  store i8 %598, ptr %613, align 1, !tbaa !44
  br label %614

614:                                              ; preds = %594, %601, %605, %610
  %615 = icmp ne i8 %598, 0
  %616 = icmp samesign ult i64 %596, %593
  %617 = select i1 %615, i1 %616, i1 false
  br i1 %617, label %594, label %618, !llvm.loop !67

618:                                              ; preds = %614
  %619 = trunc nuw i64 %596 to i32
  %620 = load i32, ptr %52, align 8, !tbaa !28
  %621 = and i32 %620, 512
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %630, label %623

623:                                              ; preds = %618
  %624 = load i32, ptr %49, align 8, !tbaa !24
  %625 = and i32 %624, 4
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %630, label %627

627:                                              ; preds = %623
  %628 = load i64, ptr %53, align 8, !tbaa !54
  %629 = call i64 @crc32(i64 noundef %628, ptr noundef nonnull %583, i32 noundef %619) #13
  store i64 %629, ptr %53, align 8, !tbaa !54
  br label %630

630:                                              ; preds = %627, %623, %618
  %631 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %584, i32 %619), !nosanitize !47
  %632 = extractvalue { i32, i1 } %631, 1, !nosanitize !47
  br i1 %632, label %633, label %634, !prof !48, !nosanitize !47

633:                                              ; preds = %630
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

634:                                              ; preds = %630
  %635 = extractvalue { i32, i1 } %631, 0, !nosanitize !47
  %636 = and i64 %596, 4294967295
  %637 = getelementptr inbounds nuw i8, ptr %583, i64 %636
  br i1 %615, label %2493, label %643

638:                                              ; preds = %582
  %639 = load ptr, ptr %84, align 8, !tbaa !30
  %640 = icmp eq ptr %639, null
  br i1 %640, label %643, label %641

641:                                              ; preds = %638
  %642 = getelementptr inbounds nuw i8, ptr %639, i64 40
  store ptr null, ptr %642, align 8, !tbaa !65
  br label %643

643:                                              ; preds = %638, %641, %634
  %644 = phi ptr [ %637, %634 ], [ %583, %641 ], [ %583, %638 ]
  %645 = phi i32 [ %635, %634 ], [ %584, %641 ], [ %584, %638 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16187, ptr %21, align 8, !tbaa !20
  br label %646

646:                                              ; preds = %88, %643
  %647 = phi ptr [ %644, %643 ], [ %90, %88 ]
  %648 = phi i32 [ %645, %643 ], [ %92, %88 ]
  %649 = phi i64 [ %585, %643 ], [ %94, %88 ]
  %650 = phi i32 [ %586, %643 ], [ %95, %88 ]
  %651 = load i32, ptr %52, align 8, !tbaa !28
  %652 = and i32 %651, 4096
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %702, label %654

654:                                              ; preds = %646
  %655 = icmp eq i32 %648, 0
  br i1 %655, label %2493, label %656

656:                                              ; preds = %654
  %657 = zext i32 %648 to i64
  br label %658

658:                                              ; preds = %656, %678
  %659 = phi i64 [ 0, %656 ], [ %660, %678 ]
  %660 = add nuw nsw i64 %659, 1
  %661 = getelementptr inbounds nuw i8, ptr %647, i64 %659
  %662 = load i8, ptr %661, align 1, !tbaa !44
  %663 = load ptr, ptr %84, align 8, !tbaa !30
  %664 = icmp eq ptr %663, null
  br i1 %664, label %678, label %665

665:                                              ; preds = %658
  %666 = getelementptr inbounds nuw i8, ptr %663, i64 56
  %667 = load ptr, ptr %666, align 8, !tbaa !69
  %668 = icmp eq ptr %667, null
  br i1 %668, label %678, label %669

669:                                              ; preds = %665
  %670 = load i32, ptr %56, align 4, !tbaa !61
  %671 = getelementptr inbounds nuw i8, ptr %663, i64 64
  %672 = load i32, ptr %671, align 8, !tbaa !70
  %673 = icmp ult i32 %670, %672
  br i1 %673, label %674, label %678

674:                                              ; preds = %669
  %675 = add nuw i32 %670, 1
  store i32 %675, ptr %56, align 4, !tbaa !61
  %676 = zext i32 %670 to i64
  %677 = getelementptr inbounds nuw i8, ptr %667, i64 %676
  store i8 %662, ptr %677, align 1, !tbaa !44
  br label %678

678:                                              ; preds = %658, %665, %669, %674
  %679 = icmp ne i8 %662, 0
  %680 = icmp samesign ult i64 %660, %657
  %681 = select i1 %679, i1 %680, i1 false
  br i1 %681, label %658, label %682, !llvm.loop !71

682:                                              ; preds = %678
  %683 = trunc nuw i64 %660 to i32
  %684 = load i32, ptr %52, align 8, !tbaa !28
  %685 = and i32 %684, 512
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %694, label %687

687:                                              ; preds = %682
  %688 = load i32, ptr %49, align 8, !tbaa !24
  %689 = and i32 %688, 4
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %694, label %691

691:                                              ; preds = %687
  %692 = load i64, ptr %53, align 8, !tbaa !54
  %693 = call i64 @crc32(i64 noundef %692, ptr noundef nonnull %647, i32 noundef %683) #13
  store i64 %693, ptr %53, align 8, !tbaa !54
  br label %694

694:                                              ; preds = %691, %687, %682
  %695 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %648, i32 %683), !nosanitize !47
  %696 = extractvalue { i32, i1 } %695, 1, !nosanitize !47
  br i1 %696, label %697, label %698, !prof !48, !nosanitize !47

697:                                              ; preds = %694
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

698:                                              ; preds = %694
  %699 = extractvalue { i32, i1 } %695, 0, !nosanitize !47
  %700 = and i64 %660, 4294967295
  %701 = getelementptr inbounds nuw i8, ptr %647, i64 %700
  br i1 %679, label %2493, label %707

702:                                              ; preds = %646
  %703 = load ptr, ptr %84, align 8, !tbaa !30
  %704 = icmp eq ptr %703, null
  br i1 %704, label %707, label %705

705:                                              ; preds = %702
  %706 = getelementptr inbounds nuw i8, ptr %703, i64 56
  store ptr null, ptr %706, align 8, !tbaa !69
  br label %707

707:                                              ; preds = %702, %705, %698
  %708 = phi ptr [ %701, %698 ], [ %647, %705 ], [ %647, %702 ]
  %709 = phi i32 [ %699, %698 ], [ %648, %705 ], [ %648, %702 ]
  store i32 16188, ptr %21, align 8, !tbaa !20
  br label %710

710:                                              ; preds = %88, %707
  %711 = phi ptr [ %708, %707 ], [ %90, %88 ]
  %712 = phi i32 [ %709, %707 ], [ %92, %88 ]
  %713 = phi i64 [ %649, %707 ], [ %94, %88 ]
  %714 = phi i32 [ %650, %707 ], [ %95, %88 ]
  %715 = load i32, ptr %52, align 8, !tbaa !28
  %716 = and i32 %715, 512
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %768, label %718

718:                                              ; preds = %710
  %719 = icmp ult i32 %714, 16
  br i1 %719, label %720, label %755

720:                                              ; preds = %718
  %721 = zext nneg i32 %714 to i64
  %722 = icmp eq i32 %712, 0
  br i1 %722, label %2381, label %723

723:                                              ; preds = %720
  %724 = load i8, ptr %711, align 1, !tbaa !44
  %725 = zext i8 %724 to i64
  %726 = shl nuw nsw i64 %725, %721
  %727 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %713, i64 %726), !nosanitize !47
  %728 = extractvalue { i64, i1 } %727, 1, !nosanitize !47
  br i1 %728, label %729, label %730, !prof !48, !nosanitize !47

729:                                              ; preds = %738, %723
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

730:                                              ; preds = %723
  %731 = extractvalue { i64, i1 } %727, 0, !nosanitize !47
  %732 = getelementptr inbounds nuw i8, ptr %711, i64 1
  %733 = add i32 %712, -1
  %734 = add nuw nsw i64 %721, 8
  %735 = icmp ult i32 %714, 8
  br i1 %735, label %736, label %749

736:                                              ; preds = %730
  %737 = icmp eq i32 %733, 0
  br i1 %737, label %2381, label %738

738:                                              ; preds = %736
  %739 = load i8, ptr %732, align 1, !tbaa !44
  %740 = zext i8 %739 to i64
  %741 = shl nuw nsw i64 %740, %734
  %742 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %731, i64 %741), !nosanitize !47
  %743 = extractvalue { i64, i1 } %742, 1, !nosanitize !47
  br i1 %743, label %729, label %744, !prof !48, !nosanitize !47

744:                                              ; preds = %738
  %745 = extractvalue { i64, i1 } %742, 0, !nosanitize !47
  %746 = getelementptr inbounds nuw i8, ptr %711, i64 2
  %747 = add i32 %712, -2
  %748 = or disjoint i64 %721, 16
  br label %749

749:                                              ; preds = %744, %730
  %750 = phi i64 [ %731, %730 ], [ %745, %744 ]
  %751 = phi ptr [ %732, %730 ], [ %746, %744 ]
  %752 = phi i32 [ %733, %730 ], [ %747, %744 ]
  %753 = phi i64 [ %734, %730 ], [ %748, %744 ]
  %754 = trunc nuw nsw i64 %753 to i32
  br label %755

755:                                              ; preds = %749, %718
  %756 = phi ptr [ %711, %718 ], [ %751, %749 ]
  %757 = phi i32 [ %712, %718 ], [ %752, %749 ]
  %758 = phi i64 [ %713, %718 ], [ %750, %749 ]
  %759 = phi i32 [ %714, %718 ], [ %754, %749 ]
  %760 = load i32, ptr %49, align 8, !tbaa !24
  %761 = and i32 %760, 4
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %768, label %763

763:                                              ; preds = %755
  %764 = load i64, ptr %53, align 8, !tbaa !54
  %765 = and i64 %764, 65535
  %766 = icmp eq i64 %758, %765
  br i1 %766, label %768, label %767

767:                                              ; preds = %763
  store ptr @.str.5, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

768:                                              ; preds = %763, %755, %710
  %769 = phi ptr [ %711, %710 ], [ %756, %755 ], [ %756, %763 ]
  %770 = phi i32 [ %712, %710 ], [ %757, %755 ], [ %757, %763 ]
  %771 = phi i64 [ %713, %710 ], [ 0, %755 ], [ 0, %763 ]
  %772 = phi i32 [ %714, %710 ], [ 0, %755 ], [ 0, %763 ]
  %773 = load ptr, ptr %84, align 8, !tbaa !30
  %774 = icmp eq ptr %773, null
  br i1 %774, label %780, label %775

775:                                              ; preds = %768
  %776 = lshr i32 %715, 9
  %777 = and i32 %776, 1
  %778 = getelementptr inbounds nuw i8, ptr %773, i64 68
  store i32 %777, ptr %778, align 4, !tbaa !72
  %779 = getelementptr inbounds nuw i8, ptr %773, i64 72
  store i32 1, ptr %779, align 8, !tbaa !55
  br label %780

780:                                              ; preds = %775, %768
  %781 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  store i64 %781, ptr %53, align 8, !tbaa !54
  store i64 %781, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2359

782:                                              ; preds = %112
  %783 = load i8, ptr %90, align 1, !tbaa !44
  %784 = zext i8 %783 to i64
  %785 = shl nuw nsw i64 %784, %113
  %786 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %785), !nosanitize !47
  %787 = extractvalue { i64, i1 } %786, 1, !nosanitize !47
  br i1 %787, label %788, label %789, !prof !48, !nosanitize !47

788:                                              ; preds = %825, %811, %797, %782
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

789:                                              ; preds = %782
  %790 = extractvalue { i64, i1 } %786, 0, !nosanitize !47
  %791 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %792 = add i32 %92, -1
  %793 = add nuw nsw i64 %113, 8
  %794 = icmp ult i32 %95, 24
  br i1 %794, label %795, label %835

795:                                              ; preds = %789
  %796 = icmp eq i32 %792, 0
  br i1 %796, label %2411, label %797

797:                                              ; preds = %795
  %798 = load i8, ptr %791, align 1, !tbaa !44
  %799 = zext i8 %798 to i64
  %800 = shl nuw nsw i64 %799, %793
  %801 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %790, i64 %800), !nosanitize !47
  %802 = extractvalue { i64, i1 } %801, 1, !nosanitize !47
  br i1 %802, label %788, label %803, !prof !48, !nosanitize !47

803:                                              ; preds = %797
  %804 = extractvalue { i64, i1 } %801, 0, !nosanitize !47
  %805 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %806 = add i32 %92, -2
  %807 = add nuw nsw i64 %113, 16
  %808 = icmp ult i32 %95, 16
  br i1 %808, label %809, label %835

809:                                              ; preds = %803
  %810 = icmp eq i32 %806, 0
  br i1 %810, label %2411, label %811

811:                                              ; preds = %809
  %812 = load i8, ptr %805, align 1, !tbaa !44
  %813 = zext i8 %812 to i64
  %814 = shl nuw nsw i64 %813, %807
  %815 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %804, i64 %814), !nosanitize !47
  %816 = extractvalue { i64, i1 } %815, 1, !nosanitize !47
  br i1 %816, label %788, label %817, !prof !48, !nosanitize !47

817:                                              ; preds = %811
  %818 = extractvalue { i64, i1 } %815, 0, !nosanitize !47
  %819 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %820 = add i32 %92, -3
  %821 = add nuw nsw i64 %113, 24
  %822 = icmp ult i32 %95, 8
  br i1 %822, label %823, label %835

823:                                              ; preds = %817
  %824 = icmp eq i32 %820, 0
  br i1 %824, label %2411, label %825

825:                                              ; preds = %823
  %826 = load i8, ptr %819, align 1, !tbaa !44
  %827 = zext i8 %826 to i64
  %828 = shl nuw nsw i64 %827, %821
  %829 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %818, i64 %828), !nosanitize !47
  %830 = extractvalue { i64, i1 } %829, 1, !nosanitize !47
  br i1 %830, label %788, label %831, !prof !48, !nosanitize !47

831:                                              ; preds = %825
  %832 = extractvalue { i64, i1 } %829, 0, !nosanitize !47
  %833 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %834 = add i32 %92, -4
  br label %835

835:                                              ; preds = %789, %803, %817, %831, %110
  %836 = phi ptr [ %90, %110 ], [ %791, %789 ], [ %805, %803 ], [ %819, %817 ], [ %833, %831 ]
  %837 = phi i32 [ %92, %110 ], [ %792, %789 ], [ %806, %803 ], [ %820, %817 ], [ %834, %831 ]
  %838 = phi i64 [ %94, %110 ], [ %790, %789 ], [ %804, %803 ], [ %818, %817 ], [ %832, %831 ]
  %839 = trunc i64 %838 to i32
  %840 = call i32 @llvm.bswap.i32(i32 %839)
  %841 = zext i32 %840 to i64
  store i64 %841, ptr %53, align 8, !tbaa !54
  store i64 %841, ptr %54, align 8, !tbaa !25
  store i32 16190, ptr %21, align 8, !tbaa !20
  br label %842

842:                                              ; preds = %88, %835
  %843 = phi ptr [ %836, %835 ], [ %90, %88 ]
  %844 = phi i32 [ %837, %835 ], [ %92, %88 ]
  %845 = phi i64 [ 0, %835 ], [ %94, %88 ]
  %846 = phi i32 [ 0, %835 ], [ %95, %88 ]
  %847 = load i32, ptr %80, align 4, !tbaa !27
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %850

849:                                              ; preds = %842
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %843, ptr %0, align 8, !tbaa !50
  store i32 %844, ptr %43, align 8, !tbaa !51
  store i64 %845, ptr %45, align 8, !tbaa !31
  store i32 %846, ptr %47, align 8, !tbaa !32
  br label %2677

850:                                              ; preds = %842
  %851 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  store i64 %851, ptr %53, align 8, !tbaa !54
  store i64 %851, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %852

852:                                              ; preds = %88, %850
  %853 = phi ptr [ %843, %850 ], [ %90, %88 ]
  %854 = phi i32 [ %844, %850 ], [ %92, %88 ]
  %855 = phi i64 [ %845, %850 ], [ %94, %88 ]
  %856 = phi i32 [ %846, %850 ], [ %95, %88 ]
  br i1 %82, label %2493, label %857

857:                                              ; preds = %852, %88
  %858 = phi ptr [ %853, %852 ], [ %90, %88 ]
  %859 = phi i32 [ %854, %852 ], [ %92, %88 ]
  %860 = phi i64 [ %855, %852 ], [ %94, %88 ]
  %861 = phi i32 [ %856, %852 ], [ %95, %88 ]
  %862 = load i32, ptr %83, align 4, !tbaa !26
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %864, label %869

864:                                              ; preds = %857
  %865 = icmp ult i32 %861, 3
  br i1 %865, label %866, label %890

866:                                              ; preds = %864
  %867 = or disjoint i32 %861, 8
  %868 = icmp eq i32 %859, 0
  br i1 %868, label %2493, label %878

869:                                              ; preds = %857
  %870 = and i32 %861, 7
  %871 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %861, i32 %870), !nosanitize !47
  %872 = extractvalue { i32, i1 } %871, 1, !nosanitize !47
  br i1 %872, label %873, label %874, !prof !48, !nosanitize !47

873:                                              ; preds = %869
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

874:                                              ; preds = %869
  %875 = extractvalue { i32, i1 } %871, 0, !nosanitize !47
  %876 = zext nneg i32 %870 to i64
  %877 = lshr i64 %860, %876
  store i32 16206, ptr %21, align 8, !tbaa !20
  br label %2359

878:                                              ; preds = %866
  %879 = load i8, ptr %858, align 1, !tbaa !44
  %880 = zext i8 %879 to i64
  %881 = zext nneg i32 %861 to i64
  %882 = shl nuw nsw i64 %880, %881
  %883 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %860, i64 %882), !nosanitize !47
  %884 = extractvalue { i64, i1 } %883, 1, !nosanitize !47
  br i1 %884, label %885, label %886, !prof !48, !nosanitize !47

885:                                              ; preds = %878
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

886:                                              ; preds = %878
  %887 = extractvalue { i64, i1 } %883, 0, !nosanitize !47
  %888 = getelementptr inbounds nuw i8, ptr %858, i64 1
  %889 = add i32 %859, -1
  br label %890

890:                                              ; preds = %886, %864
  %891 = phi ptr [ %888, %886 ], [ %858, %864 ]
  %892 = phi i32 [ %889, %886 ], [ %859, %864 ]
  %893 = phi i64 [ %887, %886 ], [ %860, %864 ]
  %894 = phi i32 [ %867, %886 ], [ %861, %864 ]
  %895 = trunc i64 %893 to i32
  %896 = and i32 %895, 1
  store i32 %896, ptr %83, align 4, !tbaa !26
  %897 = lshr i32 %895, 1
  %898 = and i32 %897, 3
  switch i32 %898, label %904 [
    i32 0, label %906
    i32 1, label %899
    i32 2, label %903
    i32 3, label %905
  ]

899:                                              ; preds = %890
  call void @inflate_fixed(ptr noundef nonnull %15) #13
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %900, label %908

900:                                              ; preds = %899
  %901 = add i32 %894, -3
  %902 = lshr i64 %893, 3
  br label %2493

903:                                              ; preds = %890
  br label %906

904:                                              ; preds = %890
  unreachable

905:                                              ; preds = %890
  store ptr @.str.6, ptr %55, align 8, !tbaa !45
  br label %906

906:                                              ; preds = %890, %903, %905
  %907 = phi i32 [ 16209, %905 ], [ 16196, %903 ], [ 16193, %890 ]
  store i32 %907, ptr %21, align 8, !tbaa !20
  br label %908

908:                                              ; preds = %906, %899
  %909 = add i32 %894, -3
  %910 = lshr i64 %893, 3
  br label %2359

911:                                              ; preds = %88
  %912 = and i32 %95, 7
  %913 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %95, i32 %912), !nosanitize !47
  %914 = extractvalue { i32, i1 } %913, 1, !nosanitize !47
  br i1 %914, label %915, label %916, !prof !48, !nosanitize !47

915:                                              ; preds = %911
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

916:                                              ; preds = %911
  %917 = zext nneg i32 %912 to i64
  %918 = lshr i64 %94, %917
  %919 = extractvalue { i32, i1 } %913, 0
  %920 = icmp ult i32 %919, 32
  br i1 %920, label %921, label %984

921:                                              ; preds = %916
  %922 = and i32 %95, -8
  %923 = zext i32 %922 to i64
  %924 = icmp eq i32 %92, 0
  br i1 %924, label %2417, label %925

925:                                              ; preds = %921
  %926 = load i8, ptr %90, align 1, !tbaa !44
  %927 = zext i8 %926 to i64
  %928 = shl nuw nsw i64 %927, %923
  %929 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %918, i64 %928), !nosanitize !47
  %930 = extractvalue { i64, i1 } %929, 1, !nosanitize !47
  br i1 %930, label %931, label %932, !prof !48, !nosanitize !47

931:                                              ; preds = %968, %954, %940, %925
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

932:                                              ; preds = %925
  %933 = extractvalue { i64, i1 } %929, 0, !nosanitize !47
  %934 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %935 = add i32 %92, -1
  %936 = add nuw nsw i64 %923, 8
  %937 = icmp ult i32 %95, 24
  br i1 %937, label %938, label %978

938:                                              ; preds = %932
  %939 = icmp eq i32 %935, 0
  br i1 %939, label %2417, label %940

940:                                              ; preds = %938
  %941 = load i8, ptr %934, align 1, !tbaa !44
  %942 = zext i8 %941 to i64
  %943 = shl nuw nsw i64 %942, %936
  %944 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %933, i64 %943), !nosanitize !47
  %945 = extractvalue { i64, i1 } %944, 1, !nosanitize !47
  br i1 %945, label %931, label %946, !prof !48, !nosanitize !47

946:                                              ; preds = %940
  %947 = extractvalue { i64, i1 } %944, 0, !nosanitize !47
  %948 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %949 = add i32 %92, -2
  %950 = add nuw nsw i64 %923, 16
  %951 = icmp ult i32 %95, 16
  br i1 %951, label %952, label %978

952:                                              ; preds = %946
  %953 = icmp eq i32 %949, 0
  br i1 %953, label %2417, label %954

954:                                              ; preds = %952
  %955 = load i8, ptr %948, align 1, !tbaa !44
  %956 = zext i8 %955 to i64
  %957 = shl nuw nsw i64 %956, %950
  %958 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %947, i64 %957), !nosanitize !47
  %959 = extractvalue { i64, i1 } %958, 1, !nosanitize !47
  br i1 %959, label %931, label %960, !prof !48, !nosanitize !47

960:                                              ; preds = %954
  %961 = extractvalue { i64, i1 } %958, 0, !nosanitize !47
  %962 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %963 = add i32 %92, -3
  %964 = add nuw nsw i64 %923, 24
  %965 = icmp eq i32 %922, 0
  br i1 %965, label %966, label %978

966:                                              ; preds = %960
  %967 = icmp eq i32 %963, 0
  br i1 %967, label %2417, label %968

968:                                              ; preds = %966
  %969 = load i8, ptr %962, align 1, !tbaa !44
  %970 = zext i8 %969 to i64
  %971 = shl nuw nsw i64 %970, %964
  %972 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %961, i64 %971), !nosanitize !47
  %973 = extractvalue { i64, i1 } %972, 1, !nosanitize !47
  br i1 %973, label %931, label %974, !prof !48, !nosanitize !47

974:                                              ; preds = %968
  %975 = extractvalue { i64, i1 } %972, 0, !nosanitize !47
  %976 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %977 = add i32 %92, -4
  br label %978

978:                                              ; preds = %974, %960, %946, %932
  %979 = phi i64 [ %933, %932 ], [ %947, %946 ], [ %961, %960 ], [ %975, %974 ]
  %980 = phi ptr [ %934, %932 ], [ %948, %946 ], [ %962, %960 ], [ %976, %974 ]
  %981 = phi i32 [ %935, %932 ], [ %949, %946 ], [ %963, %960 ], [ %977, %974 ]
  %982 = phi i64 [ %936, %932 ], [ %950, %946 ], [ %964, %960 ], [ 32, %974 ]
  %983 = trunc nuw nsw i64 %982 to i32
  br label %984

984:                                              ; preds = %978, %916
  %985 = phi ptr [ %90, %916 ], [ %980, %978 ]
  %986 = phi i32 [ %92, %916 ], [ %981, %978 ]
  %987 = phi i64 [ %918, %916 ], [ %979, %978 ]
  %988 = phi i32 [ %919, %916 ], [ %983, %978 ]
  %989 = and i64 %987, 65535
  %990 = lshr i64 %987, 16
  %991 = xor i64 %990, %989
  %992 = icmp eq i64 %991, 65535
  br i1 %992, label %994, label %993

993:                                              ; preds = %984
  store ptr @.str.7, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

994:                                              ; preds = %984
  %995 = trunc i64 %987 to i32
  %996 = and i32 %995, 65535
  store i32 %996, ptr %56, align 4, !tbaa !61
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2493, label %997

997:                                              ; preds = %994, %88
  %998 = phi ptr [ %985, %994 ], [ %90, %88 ]
  %999 = phi i32 [ %986, %994 ], [ %92, %88 ]
  %1000 = phi i64 [ 0, %994 ], [ %94, %88 ]
  %1001 = phi i32 [ 0, %994 ], [ %95, %88 ]
  store i32 16195, ptr %21, align 8, !tbaa !20
  br label %1002

1002:                                             ; preds = %88, %997
  %1003 = phi ptr [ %998, %997 ], [ %90, %88 ]
  %1004 = phi i32 [ %999, %997 ], [ %92, %88 ]
  %1005 = phi i64 [ %1000, %997 ], [ %94, %88 ]
  %1006 = phi i32 [ %1001, %997 ], [ %95, %88 ]
  %1007 = load i32, ptr %56, align 4, !tbaa !61
  %1008 = icmp eq i32 %1007, 0
  br i1 %1008, label %1033, label %1009

1009:                                             ; preds = %1002
  %1010 = call i32 @llvm.umin.i32(i32 %1007, i32 %1004)
  %1011 = call i32 @llvm.umin.i32(i32 %1010, i32 %93)
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %2493, label %1013

1013:                                             ; preds = %1009
  %1014 = zext i32 %1011 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr align 1 %1003, i64 %1014, i1 false)
  %1015 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1004, i32 %1011), !nosanitize !47
  %1016 = extractvalue { i32, i1 } %1015, 0, !nosanitize !47
  %1017 = extractvalue { i32, i1 } %1015, 1, !nosanitize !47
  br i1 %1017, label %1018, label %1019, !prof !48, !nosanitize !47

1018:                                             ; preds = %1013
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1019:                                             ; preds = %1013
  %1020 = getelementptr inbounds nuw i8, ptr %1003, i64 %1014
  %1021 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %1011), !nosanitize !47
  %1022 = extractvalue { i32, i1 } %1021, 0, !nosanitize !47
  %1023 = extractvalue { i32, i1 } %1021, 1, !nosanitize !47
  br i1 %1023, label %1024, label %1025, !prof !48, !nosanitize !47

1024:                                             ; preds = %1019
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1025:                                             ; preds = %1019
  %1026 = load i32, ptr %56, align 4, !tbaa !61
  %1027 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1026, i32 %1011), !nosanitize !47
  %1028 = extractvalue { i32, i1 } %1027, 1, !nosanitize !47
  br i1 %1028, label %1029, label %1030, !prof !48, !nosanitize !47

1029:                                             ; preds = %1025
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1030:                                             ; preds = %1025
  %1031 = extractvalue { i32, i1 } %1027, 0, !nosanitize !47
  %1032 = getelementptr inbounds nuw i8, ptr %91, i64 %1014
  store i32 %1031, ptr %56, align 4, !tbaa !61
  br label %2359

1033:                                             ; preds = %1002
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2359

1034:                                             ; preds = %107
  %1035 = load i8, ptr %90, align 1, !tbaa !44
  %1036 = zext i8 %1035 to i64
  %1037 = shl nuw nsw i64 %1036, %108
  %1038 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %1037), !nosanitize !47
  %1039 = extractvalue { i64, i1 } %1038, 1, !nosanitize !47
  br i1 %1039, label %1040, label %1041, !prof !48, !nosanitize !47

1040:                                             ; preds = %1049, %1034
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1041:                                             ; preds = %1034
  %1042 = extractvalue { i64, i1 } %1038, 0, !nosanitize !47
  %1043 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %1044 = add i32 %92, -1
  %1045 = add nuw nsw i64 %108, 8
  %1046 = icmp ult i32 %95, 6
  br i1 %1046, label %1047, label %1060

1047:                                             ; preds = %1041
  %1048 = icmp eq i32 %1044, 0
  br i1 %1048, label %2474, label %1049

1049:                                             ; preds = %1047
  %1050 = load i8, ptr %1043, align 1, !tbaa !44
  %1051 = zext i8 %1050 to i64
  %1052 = shl nuw nsw i64 %1051, %1045
  %1053 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1042, i64 %1052), !nosanitize !47
  %1054 = extractvalue { i64, i1 } %1053, 1, !nosanitize !47
  br i1 %1054, label %1040, label %1055, !prof !48, !nosanitize !47

1055:                                             ; preds = %1049
  %1056 = extractvalue { i64, i1 } %1053, 0, !nosanitize !47
  %1057 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %1058 = add i32 %92, -2
  %1059 = or disjoint i64 %108, 16
  br label %1060

1060:                                             ; preds = %1055, %1041
  %1061 = phi i64 [ %1042, %1041 ], [ %1056, %1055 ]
  %1062 = phi ptr [ %1043, %1041 ], [ %1057, %1055 ]
  %1063 = phi i32 [ %1044, %1041 ], [ %1058, %1055 ]
  %1064 = phi i64 [ %1045, %1041 ], [ %1059, %1055 ]
  %1065 = trunc nuw nsw i64 %1064 to i32
  br label %1066

1066:                                             ; preds = %1060, %105
  %1067 = phi ptr [ %90, %105 ], [ %1062, %1060 ]
  %1068 = phi i32 [ %92, %105 ], [ %1063, %1060 ]
  %1069 = phi i64 [ %94, %105 ], [ %1061, %1060 ]
  %1070 = phi i32 [ %95, %105 ], [ %1065, %1060 ]
  %1071 = trunc i64 %1069 to i32
  %1072 = and i32 %1071, 31
  %1073 = add nuw nsw i32 %1072, 257
  store i32 %1073, ptr %57, align 4, !tbaa !73
  %1074 = lshr i32 %1071, 5
  %1075 = and i32 %1074, 31
  %1076 = add nuw nsw i32 %1075, 1
  store i32 %1076, ptr %58, align 8, !tbaa !74
  %1077 = lshr i32 %1071, 10
  %1078 = and i32 %1077, 15
  %1079 = add nuw nsw i32 %1078, 4
  store i32 %1079, ptr %59, align 8, !tbaa !75
  %1080 = lshr i64 %1069, 14
  %1081 = add i32 %1070, -14
  %1082 = icmp samesign ugt i32 %1072, 29
  %1083 = icmp samesign ugt i32 %1075, 29
  %1084 = select i1 %1082, i1 true, i1 %1083
  br i1 %1084, label %1085, label %1086

1085:                                             ; preds = %1066
  store ptr @.str.8, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

1086:                                             ; preds = %1066
  store i32 0, ptr %60, align 4, !tbaa !76
  store i32 16197, ptr %21, align 8, !tbaa !20
  br label %1091

1087:                                             ; preds = %88
  %1088 = load i32, ptr %59, align 8, !tbaa !75
  %1089 = load i32, ptr %60, align 4, !tbaa !76
  %1090 = icmp ult i32 %1089, %1088
  br i1 %1090, label %1091, label %1100

1091:                                             ; preds = %1086, %1087
  %1092 = phi i32 [ %1081, %1086 ], [ %95, %1087 ]
  %1093 = phi i64 [ %1080, %1086 ], [ %94, %1087 ]
  %1094 = phi i32 [ %1068, %1086 ], [ %92, %1087 ]
  %1095 = phi ptr [ %1067, %1086 ], [ %90, %1087 ]
  %1096 = phi i32 [ %1079, %1086 ], [ %1088, %1087 ]
  %1097 = phi i32 [ 0, %1086 ], [ %1089, %1087 ]
  %1098 = zext i32 %1097 to i64
  %1099 = zext i32 %1096 to i64
  br label %1109

1100:                                             ; preds = %1131, %1087
  %1101 = phi ptr [ %90, %1087 ], [ %1132, %1131 ]
  %1102 = phi i32 [ %92, %1087 ], [ %1133, %1131 ]
  %1103 = phi i64 [ %94, %1087 ], [ %1145, %1131 ]
  %1104 = phi i32 [ %95, %1087 ], [ %1144, %1131 ]
  %1105 = phi i32 [ %1089, %1087 ], [ %1096, %1131 ]
  %1106 = icmp ult i32 %1105, 19
  br i1 %1106, label %1107, label %1157

1107:                                             ; preds = %1100
  %1108 = zext nneg i32 %1105 to i64
  br label %1147

1109:                                             ; preds = %1091, %1131
  %1110 = phi i64 [ %1098, %1091 ], [ %1136, %1131 ]
  %1111 = phi i32 [ %1092, %1091 ], [ %1144, %1131 ]
  %1112 = phi i64 [ %1093, %1091 ], [ %1145, %1131 ]
  %1113 = phi i32 [ %1094, %1091 ], [ %1133, %1131 ]
  %1114 = phi ptr [ %1095, %1091 ], [ %1132, %1131 ]
  %1115 = icmp ult i32 %1111, 3
  br i1 %1115, label %1116, label %1131

1116:                                             ; preds = %1109
  %1117 = or disjoint i32 %1111, 8
  %1118 = icmp eq i32 %1113, 0
  br i1 %1118, label %2493, label %1119

1119:                                             ; preds = %1116
  %1120 = load i8, ptr %1114, align 1, !tbaa !44
  %1121 = zext i8 %1120 to i64
  %1122 = zext nneg i32 %1111 to i64
  %1123 = shl nuw nsw i64 %1121, %1122
  %1124 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1112, i64 %1123), !nosanitize !47
  %1125 = extractvalue { i64, i1 } %1124, 1, !nosanitize !47
  br i1 %1125, label %1126, label %1127, !prof !48, !nosanitize !47

1126:                                             ; preds = %1119
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1127:                                             ; preds = %1119
  %1128 = extractvalue { i64, i1 } %1124, 0, !nosanitize !47
  %1129 = getelementptr inbounds nuw i8, ptr %1114, i64 1
  %1130 = add i32 %1113, -1
  br label %1131

1131:                                             ; preds = %1109, %1127
  %1132 = phi ptr [ %1129, %1127 ], [ %1114, %1109 ]
  %1133 = phi i32 [ %1130, %1127 ], [ %1113, %1109 ]
  %1134 = phi i64 [ %1128, %1127 ], [ %1112, %1109 ]
  %1135 = phi i32 [ %1117, %1127 ], [ %1111, %1109 ]
  %1136 = add nuw nsw i64 %1110, 1
  %1137 = trunc i64 %1134 to i16
  %1138 = and i16 %1137, 7
  %1139 = trunc nuw i64 %1136 to i32
  store i32 %1139, ptr %60, align 4, !tbaa !76
  %1140 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1110
  %1141 = load i16, ptr %1140, align 2, !tbaa !77
  %1142 = zext i16 %1141 to i64
  %1143 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1142
  store i16 %1138, ptr %1143, align 2, !tbaa !77
  %1144 = add i32 %1135, -3
  %1145 = lshr i64 %1134, 3
  %1146 = icmp eq i64 %1136, %1099
  br i1 %1146, label %1100, label %1109, !llvm.loop !79

1147:                                             ; preds = %1107, %1147
  %1148 = phi i64 [ %1108, %1107 ], [ %1149, %1147 ]
  %1149 = add nuw nsw i64 %1148, 1
  %1150 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1148
  %1151 = load i16, ptr %1150, align 2, !tbaa !77
  %1152 = zext i16 %1151 to i64
  %1153 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1152
  store i16 0, ptr %1153, align 2, !tbaa !77
  %1154 = and i64 %1149, 4294967295
  %1155 = icmp eq i64 %1154, 19
  br i1 %1155, label %1156, label %1147, !llvm.loop !80

1156:                                             ; preds = %1147
  store i32 19, ptr %60, align 4, !tbaa !76
  br label %1157

1157:                                             ; preds = %1156, %1100
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %64, align 8, !tbaa !34
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 7, ptr %66, align 8, !tbaa !81
  %1158 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #13
  %1159 = icmp eq i32 %1158, 0
  br i1 %1159, label %1161, label %1160

1160:                                             ; preds = %1157
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

1161:                                             ; preds = %1157
  store i32 0, ptr %60, align 4, !tbaa !76
  store i32 16198, ptr %21, align 8, !tbaa !20
  br label %1162

1162:                                             ; preds = %88, %1161
  %1163 = phi ptr [ %1101, %1161 ], [ %90, %88 ]
  %1164 = phi i32 [ %1102, %1161 ], [ %92, %88 ]
  %1165 = phi i64 [ %1103, %1161 ], [ %94, %88 ]
  %1166 = phi i32 [ %1104, %1161 ], [ %95, %88 ]
  %1167 = phi i32 [ 0, %1161 ], [ %97, %88 ]
  %1168 = load i32, ptr %57, align 4, !tbaa !73
  %1169 = load i32, ptr %58, align 8, !tbaa !74
  %1170 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1168, i32 %1169), !nosanitize !47
  %1171 = extractvalue { i32, i1 } %1170, 1, !nosanitize !47
  br i1 %1171, label %1184, label %1172, !prof !82, !nosanitize !47

1172:                                             ; preds = %1162
  %1173 = extractvalue { i32, i1 } %1170, 0, !nosanitize !47
  %1174 = load i32, ptr %60, align 4, !tbaa !76
  %1175 = call i32 @llvm.umax.i32(i32 %1174, i32 %1173)
  %1176 = zext i32 %1175 to i64
  %1177 = icmp ult i32 %1174, %1173
  br i1 %1177, label %1178, label %1455

1178:                                             ; preds = %1172
  %1179 = zext i32 %1174 to i64
  %1180 = load i32, ptr %66, align 8, !tbaa !81
  %1181 = shl nsw i32 -1, %1180
  %1182 = xor i32 %1181, -1
  %1183 = load ptr, ptr %65, align 8, !tbaa !35
  br label %1185

1184:                                             ; preds = %1162
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1185:                                             ; preds = %1178, %1450
  %1186 = phi ptr [ %1163, %1178 ], [ %1235, %1450 ]
  %1187 = phi i32 [ %1164, %1178 ], [ %1236, %1450 ]
  %1188 = phi i64 [ %1165, %1178 ], [ %1247, %1450 ]
  %1189 = phi i32 [ %1166, %1178 ], [ %1249, %1450 ]
  %1190 = phi i64 [ %1179, %1178 ], [ %1451, %1450 ]
  %1191 = phi i32 [ %1174, %1178 ], [ %1452, %1450 ]
  %1192 = trunc i64 %1188 to i32
  %1193 = and i32 %1182, %1192
  %1194 = zext nneg i32 %1193 to i64
  %1195 = getelementptr inbounds nuw [4 x i8], ptr %1183, i64 %1194
  %1196 = getelementptr inbounds nuw i8, ptr %1195, i64 1
  %1197 = load i8, ptr %1196, align 1, !tbaa !44
  %1198 = zext i8 %1197 to i32
  %1199 = icmp ult i32 %1189, %1198
  br i1 %1199, label %1200, label %1233

1200:                                             ; preds = %1185
  %1201 = icmp eq i32 %1187, 0
  br i1 %1201, label %2369, label %1202

1202:                                             ; preds = %1200
  %1203 = zext nneg i32 %1189 to i64
  br label %1206

1204:                                             ; preds = %1217
  %1205 = icmp eq i32 %1220, 0
  br i1 %1205, label %2369, label %1206

1206:                                             ; preds = %1202, %1204
  %1207 = phi ptr [ %1186, %1202 ], [ %1219, %1204 ]
  %1208 = phi i32 [ %1187, %1202 ], [ %1220, %1204 ]
  %1209 = phi i64 [ %1188, %1202 ], [ %1218, %1204 ]
  %1210 = phi i64 [ %1203, %1202 ], [ %1221, %1204 ]
  %1211 = load i8, ptr %1207, align 1, !tbaa !44
  %1212 = zext i8 %1211 to i64
  %1213 = shl i64 %1212, %1210
  %1214 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1209, i64 %1213), !nosanitize !47
  %1215 = extractvalue { i64, i1 } %1214, 1, !nosanitize !47
  br i1 %1215, label %1216, label %1217, !prof !48, !nosanitize !47

1216:                                             ; preds = %1206
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1217:                                             ; preds = %1206
  %1218 = extractvalue { i64, i1 } %1214, 0, !nosanitize !47
  %1219 = getelementptr inbounds nuw i8, ptr %1207, i64 1
  %1220 = add i32 %1208, -1
  %1221 = add nuw nsw i64 %1210, 8
  %1222 = trunc i64 %1218 to i32
  %1223 = and i32 %1182, %1222
  %1224 = zext nneg i32 %1223 to i64
  %1225 = getelementptr inbounds nuw [4 x i8], ptr %1183, i64 %1224
  %1226 = getelementptr inbounds nuw i8, ptr %1225, i64 1
  %1227 = load i8, ptr %1226, align 1, !tbaa !44
  %1228 = zext i8 %1227 to i64
  %1229 = icmp samesign ult i64 %1221, %1228
  br i1 %1229, label %1204, label %1230

1230:                                             ; preds = %1217
  %1231 = zext i8 %1227 to i32
  %1232 = trunc nuw nsw i64 %1221 to i32
  br label %1233

1233:                                             ; preds = %1230, %1185
  %1234 = phi i64 [ %1194, %1185 ], [ %1224, %1230 ]
  %1235 = phi ptr [ %1186, %1185 ], [ %1219, %1230 ]
  %1236 = phi i32 [ %1187, %1185 ], [ %1220, %1230 ]
  %1237 = phi i64 [ %1188, %1185 ], [ %1218, %1230 ]
  %1238 = phi i32 [ %1189, %1185 ], [ %1232, %1230 ]
  %1239 = phi i8 [ %1197, %1185 ], [ %1227, %1230 ]
  %1240 = phi i32 [ %1198, %1185 ], [ %1231, %1230 ]
  %1241 = getelementptr inbounds nuw [4 x i8], ptr %1183, i64 %1234
  %1242 = getelementptr inbounds nuw i8, ptr %1241, i64 2
  %1243 = load i16, ptr %1242, align 2, !tbaa !77
  %1244 = icmp ult i16 %1243, 16
  br i1 %1244, label %1245, label %1255

1245:                                             ; preds = %1233
  %1246 = zext nneg i8 %1239 to i64
  %1247 = lshr i64 %1237, %1246
  %1248 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1238, i32 %1240), !nosanitize !47
  %1249 = extractvalue { i32, i1 } %1248, 0, !nosanitize !47
  %1250 = extractvalue { i32, i1 } %1248, 1, !nosanitize !47
  br i1 %1250, label %1251, label %1252, !prof !48, !nosanitize !47

1251:                                             ; preds = %1245
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1252:                                             ; preds = %1245
  %1253 = icmp eq i64 %1190, 4294967295
  br i1 %1253, label %1254, label %1450, !prof !48, !nosanitize !47

1254:                                             ; preds = %1252
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1255:                                             ; preds = %1233
  %1256 = trunc nuw i64 %1190 to i32
  switch i16 %1243, label %1269 [
    i16 16, label %1263
    i16 17, label %1257
  ]

1257:                                             ; preds = %1255
  %1258 = add nuw nsw i32 %1240, 3
  %1259 = icmp ult i32 %1238, %1258
  br i1 %1259, label %1260, label %1340

1260:                                             ; preds = %1257
  %1261 = zext nneg i32 %1238 to i64
  %1262 = zext nneg i32 %1258 to i64
  br label %1319

1263:                                             ; preds = %1255
  %1264 = add nuw nsw i32 %1240, 2
  %1265 = icmp ult i32 %1238, %1264
  br i1 %1265, label %1266, label %1296

1266:                                             ; preds = %1263
  %1267 = zext nneg i32 %1238 to i64
  %1268 = zext nneg i32 %1264 to i64
  br label %1275

1269:                                             ; preds = %1255
  %1270 = add nuw nsw i32 %1240, 7
  %1271 = icmp ult i32 %1238, %1270
  br i1 %1271, label %1272, label %1377

1272:                                             ; preds = %1269
  %1273 = zext nneg i32 %1238 to i64
  %1274 = zext nneg i32 %1270 to i64
  br label %1356

1275:                                             ; preds = %1266, %1288
  %1276 = phi i64 [ %1267, %1266 ], [ %1292, %1288 ]
  %1277 = phi i64 [ %1237, %1266 ], [ %1289, %1288 ]
  %1278 = phi i32 [ %1236, %1266 ], [ %1291, %1288 ]
  %1279 = phi ptr [ %1235, %1266 ], [ %1290, %1288 ]
  %1280 = icmp eq i32 %1278, 0
  br i1 %1280, label %2464, label %1281

1281:                                             ; preds = %1275
  %1282 = load i8, ptr %1279, align 1, !tbaa !44
  %1283 = zext i8 %1282 to i64
  %1284 = shl i64 %1283, %1276
  %1285 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1277, i64 %1284), !nosanitize !47
  %1286 = extractvalue { i64, i1 } %1285, 1, !nosanitize !47
  br i1 %1286, label %1287, label %1288, !prof !48, !nosanitize !47

1287:                                             ; preds = %1281
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1288:                                             ; preds = %1281
  %1289 = extractvalue { i64, i1 } %1285, 0, !nosanitize !47
  %1290 = getelementptr inbounds nuw i8, ptr %1279, i64 1
  %1291 = add i32 %1278, -1
  %1292 = add nuw nsw i64 %1276, 8
  %1293 = icmp samesign ult i64 %1292, %1268
  br i1 %1293, label %1275, label %1294, !llvm.loop !83

1294:                                             ; preds = %1288
  %1295 = trunc nuw nsw i64 %1292 to i32
  br label %1296

1296:                                             ; preds = %1294, %1263
  %1297 = phi ptr [ %1235, %1263 ], [ %1290, %1294 ]
  %1298 = phi i32 [ %1236, %1263 ], [ %1291, %1294 ]
  %1299 = phi i64 [ %1237, %1263 ], [ %1289, %1294 ]
  %1300 = phi i32 [ %1238, %1263 ], [ %1295, %1294 ]
  %1301 = zext nneg i8 %1239 to i64
  %1302 = lshr i64 %1299, %1301
  %1303 = sub nuw i32 %1300, %1240
  %1304 = icmp eq i64 %1190, 0
  br i1 %1304, label %1305, label %1306

1305:                                             ; preds = %1296
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

1306:                                             ; preds = %1296
  %1307 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1303, i32 2), !nosanitize !47
  %1308 = extractvalue { i32, i1 } %1307, 1, !nosanitize !47
  br i1 %1308, label %1309, label %1310, !prof !48, !nosanitize !47

1309:                                             ; preds = %1306
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1310:                                             ; preds = %1306
  %1311 = trunc i64 %1302 to i32
  %1312 = and i32 %1311, 3
  %1313 = add nuw nsw i32 %1312, 3
  %1314 = add nuw i64 %1190, 4294967295
  %1315 = and i64 %1314, 4294967295
  %1316 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1315
  %1317 = load i16, ptr %1316, align 2, !tbaa !77
  %1318 = lshr i64 %1302, 2
  br label %1393

1319:                                             ; preds = %1260, %1332
  %1320 = phi i64 [ %1261, %1260 ], [ %1336, %1332 ]
  %1321 = phi i64 [ %1237, %1260 ], [ %1333, %1332 ]
  %1322 = phi i32 [ %1236, %1260 ], [ %1335, %1332 ]
  %1323 = phi ptr [ %1235, %1260 ], [ %1334, %1332 ]
  %1324 = icmp eq i32 %1322, 0
  br i1 %1324, label %2469, label %1325

1325:                                             ; preds = %1319
  %1326 = load i8, ptr %1323, align 1, !tbaa !44
  %1327 = zext i8 %1326 to i64
  %1328 = shl i64 %1327, %1320
  %1329 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1321, i64 %1328), !nosanitize !47
  %1330 = extractvalue { i64, i1 } %1329, 1, !nosanitize !47
  br i1 %1330, label %1331, label %1332, !prof !48, !nosanitize !47

1331:                                             ; preds = %1325
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1332:                                             ; preds = %1325
  %1333 = extractvalue { i64, i1 } %1329, 0, !nosanitize !47
  %1334 = getelementptr inbounds nuw i8, ptr %1323, i64 1
  %1335 = add i32 %1322, -1
  %1336 = add nuw nsw i64 %1320, 8
  %1337 = icmp samesign ult i64 %1336, %1262
  br i1 %1337, label %1319, label %1338, !llvm.loop !84

1338:                                             ; preds = %1332
  %1339 = trunc nuw nsw i64 %1336 to i32
  br label %1340

1340:                                             ; preds = %1338, %1257
  %1341 = phi ptr [ %1235, %1257 ], [ %1334, %1338 ]
  %1342 = phi i32 [ %1236, %1257 ], [ %1335, %1338 ]
  %1343 = phi i64 [ %1237, %1257 ], [ %1333, %1338 ]
  %1344 = phi i32 [ %1238, %1257 ], [ %1339, %1338 ]
  %1345 = sub nuw i32 %1344, %1240
  %1346 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1345, i32 3), !nosanitize !47
  %1347 = extractvalue { i32, i1 } %1346, 1, !nosanitize !47
  br i1 %1347, label %1348, label %1349, !prof !48, !nosanitize !47

1348:                                             ; preds = %1340
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1349:                                             ; preds = %1340
  %1350 = zext nneg i8 %1239 to i64
  %1351 = lshr i64 %1343, %1350
  %1352 = trunc i64 %1351 to i32
  %1353 = and i32 %1352, 7
  %1354 = add nuw nsw i32 %1353, 3
  %1355 = lshr i64 %1351, 3
  br label %1393

1356:                                             ; preds = %1272, %1369
  %1357 = phi i64 [ %1273, %1272 ], [ %1373, %1369 ]
  %1358 = phi i64 [ %1237, %1272 ], [ %1370, %1369 ]
  %1359 = phi i32 [ %1236, %1272 ], [ %1372, %1369 ]
  %1360 = phi ptr [ %1235, %1272 ], [ %1371, %1369 ]
  %1361 = icmp eq i32 %1359, 0
  br i1 %1361, label %2459, label %1362

1362:                                             ; preds = %1356
  %1363 = load i8, ptr %1360, align 1, !tbaa !44
  %1364 = zext i8 %1363 to i64
  %1365 = shl i64 %1364, %1357
  %1366 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1358, i64 %1365), !nosanitize !47
  %1367 = extractvalue { i64, i1 } %1366, 1, !nosanitize !47
  br i1 %1367, label %1368, label %1369, !prof !48, !nosanitize !47

1368:                                             ; preds = %1362
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1369:                                             ; preds = %1362
  %1370 = extractvalue { i64, i1 } %1366, 0, !nosanitize !47
  %1371 = getelementptr inbounds nuw i8, ptr %1360, i64 1
  %1372 = add i32 %1359, -1
  %1373 = add nuw nsw i64 %1357, 8
  %1374 = icmp samesign ult i64 %1373, %1274
  br i1 %1374, label %1356, label %1375, !llvm.loop !85

1375:                                             ; preds = %1369
  %1376 = trunc nuw nsw i64 %1373 to i32
  br label %1377

1377:                                             ; preds = %1375, %1269
  %1378 = phi ptr [ %1235, %1269 ], [ %1371, %1375 ]
  %1379 = phi i32 [ %1236, %1269 ], [ %1372, %1375 ]
  %1380 = phi i64 [ %1237, %1269 ], [ %1370, %1375 ]
  %1381 = phi i32 [ %1238, %1269 ], [ %1376, %1375 ]
  %1382 = sub nuw i32 %1381, %1240
  %1383 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1382, i32 7), !nosanitize !47
  %1384 = extractvalue { i32, i1 } %1383, 1, !nosanitize !47
  br i1 %1384, label %1385, label %1386, !prof !48, !nosanitize !47

1385:                                             ; preds = %1377
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1386:                                             ; preds = %1377
  %1387 = zext nneg i8 %1239 to i64
  %1388 = lshr i64 %1380, %1387
  %1389 = trunc i64 %1388 to i32
  %1390 = and i32 %1389, 127
  %1391 = add nuw nsw i32 %1390, 11
  %1392 = lshr i64 %1388, 7
  br label %1393

1393:                                             ; preds = %1349, %1386, %1310
  %1394 = phi ptr [ %1297, %1310 ], [ %1341, %1349 ], [ %1378, %1386 ]
  %1395 = phi i32 [ %1298, %1310 ], [ %1342, %1349 ], [ %1379, %1386 ]
  %1396 = phi i64 [ %1318, %1310 ], [ %1355, %1349 ], [ %1392, %1386 ]
  %1397 = phi { i32, i1 } [ %1307, %1310 ], [ %1346, %1349 ], [ %1383, %1386 ]
  %1398 = phi i32 [ %1313, %1310 ], [ %1354, %1349 ], [ %1391, %1386 ]
  %1399 = phi i16 [ %1317, %1310 ], [ 0, %1349 ], [ 0, %1386 ]
  %1400 = extractvalue { i32, i1 } %1397, 0
  %1401 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1256, i32 %1398), !nosanitize !47
  %1402 = extractvalue { i32, i1 } %1401, 1, !nosanitize !47
  br i1 %1402, label %1403, label %1404, !prof !48, !nosanitize !47

1403:                                             ; preds = %1393
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1404:                                             ; preds = %1393
  %1405 = extractvalue { i32, i1 } %1401, 0, !nosanitize !47
  %1406 = icmp ugt i32 %1405, %1173
  br i1 %1406, label %1426, label %1407

1407:                                             ; preds = %1404
  %1408 = freeze i32 %1191
  %1409 = icmp eq i32 %1408, -1
  br i1 %1409, label %1440, label %1410, !prof !82, !nosanitize !47

1410:                                             ; preds = %1407
  %1411 = zext i32 %1408 to i64
  %1412 = add nsw i32 %1398, -1
  %1413 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %1412, 0
  %1414 = and i64 %1411, 1
  %1415 = icmp eq i64 %1414, 0
  br i1 %1415, label %1416, label %1422, !prof !82

1416:                                             ; preds = %1410
  %1417 = or disjoint i64 %1411, 1
  %1418 = trunc nuw i64 %1417 to i32
  store i32 %1418, ptr %60, align 4, !tbaa !76
  %1419 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1411
  store i16 %1399, ptr %1419, align 2, !tbaa !77
  %1420 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1412, i32 1), !nosanitize !47
  %1421 = extractvalue { i32, i1 } %1420, 1, !nosanitize !47
  br i1 %1421, label %1429, label %1422, !prof !86, !llvm.loop !87, !nosanitize !47

1422:                                             ; preds = %1416, %1410
  %1423 = phi { i32, i1 } [ %1413, %1410 ], [ %1420, %1416 ]
  %1424 = phi i64 [ %1411, %1410 ], [ %1417, %1416 ]
  %1425 = icmp eq i32 %1408, -2
  br i1 %1425, label %1440, label %1441, !prof !82

1426:                                             ; preds = %1404
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

1427:                                             ; preds = %1430, %1441
  %1428 = phi i32 [ %1433, %1430 ], [ %1446, %1441 ]
  store i32 %1428, ptr %60, align 4, !tbaa !76
  br label %1429

1429:                                             ; preds = %1427, %1416
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1430:                                             ; preds = %1441
  %1431 = extractvalue { i32, i1 } %1448, 0
  %1432 = add nuw nsw i64 %1443, 2
  %1433 = trunc i64 %1432 to i32
  %1434 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1445
  store i16 %1399, ptr %1434, align 2, !tbaa !77
  %1435 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1431, i32 1), !nosanitize !47
  %1436 = extractvalue { i32, i1 } %1435, 1, !nosanitize !47
  br i1 %1436, label %1427, label %1437, !prof !86, !llvm.loop !87, !nosanitize !47

1437:                                             ; preds = %1430
  %1438 = icmp eq i64 %1432, 4294967295
  br i1 %1438, label %1439, label %1441, !prof !86, !llvm.loop !88, !nosanitize !47

1439:                                             ; preds = %1437
  store i32 %1433, ptr %60, align 4, !tbaa !76
  br label %1440

1440:                                             ; preds = %1439, %1422, %1407
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1441:                                             ; preds = %1422, %1437
  %1442 = phi { i32, i1 } [ %1435, %1437 ], [ %1423, %1422 ]
  %1443 = phi i64 [ %1432, %1437 ], [ %1424, %1422 ]
  %1444 = extractvalue { i32, i1 } %1442, 0
  %1445 = add nuw nsw i64 %1443, 1
  %1446 = trunc i64 %1445 to i32
  %1447 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1443
  store i16 %1399, ptr %1447, align 2, !tbaa !77
  %1448 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1444, i32 1), !nosanitize !47
  %1449 = extractvalue { i32, i1 } %1448, 1, !nosanitize !47
  br i1 %1449, label %1427, label %1430, !prof !86, !llvm.loop !87, !nosanitize !47

1450:                                             ; preds = %1252
  %1451 = add nuw nsw i64 %1190, 1
  %1452 = trunc i64 %1451 to i32
  store i32 %1452, ptr %60, align 4, !tbaa !76
  %1453 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1190
  store i16 %1243, ptr %1453, align 2, !tbaa !77
  %1454 = icmp eq i64 %1451, %1176
  br i1 %1454, label %1455, label %1185

1455:                                             ; preds = %1450, %1172
  %1456 = phi i32 [ %1166, %1172 ], [ %1249, %1450 ]
  %1457 = phi i64 [ %1165, %1172 ], [ %1247, %1450 ]
  %1458 = phi i32 [ %1164, %1172 ], [ %1236, %1450 ]
  %1459 = phi ptr [ %1163, %1172 ], [ %1235, %1450 ]
  %1460 = load i16, ptr %68, align 8, !tbaa !77
  %1461 = icmp eq i16 %1460, 0
  br i1 %1461, label %1462, label %1463

1462:                                             ; preds = %1455
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

1463:                                             ; preds = %1455
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !81
  %1464 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1168, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #13
  %1465 = icmp eq i32 %1464, 0
  br i1 %1465, label %1467, label %1466

1466:                                             ; preds = %1463
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

1467:                                             ; preds = %1463
  %1468 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1468, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !90
  %1469 = load i32, ptr %57, align 4, !tbaa !73
  %1470 = zext i32 %1469 to i64
  %1471 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1470
  %1472 = load i32, ptr %58, align 8, !tbaa !74
  %1473 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1471, i32 noundef %1472, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #13
  %1474 = icmp eq i32 %1473, 0
  br i1 %1474, label %1476, label %1475

1475:                                             ; preds = %1467
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

1476:                                             ; preds = %1467
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2493, label %1477

1477:                                             ; preds = %1476, %88
  %1478 = phi ptr [ %1459, %1476 ], [ %90, %88 ]
  %1479 = phi i32 [ %1458, %1476 ], [ %92, %88 ]
  %1480 = phi i64 [ %1457, %1476 ], [ %94, %88 ]
  %1481 = phi i32 [ %1456, %1476 ], [ %95, %88 ]
  %1482 = phi i32 [ 0, %1476 ], [ %97, %88 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1483

1483:                                             ; preds = %88, %1477
  %1484 = phi ptr [ %1478, %1477 ], [ %90, %88 ]
  %1485 = phi i32 [ %1479, %1477 ], [ %92, %88 ]
  %1486 = phi i64 [ %1480, %1477 ], [ %94, %88 ]
  %1487 = phi i32 [ %1481, %1477 ], [ %95, %88 ]
  %1488 = phi i32 [ %1482, %1477 ], [ %97, %88 ]
  %1489 = icmp ugt i32 %1485, 5
  %1490 = icmp ugt i32 %93, 257
  %1491 = select i1 %1489, i1 %1490, i1 false
  br i1 %1491, label %1492, label %1502

1492:                                             ; preds = %1483
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %1484, ptr %0, align 8, !tbaa !50
  store i32 %1485, ptr %43, align 8, !tbaa !51
  store i64 %1486, ptr %45, align 8, !tbaa !31
  store i32 %1487, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %96) #13
  %1493 = load ptr, ptr %26, align 8, !tbaa !49
  %1494 = load i32, ptr %41, align 8, !tbaa !52
  %1495 = load ptr, ptr %0, align 8, !tbaa !50
  %1496 = load i32, ptr %43, align 8, !tbaa !51
  %1497 = load i64, ptr %45, align 8, !tbaa !31
  %1498 = load i32, ptr %47, align 8, !tbaa !32
  %1499 = load i32, ptr %21, align 8, !tbaa !20
  %1500 = icmp eq i32 %1499, 16191
  br i1 %1500, label %1501, label %2359

1501:                                             ; preds = %1492
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2359

1502:                                             ; preds = %1483
  store i32 0, ptr %71, align 4, !tbaa !37
  %1503 = load i32, ptr %66, align 8, !tbaa !81
  %1504 = shl nsw i32 -1, %1503
  %1505 = xor i32 %1504, -1
  %1506 = load ptr, ptr %65, align 8, !tbaa !35
  %1507 = trunc i64 %1486 to i32
  %1508 = and i32 %1505, %1507
  %1509 = zext nneg i32 %1508 to i64
  %1510 = getelementptr inbounds nuw [4 x i8], ptr %1506, i64 %1509
  %1511 = getelementptr inbounds nuw i8, ptr %1510, i64 1
  %1512 = load i8, ptr %1511, align 1, !tbaa !44
  %1513 = zext i8 %1512 to i32
  %1514 = icmp ult i32 %1487, %1513
  br i1 %1514, label %1515, label %1548

1515:                                             ; preds = %1502
  %1516 = icmp eq i32 %1485, 0
  br i1 %1516, label %2453, label %1517

1517:                                             ; preds = %1515
  %1518 = zext nneg i32 %1487 to i64
  br label %1521

1519:                                             ; preds = %1532
  %1520 = icmp eq i32 %1535, 0
  br i1 %1520, label %2453, label %1521

1521:                                             ; preds = %1517, %1519
  %1522 = phi ptr [ %1484, %1517 ], [ %1534, %1519 ]
  %1523 = phi i32 [ %1485, %1517 ], [ %1535, %1519 ]
  %1524 = phi i64 [ %1486, %1517 ], [ %1533, %1519 ]
  %1525 = phi i64 [ %1518, %1517 ], [ %1536, %1519 ]
  %1526 = load i8, ptr %1522, align 1, !tbaa !44
  %1527 = zext i8 %1526 to i64
  %1528 = shl i64 %1527, %1525
  %1529 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1524, i64 %1528), !nosanitize !47
  %1530 = extractvalue { i64, i1 } %1529, 1, !nosanitize !47
  br i1 %1530, label %1531, label %1532, !prof !48, !nosanitize !47

1531:                                             ; preds = %1521
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1532:                                             ; preds = %1521
  %1533 = extractvalue { i64, i1 } %1529, 0, !nosanitize !47
  %1534 = getelementptr inbounds nuw i8, ptr %1522, i64 1
  %1535 = add i32 %1523, -1
  %1536 = add nuw nsw i64 %1525, 8
  %1537 = trunc i64 %1533 to i32
  %1538 = and i32 %1505, %1537
  %1539 = zext nneg i32 %1538 to i64
  %1540 = getelementptr inbounds nuw [4 x i8], ptr %1506, i64 %1539
  %1541 = getelementptr inbounds nuw i8, ptr %1540, i64 1
  %1542 = load i8, ptr %1541, align 1, !tbaa !44
  %1543 = zext i8 %1542 to i64
  %1544 = icmp samesign ult i64 %1536, %1543
  br i1 %1544, label %1519, label %1545

1545:                                             ; preds = %1532
  %1546 = zext i8 %1542 to i32
  %1547 = trunc nuw nsw i64 %1536 to i32
  br label %1548

1548:                                             ; preds = %1545, %1502
  %1549 = phi ptr [ %1510, %1502 ], [ %1540, %1545 ]
  %1550 = phi ptr [ %1484, %1502 ], [ %1534, %1545 ]
  %1551 = phi i32 [ %1485, %1502 ], [ %1535, %1545 ]
  %1552 = phi i64 [ %1486, %1502 ], [ %1533, %1545 ]
  %1553 = phi i32 [ %1487, %1502 ], [ %1547, %1545 ]
  %1554 = phi i8 [ %1512, %1502 ], [ %1542, %1545 ]
  %1555 = phi i32 [ %1513, %1502 ], [ %1546, %1545 ]
  %1556 = getelementptr inbounds nuw i8, ptr %1549, i64 2
  %1557 = load i16, ptr %1556, align 2, !tbaa !77
  %1558 = load i8, ptr %1549, align 2, !tbaa !44
  %1559 = add i8 %1558, -1
  %1560 = icmp ult i8 %1559, 15
  br i1 %1560, label %1561, label %1627

1561:                                             ; preds = %1548
  %1562 = zext nneg i8 %1558 to i32
  %1563 = add nuw nsw i32 %1555, %1562
  %1564 = shl nsw i32 -1, %1563
  %1565 = xor i32 %1564, -1
  %1566 = zext i16 %1557 to i32
  %1567 = trunc i64 %1552 to i32
  %1568 = and i32 %1567, %1565
  %1569 = lshr i32 %1568, %1555
  %1570 = add nuw i32 %1569, %1566
  %1571 = zext i32 %1570 to i64
  %1572 = getelementptr inbounds nuw [4 x i8], ptr %1506, i64 %1571
  %1573 = getelementptr inbounds nuw i8, ptr %1572, i64 1
  %1574 = load i8, ptr %1573, align 1, !tbaa !44
  %1575 = zext i8 %1574 to i32
  %1576 = add nuw nsw i32 %1555, %1575
  %1577 = icmp ugt i32 %1576, %1553
  br i1 %1577, label %1578, label %1614

1578:                                             ; preds = %1561
  %1579 = icmp eq i32 %1551, 0
  br i1 %1579, label %2447, label %1580

1580:                                             ; preds = %1578
  %1581 = zext nneg i32 %1553 to i64
  br label %1584

1582:                                             ; preds = %1595
  %1583 = icmp eq i32 %1598, 0
  br i1 %1583, label %2447, label %1584

1584:                                             ; preds = %1580, %1582
  %1585 = phi ptr [ %1550, %1580 ], [ %1597, %1582 ]
  %1586 = phi i32 [ %1551, %1580 ], [ %1598, %1582 ]
  %1587 = phi i64 [ %1552, %1580 ], [ %1596, %1582 ]
  %1588 = phi i64 [ %1581, %1580 ], [ %1599, %1582 ]
  %1589 = load i8, ptr %1585, align 1, !tbaa !44
  %1590 = zext i8 %1589 to i64
  %1591 = shl i64 %1590, %1588
  %1592 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1587, i64 %1591), !nosanitize !47
  %1593 = extractvalue { i64, i1 } %1592, 1, !nosanitize !47
  br i1 %1593, label %1594, label %1595, !prof !48, !nosanitize !47

1594:                                             ; preds = %1584
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1595:                                             ; preds = %1584
  %1596 = extractvalue { i64, i1 } %1592, 0, !nosanitize !47
  %1597 = getelementptr inbounds nuw i8, ptr %1585, i64 1
  %1598 = add i32 %1586, -1
  %1599 = add nuw nsw i64 %1588, 8
  %1600 = trunc i64 %1596 to i32
  %1601 = and i32 %1600, %1565
  %1602 = lshr i32 %1601, %1555
  %1603 = add nuw i32 %1602, %1566
  %1604 = zext i32 %1603 to i64
  %1605 = getelementptr inbounds nuw [4 x i8], ptr %1506, i64 %1604
  %1606 = getelementptr inbounds nuw i8, ptr %1605, i64 1
  %1607 = load i8, ptr %1606, align 1, !tbaa !44
  %1608 = zext i8 %1607 to i32
  %1609 = add nuw nsw i32 %1555, %1608
  %1610 = zext nneg i32 %1609 to i64
  %1611 = icmp samesign ult i64 %1599, %1610
  br i1 %1611, label %1582, label %1612

1612:                                             ; preds = %1595
  %1613 = trunc nuw nsw i64 %1599 to i32
  br label %1614

1614:                                             ; preds = %1612, %1561
  %1615 = phi ptr [ %1550, %1561 ], [ %1597, %1612 ]
  %1616 = phi i32 [ %1551, %1561 ], [ %1598, %1612 ]
  %1617 = phi i64 [ %1552, %1561 ], [ %1596, %1612 ]
  %1618 = phi i32 [ %1553, %1561 ], [ %1613, %1612 ]
  %1619 = phi ptr [ %1572, %1561 ], [ %1605, %1612 ]
  %1620 = phi i8 [ %1574, %1561 ], [ %1607, %1612 ]
  %1621 = getelementptr inbounds nuw i8, ptr %1619, i64 2
  %1622 = load i16, ptr %1621, align 2, !tbaa !77
  %1623 = load i8, ptr %1619, align 2, !tbaa !44
  %1624 = sub nuw i32 %1618, %1555
  %1625 = zext nneg i8 %1554 to i64
  %1626 = lshr i64 %1617, %1625
  store i32 %1555, ptr %71, align 4, !tbaa !37
  br label %1627

1627:                                             ; preds = %1548, %1614
  %1628 = phi i32 [ %1555, %1614 ], [ 0, %1548 ]
  %1629 = phi ptr [ %1615, %1614 ], [ %1550, %1548 ]
  %1630 = phi i32 [ %1616, %1614 ], [ %1551, %1548 ]
  %1631 = phi i64 [ %1626, %1614 ], [ %1552, %1548 ]
  %1632 = phi i32 [ %1624, %1614 ], [ %1553, %1548 ]
  %1633 = phi i16 [ %1622, %1614 ], [ %1557, %1548 ]
  %1634 = phi i8 [ %1620, %1614 ], [ %1554, %1548 ]
  %1635 = phi i8 [ %1623, %1614 ], [ %1558, %1548 ]
  %1636 = zext i8 %1634 to i32
  %1637 = zext nneg i8 %1634 to i64
  %1638 = lshr i64 %1631, %1637
  %1639 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1632, i32 %1636), !nosanitize !47
  %1640 = extractvalue { i32, i1 } %1639, 0, !nosanitize !47
  %1641 = extractvalue { i32, i1 } %1639, 1, !nosanitize !47
  br i1 %1641, label %1642, label %1643, !prof !48, !nosanitize !47

1642:                                             ; preds = %1627
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1643:                                             ; preds = %1627
  %1644 = add nuw nsw i32 %1628, %1636
  store i32 %1644, ptr %71, align 4, !tbaa !37
  %1645 = zext i16 %1633 to i32
  store i32 %1645, ptr %56, align 4, !tbaa !61
  %1646 = zext i8 %1635 to i32
  %1647 = icmp eq i8 %1635, 0
  br i1 %1647, label %1648, label %1649

1648:                                             ; preds = %1643
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2359

1649:                                             ; preds = %1643
  %1650 = and i32 %1646, 32
  %1651 = icmp eq i32 %1650, 0
  br i1 %1651, label %1653, label %1652

1652:                                             ; preds = %1649
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2359

1653:                                             ; preds = %1649
  %1654 = and i32 %1646, 64
  %1655 = icmp eq i32 %1654, 0
  br i1 %1655, label %1657, label %1656

1656:                                             ; preds = %1653
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

1657:                                             ; preds = %1653
  %1658 = and i32 %1646, 15
  store i32 %1658, ptr %72, align 4, !tbaa !53
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1659

1659:                                             ; preds = %101, %1657
  %1660 = phi i32 [ %1658, %1657 ], [ %102, %101 ]
  %1661 = phi ptr [ %1629, %1657 ], [ %90, %101 ]
  %1662 = phi i32 [ %1630, %1657 ], [ %92, %101 ]
  %1663 = phi i64 [ %1638, %1657 ], [ %94, %101 ]
  %1664 = phi i32 [ %1640, %1657 ], [ %95, %101 ]
  %1665 = phi i32 [ %1488, %1657 ], [ %97, %101 ]
  %1666 = icmp eq i32 %1660, 0
  br i1 %1666, label %1724, label %1667

1667:                                             ; preds = %1659
  %1668 = icmp ult i32 %1664, %1660
  br i1 %1668, label %1669, label %1696

1669:                                             ; preds = %1667
  %1670 = icmp eq i32 %1662, 0
  br i1 %1670, label %2441, label %1671

1671:                                             ; preds = %1669
  %1672 = zext i32 %1664 to i64
  br label %1675

1673:                                             ; preds = %1692
  %1674 = icmp eq i32 %1680, 0
  br i1 %1674, label %2441, label %1675, !llvm.loop !91

1675:                                             ; preds = %1671, %1673
  %1676 = phi ptr [ %1661, %1671 ], [ %1681, %1673 ]
  %1677 = phi i32 [ %1662, %1671 ], [ %1680, %1673 ]
  %1678 = phi i64 [ %1663, %1671 ], [ %1686, %1673 ]
  %1679 = phi i64 [ %1672, %1671 ], [ %1693, %1673 ]
  %1680 = add i32 %1677, -1
  %1681 = getelementptr inbounds nuw i8, ptr %1676, i64 1
  %1682 = load i8, ptr %1676, align 1, !tbaa !44
  %1683 = zext i8 %1682 to i64
  %1684 = shl i64 %1683, %1679
  %1685 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1678, i64 %1684), !nosanitize !47
  %1686 = extractvalue { i64, i1 } %1685, 0, !nosanitize !47
  %1687 = extractvalue { i64, i1 } %1685, 1, !nosanitize !47
  br i1 %1687, label %1688, label %1689, !prof !48, !nosanitize !47

1688:                                             ; preds = %1675
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1689:                                             ; preds = %1675
  %1690 = icmp samesign ugt i64 %1679, 4294967287
  br i1 %1690, label %1691, label %1692, !prof !48, !nosanitize !47

1691:                                             ; preds = %1689
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1692:                                             ; preds = %1689
  %1693 = add nuw nsw i64 %1679, 8
  %1694 = trunc nuw i64 %1693 to i32
  %1695 = icmp ugt i32 %1660, %1694
  br i1 %1695, label %1673, label %1696, !llvm.loop !91

1696:                                             ; preds = %1692, %1667
  %1697 = phi ptr [ %1661, %1667 ], [ %1681, %1692 ]
  %1698 = phi i32 [ %1662, %1667 ], [ %1680, %1692 ]
  %1699 = phi i64 [ %1663, %1667 ], [ %1686, %1692 ]
  %1700 = phi i32 [ %1664, %1667 ], [ %1694, %1692 ]
  %1701 = shl nsw i32 -1, %1660
  %1702 = xor i32 %1701, -1
  %1703 = trunc i64 %1699 to i32
  %1704 = and i32 %1703, %1702
  %1705 = load i32, ptr %56, align 4, !tbaa !61
  %1706 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1705, i32 %1704), !nosanitize !47
  %1707 = extractvalue { i32, i1 } %1706, 1, !nosanitize !47
  br i1 %1707, label %1708, label %1709, !prof !48, !nosanitize !47

1708:                                             ; preds = %1696
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1709:                                             ; preds = %1696
  %1710 = extractvalue { i32, i1 } %1706, 0, !nosanitize !47
  store i32 %1710, ptr %56, align 4, !tbaa !61
  %1711 = zext nneg i32 %1660 to i64
  %1712 = lshr i64 %1699, %1711
  %1713 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1700, i32 %1660), !nosanitize !47
  %1714 = extractvalue { i32, i1 } %1713, 0, !nosanitize !47
  %1715 = extractvalue { i32, i1 } %1713, 1, !nosanitize !47
  br i1 %1715, label %1716, label %1717, !prof !48, !nosanitize !47

1716:                                             ; preds = %1709
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1717:                                             ; preds = %1709
  %1718 = load i32, ptr %71, align 4, !tbaa !37
  %1719 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1718, i32 %1660), !nosanitize !47
  %1720 = extractvalue { i32, i1 } %1719, 1, !nosanitize !47
  br i1 %1720, label %1721, label %1722, !prof !48, !nosanitize !47

1721:                                             ; preds = %1717
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1722:                                             ; preds = %1717
  %1723 = extractvalue { i32, i1 } %1719, 0, !nosanitize !47
  store i32 %1723, ptr %71, align 4, !tbaa !37
  br label %1724

1724:                                             ; preds = %1722, %1659
  %1725 = phi ptr [ %1697, %1722 ], [ %1661, %1659 ]
  %1726 = phi i32 [ %1698, %1722 ], [ %1662, %1659 ]
  %1727 = phi i64 [ %1712, %1722 ], [ %1663, %1659 ]
  %1728 = phi i32 [ %1714, %1722 ], [ %1664, %1659 ]
  %1729 = load i32, ptr %56, align 4, !tbaa !61
  store i32 %1729, ptr %73, align 8, !tbaa !92
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1730

1730:                                             ; preds = %88, %1724
  %1731 = phi ptr [ %1725, %1724 ], [ %90, %88 ]
  %1732 = phi i32 [ %1726, %1724 ], [ %92, %88 ]
  %1733 = phi i64 [ %1727, %1724 ], [ %94, %88 ]
  %1734 = phi i32 [ %1728, %1724 ], [ %95, %88 ]
  %1735 = phi i32 [ %1665, %1724 ], [ %97, %88 ]
  %1736 = load i32, ptr %69, align 4, !tbaa !90
  %1737 = shl nsw i32 -1, %1736
  %1738 = xor i32 %1737, -1
  %1739 = load ptr, ptr %64, align 8, !tbaa !34
  %1740 = trunc i64 %1733 to i32
  %1741 = and i32 %1738, %1740
  %1742 = zext nneg i32 %1741 to i64
  %1743 = getelementptr inbounds nuw [4 x i8], ptr %1739, i64 %1742
  %1744 = getelementptr inbounds nuw i8, ptr %1743, i64 1
  %1745 = load i8, ptr %1744, align 1, !tbaa !44
  %1746 = zext i8 %1745 to i32
  %1747 = icmp ult i32 %1734, %1746
  br i1 %1747, label %1748, label %1781

1748:                                             ; preds = %1730
  %1749 = icmp eq i32 %1732, 0
  br i1 %1749, label %2435, label %1750

1750:                                             ; preds = %1748
  %1751 = zext nneg i32 %1734 to i64
  br label %1754

1752:                                             ; preds = %1765
  %1753 = icmp eq i32 %1768, 0
  br i1 %1753, label %2435, label %1754

1754:                                             ; preds = %1750, %1752
  %1755 = phi ptr [ %1731, %1750 ], [ %1767, %1752 ]
  %1756 = phi i32 [ %1732, %1750 ], [ %1768, %1752 ]
  %1757 = phi i64 [ %1733, %1750 ], [ %1766, %1752 ]
  %1758 = phi i64 [ %1751, %1750 ], [ %1769, %1752 ]
  %1759 = load i8, ptr %1755, align 1, !tbaa !44
  %1760 = zext i8 %1759 to i64
  %1761 = shl i64 %1760, %1758
  %1762 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1757, i64 %1761), !nosanitize !47
  %1763 = extractvalue { i64, i1 } %1762, 1, !nosanitize !47
  br i1 %1763, label %1764, label %1765, !prof !48, !nosanitize !47

1764:                                             ; preds = %1754
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1765:                                             ; preds = %1754
  %1766 = extractvalue { i64, i1 } %1762, 0, !nosanitize !47
  %1767 = getelementptr inbounds nuw i8, ptr %1755, i64 1
  %1768 = add i32 %1756, -1
  %1769 = add nuw nsw i64 %1758, 8
  %1770 = trunc i64 %1766 to i32
  %1771 = and i32 %1738, %1770
  %1772 = zext nneg i32 %1771 to i64
  %1773 = getelementptr inbounds nuw [4 x i8], ptr %1739, i64 %1772
  %1774 = getelementptr inbounds nuw i8, ptr %1773, i64 1
  %1775 = load i8, ptr %1774, align 1, !tbaa !44
  %1776 = zext i8 %1775 to i64
  %1777 = icmp samesign ult i64 %1769, %1776
  br i1 %1777, label %1752, label %1778

1778:                                             ; preds = %1765
  %1779 = zext i8 %1775 to i32
  %1780 = trunc nuw nsw i64 %1769 to i32
  br label %1781

1781:                                             ; preds = %1778, %1730
  %1782 = phi ptr [ %1743, %1730 ], [ %1773, %1778 ]
  %1783 = phi ptr [ %1731, %1730 ], [ %1767, %1778 ]
  %1784 = phi i32 [ %1732, %1730 ], [ %1768, %1778 ]
  %1785 = phi i64 [ %1733, %1730 ], [ %1766, %1778 ]
  %1786 = phi i32 [ %1734, %1730 ], [ %1780, %1778 ]
  %1787 = phi i8 [ %1745, %1730 ], [ %1775, %1778 ]
  %1788 = phi i32 [ %1746, %1730 ], [ %1779, %1778 ]
  %1789 = getelementptr inbounds nuw i8, ptr %1782, i64 2
  %1790 = load i16, ptr %1789, align 2, !tbaa !77
  %1791 = load i8, ptr %1782, align 2, !tbaa !44
  %1792 = icmp ult i8 %1791, 16
  br i1 %1792, label %1793, label %1861

1793:                                             ; preds = %1781
  %1794 = zext nneg i8 %1791 to i32
  %1795 = add nuw nsw i32 %1788, %1794
  %1796 = shl nsw i32 -1, %1795
  %1797 = xor i32 %1796, -1
  %1798 = zext i16 %1790 to i32
  %1799 = trunc i64 %1785 to i32
  %1800 = and i32 %1799, %1797
  %1801 = lshr i32 %1800, %1788
  %1802 = add nuw i32 %1801, %1798
  %1803 = zext i32 %1802 to i64
  %1804 = getelementptr inbounds nuw [4 x i8], ptr %1739, i64 %1803
  %1805 = getelementptr inbounds nuw i8, ptr %1804, i64 1
  %1806 = load i8, ptr %1805, align 1, !tbaa !44
  %1807 = zext i8 %1806 to i32
  %1808 = add nuw nsw i32 %1788, %1807
  %1809 = icmp ugt i32 %1808, %1786
  br i1 %1809, label %1810, label %1846

1810:                                             ; preds = %1793
  %1811 = icmp eq i32 %1784, 0
  br i1 %1811, label %2429, label %1812

1812:                                             ; preds = %1810
  %1813 = zext nneg i32 %1786 to i64
  br label %1816

1814:                                             ; preds = %1827
  %1815 = icmp eq i32 %1830, 0
  br i1 %1815, label %2429, label %1816

1816:                                             ; preds = %1812, %1814
  %1817 = phi ptr [ %1783, %1812 ], [ %1829, %1814 ]
  %1818 = phi i32 [ %1784, %1812 ], [ %1830, %1814 ]
  %1819 = phi i64 [ %1785, %1812 ], [ %1828, %1814 ]
  %1820 = phi i64 [ %1813, %1812 ], [ %1831, %1814 ]
  %1821 = load i8, ptr %1817, align 1, !tbaa !44
  %1822 = zext i8 %1821 to i64
  %1823 = shl i64 %1822, %1820
  %1824 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1819, i64 %1823), !nosanitize !47
  %1825 = extractvalue { i64, i1 } %1824, 1, !nosanitize !47
  br i1 %1825, label %1826, label %1827, !prof !48, !nosanitize !47

1826:                                             ; preds = %1816
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1827:                                             ; preds = %1816
  %1828 = extractvalue { i64, i1 } %1824, 0, !nosanitize !47
  %1829 = getelementptr inbounds nuw i8, ptr %1817, i64 1
  %1830 = add i32 %1818, -1
  %1831 = add nuw nsw i64 %1820, 8
  %1832 = trunc i64 %1828 to i32
  %1833 = and i32 %1832, %1797
  %1834 = lshr i32 %1833, %1788
  %1835 = add nuw i32 %1834, %1798
  %1836 = zext i32 %1835 to i64
  %1837 = getelementptr inbounds nuw [4 x i8], ptr %1739, i64 %1836
  %1838 = getelementptr inbounds nuw i8, ptr %1837, i64 1
  %1839 = load i8, ptr %1838, align 1, !tbaa !44
  %1840 = zext i8 %1839 to i32
  %1841 = add nuw nsw i32 %1788, %1840
  %1842 = zext nneg i32 %1841 to i64
  %1843 = icmp samesign ult i64 %1831, %1842
  br i1 %1843, label %1814, label %1844

1844:                                             ; preds = %1827
  %1845 = trunc nuw nsw i64 %1831 to i32
  br label %1846

1846:                                             ; preds = %1844, %1793
  %1847 = phi ptr [ %1783, %1793 ], [ %1829, %1844 ]
  %1848 = phi i32 [ %1784, %1793 ], [ %1830, %1844 ]
  %1849 = phi i64 [ %1785, %1793 ], [ %1828, %1844 ]
  %1850 = phi i32 [ %1786, %1793 ], [ %1845, %1844 ]
  %1851 = phi ptr [ %1804, %1793 ], [ %1837, %1844 ]
  %1852 = phi i8 [ %1806, %1793 ], [ %1839, %1844 ]
  %1853 = getelementptr inbounds nuw i8, ptr %1851, i64 2
  %1854 = load i16, ptr %1853, align 2, !tbaa !77
  %1855 = load i8, ptr %1851, align 2, !tbaa !44
  %1856 = sub nuw i32 %1850, %1788
  %1857 = zext nneg i8 %1787 to i64
  %1858 = lshr i64 %1849, %1857
  %1859 = load i32, ptr %71, align 4, !tbaa !37
  %1860 = add nsw i32 %1859, %1788
  store i32 %1860, ptr %71, align 4, !tbaa !37
  br label %1861

1861:                                             ; preds = %1781, %1846
  %1862 = phi ptr [ %1847, %1846 ], [ %1783, %1781 ]
  %1863 = phi i32 [ %1848, %1846 ], [ %1784, %1781 ]
  %1864 = phi i64 [ %1858, %1846 ], [ %1785, %1781 ]
  %1865 = phi i32 [ %1856, %1846 ], [ %1786, %1781 ]
  %1866 = phi i16 [ %1854, %1846 ], [ %1790, %1781 ]
  %1867 = phi i8 [ %1852, %1846 ], [ %1787, %1781 ]
  %1868 = phi i8 [ %1855, %1846 ], [ %1791, %1781 ]
  %1869 = zext i8 %1867 to i32
  %1870 = zext nneg i8 %1867 to i64
  %1871 = lshr i64 %1864, %1870
  %1872 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1865, i32 %1869), !nosanitize !47
  %1873 = extractvalue { i32, i1 } %1872, 0, !nosanitize !47
  %1874 = extractvalue { i32, i1 } %1872, 1, !nosanitize !47
  br i1 %1874, label %1875, label %1876, !prof !48, !nosanitize !47

1875:                                             ; preds = %1861
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1876:                                             ; preds = %1861
  %1877 = load i32, ptr %71, align 4, !tbaa !37
  %1878 = add nsw i32 %1877, %1869
  store i32 %1878, ptr %71, align 4, !tbaa !37
  %1879 = zext i8 %1868 to i32
  %1880 = and i32 %1879, 64
  %1881 = icmp eq i32 %1880, 0
  br i1 %1881, label %1883, label %1882

1882:                                             ; preds = %1876
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

1883:                                             ; preds = %1876
  %1884 = zext i16 %1866 to i32
  store i32 %1884, ptr %74, align 8, !tbaa !93
  %1885 = and i32 %1879, 15
  store i32 %1885, ptr %72, align 4, !tbaa !53
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1886

1886:                                             ; preds = %99, %1883
  %1887 = phi i32 [ %1885, %1883 ], [ %100, %99 ]
  %1888 = phi ptr [ %1862, %1883 ], [ %90, %99 ]
  %1889 = phi i32 [ %1863, %1883 ], [ %92, %99 ]
  %1890 = phi i64 [ %1871, %1883 ], [ %94, %99 ]
  %1891 = phi i32 [ %1873, %1883 ], [ %95, %99 ]
  %1892 = phi i32 [ %1735, %1883 ], [ %97, %99 ]
  %1893 = icmp eq i32 %1887, 0
  br i1 %1893, label %1951, label %1894

1894:                                             ; preds = %1886
  %1895 = icmp ult i32 %1891, %1887
  br i1 %1895, label %1896, label %1923

1896:                                             ; preds = %1894
  %1897 = icmp eq i32 %1889, 0
  br i1 %1897, label %2423, label %1898

1898:                                             ; preds = %1896
  %1899 = zext i32 %1891 to i64
  br label %1902

1900:                                             ; preds = %1919
  %1901 = icmp eq i32 %1907, 0
  br i1 %1901, label %2423, label %1902, !llvm.loop !94

1902:                                             ; preds = %1898, %1900
  %1903 = phi ptr [ %1888, %1898 ], [ %1908, %1900 ]
  %1904 = phi i32 [ %1889, %1898 ], [ %1907, %1900 ]
  %1905 = phi i64 [ %1890, %1898 ], [ %1913, %1900 ]
  %1906 = phi i64 [ %1899, %1898 ], [ %1920, %1900 ]
  %1907 = add i32 %1904, -1
  %1908 = getelementptr inbounds nuw i8, ptr %1903, i64 1
  %1909 = load i8, ptr %1903, align 1, !tbaa !44
  %1910 = zext i8 %1909 to i64
  %1911 = shl i64 %1910, %1906
  %1912 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1905, i64 %1911), !nosanitize !47
  %1913 = extractvalue { i64, i1 } %1912, 0, !nosanitize !47
  %1914 = extractvalue { i64, i1 } %1912, 1, !nosanitize !47
  br i1 %1914, label %1915, label %1916, !prof !48, !nosanitize !47

1915:                                             ; preds = %1902
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1916:                                             ; preds = %1902
  %1917 = icmp samesign ugt i64 %1906, 4294967287
  br i1 %1917, label %1918, label %1919, !prof !48, !nosanitize !47

1918:                                             ; preds = %1916
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1919:                                             ; preds = %1916
  %1920 = add nuw nsw i64 %1906, 8
  %1921 = trunc nuw i64 %1920 to i32
  %1922 = icmp ugt i32 %1887, %1921
  br i1 %1922, label %1900, label %1923, !llvm.loop !94

1923:                                             ; preds = %1919, %1894
  %1924 = phi ptr [ %1888, %1894 ], [ %1908, %1919 ]
  %1925 = phi i32 [ %1889, %1894 ], [ %1907, %1919 ]
  %1926 = phi i64 [ %1890, %1894 ], [ %1913, %1919 ]
  %1927 = phi i32 [ %1891, %1894 ], [ %1921, %1919 ]
  %1928 = shl nsw i32 -1, %1887
  %1929 = xor i32 %1928, -1
  %1930 = trunc i64 %1926 to i32
  %1931 = and i32 %1930, %1929
  %1932 = load i32, ptr %74, align 8, !tbaa !93
  %1933 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1932, i32 %1931), !nosanitize !47
  %1934 = extractvalue { i32, i1 } %1933, 1, !nosanitize !47
  br i1 %1934, label %1935, label %1936, !prof !48, !nosanitize !47

1935:                                             ; preds = %1923
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1936:                                             ; preds = %1923
  %1937 = extractvalue { i32, i1 } %1933, 0, !nosanitize !47
  store i32 %1937, ptr %74, align 8, !tbaa !93
  %1938 = zext nneg i32 %1887 to i64
  %1939 = lshr i64 %1926, %1938
  %1940 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1927, i32 %1887), !nosanitize !47
  %1941 = extractvalue { i32, i1 } %1940, 0, !nosanitize !47
  %1942 = extractvalue { i32, i1 } %1940, 1, !nosanitize !47
  br i1 %1942, label %1943, label %1944, !prof !48, !nosanitize !47

1943:                                             ; preds = %1936
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1944:                                             ; preds = %1936
  %1945 = load i32, ptr %71, align 4, !tbaa !37
  %1946 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1945, i32 %1887), !nosanitize !47
  %1947 = extractvalue { i32, i1 } %1946, 1, !nosanitize !47
  br i1 %1947, label %1948, label %1949, !prof !48, !nosanitize !47

1948:                                             ; preds = %1944
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1949:                                             ; preds = %1944
  %1950 = extractvalue { i32, i1 } %1946, 0, !nosanitize !47
  store i32 %1950, ptr %71, align 4, !tbaa !37
  br label %1951

1951:                                             ; preds = %1949, %1886
  %1952 = phi ptr [ %1924, %1949 ], [ %1888, %1886 ]
  %1953 = phi i32 [ %1925, %1949 ], [ %1889, %1886 ]
  %1954 = phi i64 [ %1939, %1949 ], [ %1890, %1886 ]
  %1955 = phi i32 [ %1941, %1949 ], [ %1891, %1886 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1956

1956:                                             ; preds = %88, %1951
  %1957 = phi ptr [ %1952, %1951 ], [ %90, %88 ]
  %1958 = phi i32 [ %1953, %1951 ], [ %92, %88 ]
  %1959 = phi i64 [ %1954, %1951 ], [ %94, %88 ]
  %1960 = phi i32 [ %1955, %1951 ], [ %95, %88 ]
  %1961 = phi i32 [ %1892, %1951 ], [ %97, %88 ]
  %1962 = icmp eq i32 %93, 0
  br i1 %1962, label %2493, label %1963

1963:                                             ; preds = %1956
  %1964 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %1965 = extractvalue { i32, i1 } %1964, 0, !nosanitize !47
  %1966 = extractvalue { i32, i1 } %1964, 1, !nosanitize !47
  br i1 %1966, label %1967, label %1968, !prof !48, !nosanitize !47

1967:                                             ; preds = %1963
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1968:                                             ; preds = %1963
  %1969 = load i32, ptr %74, align 8, !tbaa !93
  %1970 = icmp ugt i32 %1969, %1965
  br i1 %1970, label %1971, label %2000

1971:                                             ; preds = %1968
  %1972 = sub nuw i32 %1969, %1965
  %1973 = load i32, ptr %75, align 8, !tbaa !39
  %1974 = icmp ugt i32 %1972, %1973
  br i1 %1974, label %1975, label %1979

1975:                                             ; preds = %1971
  %1976 = load i32, ptr %76, align 8, !tbaa !36
  %1977 = icmp eq i32 %1976, 0
  br i1 %1977, label %1979, label %1978

1978:                                             ; preds = %1975
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

1979:                                             ; preds = %1975, %1971
  %1980 = load i32, ptr %77, align 4, !tbaa !40
  %1981 = icmp ugt i32 %1972, %1980
  br i1 %1981, label %1982, label %1990

1982:                                             ; preds = %1979
  %1983 = sub nuw i32 %1972, %1980
  %1984 = load i32, ptr %79, align 4, !tbaa !38
  %1985 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1984, i32 %1983), !nosanitize !47
  %1986 = extractvalue { i32, i1 } %1985, 1, !nosanitize !47
  br i1 %1986, label %1987, label %1988, !prof !48, !nosanitize !47

1987:                                             ; preds = %1982
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1988:                                             ; preds = %1982
  %1989 = extractvalue { i32, i1 } %1985, 0, !nosanitize !47
  br label %1992

1990:                                             ; preds = %1979
  %1991 = sub nuw i32 %1980, %1972
  br label %1992

1992:                                             ; preds = %1990, %1988
  %1993 = phi i32 [ %1991, %1990 ], [ %1989, %1988 ]
  %1994 = phi i32 [ %1972, %1990 ], [ %1983, %1988 ]
  %1995 = load ptr, ptr %78, align 8, !tbaa !41
  %1996 = zext i32 %1993 to i64
  %1997 = getelementptr inbounds nuw i8, ptr %1995, i64 %1996
  %1998 = load i32, ptr %56, align 4, !tbaa !61
  %1999 = call i32 @llvm.umin.i32(i32 %1994, i32 %1998)
  br label %2005

2000:                                             ; preds = %1968
  %2001 = zext i32 %1969 to i64
  %2002 = sub nsw i64 0, %2001
  %2003 = getelementptr inbounds i8, ptr %91, i64 %2002
  %2004 = load i32, ptr %56, align 4, !tbaa !61
  br label %2005

2005:                                             ; preds = %1992, %2000
  %2006 = phi i32 [ %2004, %2000 ], [ %1998, %1992 ]
  %2007 = phi i32 [ %2004, %2000 ], [ %1999, %1992 ]
  %2008 = phi ptr [ %2003, %2000 ], [ %1997, %1992 ]
  %2009 = ptrtoaddr ptr %2008 to i64
  %2010 = call i32 @llvm.umin.i32(i32 %2007, i32 %93)
  %2011 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %2010), !nosanitize !47
  %2012 = extractvalue { i32, i1 } %2011, 0, !nosanitize !47
  %2013 = extractvalue { i32, i1 } %2011, 1, !nosanitize !47
  br i1 %2013, label %2014, label %2015, !prof !48, !nosanitize !47

2014:                                             ; preds = %2005
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2015:                                             ; preds = %2005
  %2016 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2006, i32 %2010), !nosanitize !47
  %2017 = extractvalue { i32, i1 } %2016, 1, !nosanitize !47
  br i1 %2017, label %2018, label %2019, !prof !48, !nosanitize !47

2018:                                             ; preds = %2015
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2019:                                             ; preds = %2015
  %2020 = extractvalue { i32, i1 } %2016, 0, !nosanitize !47
  store i32 %2020, ptr %56, align 4, !tbaa !61
  %2021 = icmp eq i32 %2010, 0
  br i1 %2021, label %2092, label %2022, !prof !48, !nosanitize !47

2022:                                             ; preds = %2019
  %2023 = call i32 @llvm.umin.i32(i32 %2007, i32 %93)
  %2024 = zext i32 %2023 to i64
  %2025 = icmp ult i32 %2023, 4
  %2026 = sub i64 %98, %2009
  %2027 = icmp ult i64 %2026, 32
  %2028 = select i1 %2025, i1 true, i1 %2027
  br i1 %2028, label %2068, label %2029

2029:                                             ; preds = %2022
  %2030 = icmp ult i32 %2023, 32
  br i1 %2030, label %2052, label %2031

2031:                                             ; preds = %2029
  %2032 = and i64 %2024, 28
  %2033 = and i64 %2024, 4294967264
  %2034 = getelementptr i8, ptr %91, i64 %2033
  %2035 = trunc nuw i64 %2033 to i32
  %2036 = sub i32 %2010, %2035
  %2037 = getelementptr i8, ptr %2008, i64 %2033
  br label %2038

2038:                                             ; preds = %2038, %2031
  %2039 = phi i64 [ 0, %2031 ], [ %2046, %2038 ]
  %2040 = getelementptr i8, ptr %91, i64 %2039
  %2041 = getelementptr i8, ptr %2008, i64 %2039
  %2042 = getelementptr i8, ptr %2041, i64 16
  %2043 = load <16 x i8>, ptr %2041, align 1, !tbaa !44
  %2044 = load <16 x i8>, ptr %2042, align 1, !tbaa !44
  %2045 = getelementptr i8, ptr %2040, i64 16
  store <16 x i8> %2043, ptr %2040, align 1, !tbaa !44
  store <16 x i8> %2044, ptr %2045, align 1, !tbaa !44
  %2046 = add nuw i64 %2039, 32
  %2047 = icmp eq i64 %2046, %2033
  br i1 %2047, label %2048, label %2038, !llvm.loop !95

2048:                                             ; preds = %2038
  %2049 = icmp eq i64 %2033, %2024
  br i1 %2049, label %2124, label %2050

2050:                                             ; preds = %2048
  %2051 = icmp eq i64 %2032, 0
  br i1 %2051, label %2068, label %2052, !prof !98

2052:                                             ; preds = %2029, %2050
  %2053 = phi i64 [ %2033, %2050 ], [ 0, %2029 ]
  %2054 = and i64 %2024, 4294967292
  %2055 = getelementptr i8, ptr %91, i64 %2054
  %2056 = trunc nuw i64 %2054 to i32
  %2057 = sub i32 %2010, %2056
  %2058 = getelementptr i8, ptr %2008, i64 %2054
  br label %2059

2059:                                             ; preds = %2059, %2052
  %2060 = phi i64 [ %2053, %2052 ], [ %2064, %2059 ]
  %2061 = getelementptr i8, ptr %91, i64 %2060
  %2062 = getelementptr i8, ptr %2008, i64 %2060
  %2063 = load <4 x i8>, ptr %2062, align 1, !tbaa !44
  store <4 x i8> %2063, ptr %2061, align 1, !tbaa !44
  %2064 = add nuw i64 %2060, 4
  %2065 = icmp eq i64 %2064, %2054
  br i1 %2065, label %2066, label %2059, !llvm.loop !99

2066:                                             ; preds = %2059
  %2067 = icmp eq i64 %2054, %2024
  br i1 %2067, label %2124, label %2068

2068:                                             ; preds = %2022, %2050, %2066
  %2069 = phi ptr [ %91, %2022 ], [ %2034, %2050 ], [ %2055, %2066 ]
  %2070 = phi i32 [ %2010, %2022 ], [ %2036, %2050 ], [ %2057, %2066 ]
  %2071 = phi ptr [ %2008, %2022 ], [ %2037, %2050 ], [ %2058, %2066 ]
  %2072 = add i32 %2070, -1
  %2073 = and i32 %2070, 7
  %2074 = icmp eq i32 %2073, 0
  br i1 %2074, label %2086, label %2075

2075:                                             ; preds = %2068, %2075
  %2076 = phi ptr [ %2081, %2075 ], [ %2069, %2068 ]
  %2077 = phi i32 [ %2082, %2075 ], [ %2070, %2068 ]
  %2078 = phi ptr [ %2083, %2075 ], [ %2071, %2068 ]
  %2079 = phi i32 [ %2084, %2075 ], [ 0, %2068 ]
  %2080 = load i8, ptr %2078, align 1, !tbaa !44
  store i8 %2080, ptr %2076, align 1, !tbaa !44
  %2081 = getelementptr inbounds nuw i8, ptr %2076, i64 1
  %2082 = add i32 %2077, -1
  %2083 = getelementptr inbounds nuw i8, ptr %2078, i64 1
  %2084 = add i32 %2079, 1
  %2085 = icmp eq i32 %2084, %2073
  br i1 %2085, label %2086, label %2075, !llvm.loop !100

2086:                                             ; preds = %2075, %2068
  %2087 = phi ptr [ poison, %2068 ], [ %2081, %2075 ]
  %2088 = phi ptr [ %2069, %2068 ], [ %2081, %2075 ]
  %2089 = phi i32 [ %2070, %2068 ], [ %2082, %2075 ]
  %2090 = phi ptr [ %2071, %2068 ], [ %2083, %2075 ]
  %2091 = icmp ult i32 %2072, 7
  br i1 %2091, label %2124, label %2094

2092:                                             ; preds = %2019
  %2093 = load i8, ptr %2008, align 1, !tbaa !44
  store i8 %2093, ptr %91, align 1, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2094:                                             ; preds = %2086, %2094
  %2095 = phi ptr [ %2120, %2094 ], [ %2088, %2086 ]
  %2096 = phi i32 [ %2121, %2094 ], [ %2089, %2086 ]
  %2097 = phi ptr [ %2122, %2094 ], [ %2090, %2086 ]
  %2098 = load i8, ptr %2097, align 1, !tbaa !44
  store i8 %2098, ptr %2095, align 1, !tbaa !44
  %2099 = getelementptr inbounds nuw i8, ptr %2095, i64 1
  %2100 = getelementptr inbounds nuw i8, ptr %2097, i64 1
  %2101 = load i8, ptr %2100, align 1, !tbaa !44
  store i8 %2101, ptr %2099, align 1, !tbaa !44
  %2102 = getelementptr inbounds nuw i8, ptr %2095, i64 2
  %2103 = getelementptr inbounds nuw i8, ptr %2097, i64 2
  %2104 = load i8, ptr %2103, align 1, !tbaa !44
  store i8 %2104, ptr %2102, align 1, !tbaa !44
  %2105 = getelementptr inbounds nuw i8, ptr %2095, i64 3
  %2106 = getelementptr inbounds nuw i8, ptr %2097, i64 3
  %2107 = load i8, ptr %2106, align 1, !tbaa !44
  store i8 %2107, ptr %2105, align 1, !tbaa !44
  %2108 = getelementptr inbounds nuw i8, ptr %2095, i64 4
  %2109 = getelementptr inbounds nuw i8, ptr %2097, i64 4
  %2110 = load i8, ptr %2109, align 1, !tbaa !44
  store i8 %2110, ptr %2108, align 1, !tbaa !44
  %2111 = getelementptr inbounds nuw i8, ptr %2095, i64 5
  %2112 = getelementptr inbounds nuw i8, ptr %2097, i64 5
  %2113 = load i8, ptr %2112, align 1, !tbaa !44
  store i8 %2113, ptr %2111, align 1, !tbaa !44
  %2114 = getelementptr inbounds nuw i8, ptr %2095, i64 6
  %2115 = getelementptr inbounds nuw i8, ptr %2097, i64 6
  %2116 = load i8, ptr %2115, align 1, !tbaa !44
  store i8 %2116, ptr %2114, align 1, !tbaa !44
  %2117 = getelementptr inbounds nuw i8, ptr %2095, i64 7
  %2118 = getelementptr inbounds nuw i8, ptr %2097, i64 7
  %2119 = load i8, ptr %2118, align 1, !tbaa !44
  store i8 %2119, ptr %2117, align 1, !tbaa !44
  %2120 = getelementptr inbounds nuw i8, ptr %2095, i64 8
  %2121 = add i32 %2096, -8
  %2122 = getelementptr inbounds nuw i8, ptr %2097, i64 8
  %2123 = icmp eq i32 %2121, 0
  br i1 %2123, label %2124, label %2094, !llvm.loop !102

2124:                                             ; preds = %2086, %2094, %2066, %2048
  %2125 = phi ptr [ %2055, %2066 ], [ %2034, %2048 ], [ %2087, %2086 ], [ %2120, %2094 ]
  %2126 = load i32, ptr %56, align 4, !tbaa !61
  %2127 = icmp eq i32 %2126, 0
  br i1 %2127, label %2128, label %2359

2128:                                             ; preds = %2124
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2359

2129:                                             ; preds = %88
  %2130 = icmp eq i32 %93, 0
  br i1 %2130, label %2493, label %2131

2131:                                             ; preds = %2129
  %2132 = load i32, ptr %56, align 4, !tbaa !61
  %2133 = trunc i32 %2132 to i8
  store i8 %2133, ptr %91, align 1, !tbaa !44
  %2134 = add i32 %93, -1
  %2135 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2359

2136:                                             ; preds = %88
  %2137 = load i32, ptr %49, align 8, !tbaa !24
  %2138 = icmp eq i32 %2137, 0
  br i1 %2138, label %2259, label %2139

2139:                                             ; preds = %2136
  %2140 = icmp ult i32 %95, 32
  br i1 %2140, label %2141, label %2204

2141:                                             ; preds = %2139
  %2142 = zext nneg i32 %95 to i64
  %2143 = icmp eq i32 %92, 0
  br i1 %2143, label %2486, label %2144

2144:                                             ; preds = %2141
  %2145 = load i8, ptr %90, align 1, !tbaa !44
  %2146 = zext i8 %2145 to i64
  %2147 = shl nuw nsw i64 %2146, %2142
  %2148 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %2147), !nosanitize !47
  %2149 = extractvalue { i64, i1 } %2148, 1, !nosanitize !47
  br i1 %2149, label %2150, label %2151, !prof !48, !nosanitize !47

2150:                                             ; preds = %2187, %2173, %2159, %2144
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2151:                                             ; preds = %2144
  %2152 = extractvalue { i64, i1 } %2148, 0, !nosanitize !47
  %2153 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %2154 = add i32 %92, -1
  %2155 = add nuw nsw i64 %2142, 8
  %2156 = icmp ult i32 %95, 24
  br i1 %2156, label %2157, label %2198

2157:                                             ; preds = %2151
  %2158 = icmp eq i32 %2154, 0
  br i1 %2158, label %2486, label %2159

2159:                                             ; preds = %2157
  %2160 = load i8, ptr %2153, align 1, !tbaa !44
  %2161 = zext i8 %2160 to i64
  %2162 = shl nuw nsw i64 %2161, %2155
  %2163 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2152, i64 %2162), !nosanitize !47
  %2164 = extractvalue { i64, i1 } %2163, 1, !nosanitize !47
  br i1 %2164, label %2150, label %2165, !prof !48, !nosanitize !47

2165:                                             ; preds = %2159
  %2166 = extractvalue { i64, i1 } %2163, 0, !nosanitize !47
  %2167 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %2168 = add i32 %92, -2
  %2169 = add nuw nsw i64 %2142, 16
  %2170 = icmp ult i32 %95, 16
  br i1 %2170, label %2171, label %2198

2171:                                             ; preds = %2165
  %2172 = icmp eq i32 %2168, 0
  br i1 %2172, label %2486, label %2173

2173:                                             ; preds = %2171
  %2174 = load i8, ptr %2167, align 1, !tbaa !44
  %2175 = zext i8 %2174 to i64
  %2176 = shl nuw nsw i64 %2175, %2169
  %2177 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2166, i64 %2176), !nosanitize !47
  %2178 = extractvalue { i64, i1 } %2177, 1, !nosanitize !47
  br i1 %2178, label %2150, label %2179, !prof !48, !nosanitize !47

2179:                                             ; preds = %2173
  %2180 = extractvalue { i64, i1 } %2177, 0, !nosanitize !47
  %2181 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %2182 = add i32 %92, -3
  %2183 = add nuw nsw i64 %2142, 24
  %2184 = icmp ult i32 %95, 8
  br i1 %2184, label %2185, label %2198

2185:                                             ; preds = %2179
  %2186 = icmp eq i32 %2182, 0
  br i1 %2186, label %2486, label %2187

2187:                                             ; preds = %2185
  %2188 = load i8, ptr %2181, align 1, !tbaa !44
  %2189 = zext i8 %2188 to i64
  %2190 = shl nuw nsw i64 %2189, %2183
  %2191 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2180, i64 %2190), !nosanitize !47
  %2192 = extractvalue { i64, i1 } %2191, 1, !nosanitize !47
  br i1 %2192, label %2150, label %2193, !prof !48, !nosanitize !47

2193:                                             ; preds = %2187
  %2194 = extractvalue { i64, i1 } %2191, 0, !nosanitize !47
  %2195 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %2196 = add i32 %92, -4
  %2197 = or disjoint i64 %2142, 32
  br label %2198

2198:                                             ; preds = %2193, %2179, %2165, %2151
  %2199 = phi i64 [ %2152, %2151 ], [ %2166, %2165 ], [ %2180, %2179 ], [ %2194, %2193 ]
  %2200 = phi ptr [ %2153, %2151 ], [ %2167, %2165 ], [ %2181, %2179 ], [ %2195, %2193 ]
  %2201 = phi i32 [ %2154, %2151 ], [ %2168, %2165 ], [ %2182, %2179 ], [ %2196, %2193 ]
  %2202 = phi i64 [ %2155, %2151 ], [ %2169, %2165 ], [ %2183, %2179 ], [ %2197, %2193 ]
  %2203 = trunc nuw nsw i64 %2202 to i32
  br label %2204

2204:                                             ; preds = %2198, %2139
  %2205 = phi ptr [ %90, %2139 ], [ %2200, %2198 ]
  %2206 = phi i32 [ %92, %2139 ], [ %2201, %2198 ]
  %2207 = phi i64 [ %94, %2139 ], [ %2199, %2198 ]
  %2208 = phi i32 [ %95, %2139 ], [ %2203, %2198 ]
  %2209 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %2210 = extractvalue { i32, i1 } %2209, 0, !nosanitize !47
  %2211 = extractvalue { i32, i1 } %2209, 1, !nosanitize !47
  br i1 %2211, label %2212, label %2213, !prof !48, !nosanitize !47

2212:                                             ; preds = %2204
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2213:                                             ; preds = %2204
  %2214 = zext i32 %2210 to i64
  %2215 = load i64, ptr %50, align 8, !tbaa !103
  %2216 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2215, i64 %2214), !nosanitize !47
  %2217 = extractvalue { i64, i1 } %2216, 1, !nosanitize !47
  br i1 %2217, label %2218, label %2219, !prof !48, !nosanitize !47

2218:                                             ; preds = %2213
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2219:                                             ; preds = %2213
  %2220 = extractvalue { i64, i1 } %2216, 0, !nosanitize !47
  store i64 %2220, ptr %50, align 8, !tbaa !103
  %2221 = load i64, ptr %51, align 8, !tbaa !21
  %2222 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2221, i64 %2214), !nosanitize !47
  %2223 = extractvalue { i64, i1 } %2222, 1, !nosanitize !47
  br i1 %2223, label %2224, label %2225, !prof !48, !nosanitize !47

2224:                                             ; preds = %2219
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2225:                                             ; preds = %2219
  %2226 = extractvalue { i64, i1 } %2222, 0, !nosanitize !47
  store i64 %2226, ptr %51, align 8, !tbaa !21
  %2227 = and i32 %2137, 4
  %2228 = icmp ne i32 %2227, 0
  %2229 = icmp ne i32 %2210, 0
  %2230 = select i1 %2228, i1 %2229, i1 false
  br i1 %2230, label %2231, label %2245

2231:                                             ; preds = %2225
  %2232 = load i32, ptr %52, align 8, !tbaa !28
  %2233 = icmp eq i32 %2232, 0
  %2234 = load i64, ptr %53, align 8, !tbaa !54
  %2235 = sub nsw i64 0, %2214
  %2236 = getelementptr inbounds i8, ptr %91, i64 %2235
  br i1 %2233, label %2239, label %2237

2237:                                             ; preds = %2231
  %2238 = call i64 @crc32(i64 noundef %2234, ptr noundef nonnull %2236, i32 noundef %2210) #13
  br label %2241

2239:                                             ; preds = %2231
  %2240 = call i64 @adler32(i64 noundef %2234, ptr noundef nonnull %2236, i32 noundef %2210) #13
  br label %2241

2241:                                             ; preds = %2239, %2237
  %2242 = phi i64 [ %2238, %2237 ], [ %2240, %2239 ]
  store i64 %2242, ptr %53, align 8, !tbaa !54
  store i64 %2242, ptr %54, align 8, !tbaa !25
  %2243 = load i32, ptr %49, align 8, !tbaa !24
  %2244 = and i32 %2243, 4
  br label %2245

2245:                                             ; preds = %2241, %2225
  %2246 = phi i32 [ %2244, %2241 ], [ %2227, %2225 ]
  %2247 = phi i32 [ %2243, %2241 ], [ %2137, %2225 ]
  %2248 = icmp eq i32 %2246, 0
  br i1 %2248, label %2259, label %2249

2249:                                             ; preds = %2245
  %2250 = load i32, ptr %52, align 8, !tbaa !28
  %2251 = icmp eq i32 %2250, 0
  %2252 = trunc i64 %2207 to i32
  %2253 = call i32 @llvm.bswap.i32(i32 %2252)
  %2254 = zext i32 %2253 to i64
  %2255 = select i1 %2251, i64 %2254, i64 %2207
  %2256 = load i64, ptr %53, align 8, !tbaa !54
  %2257 = icmp eq i64 %2255, %2256
  br i1 %2257, label %2259, label %2258

2258:                                             ; preds = %2249
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

2259:                                             ; preds = %2249, %2245, %2136
  %2260 = phi i32 [ 0, %2136 ], [ %2247, %2245 ], [ %2247, %2249 ]
  %2261 = phi ptr [ %90, %2136 ], [ %2205, %2245 ], [ %2205, %2249 ]
  %2262 = phi i32 [ %92, %2136 ], [ %2206, %2245 ], [ %2206, %2249 ]
  %2263 = phi i64 [ %94, %2136 ], [ 0, %2245 ], [ 0, %2249 ]
  %2264 = phi i32 [ %95, %2136 ], [ 0, %2245 ], [ 0, %2249 ]
  %2265 = phi i32 [ %96, %2136 ], [ %93, %2245 ], [ %93, %2249 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2266

2266:                                             ; preds = %103, %2259
  %2267 = phi i32 [ %2260, %2259 ], [ %104, %103 ]
  %2268 = phi ptr [ %2261, %2259 ], [ %90, %103 ]
  %2269 = phi i32 [ %2262, %2259 ], [ %92, %103 ]
  %2270 = phi i64 [ %2263, %2259 ], [ %94, %103 ]
  %2271 = phi i32 [ %2264, %2259 ], [ %95, %103 ]
  %2272 = phi i32 [ %2265, %2259 ], [ %96, %103 ]
  %2273 = icmp eq i32 %2267, 0
  br i1 %2273, label %2354, label %2274

2274:                                             ; preds = %2266
  %2275 = load i32, ptr %52, align 8, !tbaa !28
  %2276 = icmp eq i32 %2275, 0
  br i1 %2276, label %2354, label %2277

2277:                                             ; preds = %2274
  %2278 = icmp ult i32 %2271, 32
  br i1 %2278, label %2279, label %2342

2279:                                             ; preds = %2277
  %2280 = zext nneg i32 %2271 to i64
  %2281 = icmp eq i32 %2269, 0
  br i1 %2281, label %2480, label %2282

2282:                                             ; preds = %2279
  %2283 = load i8, ptr %2268, align 1, !tbaa !44
  %2284 = zext i8 %2283 to i64
  %2285 = shl nuw nsw i64 %2284, %2280
  %2286 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2270, i64 %2285), !nosanitize !47
  %2287 = extractvalue { i64, i1 } %2286, 1, !nosanitize !47
  br i1 %2287, label %2288, label %2289, !prof !48, !nosanitize !47

2288:                                             ; preds = %2325, %2311, %2297, %2282
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2289:                                             ; preds = %2282
  %2290 = extractvalue { i64, i1 } %2286, 0, !nosanitize !47
  %2291 = getelementptr inbounds nuw i8, ptr %2268, i64 1
  %2292 = add i32 %2269, -1
  %2293 = add nuw nsw i64 %2280, 8
  %2294 = icmp ult i32 %2271, 24
  br i1 %2294, label %2295, label %2336

2295:                                             ; preds = %2289
  %2296 = icmp eq i32 %2292, 0
  br i1 %2296, label %2480, label %2297

2297:                                             ; preds = %2295
  %2298 = load i8, ptr %2291, align 1, !tbaa !44
  %2299 = zext i8 %2298 to i64
  %2300 = shl nuw nsw i64 %2299, %2293
  %2301 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2290, i64 %2300), !nosanitize !47
  %2302 = extractvalue { i64, i1 } %2301, 1, !nosanitize !47
  br i1 %2302, label %2288, label %2303, !prof !48, !nosanitize !47

2303:                                             ; preds = %2297
  %2304 = extractvalue { i64, i1 } %2301, 0, !nosanitize !47
  %2305 = getelementptr inbounds nuw i8, ptr %2268, i64 2
  %2306 = add i32 %2269, -2
  %2307 = add nuw nsw i64 %2280, 16
  %2308 = icmp ult i32 %2271, 16
  br i1 %2308, label %2309, label %2336

2309:                                             ; preds = %2303
  %2310 = icmp eq i32 %2306, 0
  br i1 %2310, label %2480, label %2311

2311:                                             ; preds = %2309
  %2312 = load i8, ptr %2305, align 1, !tbaa !44
  %2313 = zext i8 %2312 to i64
  %2314 = shl nuw nsw i64 %2313, %2307
  %2315 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2304, i64 %2314), !nosanitize !47
  %2316 = extractvalue { i64, i1 } %2315, 1, !nosanitize !47
  br i1 %2316, label %2288, label %2317, !prof !48, !nosanitize !47

2317:                                             ; preds = %2311
  %2318 = extractvalue { i64, i1 } %2315, 0, !nosanitize !47
  %2319 = getelementptr inbounds nuw i8, ptr %2268, i64 3
  %2320 = add i32 %2269, -3
  %2321 = add nuw nsw i64 %2280, 24
  %2322 = icmp ult i32 %2271, 8
  br i1 %2322, label %2323, label %2336

2323:                                             ; preds = %2317
  %2324 = icmp eq i32 %2320, 0
  br i1 %2324, label %2480, label %2325

2325:                                             ; preds = %2323
  %2326 = load i8, ptr %2319, align 1, !tbaa !44
  %2327 = zext i8 %2326 to i64
  %2328 = shl nuw nsw i64 %2327, %2321
  %2329 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2318, i64 %2328), !nosanitize !47
  %2330 = extractvalue { i64, i1 } %2329, 1, !nosanitize !47
  br i1 %2330, label %2288, label %2331, !prof !48, !nosanitize !47

2331:                                             ; preds = %2325
  %2332 = extractvalue { i64, i1 } %2329, 0, !nosanitize !47
  %2333 = getelementptr inbounds nuw i8, ptr %2268, i64 4
  %2334 = add i32 %2269, -4
  %2335 = or disjoint i64 %2280, 32
  br label %2336

2336:                                             ; preds = %2331, %2317, %2303, %2289
  %2337 = phi i64 [ %2290, %2289 ], [ %2304, %2303 ], [ %2318, %2317 ], [ %2332, %2331 ]
  %2338 = phi ptr [ %2291, %2289 ], [ %2305, %2303 ], [ %2319, %2317 ], [ %2333, %2331 ]
  %2339 = phi i32 [ %2292, %2289 ], [ %2306, %2303 ], [ %2320, %2317 ], [ %2334, %2331 ]
  %2340 = phi i64 [ %2293, %2289 ], [ %2307, %2303 ], [ %2321, %2317 ], [ %2335, %2331 ]
  %2341 = trunc nuw nsw i64 %2340 to i32
  br label %2342

2342:                                             ; preds = %2336, %2277
  %2343 = phi ptr [ %2268, %2277 ], [ %2338, %2336 ]
  %2344 = phi i32 [ %2269, %2277 ], [ %2339, %2336 ]
  %2345 = phi i64 [ %2270, %2277 ], [ %2337, %2336 ]
  %2346 = phi i32 [ %2271, %2277 ], [ %2341, %2336 ]
  %2347 = and i32 %2267, 4
  %2348 = icmp eq i32 %2347, 0
  br i1 %2348, label %2354, label %2349

2349:                                             ; preds = %2342
  %2350 = load i64, ptr %51, align 8, !tbaa !21
  %2351 = and i64 %2350, 4294967295
  %2352 = icmp eq i64 %2345, %2351
  br i1 %2352, label %2354, label %2353

2353:                                             ; preds = %2349
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2359

2354:                                             ; preds = %2349, %2342, %2274, %2266
  %2355 = phi ptr [ %2268, %2266 ], [ %2268, %2274 ], [ %2343, %2342 ], [ %2343, %2349 ]
  %2356 = phi i32 [ %2269, %2266 ], [ %2269, %2274 ], [ %2344, %2342 ], [ %2344, %2349 ]
  %2357 = phi i64 [ %2270, %2266 ], [ %2270, %2274 ], [ 0, %2342 ], [ 0, %2349 ]
  %2358 = phi i32 [ %2271, %2266 ], [ %2271, %2274 ], [ 0, %2342 ], [ 0, %2349 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %2493

2359:                                             ; preds = %1305, %1426, %2124, %2128, %1492, %1501, %2353, %2258, %2131, %1978, %1882, %1656, %1652, %1648, %1475, %1466, %1462, %1160, %1085, %1033, %1030, %993, %908, %874, %780, %767, %262, %258, %212, %211, %196, %192, %174, %128
  %2360 = phi ptr [ %90, %128 ], [ %162, %174 ], [ %162, %192 ], [ %162, %196 ], [ %162, %211 ], [ %162, %212 ], [ %251, %258 ], [ %251, %262 ], [ %756, %767 ], [ %769, %780 ], [ %858, %874 ], [ %891, %908 ], [ %985, %993 ], [ %1020, %1030 ], [ %1003, %1033 ], [ %1067, %1085 ], [ %1101, %1160 ], [ %1297, %1305 ], [ %1459, %1462 ], [ %1459, %1466 ], [ %1459, %1475 ], [ %1495, %1501 ], [ %1495, %1492 ], [ %1629, %1648 ], [ %1629, %1652 ], [ %1629, %1656 ], [ %1862, %1882 ], [ %1957, %1978 ], [ %1957, %2128 ], [ %1957, %2124 ], [ %90, %2131 ], [ %2205, %2258 ], [ %2343, %2353 ], [ %1394, %1426 ]
  %2361 = phi ptr [ %91, %128 ], [ %91, %174 ], [ %91, %192 ], [ %91, %196 ], [ %91, %211 ], [ %91, %212 ], [ %91, %258 ], [ %91, %262 ], [ %91, %767 ], [ %91, %780 ], [ %91, %874 ], [ %91, %908 ], [ %91, %993 ], [ %1032, %1030 ], [ %91, %1033 ], [ %91, %1085 ], [ %91, %1160 ], [ %91, %1305 ], [ %91, %1462 ], [ %91, %1466 ], [ %91, %1475 ], [ %1493, %1501 ], [ %1493, %1492 ], [ %91, %1648 ], [ %91, %1652 ], [ %91, %1656 ], [ %91, %1882 ], [ %91, %1978 ], [ %2125, %2128 ], [ %2125, %2124 ], [ %2135, %2131 ], [ %91, %2258 ], [ %91, %2353 ], [ %91, %1426 ]
  %2362 = phi i32 [ %92, %128 ], [ %163, %174 ], [ %163, %192 ], [ %163, %196 ], [ %163, %211 ], [ %163, %212 ], [ %252, %258 ], [ %252, %262 ], [ %757, %767 ], [ %770, %780 ], [ %859, %874 ], [ %892, %908 ], [ %986, %993 ], [ %1016, %1030 ], [ %1004, %1033 ], [ %1068, %1085 ], [ %1102, %1160 ], [ %1298, %1305 ], [ %1458, %1462 ], [ %1458, %1466 ], [ %1458, %1475 ], [ %1496, %1501 ], [ %1496, %1492 ], [ %1630, %1648 ], [ %1630, %1652 ], [ %1630, %1656 ], [ %1863, %1882 ], [ %1958, %1978 ], [ %1958, %2128 ], [ %1958, %2124 ], [ %92, %2131 ], [ %2206, %2258 ], [ %2344, %2353 ], [ %1395, %1426 ]
  %2363 = phi i32 [ %93, %128 ], [ %93, %174 ], [ %93, %192 ], [ %93, %196 ], [ %93, %211 ], [ %93, %212 ], [ %93, %258 ], [ %93, %262 ], [ %93, %767 ], [ %93, %780 ], [ %93, %874 ], [ %93, %908 ], [ %93, %993 ], [ %1022, %1030 ], [ %93, %1033 ], [ %93, %1085 ], [ %93, %1160 ], [ %93, %1305 ], [ %93, %1462 ], [ %93, %1466 ], [ %93, %1475 ], [ %1494, %1501 ], [ %1494, %1492 ], [ %93, %1648 ], [ %93, %1652 ], [ %93, %1656 ], [ %93, %1882 ], [ %93, %1978 ], [ %2012, %2128 ], [ %2012, %2124 ], [ %2134, %2131 ], [ %93, %2258 ], [ %93, %2353 ], [ %93, %1426 ]
  %2364 = phi i64 [ %94, %128 ], [ 0, %174 ], [ %164, %192 ], [ %164, %196 ], [ %198, %211 ], [ 0, %212 ], [ %253, %258 ], [ %253, %262 ], [ %758, %767 ], [ %771, %780 ], [ %877, %874 ], [ %910, %908 ], [ %987, %993 ], [ %1005, %1030 ], [ %1005, %1033 ], [ %1080, %1085 ], [ %1103, %1160 ], [ %1302, %1305 ], [ %1457, %1462 ], [ %1457, %1466 ], [ %1457, %1475 ], [ %1497, %1501 ], [ %1497, %1492 ], [ %1638, %1648 ], [ %1638, %1652 ], [ %1638, %1656 ], [ %1871, %1882 ], [ %1959, %1978 ], [ %1959, %2128 ], [ %1959, %2124 ], [ %94, %2131 ], [ %2207, %2258 ], [ %2345, %2353 ], [ %1396, %1426 ]
  %2365 = phi i32 [ %95, %128 ], [ 0, %174 ], [ %165, %192 ], [ %165, %196 ], [ %199, %211 ], [ 0, %212 ], [ %254, %258 ], [ %254, %262 ], [ %759, %767 ], [ %772, %780 ], [ %875, %874 ], [ %909, %908 ], [ %988, %993 ], [ %1006, %1030 ], [ %1006, %1033 ], [ %1081, %1085 ], [ %1104, %1160 ], [ %1303, %1305 ], [ %1456, %1462 ], [ %1456, %1466 ], [ %1456, %1475 ], [ %1498, %1501 ], [ %1498, %1492 ], [ %1640, %1648 ], [ %1640, %1652 ], [ %1640, %1656 ], [ %1873, %1882 ], [ %1960, %1978 ], [ %1960, %2128 ], [ %1960, %2124 ], [ %95, %2131 ], [ %2208, %2258 ], [ %2346, %2353 ], [ %1400, %1426 ]
  %2366 = phi i32 [ %96, %128 ], [ %96, %174 ], [ %96, %192 ], [ %96, %196 ], [ %96, %211 ], [ %96, %212 ], [ %96, %258 ], [ %96, %262 ], [ %96, %767 ], [ %96, %780 ], [ %96, %874 ], [ %96, %908 ], [ %96, %993 ], [ %96, %1030 ], [ %96, %1033 ], [ %96, %1085 ], [ %96, %1160 ], [ %96, %1305 ], [ %96, %1462 ], [ %96, %1466 ], [ %96, %1475 ], [ %96, %1501 ], [ %96, %1492 ], [ %96, %1648 ], [ %96, %1652 ], [ %96, %1656 ], [ %96, %1882 ], [ %96, %1978 ], [ %96, %2128 ], [ %96, %2124 ], [ %96, %2131 ], [ %93, %2258 ], [ %2272, %2353 ], [ %96, %1426 ]
  %2367 = phi i32 [ %97, %128 ], [ %97, %174 ], [ %97, %192 ], [ %97, %196 ], [ %97, %211 ], [ %97, %212 ], [ %97, %258 ], [ %97, %262 ], [ %97, %767 ], [ %97, %780 ], [ %97, %874 ], [ %97, %908 ], [ %97, %993 ], [ %97, %1030 ], [ %97, %1033 ], [ %97, %1085 ], [ %1158, %1160 ], [ %1167, %1305 ], [ %1167, %1462 ], [ %1464, %1466 ], [ %1473, %1475 ], [ %1488, %1501 ], [ %1488, %1492 ], [ %1488, %1648 ], [ %1488, %1652 ], [ %1488, %1656 ], [ %1735, %1882 ], [ %1961, %1978 ], [ %1961, %2128 ], [ %1961, %2124 ], [ %97, %2131 ], [ %97, %2258 ], [ %97, %2353 ], [ %1167, %1426 ]
  %2368 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

2369:                                             ; preds = %1200, %1204
  %2370 = phi i64 [ %1218, %1204 ], [ %1188, %1200 ]
  %2371 = zext i32 %1187 to i64
  %2372 = shl i32 %1187, 3
  %2373 = add i32 %2372, %1189
  %2374 = getelementptr i8, ptr %1186, i64 %2371
  br label %2493

2375:                                             ; preds = %142, %125
  %2376 = phi i64 [ %94, %125 ], [ %137, %142 ]
  %2377 = zext i32 %92 to i64
  %2378 = shl i32 %92, 3
  %2379 = add i32 %2378, %95
  %2380 = getelementptr i8, ptr %90, i64 %2377
  br label %2493

2381:                                             ; preds = %736, %720
  %2382 = phi i64 [ %713, %720 ], [ %731, %736 ]
  %2383 = zext i32 %712 to i64
  %2384 = shl i32 %712, 3
  %2385 = add i32 %2384, %714
  %2386 = getelementptr i8, ptr %711, i64 %2383
  br label %2493

2387:                                             ; preds = %454, %433
  %2388 = phi i64 [ %436, %433 ], [ %449, %454 ]
  %2389 = zext i32 %435 to i64
  %2390 = shl i32 %435, 3
  %2391 = add i32 %2390, %437
  %2392 = getelementptr i8, ptr %434, i64 %2389
  br label %2493

2393:                                             ; preds = %386, %366
  %2394 = phi i64 [ %368, %366 ], [ %381, %386 ]
  %2395 = zext i32 %369 to i64
  %2396 = shl i32 %369, 3
  %2397 = add i32 %2396, %367
  %2398 = getelementptr i8, ptr %370, i64 %2395
  br label %2493

2399:                                             ; preds = %331, %317, %303, %283
  %2400 = phi i64 [ %285, %283 ], [ %298, %303 ], [ %312, %317 ], [ %326, %331 ]
  %2401 = zext i32 %286 to i64
  %2402 = shl i32 %286, 3
  %2403 = add i32 %2402, %284
  %2404 = getelementptr i8, ptr %287, i64 %2401
  br label %2493

2405:                                             ; preds = %231, %117
  %2406 = phi i64 [ %94, %117 ], [ %226, %231 ]
  %2407 = zext i32 %92 to i64
  %2408 = shl i32 %92, 3
  %2409 = add i32 %2408, %95
  %2410 = getelementptr i8, ptr %90, i64 %2407
  br label %2493

2411:                                             ; preds = %823, %809, %795, %112
  %2412 = phi i64 [ %94, %112 ], [ %790, %795 ], [ %804, %809 ], [ %818, %823 ]
  %2413 = zext i32 %92 to i64
  %2414 = shl i32 %92, 3
  %2415 = add i32 %2414, %95
  %2416 = getelementptr i8, ptr %90, i64 %2413
  br label %2493

2417:                                             ; preds = %966, %952, %938, %921
  %2418 = phi i64 [ %918, %921 ], [ %933, %938 ], [ %947, %952 ], [ %961, %966 ]
  %2419 = zext i32 %92 to i64
  %2420 = shl i32 %92, 3
  %2421 = add i32 %2420, %922
  %2422 = getelementptr i8, ptr %90, i64 %2419
  br label %2493

2423:                                             ; preds = %1896, %1900
  %2424 = phi i64 [ %1913, %1900 ], [ %1890, %1896 ]
  %2425 = zext i32 %1889 to i64
  %2426 = shl i32 %1889, 3
  %2427 = add i32 %2426, %1891
  %2428 = getelementptr i8, ptr %1888, i64 %2425
  br label %2493

2429:                                             ; preds = %1810, %1814
  %2430 = phi i64 [ %1828, %1814 ], [ %1785, %1810 ]
  %2431 = zext i32 %1784 to i64
  %2432 = shl i32 %1784, 3
  %2433 = add i32 %2432, %1786
  %2434 = getelementptr i8, ptr %1783, i64 %2431
  br label %2493

2435:                                             ; preds = %1748, %1752
  %2436 = phi i64 [ %1766, %1752 ], [ %1733, %1748 ]
  %2437 = zext i32 %1732 to i64
  %2438 = shl i32 %1732, 3
  %2439 = add i32 %2438, %1734
  %2440 = getelementptr i8, ptr %1731, i64 %2437
  br label %2493

2441:                                             ; preds = %1669, %1673
  %2442 = phi i64 [ %1686, %1673 ], [ %1663, %1669 ]
  %2443 = zext i32 %1662 to i64
  %2444 = shl i32 %1662, 3
  %2445 = add i32 %2444, %1664
  %2446 = getelementptr i8, ptr %1661, i64 %2443
  br label %2493

2447:                                             ; preds = %1578, %1582
  %2448 = phi i64 [ %1596, %1582 ], [ %1552, %1578 ]
  %2449 = zext i32 %1551 to i64
  %2450 = shl i32 %1551, 3
  %2451 = add i32 %2450, %1553
  %2452 = getelementptr i8, ptr %1550, i64 %2449
  br label %2493

2453:                                             ; preds = %1515, %1519
  %2454 = phi i64 [ %1533, %1519 ], [ %1486, %1515 ]
  %2455 = zext i32 %1485 to i64
  %2456 = shl i32 %1485, 3
  %2457 = add i32 %2456, %1487
  %2458 = getelementptr i8, ptr %1484, i64 %2455
  br label %2493

2459:                                             ; preds = %1356
  %2460 = zext i32 %1236 to i64
  %2461 = shl i32 %1236, 3
  %2462 = add i32 %2461, %1238
  %2463 = getelementptr i8, ptr %1235, i64 %2460
  br label %2493

2464:                                             ; preds = %1275
  %2465 = zext i32 %1236 to i64
  %2466 = shl i32 %1236, 3
  %2467 = add i32 %2466, %1238
  %2468 = getelementptr i8, ptr %1235, i64 %2465
  br label %2493

2469:                                             ; preds = %1319
  %2470 = zext i32 %1236 to i64
  %2471 = shl i32 %1236, 3
  %2472 = add i32 %2471, %1238
  %2473 = getelementptr i8, ptr %1235, i64 %2470
  br label %2493

2474:                                             ; preds = %1047, %107
  %2475 = phi i64 [ %94, %107 ], [ %1042, %1047 ]
  %2476 = zext i32 %92 to i64
  %2477 = shl i32 %92, 3
  %2478 = add i32 %2477, %95
  %2479 = getelementptr i8, ptr %90, i64 %2476
  br label %2493

2480:                                             ; preds = %2323, %2309, %2295, %2279
  %2481 = phi i64 [ %2270, %2279 ], [ %2290, %2295 ], [ %2304, %2309 ], [ %2318, %2323 ]
  %2482 = zext i32 %2269 to i64
  %2483 = shl i32 %2269, 3
  %2484 = add i32 %2483, %2271
  %2485 = getelementptr i8, ptr %2268, i64 %2482
  br label %2493

2486:                                             ; preds = %2185, %2171, %2157, %2141
  %2487 = phi i64 [ %94, %2141 ], [ %2152, %2157 ], [ %2166, %2171 ], [ %2180, %2185 ]
  %2488 = zext i32 %92 to i64
  %2489 = shl i32 %92, 3
  %2490 = add i32 %2489, %95
  %2491 = getelementptr i8, ptr %90, i64 %2488
  br label %2493

2492:                                             ; preds = %88
  br label %2493

2493:                                             ; preds = %574, %590, %634, %654, %698, %852, %994, %1009, %1476, %1956, %2129, %866, %1116, %88, %2492, %2486, %2480, %2474, %2469, %2464, %2459, %2453, %2447, %2441, %2435, %2429, %2423, %2417, %2411, %2405, %2399, %2393, %2387, %2381, %2375, %2369, %2354, %900
  %2494 = phi i32 [ %93, %2480 ], [ %93, %2375 ], [ %93, %2369 ], [ %93, %1116 ], [ %93, %2486 ], [ %93, %2459 ], [ %93, %2417 ], [ %93, %2423 ], [ %93, %2405 ], [ %93, %2393 ], [ %93, %2441 ], [ %93, %2387 ], [ %93, %2354 ], [ %93, %2381 ], [ %93, %900 ], [ %93, %2453 ], [ %93, %2469 ], [ %93, %2447 ], [ %93, %2429 ], [ %93, %2474 ], [ %93, %2399 ], [ %93, %2435 ], [ %93, %2464 ], [ %93, %2411 ], [ %93, %88 ], [ %93, %574 ], [ %93, %590 ], [ %93, %634 ], [ %93, %654 ], [ %93, %698 ], [ %93, %852 ], [ %93, %994 ], [ %93, %1009 ], [ %93, %1476 ], [ 0, %1956 ], [ 0, %2129 ], [ %93, %866 ], [ %93, %2492 ]
  %2495 = phi ptr [ %2485, %2480 ], [ %2380, %2375 ], [ %2374, %2369 ], [ %1114, %1116 ], [ %2491, %2486 ], [ %2463, %2459 ], [ %2422, %2417 ], [ %2428, %2423 ], [ %2410, %2405 ], [ %2398, %2393 ], [ %2446, %2441 ], [ %2392, %2387 ], [ %2355, %2354 ], [ %2386, %2381 ], [ %891, %900 ], [ %2458, %2453 ], [ %2473, %2469 ], [ %2452, %2447 ], [ %2434, %2429 ], [ %2479, %2474 ], [ %2404, %2399 ], [ %2440, %2435 ], [ %2468, %2464 ], [ %2416, %2411 ], [ %90, %88 ], [ %576, %574 ], [ %583, %590 ], [ %637, %634 ], [ %647, %654 ], [ %701, %698 ], [ %853, %852 ], [ %985, %994 ], [ %1003, %1009 ], [ %1459, %1476 ], [ %1957, %1956 ], [ %90, %2129 ], [ %858, %866 ], [ %90, %2492 ]
  %2496 = phi i32 [ 0, %2480 ], [ 0, %2375 ], [ 0, %2369 ], [ 0, %1116 ], [ 0, %2486 ], [ 0, %2459 ], [ 0, %2417 ], [ 0, %2423 ], [ 0, %2405 ], [ 0, %2393 ], [ 0, %2441 ], [ 0, %2387 ], [ %2356, %2354 ], [ 0, %2381 ], [ %892, %900 ], [ 0, %2453 ], [ 0, %2469 ], [ 0, %2447 ], [ 0, %2429 ], [ 0, %2474 ], [ 0, %2399 ], [ 0, %2435 ], [ 0, %2464 ], [ 0, %2411 ], [ %92, %88 ], [ %577, %574 ], [ 0, %590 ], [ %635, %634 ], [ 0, %654 ], [ %699, %698 ], [ %854, %852 ], [ %986, %994 ], [ %1004, %1009 ], [ %1458, %1476 ], [ %1958, %1956 ], [ %92, %2129 ], [ 0, %866 ], [ %92, %2492 ]
  %2497 = phi i64 [ %2481, %2480 ], [ %2376, %2375 ], [ %2370, %2369 ], [ %1112, %1116 ], [ %2487, %2486 ], [ %1358, %2459 ], [ %2418, %2417 ], [ %2424, %2423 ], [ %2406, %2405 ], [ %2394, %2393 ], [ %2442, %2441 ], [ %2388, %2387 ], [ %2357, %2354 ], [ %2382, %2381 ], [ %902, %900 ], [ %2454, %2453 ], [ %1321, %2469 ], [ %2448, %2447 ], [ %2430, %2429 ], [ %2475, %2474 ], [ %2400, %2399 ], [ %2436, %2435 ], [ %1277, %2464 ], [ %2412, %2411 ], [ %94, %88 ], [ %504, %574 ], [ %585, %590 ], [ %585, %634 ], [ %649, %654 ], [ %649, %698 ], [ %855, %852 ], [ 0, %994 ], [ %1005, %1009 ], [ %1457, %1476 ], [ %1959, %1956 ], [ %94, %2129 ], [ %860, %866 ], [ %94, %2492 ]
  %2498 = phi i32 [ %2484, %2480 ], [ %2379, %2375 ], [ %2373, %2369 ], [ %1111, %1116 ], [ %2490, %2486 ], [ %2462, %2459 ], [ %2421, %2417 ], [ %2427, %2423 ], [ %2409, %2405 ], [ %2397, %2393 ], [ %2445, %2441 ], [ %2391, %2387 ], [ %2358, %2354 ], [ %2385, %2381 ], [ %901, %900 ], [ %2457, %2453 ], [ %2472, %2469 ], [ %2451, %2447 ], [ %2433, %2429 ], [ %2478, %2474 ], [ %2403, %2399 ], [ %2439, %2435 ], [ %2467, %2464 ], [ %2415, %2411 ], [ %95, %88 ], [ %505, %574 ], [ %586, %590 ], [ %586, %634 ], [ %650, %654 ], [ %650, %698 ], [ %856, %852 ], [ 0, %994 ], [ %1006, %1009 ], [ %1456, %1476 ], [ %1960, %1956 ], [ %95, %2129 ], [ %861, %866 ], [ %95, %2492 ]
  %2499 = phi i32 [ %2272, %2480 ], [ %96, %2375 ], [ %96, %2369 ], [ %96, %1116 ], [ %96, %2486 ], [ %96, %2459 ], [ %96, %2417 ], [ %96, %2423 ], [ %96, %2405 ], [ %96, %2393 ], [ %96, %2441 ], [ %96, %2387 ], [ %2272, %2354 ], [ %96, %2381 ], [ %96, %900 ], [ %96, %2453 ], [ %96, %2469 ], [ %96, %2447 ], [ %96, %2429 ], [ %96, %2474 ], [ %96, %2399 ], [ %96, %2435 ], [ %96, %2464 ], [ %96, %2411 ], [ %96, %88 ], [ %96, %866 ], [ %96, %2129 ], [ %96, %1956 ], [ %96, %1476 ], [ %96, %1009 ], [ %96, %994 ], [ %96, %852 ], [ %96, %698 ], [ %96, %654 ], [ %96, %634 ], [ %96, %590 ], [ %96, %574 ], [ %96, %2492 ]
  %2500 = phi i32 [ %97, %2480 ], [ %97, %2375 ], [ %1167, %2369 ], [ %97, %1116 ], [ %97, %2486 ], [ %1167, %2459 ], [ %97, %2417 ], [ %1892, %2423 ], [ %97, %2405 ], [ %97, %2393 ], [ %1665, %2441 ], [ %97, %2387 ], [ 1, %2354 ], [ %97, %2381 ], [ %97, %900 ], [ %1488, %2453 ], [ %1167, %2469 ], [ %1488, %2447 ], [ %1735, %2429 ], [ %97, %2474 ], [ %97, %2399 ], [ %1735, %2435 ], [ %1167, %2464 ], [ %97, %2411 ], [ -3, %88 ], [ %97, %574 ], [ %97, %590 ], [ %97, %634 ], [ %97, %654 ], [ %97, %698 ], [ %97, %852 ], [ %97, %994 ], [ %97, %1009 ], [ 0, %1476 ], [ %1961, %1956 ], [ %97, %2129 ], [ %97, %866 ], [ 1, %2492 ]
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %2494, ptr %41, align 8, !tbaa !52
  store ptr %2495, ptr %0, align 8, !tbaa !50
  store i32 %2496, ptr %43, align 8, !tbaa !51
  store i64 %2497, ptr %45, align 8, !tbaa !31
  store i32 %2498, ptr %47, align 8, !tbaa !32
  %2501 = load i32, ptr %79, align 4, !tbaa !38
  %2502 = icmp eq i32 %2501, 0
  br i1 %2502, label %2503, label %2512

2503:                                             ; preds = %2493
  %2504 = icmp eq i32 %2499, %2494
  br i1 %2504, label %2600, label %2505

2505:                                             ; preds = %2503
  %2506 = load i32, ptr %21, align 8, !tbaa !20
  %2507 = icmp ult i32 %2506, 16209
  br i1 %2507, label %2508, label %2600

2508:                                             ; preds = %2505
  %2509 = icmp samesign ult i32 %2506, 16206
  %2510 = icmp ne i32 %1, 4
  %2511 = or i1 %2510, %2509
  br i1 %2511, label %2512, label %2600

2512:                                             ; preds = %2508, %2493
  %2513 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2499, i32 %2494), !nosanitize !47
  %2514 = extractvalue { i32, i1 } %2513, 1, !nosanitize !47
  br i1 %2514, label %2515, label %2516, !prof !48, !nosanitize !47

2515:                                             ; preds = %2512
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2516:                                             ; preds = %2512
  %2517 = extractvalue { i32, i1 } %2513, 0, !nosanitize !47
  %2518 = load ptr, ptr %14, align 8, !tbaa !15
  %2519 = getelementptr inbounds nuw i8, ptr %2518, i64 72
  %2520 = load ptr, ptr %2519, align 8, !tbaa !41
  %2521 = icmp eq ptr %2520, null
  br i1 %2521, label %2522, label %2531

2522:                                             ; preds = %2516
  %2523 = load ptr, ptr %6, align 8, !tbaa !8
  %2524 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2525 = load ptr, ptr %2524, align 8, !tbaa !43
  %2526 = getelementptr inbounds nuw i8, ptr %2518, i64 56
  %2527 = load i32, ptr %2526, align 8, !tbaa !42
  %2528 = shl nuw i32 1, %2527
  %2529 = call ptr %2523(ptr noundef %2525, i32 noundef %2528, i32 noundef 1) #13, !inline_history !104
  store ptr %2529, ptr %2519, align 8, !tbaa !41
  %2530 = icmp eq ptr %2529, null
  br i1 %2530, label %2599, label %2531

2531:                                             ; preds = %2522, %2516
  %2532 = phi ptr [ %2529, %2522 ], [ %2520, %2516 ]
  %2533 = getelementptr inbounds nuw i8, ptr %2518, i64 60
  %2534 = load i32, ptr %2533, align 4, !tbaa !38
  %2535 = icmp eq i32 %2534, 0
  br i1 %2535, label %2536, label %2542

2536:                                             ; preds = %2531
  %2537 = getelementptr inbounds nuw i8, ptr %2518, i64 56
  %2538 = load i32, ptr %2537, align 8, !tbaa !42
  %2539 = shl nuw i32 1, %2538
  store i32 %2539, ptr %2533, align 4, !tbaa !38
  %2540 = getelementptr inbounds nuw i8, ptr %2518, i64 68
  store i32 0, ptr %2540, align 4, !tbaa !40
  %2541 = getelementptr inbounds nuw i8, ptr %2518, i64 64
  store i32 0, ptr %2541, align 8, !tbaa !39
  br label %2542

2542:                                             ; preds = %2536, %2531
  %2543 = phi i32 [ %2539, %2536 ], [ %2534, %2531 ]
  %2544 = icmp ult i32 %2517, %2543
  br i1 %2544, label %2552, label %2545

2545:                                             ; preds = %2542
  %2546 = zext i32 %2543 to i64
  %2547 = sub nsw i64 0, %2546
  %2548 = getelementptr inbounds i8, ptr %91, i64 %2547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2532, ptr noundef nonnull readonly align 1 dereferenceable(1) %2548, i64 %2546, i1 false)
  %2549 = getelementptr inbounds nuw i8, ptr %2518, i64 68
  store i32 0, ptr %2549, align 4, !tbaa !40
  %2550 = load i32, ptr %2533, align 4, !tbaa !38
  %2551 = getelementptr inbounds nuw i8, ptr %2518, i64 64
  store i32 %2550, ptr %2551, align 8, !tbaa !39
  br label %2600

2552:                                             ; preds = %2542
  %2553 = getelementptr inbounds nuw i8, ptr %2518, i64 68
  %2554 = load i32, ptr %2553, align 4, !tbaa !40
  %2555 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2543, i32 %2554), !nosanitize !47
  %2556 = extractvalue { i32, i1 } %2555, 1, !nosanitize !47
  br i1 %2556, label %2557, label %2558, !prof !48, !nosanitize !47

2557:                                             ; preds = %2552
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2558:                                             ; preds = %2552
  %2559 = extractvalue { i32, i1 } %2555, 0, !nosanitize !47
  %2560 = call i32 @llvm.umin.i32(i32 %2559, i32 %2517)
  %2561 = zext i32 %2554 to i64
  %2562 = getelementptr inbounds nuw i8, ptr %2532, i64 %2561
  %2563 = zext i32 %2517 to i64
  %2564 = sub nsw i64 0, %2563
  %2565 = getelementptr inbounds i8, ptr %91, i64 %2564
  %2566 = zext i32 %2560 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2562, ptr readonly align 1 %2565, i64 %2566, i1 false)
  %2567 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2517, i32 %2560), !nosanitize !47
  %2568 = extractvalue { i32, i1 } %2567, 0, !nosanitize !47
  %2569 = extractvalue { i32, i1 } %2567, 1, !nosanitize !47
  br i1 %2569, label %2570, label %2571, !prof !48, !nosanitize !47

2570:                                             ; preds = %2558
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2571:                                             ; preds = %2558
  %2572 = icmp eq i32 %2568, 0
  br i1 %2572, label %2580, label %2573

2573:                                             ; preds = %2571
  %2574 = load ptr, ptr %2519, align 8, !tbaa !41
  %2575 = zext i32 %2568 to i64
  %2576 = sub nsw i64 0, %2575
  %2577 = getelementptr inbounds i8, ptr %91, i64 %2576
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2574, ptr nonnull readonly align 1 %2577, i64 %2575, i1 false)
  store i32 %2568, ptr %2553, align 4, !tbaa !40
  %2578 = load i32, ptr %2533, align 4, !tbaa !38
  %2579 = getelementptr inbounds nuw i8, ptr %2518, i64 64
  store i32 %2578, ptr %2579, align 8, !tbaa !39
  br label %2600

2580:                                             ; preds = %2571
  %2581 = load i32, ptr %2553, align 4, !tbaa !40
  %2582 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2581, i32 %2560), !nosanitize !47
  %2583 = extractvalue { i32, i1 } %2582, 1, !nosanitize !47
  br i1 %2583, label %2584, label %2585, !prof !48, !nosanitize !47

2584:                                             ; preds = %2580
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2585:                                             ; preds = %2580
  %2586 = extractvalue { i32, i1 } %2582, 0, !nosanitize !47
  %2587 = load i32, ptr %2533, align 4, !tbaa !38
  %2588 = icmp eq i32 %2586, %2587
  %2589 = select i1 %2588, i32 0, i32 %2586
  store i32 %2589, ptr %2553, align 4
  %2590 = getelementptr inbounds nuw i8, ptr %2518, i64 64
  %2591 = load i32, ptr %2590, align 8, !tbaa !39
  %2592 = icmp ult i32 %2591, %2587
  br i1 %2592, label %2593, label %2600

2593:                                             ; preds = %2585
  %2594 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2591, i32 %2560), !nosanitize !47
  %2595 = extractvalue { i32, i1 } %2594, 1, !nosanitize !47
  br i1 %2595, label %2596, label %2597, !prof !48, !nosanitize !47

2596:                                             ; preds = %2593
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2597:                                             ; preds = %2593
  %2598 = extractvalue { i32, i1 } %2594, 0, !nosanitize !47
  store i32 %2598, ptr %2590, align 8, !tbaa !39
  br label %2600

2599:                                             ; preds = %2522
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %2677

2600:                                             ; preds = %2545, %2585, %2597, %2573, %2508, %2505, %2503
  %2601 = load i32, ptr %43, align 8, !tbaa !51
  %2602 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2601), !nosanitize !47
  %2603 = extractvalue { i32, i1 } %2602, 0, !nosanitize !47
  %2604 = extractvalue { i32, i1 } %2602, 1, !nosanitize !47
  br i1 %2604, label %2605, label %2606, !prof !48, !nosanitize !47

2605:                                             ; preds = %2600
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2606:                                             ; preds = %2600
  %2607 = load i32, ptr %41, align 8, !tbaa !52
  %2608 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2499, i32 %2607), !nosanitize !47
  %2609 = extractvalue { i32, i1 } %2608, 0, !nosanitize !47
  %2610 = extractvalue { i32, i1 } %2608, 1, !nosanitize !47
  br i1 %2610, label %2611, label %2612, !prof !48, !nosanitize !47

2611:                                             ; preds = %2606
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2612:                                             ; preds = %2606
  %2613 = zext i32 %2603 to i64
  %2614 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2615 = load i64, ptr %2614, align 8, !tbaa !22
  %2616 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2615, i64 %2613), !nosanitize !47
  %2617 = extractvalue { i64, i1 } %2616, 1, !nosanitize !47
  br i1 %2617, label %2618, label %2619, !prof !48, !nosanitize !47

2618:                                             ; preds = %2612
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2619:                                             ; preds = %2612
  %2620 = extractvalue { i64, i1 } %2616, 0, !nosanitize !47
  store i64 %2620, ptr %2614, align 8, !tbaa !22
  %2621 = zext i32 %2609 to i64
  %2622 = load i64, ptr %50, align 8, !tbaa !103
  %2623 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2622, i64 %2621), !nosanitize !47
  %2624 = extractvalue { i64, i1 } %2623, 1, !nosanitize !47
  br i1 %2624, label %2625, label %2626, !prof !48, !nosanitize !47

2625:                                             ; preds = %2619
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2626:                                             ; preds = %2619
  %2627 = extractvalue { i64, i1 } %2623, 0, !nosanitize !47
  store i64 %2627, ptr %50, align 8, !tbaa !103
  %2628 = load i64, ptr %51, align 8, !tbaa !21
  %2629 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2628, i64 %2621), !nosanitize !47
  %2630 = extractvalue { i64, i1 } %2629, 1, !nosanitize !47
  br i1 %2630, label %2631, label %2632, !prof !48, !nosanitize !47

2631:                                             ; preds = %2626
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2632:                                             ; preds = %2626
  %2633 = extractvalue { i64, i1 } %2629, 0, !nosanitize !47
  store i64 %2633, ptr %51, align 8, !tbaa !21
  %2634 = load i32, ptr %49, align 8, !tbaa !24
  %2635 = and i32 %2634, 4
  %2636 = icmp ne i32 %2635, 0
  %2637 = icmp ne i32 %2609, 0
  %2638 = select i1 %2636, i1 %2637, i1 false
  br i1 %2638, label %2639, label %2652

2639:                                             ; preds = %2632
  %2640 = load i32, ptr %52, align 8, !tbaa !28
  %2641 = icmp eq i32 %2640, 0
  %2642 = load i64, ptr %53, align 8, !tbaa !54
  %2643 = load ptr, ptr %26, align 8, !tbaa !49
  %2644 = sub nsw i64 0, %2621
  %2645 = getelementptr inbounds i8, ptr %2643, i64 %2644
  br i1 %2641, label %2648, label %2646

2646:                                             ; preds = %2639
  %2647 = call i64 @crc32(i64 noundef %2642, ptr noundef nonnull %2645, i32 noundef %2609) #13
  br label %2650

2648:                                             ; preds = %2639
  %2649 = call i64 @adler32(i64 noundef %2642, ptr noundef nonnull %2645, i32 noundef %2609) #13
  br label %2650

2650:                                             ; preds = %2648, %2646
  %2651 = phi i64 [ %2647, %2646 ], [ %2649, %2648 ]
  store i64 %2651, ptr %53, align 8, !tbaa !54
  store i64 %2651, ptr %54, align 8, !tbaa !25
  br label %2652

2652:                                             ; preds = %2650, %2632
  %2653 = load i32, ptr %47, align 8, !tbaa !32
  %2654 = load i32, ptr %83, align 4, !tbaa !26
  %2655 = icmp eq i32 %2654, 0
  %2656 = select i1 %2655, i32 0, i32 64
  %2657 = add nsw i32 %2656, %2653
  %2658 = load i32, ptr %21, align 8, !tbaa !20
  %2659 = icmp eq i32 %2658, 16191
  %2660 = select i1 %2659, i32 128, i32 0
  %2661 = add nsw i32 %2657, %2660
  %2662 = icmp eq i32 %2658, 16199
  %2663 = icmp eq i32 %2658, 16194
  %2664 = or i1 %2662, %2663
  %2665 = select i1 %2664, i32 256, i32 0
  %2666 = add nsw i32 %2661, %2665
  %2667 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2666, ptr %2667, align 8, !tbaa !23
  %2668 = icmp eq i32 %2603, 0
  %2669 = icmp eq i32 %2609, 0
  %2670 = select i1 %2668, i1 %2669, i1 false
  %2671 = icmp eq i32 %1, 4
  %2672 = or i1 %2671, %2670
  %2673 = icmp eq i32 %2500, 0
  %2674 = select i1 %2672, i1 %2673, i1 false
  %2675 = select i1 %2674, i32 -5, i32 %2500
  br label %2677

2676:                                             ; preds = %88
  br label %2677

2677:                                             ; preds = %88, %2676, %17, %5, %9, %2, %13, %20, %25, %32, %2652, %2599, %849
  %2678 = phi i32 [ -2, %20 ], [ -4, %2676 ], [ -4, %2599 ], [ %2675, %2652 ], [ 2, %849 ], [ -2, %32 ], [ -2, %25 ], [ -2, %17 ], [ -2, %13 ], [ -2, %2 ], [ -2, %9 ], [ -2, %5 ], [ -2, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %2678
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #6

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #3

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #3

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
  tail call void %9(ptr noundef %29, ptr noundef nonnull %25) #13
  %30 = load ptr, ptr %8, align 8, !tbaa !14
  %31 = load ptr, ptr %12, align 8, !tbaa !15
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi ptr [ %31, %27 ], [ %13, %23 ]
  %34 = phi ptr [ %30, %27 ], [ %9, %23 ]
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  tail call void %34(ptr noundef %36, ptr noundef %33) #13
  store ptr null, ptr %12, align 8, !tbaa !15
  br label %37

37:                                               ; preds = %15, %3, %7, %1, %11, %18, %32
  %38 = phi i32 [ 0, %32 ], [ -2, %18 ], [ -2, %11 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %15 ]
  ret i32 %38
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
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
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
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

56:                                               ; preds = %17, %5, %9, %3, %13, %52, %54, %20
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

32:                                               ; preds = %30, %31
  %33 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  %34 = tail call i64 @adler32(i64 noundef %33, ptr noundef %1, i32 noundef %2) #13
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
  %54 = tail call ptr %48(ptr noundef %50, i32 noundef %53, i32 noundef 1) #13, !inline_history !104
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
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
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
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
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
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
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
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

119:                                              ; preds = %115
  %120 = extractvalue { i32, i1 } %116, 0, !nosanitize !47
  store i32 %120, ptr %112, align 8, !tbaa !39
  br label %122

121:                                              ; preds = %47
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %124

122:                                              ; preds = %95, %119, %107, %70
  %123 = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 1, ptr %123, align 4, !tbaa !27
  br label %124

124:                                              ; preds = %17, %5, %9, %3, %13, %32, %30, %20, %122, %121
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

32:                                               ; preds = %16, %4, %8, %2, %12, %24, %19, %29
  %33 = phi i32 [ 0, %29 ], [ -2, %19 ], [ -2, %24 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %33
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @inflateSync(ptr noundef captures(address) %0) local_unnamed_addr #5 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %210, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %210, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %210, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %210, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %210

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %210

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %30 = load i32, ptr %29, align 8, !tbaa !32
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %210, label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq i32 %21, 16211
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %36 = load i32, ptr %35, align 4, !tbaa !4
  br label %124

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
  %46 = extractvalue { i32, i1 } %45, 1, !nosanitize !47
  br i1 %46, label %60, label %47, !prof !48, !nosanitize !47

47:                                               ; preds = %37
  %48 = extractvalue { i32, i1 } %45, 0
  %49 = icmp ugt i32 %48, 7
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 %48, ptr %38, align 8, !tbaa !32
  br label %120

51:                                               ; preds = %47
  %52 = add i32 %48, -8
  %53 = lshr i32 %52, 3
  %54 = add nuw nsw i32 %53, 1
  %55 = zext nneg i32 %54 to i64
  %56 = and i64 %55, 3
  %57 = icmp ult i32 %52, 24
  br i1 %57, label %85, label %58

58:                                               ; preds = %51
  %59 = and i64 %55, 1073741820
  br label %61

60:                                               ; preds = %37
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

61:                                               ; preds = %61, %58
  %62 = phi i64 [ %44, %58 ], [ %80, %61 ]
  %63 = phi i64 [ 0, %58 ], [ %76, %61 ]
  %64 = phi i64 [ 0, %58 ], [ %81, %61 ]
  %65 = trunc i64 %62 to i8
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  store i8 %65, ptr %66, align 1, !tbaa !44
  %67 = lshr i64 %62, 8
  %68 = trunc i64 %67 to i8
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 1
  store i8 %68, ptr %70, align 1, !tbaa !44
  %71 = lshr i64 %62, 16
  %72 = trunc i64 %71 to i8
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 2
  store i8 %72, ptr %74, align 1, !tbaa !44
  %75 = lshr i64 %62, 24
  %76 = add nuw nsw i64 %63, 4
  %77 = trunc i64 %75 to i8
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 3
  store i8 %77, ptr %79, align 1, !tbaa !44
  %80 = lshr i64 %62, 32
  %81 = add i64 %64, 4
  %82 = icmp eq i64 %81, %59
  br i1 %82, label %83, label %61, !llvm.loop !105

83:                                               ; preds = %61
  %84 = icmp eq i64 %56, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %83, %51
  %86 = phi i64 [ %44, %51 ], [ %80, %83 ]
  %87 = phi i64 [ 0, %51 ], [ %76, %83 ]
  %88 = icmp ne i64 %56, 0
  tail call void @llvm.assume(i1 %88)
  br label %89

89:                                               ; preds = %89, %85
  %90 = phi i64 [ %86, %85 ], [ %96, %89 ]
  %91 = phi i64 [ %87, %85 ], [ %93, %89 ]
  %92 = phi i64 [ 0, %85 ], [ %97, %89 ]
  %93 = add nuw nsw i64 %91, 1
  %94 = trunc i64 %90 to i8
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 %91
  store i8 %94, ptr %95, align 1, !tbaa !44
  %96 = lshr i64 %90, 8
  %97 = add i64 %92, 1
  %98 = icmp eq i64 %97, %56
  br i1 %98, label %99, label %89, !llvm.loop !106

99:                                               ; preds = %89, %83
  %100 = phi i64 [ %80, %83 ], [ %96, %89 ]
  store i64 %100, ptr %41, align 8, !tbaa !31
  store i32 0, ptr %38, align 8, !tbaa !32
  %101 = zext nneg i32 %54 to i64
  br label %102

102:                                              ; preds = %102, %99
  %103 = phi i64 [ 0, %99 ], [ %105, %102 ]
  %104 = phi i32 [ 0, %99 ], [ %116, %102 ]
  %105 = add nuw nsw i64 %103, 1
  %106 = icmp samesign ult i32 %104, 2
  %107 = select i1 %106, i32 0, i32 255
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 %103
  %109 = load i8, ptr %108, align 1, !tbaa !44
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %107, %110
  %112 = add nuw nsw i32 %104, 1
  %113 = icmp eq i8 %109, 0
  %114 = sub nuw nsw i32 4, %104
  %115 = select i1 %113, i32 %114, i32 0
  %116 = select i1 %111, i32 %112, i32 %115
  %117 = icmp samesign ult i64 %105, %101
  %118 = icmp samesign ult i32 %116, 4
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %102, label %120, !llvm.loop !107

120:                                              ; preds = %102, %50
  %121 = phi i32 [ 0, %50 ], [ %116, %102 ]
  %122 = getelementptr inbounds nuw i8, ptr %14, i64 140
  store i32 %121, ptr %122, align 4, !tbaa !4
  %123 = load i32, ptr %25, align 8, !tbaa !51
  br label %124

124:                                              ; preds = %34, %120
  %125 = phi i32 [ %121, %120 ], [ %36, %34 ]
  %126 = phi i32 [ %123, %120 ], [ %26, %34 ]
  %127 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %128 = load ptr, ptr %0, align 8, !tbaa !50
  %129 = icmp ne i32 %126, 0
  %130 = icmp ult i32 %125, 4
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %154

132:                                              ; preds = %124
  %133 = zext i32 %126 to i64
  br label %134

134:                                              ; preds = %134, %132
  %135 = phi i64 [ 0, %132 ], [ %137, %134 ]
  %136 = phi i32 [ %125, %132 ], [ %148, %134 ]
  %137 = add nuw nsw i64 %135, 1
  %138 = icmp samesign ult i32 %136, 2
  %139 = select i1 %138, i32 0, i32 255
  %140 = getelementptr inbounds nuw i8, ptr %128, i64 %135
  %141 = load i8, ptr %140, align 1, !tbaa !44
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %139, %142
  %144 = add nuw nsw i32 %136, 1
  %145 = icmp eq i8 %141, 0
  %146 = sub nuw nsw i32 4, %136
  %147 = select i1 %145, i32 %146, i32 0
  %148 = select i1 %143, i32 %144, i32 %147
  %149 = icmp samesign ult i64 %137, %133
  %150 = icmp samesign ult i32 %148, 4
  %151 = select i1 %149, i1 %150, i1 false
  br i1 %151, label %134, label %152, !llvm.loop !107

152:                                              ; preds = %134
  %153 = trunc nuw i64 %137 to i32
  br label %154

154:                                              ; preds = %124, %152
  %155 = phi i32 [ %125, %124 ], [ %148, %152 ]
  %156 = phi i32 [ 0, %124 ], [ %153, %152 ]
  store i32 %155, ptr %127, align 4, !tbaa !4
  %157 = load i32, ptr %25, align 8, !tbaa !51
  %158 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %157, i32 %156), !nosanitize !47
  %159 = extractvalue { i32, i1 } %158, 1, !nosanitize !47
  br i1 %159, label %160, label %161, !prof !48, !nosanitize !47

160:                                              ; preds = %154
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

161:                                              ; preds = %154
  %162 = extractvalue { i32, i1 } %158, 0, !nosanitize !47
  store i32 %162, ptr %25, align 8, !tbaa !51
  %163 = zext i32 %156 to i64
  %164 = getelementptr inbounds nuw i8, ptr %128, i64 %163
  store ptr %164, ptr %0, align 8, !tbaa !50
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %166 = load i64, ptr %165, align 8, !tbaa !22
  %167 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %166, i64 %163), !nosanitize !47
  %168 = extractvalue { i64, i1 } %167, 1, !nosanitize !47
  br i1 %168, label %169, label %170, !prof !48, !nosanitize !47

169:                                              ; preds = %161
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

170:                                              ; preds = %161
  %171 = extractvalue { i64, i1 } %167, 0, !nosanitize !47
  store i64 %171, ptr %165, align 8, !tbaa !22
  %172 = icmp eq i32 %155, 4
  br i1 %172, label %173, label %210

173:                                              ; preds = %170
  %174 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %175 = load i32, ptr %174, align 8, !tbaa !28
  %176 = icmp eq i32 %175, -1
  %177 = getelementptr inbounds nuw i8, ptr %14, i64 16
  br i1 %176, label %181, label %178

178:                                              ; preds = %173
  %179 = load i32, ptr %177, align 8, !tbaa !24
  %180 = and i32 %179, -5
  br label %181

181:                                              ; preds = %173, %178
  %182 = phi i32 [ %180, %178 ], [ 0, %173 ]
  store i32 %182, ptr %177, align 8, !tbaa !24
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %184 = load i64, ptr %183, align 8, !tbaa !103
  %185 = getelementptr inbounds nuw i8, ptr %14, i64 60
  store i32 0, ptr %185, align 4, !tbaa !38
  %186 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 0, ptr %186, align 8, !tbaa !39
  %187 = getelementptr inbounds nuw i8, ptr %14, i64 68
  store i32 0, ptr %187, align 4, !tbaa !40
  %188 = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %188, align 8, !tbaa !21
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %189, align 8, !tbaa !23
  %190 = getelementptr inbounds nuw i8, ptr %14, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %183, i8 0, i64 16, i1 false)
  %191 = load i32, ptr %190, align 8, !tbaa !24
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %181
  %194 = and i32 %191, 1
  %195 = zext nneg i32 %194 to i64
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %195, ptr %196, align 8, !tbaa !25
  br label %197

197:                                              ; preds = %181, %193
  %198 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 0, ptr %198, align 4, !tbaa !26
  %199 = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %199, align 4, !tbaa !27
  %200 = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 32768, ptr %200, align 4, !tbaa !29
  %201 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr null, ptr %201, align 8, !tbaa !30
  %202 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store i64 0, ptr %202, align 8, !tbaa !31
  %203 = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i32 0, ptr %203, align 8, !tbaa !32
  %204 = getelementptr inbounds nuw i8, ptr %14, i64 1368
  %205 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store ptr %204, ptr %205, align 8, !tbaa !33
  %206 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store ptr %204, ptr %206, align 8, !tbaa !34
  %207 = getelementptr inbounds nuw i8, ptr %14, i64 104
  store ptr %204, ptr %207, align 8, !tbaa !35
  %208 = getelementptr inbounds nuw i8, ptr %14, i64 7144
  store i32 1, ptr %208, align 8, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %14, i64 7148
  store i32 -1, ptr %209, align 4, !tbaa !37
  store i64 %171, ptr %165, align 8, !tbaa !22
  store i64 %184, ptr %183, align 8, !tbaa !103
  store i32 %175, ptr %174, align 8, !tbaa !28
  store i32 16191, ptr %20, align 8, !tbaa !20
  br label %210

210:                                              ; preds = %16, %4, %8, %1, %12, %170, %28, %19, %197
  %211 = phi i32 [ 0, %197 ], [ -2, %19 ], [ -5, %28 ], [ -3, %170 ], [ -2, %12 ], [ -2, %1 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %211
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

30:                                               ; preds = %15, %3, %7, %1, %11, %23, %25, %18
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
  %29 = tail call ptr %6(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #13
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
  %41 = tail call ptr %36(ptr noundef %37, i32 noundef %40, i32 noundef 1) #13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load ptr, ptr %9, align 8, !tbaa !14
  %45 = load ptr, ptr %27, align 8, !tbaa !43
  tail call void %44(ptr noundef %45, ptr noundef nonnull %29) #13
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

70:                                               ; preds = %55, %57
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

88:                                               ; preds = %16, %4, %8, %2, %12, %26, %19, %85, %43
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

26:                                               ; preds = %16, %4, %8, %2, %12, %19, %24
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

34:                                               ; preds = %28, %30
  %35 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %36 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %35, ptr %36, align 8, !tbaa !24
  br label %37

37:                                               ; preds = %16, %4, %8, %2, %12, %32, %34, %19
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
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

40:                                               ; preds = %23, %31, %28
  %41 = phi i32 [ %30, %28 ], [ %37, %31 ], [ 0, %23 ]
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %27, %42
  br label %44

44:                                               ; preds = %15, %3, %7, %1, %11, %18, %40
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

31:                                               ; preds = %15, %3, %7, %1, %11, %18, %23
  %32 = phi i64 [ %30, %23 ], [ -1, %18 ], [ -1, %11 ], [ -1, %1 ], [ -1, %7 ], [ -1, %3 ], [ -1, %15 ]
  ret i64 %32
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nomerge noreturn nounwind }

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
