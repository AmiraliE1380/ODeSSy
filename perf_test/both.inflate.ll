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

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
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

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #5

declare void @zcfree(ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
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
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %4 = icmp eq ptr %0, null
  br i1 %4, label %2693, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %2693, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %2693, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %2693, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %2693

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %2693

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %2693, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !50
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %2693

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

88:                                               ; preds = %2366, %39
  %89 = phi i32 [ %40, %39 ], [ %2375, %2366 ]
  %90 = phi ptr [ %30, %39 ], [ %2367, %2366 ]
  %91 = phi ptr [ %27, %39 ], [ %2368, %2366 ]
  %92 = phi i32 [ %44, %39 ], [ %2369, %2366 ]
  %93 = phi i32 [ %42, %39 ], [ %2370, %2366 ]
  %94 = phi i64 [ %46, %39 ], [ %2371, %2366 ]
  %95 = phi i32 [ %48, %39 ], [ %2372, %2366 ]
  %96 = phi i32 [ %42, %39 ], [ %2373, %2366 ]
  %97 = phi i32 [ 0, %39 ], [ %2374, %2366 ]
  %98 = ptrtoaddr ptr %91 to i64
  switch i32 %89, label %2693 [
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
    i32 16204, label %1963
    i32 16205, label %2136
    i32 16206, label %2143
    i32 16207, label %103
    i32 16208, label %2499
    i32 16209, label %2500
    i32 16210, label %2692
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !53
  br label %1893

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !53
  br label %1659

103:                                              ; preds = %88
  %104 = load i32, ptr %49, align 8, !tbaa !24
  br label %2273

105:                                              ; preds = %88
  %106 = icmp ult i32 %95, 14
  br i1 %106, label %107, label %1066

107:                                              ; preds = %105
  %108 = zext nneg i32 %95 to i64
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %2481, label %1034

110:                                              ; preds = %88
  %111 = icmp ult i32 %95, 32
  br i1 %111, label %112, label %835

112:                                              ; preds = %110
  %113 = zext nneg i32 %95 to i64
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %2418, label %782

115:                                              ; preds = %88
  %116 = icmp ult i32 %95, 16
  br i1 %116, label %117, label %250

117:                                              ; preds = %115
  %118 = zext nneg i32 %95 to i64
  %119 = icmp eq i32 %92, 0
  br i1 %119, label %2412, label %218

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
  br i1 %127, label %2382, label %129

128:                                              ; preds = %120
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2366

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
  br i1 %143, label %2382, label %144

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
  br label %2366

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
  br label %2366

193:                                              ; preds = %185
  %194 = and i64 %164, 15
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2366

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
  br label %2366

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
  br label %2366

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
  br i1 %232, label %2412, label %233

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
  br label %2366

259:                                              ; preds = %250
  %260 = and i32 %255, 57344
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2366

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
  br i1 %289, label %2406, label %290

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
  br i1 %304, label %2406, label %305

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
  br i1 %318, label %2406, label %319

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
  br i1 %332, label %2406, label %333

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
  br i1 %372, label %2400, label %373

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
  br i1 %387, label %2400, label %388

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
  br i1 %440, label %2394, label %441

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
  br i1 %455, label %2394, label %456

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
  br i1 %578, label %579, label %2500

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
  br i1 %591, label %2500, label %592

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
  br i1 %615, label %2500, label %643

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
  br i1 %655, label %2500, label %656

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
  br i1 %679, label %2500, label %707

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
  br i1 %722, label %2388, label %723

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
  br i1 %737, label %2388, label %738

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
  br label %2366

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
  br label %2366

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
  br i1 %796, label %2418, label %797

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
  br i1 %810, label %2418, label %811

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
  br i1 %824, label %2418, label %825

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
  br label %2693

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
  br i1 %82, label %2500, label %857

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
  br i1 %868, label %2500, label %878

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
  br label %2366

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
  br label %2500

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
  br label %2366

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
  br i1 %924, label %2424, label %925

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
  br i1 %939, label %2424, label %940

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
  br i1 %953, label %2424, label %954

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
  br i1 %967, label %2424, label %968

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
  br label %2366

994:                                              ; preds = %984
  %995 = trunc i64 %987 to i32
  %996 = and i32 %995, 65535
  store i32 %996, ptr %56, align 4, !tbaa !61
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2500, label %997

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
  br i1 %1012, label %2500, label %1013

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
  br label %2366

1033:                                             ; preds = %1002
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2366

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
  br i1 %1048, label %2481, label %1049

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
  br label %2366

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
  br i1 %1118, label %2500, label %1119

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
  br label %2366

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
  br i1 %1201, label %2376, label %1202

1202:                                             ; preds = %1200
  %1203 = zext nneg i32 %1189 to i64
  br label %1206

1204:                                             ; preds = %1217
  %1205 = icmp eq i32 %1220, 0
  br i1 %1205, label %2376, label %1206

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
  br i1 %1280, label %2471, label %1281

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
  br label %2366

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
  br i1 %1324, label %2476, label %1325

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
  br i1 %1361, label %2466, label %1362

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
  br label %2366

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
  br label %2366

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
  br label %2366

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
  br label %2366

1476:                                             ; preds = %1467
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2500, label %1477

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
  br i1 %1500, label %1501, label %2366

1501:                                             ; preds = %1492
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2366

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
  br i1 %1516, label %2460, label %1517

1517:                                             ; preds = %1515
  %1518 = zext nneg i32 %1487 to i64
  br label %1521

1519:                                             ; preds = %1532
  %1520 = icmp eq i32 %1535, 0
  br i1 %1520, label %2460, label %1521

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
  br i1 %1579, label %2454, label %1580

1580:                                             ; preds = %1578
  %1581 = zext nneg i32 %1553 to i64
  br label %1584

1582:                                             ; preds = %1595
  %1583 = icmp eq i32 %1598, 0
  br i1 %1583, label %2454, label %1584

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
  %1615 = phi ptr [ %1572, %1561 ], [ %1605, %1612 ]
  %1616 = phi ptr [ %1550, %1561 ], [ %1597, %1612 ]
  %1617 = phi i32 [ %1551, %1561 ], [ %1598, %1612 ]
  %1618 = phi i64 [ %1552, %1561 ], [ %1596, %1612 ]
  %1619 = phi i32 [ %1553, %1561 ], [ %1613, %1612 ]
  %1620 = phi i8 [ %1574, %1561 ], [ %1607, %1612 ]
  %1621 = load i8, ptr %1615, align 2, !tbaa !44
  %1622 = getelementptr inbounds nuw i8, ptr %1615, i64 2
  %1623 = load i16, ptr %1622, align 2, !tbaa !77
  %1624 = sub nuw i32 %1619, %1555
  %1625 = zext nneg i8 %1554 to i64
  %1626 = lshr i64 %1618, %1625
  store i32 %1555, ptr %71, align 4, !tbaa !37
  br label %1627

1627:                                             ; preds = %1548, %1614
  %1628 = phi i32 [ %1555, %1614 ], [ 0, %1548 ]
  %1629 = phi ptr [ %1616, %1614 ], [ %1550, %1548 ]
  %1630 = phi i32 [ %1617, %1614 ], [ %1551, %1548 ]
  %1631 = phi i64 [ %1626, %1614 ], [ %1552, %1548 ]
  %1632 = phi i32 [ %1624, %1614 ], [ %1553, %1548 ]
  %1633 = phi i16 [ %1623, %1614 ], [ %1557, %1548 ]
  %1634 = phi i8 [ %1620, %1614 ], [ %1554, %1548 ]
  %1635 = phi i8 [ %1621, %1614 ], [ %1558, %1548 ]
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
  %1644 = add nsw i32 %1628, %1636
  store i32 %1644, ptr %71, align 4, !tbaa !37
  %1645 = zext i16 %1633 to i32
  store i32 %1645, ptr %56, align 4, !tbaa !61
  %1646 = zext i8 %1635 to i32
  %1647 = icmp eq i8 %1635, 0
  br i1 %1647, label %1648, label %1649

1648:                                             ; preds = %1643
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2366

1649:                                             ; preds = %1643
  %1650 = and i32 %1646, 32
  %1651 = icmp eq i32 %1650, 0
  br i1 %1651, label %1653, label %1652

1652:                                             ; preds = %1649
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2366

1653:                                             ; preds = %1649
  %1654 = and i32 %1646, 64
  %1655 = icmp eq i32 %1654, 0
  br i1 %1655, label %1657, label %1656

1656:                                             ; preds = %1653
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2366

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
  br i1 %1670, label %2448, label %1671

1671:                                             ; preds = %1669
  %1672 = zext i32 %1664 to i64
  br label %1675

1673:                                             ; preds = %1692
  %1674 = icmp eq i32 %1680, 0
  br i1 %1674, label %2448, label %1675, !llvm.loop !91

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
  br i1 %1749, label %2442, label %1750

1750:                                             ; preds = %1748
  %1751 = zext nneg i32 %1734 to i64
  br label %1754

1752:                                             ; preds = %1765
  %1753 = icmp eq i32 %1768, 0
  br i1 %1753, label %2442, label %1754

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
  br i1 %1792, label %1793, label %1865

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
  br i1 %1809, label %1810, label %1847

1810:                                             ; preds = %1793
  %1811 = icmp eq i32 %1784, 0
  br i1 %1811, label %2436, label %1812

1812:                                             ; preds = %1810
  %1813 = zext nneg i32 %1786 to i64
  br label %1816

1814:                                             ; preds = %1828
  %1815 = icmp eq i32 %1831, 0
  br i1 %1815, label %2436, label %1816

1816:                                             ; preds = %1812, %1814
  %1817 = phi ptr [ %1783, %1812 ], [ %1830, %1814 ]
  %1818 = phi i32 [ %1784, %1812 ], [ %1831, %1814 ]
  %1819 = phi i64 [ %1785, %1812 ], [ %1829, %1814 ]
  %1820 = phi i64 [ %1813, %1812 ], [ %1832, %1814 ]
  %1821 = load i8, ptr %1817, align 1, !tbaa !44
  %1822 = zext i8 %1821 to i64
  %1823 = shl i64 %1822, %1820
  %1824 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1819, i64 %1823), !nosanitize !47
  %1825 = extractvalue { i64, i1 } %1824, 1, !nosanitize !47
  br i1 %1825, label %1826, label %1828, !prof !48, !nosanitize !47

1826:                                             ; preds = %1816
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1827:                                             ; preds = %1880, %1847
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1828:                                             ; preds = %1816
  %1829 = extractvalue { i64, i1 } %1824, 0, !nosanitize !47
  %1830 = getelementptr inbounds nuw i8, ptr %1817, i64 1
  %1831 = add i32 %1818, -1
  %1832 = add nuw nsw i64 %1820, 8
  %1833 = trunc i64 %1829 to i32
  %1834 = and i32 %1833, %1797
  %1835 = lshr i32 %1834, %1788
  %1836 = add nuw i32 %1835, %1798
  %1837 = zext i32 %1836 to i64
  %1838 = getelementptr inbounds nuw [4 x i8], ptr %1739, i64 %1837
  %1839 = getelementptr inbounds nuw i8, ptr %1838, i64 1
  %1840 = load i8, ptr %1839, align 1, !tbaa !44
  %1841 = zext i8 %1840 to i32
  %1842 = add nuw nsw i32 %1788, %1841
  %1843 = zext nneg i32 %1842 to i64
  %1844 = icmp samesign ult i64 %1832, %1843
  br i1 %1844, label %1814, label %1845

1845:                                             ; preds = %1828
  %1846 = trunc nuw nsw i64 %1832 to i32
  br label %1847

1847:                                             ; preds = %1845, %1793
  %1848 = phi ptr [ %1804, %1793 ], [ %1838, %1845 ]
  %1849 = phi ptr [ %1783, %1793 ], [ %1830, %1845 ]
  %1850 = phi i32 [ %1784, %1793 ], [ %1831, %1845 ]
  %1851 = phi i64 [ %1785, %1793 ], [ %1829, %1845 ]
  %1852 = phi i32 [ %1786, %1793 ], [ %1846, %1845 ]
  %1853 = phi i8 [ %1806, %1793 ], [ %1840, %1845 ]
  %1854 = load i32, ptr %71, align 4, !tbaa !37
  %1855 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1854, i32 %1788), !nosanitize !47
  %1856 = extractvalue { i32, i1 } %1855, 1, !nosanitize !47
  br i1 %1856, label %1827, label %1857, !prof !48, !nosanitize !47

1857:                                             ; preds = %1847
  %1858 = getelementptr inbounds nuw i8, ptr %1848, i64 2
  %1859 = load i16, ptr %1858, align 2, !tbaa !77
  %1860 = load i8, ptr %1848, align 2, !tbaa !44
  %1861 = sub nuw i32 %1852, %1788
  %1862 = zext nneg i8 %1787 to i64
  %1863 = lshr i64 %1851, %1862
  %1864 = extractvalue { i32, i1 } %1855, 0, !nosanitize !47
  store i32 %1864, ptr %71, align 4, !tbaa !37
  br label %1865

1865:                                             ; preds = %1781, %1857
  %1866 = phi ptr [ %1849, %1857 ], [ %1783, %1781 ]
  %1867 = phi i32 [ %1850, %1857 ], [ %1784, %1781 ]
  %1868 = phi i64 [ %1863, %1857 ], [ %1785, %1781 ]
  %1869 = phi i32 [ %1861, %1857 ], [ %1786, %1781 ]
  %1870 = phi i16 [ %1859, %1857 ], [ %1790, %1781 ]
  %1871 = phi i8 [ %1853, %1857 ], [ %1787, %1781 ]
  %1872 = phi i8 [ %1860, %1857 ], [ %1791, %1781 ]
  %1873 = zext i8 %1871 to i32
  %1874 = zext nneg i8 %1871 to i64
  %1875 = lshr i64 %1868, %1874
  %1876 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1869, i32 %1873), !nosanitize !47
  %1877 = extractvalue { i32, i1 } %1876, 0, !nosanitize !47
  %1878 = extractvalue { i32, i1 } %1876, 1, !nosanitize !47
  br i1 %1878, label %1879, label %1880, !prof !48, !nosanitize !47

1879:                                             ; preds = %1865
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1880:                                             ; preds = %1865
  %1881 = load i32, ptr %71, align 4, !tbaa !37
  %1882 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1881, i32 %1873), !nosanitize !47
  %1883 = extractvalue { i32, i1 } %1882, 1, !nosanitize !47
  br i1 %1883, label %1827, label %1884, !prof !48, !nosanitize !47

1884:                                             ; preds = %1880
  %1885 = extractvalue { i32, i1 } %1882, 0, !nosanitize !47
  store i32 %1885, ptr %71, align 4, !tbaa !37
  %1886 = zext i8 %1872 to i32
  %1887 = and i32 %1886, 64
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %1890, label %1889

1889:                                             ; preds = %1884
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2366

1890:                                             ; preds = %1884
  %1891 = zext i16 %1870 to i32
  store i32 %1891, ptr %74, align 8, !tbaa !93
  %1892 = and i32 %1886, 15
  store i32 %1892, ptr %72, align 4, !tbaa !53
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1893

1893:                                             ; preds = %99, %1890
  %1894 = phi i32 [ %1892, %1890 ], [ %100, %99 ]
  %1895 = phi ptr [ %1866, %1890 ], [ %90, %99 ]
  %1896 = phi i32 [ %1867, %1890 ], [ %92, %99 ]
  %1897 = phi i64 [ %1875, %1890 ], [ %94, %99 ]
  %1898 = phi i32 [ %1877, %1890 ], [ %95, %99 ]
  %1899 = phi i32 [ %1735, %1890 ], [ %97, %99 ]
  %1900 = icmp eq i32 %1894, 0
  br i1 %1900, label %1958, label %1901

1901:                                             ; preds = %1893
  %1902 = icmp ult i32 %1898, %1894
  br i1 %1902, label %1903, label %1930

1903:                                             ; preds = %1901
  %1904 = icmp eq i32 %1896, 0
  br i1 %1904, label %2430, label %1905

1905:                                             ; preds = %1903
  %1906 = zext i32 %1898 to i64
  br label %1909

1907:                                             ; preds = %1926
  %1908 = icmp eq i32 %1914, 0
  br i1 %1908, label %2430, label %1909, !llvm.loop !94

1909:                                             ; preds = %1905, %1907
  %1910 = phi ptr [ %1895, %1905 ], [ %1915, %1907 ]
  %1911 = phi i32 [ %1896, %1905 ], [ %1914, %1907 ]
  %1912 = phi i64 [ %1897, %1905 ], [ %1920, %1907 ]
  %1913 = phi i64 [ %1906, %1905 ], [ %1927, %1907 ]
  %1914 = add i32 %1911, -1
  %1915 = getelementptr inbounds nuw i8, ptr %1910, i64 1
  %1916 = load i8, ptr %1910, align 1, !tbaa !44
  %1917 = zext i8 %1916 to i64
  %1918 = shl i64 %1917, %1913
  %1919 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1912, i64 %1918), !nosanitize !47
  %1920 = extractvalue { i64, i1 } %1919, 0, !nosanitize !47
  %1921 = extractvalue { i64, i1 } %1919, 1, !nosanitize !47
  br i1 %1921, label %1922, label %1923, !prof !48, !nosanitize !47

1922:                                             ; preds = %1909
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1923:                                             ; preds = %1909
  %1924 = icmp samesign ugt i64 %1913, 4294967287
  br i1 %1924, label %1925, label %1926, !prof !48, !nosanitize !47

1925:                                             ; preds = %1923
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1926:                                             ; preds = %1923
  %1927 = add nuw nsw i64 %1913, 8
  %1928 = trunc nuw i64 %1927 to i32
  %1929 = icmp ugt i32 %1894, %1928
  br i1 %1929, label %1907, label %1930, !llvm.loop !94

1930:                                             ; preds = %1926, %1901
  %1931 = phi ptr [ %1895, %1901 ], [ %1915, %1926 ]
  %1932 = phi i32 [ %1896, %1901 ], [ %1914, %1926 ]
  %1933 = phi i64 [ %1897, %1901 ], [ %1920, %1926 ]
  %1934 = phi i32 [ %1898, %1901 ], [ %1928, %1926 ]
  %1935 = shl nsw i32 -1, %1894
  %1936 = xor i32 %1935, -1
  %1937 = trunc i64 %1933 to i32
  %1938 = and i32 %1937, %1936
  %1939 = load i32, ptr %74, align 8, !tbaa !93
  %1940 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1939, i32 %1938), !nosanitize !47
  %1941 = extractvalue { i32, i1 } %1940, 1, !nosanitize !47
  br i1 %1941, label %1942, label %1943, !prof !48, !nosanitize !47

1942:                                             ; preds = %1930
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1943:                                             ; preds = %1930
  %1944 = extractvalue { i32, i1 } %1940, 0, !nosanitize !47
  store i32 %1944, ptr %74, align 8, !tbaa !93
  %1945 = zext nneg i32 %1894 to i64
  %1946 = lshr i64 %1933, %1945
  %1947 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1934, i32 %1894), !nosanitize !47
  %1948 = extractvalue { i32, i1 } %1947, 0, !nosanitize !47
  %1949 = extractvalue { i32, i1 } %1947, 1, !nosanitize !47
  br i1 %1949, label %1950, label %1951, !prof !48, !nosanitize !47

1950:                                             ; preds = %1943
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1951:                                             ; preds = %1943
  %1952 = load i32, ptr %71, align 4, !tbaa !37
  %1953 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1952, i32 %1894), !nosanitize !47
  %1954 = extractvalue { i32, i1 } %1953, 1, !nosanitize !47
  br i1 %1954, label %1955, label %1956, !prof !48, !nosanitize !47

1955:                                             ; preds = %1951
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

1956:                                             ; preds = %1951
  %1957 = extractvalue { i32, i1 } %1953, 0, !nosanitize !47
  store i32 %1957, ptr %71, align 4, !tbaa !37
  br label %1958

1958:                                             ; preds = %1956, %1893
  %1959 = phi ptr [ %1931, %1956 ], [ %1895, %1893 ]
  %1960 = phi i32 [ %1932, %1956 ], [ %1896, %1893 ]
  %1961 = phi i64 [ %1946, %1956 ], [ %1897, %1893 ]
  %1962 = phi i32 [ %1948, %1956 ], [ %1898, %1893 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1963

1963:                                             ; preds = %88, %1958
  %1964 = phi ptr [ %1959, %1958 ], [ %90, %88 ]
  %1965 = phi i32 [ %1960, %1958 ], [ %92, %88 ]
  %1966 = phi i64 [ %1961, %1958 ], [ %94, %88 ]
  %1967 = phi i32 [ %1962, %1958 ], [ %95, %88 ]
  %1968 = phi i32 [ %1899, %1958 ], [ %97, %88 ]
  %1969 = icmp eq i32 %93, 0
  br i1 %1969, label %2500, label %1970

1970:                                             ; preds = %1963
  %1971 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %1972 = extractvalue { i32, i1 } %1971, 0, !nosanitize !47
  %1973 = extractvalue { i32, i1 } %1971, 1, !nosanitize !47
  br i1 %1973, label %1974, label %1975, !prof !48, !nosanitize !47

1974:                                             ; preds = %1970
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1975:                                             ; preds = %1970
  %1976 = load i32, ptr %74, align 8, !tbaa !93
  %1977 = icmp ugt i32 %1976, %1972
  br i1 %1977, label %1978, label %2007

1978:                                             ; preds = %1975
  %1979 = sub nuw i32 %1976, %1972
  %1980 = load i32, ptr %75, align 8, !tbaa !39
  %1981 = icmp ugt i32 %1979, %1980
  br i1 %1981, label %1982, label %1986

1982:                                             ; preds = %1978
  %1983 = load i32, ptr %76, align 8, !tbaa !36
  %1984 = icmp eq i32 %1983, 0
  br i1 %1984, label %1986, label %1985

1985:                                             ; preds = %1982
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2366

1986:                                             ; preds = %1982, %1978
  %1987 = load i32, ptr %77, align 4, !tbaa !40
  %1988 = icmp ugt i32 %1979, %1987
  br i1 %1988, label %1989, label %1997

1989:                                             ; preds = %1986
  %1990 = sub nuw i32 %1979, %1987
  %1991 = load i32, ptr %79, align 4, !tbaa !38
  %1992 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1991, i32 %1990), !nosanitize !47
  %1993 = extractvalue { i32, i1 } %1992, 1, !nosanitize !47
  br i1 %1993, label %1994, label %1995, !prof !48, !nosanitize !47

1994:                                             ; preds = %1989
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

1995:                                             ; preds = %1989
  %1996 = extractvalue { i32, i1 } %1992, 0, !nosanitize !47
  br label %1999

1997:                                             ; preds = %1986
  %1998 = sub nuw i32 %1987, %1979
  br label %1999

1999:                                             ; preds = %1997, %1995
  %2000 = phi i32 [ %1998, %1997 ], [ %1996, %1995 ]
  %2001 = phi i32 [ %1979, %1997 ], [ %1990, %1995 ]
  %2002 = load ptr, ptr %78, align 8, !tbaa !41
  %2003 = zext i32 %2000 to i64
  %2004 = getelementptr inbounds nuw i8, ptr %2002, i64 %2003
  %2005 = load i32, ptr %56, align 4, !tbaa !61
  %2006 = call i32 @llvm.umin.i32(i32 %2001, i32 %2005)
  br label %2012

2007:                                             ; preds = %1975
  %2008 = zext i32 %1976 to i64
  %2009 = sub nsw i64 0, %2008
  %2010 = getelementptr inbounds i8, ptr %91, i64 %2009
  %2011 = load i32, ptr %56, align 4, !tbaa !61
  br label %2012

2012:                                             ; preds = %1999, %2007
  %2013 = phi i32 [ %2011, %2007 ], [ %2005, %1999 ]
  %2014 = phi i32 [ %2011, %2007 ], [ %2006, %1999 ]
  %2015 = phi ptr [ %2010, %2007 ], [ %2004, %1999 ]
  %2016 = ptrtoaddr ptr %2015 to i64
  %2017 = call i32 @llvm.umin.i32(i32 %2014, i32 %93)
  %2018 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %2017), !nosanitize !47
  %2019 = extractvalue { i32, i1 } %2018, 0, !nosanitize !47
  %2020 = extractvalue { i32, i1 } %2018, 1, !nosanitize !47
  br i1 %2020, label %2021, label %2022, !prof !48, !nosanitize !47

2021:                                             ; preds = %2012
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2022:                                             ; preds = %2012
  %2023 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2013, i32 %2017), !nosanitize !47
  %2024 = extractvalue { i32, i1 } %2023, 1, !nosanitize !47
  br i1 %2024, label %2025, label %2026, !prof !48, !nosanitize !47

2025:                                             ; preds = %2022
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2026:                                             ; preds = %2022
  %2027 = extractvalue { i32, i1 } %2023, 0, !nosanitize !47
  store i32 %2027, ptr %56, align 4, !tbaa !61
  %2028 = icmp eq i32 %2017, 0
  br i1 %2028, label %2099, label %2029, !prof !48, !nosanitize !47

2029:                                             ; preds = %2026
  %2030 = call i32 @llvm.umin.i32(i32 %2014, i32 %93)
  %2031 = zext i32 %2030 to i64
  %2032 = icmp ult i32 %2030, 4
  %2033 = sub i64 %98, %2016
  %2034 = icmp ult i64 %2033, 32
  %2035 = select i1 %2032, i1 true, i1 %2034
  br i1 %2035, label %2075, label %2036

2036:                                             ; preds = %2029
  %2037 = icmp ult i32 %2030, 32
  br i1 %2037, label %2059, label %2038

2038:                                             ; preds = %2036
  %2039 = and i64 %2031, 28
  %2040 = and i64 %2031, 4294967264
  %2041 = getelementptr i8, ptr %91, i64 %2040
  %2042 = trunc nuw i64 %2040 to i32
  %2043 = sub i32 %2017, %2042
  %2044 = getelementptr i8, ptr %2015, i64 %2040
  br label %2045

2045:                                             ; preds = %2045, %2038
  %2046 = phi i64 [ 0, %2038 ], [ %2053, %2045 ]
  %2047 = getelementptr i8, ptr %91, i64 %2046
  %2048 = getelementptr i8, ptr %2015, i64 %2046
  %2049 = getelementptr i8, ptr %2048, i64 16
  %2050 = load <16 x i8>, ptr %2048, align 1, !tbaa !44
  %2051 = load <16 x i8>, ptr %2049, align 1, !tbaa !44
  %2052 = getelementptr i8, ptr %2047, i64 16
  store <16 x i8> %2050, ptr %2047, align 1, !tbaa !44
  store <16 x i8> %2051, ptr %2052, align 1, !tbaa !44
  %2053 = add nuw i64 %2046, 32
  %2054 = icmp eq i64 %2053, %2040
  br i1 %2054, label %2055, label %2045, !llvm.loop !95

2055:                                             ; preds = %2045
  %2056 = icmp eq i64 %2040, %2031
  br i1 %2056, label %2131, label %2057

2057:                                             ; preds = %2055
  %2058 = icmp eq i64 %2039, 0
  br i1 %2058, label %2075, label %2059, !prof !98

2059:                                             ; preds = %2036, %2057
  %2060 = phi i64 [ %2040, %2057 ], [ 0, %2036 ]
  %2061 = and i64 %2031, 4294967292
  %2062 = getelementptr i8, ptr %91, i64 %2061
  %2063 = trunc nuw i64 %2061 to i32
  %2064 = sub i32 %2017, %2063
  %2065 = getelementptr i8, ptr %2015, i64 %2061
  br label %2066

2066:                                             ; preds = %2066, %2059
  %2067 = phi i64 [ %2060, %2059 ], [ %2071, %2066 ]
  %2068 = getelementptr i8, ptr %91, i64 %2067
  %2069 = getelementptr i8, ptr %2015, i64 %2067
  %2070 = load <4 x i8>, ptr %2069, align 1, !tbaa !44
  store <4 x i8> %2070, ptr %2068, align 1, !tbaa !44
  %2071 = add nuw i64 %2067, 4
  %2072 = icmp eq i64 %2071, %2061
  br i1 %2072, label %2073, label %2066, !llvm.loop !99

2073:                                             ; preds = %2066
  %2074 = icmp eq i64 %2061, %2031
  br i1 %2074, label %2131, label %2075

2075:                                             ; preds = %2029, %2057, %2073
  %2076 = phi ptr [ %91, %2029 ], [ %2041, %2057 ], [ %2062, %2073 ]
  %2077 = phi i32 [ %2017, %2029 ], [ %2043, %2057 ], [ %2064, %2073 ]
  %2078 = phi ptr [ %2015, %2029 ], [ %2044, %2057 ], [ %2065, %2073 ]
  %2079 = add i32 %2077, -1
  %2080 = and i32 %2077, 7
  %2081 = icmp eq i32 %2080, 0
  br i1 %2081, label %2093, label %2082

2082:                                             ; preds = %2075, %2082
  %2083 = phi ptr [ %2088, %2082 ], [ %2076, %2075 ]
  %2084 = phi i32 [ %2089, %2082 ], [ %2077, %2075 ]
  %2085 = phi ptr [ %2090, %2082 ], [ %2078, %2075 ]
  %2086 = phi i32 [ %2091, %2082 ], [ 0, %2075 ]
  %2087 = load i8, ptr %2085, align 1, !tbaa !44
  store i8 %2087, ptr %2083, align 1, !tbaa !44
  %2088 = getelementptr inbounds nuw i8, ptr %2083, i64 1
  %2089 = add i32 %2084, -1
  %2090 = getelementptr inbounds nuw i8, ptr %2085, i64 1
  %2091 = add i32 %2086, 1
  %2092 = icmp eq i32 %2091, %2080
  br i1 %2092, label %2093, label %2082, !llvm.loop !100

2093:                                             ; preds = %2082, %2075
  %2094 = phi ptr [ poison, %2075 ], [ %2088, %2082 ]
  %2095 = phi ptr [ %2076, %2075 ], [ %2088, %2082 ]
  %2096 = phi i32 [ %2077, %2075 ], [ %2089, %2082 ]
  %2097 = phi ptr [ %2078, %2075 ], [ %2090, %2082 ]
  %2098 = icmp ult i32 %2079, 7
  br i1 %2098, label %2131, label %2101

2099:                                             ; preds = %2026
  %2100 = load i8, ptr %2015, align 1, !tbaa !44
  store i8 %2100, ptr %91, align 1, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2101:                                             ; preds = %2093, %2101
  %2102 = phi ptr [ %2127, %2101 ], [ %2095, %2093 ]
  %2103 = phi i32 [ %2128, %2101 ], [ %2096, %2093 ]
  %2104 = phi ptr [ %2129, %2101 ], [ %2097, %2093 ]
  %2105 = load i8, ptr %2104, align 1, !tbaa !44
  store i8 %2105, ptr %2102, align 1, !tbaa !44
  %2106 = getelementptr inbounds nuw i8, ptr %2102, i64 1
  %2107 = getelementptr inbounds nuw i8, ptr %2104, i64 1
  %2108 = load i8, ptr %2107, align 1, !tbaa !44
  store i8 %2108, ptr %2106, align 1, !tbaa !44
  %2109 = getelementptr inbounds nuw i8, ptr %2102, i64 2
  %2110 = getelementptr inbounds nuw i8, ptr %2104, i64 2
  %2111 = load i8, ptr %2110, align 1, !tbaa !44
  store i8 %2111, ptr %2109, align 1, !tbaa !44
  %2112 = getelementptr inbounds nuw i8, ptr %2102, i64 3
  %2113 = getelementptr inbounds nuw i8, ptr %2104, i64 3
  %2114 = load i8, ptr %2113, align 1, !tbaa !44
  store i8 %2114, ptr %2112, align 1, !tbaa !44
  %2115 = getelementptr inbounds nuw i8, ptr %2102, i64 4
  %2116 = getelementptr inbounds nuw i8, ptr %2104, i64 4
  %2117 = load i8, ptr %2116, align 1, !tbaa !44
  store i8 %2117, ptr %2115, align 1, !tbaa !44
  %2118 = getelementptr inbounds nuw i8, ptr %2102, i64 5
  %2119 = getelementptr inbounds nuw i8, ptr %2104, i64 5
  %2120 = load i8, ptr %2119, align 1, !tbaa !44
  store i8 %2120, ptr %2118, align 1, !tbaa !44
  %2121 = getelementptr inbounds nuw i8, ptr %2102, i64 6
  %2122 = getelementptr inbounds nuw i8, ptr %2104, i64 6
  %2123 = load i8, ptr %2122, align 1, !tbaa !44
  store i8 %2123, ptr %2121, align 1, !tbaa !44
  %2124 = getelementptr inbounds nuw i8, ptr %2102, i64 7
  %2125 = getelementptr inbounds nuw i8, ptr %2104, i64 7
  %2126 = load i8, ptr %2125, align 1, !tbaa !44
  store i8 %2126, ptr %2124, align 1, !tbaa !44
  %2127 = getelementptr inbounds nuw i8, ptr %2102, i64 8
  %2128 = add i32 %2103, -8
  %2129 = getelementptr inbounds nuw i8, ptr %2104, i64 8
  %2130 = icmp eq i32 %2128, 0
  br i1 %2130, label %2131, label %2101, !llvm.loop !102

2131:                                             ; preds = %2093, %2101, %2073, %2055
  %2132 = phi ptr [ %2062, %2073 ], [ %2041, %2055 ], [ %2094, %2093 ], [ %2127, %2101 ]
  %2133 = load i32, ptr %56, align 4, !tbaa !61
  %2134 = icmp eq i32 %2133, 0
  br i1 %2134, label %2135, label %2366

2135:                                             ; preds = %2131
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2366

2136:                                             ; preds = %88
  %2137 = icmp eq i32 %93, 0
  br i1 %2137, label %2500, label %2138

2138:                                             ; preds = %2136
  %2139 = load i32, ptr %56, align 4, !tbaa !61
  %2140 = trunc i32 %2139 to i8
  store i8 %2140, ptr %91, align 1, !tbaa !44
  %2141 = add i32 %93, -1
  %2142 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2366

2143:                                             ; preds = %88
  %2144 = load i32, ptr %49, align 8, !tbaa !24
  %2145 = icmp eq i32 %2144, 0
  br i1 %2145, label %2266, label %2146

2146:                                             ; preds = %2143
  %2147 = icmp ult i32 %95, 32
  br i1 %2147, label %2148, label %2211

2148:                                             ; preds = %2146
  %2149 = zext nneg i32 %95 to i64
  %2150 = icmp eq i32 %92, 0
  br i1 %2150, label %2493, label %2151

2151:                                             ; preds = %2148
  %2152 = load i8, ptr %90, align 1, !tbaa !44
  %2153 = zext i8 %2152 to i64
  %2154 = shl nuw nsw i64 %2153, %2149
  %2155 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %2154), !nosanitize !47
  %2156 = extractvalue { i64, i1 } %2155, 1, !nosanitize !47
  br i1 %2156, label %2157, label %2158, !prof !48, !nosanitize !47

2157:                                             ; preds = %2194, %2180, %2166, %2151
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2158:                                             ; preds = %2151
  %2159 = extractvalue { i64, i1 } %2155, 0, !nosanitize !47
  %2160 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %2161 = add i32 %92, -1
  %2162 = add nuw nsw i64 %2149, 8
  %2163 = icmp ult i32 %95, 24
  br i1 %2163, label %2164, label %2205

2164:                                             ; preds = %2158
  %2165 = icmp eq i32 %2161, 0
  br i1 %2165, label %2493, label %2166

2166:                                             ; preds = %2164
  %2167 = load i8, ptr %2160, align 1, !tbaa !44
  %2168 = zext i8 %2167 to i64
  %2169 = shl nuw nsw i64 %2168, %2162
  %2170 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2159, i64 %2169), !nosanitize !47
  %2171 = extractvalue { i64, i1 } %2170, 1, !nosanitize !47
  br i1 %2171, label %2157, label %2172, !prof !48, !nosanitize !47

2172:                                             ; preds = %2166
  %2173 = extractvalue { i64, i1 } %2170, 0, !nosanitize !47
  %2174 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %2175 = add i32 %92, -2
  %2176 = add nuw nsw i64 %2149, 16
  %2177 = icmp ult i32 %95, 16
  br i1 %2177, label %2178, label %2205

2178:                                             ; preds = %2172
  %2179 = icmp eq i32 %2175, 0
  br i1 %2179, label %2493, label %2180

2180:                                             ; preds = %2178
  %2181 = load i8, ptr %2174, align 1, !tbaa !44
  %2182 = zext i8 %2181 to i64
  %2183 = shl nuw nsw i64 %2182, %2176
  %2184 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2173, i64 %2183), !nosanitize !47
  %2185 = extractvalue { i64, i1 } %2184, 1, !nosanitize !47
  br i1 %2185, label %2157, label %2186, !prof !48, !nosanitize !47

2186:                                             ; preds = %2180
  %2187 = extractvalue { i64, i1 } %2184, 0, !nosanitize !47
  %2188 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %2189 = add i32 %92, -3
  %2190 = add nuw nsw i64 %2149, 24
  %2191 = icmp ult i32 %95, 8
  br i1 %2191, label %2192, label %2205

2192:                                             ; preds = %2186
  %2193 = icmp eq i32 %2189, 0
  br i1 %2193, label %2493, label %2194

2194:                                             ; preds = %2192
  %2195 = load i8, ptr %2188, align 1, !tbaa !44
  %2196 = zext i8 %2195 to i64
  %2197 = shl nuw nsw i64 %2196, %2190
  %2198 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2187, i64 %2197), !nosanitize !47
  %2199 = extractvalue { i64, i1 } %2198, 1, !nosanitize !47
  br i1 %2199, label %2157, label %2200, !prof !48, !nosanitize !47

2200:                                             ; preds = %2194
  %2201 = extractvalue { i64, i1 } %2198, 0, !nosanitize !47
  %2202 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %2203 = add i32 %92, -4
  %2204 = or disjoint i64 %2149, 32
  br label %2205

2205:                                             ; preds = %2200, %2186, %2172, %2158
  %2206 = phi i64 [ %2159, %2158 ], [ %2173, %2172 ], [ %2187, %2186 ], [ %2201, %2200 ]
  %2207 = phi ptr [ %2160, %2158 ], [ %2174, %2172 ], [ %2188, %2186 ], [ %2202, %2200 ]
  %2208 = phi i32 [ %2161, %2158 ], [ %2175, %2172 ], [ %2189, %2186 ], [ %2203, %2200 ]
  %2209 = phi i64 [ %2162, %2158 ], [ %2176, %2172 ], [ %2190, %2186 ], [ %2204, %2200 ]
  %2210 = trunc nuw nsw i64 %2209 to i32
  br label %2211

2211:                                             ; preds = %2205, %2146
  %2212 = phi ptr [ %90, %2146 ], [ %2207, %2205 ]
  %2213 = phi i32 [ %92, %2146 ], [ %2208, %2205 ]
  %2214 = phi i64 [ %94, %2146 ], [ %2206, %2205 ]
  %2215 = phi i32 [ %95, %2146 ], [ %2210, %2205 ]
  %2216 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %2217 = extractvalue { i32, i1 } %2216, 0, !nosanitize !47
  %2218 = extractvalue { i32, i1 } %2216, 1, !nosanitize !47
  br i1 %2218, label %2219, label %2220, !prof !48, !nosanitize !47

2219:                                             ; preds = %2211
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2220:                                             ; preds = %2211
  %2221 = zext i32 %2217 to i64
  %2222 = load i64, ptr %50, align 8, !tbaa !103
  %2223 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2222, i64 %2221), !nosanitize !47
  %2224 = extractvalue { i64, i1 } %2223, 1, !nosanitize !47
  br i1 %2224, label %2225, label %2226, !prof !48, !nosanitize !47

2225:                                             ; preds = %2220
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2226:                                             ; preds = %2220
  %2227 = extractvalue { i64, i1 } %2223, 0, !nosanitize !47
  store i64 %2227, ptr %50, align 8, !tbaa !103
  %2228 = load i64, ptr %51, align 8, !tbaa !21
  %2229 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2228, i64 %2221), !nosanitize !47
  %2230 = extractvalue { i64, i1 } %2229, 1, !nosanitize !47
  br i1 %2230, label %2231, label %2232, !prof !48, !nosanitize !47

2231:                                             ; preds = %2226
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2232:                                             ; preds = %2226
  %2233 = extractvalue { i64, i1 } %2229, 0, !nosanitize !47
  store i64 %2233, ptr %51, align 8, !tbaa !21
  %2234 = and i32 %2144, 4
  %2235 = icmp ne i32 %2234, 0
  %2236 = icmp ne i32 %2217, 0
  %2237 = select i1 %2235, i1 %2236, i1 false
  br i1 %2237, label %2238, label %2252

2238:                                             ; preds = %2232
  %2239 = load i32, ptr %52, align 8, !tbaa !28
  %2240 = icmp eq i32 %2239, 0
  %2241 = load i64, ptr %53, align 8, !tbaa !54
  %2242 = sub nsw i64 0, %2221
  %2243 = getelementptr inbounds i8, ptr %91, i64 %2242
  br i1 %2240, label %2246, label %2244

2244:                                             ; preds = %2238
  %2245 = call i64 @crc32(i64 noundef %2241, ptr noundef nonnull %2243, i32 noundef %2217) #13
  br label %2248

2246:                                             ; preds = %2238
  %2247 = call i64 @adler32(i64 noundef %2241, ptr noundef nonnull %2243, i32 noundef %2217) #13
  br label %2248

2248:                                             ; preds = %2246, %2244
  %2249 = phi i64 [ %2245, %2244 ], [ %2247, %2246 ]
  store i64 %2249, ptr %53, align 8, !tbaa !54
  store i64 %2249, ptr %54, align 8, !tbaa !25
  %2250 = load i32, ptr %49, align 8, !tbaa !24
  %2251 = and i32 %2250, 4
  br label %2252

2252:                                             ; preds = %2248, %2232
  %2253 = phi i32 [ %2251, %2248 ], [ %2234, %2232 ]
  %2254 = phi i32 [ %2250, %2248 ], [ %2144, %2232 ]
  %2255 = icmp eq i32 %2253, 0
  br i1 %2255, label %2266, label %2256

2256:                                             ; preds = %2252
  %2257 = load i32, ptr %52, align 8, !tbaa !28
  %2258 = icmp eq i32 %2257, 0
  %2259 = trunc i64 %2214 to i32
  %2260 = call i32 @llvm.bswap.i32(i32 %2259)
  %2261 = zext i32 %2260 to i64
  %2262 = select i1 %2258, i64 %2261, i64 %2214
  %2263 = load i64, ptr %53, align 8, !tbaa !54
  %2264 = icmp eq i64 %2262, %2263
  br i1 %2264, label %2266, label %2265

2265:                                             ; preds = %2256
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2366

2266:                                             ; preds = %2256, %2252, %2143
  %2267 = phi i32 [ 0, %2143 ], [ %2254, %2252 ], [ %2254, %2256 ]
  %2268 = phi ptr [ %90, %2143 ], [ %2212, %2252 ], [ %2212, %2256 ]
  %2269 = phi i32 [ %92, %2143 ], [ %2213, %2252 ], [ %2213, %2256 ]
  %2270 = phi i64 [ %94, %2143 ], [ 0, %2252 ], [ 0, %2256 ]
  %2271 = phi i32 [ %95, %2143 ], [ 0, %2252 ], [ 0, %2256 ]
  %2272 = phi i32 [ %96, %2143 ], [ %93, %2252 ], [ %93, %2256 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2273

2273:                                             ; preds = %103, %2266
  %2274 = phi i32 [ %2267, %2266 ], [ %104, %103 ]
  %2275 = phi ptr [ %2268, %2266 ], [ %90, %103 ]
  %2276 = phi i32 [ %2269, %2266 ], [ %92, %103 ]
  %2277 = phi i64 [ %2270, %2266 ], [ %94, %103 ]
  %2278 = phi i32 [ %2271, %2266 ], [ %95, %103 ]
  %2279 = phi i32 [ %2272, %2266 ], [ %96, %103 ]
  %2280 = icmp eq i32 %2274, 0
  br i1 %2280, label %2361, label %2281

2281:                                             ; preds = %2273
  %2282 = load i32, ptr %52, align 8, !tbaa !28
  %2283 = icmp eq i32 %2282, 0
  br i1 %2283, label %2361, label %2284

2284:                                             ; preds = %2281
  %2285 = icmp ult i32 %2278, 32
  br i1 %2285, label %2286, label %2349

2286:                                             ; preds = %2284
  %2287 = zext nneg i32 %2278 to i64
  %2288 = icmp eq i32 %2276, 0
  br i1 %2288, label %2487, label %2289

2289:                                             ; preds = %2286
  %2290 = load i8, ptr %2275, align 1, !tbaa !44
  %2291 = zext i8 %2290 to i64
  %2292 = shl nuw nsw i64 %2291, %2287
  %2293 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2277, i64 %2292), !nosanitize !47
  %2294 = extractvalue { i64, i1 } %2293, 1, !nosanitize !47
  br i1 %2294, label %2295, label %2296, !prof !48, !nosanitize !47

2295:                                             ; preds = %2332, %2318, %2304, %2289
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2296:                                             ; preds = %2289
  %2297 = extractvalue { i64, i1 } %2293, 0, !nosanitize !47
  %2298 = getelementptr inbounds nuw i8, ptr %2275, i64 1
  %2299 = add i32 %2276, -1
  %2300 = add nuw nsw i64 %2287, 8
  %2301 = icmp ult i32 %2278, 24
  br i1 %2301, label %2302, label %2343

2302:                                             ; preds = %2296
  %2303 = icmp eq i32 %2299, 0
  br i1 %2303, label %2487, label %2304

2304:                                             ; preds = %2302
  %2305 = load i8, ptr %2298, align 1, !tbaa !44
  %2306 = zext i8 %2305 to i64
  %2307 = shl nuw nsw i64 %2306, %2300
  %2308 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2297, i64 %2307), !nosanitize !47
  %2309 = extractvalue { i64, i1 } %2308, 1, !nosanitize !47
  br i1 %2309, label %2295, label %2310, !prof !48, !nosanitize !47

2310:                                             ; preds = %2304
  %2311 = extractvalue { i64, i1 } %2308, 0, !nosanitize !47
  %2312 = getelementptr inbounds nuw i8, ptr %2275, i64 2
  %2313 = add i32 %2276, -2
  %2314 = add nuw nsw i64 %2287, 16
  %2315 = icmp ult i32 %2278, 16
  br i1 %2315, label %2316, label %2343

2316:                                             ; preds = %2310
  %2317 = icmp eq i32 %2313, 0
  br i1 %2317, label %2487, label %2318

2318:                                             ; preds = %2316
  %2319 = load i8, ptr %2312, align 1, !tbaa !44
  %2320 = zext i8 %2319 to i64
  %2321 = shl nuw nsw i64 %2320, %2314
  %2322 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2311, i64 %2321), !nosanitize !47
  %2323 = extractvalue { i64, i1 } %2322, 1, !nosanitize !47
  br i1 %2323, label %2295, label %2324, !prof !48, !nosanitize !47

2324:                                             ; preds = %2318
  %2325 = extractvalue { i64, i1 } %2322, 0, !nosanitize !47
  %2326 = getelementptr inbounds nuw i8, ptr %2275, i64 3
  %2327 = add i32 %2276, -3
  %2328 = add nuw nsw i64 %2287, 24
  %2329 = icmp ult i32 %2278, 8
  br i1 %2329, label %2330, label %2343

2330:                                             ; preds = %2324
  %2331 = icmp eq i32 %2327, 0
  br i1 %2331, label %2487, label %2332

2332:                                             ; preds = %2330
  %2333 = load i8, ptr %2326, align 1, !tbaa !44
  %2334 = zext i8 %2333 to i64
  %2335 = shl nuw nsw i64 %2334, %2328
  %2336 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2325, i64 %2335), !nosanitize !47
  %2337 = extractvalue { i64, i1 } %2336, 1, !nosanitize !47
  br i1 %2337, label %2295, label %2338, !prof !48, !nosanitize !47

2338:                                             ; preds = %2332
  %2339 = extractvalue { i64, i1 } %2336, 0, !nosanitize !47
  %2340 = getelementptr inbounds nuw i8, ptr %2275, i64 4
  %2341 = add i32 %2276, -4
  %2342 = or disjoint i64 %2287, 32
  br label %2343

2343:                                             ; preds = %2338, %2324, %2310, %2296
  %2344 = phi i64 [ %2297, %2296 ], [ %2311, %2310 ], [ %2325, %2324 ], [ %2339, %2338 ]
  %2345 = phi ptr [ %2298, %2296 ], [ %2312, %2310 ], [ %2326, %2324 ], [ %2340, %2338 ]
  %2346 = phi i32 [ %2299, %2296 ], [ %2313, %2310 ], [ %2327, %2324 ], [ %2341, %2338 ]
  %2347 = phi i64 [ %2300, %2296 ], [ %2314, %2310 ], [ %2328, %2324 ], [ %2342, %2338 ]
  %2348 = trunc nuw nsw i64 %2347 to i32
  br label %2349

2349:                                             ; preds = %2343, %2284
  %2350 = phi ptr [ %2275, %2284 ], [ %2345, %2343 ]
  %2351 = phi i32 [ %2276, %2284 ], [ %2346, %2343 ]
  %2352 = phi i64 [ %2277, %2284 ], [ %2344, %2343 ]
  %2353 = phi i32 [ %2278, %2284 ], [ %2348, %2343 ]
  %2354 = and i32 %2274, 4
  %2355 = icmp eq i32 %2354, 0
  br i1 %2355, label %2361, label %2356

2356:                                             ; preds = %2349
  %2357 = load i64, ptr %51, align 8, !tbaa !21
  %2358 = and i64 %2357, 4294967295
  %2359 = icmp eq i64 %2352, %2358
  br i1 %2359, label %2361, label %2360

2360:                                             ; preds = %2356
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2366

2361:                                             ; preds = %2356, %2349, %2281, %2273
  %2362 = phi ptr [ %2275, %2273 ], [ %2275, %2281 ], [ %2350, %2349 ], [ %2350, %2356 ]
  %2363 = phi i32 [ %2276, %2273 ], [ %2276, %2281 ], [ %2351, %2349 ], [ %2351, %2356 ]
  %2364 = phi i64 [ %2277, %2273 ], [ %2277, %2281 ], [ 0, %2349 ], [ 0, %2356 ]
  %2365 = phi i32 [ %2278, %2273 ], [ %2278, %2281 ], [ 0, %2349 ], [ 0, %2356 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %2500

2366:                                             ; preds = %1305, %1426, %2131, %2135, %1492, %1501, %2360, %2265, %2138, %1985, %1889, %1656, %1652, %1648, %1475, %1466, %1462, %1160, %1085, %1033, %1030, %993, %908, %874, %780, %767, %262, %258, %212, %211, %196, %192, %174, %128
  %2367 = phi ptr [ %90, %128 ], [ %162, %174 ], [ %162, %192 ], [ %162, %196 ], [ %162, %211 ], [ %162, %212 ], [ %251, %258 ], [ %251, %262 ], [ %756, %767 ], [ %769, %780 ], [ %858, %874 ], [ %891, %908 ], [ %985, %993 ], [ %1020, %1030 ], [ %1003, %1033 ], [ %1067, %1085 ], [ %1101, %1160 ], [ %1297, %1305 ], [ %1459, %1462 ], [ %1459, %1466 ], [ %1459, %1475 ], [ %1495, %1501 ], [ %1495, %1492 ], [ %1629, %1648 ], [ %1629, %1652 ], [ %1629, %1656 ], [ %1866, %1889 ], [ %1964, %1985 ], [ %1964, %2135 ], [ %1964, %2131 ], [ %90, %2138 ], [ %2212, %2265 ], [ %2350, %2360 ], [ %1394, %1426 ]
  %2368 = phi ptr [ %91, %128 ], [ %91, %174 ], [ %91, %192 ], [ %91, %196 ], [ %91, %211 ], [ %91, %212 ], [ %91, %258 ], [ %91, %262 ], [ %91, %767 ], [ %91, %780 ], [ %91, %874 ], [ %91, %908 ], [ %91, %993 ], [ %1032, %1030 ], [ %91, %1033 ], [ %91, %1085 ], [ %91, %1160 ], [ %91, %1305 ], [ %91, %1462 ], [ %91, %1466 ], [ %91, %1475 ], [ %1493, %1501 ], [ %1493, %1492 ], [ %91, %1648 ], [ %91, %1652 ], [ %91, %1656 ], [ %91, %1889 ], [ %91, %1985 ], [ %2132, %2135 ], [ %2132, %2131 ], [ %2142, %2138 ], [ %91, %2265 ], [ %91, %2360 ], [ %91, %1426 ]
  %2369 = phi i32 [ %92, %128 ], [ %163, %174 ], [ %163, %192 ], [ %163, %196 ], [ %163, %211 ], [ %163, %212 ], [ %252, %258 ], [ %252, %262 ], [ %757, %767 ], [ %770, %780 ], [ %859, %874 ], [ %892, %908 ], [ %986, %993 ], [ %1016, %1030 ], [ %1004, %1033 ], [ %1068, %1085 ], [ %1102, %1160 ], [ %1298, %1305 ], [ %1458, %1462 ], [ %1458, %1466 ], [ %1458, %1475 ], [ %1496, %1501 ], [ %1496, %1492 ], [ %1630, %1648 ], [ %1630, %1652 ], [ %1630, %1656 ], [ %1867, %1889 ], [ %1965, %1985 ], [ %1965, %2135 ], [ %1965, %2131 ], [ %92, %2138 ], [ %2213, %2265 ], [ %2351, %2360 ], [ %1395, %1426 ]
  %2370 = phi i32 [ %93, %128 ], [ %93, %174 ], [ %93, %192 ], [ %93, %196 ], [ %93, %211 ], [ %93, %212 ], [ %93, %258 ], [ %93, %262 ], [ %93, %767 ], [ %93, %780 ], [ %93, %874 ], [ %93, %908 ], [ %93, %993 ], [ %1022, %1030 ], [ %93, %1033 ], [ %93, %1085 ], [ %93, %1160 ], [ %93, %1305 ], [ %93, %1462 ], [ %93, %1466 ], [ %93, %1475 ], [ %1494, %1501 ], [ %1494, %1492 ], [ %93, %1648 ], [ %93, %1652 ], [ %93, %1656 ], [ %93, %1889 ], [ %93, %1985 ], [ %2019, %2135 ], [ %2019, %2131 ], [ %2141, %2138 ], [ %93, %2265 ], [ %93, %2360 ], [ %93, %1426 ]
  %2371 = phi i64 [ %94, %128 ], [ 0, %174 ], [ %164, %192 ], [ %164, %196 ], [ %198, %211 ], [ 0, %212 ], [ %253, %258 ], [ %253, %262 ], [ %758, %767 ], [ %771, %780 ], [ %877, %874 ], [ %910, %908 ], [ %987, %993 ], [ %1005, %1030 ], [ %1005, %1033 ], [ %1080, %1085 ], [ %1103, %1160 ], [ %1302, %1305 ], [ %1457, %1462 ], [ %1457, %1466 ], [ %1457, %1475 ], [ %1497, %1501 ], [ %1497, %1492 ], [ %1638, %1648 ], [ %1638, %1652 ], [ %1638, %1656 ], [ %1875, %1889 ], [ %1966, %1985 ], [ %1966, %2135 ], [ %1966, %2131 ], [ %94, %2138 ], [ %2214, %2265 ], [ %2352, %2360 ], [ %1396, %1426 ]
  %2372 = phi i32 [ %95, %128 ], [ 0, %174 ], [ %165, %192 ], [ %165, %196 ], [ %199, %211 ], [ 0, %212 ], [ %254, %258 ], [ %254, %262 ], [ %759, %767 ], [ %772, %780 ], [ %875, %874 ], [ %909, %908 ], [ %988, %993 ], [ %1006, %1030 ], [ %1006, %1033 ], [ %1081, %1085 ], [ %1104, %1160 ], [ %1303, %1305 ], [ %1456, %1462 ], [ %1456, %1466 ], [ %1456, %1475 ], [ %1498, %1501 ], [ %1498, %1492 ], [ %1640, %1648 ], [ %1640, %1652 ], [ %1640, %1656 ], [ %1877, %1889 ], [ %1967, %1985 ], [ %1967, %2135 ], [ %1967, %2131 ], [ %95, %2138 ], [ %2215, %2265 ], [ %2353, %2360 ], [ %1400, %1426 ]
  %2373 = phi i32 [ %96, %128 ], [ %96, %174 ], [ %96, %192 ], [ %96, %196 ], [ %96, %211 ], [ %96, %212 ], [ %96, %258 ], [ %96, %262 ], [ %96, %767 ], [ %96, %780 ], [ %96, %874 ], [ %96, %908 ], [ %96, %993 ], [ %96, %1030 ], [ %96, %1033 ], [ %96, %1085 ], [ %96, %1160 ], [ %96, %1305 ], [ %96, %1462 ], [ %96, %1466 ], [ %96, %1475 ], [ %96, %1501 ], [ %96, %1492 ], [ %96, %1648 ], [ %96, %1652 ], [ %96, %1656 ], [ %96, %1889 ], [ %96, %1985 ], [ %96, %2135 ], [ %96, %2131 ], [ %96, %2138 ], [ %93, %2265 ], [ %2279, %2360 ], [ %96, %1426 ]
  %2374 = phi i32 [ %97, %128 ], [ %97, %174 ], [ %97, %192 ], [ %97, %196 ], [ %97, %211 ], [ %97, %212 ], [ %97, %258 ], [ %97, %262 ], [ %97, %767 ], [ %97, %780 ], [ %97, %874 ], [ %97, %908 ], [ %97, %993 ], [ %97, %1030 ], [ %97, %1033 ], [ %97, %1085 ], [ %1158, %1160 ], [ %1167, %1305 ], [ %1167, %1462 ], [ %1464, %1466 ], [ %1473, %1475 ], [ %1488, %1501 ], [ %1488, %1492 ], [ %1488, %1648 ], [ %1488, %1652 ], [ %1488, %1656 ], [ %1735, %1889 ], [ %1968, %1985 ], [ %1968, %2135 ], [ %1968, %2131 ], [ %97, %2138 ], [ %97, %2265 ], [ %97, %2360 ], [ %1167, %1426 ]
  %2375 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

2376:                                             ; preds = %1200, %1204
  %2377 = phi i64 [ %1218, %1204 ], [ %1188, %1200 ]
  %2378 = zext i32 %1187 to i64
  %2379 = shl i32 %1187, 3
  %2380 = add i32 %2379, %1189
  %2381 = getelementptr i8, ptr %1186, i64 %2378
  br label %2500

2382:                                             ; preds = %142, %125
  %2383 = phi i64 [ %94, %125 ], [ %137, %142 ]
  %2384 = zext i32 %92 to i64
  %2385 = shl i32 %92, 3
  %2386 = add i32 %2385, %95
  %2387 = getelementptr i8, ptr %90, i64 %2384
  br label %2500

2388:                                             ; preds = %736, %720
  %2389 = phi i64 [ %713, %720 ], [ %731, %736 ]
  %2390 = zext i32 %712 to i64
  %2391 = shl i32 %712, 3
  %2392 = add i32 %2391, %714
  %2393 = getelementptr i8, ptr %711, i64 %2390
  br label %2500

2394:                                             ; preds = %454, %433
  %2395 = phi i64 [ %436, %433 ], [ %449, %454 ]
  %2396 = zext i32 %435 to i64
  %2397 = shl i32 %435, 3
  %2398 = add i32 %2397, %437
  %2399 = getelementptr i8, ptr %434, i64 %2396
  br label %2500

2400:                                             ; preds = %386, %366
  %2401 = phi i64 [ %368, %366 ], [ %381, %386 ]
  %2402 = zext i32 %369 to i64
  %2403 = shl i32 %369, 3
  %2404 = add i32 %2403, %367
  %2405 = getelementptr i8, ptr %370, i64 %2402
  br label %2500

2406:                                             ; preds = %331, %317, %303, %283
  %2407 = phi i64 [ %285, %283 ], [ %298, %303 ], [ %312, %317 ], [ %326, %331 ]
  %2408 = zext i32 %286 to i64
  %2409 = shl i32 %286, 3
  %2410 = add i32 %2409, %284
  %2411 = getelementptr i8, ptr %287, i64 %2408
  br label %2500

2412:                                             ; preds = %231, %117
  %2413 = phi i64 [ %94, %117 ], [ %226, %231 ]
  %2414 = zext i32 %92 to i64
  %2415 = shl i32 %92, 3
  %2416 = add i32 %2415, %95
  %2417 = getelementptr i8, ptr %90, i64 %2414
  br label %2500

2418:                                             ; preds = %823, %809, %795, %112
  %2419 = phi i64 [ %94, %112 ], [ %790, %795 ], [ %804, %809 ], [ %818, %823 ]
  %2420 = zext i32 %92 to i64
  %2421 = shl i32 %92, 3
  %2422 = add i32 %2421, %95
  %2423 = getelementptr i8, ptr %90, i64 %2420
  br label %2500

2424:                                             ; preds = %966, %952, %938, %921
  %2425 = phi i64 [ %918, %921 ], [ %933, %938 ], [ %947, %952 ], [ %961, %966 ]
  %2426 = zext i32 %92 to i64
  %2427 = shl i32 %92, 3
  %2428 = add i32 %2427, %922
  %2429 = getelementptr i8, ptr %90, i64 %2426
  br label %2500

2430:                                             ; preds = %1903, %1907
  %2431 = phi i64 [ %1920, %1907 ], [ %1897, %1903 ]
  %2432 = zext i32 %1896 to i64
  %2433 = shl i32 %1896, 3
  %2434 = add i32 %2433, %1898
  %2435 = getelementptr i8, ptr %1895, i64 %2432
  br label %2500

2436:                                             ; preds = %1810, %1814
  %2437 = phi i64 [ %1829, %1814 ], [ %1785, %1810 ]
  %2438 = zext i32 %1784 to i64
  %2439 = shl i32 %1784, 3
  %2440 = add i32 %2439, %1786
  %2441 = getelementptr i8, ptr %1783, i64 %2438
  br label %2500

2442:                                             ; preds = %1748, %1752
  %2443 = phi i64 [ %1766, %1752 ], [ %1733, %1748 ]
  %2444 = zext i32 %1732 to i64
  %2445 = shl i32 %1732, 3
  %2446 = add i32 %2445, %1734
  %2447 = getelementptr i8, ptr %1731, i64 %2444
  br label %2500

2448:                                             ; preds = %1669, %1673
  %2449 = phi i64 [ %1686, %1673 ], [ %1663, %1669 ]
  %2450 = zext i32 %1662 to i64
  %2451 = shl i32 %1662, 3
  %2452 = add i32 %2451, %1664
  %2453 = getelementptr i8, ptr %1661, i64 %2450
  br label %2500

2454:                                             ; preds = %1578, %1582
  %2455 = phi i64 [ %1596, %1582 ], [ %1552, %1578 ]
  %2456 = zext i32 %1551 to i64
  %2457 = shl i32 %1551, 3
  %2458 = add i32 %2457, %1553
  %2459 = getelementptr i8, ptr %1550, i64 %2456
  br label %2500

2460:                                             ; preds = %1515, %1519
  %2461 = phi i64 [ %1533, %1519 ], [ %1486, %1515 ]
  %2462 = zext i32 %1485 to i64
  %2463 = shl i32 %1485, 3
  %2464 = add i32 %2463, %1487
  %2465 = getelementptr i8, ptr %1484, i64 %2462
  br label %2500

2466:                                             ; preds = %1356
  %2467 = zext i32 %1236 to i64
  %2468 = shl i32 %1236, 3
  %2469 = add i32 %2468, %1238
  %2470 = getelementptr i8, ptr %1235, i64 %2467
  br label %2500

2471:                                             ; preds = %1275
  %2472 = zext i32 %1236 to i64
  %2473 = shl i32 %1236, 3
  %2474 = add i32 %2473, %1238
  %2475 = getelementptr i8, ptr %1235, i64 %2472
  br label %2500

2476:                                             ; preds = %1319
  %2477 = zext i32 %1236 to i64
  %2478 = shl i32 %1236, 3
  %2479 = add i32 %2478, %1238
  %2480 = getelementptr i8, ptr %1235, i64 %2477
  br label %2500

2481:                                             ; preds = %1047, %107
  %2482 = phi i64 [ %94, %107 ], [ %1042, %1047 ]
  %2483 = zext i32 %92 to i64
  %2484 = shl i32 %92, 3
  %2485 = add i32 %2484, %95
  %2486 = getelementptr i8, ptr %90, i64 %2483
  br label %2500

2487:                                             ; preds = %2330, %2316, %2302, %2286
  %2488 = phi i64 [ %2277, %2286 ], [ %2297, %2302 ], [ %2311, %2316 ], [ %2325, %2330 ]
  %2489 = zext i32 %2276 to i64
  %2490 = shl i32 %2276, 3
  %2491 = add i32 %2490, %2278
  %2492 = getelementptr i8, ptr %2275, i64 %2489
  br label %2500

2493:                                             ; preds = %2192, %2178, %2164, %2148
  %2494 = phi i64 [ %94, %2148 ], [ %2159, %2164 ], [ %2173, %2178 ], [ %2187, %2192 ]
  %2495 = zext i32 %92 to i64
  %2496 = shl i32 %92, 3
  %2497 = add i32 %2496, %95
  %2498 = getelementptr i8, ptr %90, i64 %2495
  br label %2500

2499:                                             ; preds = %88
  br label %2500

2500:                                             ; preds = %574, %590, %634, %654, %698, %852, %994, %1009, %1476, %1963, %2136, %866, %1116, %88, %2499, %2493, %2487, %2481, %2476, %2471, %2466, %2460, %2454, %2448, %2442, %2436, %2430, %2424, %2418, %2412, %2406, %2400, %2394, %2388, %2382, %2376, %2361, %900
  %2501 = phi i32 [ %93, %2487 ], [ %93, %2382 ], [ %93, %2376 ], [ %93, %1116 ], [ %93, %2493 ], [ %93, %2466 ], [ %93, %2424 ], [ %93, %2430 ], [ %93, %2412 ], [ %93, %2400 ], [ %93, %2448 ], [ %93, %2394 ], [ %93, %2361 ], [ %93, %2388 ], [ %93, %900 ], [ %93, %2460 ], [ %93, %2476 ], [ %93, %2454 ], [ %93, %2436 ], [ %93, %2481 ], [ %93, %2406 ], [ %93, %2442 ], [ %93, %2471 ], [ %93, %2418 ], [ %93, %88 ], [ %93, %574 ], [ %93, %590 ], [ %93, %634 ], [ %93, %654 ], [ %93, %698 ], [ %93, %852 ], [ %93, %994 ], [ %93, %1009 ], [ %93, %1476 ], [ 0, %1963 ], [ 0, %2136 ], [ %93, %866 ], [ %93, %2499 ]
  %2502 = phi ptr [ %2492, %2487 ], [ %2387, %2382 ], [ %2381, %2376 ], [ %1114, %1116 ], [ %2498, %2493 ], [ %2470, %2466 ], [ %2429, %2424 ], [ %2435, %2430 ], [ %2417, %2412 ], [ %2405, %2400 ], [ %2453, %2448 ], [ %2399, %2394 ], [ %2362, %2361 ], [ %2393, %2388 ], [ %891, %900 ], [ %2465, %2460 ], [ %2480, %2476 ], [ %2459, %2454 ], [ %2441, %2436 ], [ %2486, %2481 ], [ %2411, %2406 ], [ %2447, %2442 ], [ %2475, %2471 ], [ %2423, %2418 ], [ %90, %88 ], [ %576, %574 ], [ %583, %590 ], [ %637, %634 ], [ %647, %654 ], [ %701, %698 ], [ %853, %852 ], [ %985, %994 ], [ %1003, %1009 ], [ %1459, %1476 ], [ %1964, %1963 ], [ %90, %2136 ], [ %858, %866 ], [ %90, %2499 ]
  %2503 = phi i32 [ 0, %2487 ], [ 0, %2382 ], [ 0, %2376 ], [ 0, %1116 ], [ 0, %2493 ], [ 0, %2466 ], [ 0, %2424 ], [ 0, %2430 ], [ 0, %2412 ], [ 0, %2400 ], [ 0, %2448 ], [ 0, %2394 ], [ %2363, %2361 ], [ 0, %2388 ], [ %892, %900 ], [ 0, %2460 ], [ 0, %2476 ], [ 0, %2454 ], [ 0, %2436 ], [ 0, %2481 ], [ 0, %2406 ], [ 0, %2442 ], [ 0, %2471 ], [ 0, %2418 ], [ %92, %88 ], [ %577, %574 ], [ 0, %590 ], [ %635, %634 ], [ 0, %654 ], [ %699, %698 ], [ %854, %852 ], [ %986, %994 ], [ %1004, %1009 ], [ %1458, %1476 ], [ %1965, %1963 ], [ %92, %2136 ], [ 0, %866 ], [ %92, %2499 ]
  %2504 = phi i64 [ %2488, %2487 ], [ %2383, %2382 ], [ %2377, %2376 ], [ %1112, %1116 ], [ %2494, %2493 ], [ %1358, %2466 ], [ %2425, %2424 ], [ %2431, %2430 ], [ %2413, %2412 ], [ %2401, %2400 ], [ %2449, %2448 ], [ %2395, %2394 ], [ %2364, %2361 ], [ %2389, %2388 ], [ %902, %900 ], [ %2461, %2460 ], [ %1321, %2476 ], [ %2455, %2454 ], [ %2437, %2436 ], [ %2482, %2481 ], [ %2407, %2406 ], [ %2443, %2442 ], [ %1277, %2471 ], [ %2419, %2418 ], [ %94, %88 ], [ %504, %574 ], [ %585, %590 ], [ %585, %634 ], [ %649, %654 ], [ %649, %698 ], [ %855, %852 ], [ 0, %994 ], [ %1005, %1009 ], [ %1457, %1476 ], [ %1966, %1963 ], [ %94, %2136 ], [ %860, %866 ], [ %94, %2499 ]
  %2505 = phi i32 [ %2491, %2487 ], [ %2386, %2382 ], [ %2380, %2376 ], [ %1111, %1116 ], [ %2497, %2493 ], [ %2469, %2466 ], [ %2428, %2424 ], [ %2434, %2430 ], [ %2416, %2412 ], [ %2404, %2400 ], [ %2452, %2448 ], [ %2398, %2394 ], [ %2365, %2361 ], [ %2392, %2388 ], [ %901, %900 ], [ %2464, %2460 ], [ %2479, %2476 ], [ %2458, %2454 ], [ %2440, %2436 ], [ %2485, %2481 ], [ %2410, %2406 ], [ %2446, %2442 ], [ %2474, %2471 ], [ %2422, %2418 ], [ %95, %88 ], [ %505, %574 ], [ %586, %590 ], [ %586, %634 ], [ %650, %654 ], [ %650, %698 ], [ %856, %852 ], [ 0, %994 ], [ %1006, %1009 ], [ %1456, %1476 ], [ %1967, %1963 ], [ %95, %2136 ], [ %861, %866 ], [ %95, %2499 ]
  %2506 = phi i32 [ %2279, %2487 ], [ %96, %2382 ], [ %96, %2376 ], [ %96, %1116 ], [ %96, %2493 ], [ %96, %2466 ], [ %96, %2424 ], [ %96, %2430 ], [ %96, %2412 ], [ %96, %2400 ], [ %96, %2448 ], [ %96, %2394 ], [ %2279, %2361 ], [ %96, %2388 ], [ %96, %900 ], [ %96, %2460 ], [ %96, %2476 ], [ %96, %2454 ], [ %96, %2436 ], [ %96, %2481 ], [ %96, %2406 ], [ %96, %2442 ], [ %96, %2471 ], [ %96, %2418 ], [ %96, %88 ], [ %96, %866 ], [ %96, %2136 ], [ %96, %1963 ], [ %96, %1476 ], [ %96, %1009 ], [ %96, %994 ], [ %96, %852 ], [ %96, %698 ], [ %96, %654 ], [ %96, %634 ], [ %96, %590 ], [ %96, %574 ], [ %96, %2499 ]
  %2507 = phi i32 [ %97, %2487 ], [ %97, %2382 ], [ %1167, %2376 ], [ %97, %1116 ], [ %97, %2493 ], [ %1167, %2466 ], [ %97, %2424 ], [ %1899, %2430 ], [ %97, %2412 ], [ %97, %2400 ], [ %1665, %2448 ], [ %97, %2394 ], [ 1, %2361 ], [ %97, %2388 ], [ %97, %900 ], [ %1488, %2460 ], [ %1167, %2476 ], [ %1488, %2454 ], [ %1735, %2436 ], [ %97, %2481 ], [ %97, %2406 ], [ %1735, %2442 ], [ %1167, %2471 ], [ %97, %2418 ], [ -3, %88 ], [ %97, %574 ], [ %97, %590 ], [ %97, %634 ], [ %97, %654 ], [ %97, %698 ], [ %97, %852 ], [ %97, %994 ], [ %97, %1009 ], [ 0, %1476 ], [ %1968, %1963 ], [ %97, %2136 ], [ %97, %866 ], [ 1, %2499 ]
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %2501, ptr %41, align 8, !tbaa !52
  store ptr %2502, ptr %0, align 8, !tbaa !50
  store i32 %2503, ptr %43, align 8, !tbaa !51
  store i64 %2504, ptr %45, align 8, !tbaa !31
  store i32 %2505, ptr %47, align 8, !tbaa !32
  %2508 = load i32, ptr %79, align 4, !tbaa !38
  %2509 = icmp eq i32 %2508, 0
  br i1 %2509, label %2510, label %2519

2510:                                             ; preds = %2500
  %2511 = icmp eq i32 %2506, %2501
  br i1 %2511, label %2607, label %2512

2512:                                             ; preds = %2510
  %2513 = load i32, ptr %21, align 8, !tbaa !20
  %2514 = icmp ult i32 %2513, 16209
  br i1 %2514, label %2515, label %2607

2515:                                             ; preds = %2512
  %2516 = icmp samesign ult i32 %2513, 16206
  %2517 = icmp ne i32 %1, 4
  %2518 = or i1 %2517, %2516
  br i1 %2518, label %2519, label %2607

2519:                                             ; preds = %2515, %2500
  %2520 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2506, i32 %2501), !nosanitize !47
  %2521 = extractvalue { i32, i1 } %2520, 1, !nosanitize !47
  br i1 %2521, label %2522, label %2523, !prof !48, !nosanitize !47

2522:                                             ; preds = %2519
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2523:                                             ; preds = %2519
  %2524 = extractvalue { i32, i1 } %2520, 0, !nosanitize !47
  %2525 = load ptr, ptr %14, align 8, !tbaa !15
  %2526 = getelementptr inbounds nuw i8, ptr %2525, i64 72
  %2527 = load ptr, ptr %2526, align 8, !tbaa !41
  %2528 = icmp eq ptr %2527, null
  br i1 %2528, label %2529, label %2538

2529:                                             ; preds = %2523
  %2530 = load ptr, ptr %6, align 8, !tbaa !8
  %2531 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2532 = load ptr, ptr %2531, align 8, !tbaa !43
  %2533 = getelementptr inbounds nuw i8, ptr %2525, i64 56
  %2534 = load i32, ptr %2533, align 8, !tbaa !42
  %2535 = shl nuw i32 1, %2534
  %2536 = call ptr %2530(ptr noundef %2532, i32 noundef %2535, i32 noundef 1) #13, !inline_history !104
  store ptr %2536, ptr %2526, align 8, !tbaa !41
  %2537 = icmp eq ptr %2536, null
  br i1 %2537, label %2606, label %2538

2538:                                             ; preds = %2529, %2523
  %2539 = phi ptr [ %2536, %2529 ], [ %2527, %2523 ]
  %2540 = getelementptr inbounds nuw i8, ptr %2525, i64 60
  %2541 = load i32, ptr %2540, align 4, !tbaa !38
  %2542 = icmp eq i32 %2541, 0
  br i1 %2542, label %2543, label %2549

2543:                                             ; preds = %2538
  %2544 = getelementptr inbounds nuw i8, ptr %2525, i64 56
  %2545 = load i32, ptr %2544, align 8, !tbaa !42
  %2546 = shl nuw i32 1, %2545
  store i32 %2546, ptr %2540, align 4, !tbaa !38
  %2547 = getelementptr inbounds nuw i8, ptr %2525, i64 68
  store i32 0, ptr %2547, align 4, !tbaa !40
  %2548 = getelementptr inbounds nuw i8, ptr %2525, i64 64
  store i32 0, ptr %2548, align 8, !tbaa !39
  br label %2549

2549:                                             ; preds = %2543, %2538
  %2550 = phi i32 [ %2546, %2543 ], [ %2541, %2538 ]
  %2551 = icmp ult i32 %2524, %2550
  br i1 %2551, label %2559, label %2552

2552:                                             ; preds = %2549
  %2553 = zext i32 %2550 to i64
  %2554 = sub nsw i64 0, %2553
  %2555 = getelementptr inbounds i8, ptr %91, i64 %2554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2539, ptr noundef nonnull readonly align 1 dereferenceable(1) %2555, i64 %2553, i1 false)
  %2556 = getelementptr inbounds nuw i8, ptr %2525, i64 68
  store i32 0, ptr %2556, align 4, !tbaa !40
  %2557 = load i32, ptr %2540, align 4, !tbaa !38
  %2558 = getelementptr inbounds nuw i8, ptr %2525, i64 64
  store i32 %2557, ptr %2558, align 8, !tbaa !39
  br label %2607

2559:                                             ; preds = %2549
  %2560 = getelementptr inbounds nuw i8, ptr %2525, i64 68
  %2561 = load i32, ptr %2560, align 4, !tbaa !40
  %2562 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2550, i32 %2561), !nosanitize !47
  %2563 = extractvalue { i32, i1 } %2562, 1, !nosanitize !47
  br i1 %2563, label %2564, label %2565, !prof !48, !nosanitize !47

2564:                                             ; preds = %2559
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2565:                                             ; preds = %2559
  %2566 = extractvalue { i32, i1 } %2562, 0, !nosanitize !47
  %2567 = call i32 @llvm.umin.i32(i32 %2566, i32 %2524)
  %2568 = zext i32 %2561 to i64
  %2569 = getelementptr inbounds nuw i8, ptr %2539, i64 %2568
  %2570 = zext i32 %2524 to i64
  %2571 = sub nsw i64 0, %2570
  %2572 = getelementptr inbounds i8, ptr %91, i64 %2571
  %2573 = zext i32 %2567 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2569, ptr readonly align 1 %2572, i64 %2573, i1 false)
  %2574 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2524, i32 %2567), !nosanitize !47
  %2575 = extractvalue { i32, i1 } %2574, 0, !nosanitize !47
  %2576 = extractvalue { i32, i1 } %2574, 1, !nosanitize !47
  br i1 %2576, label %2577, label %2578, !prof !48, !nosanitize !47

2577:                                             ; preds = %2565
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2578:                                             ; preds = %2565
  %2579 = icmp eq i32 %2575, 0
  br i1 %2579, label %2587, label %2580

2580:                                             ; preds = %2578
  %2581 = load ptr, ptr %2526, align 8, !tbaa !41
  %2582 = zext i32 %2575 to i64
  %2583 = sub nsw i64 0, %2582
  %2584 = getelementptr inbounds i8, ptr %91, i64 %2583
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2581, ptr nonnull readonly align 1 %2584, i64 %2582, i1 false)
  store i32 %2575, ptr %2560, align 4, !tbaa !40
  %2585 = load i32, ptr %2540, align 4, !tbaa !38
  %2586 = getelementptr inbounds nuw i8, ptr %2525, i64 64
  store i32 %2585, ptr %2586, align 8, !tbaa !39
  br label %2607

2587:                                             ; preds = %2578
  %2588 = load i32, ptr %2560, align 4, !tbaa !40
  %2589 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2588, i32 %2567), !nosanitize !47
  %2590 = extractvalue { i32, i1 } %2589, 1, !nosanitize !47
  br i1 %2590, label %2591, label %2592, !prof !48, !nosanitize !47

2591:                                             ; preds = %2587
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2592:                                             ; preds = %2587
  %2593 = extractvalue { i32, i1 } %2589, 0, !nosanitize !47
  %2594 = load i32, ptr %2540, align 4, !tbaa !38
  %2595 = icmp eq i32 %2593, %2594
  %2596 = select i1 %2595, i32 0, i32 %2593
  store i32 %2596, ptr %2560, align 4
  %2597 = getelementptr inbounds nuw i8, ptr %2525, i64 64
  %2598 = load i32, ptr %2597, align 8, !tbaa !39
  %2599 = icmp ult i32 %2598, %2594
  br i1 %2599, label %2600, label %2607

2600:                                             ; preds = %2592
  %2601 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2598, i32 %2567), !nosanitize !47
  %2602 = extractvalue { i32, i1 } %2601, 1, !nosanitize !47
  br i1 %2602, label %2603, label %2604, !prof !48, !nosanitize !47

2603:                                             ; preds = %2600
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2604:                                             ; preds = %2600
  %2605 = extractvalue { i32, i1 } %2601, 0, !nosanitize !47
  store i32 %2605, ptr %2597, align 8, !tbaa !39
  br label %2607

2606:                                             ; preds = %2529
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %2693

2607:                                             ; preds = %2552, %2592, %2604, %2580, %2515, %2512, %2510
  %2608 = load i32, ptr %43, align 8, !tbaa !51
  %2609 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2608), !nosanitize !47
  %2610 = extractvalue { i32, i1 } %2609, 0, !nosanitize !47
  %2611 = extractvalue { i32, i1 } %2609, 1, !nosanitize !47
  br i1 %2611, label %2612, label %2613, !prof !48, !nosanitize !47

2612:                                             ; preds = %2607
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2613:                                             ; preds = %2607
  %2614 = load i32, ptr %41, align 8, !tbaa !52
  %2615 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2506, i32 %2614), !nosanitize !47
  %2616 = extractvalue { i32, i1 } %2615, 0, !nosanitize !47
  %2617 = extractvalue { i32, i1 } %2615, 1, !nosanitize !47
  br i1 %2617, label %2618, label %2619, !prof !48, !nosanitize !47

2618:                                             ; preds = %2613
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !47
  unreachable, !nosanitize !47

2619:                                             ; preds = %2613
  %2620 = zext i32 %2610 to i64
  %2621 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2622 = load i64, ptr %2621, align 8, !tbaa !22
  %2623 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2622, i64 %2620), !nosanitize !47
  %2624 = extractvalue { i64, i1 } %2623, 1, !nosanitize !47
  br i1 %2624, label %2625, label %2626, !prof !48, !nosanitize !47

2625:                                             ; preds = %2619
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2626:                                             ; preds = %2619
  %2627 = extractvalue { i64, i1 } %2623, 0, !nosanitize !47
  store i64 %2627, ptr %2621, align 8, !tbaa !22
  %2628 = zext i32 %2616 to i64
  %2629 = load i64, ptr %50, align 8, !tbaa !103
  %2630 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2629, i64 %2628), !nosanitize !47
  %2631 = extractvalue { i64, i1 } %2630, 1, !nosanitize !47
  br i1 %2631, label %2632, label %2633, !prof !48, !nosanitize !47

2632:                                             ; preds = %2626
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2633:                                             ; preds = %2626
  %2634 = extractvalue { i64, i1 } %2630, 0, !nosanitize !47
  store i64 %2634, ptr %50, align 8, !tbaa !103
  %2635 = load i64, ptr %51, align 8, !tbaa !21
  %2636 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2635, i64 %2628), !nosanitize !47
  %2637 = extractvalue { i64, i1 } %2636, 1, !nosanitize !47
  br i1 %2637, label %2638, label %2639, !prof !48, !nosanitize !47

2638:                                             ; preds = %2673, %2666, %2659, %2633
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !47
  unreachable, !nosanitize !47

2639:                                             ; preds = %2633
  %2640 = extractvalue { i64, i1 } %2636, 0, !nosanitize !47
  store i64 %2640, ptr %51, align 8, !tbaa !21
  %2641 = load i32, ptr %49, align 8, !tbaa !24
  %2642 = and i32 %2641, 4
  %2643 = icmp ne i32 %2642, 0
  %2644 = icmp ne i32 %2616, 0
  %2645 = select i1 %2643, i1 %2644, i1 false
  br i1 %2645, label %2646, label %2659

2646:                                             ; preds = %2639
  %2647 = load i32, ptr %52, align 8, !tbaa !28
  %2648 = icmp eq i32 %2647, 0
  %2649 = load i64, ptr %53, align 8, !tbaa !54
  %2650 = load ptr, ptr %26, align 8, !tbaa !49
  %2651 = sub nsw i64 0, %2628
  %2652 = getelementptr inbounds i8, ptr %2650, i64 %2651
  br i1 %2648, label %2655, label %2653

2653:                                             ; preds = %2646
  %2654 = call i64 @crc32(i64 noundef %2649, ptr noundef nonnull %2652, i32 noundef %2616) #13
  br label %2657

2655:                                             ; preds = %2646
  %2656 = call i64 @adler32(i64 noundef %2649, ptr noundef nonnull %2652, i32 noundef %2616) #13
  br label %2657

2657:                                             ; preds = %2655, %2653
  %2658 = phi i64 [ %2654, %2653 ], [ %2656, %2655 ]
  store i64 %2658, ptr %53, align 8, !tbaa !54
  store i64 %2658, ptr %54, align 8, !tbaa !25
  br label %2659

2659:                                             ; preds = %2657, %2639
  %2660 = load i32, ptr %47, align 8, !tbaa !32
  %2661 = load i32, ptr %83, align 4, !tbaa !26
  %2662 = icmp eq i32 %2661, 0
  %2663 = select i1 %2662, i32 0, i32 64
  %2664 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2660, i32 %2663), !nosanitize !47
  %2665 = extractvalue { i32, i1 } %2664, 1, !nosanitize !47
  br i1 %2665, label %2638, label %2666, !prof !48, !nosanitize !47

2666:                                             ; preds = %2659
  %2667 = extractvalue { i32, i1 } %2664, 0, !nosanitize !47
  %2668 = load i32, ptr %21, align 8, !tbaa !20
  %2669 = icmp eq i32 %2668, 16191
  %2670 = select i1 %2669, i32 128, i32 0
  %2671 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2667, i32 %2670), !nosanitize !47
  %2672 = extractvalue { i32, i1 } %2671, 1, !nosanitize !47
  br i1 %2672, label %2638, label %2673, !prof !48, !nosanitize !47

2673:                                             ; preds = %2666
  %2674 = extractvalue { i32, i1 } %2671, 0, !nosanitize !47
  %2675 = icmp eq i32 %2668, 16199
  %2676 = icmp eq i32 %2668, 16194
  %2677 = or i1 %2675, %2676
  %2678 = select i1 %2677, i32 256, i32 0
  %2679 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2674, i32 %2678), !nosanitize !47
  %2680 = extractvalue { i32, i1 } %2679, 1, !nosanitize !47
  br i1 %2680, label %2638, label %2681, !prof !48, !nosanitize !47

2681:                                             ; preds = %2673
  %2682 = extractvalue { i32, i1 } %2679, 0, !nosanitize !47
  %2683 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2682, ptr %2683, align 8, !tbaa !23
  %2684 = icmp eq i32 %2610, 0
  %2685 = icmp eq i32 %2616, 0
  %2686 = select i1 %2684, i1 %2685, i1 false
  %2687 = icmp eq i32 %1, 4
  %2688 = or i1 %2687, %2686
  %2689 = icmp eq i32 %2507, 0
  %2690 = select i1 %2688, i1 %2689, i1 false
  %2691 = select i1 %2690, i32 -5, i32 %2507
  br label %2693

2692:                                             ; preds = %88
  br label %2693

2693:                                             ; preds = %88, %2692, %17, %5, %9, %2, %13, %20, %25, %32, %2681, %2606, %849
  %2694 = phi i32 [ -2, %20 ], [ -4, %2692 ], [ -4, %2606 ], [ %2691, %2681 ], [ 2, %849 ], [ -2, %32 ], [ -2, %25 ], [ -2, %17 ], [ -2, %13 ], [ -2, %2 ], [ -2, %9 ], [ -2, %5 ], [ -2, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %2694
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #4

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
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
define dso_local range(i32 -5, 1) i32 @inflateSync(ptr noundef captures(address) %0) local_unnamed_addr #7 {
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

40:                                               ; preds = %28, %31, %23
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
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
