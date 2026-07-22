; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.inflate.or.ll'
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

52:                                               ; preds = %38, %18, %15, %11, %7, %3, %1
  %53 = phi i32 [ -2, %3 ], [ -2, %18 ], [ 0, %38 ], [ -2, %1 ], [ -2, %15 ], [ -2, %7 ], [ -2, %11 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateReset2(ptr noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %95, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %95, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %95, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %95, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %95

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %95

24:                                               ; preds = %19
  %25 = icmp slt i32 %1, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = icmp samesign ult i32 %1, -15
  br i1 %27, label %95, label %28

28:                                               ; preds = %26
  %29 = sub nsw i32 0, %1
  br label %select.unfold

30:                                               ; preds = %24
  %31 = lshr i32 %1, 4
  %32 = add nuw nsw i32 %31, 5
  %33 = icmp samesign ult i32 %1, 48
  %34 = and i32 %1, 15
  %spec.select = select i1 %33, i32 %34, i32 %1
  br label %select.unfold

select.unfold:                                    ; preds = %30, %28
  %35 = phi i32 [ %29, %28 ], [ %spec.select, %30 ]
  %36 = phi i32 [ 0, %28 ], [ %32, %30 ]
  switch i32 %35, label %95 [
    i32 15, label %37
    i32 14, label %37
    i32 13, label %37
    i32 12, label %37
    i32 11, label %37
    i32 10, label %37
    i32 9, label %37
    i32 8, label %37
    i32 0, label %37
  ]

37:                                               ; preds = %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold
  %38 = getelementptr inbounds nuw i8, ptr %14, i64 72
  %39 = load ptr, ptr %38, align 8, !tbaa !41
  %40 = icmp eq ptr %39, null
  br i1 %40, label %.thread, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %43 = load i32, ptr %42, align 8, !tbaa !42
  %44 = icmp eq i32 %43, %35
  br i1 %44, label %.thread, label %47

.thread:                                          ; preds = %37, %41
  %45 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %36, ptr %45, align 8, !tbaa !24
  %46 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 %35, ptr %46, align 8, !tbaa !42
  br label %55

47:                                               ; preds = %41
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  tail call void %10(ptr noundef %49, ptr noundef nonnull %39) #12
  store ptr null, ptr %38, align 8, !tbaa !41
  %50 = load ptr, ptr %5, align 8, !tbaa !8
  %51 = icmp eq ptr %50, null
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %36, ptr %52, align 8, !tbaa !24
  store i32 %35, ptr %42, align 8, !tbaa !42
  br i1 %51, label %95, label %53

53:                                               ; preds = %47
  %.pre = load ptr, ptr %9, align 8, !tbaa !14
  %54 = icmp eq ptr %.pre, null
  br i1 %54, label %95, label %55

55:                                               ; preds = %.thread, %53
  %56 = load ptr, ptr %13, align 8, !tbaa !15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %95, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %56, align 8, !tbaa !16
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %61, label %95

61:                                               ; preds = %58
  %62 = getelementptr inbounds nuw i8, ptr %56, i64 8
  %63 = load i32, ptr %62, align 8, !tbaa !20
  %64 = add i32 %63, -16180
  %65 = icmp ult i32 %64, 32
  br i1 %65, label %66, label %95

66:                                               ; preds = %61
  %67 = getelementptr inbounds nuw i8, ptr %56, i64 60
  store i32 0, ptr %67, align 4, !tbaa !38
  %68 = getelementptr inbounds nuw i8, ptr %56, i64 64
  store i32 0, ptr %68, align 8, !tbaa !39
  %69 = getelementptr inbounds nuw i8, ptr %56, i64 68
  store i32 0, ptr %69, align 4, !tbaa !40
  %70 = getelementptr inbounds nuw i8, ptr %56, i64 40
  store i64 0, ptr %70, align 8, !tbaa !21
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %72, align 8, !tbaa !22
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %73, align 8, !tbaa !23
  %74 = getelementptr inbounds nuw i8, ptr %56, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %71, i8 0, i64 16, i1 false)
  %75 = load i32, ptr %74, align 8, !tbaa !24
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %66
  %78 = and i32 %75, 1
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %79, ptr %80, align 8, !tbaa !25
  br label %81

81:                                               ; preds = %77, %66
  store i32 16180, ptr %62, align 8, !tbaa !20
  %82 = getelementptr inbounds nuw i8, ptr %56, i64 12
  store i32 0, ptr %82, align 4, !tbaa !26
  %83 = getelementptr inbounds nuw i8, ptr %56, i64 20
  store i32 0, ptr %83, align 4, !tbaa !27
  %84 = getelementptr inbounds nuw i8, ptr %56, i64 24
  store i32 -1, ptr %84, align 8, !tbaa !28
  %85 = getelementptr inbounds nuw i8, ptr %56, i64 28
  store i32 32768, ptr %85, align 4, !tbaa !29
  %86 = getelementptr inbounds nuw i8, ptr %56, i64 48
  store ptr null, ptr %86, align 8, !tbaa !30
  %87 = getelementptr inbounds nuw i8, ptr %56, i64 80
  store i64 0, ptr %87, align 8, !tbaa !31
  %88 = getelementptr inbounds nuw i8, ptr %56, i64 88
  store i32 0, ptr %88, align 8, !tbaa !32
  %89 = getelementptr inbounds nuw i8, ptr %56, i64 1368
  %90 = getelementptr inbounds nuw i8, ptr %56, i64 144
  store ptr %89, ptr %90, align 8, !tbaa !33
  %91 = getelementptr inbounds nuw i8, ptr %56, i64 112
  store ptr %89, ptr %91, align 8, !tbaa !34
  %92 = getelementptr inbounds nuw i8, ptr %56, i64 104
  store ptr %89, ptr %92, align 8, !tbaa !35
  %93 = getelementptr inbounds nuw i8, ptr %56, i64 7144
  store i32 1, ptr %93, align 8, !tbaa !36
  %94 = getelementptr inbounds nuw i8, ptr %56, i64 7148
  store i32 -1, ptr %94, align 4, !tbaa !37
  br label %95

95:                                               ; preds = %81, %61, %58, %55, %53, %47, %select.unfold, %26, %19, %16, %12, %8, %4, %2
  %96 = phi i32 [ -2, %53 ], [ -2, %19 ], [ -2, %26 ], [ -2, %select.unfold ], [ -2, %47 ], [ -2, %61 ], [ 0, %81 ], [ -2, %55 ], [ -2, %58 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @inflateInit2_(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %84, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !44
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %84, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %84, label %13

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
  br i1 %30, label %84, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7152) %32, i8 0, i64 7152, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %29, ptr %33, align 8, !tbaa !15
  store ptr %0, ptr %29, align 8, !tbaa !16
  store i32 16180, ptr %32, align 8, !tbaa !20
  %34 = load ptr, ptr %15, align 8, !tbaa !8
  %35 = icmp eq ptr %34, null
  %36 = load ptr, ptr %22, align 8, !tbaa !14
  %37 = icmp eq ptr %36, null
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %82, label %39

39:                                               ; preds = %31
  %40 = icmp slt i32 %1, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = icmp samesign ult i32 %1, -15
  br i1 %42, label %82, label %43

43:                                               ; preds = %41
  %44 = sub nsw i32 0, %1
  br label %select.unfold

45:                                               ; preds = %39
  %46 = lshr i32 %1, 4
  %47 = add nuw nsw i32 %46, 5
  %48 = icmp samesign ult i32 %1, 48
  %49 = and i32 %1, 15
  %spec.select = select i1 %48, i32 %49, i32 %1
  br label %select.unfold

select.unfold:                                    ; preds = %45, %43
  %50 = phi i32 [ %44, %43 ], [ %spec.select, %45 ]
  %51 = phi i32 [ 0, %43 ], [ %47, %45 ]
  switch i32 %50, label %82 [
    i32 15, label %52
    i32 14, label %52
    i32 13, label %52
    i32 12, label %52
    i32 11, label %52
    i32 10, label %52
    i32 9, label %52
    i32 8, label %52
    i32 0, label %52
  ]

52:                                               ; preds = %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold
  %53 = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 %51, ptr %53, align 8, !tbaa !24
  %54 = getelementptr inbounds nuw i8, ptr %29, i64 56
  store i32 %50, ptr %54, align 8, !tbaa !42
  %55 = getelementptr inbounds nuw i8, ptr %29, i64 60
  store i32 0, ptr %55, align 4, !tbaa !38
  %56 = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i32 0, ptr %56, align 8, !tbaa !39
  %57 = getelementptr inbounds nuw i8, ptr %29, i64 68
  store i32 0, ptr %57, align 4, !tbaa !40
  %58 = getelementptr inbounds nuw i8, ptr %29, i64 40
  store i64 0, ptr %58, align 8, !tbaa !21
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %60, align 8, !tbaa !22
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %61, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  %62 = load i32, ptr %53, align 8, !tbaa !24
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %52
  %65 = and i32 %62, 1
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %66, ptr %67, align 8, !tbaa !25
  br label %68

68:                                               ; preds = %64, %52
  store i32 16180, ptr %32, align 8, !tbaa !20
  %69 = getelementptr inbounds nuw i8, ptr %29, i64 12
  store i32 0, ptr %69, align 4, !tbaa !26
  %70 = getelementptr inbounds nuw i8, ptr %29, i64 20
  store i32 0, ptr %70, align 4, !tbaa !27
  %71 = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i32 -1, ptr %71, align 8, !tbaa !28
  %72 = getelementptr inbounds nuw i8, ptr %29, i64 28
  store i32 32768, ptr %72, align 4, !tbaa !29
  %73 = getelementptr inbounds nuw i8, ptr %29, i64 48
  store ptr null, ptr %73, align 8, !tbaa !30
  %74 = getelementptr inbounds nuw i8, ptr %29, i64 80
  store i64 0, ptr %74, align 8, !tbaa !31
  %75 = getelementptr inbounds nuw i8, ptr %29, i64 88
  store i32 0, ptr %75, align 8, !tbaa !32
  %76 = getelementptr inbounds nuw i8, ptr %29, i64 1368
  %77 = getelementptr inbounds nuw i8, ptr %29, i64 144
  store ptr %76, ptr %77, align 8, !tbaa !33
  %78 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %76, ptr %78, align 8, !tbaa !34
  %79 = getelementptr inbounds nuw i8, ptr %29, i64 104
  store ptr %76, ptr %79, align 8, !tbaa !35
  %80 = getelementptr inbounds nuw i8, ptr %29, i64 7144
  store i32 1, ptr %80, align 8, !tbaa !36
  %81 = getelementptr inbounds nuw i8, ptr %29, i64 7148
  store i32 -1, ptr %81, align 4, !tbaa !37
  br label %84

82:                                               ; preds = %select.unfold, %41, %31
  %83 = load ptr, ptr %27, align 8, !tbaa !43
  tail call void %36(ptr noundef %83, ptr noundef nonnull %29) #12
  store ptr null, ptr %33, align 8, !tbaa !15
  br label %84

84:                                               ; preds = %82, %68, %26, %11, %6, %4
  %85 = phi i32 [ -4, %26 ], [ -6, %4 ], [ -2, %11 ], [ -6, %6 ], [ -2, %82 ], [ 0, %68 ]
  ret i32 %85
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #7

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %4 = icmp eq ptr %0, null
  br i1 %4, label %.loopexit187, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %.loopexit187, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %.loopexit187, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %.loopexit187, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %.loopexit187

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %.loopexit187

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %.loopexit187, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !50
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %.loopexit187

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

88:                                               ; preds = %2307, %39
  %89 = phi i32 [ %40, %39 ], [ %2316, %2307 ]
  %90 = phi ptr [ %30, %39 ], [ %2308, %2307 ]
  %91 = phi ptr [ %27, %39 ], [ %2309, %2307 ]
  %92 = phi i32 [ %44, %39 ], [ %2310, %2307 ]
  %93 = phi i32 [ %42, %39 ], [ %2311, %2307 ]
  %94 = phi i64 [ %46, %39 ], [ %2312, %2307 ]
  %95 = phi i32 [ %48, %39 ], [ %2313, %2307 ]
  %96 = phi i32 [ %42, %39 ], [ %2314, %2307 ]
  %97 = phi i32 [ 0, %39 ], [ %2315, %2307 ]
  %98 = ptrtoaddr ptr %91 to i64
  switch i32 %89, label %.loopexit187.loopexit [
    i32 16180, label %120
    i32 16181, label %115
    i32 16182, label %281
    i32 16183, label %364
    i32 16184, label %423
    i32 16185, label %501
    i32 16186, label %568
    i32 16187, label %632
    i32 16188, label %696
    i32 16189, label %110
    i32 16190, label %828
    i32 16191, label %838
    i32 16192, label %843
    i32 16193, label %892
    i32 16194, label %974
    i32 16195, label %979
    i32 16196, label %105
    i32 16197, label %1060
    i32 16198, label %1134
    i32 16199, label %1437
    i32 16200, label %1443
    i32 16201, label %101
    i32 16202, label %1689
    i32 16203, label %99
    i32 16204, label %1914
    i32 16205, label %2077
    i32 16206, label %2084
    i32 16207, label %103
    i32 16208, label %.loopexit185
    i32 16209, label %.loopexit185.loopexit5286
    i32 16210, label %.loopexit187
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !53
  br label %1845

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !53
  br label %1619

103:                                              ; preds = %88
  %104 = load i32, ptr %49, align 8, !tbaa !24
  br label %2214

105:                                              ; preds = %88
  %106 = icmp ult i32 %95, 14
  br i1 %106, label %107, label %1039

107:                                              ; preds = %105
  %108 = zext nneg i32 %95 to i64
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %2415, label %1007

110:                                              ; preds = %88
  %111 = icmp ult i32 %95, 32
  br i1 %111, label %112, label %821

112:                                              ; preds = %110
  %113 = zext nneg i32 %95 to i64
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %2358, label %768

115:                                              ; preds = %88
  %116 = icmp ult i32 %95, 16
  br i1 %116, label %117, label %250

117:                                              ; preds = %115
  %118 = zext nneg i32 %95 to i64
  %119 = icmp eq i32 %92, 0
  br i1 %119, label %2352, label %218

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
  br i1 %127, label %2322, label %129

128:                                              ; preds = %120
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2307

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
  %141 = icmp samesign ult i32 %95, 8
  br i1 %141, label %142, label %155

142:                                              ; preds = %136
  %143 = icmp eq i32 %139, 0
  br i1 %143, label %2322, label %144

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
  br label %2307

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
  br label %2307

193:                                              ; preds = %185
  %194 = and i64 %164, 15
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

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
  br label %2307

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
  br label %2307

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
  %230 = icmp samesign ult i32 %95, 8
  br i1 %230, label %231, label %244

231:                                              ; preds = %225
  %232 = icmp eq i32 %228, 0
  br i1 %232, label %2352, label %233

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
  br label %2307

259:                                              ; preds = %250
  %260 = and i32 %255, 57344
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

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
  br i1 %289, label %2346, label %290

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
  br i1 %304, label %2346, label %305

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
  br i1 %318, label %2346, label %319

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
  br i1 %332, label %2346, label %333

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
  br i1 %372, label %2340, label %373

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
  br i1 %387, label %2340, label %388

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
  %.pre = load i32, ptr %52, align 8, !tbaa !28
  br label %427

423:                                              ; preds = %88
  %424 = load i32, ptr %52, align 8, !tbaa !28
  %425 = and i32 %424, 1024
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %487, label %431

427:                                              ; preds = %419, %415, %411
  %428 = phi i32 [ %.pre, %419 ], [ %412, %415 ], [ %412, %411 ]
  store i32 16184, ptr %21, align 8, !tbaa !20
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
  br i1 %440, label %2334, label %441

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
  br i1 %455, label %2334, label %456

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
  %468 = phi ptr [ %90, %431 ], [ %464, %462 ], [ %450, %448 ]
  %469 = phi i32 [ %92, %431 ], [ %465, %462 ], [ %451, %448 ]
  %470 = phi i64 [ %94, %431 ], [ %463, %462 ], [ %449, %448 ]
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
  br i1 %508, label %565, label %509

509:                                              ; preds = %501
  %510 = load i32, ptr %56, align 4, !tbaa !61
  %511 = call i32 @llvm.umin.i32(i32 %510, i32 %503)
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %560, label %513

513:                                              ; preds = %509
  %514 = load ptr, ptr %84, align 8, !tbaa !30
  %515 = icmp eq ptr %514, null
  br i1 %515, label %539, label %516

516:                                              ; preds = %513
  %517 = getelementptr inbounds nuw i8, ptr %514, i64 24
  %518 = load ptr, ptr %517, align 8, !tbaa !63
  %519 = icmp eq ptr %518, null
  br i1 %519, label %539, label %520

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
  br i1 %530, label %531, label %539

531:                                              ; preds = %527
  %532 = zext i32 %524 to i64
  %533 = getelementptr inbounds nuw i8, ptr %518, i64 %532
  %534 = add i32 %524, %511
  %535 = icmp ugt i32 %534, %529
  %536 = sub nuw i32 %529, %524
  %spec.select = select i1 %535, i32 %536, i32 %511
  %537 = zext i32 %spec.select to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %533, ptr align 1 %502, i64 %537, i1 false)
  %538 = load i32, ptr %52, align 8, !tbaa !28
  br label %539

539:                                              ; preds = %531, %527, %516, %513
  %540 = phi i32 [ %538, %531 ], [ %506, %527 ], [ %506, %516 ], [ %506, %513 ]
  %541 = and i32 %540, 512
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %550, label %543

543:                                              ; preds = %539
  %544 = load i32, ptr %49, align 8, !tbaa !24
  %545 = and i32 %544, 4
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %550, label %547

547:                                              ; preds = %543
  %548 = load i64, ptr %53, align 8, !tbaa !54
  %549 = call i64 @crc32(i64 noundef %548, ptr noundef %502, i32 noundef %511) #12
  store i64 %549, ptr %53, align 8, !tbaa !54
  br label %550

550:                                              ; preds = %547, %543, %539
  %551 = load i32, ptr %56, align 4, !tbaa !61
  %552 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %551, i32 %511), !nosanitize !47
  %553 = extractvalue { i32, i1 } %552, 1, !nosanitize !47
  br i1 %553, label %554, label %555, !prof !48, !nosanitize !47

554:                                              ; preds = %550
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

555:                                              ; preds = %550
  %556 = sub i32 %503, %511
  %557 = extractvalue { i32, i1 } %552, 0, !nosanitize !47
  %558 = zext i32 %511 to i64
  %559 = getelementptr inbounds nuw i8, ptr %502, i64 %558
  store i32 %557, ptr %56, align 4, !tbaa !61
  br label %560

560:                                              ; preds = %555, %509
  %561 = phi i32 [ %557, %555 ], [ %510, %509 ]
  %562 = phi ptr [ %559, %555 ], [ %502, %509 ]
  %563 = phi i32 [ %556, %555 ], [ %503, %509 ]
  %564 = icmp eq i32 %561, 0
  br i1 %564, label %565, label %.loopexit185

565:                                              ; preds = %560, %501
  %566 = phi ptr [ %562, %560 ], [ %502, %501 ]
  %567 = phi i32 [ %563, %560 ], [ %503, %501 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16186, ptr %21, align 8, !tbaa !20
  br label %568

568:                                              ; preds = %565, %88
  %569 = phi ptr [ %566, %565 ], [ %90, %88 ]
  %570 = phi i32 [ %567, %565 ], [ %92, %88 ]
  %571 = phi i64 [ %504, %565 ], [ %94, %88 ]
  %572 = phi i32 [ %505, %565 ], [ %95, %88 ]
  %573 = load i32, ptr %52, align 8, !tbaa !28
  %574 = and i32 %573, 2048
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %624, label %576

576:                                              ; preds = %568
  %577 = icmp eq i32 %570, 0
  br i1 %577, label %.loopexit185, label %578

578:                                              ; preds = %576
  %579 = zext i32 %570 to i64
  br label %580

580:                                              ; preds = %600, %578
  %581 = phi i64 [ 0, %578 ], [ %582, %600 ]
  %582 = add nuw nsw i64 %581, 1
  %583 = getelementptr inbounds nuw i8, ptr %569, i64 %581
  %584 = load i8, ptr %583, align 1, !tbaa !44
  %585 = load ptr, ptr %84, align 8, !tbaa !30
  %586 = icmp eq ptr %585, null
  br i1 %586, label %600, label %587

587:                                              ; preds = %580
  %588 = getelementptr inbounds nuw i8, ptr %585, i64 40
  %589 = load ptr, ptr %588, align 8, !tbaa !65
  %590 = icmp eq ptr %589, null
  br i1 %590, label %600, label %591

591:                                              ; preds = %587
  %592 = load i32, ptr %56, align 4, !tbaa !61
  %593 = getelementptr inbounds nuw i8, ptr %585, i64 48
  %594 = load i32, ptr %593, align 8, !tbaa !66
  %595 = icmp ult i32 %592, %594
  br i1 %595, label %596, label %600

596:                                              ; preds = %591
  %597 = add nuw i32 %592, 1
  store i32 %597, ptr %56, align 4, !tbaa !61
  %598 = zext i32 %592 to i64
  %599 = getelementptr inbounds nuw i8, ptr %589, i64 %598
  store i8 %584, ptr %599, align 1, !tbaa !44
  br label %600

600:                                              ; preds = %596, %591, %587, %580
  %601 = icmp ne i8 %584, 0
  %602 = icmp samesign ult i64 %582, %579
  %603 = select i1 %601, i1 %602, i1 false
  br i1 %603, label %580, label %604, !llvm.loop !67

604:                                              ; preds = %600
  %605 = trunc nuw i64 %582 to i32
  %606 = load i32, ptr %52, align 8, !tbaa !28
  %607 = and i32 %606, 512
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %616, label %609

609:                                              ; preds = %604
  %610 = load i32, ptr %49, align 8, !tbaa !24
  %611 = and i32 %610, 4
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %616, label %613

613:                                              ; preds = %609
  %614 = load i64, ptr %53, align 8, !tbaa !54
  %615 = call i64 @crc32(i64 noundef %614, ptr noundef nonnull %569, i32 noundef %605) #12
  store i64 %615, ptr %53, align 8, !tbaa !54
  br label %616

616:                                              ; preds = %613, %609, %604
  %617 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %570, i32 %605), !nosanitize !47
  %618 = extractvalue { i32, i1 } %617, 1, !nosanitize !47
  br i1 %618, label %619, label %620, !prof !48, !nosanitize !47

619:                                              ; preds = %616
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

620:                                              ; preds = %616
  %621 = extractvalue { i32, i1 } %617, 0, !nosanitize !47
  %622 = and i64 %582, 4294967295
  %623 = getelementptr inbounds nuw i8, ptr %569, i64 %622
  br i1 %601, label %.loopexit185, label %629

624:                                              ; preds = %568
  %625 = load ptr, ptr %84, align 8, !tbaa !30
  %626 = icmp eq ptr %625, null
  br i1 %626, label %629, label %627

627:                                              ; preds = %624
  %628 = getelementptr inbounds nuw i8, ptr %625, i64 40
  store ptr null, ptr %628, align 8, !tbaa !65
  br label %629

629:                                              ; preds = %627, %624, %620
  %630 = phi ptr [ %623, %620 ], [ %569, %627 ], [ %569, %624 ]
  %631 = phi i32 [ %621, %620 ], [ %570, %627 ], [ %570, %624 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16187, ptr %21, align 8, !tbaa !20
  br label %632

632:                                              ; preds = %629, %88
  %633 = phi ptr [ %630, %629 ], [ %90, %88 ]
  %634 = phi i32 [ %631, %629 ], [ %92, %88 ]
  %635 = phi i64 [ %571, %629 ], [ %94, %88 ]
  %636 = phi i32 [ %572, %629 ], [ %95, %88 ]
  %637 = load i32, ptr %52, align 8, !tbaa !28
  %638 = and i32 %637, 4096
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %688, label %640

640:                                              ; preds = %632
  %641 = icmp eq i32 %634, 0
  br i1 %641, label %.loopexit185, label %642

642:                                              ; preds = %640
  %643 = zext i32 %634 to i64
  br label %644

644:                                              ; preds = %664, %642
  %645 = phi i64 [ 0, %642 ], [ %646, %664 ]
  %646 = add nuw nsw i64 %645, 1
  %647 = getelementptr inbounds nuw i8, ptr %633, i64 %645
  %648 = load i8, ptr %647, align 1, !tbaa !44
  %649 = load ptr, ptr %84, align 8, !tbaa !30
  %650 = icmp eq ptr %649, null
  br i1 %650, label %664, label %651

651:                                              ; preds = %644
  %652 = getelementptr inbounds nuw i8, ptr %649, i64 56
  %653 = load ptr, ptr %652, align 8, !tbaa !69
  %654 = icmp eq ptr %653, null
  br i1 %654, label %664, label %655

655:                                              ; preds = %651
  %656 = load i32, ptr %56, align 4, !tbaa !61
  %657 = getelementptr inbounds nuw i8, ptr %649, i64 64
  %658 = load i32, ptr %657, align 8, !tbaa !70
  %659 = icmp ult i32 %656, %658
  br i1 %659, label %660, label %664

660:                                              ; preds = %655
  %661 = add nuw i32 %656, 1
  store i32 %661, ptr %56, align 4, !tbaa !61
  %662 = zext i32 %656 to i64
  %663 = getelementptr inbounds nuw i8, ptr %653, i64 %662
  store i8 %648, ptr %663, align 1, !tbaa !44
  br label %664

664:                                              ; preds = %660, %655, %651, %644
  %665 = icmp ne i8 %648, 0
  %666 = icmp samesign ult i64 %646, %643
  %667 = select i1 %665, i1 %666, i1 false
  br i1 %667, label %644, label %668, !llvm.loop !71

668:                                              ; preds = %664
  %669 = trunc nuw i64 %646 to i32
  %670 = load i32, ptr %52, align 8, !tbaa !28
  %671 = and i32 %670, 512
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %680, label %673

673:                                              ; preds = %668
  %674 = load i32, ptr %49, align 8, !tbaa !24
  %675 = and i32 %674, 4
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %680, label %677

677:                                              ; preds = %673
  %678 = load i64, ptr %53, align 8, !tbaa !54
  %679 = call i64 @crc32(i64 noundef %678, ptr noundef nonnull %633, i32 noundef %669) #12
  store i64 %679, ptr %53, align 8, !tbaa !54
  br label %680

680:                                              ; preds = %677, %673, %668
  %681 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %634, i32 %669), !nosanitize !47
  %682 = extractvalue { i32, i1 } %681, 1, !nosanitize !47
  br i1 %682, label %683, label %684, !prof !48, !nosanitize !47

683:                                              ; preds = %680
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

684:                                              ; preds = %680
  %685 = extractvalue { i32, i1 } %681, 0, !nosanitize !47
  %686 = and i64 %646, 4294967295
  %687 = getelementptr inbounds nuw i8, ptr %633, i64 %686
  br i1 %665, label %.loopexit185, label %693

688:                                              ; preds = %632
  %689 = load ptr, ptr %84, align 8, !tbaa !30
  %690 = icmp eq ptr %689, null
  br i1 %690, label %693, label %691

691:                                              ; preds = %688
  %692 = getelementptr inbounds nuw i8, ptr %689, i64 56
  store ptr null, ptr %692, align 8, !tbaa !69
  br label %693

693:                                              ; preds = %691, %688, %684
  %694 = phi ptr [ %687, %684 ], [ %633, %691 ], [ %633, %688 ]
  %695 = phi i32 [ %685, %684 ], [ %634, %691 ], [ %634, %688 ]
  store i32 16188, ptr %21, align 8, !tbaa !20
  br label %696

696:                                              ; preds = %693, %88
  %697 = phi ptr [ %694, %693 ], [ %90, %88 ]
  %698 = phi i32 [ %695, %693 ], [ %92, %88 ]
  %699 = phi i64 [ %635, %693 ], [ %94, %88 ]
  %700 = phi i32 [ %636, %693 ], [ %95, %88 ]
  %701 = load i32, ptr %52, align 8, !tbaa !28
  %702 = and i32 %701, 512
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %754, label %704

704:                                              ; preds = %696
  %705 = icmp ult i32 %700, 16
  br i1 %705, label %706, label %741

706:                                              ; preds = %704
  %707 = zext nneg i32 %700 to i64
  %708 = icmp eq i32 %698, 0
  br i1 %708, label %2328, label %709

709:                                              ; preds = %706
  %710 = load i8, ptr %697, align 1, !tbaa !44
  %711 = zext i8 %710 to i64
  %712 = shl nuw nsw i64 %711, %707
  %713 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %699, i64 %712), !nosanitize !47
  %714 = extractvalue { i64, i1 } %713, 1, !nosanitize !47
  br i1 %714, label %715, label %716, !prof !48, !nosanitize !47

715:                                              ; preds = %724, %709
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

716:                                              ; preds = %709
  %717 = extractvalue { i64, i1 } %713, 0, !nosanitize !47
  %718 = getelementptr inbounds nuw i8, ptr %697, i64 1
  %719 = add i32 %698, -1
  %720 = add nuw nsw i64 %707, 8
  %721 = icmp samesign ult i32 %700, 8
  br i1 %721, label %722, label %735

722:                                              ; preds = %716
  %723 = icmp eq i32 %719, 0
  br i1 %723, label %2328, label %724

724:                                              ; preds = %722
  %725 = load i8, ptr %718, align 1, !tbaa !44
  %726 = zext i8 %725 to i64
  %727 = shl nuw nsw i64 %726, %720
  %728 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %717, i64 %727), !nosanitize !47
  %729 = extractvalue { i64, i1 } %728, 1, !nosanitize !47
  br i1 %729, label %715, label %730, !prof !48, !nosanitize !47

730:                                              ; preds = %724
  %731 = extractvalue { i64, i1 } %728, 0, !nosanitize !47
  %732 = getelementptr inbounds nuw i8, ptr %697, i64 2
  %733 = add i32 %698, -2
  %734 = or disjoint i64 %707, 16
  br label %735

735:                                              ; preds = %730, %716
  %736 = phi i64 [ %717, %716 ], [ %731, %730 ]
  %737 = phi ptr [ %718, %716 ], [ %732, %730 ]
  %738 = phi i32 [ %719, %716 ], [ %733, %730 ]
  %739 = phi i64 [ %720, %716 ], [ %734, %730 ]
  %740 = trunc nuw nsw i64 %739 to i32
  br label %741

741:                                              ; preds = %735, %704
  %742 = phi ptr [ %697, %704 ], [ %737, %735 ]
  %743 = phi i32 [ %698, %704 ], [ %738, %735 ]
  %744 = phi i64 [ %699, %704 ], [ %736, %735 ]
  %745 = phi i32 [ %700, %704 ], [ %740, %735 ]
  %746 = load i32, ptr %49, align 8, !tbaa !24
  %747 = and i32 %746, 4
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %754, label %749

749:                                              ; preds = %741
  %750 = load i64, ptr %53, align 8, !tbaa !54
  %751 = and i64 %750, 65535
  %752 = icmp eq i64 %744, %751
  br i1 %752, label %754, label %753

753:                                              ; preds = %749
  store ptr @.str.5, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

754:                                              ; preds = %749, %741, %696
  %755 = phi ptr [ %697, %696 ], [ %742, %741 ], [ %742, %749 ]
  %756 = phi i32 [ %698, %696 ], [ %743, %741 ], [ %743, %749 ]
  %757 = phi i64 [ %699, %696 ], [ 0, %741 ], [ 0, %749 ]
  %758 = phi i32 [ %700, %696 ], [ 0, %741 ], [ 0, %749 ]
  %759 = load ptr, ptr %84, align 8, !tbaa !30
  %760 = icmp eq ptr %759, null
  br i1 %760, label %766, label %761

761:                                              ; preds = %754
  %762 = lshr i32 %701, 9
  %763 = and i32 %762, 1
  %764 = getelementptr inbounds nuw i8, ptr %759, i64 68
  store i32 %763, ptr %764, align 4, !tbaa !72
  %765 = getelementptr inbounds nuw i8, ptr %759, i64 72
  store i32 1, ptr %765, align 8, !tbaa !55
  br label %766

766:                                              ; preds = %761, %754
  %767 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %767, ptr %53, align 8, !tbaa !54
  store i64 %767, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2307

768:                                              ; preds = %112
  %769 = load i8, ptr %90, align 1, !tbaa !44
  %770 = zext i8 %769 to i64
  %771 = shl nuw nsw i64 %770, %113
  %772 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %771), !nosanitize !47
  %773 = extractvalue { i64, i1 } %772, 1, !nosanitize !47
  br i1 %773, label %774, label %775, !prof !48, !nosanitize !47

774:                                              ; preds = %811, %797, %783, %768
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

775:                                              ; preds = %768
  %776 = extractvalue { i64, i1 } %772, 0, !nosanitize !47
  %777 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %778 = add i32 %92, -1
  %779 = add nuw nsw i64 %113, 8
  %780 = icmp samesign ult i32 %95, 24
  br i1 %780, label %781, label %821

781:                                              ; preds = %775
  %782 = icmp eq i32 %778, 0
  br i1 %782, label %2358, label %783

783:                                              ; preds = %781
  %784 = load i8, ptr %777, align 1, !tbaa !44
  %785 = zext i8 %784 to i64
  %786 = shl nuw nsw i64 %785, %779
  %787 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %776, i64 %786), !nosanitize !47
  %788 = extractvalue { i64, i1 } %787, 1, !nosanitize !47
  br i1 %788, label %774, label %789, !prof !48, !nosanitize !47

789:                                              ; preds = %783
  %790 = extractvalue { i64, i1 } %787, 0, !nosanitize !47
  %791 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %792 = add i32 %92, -2
  %793 = add nuw nsw i64 %113, 16
  %794 = icmp samesign ult i32 %95, 16
  br i1 %794, label %795, label %821

795:                                              ; preds = %789
  %796 = icmp eq i32 %792, 0
  br i1 %796, label %2358, label %797

797:                                              ; preds = %795
  %798 = load i8, ptr %791, align 1, !tbaa !44
  %799 = zext i8 %798 to i64
  %800 = shl nuw nsw i64 %799, %793
  %801 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %790, i64 %800), !nosanitize !47
  %802 = extractvalue { i64, i1 } %801, 1, !nosanitize !47
  br i1 %802, label %774, label %803, !prof !48, !nosanitize !47

803:                                              ; preds = %797
  %804 = extractvalue { i64, i1 } %801, 0, !nosanitize !47
  %805 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %806 = add i32 %92, -3
  %807 = add nuw nsw i64 %113, 24
  %808 = icmp samesign ult i32 %95, 8
  br i1 %808, label %809, label %821

809:                                              ; preds = %803
  %810 = icmp eq i32 %806, 0
  br i1 %810, label %2358, label %811

811:                                              ; preds = %809
  %812 = load i8, ptr %805, align 1, !tbaa !44
  %813 = zext i8 %812 to i64
  %814 = shl nuw nsw i64 %813, %807
  %815 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %804, i64 %814), !nosanitize !47
  %816 = extractvalue { i64, i1 } %815, 1, !nosanitize !47
  br i1 %816, label %774, label %817, !prof !48, !nosanitize !47

817:                                              ; preds = %811
  %818 = extractvalue { i64, i1 } %815, 0, !nosanitize !47
  %819 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %820 = add i32 %92, -4
  br label %821

821:                                              ; preds = %817, %803, %789, %775, %110
  %822 = phi ptr [ %90, %110 ], [ %777, %775 ], [ %791, %789 ], [ %805, %803 ], [ %819, %817 ]
  %823 = phi i32 [ %92, %110 ], [ %778, %775 ], [ %792, %789 ], [ %806, %803 ], [ %820, %817 ]
  %824 = phi i64 [ %94, %110 ], [ %776, %775 ], [ %790, %789 ], [ %804, %803 ], [ %818, %817 ]
  %825 = trunc i64 %824 to i32
  %826 = call i32 @llvm.bswap.i32(i32 %825)
  %827 = zext i32 %826 to i64
  store i64 %827, ptr %53, align 8, !tbaa !54
  store i64 %827, ptr %54, align 8, !tbaa !25
  store i32 16190, ptr %21, align 8, !tbaa !20
  br label %828

828:                                              ; preds = %821, %88
  %829 = phi ptr [ %822, %821 ], [ %90, %88 ]
  %830 = phi i32 [ %823, %821 ], [ %92, %88 ]
  %831 = phi i64 [ 0, %821 ], [ %94, %88 ]
  %832 = phi i32 [ 0, %821 ], [ %95, %88 ]
  %833 = load i32, ptr %80, align 4, !tbaa !27
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %836

835:                                              ; preds = %828
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %829, ptr %0, align 8, !tbaa !50
  store i32 %830, ptr %43, align 8, !tbaa !51
  store i64 %831, ptr %45, align 8, !tbaa !31
  store i32 %832, ptr %47, align 8, !tbaa !32
  br label %.loopexit187

836:                                              ; preds = %828
  %837 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %837, ptr %53, align 8, !tbaa !54
  store i64 %837, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %838

838:                                              ; preds = %836, %88
  %839 = phi ptr [ %829, %836 ], [ %90, %88 ]
  %840 = phi i32 [ %830, %836 ], [ %92, %88 ]
  %841 = phi i64 [ %831, %836 ], [ %94, %88 ]
  %842 = phi i32 [ %832, %836 ], [ %95, %88 ]
  br i1 %82, label %.loopexit185, label %843

843:                                              ; preds = %838, %88
  %844 = phi ptr [ %839, %838 ], [ %90, %88 ]
  %845 = phi i32 [ %840, %838 ], [ %92, %88 ]
  %846 = phi i64 [ %841, %838 ], [ %94, %88 ]
  %847 = phi i32 [ %842, %838 ], [ %95, %88 ]
  %848 = load i32, ptr %83, align 4, !tbaa !26
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %850, label %855

850:                                              ; preds = %843
  %851 = icmp ult i32 %847, 3
  br i1 %851, label %852, label %872

852:                                              ; preds = %850
  %853 = or disjoint i32 %847, 8
  %854 = icmp eq i32 %845, 0
  br i1 %854, label %.loopexit185, label %860

855:                                              ; preds = %843
  %856 = and i32 %847, 7
  %857 = and i32 %847, -8
  %858 = zext nneg i32 %856 to i64
  %859 = lshr i64 %846, %858
  store i32 16206, ptr %21, align 8, !tbaa !20
  br label %2307

860:                                              ; preds = %852
  %861 = load i8, ptr %844, align 1, !tbaa !44
  %862 = zext i8 %861 to i64
  %863 = zext nneg i32 %847 to i64
  %864 = shl nuw nsw i64 %862, %863
  %865 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %846, i64 %864), !nosanitize !47
  %866 = extractvalue { i64, i1 } %865, 1, !nosanitize !47
  br i1 %866, label %867, label %868, !prof !48, !nosanitize !47

867:                                              ; preds = %860
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

868:                                              ; preds = %860
  %869 = extractvalue { i64, i1 } %865, 0, !nosanitize !47
  %870 = getelementptr inbounds nuw i8, ptr %844, i64 1
  %871 = add i32 %845, -1
  br label %872

872:                                              ; preds = %868, %850
  %873 = phi ptr [ %870, %868 ], [ %844, %850 ]
  %874 = phi i32 [ %871, %868 ], [ %845, %850 ]
  %875 = phi i64 [ %869, %868 ], [ %846, %850 ]
  %876 = phi i32 [ %853, %868 ], [ %847, %850 ]
  %877 = trunc i64 %875 to i32
  %878 = and i32 %877, 1
  store i32 %878, ptr %83, align 4, !tbaa !26
  %879 = lshr i32 %877, 1
  %880 = and i32 %879, 3
  switch i32 %880, label %default.unreachable2831 [
    i32 0, label %887
    i32 1, label %881
    i32 2, label %885
    i32 3, label %886
  ]

881:                                              ; preds = %872
  call void @inflate_fixed(ptr noundef nonnull %15) #12
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %882, label %889

882:                                              ; preds = %881
  %883 = add i32 %876, -3
  %884 = lshr i64 %875, 3
  br label %.loopexit185

885:                                              ; preds = %872
  br label %887

default.unreachable2831:                          ; preds = %872
  unreachable

886:                                              ; preds = %872
  store ptr @.str.6, ptr %55, align 8, !tbaa !45
  br label %887

887:                                              ; preds = %886, %885, %872
  %888 = phi i32 [ 16209, %886 ], [ 16196, %885 ], [ 16193, %872 ]
  store i32 %888, ptr %21, align 8, !tbaa !20
  br label %889

889:                                              ; preds = %887, %881
  %890 = add i32 %876, -3
  %891 = lshr i64 %875, 3
  br label %2307

892:                                              ; preds = %88
  %893 = and i32 %95, 7
  %894 = zext nneg i32 %893 to i64
  %895 = lshr i64 %94, %894
  %896 = and i32 %95, -8
  %897 = icmp ult i32 %95, 32
  br i1 %897, label %898, label %961

898:                                              ; preds = %892
  %899 = and i32 %95, 24
  %900 = zext nneg i32 %899 to i64
  %901 = icmp eq i32 %92, 0
  br i1 %901, label %2364, label %902

902:                                              ; preds = %898
  %903 = load i8, ptr %90, align 1, !tbaa !44
  %904 = zext i8 %903 to i64
  %905 = shl nuw nsw i64 %904, %900
  %906 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %895, i64 %905), !nosanitize !47
  %907 = extractvalue { i64, i1 } %906, 1, !nosanitize !47
  br i1 %907, label %908, label %909, !prof !48, !nosanitize !47

908:                                              ; preds = %945, %931, %917, %902
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

909:                                              ; preds = %902
  %910 = extractvalue { i64, i1 } %906, 0, !nosanitize !47
  %911 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %912 = add i32 %92, -1
  %913 = add nuw nsw i64 %900, 8
  %914 = icmp samesign ult i32 %95, 24
  br i1 %914, label %915, label %955

915:                                              ; preds = %909
  %916 = icmp eq i32 %912, 0
  br i1 %916, label %2364, label %917

917:                                              ; preds = %915
  %918 = load i8, ptr %911, align 1, !tbaa !44
  %919 = zext i8 %918 to i64
  %920 = shl nuw nsw i64 %919, %913
  %921 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %910, i64 %920), !nosanitize !47
  %922 = extractvalue { i64, i1 } %921, 1, !nosanitize !47
  br i1 %922, label %908, label %923, !prof !48, !nosanitize !47

923:                                              ; preds = %917
  %924 = extractvalue { i64, i1 } %921, 0, !nosanitize !47
  %925 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %926 = add i32 %92, -2
  %927 = add nuw nsw i64 %900, 16
  %928 = icmp samesign ult i32 %95, 16
  br i1 %928, label %929, label %955

929:                                              ; preds = %923
  %930 = icmp eq i32 %926, 0
  br i1 %930, label %2364, label %931

931:                                              ; preds = %929
  %932 = load i8, ptr %925, align 1, !tbaa !44
  %933 = zext i8 %932 to i64
  %934 = shl nuw nsw i64 %933, %927
  %935 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %924, i64 %934), !nosanitize !47
  %936 = extractvalue { i64, i1 } %935, 1, !nosanitize !47
  br i1 %936, label %908, label %937, !prof !48, !nosanitize !47

937:                                              ; preds = %931
  %938 = extractvalue { i64, i1 } %935, 0, !nosanitize !47
  %939 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %940 = add i32 %92, -3
  %941 = add nuw nsw i64 %900, 24
  %942 = icmp eq i32 %899, 0
  br i1 %942, label %943, label %955

943:                                              ; preds = %937
  %944 = icmp eq i32 %940, 0
  br i1 %944, label %2364, label %945

945:                                              ; preds = %943
  %946 = load i8, ptr %939, align 1, !tbaa !44
  %947 = zext i8 %946 to i64
  %948 = shl nuw nsw i64 %947, %941
  %949 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %938, i64 %948), !nosanitize !47
  %950 = extractvalue { i64, i1 } %949, 1, !nosanitize !47
  br i1 %950, label %908, label %951, !prof !48, !nosanitize !47

951:                                              ; preds = %945
  %952 = extractvalue { i64, i1 } %949, 0, !nosanitize !47
  %953 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %954 = add i32 %92, -4
  br label %955

955:                                              ; preds = %951, %937, %923, %909
  %956 = phi i64 [ %910, %909 ], [ %924, %923 ], [ %938, %937 ], [ %952, %951 ]
  %957 = phi ptr [ %911, %909 ], [ %925, %923 ], [ %939, %937 ], [ %953, %951 ]
  %958 = phi i32 [ %912, %909 ], [ %926, %923 ], [ %940, %937 ], [ %954, %951 ]
  %959 = phi i64 [ %913, %909 ], [ %927, %923 ], [ %941, %937 ], [ 32, %951 ]
  %960 = trunc nuw nsw i64 %959 to i32
  br label %961

961:                                              ; preds = %955, %892
  %962 = phi ptr [ %90, %892 ], [ %957, %955 ]
  %963 = phi i32 [ %92, %892 ], [ %958, %955 ]
  %964 = phi i64 [ %895, %892 ], [ %956, %955 ]
  %965 = phi i32 [ %896, %892 ], [ %960, %955 ]
  %966 = and i64 %964, 65535
  %967 = lshr i64 %964, 16
  %968 = xor i64 %967, %966
  %969 = icmp eq i64 %968, 65535
  br i1 %969, label %971, label %970

970:                                              ; preds = %961
  store ptr @.str.7, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

971:                                              ; preds = %961
  %972 = trunc i64 %964 to i32
  %973 = and i32 %972, 65535
  store i32 %973, ptr %56, align 4, !tbaa !61
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit185, label %974

974:                                              ; preds = %971, %88
  %975 = phi ptr [ %962, %971 ], [ %90, %88 ]
  %976 = phi i32 [ %963, %971 ], [ %92, %88 ]
  %977 = phi i64 [ 0, %971 ], [ %94, %88 ]
  %978 = phi i32 [ 0, %971 ], [ %95, %88 ]
  store i32 16195, ptr %21, align 8, !tbaa !20
  br label %979

979:                                              ; preds = %974, %88
  %980 = phi ptr [ %975, %974 ], [ %90, %88 ]
  %981 = phi i32 [ %976, %974 ], [ %92, %88 ]
  %982 = phi i64 [ %977, %974 ], [ %94, %88 ]
  %983 = phi i32 [ %978, %974 ], [ %95, %88 ]
  %984 = load i32, ptr %56, align 4, !tbaa !61
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %1006, label %986

986:                                              ; preds = %979
  %987 = call i32 @llvm.umin.i32(i32 %984, i32 %981)
  %988 = call i32 @llvm.umin.i32(i32 %987, i32 %93)
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %.loopexit185, label %990

990:                                              ; preds = %986
  %991 = zext i32 %988 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr align 1 %980, i64 %991, i1 false)
  %992 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %981, i32 %988), !nosanitize !47
  %993 = extractvalue { i32, i1 } %992, 0, !nosanitize !47
  %994 = extractvalue { i32, i1 } %992, 1, !nosanitize !47
  br i1 %994, label %995, label %996, !prof !48, !nosanitize !47

995:                                              ; preds = %990
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

996:                                              ; preds = %990
  %997 = load i32, ptr %56, align 4, !tbaa !61
  %998 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %997, i32 %988), !nosanitize !47
  %999 = extractvalue { i32, i1 } %998, 1, !nosanitize !47
  br i1 %999, label %1000, label %1001, !prof !48, !nosanitize !47

1000:                                             ; preds = %996
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1001:                                             ; preds = %996
  %1002 = sub i32 %93, %988
  %1003 = getelementptr inbounds nuw i8, ptr %980, i64 %991
  %1004 = extractvalue { i32, i1 } %998, 0, !nosanitize !47
  %1005 = getelementptr inbounds nuw i8, ptr %91, i64 %991
  store i32 %1004, ptr %56, align 4, !tbaa !61
  br label %2307

1006:                                             ; preds = %979
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2307

1007:                                             ; preds = %107
  %1008 = load i8, ptr %90, align 1, !tbaa !44
  %1009 = zext i8 %1008 to i64
  %1010 = shl nuw nsw i64 %1009, %108
  %1011 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %1010), !nosanitize !47
  %1012 = extractvalue { i64, i1 } %1011, 1, !nosanitize !47
  br i1 %1012, label %1013, label %1014, !prof !48, !nosanitize !47

1013:                                             ; preds = %1022, %1007
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1014:                                             ; preds = %1007
  %1015 = extractvalue { i64, i1 } %1011, 0, !nosanitize !47
  %1016 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %1017 = add i32 %92, -1
  %1018 = add nuw nsw i64 %108, 8
  %1019 = icmp samesign ult i32 %95, 6
  br i1 %1019, label %1020, label %1033

1020:                                             ; preds = %1014
  %1021 = icmp eq i32 %1017, 0
  br i1 %1021, label %2415, label %1022

1022:                                             ; preds = %1020
  %1023 = load i8, ptr %1016, align 1, !tbaa !44
  %1024 = zext i8 %1023 to i64
  %1025 = shl nuw nsw i64 %1024, %1018
  %1026 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1015, i64 %1025), !nosanitize !47
  %1027 = extractvalue { i64, i1 } %1026, 1, !nosanitize !47
  br i1 %1027, label %1013, label %1028, !prof !48, !nosanitize !47

1028:                                             ; preds = %1022
  %1029 = extractvalue { i64, i1 } %1026, 0, !nosanitize !47
  %1030 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %1031 = add i32 %92, -2
  %1032 = or disjoint i64 %108, 16
  br label %1033

1033:                                             ; preds = %1028, %1014
  %1034 = phi i64 [ %1015, %1014 ], [ %1029, %1028 ]
  %1035 = phi ptr [ %1016, %1014 ], [ %1030, %1028 ]
  %1036 = phi i32 [ %1017, %1014 ], [ %1031, %1028 ]
  %1037 = phi i64 [ %1018, %1014 ], [ %1032, %1028 ]
  %1038 = trunc nuw nsw i64 %1037 to i32
  br label %1039

1039:                                             ; preds = %1033, %105
  %1040 = phi ptr [ %90, %105 ], [ %1035, %1033 ]
  %1041 = phi i32 [ %92, %105 ], [ %1036, %1033 ]
  %1042 = phi i64 [ %94, %105 ], [ %1034, %1033 ]
  %1043 = phi i32 [ %95, %105 ], [ %1038, %1033 ]
  %1044 = trunc i64 %1042 to i32
  %1045 = and i32 %1044, 31
  %1046 = add nuw nsw i32 %1045, 257
  store i32 %1046, ptr %57, align 4, !tbaa !73
  %1047 = lshr i32 %1044, 5
  %1048 = and i32 %1047, 31
  %1049 = add nuw nsw i32 %1048, 1
  store i32 %1049, ptr %58, align 8, !tbaa !74
  %1050 = lshr i32 %1044, 10
  %1051 = and i32 %1050, 15
  %1052 = add nuw nsw i32 %1051, 4
  store i32 %1052, ptr %59, align 8, !tbaa !75
  %1053 = lshr i64 %1042, 14
  %1054 = add i32 %1043, -14
  %1055 = icmp samesign ugt i32 %1045, 29
  %1056 = icmp samesign ugt i32 %1048, 29
  %1057 = select i1 %1055, i1 true, i1 %1056
  br i1 %1057, label %1058, label %1059

1058:                                             ; preds = %1039
  store ptr @.str.8, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

1059:                                             ; preds = %1039
  store i32 0, ptr %60, align 4, !tbaa !76
  store i32 16197, ptr %21, align 8, !tbaa !20
  br label %1064

1060:                                             ; preds = %88
  %1061 = load i32, ptr %59, align 8, !tbaa !75
  %1062 = load i32, ptr %60, align 4, !tbaa !76
  %1063 = icmp ult i32 %1062, %1061
  br i1 %1063, label %1064, label %.loopexit186

1064:                                             ; preds = %1060, %1059
  %1065 = phi i32 [ %1054, %1059 ], [ %95, %1060 ]
  %1066 = phi i64 [ %1053, %1059 ], [ %94, %1060 ]
  %1067 = phi i32 [ %1041, %1059 ], [ %92, %1060 ]
  %1068 = phi ptr [ %1040, %1059 ], [ %90, %1060 ]
  %1069 = phi i32 [ %1052, %1059 ], [ %1061, %1060 ]
  %1070 = phi i32 [ 0, %1059 ], [ %1062, %1060 ]
  %1071 = zext i32 %1070 to i64
  %1072 = zext i32 %1069 to i64
  br label %1081

.loopexit186:                                     ; preds = %1103, %1060
  %1073 = phi ptr [ %90, %1060 ], [ %1104, %1103 ]
  %1074 = phi i32 [ %92, %1060 ], [ %1105, %1103 ]
  %1075 = phi i64 [ %94, %1060 ], [ %1117, %1103 ]
  %1076 = phi i32 [ %95, %1060 ], [ %1116, %1103 ]
  %1077 = phi i32 [ %1062, %1060 ], [ %1069, %1103 ]
  %1078 = icmp ult i32 %1077, 19
  br i1 %1078, label %1079, label %1129

1079:                                             ; preds = %.loopexit186
  %1080 = zext nneg i32 %1077 to i64
  br label %1119

1081:                                             ; preds = %1103, %1064
  %1082 = phi i64 [ %1071, %1064 ], [ %1108, %1103 ]
  %1083 = phi i32 [ %1065, %1064 ], [ %1116, %1103 ]
  %1084 = phi i64 [ %1066, %1064 ], [ %1117, %1103 ]
  %1085 = phi i32 [ %1067, %1064 ], [ %1105, %1103 ]
  %1086 = phi ptr [ %1068, %1064 ], [ %1104, %1103 ]
  %1087 = icmp ult i32 %1083, 3
  br i1 %1087, label %1088, label %1103

1088:                                             ; preds = %1081
  %1089 = or disjoint i32 %1083, 8
  %1090 = icmp eq i32 %1085, 0
  br i1 %1090, label %.loopexit185, label %1091

1091:                                             ; preds = %1088
  %1092 = load i8, ptr %1086, align 1, !tbaa !44
  %1093 = zext i8 %1092 to i64
  %1094 = zext nneg i32 %1083 to i64
  %1095 = shl nuw nsw i64 %1093, %1094
  %1096 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1084, i64 %1095), !nosanitize !47
  %1097 = extractvalue { i64, i1 } %1096, 1, !nosanitize !47
  br i1 %1097, label %1098, label %1099, !prof !48, !nosanitize !47

1098:                                             ; preds = %1091
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1099:                                             ; preds = %1091
  %1100 = extractvalue { i64, i1 } %1096, 0, !nosanitize !47
  %1101 = getelementptr inbounds nuw i8, ptr %1086, i64 1
  %1102 = add i32 %1085, -1
  br label %1103

1103:                                             ; preds = %1099, %1081
  %1104 = phi ptr [ %1101, %1099 ], [ %1086, %1081 ]
  %1105 = phi i32 [ %1102, %1099 ], [ %1085, %1081 ]
  %1106 = phi i64 [ %1100, %1099 ], [ %1084, %1081 ]
  %1107 = phi i32 [ %1089, %1099 ], [ %1083, %1081 ]
  %1108 = add nuw nsw i64 %1082, 1
  %1109 = trunc i64 %1106 to i16
  %1110 = and i16 %1109, 7
  %1111 = trunc nuw i64 %1108 to i32
  store i32 %1111, ptr %60, align 4, !tbaa !76
  %1112 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1082
  %1113 = load i16, ptr %1112, align 2, !tbaa !77
  %1114 = zext i16 %1113 to i64
  %1115 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1114
  store i16 %1110, ptr %1115, align 2, !tbaa !77
  %1116 = add i32 %1107, -3
  %1117 = lshr i64 %1106, 3
  %1118 = icmp eq i64 %1108, %1072
  br i1 %1118, label %.loopexit186, label %1081, !llvm.loop !79

1119:                                             ; preds = %1119, %1079
  %1120 = phi i64 [ %1080, %1079 ], [ %1121, %1119 ]
  %1121 = add nuw nsw i64 %1120, 1
  %1122 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1120
  %1123 = load i16, ptr %1122, align 2, !tbaa !77
  %1124 = zext i16 %1123 to i64
  %1125 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1124
  store i16 0, ptr %1125, align 2, !tbaa !77
  %1126 = and i64 %1121, 4294967295
  %1127 = icmp eq i64 %1126, 19
  br i1 %1127, label %1128, label %1119, !llvm.loop !80

1128:                                             ; preds = %1119
  store i32 19, ptr %60, align 4, !tbaa !76
  br label %1129

1129:                                             ; preds = %1128, %.loopexit186
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %64, align 8, !tbaa !34
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 7, ptr %66, align 8, !tbaa !81
  %1130 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1133, label %1132

1132:                                             ; preds = %1129
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

1133:                                             ; preds = %1129
  store i32 0, ptr %60, align 4, !tbaa !76
  store i32 16198, ptr %21, align 8, !tbaa !20
  br label %1134

1134:                                             ; preds = %1133, %88
  %1135 = phi ptr [ %1073, %1133 ], [ %90, %88 ]
  %1136 = phi i32 [ %1074, %1133 ], [ %92, %88 ]
  %1137 = phi i64 [ %1075, %1133 ], [ %94, %88 ]
  %1138 = phi i32 [ %1076, %1133 ], [ %95, %88 ]
  %1139 = phi i32 [ 0, %1133 ], [ %97, %88 ]
  %1140 = load i32, ptr %57, align 4, !tbaa !73
  %1141 = load i32, ptr %58, align 8, !tbaa !74
  %1142 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1140, i32 %1141), !nosanitize !47
  %1143 = extractvalue { i32, i1 } %1142, 1, !nosanitize !47
  br i1 %1143, label %1156, label %1144, !prof !82, !nosanitize !47

1144:                                             ; preds = %1134
  %1145 = extractvalue { i32, i1 } %1142, 0, !nosanitize !47
  %1146 = load i32, ptr %60, align 4, !tbaa !76
  %.fr = freeze i32 %1146
  %1147 = call i32 @llvm.umax.i32(i32 %.fr, i32 %1145)
  %1148 = zext i32 %1147 to i64
  %1149 = icmp ult i32 %.fr, %1145
  br i1 %1149, label %1150, label %.loopexit184

1150:                                             ; preds = %1144
  %1151 = zext i32 %.fr to i64
  %1152 = load i32, ptr %66, align 8, !tbaa !81
  %1153 = shl nsw i32 -1, %1152
  %1154 = xor i32 %1153, -1
  %1155 = load ptr, ptr %65, align 8, !tbaa !35
  br label %1157

1156:                                             ; preds = %1134
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1157:                                             ; preds = %1412, %1150
  %1158 = phi ptr [ %1135, %1150 ], [ %1206, %1412 ]
  %1159 = phi i32 [ %1136, %1150 ], [ %1207, %1412 ]
  %1160 = phi i64 [ %1137, %1150 ], [ %1218, %1412 ]
  %1161 = phi i32 [ %1138, %1150 ], [ %1220, %1412 ]
  %1162 = phi i64 [ %1151, %1150 ], [ %1413, %1412 ]
  %1163 = trunc i64 %1160 to i32
  %1164 = and i32 %1163, %1154
  %1165 = zext nneg i32 %1164 to i64
  %1166 = getelementptr inbounds nuw [4 x i8], ptr %1155, i64 %1165
  %1167 = getelementptr inbounds nuw i8, ptr %1166, i64 1
  %1168 = load i8, ptr %1167, align 1, !tbaa !44
  %1169 = zext i8 %1168 to i32
  %1170 = icmp ult i32 %1161, %1169
  br i1 %1170, label %1171, label %1204

1171:                                             ; preds = %1157
  %1172 = icmp eq i32 %1159, 0
  br i1 %1172, label %.loopexit, label %1173

1173:                                             ; preds = %1171
  %1174 = zext nneg i32 %1161 to i64
  br label %1177

1175:                                             ; preds = %1188
  %1176 = icmp eq i32 %1191, 0
  br i1 %1176, label %.loopexit, label %1177

1177:                                             ; preds = %1175, %1173
  %1178 = phi ptr [ %1158, %1173 ], [ %1190, %1175 ]
  %1179 = phi i32 [ %1159, %1173 ], [ %1191, %1175 ]
  %1180 = phi i64 [ %1160, %1173 ], [ %1189, %1175 ]
  %1181 = phi i64 [ %1174, %1173 ], [ %1192, %1175 ]
  %1182 = load i8, ptr %1178, align 1, !tbaa !44
  %1183 = zext i8 %1182 to i64
  %1184 = shl i64 %1183, %1181
  %1185 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1180, i64 %1184), !nosanitize !47
  %1186 = extractvalue { i64, i1 } %1185, 1, !nosanitize !47
  br i1 %1186, label %1187, label %1188, !prof !48, !nosanitize !47

1187:                                             ; preds = %1177
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1188:                                             ; preds = %1177
  %1189 = extractvalue { i64, i1 } %1185, 0, !nosanitize !47
  %1190 = getelementptr inbounds nuw i8, ptr %1178, i64 1
  %1191 = add i32 %1179, -1
  %1192 = add nuw nsw i64 %1181, 8
  %1193 = trunc i64 %1189 to i32
  %1194 = and i32 %1193, %1154
  %1195 = zext nneg i32 %1194 to i64
  %1196 = getelementptr inbounds nuw [4 x i8], ptr %1155, i64 %1195
  %1197 = getelementptr inbounds nuw i8, ptr %1196, i64 1
  %1198 = load i8, ptr %1197, align 1, !tbaa !44
  %1199 = zext i8 %1198 to i64
  %1200 = icmp samesign ult i64 %1192, %1199
  br i1 %1200, label %1175, label %1201

1201:                                             ; preds = %1188
  %1202 = zext i8 %1198 to i32
  %1203 = trunc nuw nsw i64 %1192 to i32
  br label %1204

1204:                                             ; preds = %1201, %1157
  %1205 = phi i64 [ %1165, %1157 ], [ %1195, %1201 ]
  %1206 = phi ptr [ %1158, %1157 ], [ %1190, %1201 ]
  %1207 = phi i32 [ %1159, %1157 ], [ %1191, %1201 ]
  %1208 = phi i64 [ %1160, %1157 ], [ %1189, %1201 ]
  %1209 = phi i32 [ %1161, %1157 ], [ %1203, %1201 ]
  %1210 = phi i8 [ %1168, %1157 ], [ %1198, %1201 ]
  %1211 = phi i32 [ %1169, %1157 ], [ %1202, %1201 ]
  %1212 = getelementptr inbounds nuw [4 x i8], ptr %1155, i64 %1205
  %1213 = getelementptr inbounds nuw i8, ptr %1212, i64 2
  %1214 = load i16, ptr %1213, align 2, !tbaa !77
  %1215 = icmp ult i16 %1214, 16
  br i1 %1215, label %1216, label %1226

1216:                                             ; preds = %1204
  %1217 = zext nneg i8 %1210 to i64
  %1218 = lshr i64 %1208, %1217
  %1219 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1209, i32 %1211), !nosanitize !47
  %1220 = extractvalue { i32, i1 } %1219, 0, !nosanitize !47
  %1221 = extractvalue { i32, i1 } %1219, 1, !nosanitize !47
  br i1 %1221, label %1222, label %1223, !prof !48, !nosanitize !47

1222:                                             ; preds = %1216
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1223:                                             ; preds = %1216
  %1224 = icmp eq i64 %1162, 4294967295
  br i1 %1224, label %1225, label %1412, !prof !48, !nosanitize !47

1225:                                             ; preds = %1223
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1226:                                             ; preds = %1204
  %indvars2661.le = trunc i64 %1162 to i32
  switch i16 %1214, label %1239 [
    i16 16, label %1233
    i16 17, label %1227
  ]

1227:                                             ; preds = %1226
  %1228 = add nuw nsw i32 %1211, 3
  %1229 = icmp ult i32 %1209, %1228
  br i1 %1229, label %1230, label %1310

1230:                                             ; preds = %1227
  %1231 = zext nneg i32 %1209 to i64
  %1232 = zext nneg i32 %1228 to i64
  br label %1289

1233:                                             ; preds = %1226
  %1234 = add nuw nsw i32 %1211, 2
  %1235 = icmp ult i32 %1209, %1234
  br i1 %1235, label %1236, label %1266

1236:                                             ; preds = %1233
  %1237 = zext nneg i32 %1209 to i64
  %1238 = zext nneg i32 %1234 to i64
  br label %1245

1239:                                             ; preds = %1226
  %1240 = add nuw nsw i32 %1211, 7
  %1241 = icmp ult i32 %1209, %1240
  br i1 %1241, label %1242, label %1347

1242:                                             ; preds = %1239
  %1243 = zext nneg i32 %1209 to i64
  %1244 = zext nneg i32 %1240 to i64
  br label %1326

1245:                                             ; preds = %1258, %1236
  %1246 = phi i64 [ %1237, %1236 ], [ %1262, %1258 ]
  %1247 = phi i64 [ %1208, %1236 ], [ %1259, %1258 ]
  %1248 = phi i32 [ %1207, %1236 ], [ %1261, %1258 ]
  %1249 = phi ptr [ %1206, %1236 ], [ %1260, %1258 ]
  %1250 = icmp eq i32 %1248, 0
  br i1 %1250, label %2405, label %1251

1251:                                             ; preds = %1245
  %1252 = load i8, ptr %1249, align 1, !tbaa !44
  %1253 = zext i8 %1252 to i64
  %1254 = shl i64 %1253, %1246
  %1255 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1247, i64 %1254), !nosanitize !47
  %1256 = extractvalue { i64, i1 } %1255, 1, !nosanitize !47
  br i1 %1256, label %1257, label %1258, !prof !48, !nosanitize !47

1257:                                             ; preds = %1251
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1258:                                             ; preds = %1251
  %1259 = extractvalue { i64, i1 } %1255, 0, !nosanitize !47
  %1260 = getelementptr inbounds nuw i8, ptr %1249, i64 1
  %1261 = add i32 %1248, -1
  %1262 = add nuw nsw i64 %1246, 8
  %1263 = icmp samesign ult i64 %1262, %1238
  br i1 %1263, label %1245, label %1264, !llvm.loop !83

1264:                                             ; preds = %1258
  %1265 = trunc nuw nsw i64 %1262 to i32
  br label %1266

1266:                                             ; preds = %1264, %1233
  %1267 = phi ptr [ %1206, %1233 ], [ %1260, %1264 ]
  %1268 = phi i32 [ %1207, %1233 ], [ %1261, %1264 ]
  %1269 = phi i64 [ %1208, %1233 ], [ %1259, %1264 ]
  %1270 = phi i32 [ %1209, %1233 ], [ %1265, %1264 ]
  %1271 = zext nneg i8 %1210 to i64
  %1272 = lshr i64 %1269, %1271
  %1273 = sub nuw i32 %1270, %1211
  %1274 = icmp eq i64 %1162, 0
  br i1 %1274, label %1275, label %1276

1275:                                             ; preds = %1266
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

1276:                                             ; preds = %1266
  %1277 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1273, i32 2), !nosanitize !47
  %1278 = extractvalue { i32, i1 } %1277, 1, !nosanitize !47
  br i1 %1278, label %1279, label %1280, !prof !48, !nosanitize !47

1279:                                             ; preds = %1276
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1280:                                             ; preds = %1276
  %1281 = trunc i64 %1272 to i32
  %1282 = and i32 %1281, 3
  %1283 = add nuw nsw i32 %1282, 3
  %1284 = add nuw nsw i64 %1162, 4294967295
  %1285 = and i64 %1284, 4294967295
  %1286 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1285
  %1287 = load i16, ptr %1286, align 2, !tbaa !77
  %1288 = lshr i64 %1272, 2
  br label %1363

1289:                                             ; preds = %1302, %1230
  %1290 = phi i64 [ %1231, %1230 ], [ %1306, %1302 ]
  %1291 = phi i64 [ %1208, %1230 ], [ %1303, %1302 ]
  %1292 = phi i32 [ %1207, %1230 ], [ %1305, %1302 ]
  %1293 = phi ptr [ %1206, %1230 ], [ %1304, %1302 ]
  %1294 = icmp eq i32 %1292, 0
  br i1 %1294, label %2410, label %1295

1295:                                             ; preds = %1289
  %1296 = load i8, ptr %1293, align 1, !tbaa !44
  %1297 = zext i8 %1296 to i64
  %1298 = shl i64 %1297, %1290
  %1299 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1291, i64 %1298), !nosanitize !47
  %1300 = extractvalue { i64, i1 } %1299, 1, !nosanitize !47
  br i1 %1300, label %1301, label %1302, !prof !48, !nosanitize !47

1301:                                             ; preds = %1295
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1302:                                             ; preds = %1295
  %1303 = extractvalue { i64, i1 } %1299, 0, !nosanitize !47
  %1304 = getelementptr inbounds nuw i8, ptr %1293, i64 1
  %1305 = add i32 %1292, -1
  %1306 = add nuw nsw i64 %1290, 8
  %1307 = icmp samesign ult i64 %1306, %1232
  br i1 %1307, label %1289, label %1308, !llvm.loop !84

1308:                                             ; preds = %1302
  %1309 = trunc nuw nsw i64 %1306 to i32
  br label %1310

1310:                                             ; preds = %1308, %1227
  %1311 = phi ptr [ %1206, %1227 ], [ %1304, %1308 ]
  %1312 = phi i32 [ %1207, %1227 ], [ %1305, %1308 ]
  %1313 = phi i64 [ %1208, %1227 ], [ %1303, %1308 ]
  %1314 = phi i32 [ %1209, %1227 ], [ %1309, %1308 ]
  %1315 = sub nuw i32 %1314, %1211
  %1316 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1315, i32 3), !nosanitize !47
  %1317 = extractvalue { i32, i1 } %1316, 1, !nosanitize !47
  br i1 %1317, label %1318, label %1319, !prof !48, !nosanitize !47

1318:                                             ; preds = %1310
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1319:                                             ; preds = %1310
  %1320 = zext nneg i8 %1210 to i64
  %1321 = lshr i64 %1313, %1320
  %1322 = trunc i64 %1321 to i32
  %1323 = and i32 %1322, 7
  %1324 = add nuw nsw i32 %1323, 3
  %1325 = lshr i64 %1321, 3
  br label %1363

1326:                                             ; preds = %1339, %1242
  %1327 = phi i64 [ %1243, %1242 ], [ %1343, %1339 ]
  %1328 = phi i64 [ %1208, %1242 ], [ %1340, %1339 ]
  %1329 = phi i32 [ %1207, %1242 ], [ %1342, %1339 ]
  %1330 = phi ptr [ %1206, %1242 ], [ %1341, %1339 ]
  %1331 = icmp eq i32 %1329, 0
  br i1 %1331, label %2400, label %1332

1332:                                             ; preds = %1326
  %1333 = load i8, ptr %1330, align 1, !tbaa !44
  %1334 = zext i8 %1333 to i64
  %1335 = shl i64 %1334, %1327
  %1336 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1328, i64 %1335), !nosanitize !47
  %1337 = extractvalue { i64, i1 } %1336, 1, !nosanitize !47
  br i1 %1337, label %1338, label %1339, !prof !48, !nosanitize !47

1338:                                             ; preds = %1332
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1339:                                             ; preds = %1332
  %1340 = extractvalue { i64, i1 } %1336, 0, !nosanitize !47
  %1341 = getelementptr inbounds nuw i8, ptr %1330, i64 1
  %1342 = add i32 %1329, -1
  %1343 = add nuw nsw i64 %1327, 8
  %1344 = icmp samesign ult i64 %1343, %1244
  br i1 %1344, label %1326, label %1345, !llvm.loop !85

1345:                                             ; preds = %1339
  %1346 = trunc nuw nsw i64 %1343 to i32
  br label %1347

1347:                                             ; preds = %1345, %1239
  %1348 = phi ptr [ %1206, %1239 ], [ %1341, %1345 ]
  %1349 = phi i32 [ %1207, %1239 ], [ %1342, %1345 ]
  %1350 = phi i64 [ %1208, %1239 ], [ %1340, %1345 ]
  %1351 = phi i32 [ %1209, %1239 ], [ %1346, %1345 ]
  %1352 = sub nuw i32 %1351, %1211
  %1353 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1352, i32 7), !nosanitize !47
  %1354 = extractvalue { i32, i1 } %1353, 1, !nosanitize !47
  br i1 %1354, label %1355, label %1356, !prof !48, !nosanitize !47

1355:                                             ; preds = %1347
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1356:                                             ; preds = %1347
  %1357 = zext nneg i8 %1210 to i64
  %1358 = lshr i64 %1350, %1357
  %1359 = trunc i64 %1358 to i32
  %1360 = and i32 %1359, 127
  %1361 = add nuw nsw i32 %1360, 11
  %1362 = lshr i64 %1358, 7
  br label %1363

1363:                                             ; preds = %1356, %1319, %1280
  %1364 = phi ptr [ %1267, %1280 ], [ %1311, %1319 ], [ %1348, %1356 ]
  %1365 = phi i32 [ %1268, %1280 ], [ %1312, %1319 ], [ %1349, %1356 ]
  %1366 = phi i64 [ %1288, %1280 ], [ %1325, %1319 ], [ %1362, %1356 ]
  %1367 = phi { i32, i1 } [ %1277, %1280 ], [ %1316, %1319 ], [ %1353, %1356 ]
  %1368 = phi i32 [ %1283, %1280 ], [ %1324, %1319 ], [ %1361, %1356 ]
  %1369 = phi i16 [ %1287, %1280 ], [ 0, %1319 ], [ 0, %1356 ]
  %1370 = extractvalue { i32, i1 } %1367, 0
  %1371 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %indvars2661.le, i32 %1368), !nosanitize !47
  %1372 = extractvalue { i32, i1 } %1371, 1, !nosanitize !47
  br i1 %1372, label %1373, label %1374, !prof !48, !nosanitize !47

1373:                                             ; preds = %1363
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1374:                                             ; preds = %1363
  %1375 = extractvalue { i32, i1 } %1371, 0, !nosanitize !47
  %1376 = icmp ugt i32 %1375, %1145
  br i1 %1376, label %1393, label %1377

1377:                                             ; preds = %1374
  %1378 = icmp eq i32 %indvars2661.le, -1
  br i1 %1378, label %1404, label %1379, !prof !82, !nosanitize !47

1379:                                             ; preds = %1377
  %1380 = and i64 %1162, 4294967295
  %1381 = add nsw i32 %1368, -1
  %1382 = and i64 %1162, 1
  %1383 = icmp eq i64 %1382, 0
  br i1 %1383, label %1384, label %1389, !prof !82

1384:                                             ; preds = %1379
  %1385 = or disjoint i64 %1380, 1
  %1386 = trunc nuw i64 %1385 to i32
  store i32 %1386, ptr %60, align 4, !tbaa !76
  %1387 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1380
  store i16 %1369, ptr %1387, align 2, !tbaa !77
  %1388 = add nsw i32 %1368, -2
  br label %1389

1389:                                             ; preds = %1384, %1379
  %.pn170 = phi i32 [ %1381, %1379 ], [ %1388, %1384 ]
  %1390 = phi i64 [ %1380, %1379 ], [ %1385, %1384 ]
  %1391 = icmp eq i32 %indvars2661.le, -2
  br i1 %1391, label %1404, label %.preheader.preheader, !prof !82

.preheader.preheader:                             ; preds = %1389
  %1392 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %.pn170, 0
  br label %.preheader

1393:                                             ; preds = %1374
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

.split.loop.exit:                                 ; preds = %1395, %.preheader
  %.in = phi i64 [ %1408, %.preheader ], [ %1397, %1395 ]
  %1394 = trunc i64 %.in to i32
  store i32 %1394, ptr %60, align 4, !tbaa !76
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1395:                                             ; preds = %.preheader
  %1396 = extractvalue { i32, i1 } %1410, 0
  %1397 = add nuw nsw i64 %1406, 2
  %1398 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1408
  store i16 %1369, ptr %1398, align 2, !tbaa !77
  %1399 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1396, i32 1), !nosanitize !47
  %1400 = extractvalue { i32, i1 } %1399, 1, !nosanitize !47
  br i1 %1400, label %.split.loop.exit, label %1401, !prof !86, !llvm.loop !87, !nosanitize !47

1401:                                             ; preds = %1395
  %1402 = icmp eq i64 %1397, 4294967295
  br i1 %1402, label %1403, label %.preheader, !prof !86, !llvm.loop !88, !nosanitize !47

1403:                                             ; preds = %1401
  store i32 -1, ptr %60, align 4, !tbaa !76
  br label %1404

1404:                                             ; preds = %1403, %1389, %1377
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

.preheader:                                       ; preds = %.preheader.preheader, %1401
  %1405 = phi { i32, i1 } [ %1399, %1401 ], [ %1392, %.preheader.preheader ]
  %1406 = phi i64 [ %1397, %1401 ], [ %1390, %.preheader.preheader ]
  %1407 = extractvalue { i32, i1 } %1405, 0
  %1408 = add nuw nsw i64 %1406, 1
  %1409 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1406
  store i16 %1369, ptr %1409, align 2, !tbaa !77
  %1410 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1407, i32 1), !nosanitize !47
  %1411 = extractvalue { i32, i1 } %1410, 1, !nosanitize !47
  br i1 %1411, label %.split.loop.exit, label %1395, !prof !86, !llvm.loop !87, !nosanitize !47

1412:                                             ; preds = %1223
  %1413 = add i64 %1162, 1
  %indvars = trunc nuw i64 %1413 to i32
  store i32 %indvars, ptr %60, align 4, !tbaa !76
  %1414 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1162
  store i16 %1214, ptr %1414, align 2, !tbaa !77
  %1415 = icmp eq i64 %1413, %1148
  br i1 %1415, label %.loopexit184, label %1157

.loopexit184:                                     ; preds = %1412, %1144
  %1416 = phi i32 [ %1138, %1144 ], [ %1220, %1412 ]
  %1417 = phi i64 [ %1137, %1144 ], [ %1218, %1412 ]
  %1418 = phi i32 [ %1136, %1144 ], [ %1207, %1412 ]
  %1419 = phi ptr [ %1135, %1144 ], [ %1206, %1412 ]
  %1420 = load i16, ptr %68, align 8, !tbaa !77
  %1421 = icmp eq i16 %1420, 0
  br i1 %1421, label %1422, label %1423

1422:                                             ; preds = %.loopexit184
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

1423:                                             ; preds = %.loopexit184
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !81
  %1424 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1140, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1425 = icmp eq i32 %1424, 0
  br i1 %1425, label %1427, label %1426

1426:                                             ; preds = %1423
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

1427:                                             ; preds = %1423
  %1428 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1428, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !90
  %1429 = load i32, ptr %57, align 4, !tbaa !73
  %1430 = zext i32 %1429 to i64
  %1431 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1430
  %1432 = load i32, ptr %58, align 8, !tbaa !74
  %1433 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1431, i32 noundef %1432, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #12
  %1434 = icmp eq i32 %1433, 0
  br i1 %1434, label %1436, label %1435

1435:                                             ; preds = %1427
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

1436:                                             ; preds = %1427
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit185, label %1437

1437:                                             ; preds = %1436, %88
  %1438 = phi ptr [ %1419, %1436 ], [ %90, %88 ]
  %1439 = phi i32 [ %1418, %1436 ], [ %92, %88 ]
  %1440 = phi i64 [ %1417, %1436 ], [ %94, %88 ]
  %1441 = phi i32 [ %1416, %1436 ], [ %95, %88 ]
  %1442 = phi i32 [ 0, %1436 ], [ %97, %88 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1443

1443:                                             ; preds = %1437, %88
  %1444 = phi ptr [ %1438, %1437 ], [ %90, %88 ]
  %1445 = phi i32 [ %1439, %1437 ], [ %92, %88 ]
  %1446 = phi i64 [ %1440, %1437 ], [ %94, %88 ]
  %1447 = phi i32 [ %1441, %1437 ], [ %95, %88 ]
  %1448 = phi i32 [ %1442, %1437 ], [ %97, %88 ]
  %1449 = icmp ugt i32 %1445, 5
  %1450 = icmp ugt i32 %93, 257
  %1451 = select i1 %1449, i1 %1450, i1 false
  br i1 %1451, label %1452, label %1462

1452:                                             ; preds = %1443
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %1444, ptr %0, align 8, !tbaa !50
  store i32 %1445, ptr %43, align 8, !tbaa !51
  store i64 %1446, ptr %45, align 8, !tbaa !31
  store i32 %1447, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %96) #12
  %1453 = load ptr, ptr %26, align 8, !tbaa !49
  %1454 = load i32, ptr %41, align 8, !tbaa !52
  %1455 = load ptr, ptr %0, align 8, !tbaa !50
  %1456 = load i32, ptr %43, align 8, !tbaa !51
  %1457 = load i64, ptr %45, align 8, !tbaa !31
  %1458 = load i32, ptr %47, align 8, !tbaa !32
  %1459 = load i32, ptr %21, align 8, !tbaa !20
  %1460 = icmp eq i32 %1459, 16191
  br i1 %1460, label %1461, label %2307

1461:                                             ; preds = %1452
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2307

1462:                                             ; preds = %1443
  store i32 0, ptr %71, align 4, !tbaa !37
  %1463 = load i32, ptr %66, align 8, !tbaa !81
  %1464 = shl nsw i32 -1, %1463
  %1465 = xor i32 %1464, -1
  %1466 = load ptr, ptr %65, align 8, !tbaa !35
  %1467 = trunc i64 %1446 to i32
  %1468 = and i32 %1465, %1467
  %1469 = zext nneg i32 %1468 to i64
  %1470 = getelementptr inbounds nuw [4 x i8], ptr %1466, i64 %1469
  %1471 = getelementptr inbounds nuw i8, ptr %1470, i64 1
  %1472 = load i8, ptr %1471, align 1, !tbaa !44
  %1473 = zext i8 %1472 to i32
  %1474 = icmp ult i32 %1447, %1473
  br i1 %1474, label %1475, label %1508

1475:                                             ; preds = %1462
  %1476 = icmp eq i32 %1445, 0
  br i1 %1476, label %.loopexit182, label %1477

1477:                                             ; preds = %1475
  %1478 = zext nneg i32 %1447 to i64
  br label %1481

1479:                                             ; preds = %1492
  %1480 = icmp eq i32 %1495, 0
  br i1 %1480, label %.loopexit182, label %1481

1481:                                             ; preds = %1479, %1477
  %1482 = phi ptr [ %1444, %1477 ], [ %1494, %1479 ]
  %1483 = phi i32 [ %1445, %1477 ], [ %1495, %1479 ]
  %1484 = phi i64 [ %1446, %1477 ], [ %1493, %1479 ]
  %1485 = phi i64 [ %1478, %1477 ], [ %1496, %1479 ]
  %1486 = load i8, ptr %1482, align 1, !tbaa !44
  %1487 = zext i8 %1486 to i64
  %1488 = shl i64 %1487, %1485
  %1489 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1484, i64 %1488), !nosanitize !47
  %1490 = extractvalue { i64, i1 } %1489, 1, !nosanitize !47
  br i1 %1490, label %1491, label %1492, !prof !48, !nosanitize !47

1491:                                             ; preds = %1481
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1492:                                             ; preds = %1481
  %1493 = extractvalue { i64, i1 } %1489, 0, !nosanitize !47
  %1494 = getelementptr inbounds nuw i8, ptr %1482, i64 1
  %1495 = add i32 %1483, -1
  %1496 = add nuw nsw i64 %1485, 8
  %1497 = trunc i64 %1493 to i32
  %1498 = and i32 %1497, %1465
  %1499 = zext nneg i32 %1498 to i64
  %1500 = getelementptr inbounds nuw [4 x i8], ptr %1466, i64 %1499
  %1501 = getelementptr inbounds nuw i8, ptr %1500, i64 1
  %1502 = load i8, ptr %1501, align 1, !tbaa !44
  %1503 = zext i8 %1502 to i64
  %1504 = icmp samesign ult i64 %1496, %1503
  br i1 %1504, label %1479, label %1505

1505:                                             ; preds = %1492
  %1506 = zext i8 %1502 to i32
  %1507 = trunc nuw nsw i64 %1496 to i32
  br label %1508

1508:                                             ; preds = %1505, %1462
  %1509 = phi ptr [ %1470, %1462 ], [ %1500, %1505 ]
  %1510 = phi ptr [ %1444, %1462 ], [ %1494, %1505 ]
  %1511 = phi i32 [ %1445, %1462 ], [ %1495, %1505 ]
  %1512 = phi i64 [ %1446, %1462 ], [ %1493, %1505 ]
  %1513 = phi i32 [ %1447, %1462 ], [ %1507, %1505 ]
  %1514 = phi i8 [ %1472, %1462 ], [ %1502, %1505 ]
  %1515 = phi i32 [ %1473, %1462 ], [ %1506, %1505 ]
  %1516 = getelementptr inbounds nuw i8, ptr %1509, i64 2
  %1517 = load i16, ptr %1516, align 2, !tbaa !77
  %1518 = load i8, ptr %1509, align 2, !tbaa !44
  %1519 = add i8 %1518, -1
  %1520 = icmp ult i8 %1519, 15
  br i1 %1520, label %1521, label %1587

1521:                                             ; preds = %1508
  %1522 = zext nneg i8 %1518 to i32
  %1523 = add nuw nsw i32 %1515, %1522
  %1524 = shl nsw i32 -1, %1523
  %1525 = xor i32 %1524, -1
  %1526 = zext i16 %1517 to i32
  %1527 = trunc i64 %1512 to i32
  %1528 = and i32 %1525, %1527
  %1529 = lshr i32 %1528, %1515
  %1530 = add nuw i32 %1529, %1526
  %1531 = zext i32 %1530 to i64
  %1532 = getelementptr inbounds nuw [4 x i8], ptr %1466, i64 %1531
  %1533 = getelementptr inbounds nuw i8, ptr %1532, i64 1
  %1534 = load i8, ptr %1533, align 1, !tbaa !44
  %1535 = zext i8 %1534 to i32
  %1536 = add nuw nsw i32 %1515, %1535
  %1537 = icmp ugt i32 %1536, %1513
  br i1 %1537, label %1538, label %1574

1538:                                             ; preds = %1521
  %1539 = icmp eq i32 %1511, 0
  br i1 %1539, label %.loopexit181, label %1540

1540:                                             ; preds = %1538
  %1541 = zext nneg i32 %1513 to i64
  br label %1544

1542:                                             ; preds = %1555
  %1543 = icmp eq i32 %1558, 0
  br i1 %1543, label %.loopexit181, label %1544

1544:                                             ; preds = %1542, %1540
  %1545 = phi ptr [ %1510, %1540 ], [ %1557, %1542 ]
  %1546 = phi i32 [ %1511, %1540 ], [ %1558, %1542 ]
  %1547 = phi i64 [ %1512, %1540 ], [ %1556, %1542 ]
  %1548 = phi i64 [ %1541, %1540 ], [ %1559, %1542 ]
  %1549 = load i8, ptr %1545, align 1, !tbaa !44
  %1550 = zext i8 %1549 to i64
  %1551 = shl i64 %1550, %1548
  %1552 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1547, i64 %1551), !nosanitize !47
  %1553 = extractvalue { i64, i1 } %1552, 1, !nosanitize !47
  br i1 %1553, label %1554, label %1555, !prof !48, !nosanitize !47

1554:                                             ; preds = %1544
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1555:                                             ; preds = %1544
  %1556 = extractvalue { i64, i1 } %1552, 0, !nosanitize !47
  %1557 = getelementptr inbounds nuw i8, ptr %1545, i64 1
  %1558 = add i32 %1546, -1
  %1559 = add nuw nsw i64 %1548, 8
  %1560 = trunc i64 %1556 to i32
  %1561 = and i32 %1560, %1525
  %1562 = lshr i32 %1561, %1515
  %1563 = add nuw i32 %1562, %1526
  %1564 = zext i32 %1563 to i64
  %1565 = getelementptr inbounds nuw [4 x i8], ptr %1466, i64 %1564
  %1566 = getelementptr inbounds nuw i8, ptr %1565, i64 1
  %1567 = load i8, ptr %1566, align 1, !tbaa !44
  %1568 = zext i8 %1567 to i32
  %1569 = add nuw nsw i32 %1515, %1568
  %1570 = zext nneg i32 %1569 to i64
  %1571 = icmp samesign ult i64 %1559, %1570
  br i1 %1571, label %1542, label %1572

1572:                                             ; preds = %1555
  %1573 = trunc nuw nsw i64 %1559 to i32
  br label %1574

1574:                                             ; preds = %1572, %1521
  %1575 = phi ptr [ %1510, %1521 ], [ %1557, %1572 ]
  %1576 = phi i32 [ %1511, %1521 ], [ %1558, %1572 ]
  %1577 = phi i64 [ %1512, %1521 ], [ %1556, %1572 ]
  %1578 = phi i32 [ %1513, %1521 ], [ %1573, %1572 ]
  %1579 = phi ptr [ %1532, %1521 ], [ %1565, %1572 ]
  %1580 = phi i8 [ %1534, %1521 ], [ %1567, %1572 ]
  %1581 = getelementptr inbounds nuw i8, ptr %1579, i64 2
  %1582 = load i16, ptr %1581, align 2, !tbaa !77
  %1583 = load i8, ptr %1579, align 2, !tbaa !44
  %1584 = sub nuw i32 %1578, %1515
  %1585 = zext nneg i8 %1514 to i64
  %1586 = lshr i64 %1577, %1585
  store i32 %1515, ptr %71, align 4, !tbaa !37
  br label %1587

1587:                                             ; preds = %1574, %1508
  %1588 = phi i32 [ %1515, %1574 ], [ 0, %1508 ]
  %1589 = phi ptr [ %1575, %1574 ], [ %1510, %1508 ]
  %1590 = phi i32 [ %1576, %1574 ], [ %1511, %1508 ]
  %1591 = phi i64 [ %1586, %1574 ], [ %1512, %1508 ]
  %1592 = phi i32 [ %1584, %1574 ], [ %1513, %1508 ]
  %1593 = phi i16 [ %1582, %1574 ], [ %1517, %1508 ]
  %1594 = phi i8 [ %1580, %1574 ], [ %1514, %1508 ]
  %1595 = phi i8 [ %1583, %1574 ], [ %1518, %1508 ]
  %1596 = zext i8 %1594 to i32
  %1597 = zext nneg i8 %1594 to i64
  %1598 = lshr i64 %1591, %1597
  %1599 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1592, i32 %1596), !nosanitize !47
  %1600 = extractvalue { i32, i1 } %1599, 0, !nosanitize !47
  %1601 = extractvalue { i32, i1 } %1599, 1, !nosanitize !47
  br i1 %1601, label %1602, label %1603, !prof !48, !nosanitize !47

1602:                                             ; preds = %1587
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1603:                                             ; preds = %1587
  %1604 = add nuw nsw i32 %1588, %1596
  store i32 %1604, ptr %71, align 4, !tbaa !37
  %1605 = zext i16 %1593 to i32
  store i32 %1605, ptr %56, align 4, !tbaa !61
  %1606 = zext i8 %1595 to i32
  %1607 = icmp eq i8 %1595, 0
  br i1 %1607, label %1608, label %1609

1608:                                             ; preds = %1603
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2307

1609:                                             ; preds = %1603
  %1610 = and i32 %1606, 32
  %1611 = icmp eq i32 %1610, 0
  br i1 %1611, label %1613, label %1612

1612:                                             ; preds = %1609
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2307

1613:                                             ; preds = %1609
  %1614 = and i32 %1606, 64
  %1615 = icmp eq i32 %1614, 0
  br i1 %1615, label %1617, label %1616

1616:                                             ; preds = %1613
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

1617:                                             ; preds = %1613
  %1618 = and i32 %1606, 15
  store i32 %1618, ptr %72, align 4, !tbaa !53
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1619

1619:                                             ; preds = %1617, %101
  %1620 = phi i32 [ %1618, %1617 ], [ %102, %101 ]
  %1621 = phi ptr [ %1589, %1617 ], [ %90, %101 ]
  %1622 = phi i32 [ %1590, %1617 ], [ %92, %101 ]
  %1623 = phi i64 [ %1598, %1617 ], [ %94, %101 ]
  %1624 = phi i32 [ %1600, %1617 ], [ %95, %101 ]
  %1625 = phi i32 [ %1448, %1617 ], [ %97, %101 ]
  %1626 = icmp eq i32 %1620, 0
  br i1 %1626, label %1683, label %1627

1627:                                             ; preds = %1619
  %1628 = icmp ult i32 %1624, %1620
  br i1 %1628, label %1629, label %.loopexit179

1629:                                             ; preds = %1627
  %1630 = icmp eq i32 %1622, 0
  br i1 %1630, label %.loopexit180, label %1631

1631:                                             ; preds = %1629
  %1632 = zext i32 %1624 to i64
  br label %1635

1633:                                             ; preds = %1652
  %1634 = icmp eq i32 %1640, 0
  br i1 %1634, label %.loopexit180, label %1635, !llvm.loop !91

1635:                                             ; preds = %1633, %1631
  %1636 = phi ptr [ %1621, %1631 ], [ %1641, %1633 ]
  %1637 = phi i32 [ %1622, %1631 ], [ %1640, %1633 ]
  %1638 = phi i64 [ %1623, %1631 ], [ %1646, %1633 ]
  %1639 = phi i64 [ %1632, %1631 ], [ %1653, %1633 ]
  %1640 = add i32 %1637, -1
  %1641 = getelementptr inbounds nuw i8, ptr %1636, i64 1
  %1642 = load i8, ptr %1636, align 1, !tbaa !44
  %1643 = zext i8 %1642 to i64
  %1644 = shl i64 %1643, %1639
  %1645 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1638, i64 %1644), !nosanitize !47
  %1646 = extractvalue { i64, i1 } %1645, 0, !nosanitize !47
  %1647 = extractvalue { i64, i1 } %1645, 1, !nosanitize !47
  br i1 %1647, label %1648, label %1649, !prof !48, !nosanitize !47

1648:                                             ; preds = %1635
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1649:                                             ; preds = %1635
  %1650 = icmp samesign ugt i64 %1639, 4294967287
  br i1 %1650, label %1651, label %1652, !prof !48, !nosanitize !47

1651:                                             ; preds = %1649
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1652:                                             ; preds = %1649
  %1653 = add nuw nsw i64 %1639, 8
  %1654 = trunc nuw i64 %1653 to i32
  %1655 = icmp ugt i32 %1620, %1654
  br i1 %1655, label %1633, label %.loopexit179, !llvm.loop !91

.loopexit179:                                     ; preds = %1652, %1627
  %1656 = phi ptr [ %1621, %1627 ], [ %1641, %1652 ]
  %1657 = phi i32 [ %1622, %1627 ], [ %1640, %1652 ]
  %1658 = phi i64 [ %1623, %1627 ], [ %1646, %1652 ]
  %1659 = phi i32 [ %1624, %1627 ], [ %1654, %1652 ]
  %1660 = shl nsw i32 -1, %1620
  %1661 = xor i32 %1660, -1
  %1662 = trunc i64 %1658 to i32
  %1663 = and i32 %1662, %1661
  %1664 = load i32, ptr %56, align 4, !tbaa !61
  %1665 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1664, i32 %1663), !nosanitize !47
  %1666 = extractvalue { i32, i1 } %1665, 1, !nosanitize !47
  br i1 %1666, label %1667, label %1668, !prof !48, !nosanitize !47

1667:                                             ; preds = %.loopexit179
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1668:                                             ; preds = %.loopexit179
  %1669 = extractvalue { i32, i1 } %1665, 0, !nosanitize !47
  store i32 %1669, ptr %56, align 4, !tbaa !61
  %1670 = zext nneg i32 %1620 to i64
  %1671 = lshr i64 %1658, %1670
  %1672 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1659, i32 %1620), !nosanitize !47
  %1673 = extractvalue { i32, i1 } %1672, 0, !nosanitize !47
  %1674 = extractvalue { i32, i1 } %1672, 1, !nosanitize !47
  br i1 %1674, label %1675, label %1676, !prof !48, !nosanitize !47

1675:                                             ; preds = %1668
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1676:                                             ; preds = %1668
  %1677 = load i32, ptr %71, align 4, !tbaa !37
  %1678 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1677, i32 %1620), !nosanitize !47
  %1679 = extractvalue { i32, i1 } %1678, 1, !nosanitize !47
  br i1 %1679, label %1680, label %1681, !prof !48, !nosanitize !47

1680:                                             ; preds = %1676
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1681:                                             ; preds = %1676
  %1682 = extractvalue { i32, i1 } %1678, 0, !nosanitize !47
  store i32 %1682, ptr %71, align 4, !tbaa !37
  br label %1683

1683:                                             ; preds = %1681, %1619
  %1684 = phi ptr [ %1656, %1681 ], [ %1621, %1619 ]
  %1685 = phi i32 [ %1657, %1681 ], [ %1622, %1619 ]
  %1686 = phi i64 [ %1671, %1681 ], [ %1623, %1619 ]
  %1687 = phi i32 [ %1673, %1681 ], [ %1624, %1619 ]
  %1688 = load i32, ptr %56, align 4, !tbaa !61
  store i32 %1688, ptr %73, align 8, !tbaa !92
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1689

1689:                                             ; preds = %1683, %88
  %1690 = phi ptr [ %1684, %1683 ], [ %90, %88 ]
  %1691 = phi i32 [ %1685, %1683 ], [ %92, %88 ]
  %1692 = phi i64 [ %1686, %1683 ], [ %94, %88 ]
  %1693 = phi i32 [ %1687, %1683 ], [ %95, %88 ]
  %1694 = phi i32 [ %1625, %1683 ], [ %97, %88 ]
  %1695 = load i32, ptr %69, align 4, !tbaa !90
  %1696 = shl nsw i32 -1, %1695
  %1697 = xor i32 %1696, -1
  %1698 = load ptr, ptr %64, align 8, !tbaa !34
  %1699 = trunc i64 %1692 to i32
  %1700 = and i32 %1697, %1699
  %1701 = zext nneg i32 %1700 to i64
  %1702 = getelementptr inbounds nuw [4 x i8], ptr %1698, i64 %1701
  %1703 = getelementptr inbounds nuw i8, ptr %1702, i64 1
  %1704 = load i8, ptr %1703, align 1, !tbaa !44
  %1705 = zext i8 %1704 to i32
  %1706 = icmp ult i32 %1693, %1705
  br i1 %1706, label %1707, label %1740

1707:                                             ; preds = %1689
  %1708 = icmp eq i32 %1691, 0
  br i1 %1708, label %.loopexit178, label %1709

1709:                                             ; preds = %1707
  %1710 = zext nneg i32 %1693 to i64
  br label %1713

1711:                                             ; preds = %1724
  %1712 = icmp eq i32 %1727, 0
  br i1 %1712, label %.loopexit178, label %1713

1713:                                             ; preds = %1711, %1709
  %1714 = phi ptr [ %1690, %1709 ], [ %1726, %1711 ]
  %1715 = phi i32 [ %1691, %1709 ], [ %1727, %1711 ]
  %1716 = phi i64 [ %1692, %1709 ], [ %1725, %1711 ]
  %1717 = phi i64 [ %1710, %1709 ], [ %1728, %1711 ]
  %1718 = load i8, ptr %1714, align 1, !tbaa !44
  %1719 = zext i8 %1718 to i64
  %1720 = shl i64 %1719, %1717
  %1721 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1716, i64 %1720), !nosanitize !47
  %1722 = extractvalue { i64, i1 } %1721, 1, !nosanitize !47
  br i1 %1722, label %1723, label %1724, !prof !48, !nosanitize !47

1723:                                             ; preds = %1713
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1724:                                             ; preds = %1713
  %1725 = extractvalue { i64, i1 } %1721, 0, !nosanitize !47
  %1726 = getelementptr inbounds nuw i8, ptr %1714, i64 1
  %1727 = add i32 %1715, -1
  %1728 = add nuw nsw i64 %1717, 8
  %1729 = trunc i64 %1725 to i32
  %1730 = and i32 %1729, %1697
  %1731 = zext nneg i32 %1730 to i64
  %1732 = getelementptr inbounds nuw [4 x i8], ptr %1698, i64 %1731
  %1733 = getelementptr inbounds nuw i8, ptr %1732, i64 1
  %1734 = load i8, ptr %1733, align 1, !tbaa !44
  %1735 = zext i8 %1734 to i64
  %1736 = icmp samesign ult i64 %1728, %1735
  br i1 %1736, label %1711, label %1737

1737:                                             ; preds = %1724
  %1738 = zext i8 %1734 to i32
  %1739 = trunc nuw nsw i64 %1728 to i32
  br label %1740

1740:                                             ; preds = %1737, %1689
  %1741 = phi ptr [ %1702, %1689 ], [ %1732, %1737 ]
  %1742 = phi ptr [ %1690, %1689 ], [ %1726, %1737 ]
  %1743 = phi i32 [ %1691, %1689 ], [ %1727, %1737 ]
  %1744 = phi i64 [ %1692, %1689 ], [ %1725, %1737 ]
  %1745 = phi i32 [ %1693, %1689 ], [ %1739, %1737 ]
  %1746 = phi i8 [ %1704, %1689 ], [ %1734, %1737 ]
  %1747 = phi i32 [ %1705, %1689 ], [ %1738, %1737 ]
  %1748 = getelementptr inbounds nuw i8, ptr %1741, i64 2
  %1749 = load i16, ptr %1748, align 2, !tbaa !77
  %1750 = load i8, ptr %1741, align 2, !tbaa !44
  %1751 = icmp ult i8 %1750, 16
  br i1 %1751, label %1752, label %1820

1752:                                             ; preds = %1740
  %1753 = zext nneg i8 %1750 to i32
  %1754 = add nuw nsw i32 %1747, %1753
  %1755 = shl nsw i32 -1, %1754
  %1756 = xor i32 %1755, -1
  %1757 = zext i16 %1749 to i32
  %1758 = trunc i64 %1744 to i32
  %1759 = and i32 %1756, %1758
  %1760 = lshr i32 %1759, %1747
  %1761 = add nuw i32 %1760, %1757
  %1762 = zext i32 %1761 to i64
  %1763 = getelementptr inbounds nuw [4 x i8], ptr %1698, i64 %1762
  %1764 = getelementptr inbounds nuw i8, ptr %1763, i64 1
  %1765 = load i8, ptr %1764, align 1, !tbaa !44
  %1766 = zext i8 %1765 to i32
  %1767 = add nuw nsw i32 %1747, %1766
  %1768 = icmp ugt i32 %1767, %1745
  br i1 %1768, label %1769, label %1805

1769:                                             ; preds = %1752
  %1770 = icmp eq i32 %1743, 0
  br i1 %1770, label %.loopexit177, label %1771

1771:                                             ; preds = %1769
  %1772 = zext nneg i32 %1745 to i64
  br label %1775

1773:                                             ; preds = %1786
  %1774 = icmp eq i32 %1789, 0
  br i1 %1774, label %.loopexit177, label %1775

1775:                                             ; preds = %1773, %1771
  %1776 = phi ptr [ %1742, %1771 ], [ %1788, %1773 ]
  %1777 = phi i32 [ %1743, %1771 ], [ %1789, %1773 ]
  %1778 = phi i64 [ %1744, %1771 ], [ %1787, %1773 ]
  %1779 = phi i64 [ %1772, %1771 ], [ %1790, %1773 ]
  %1780 = load i8, ptr %1776, align 1, !tbaa !44
  %1781 = zext i8 %1780 to i64
  %1782 = shl i64 %1781, %1779
  %1783 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1778, i64 %1782), !nosanitize !47
  %1784 = extractvalue { i64, i1 } %1783, 1, !nosanitize !47
  br i1 %1784, label %1785, label %1786, !prof !48, !nosanitize !47

1785:                                             ; preds = %1775
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1786:                                             ; preds = %1775
  %1787 = extractvalue { i64, i1 } %1783, 0, !nosanitize !47
  %1788 = getelementptr inbounds nuw i8, ptr %1776, i64 1
  %1789 = add i32 %1777, -1
  %1790 = add nuw nsw i64 %1779, 8
  %1791 = trunc i64 %1787 to i32
  %1792 = and i32 %1791, %1756
  %1793 = lshr i32 %1792, %1747
  %1794 = add nuw i32 %1793, %1757
  %1795 = zext i32 %1794 to i64
  %1796 = getelementptr inbounds nuw [4 x i8], ptr %1698, i64 %1795
  %1797 = getelementptr inbounds nuw i8, ptr %1796, i64 1
  %1798 = load i8, ptr %1797, align 1, !tbaa !44
  %1799 = zext i8 %1798 to i32
  %1800 = add nuw nsw i32 %1747, %1799
  %1801 = zext nneg i32 %1800 to i64
  %1802 = icmp samesign ult i64 %1790, %1801
  br i1 %1802, label %1773, label %1803

1803:                                             ; preds = %1786
  %1804 = trunc nuw nsw i64 %1790 to i32
  br label %1805

1805:                                             ; preds = %1803, %1752
  %1806 = phi ptr [ %1742, %1752 ], [ %1788, %1803 ]
  %1807 = phi i32 [ %1743, %1752 ], [ %1789, %1803 ]
  %1808 = phi i64 [ %1744, %1752 ], [ %1787, %1803 ]
  %1809 = phi i32 [ %1745, %1752 ], [ %1804, %1803 ]
  %1810 = phi ptr [ %1763, %1752 ], [ %1796, %1803 ]
  %1811 = phi i8 [ %1765, %1752 ], [ %1798, %1803 ]
  %1812 = getelementptr inbounds nuw i8, ptr %1810, i64 2
  %1813 = load i16, ptr %1812, align 2, !tbaa !77
  %1814 = load i8, ptr %1810, align 2, !tbaa !44
  %1815 = sub nuw i32 %1809, %1747
  %1816 = zext nneg i8 %1746 to i64
  %1817 = lshr i64 %1808, %1816
  %1818 = load i32, ptr %71, align 4, !tbaa !37
  %1819 = add nsw i32 %1818, %1747
  store i32 %1819, ptr %71, align 4, !tbaa !37
  br label %1820

1820:                                             ; preds = %1805, %1740
  %1821 = phi ptr [ %1806, %1805 ], [ %1742, %1740 ]
  %1822 = phi i32 [ %1807, %1805 ], [ %1743, %1740 ]
  %1823 = phi i64 [ %1817, %1805 ], [ %1744, %1740 ]
  %1824 = phi i32 [ %1815, %1805 ], [ %1745, %1740 ]
  %1825 = phi i16 [ %1813, %1805 ], [ %1749, %1740 ]
  %1826 = phi i8 [ %1811, %1805 ], [ %1746, %1740 ]
  %1827 = phi i8 [ %1814, %1805 ], [ %1750, %1740 ]
  %1828 = zext i8 %1826 to i32
  %1829 = zext nneg i8 %1826 to i64
  %1830 = lshr i64 %1823, %1829
  %1831 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1824, i32 %1828), !nosanitize !47
  %1832 = extractvalue { i32, i1 } %1831, 0, !nosanitize !47
  %1833 = extractvalue { i32, i1 } %1831, 1, !nosanitize !47
  br i1 %1833, label %1834, label %1835, !prof !48, !nosanitize !47

1834:                                             ; preds = %1820
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1835:                                             ; preds = %1820
  %1836 = load i32, ptr %71, align 4, !tbaa !37
  %1837 = add nsw i32 %1836, %1828
  store i32 %1837, ptr %71, align 4, !tbaa !37
  %1838 = zext i8 %1827 to i32
  %1839 = and i32 %1838, 64
  %1840 = icmp eq i32 %1839, 0
  br i1 %1840, label %1842, label %1841

1841:                                             ; preds = %1835
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

1842:                                             ; preds = %1835
  %1843 = zext i16 %1825 to i32
  store i32 %1843, ptr %74, align 8, !tbaa !93
  %1844 = and i32 %1838, 15
  store i32 %1844, ptr %72, align 4, !tbaa !53
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1845

1845:                                             ; preds = %1842, %99
  %1846 = phi i32 [ %1844, %1842 ], [ %100, %99 ]
  %1847 = phi ptr [ %1821, %1842 ], [ %90, %99 ]
  %1848 = phi i32 [ %1822, %1842 ], [ %92, %99 ]
  %1849 = phi i64 [ %1830, %1842 ], [ %94, %99 ]
  %1850 = phi i32 [ %1832, %1842 ], [ %95, %99 ]
  %1851 = phi i32 [ %1694, %1842 ], [ %97, %99 ]
  %1852 = icmp eq i32 %1846, 0
  br i1 %1852, label %1909, label %1853

1853:                                             ; preds = %1845
  %1854 = icmp ult i32 %1850, %1846
  br i1 %1854, label %1855, label %.loopexit175

1855:                                             ; preds = %1853
  %1856 = icmp eq i32 %1848, 0
  br i1 %1856, label %.loopexit176, label %1857

1857:                                             ; preds = %1855
  %1858 = zext i32 %1850 to i64
  br label %1861

1859:                                             ; preds = %1878
  %1860 = icmp eq i32 %1866, 0
  br i1 %1860, label %.loopexit176, label %1861, !llvm.loop !94

1861:                                             ; preds = %1859, %1857
  %1862 = phi ptr [ %1847, %1857 ], [ %1867, %1859 ]
  %1863 = phi i32 [ %1848, %1857 ], [ %1866, %1859 ]
  %1864 = phi i64 [ %1849, %1857 ], [ %1872, %1859 ]
  %1865 = phi i64 [ %1858, %1857 ], [ %1879, %1859 ]
  %1866 = add i32 %1863, -1
  %1867 = getelementptr inbounds nuw i8, ptr %1862, i64 1
  %1868 = load i8, ptr %1862, align 1, !tbaa !44
  %1869 = zext i8 %1868 to i64
  %1870 = shl i64 %1869, %1865
  %1871 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1864, i64 %1870), !nosanitize !47
  %1872 = extractvalue { i64, i1 } %1871, 0, !nosanitize !47
  %1873 = extractvalue { i64, i1 } %1871, 1, !nosanitize !47
  br i1 %1873, label %1874, label %1875, !prof !48, !nosanitize !47

1874:                                             ; preds = %1861
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1875:                                             ; preds = %1861
  %1876 = icmp samesign ugt i64 %1865, 4294967287
  br i1 %1876, label %1877, label %1878, !prof !48, !nosanitize !47

1877:                                             ; preds = %1875
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1878:                                             ; preds = %1875
  %1879 = add nuw nsw i64 %1865, 8
  %1880 = trunc nuw i64 %1879 to i32
  %1881 = icmp ugt i32 %1846, %1880
  br i1 %1881, label %1859, label %.loopexit175, !llvm.loop !94

.loopexit175:                                     ; preds = %1878, %1853
  %1882 = phi ptr [ %1847, %1853 ], [ %1867, %1878 ]
  %1883 = phi i32 [ %1848, %1853 ], [ %1866, %1878 ]
  %1884 = phi i64 [ %1849, %1853 ], [ %1872, %1878 ]
  %1885 = phi i32 [ %1850, %1853 ], [ %1880, %1878 ]
  %1886 = shl nsw i32 -1, %1846
  %1887 = xor i32 %1886, -1
  %1888 = trunc i64 %1884 to i32
  %1889 = and i32 %1888, %1887
  %1890 = load i32, ptr %74, align 8, !tbaa !93
  %1891 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1890, i32 %1889), !nosanitize !47
  %1892 = extractvalue { i32, i1 } %1891, 1, !nosanitize !47
  br i1 %1892, label %1893, label %1894, !prof !48, !nosanitize !47

1893:                                             ; preds = %.loopexit175
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1894:                                             ; preds = %.loopexit175
  %1895 = extractvalue { i32, i1 } %1891, 0, !nosanitize !47
  store i32 %1895, ptr %74, align 8, !tbaa !93
  %1896 = zext nneg i32 %1846 to i64
  %1897 = lshr i64 %1884, %1896
  %1898 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1885, i32 %1846), !nosanitize !47
  %1899 = extractvalue { i32, i1 } %1898, 0, !nosanitize !47
  %1900 = extractvalue { i32, i1 } %1898, 1, !nosanitize !47
  br i1 %1900, label %1901, label %1902, !prof !48, !nosanitize !47

1901:                                             ; preds = %1894
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1902:                                             ; preds = %1894
  %1903 = load i32, ptr %71, align 4, !tbaa !37
  %1904 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1903, i32 %1846), !nosanitize !47
  %1905 = extractvalue { i32, i1 } %1904, 1, !nosanitize !47
  br i1 %1905, label %1906, label %1907, !prof !48, !nosanitize !47

1906:                                             ; preds = %1902
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1907:                                             ; preds = %1902
  %1908 = extractvalue { i32, i1 } %1904, 0, !nosanitize !47
  store i32 %1908, ptr %71, align 4, !tbaa !37
  br label %1909

1909:                                             ; preds = %1907, %1845
  %1910 = phi ptr [ %1882, %1907 ], [ %1847, %1845 ]
  %1911 = phi i32 [ %1883, %1907 ], [ %1848, %1845 ]
  %1912 = phi i64 [ %1897, %1907 ], [ %1849, %1845 ]
  %1913 = phi i32 [ %1899, %1907 ], [ %1850, %1845 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1914

1914:                                             ; preds = %1909, %88
  %1915 = phi ptr [ %1910, %1909 ], [ %90, %88 ]
  %1916 = phi i32 [ %1911, %1909 ], [ %92, %88 ]
  %1917 = phi i64 [ %1912, %1909 ], [ %94, %88 ]
  %1918 = phi i32 [ %1913, %1909 ], [ %95, %88 ]
  %1919 = phi i32 [ %1851, %1909 ], [ %97, %88 ]
  %1920 = icmp eq i32 %93, 0
  br i1 %1920, label %.loopexit185, label %1921

1921:                                             ; preds = %1914
  %1922 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %1923 = extractvalue { i32, i1 } %1922, 0, !nosanitize !47
  %1924 = extractvalue { i32, i1 } %1922, 1, !nosanitize !47
  br i1 %1924, label %1925, label %1926, !prof !48, !nosanitize !47

1925:                                             ; preds = %1921
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1926:                                             ; preds = %1921
  %1927 = load i32, ptr %74, align 8, !tbaa !93
  %1928 = icmp ugt i32 %1927, %1923
  br i1 %1928, label %1929, label %1958

1929:                                             ; preds = %1926
  %1930 = sub nuw i32 %1927, %1923
  %1931 = load i32, ptr %75, align 8, !tbaa !39
  %1932 = icmp ugt i32 %1930, %1931
  br i1 %1932, label %1933, label %1937

1933:                                             ; preds = %1929
  %1934 = load i32, ptr %76, align 8, !tbaa !36
  %1935 = icmp eq i32 %1934, 0
  br i1 %1935, label %1937, label %1936

1936:                                             ; preds = %1933
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

1937:                                             ; preds = %1933, %1929
  %1938 = load i32, ptr %77, align 4, !tbaa !40
  %1939 = icmp ugt i32 %1930, %1938
  br i1 %1939, label %1940, label %1948

1940:                                             ; preds = %1937
  %1941 = sub nuw i32 %1930, %1938
  %1942 = load i32, ptr %79, align 4, !tbaa !38
  %1943 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1942, i32 %1941), !nosanitize !47
  %1944 = extractvalue { i32, i1 } %1943, 1, !nosanitize !47
  br i1 %1944, label %1945, label %1946, !prof !48, !nosanitize !47

1945:                                             ; preds = %1940
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1946:                                             ; preds = %1940
  %1947 = extractvalue { i32, i1 } %1943, 0, !nosanitize !47
  br label %1950

1948:                                             ; preds = %1937
  %1949 = sub nuw i32 %1938, %1930
  br label %1950

1950:                                             ; preds = %1948, %1946
  %1951 = phi i32 [ %1949, %1948 ], [ %1947, %1946 ]
  %1952 = phi i32 [ %1930, %1948 ], [ %1941, %1946 ]
  %1953 = load ptr, ptr %78, align 8, !tbaa !41
  %1954 = zext i32 %1951 to i64
  %1955 = getelementptr inbounds nuw i8, ptr %1953, i64 %1954
  %1956 = load i32, ptr %56, align 4, !tbaa !61
  %1957 = call i32 @llvm.umin.i32(i32 %1952, i32 %1956)
  br label %1963

1958:                                             ; preds = %1926
  %1959 = zext i32 %1927 to i64
  %1960 = sub nsw i64 0, %1959
  %1961 = getelementptr inbounds i8, ptr %91, i64 %1960
  %1962 = load i32, ptr %56, align 4, !tbaa !61
  br label %1963

1963:                                             ; preds = %1958, %1950
  %1964 = phi i32 [ %1962, %1958 ], [ %1956, %1950 ]
  %1965 = phi i32 [ %1962, %1958 ], [ %1957, %1950 ]
  %1966 = phi ptr [ %1961, %1958 ], [ %1955, %1950 ]
  %1967 = ptrtoaddr ptr %1966 to i64
  %1968 = call i32 @llvm.umin.i32(i32 %1965, i32 %93)
  %1969 = sub i32 %93, %1968
  %1970 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1964, i32 %1968), !nosanitize !47
  %1971 = extractvalue { i32, i1 } %1970, 1, !nosanitize !47
  br i1 %1971, label %1972, label %1973, !prof !48, !nosanitize !47

1972:                                             ; preds = %1963
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1973:                                             ; preds = %1963
  %1974 = extractvalue { i32, i1 } %1970, 0, !nosanitize !47
  store i32 %1974, ptr %56, align 4, !tbaa !61
  %1975 = icmp eq i32 %1968, 0
  br i1 %1975, label %2042, label %1976, !prof !48, !nosanitize !47

1976:                                             ; preds = %1973
  %1977 = zext i32 %1968 to i64
  %1978 = icmp ult i32 %1968, 4
  %1979 = sub i64 %98, %1967
  %1980 = icmp ult i64 %1979, 32
  %1981 = select i1 %1978, i1 true, i1 %1980
  br i1 %1981, label %2021, label %1982

1982:                                             ; preds = %1976
  %1983 = icmp ult i32 %1968, 32
  br i1 %1983, label %2005, label %1984

1984:                                             ; preds = %1982
  %1985 = and i64 %1977, 4294967264
  br label %1986

1986:                                             ; preds = %1986, %1984
  %1987 = phi i64 [ 0, %1984 ], [ %1994, %1986 ]
  %1988 = getelementptr i8, ptr %91, i64 %1987
  %1989 = getelementptr i8, ptr %1966, i64 %1987
  %1990 = getelementptr i8, ptr %1989, i64 16
  %1991 = load <16 x i8>, ptr %1989, align 1, !tbaa !44
  %1992 = load <16 x i8>, ptr %1990, align 1, !tbaa !44
  %1993 = getelementptr i8, ptr %1988, i64 16
  store <16 x i8> %1991, ptr %1988, align 1, !tbaa !44
  store <16 x i8> %1992, ptr %1993, align 1, !tbaa !44
  %1994 = add nuw i64 %1987, 32
  %1995 = icmp eq i64 %1994, %1985
  br i1 %1995, label %1996, label %1986, !llvm.loop !95

1996:                                             ; preds = %1986
  %1997 = getelementptr i8, ptr %91, i64 %1985
  %1998 = icmp eq i64 %1985, %1977
  br i1 %1998, label %.loopexit172, label %1999

1999:                                             ; preds = %1996
  %2000 = getelementptr i8, ptr %1966, i64 %1985
  %2001 = trunc nuw i64 %1985 to i32
  %2002 = sub i32 %1968, %2001
  %2003 = and i64 %1977, 28
  %2004 = icmp eq i64 %2003, 0
  br i1 %2004, label %2021, label %2005, !prof !98

2005:                                             ; preds = %1999, %1982
  %2006 = phi i64 [ %1985, %1999 ], [ 0, %1982 ]
  %2007 = and i64 %1977, 4294967292
  br label %2008

2008:                                             ; preds = %2008, %2005
  %2009 = phi i64 [ %2006, %2005 ], [ %2013, %2008 ]
  %2010 = getelementptr i8, ptr %91, i64 %2009
  %2011 = getelementptr i8, ptr %1966, i64 %2009
  %2012 = load <4 x i8>, ptr %2011, align 1, !tbaa !44
  store <4 x i8> %2012, ptr %2010, align 1, !tbaa !44
  %2013 = add nuw i64 %2009, 4
  %2014 = icmp eq i64 %2013, %2007
  br i1 %2014, label %2015, label %2008, !llvm.loop !99

2015:                                             ; preds = %2008
  %2016 = getelementptr i8, ptr %91, i64 %2007
  %2017 = trunc nuw i64 %2007 to i32
  %2018 = sub i32 %1968, %2017
  %2019 = getelementptr i8, ptr %1966, i64 %2007
  %2020 = icmp eq i64 %2007, %1977
  br i1 %2020, label %.loopexit172, label %2021

2021:                                             ; preds = %2015, %1999, %1976
  %2022 = phi ptr [ %91, %1976 ], [ %1997, %1999 ], [ %2016, %2015 ]
  %2023 = phi i32 [ %1968, %1976 ], [ %2002, %1999 ], [ %2018, %2015 ]
  %2024 = phi ptr [ %1966, %1976 ], [ %2000, %1999 ], [ %2019, %2015 ]
  %2025 = add i32 %2023, -1
  %2026 = and i32 %2023, 7
  %2027 = icmp eq i32 %2026, 0
  br i1 %2027, label %.loopexit174, label %.preheader173

.preheader173:                                    ; preds = %2021, %.preheader173
  %2028 = phi ptr [ %2032, %.preheader173 ], [ %2022, %2021 ]
  %2029 = phi ptr [ %2033, %.preheader173 ], [ %2024, %2021 ]
  %2030 = phi i32 [ %2034, %.preheader173 ], [ 0, %2021 ]
  %2031 = load i8, ptr %2029, align 1, !tbaa !44
  store i8 %2031, ptr %2028, align 1, !tbaa !44
  %2032 = getelementptr inbounds nuw i8, ptr %2028, i64 1
  %2033 = getelementptr inbounds nuw i8, ptr %2029, i64 1
  %2034 = add nuw nsw i32 %2030, 1
  %2035 = icmp eq i32 %2034, %2026
  br i1 %2035, label %.loopexit174.loopexit, label %.preheader173, !llvm.loop !100

.loopexit174.loopexit:                            ; preds = %.preheader173
  %2036 = and i32 %2023, -8
  br label %.loopexit174

.loopexit174:                                     ; preds = %.loopexit174.loopexit, %2021
  %2037 = phi ptr [ poison, %2021 ], [ %2032, %.loopexit174.loopexit ]
  %2038 = phi ptr [ %2022, %2021 ], [ %2032, %.loopexit174.loopexit ]
  %2039 = phi i32 [ %2023, %2021 ], [ %2036, %.loopexit174.loopexit ]
  %2040 = phi ptr [ %2024, %2021 ], [ %2033, %.loopexit174.loopexit ]
  %2041 = icmp ult i32 %2025, 7
  br i1 %2041, label %.loopexit172, label %.preheader171

2042:                                             ; preds = %1973
  %2043 = load i8, ptr %1966, align 1, !tbaa !44
  store i8 %2043, ptr %91, align 1, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

.preheader171:                                    ; preds = %.loopexit174, %.preheader171
  %2044 = phi ptr [ %2069, %.preheader171 ], [ %2038, %.loopexit174 ]
  %2045 = phi i32 [ %2070, %.preheader171 ], [ %2039, %.loopexit174 ]
  %2046 = phi ptr [ %2071, %.preheader171 ], [ %2040, %.loopexit174 ]
  %2047 = load i8, ptr %2046, align 1, !tbaa !44
  store i8 %2047, ptr %2044, align 1, !tbaa !44
  %2048 = getelementptr inbounds nuw i8, ptr %2044, i64 1
  %2049 = getelementptr inbounds nuw i8, ptr %2046, i64 1
  %2050 = load i8, ptr %2049, align 1, !tbaa !44
  store i8 %2050, ptr %2048, align 1, !tbaa !44
  %2051 = getelementptr inbounds nuw i8, ptr %2044, i64 2
  %2052 = getelementptr inbounds nuw i8, ptr %2046, i64 2
  %2053 = load i8, ptr %2052, align 1, !tbaa !44
  store i8 %2053, ptr %2051, align 1, !tbaa !44
  %2054 = getelementptr inbounds nuw i8, ptr %2044, i64 3
  %2055 = getelementptr inbounds nuw i8, ptr %2046, i64 3
  %2056 = load i8, ptr %2055, align 1, !tbaa !44
  store i8 %2056, ptr %2054, align 1, !tbaa !44
  %2057 = getelementptr inbounds nuw i8, ptr %2044, i64 4
  %2058 = getelementptr inbounds nuw i8, ptr %2046, i64 4
  %2059 = load i8, ptr %2058, align 1, !tbaa !44
  store i8 %2059, ptr %2057, align 1, !tbaa !44
  %2060 = getelementptr inbounds nuw i8, ptr %2044, i64 5
  %2061 = getelementptr inbounds nuw i8, ptr %2046, i64 5
  %2062 = load i8, ptr %2061, align 1, !tbaa !44
  store i8 %2062, ptr %2060, align 1, !tbaa !44
  %2063 = getelementptr inbounds nuw i8, ptr %2044, i64 6
  %2064 = getelementptr inbounds nuw i8, ptr %2046, i64 6
  %2065 = load i8, ptr %2064, align 1, !tbaa !44
  store i8 %2065, ptr %2063, align 1, !tbaa !44
  %2066 = getelementptr inbounds nuw i8, ptr %2044, i64 7
  %2067 = getelementptr inbounds nuw i8, ptr %2046, i64 7
  %2068 = load i8, ptr %2067, align 1, !tbaa !44
  store i8 %2068, ptr %2066, align 1, !tbaa !44
  %2069 = getelementptr inbounds nuw i8, ptr %2044, i64 8
  %2070 = add i32 %2045, -8
  %2071 = getelementptr inbounds nuw i8, ptr %2046, i64 8
  %2072 = icmp eq i32 %2070, 0
  br i1 %2072, label %.loopexit172, label %.preheader171, !llvm.loop !102

.loopexit172:                                     ; preds = %.preheader171, %.loopexit174, %2015, %1996
  %2073 = phi ptr [ %2016, %2015 ], [ %1997, %1996 ], [ %2037, %.loopexit174 ], [ %2069, %.preheader171 ]
  %2074 = load i32, ptr %56, align 4, !tbaa !61
  %2075 = icmp eq i32 %2074, 0
  br i1 %2075, label %2076, label %2307

2076:                                             ; preds = %.loopexit172
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2307

2077:                                             ; preds = %88
  %2078 = icmp eq i32 %93, 0
  br i1 %2078, label %.loopexit185, label %2079

2079:                                             ; preds = %2077
  %2080 = load i32, ptr %56, align 4, !tbaa !61
  %2081 = trunc i32 %2080 to i8
  store i8 %2081, ptr %91, align 1, !tbaa !44
  %2082 = add i32 %93, -1
  %2083 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2307

2084:                                             ; preds = %88
  %2085 = load i32, ptr %49, align 8, !tbaa !24
  %2086 = icmp eq i32 %2085, 0
  br i1 %2086, label %2207, label %2087

2087:                                             ; preds = %2084
  %2088 = icmp ult i32 %95, 32
  br i1 %2088, label %2089, label %2152

2089:                                             ; preds = %2087
  %2090 = zext nneg i32 %95 to i64
  %2091 = icmp eq i32 %92, 0
  br i1 %2091, label %2427, label %2092

2092:                                             ; preds = %2089
  %2093 = load i8, ptr %90, align 1, !tbaa !44
  %2094 = zext i8 %2093 to i64
  %2095 = shl nuw nsw i64 %2094, %2090
  %2096 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %2095), !nosanitize !47
  %2097 = extractvalue { i64, i1 } %2096, 1, !nosanitize !47
  br i1 %2097, label %2098, label %2099, !prof !48, !nosanitize !47

2098:                                             ; preds = %2135, %2121, %2107, %2092
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2099:                                             ; preds = %2092
  %2100 = extractvalue { i64, i1 } %2096, 0, !nosanitize !47
  %2101 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %2102 = add i32 %92, -1
  %2103 = add nuw nsw i64 %2090, 8
  %2104 = icmp samesign ult i32 %95, 24
  br i1 %2104, label %2105, label %2146

2105:                                             ; preds = %2099
  %2106 = icmp eq i32 %2102, 0
  br i1 %2106, label %2427, label %2107

2107:                                             ; preds = %2105
  %2108 = load i8, ptr %2101, align 1, !tbaa !44
  %2109 = zext i8 %2108 to i64
  %2110 = shl nuw nsw i64 %2109, %2103
  %2111 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2100, i64 %2110), !nosanitize !47
  %2112 = extractvalue { i64, i1 } %2111, 1, !nosanitize !47
  br i1 %2112, label %2098, label %2113, !prof !48, !nosanitize !47

2113:                                             ; preds = %2107
  %2114 = extractvalue { i64, i1 } %2111, 0, !nosanitize !47
  %2115 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %2116 = add i32 %92, -2
  %2117 = add nuw nsw i64 %2090, 16
  %2118 = icmp samesign ult i32 %95, 16
  br i1 %2118, label %2119, label %2146

2119:                                             ; preds = %2113
  %2120 = icmp eq i32 %2116, 0
  br i1 %2120, label %2427, label %2121

2121:                                             ; preds = %2119
  %2122 = load i8, ptr %2115, align 1, !tbaa !44
  %2123 = zext i8 %2122 to i64
  %2124 = shl nuw nsw i64 %2123, %2117
  %2125 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2114, i64 %2124), !nosanitize !47
  %2126 = extractvalue { i64, i1 } %2125, 1, !nosanitize !47
  br i1 %2126, label %2098, label %2127, !prof !48, !nosanitize !47

2127:                                             ; preds = %2121
  %2128 = extractvalue { i64, i1 } %2125, 0, !nosanitize !47
  %2129 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %2130 = add i32 %92, -3
  %2131 = add nuw nsw i64 %2090, 24
  %2132 = icmp samesign ult i32 %95, 8
  br i1 %2132, label %2133, label %2146

2133:                                             ; preds = %2127
  %2134 = icmp eq i32 %2130, 0
  br i1 %2134, label %2427, label %2135

2135:                                             ; preds = %2133
  %2136 = load i8, ptr %2129, align 1, !tbaa !44
  %2137 = zext i8 %2136 to i64
  %2138 = shl nuw nsw i64 %2137, %2131
  %2139 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2128, i64 %2138), !nosanitize !47
  %2140 = extractvalue { i64, i1 } %2139, 1, !nosanitize !47
  br i1 %2140, label %2098, label %2141, !prof !48, !nosanitize !47

2141:                                             ; preds = %2135
  %2142 = extractvalue { i64, i1 } %2139, 0, !nosanitize !47
  %2143 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %2144 = add i32 %92, -4
  %2145 = or disjoint i64 %2090, 32
  br label %2146

2146:                                             ; preds = %2141, %2127, %2113, %2099
  %2147 = phi i64 [ %2100, %2099 ], [ %2114, %2113 ], [ %2128, %2127 ], [ %2142, %2141 ]
  %2148 = phi ptr [ %2101, %2099 ], [ %2115, %2113 ], [ %2129, %2127 ], [ %2143, %2141 ]
  %2149 = phi i32 [ %2102, %2099 ], [ %2116, %2113 ], [ %2130, %2127 ], [ %2144, %2141 ]
  %2150 = phi i64 [ %2103, %2099 ], [ %2117, %2113 ], [ %2131, %2127 ], [ %2145, %2141 ]
  %2151 = trunc nuw nsw i64 %2150 to i32
  br label %2152

2152:                                             ; preds = %2146, %2087
  %2153 = phi ptr [ %90, %2087 ], [ %2148, %2146 ]
  %2154 = phi i32 [ %92, %2087 ], [ %2149, %2146 ]
  %2155 = phi i64 [ %94, %2087 ], [ %2147, %2146 ]
  %2156 = phi i32 [ %95, %2087 ], [ %2151, %2146 ]
  %2157 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %2158 = extractvalue { i32, i1 } %2157, 0, !nosanitize !47
  %2159 = extractvalue { i32, i1 } %2157, 1, !nosanitize !47
  br i1 %2159, label %2160, label %2161, !prof !48, !nosanitize !47

2160:                                             ; preds = %2152
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2161:                                             ; preds = %2152
  %2162 = zext i32 %2158 to i64
  %2163 = load i64, ptr %50, align 8, !tbaa !103
  %2164 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2163, i64 %2162), !nosanitize !47
  %2165 = extractvalue { i64, i1 } %2164, 1, !nosanitize !47
  br i1 %2165, label %2166, label %2167, !prof !48, !nosanitize !47

2166:                                             ; preds = %2161
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2167:                                             ; preds = %2161
  %2168 = extractvalue { i64, i1 } %2164, 0, !nosanitize !47
  store i64 %2168, ptr %50, align 8, !tbaa !103
  %2169 = load i64, ptr %51, align 8, !tbaa !21
  %2170 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2169, i64 %2162), !nosanitize !47
  %2171 = extractvalue { i64, i1 } %2170, 1, !nosanitize !47
  br i1 %2171, label %2172, label %2173, !prof !48, !nosanitize !47

2172:                                             ; preds = %2167
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2173:                                             ; preds = %2167
  %2174 = extractvalue { i64, i1 } %2170, 0, !nosanitize !47
  store i64 %2174, ptr %51, align 8, !tbaa !21
  %2175 = and i32 %2085, 4
  %2176 = icmp ne i32 %2175, 0
  %2177 = icmp ne i32 %2158, 0
  %2178 = select i1 %2176, i1 %2177, i1 false
  br i1 %2178, label %2179, label %2193

2179:                                             ; preds = %2173
  %2180 = load i32, ptr %52, align 8, !tbaa !28
  %2181 = icmp eq i32 %2180, 0
  %2182 = load i64, ptr %53, align 8, !tbaa !54
  %2183 = sub nsw i64 0, %2162
  %2184 = getelementptr inbounds i8, ptr %91, i64 %2183
  br i1 %2181, label %2187, label %2185

2185:                                             ; preds = %2179
  %2186 = call i64 @crc32(i64 noundef %2182, ptr noundef nonnull %2184, i32 noundef %2158) #12
  br label %2189

2187:                                             ; preds = %2179
  %2188 = call i64 @adler32(i64 noundef %2182, ptr noundef nonnull %2184, i32 noundef %2158) #12
  br label %2189

2189:                                             ; preds = %2187, %2185
  %2190 = phi i64 [ %2186, %2185 ], [ %2188, %2187 ]
  store i64 %2190, ptr %53, align 8, !tbaa !54
  store i64 %2190, ptr %54, align 8, !tbaa !25
  %2191 = load i32, ptr %49, align 8, !tbaa !24
  %2192 = and i32 %2191, 4
  br label %2193

2193:                                             ; preds = %2189, %2173
  %2194 = phi i32 [ %2192, %2189 ], [ %2175, %2173 ]
  %2195 = phi i32 [ %2191, %2189 ], [ %2085, %2173 ]
  %2196 = icmp eq i32 %2194, 0
  br i1 %2196, label %2207, label %2197

2197:                                             ; preds = %2193
  %2198 = load i32, ptr %52, align 8, !tbaa !28
  %2199 = icmp eq i32 %2198, 0
  %2200 = trunc i64 %2155 to i32
  %2201 = call i32 @llvm.bswap.i32(i32 %2200)
  %2202 = zext i32 %2201 to i64
  %2203 = select i1 %2199, i64 %2202, i64 %2155
  %2204 = load i64, ptr %53, align 8, !tbaa !54
  %2205 = icmp eq i64 %2203, %2204
  br i1 %2205, label %2207, label %2206

2206:                                             ; preds = %2197
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

2207:                                             ; preds = %2197, %2193, %2084
  %2208 = phi i32 [ 0, %2084 ], [ %2195, %2193 ], [ %2195, %2197 ]
  %2209 = phi ptr [ %90, %2084 ], [ %2153, %2193 ], [ %2153, %2197 ]
  %2210 = phi i32 [ %92, %2084 ], [ %2154, %2193 ], [ %2154, %2197 ]
  %2211 = phi i64 [ %94, %2084 ], [ 0, %2193 ], [ 0, %2197 ]
  %2212 = phi i32 [ %95, %2084 ], [ 0, %2193 ], [ 0, %2197 ]
  %2213 = phi i32 [ %96, %2084 ], [ %93, %2193 ], [ %93, %2197 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2214

2214:                                             ; preds = %2207, %103
  %2215 = phi i32 [ %2208, %2207 ], [ %104, %103 ]
  %2216 = phi ptr [ %2209, %2207 ], [ %90, %103 ]
  %2217 = phi i32 [ %2210, %2207 ], [ %92, %103 ]
  %2218 = phi i64 [ %2211, %2207 ], [ %94, %103 ]
  %2219 = phi i32 [ %2212, %2207 ], [ %95, %103 ]
  %2220 = phi i32 [ %2213, %2207 ], [ %96, %103 ]
  %2221 = icmp eq i32 %2215, 0
  br i1 %2221, label %2302, label %2222

2222:                                             ; preds = %2214
  %2223 = load i32, ptr %52, align 8, !tbaa !28
  %2224 = icmp eq i32 %2223, 0
  br i1 %2224, label %2302, label %2225

2225:                                             ; preds = %2222
  %2226 = icmp ult i32 %2219, 32
  br i1 %2226, label %2227, label %2290

2227:                                             ; preds = %2225
  %2228 = zext nneg i32 %2219 to i64
  %2229 = icmp eq i32 %2217, 0
  br i1 %2229, label %2421, label %2230

2230:                                             ; preds = %2227
  %2231 = load i8, ptr %2216, align 1, !tbaa !44
  %2232 = zext i8 %2231 to i64
  %2233 = shl nuw nsw i64 %2232, %2228
  %2234 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2218, i64 %2233), !nosanitize !47
  %2235 = extractvalue { i64, i1 } %2234, 1, !nosanitize !47
  br i1 %2235, label %2236, label %2237, !prof !48, !nosanitize !47

2236:                                             ; preds = %2273, %2259, %2245, %2230
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2237:                                             ; preds = %2230
  %2238 = extractvalue { i64, i1 } %2234, 0, !nosanitize !47
  %2239 = getelementptr inbounds nuw i8, ptr %2216, i64 1
  %2240 = add i32 %2217, -1
  %2241 = add nuw nsw i64 %2228, 8
  %2242 = icmp samesign ult i32 %2219, 24
  br i1 %2242, label %2243, label %2284

2243:                                             ; preds = %2237
  %2244 = icmp eq i32 %2240, 0
  br i1 %2244, label %2421, label %2245

2245:                                             ; preds = %2243
  %2246 = load i8, ptr %2239, align 1, !tbaa !44
  %2247 = zext i8 %2246 to i64
  %2248 = shl nuw nsw i64 %2247, %2241
  %2249 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2238, i64 %2248), !nosanitize !47
  %2250 = extractvalue { i64, i1 } %2249, 1, !nosanitize !47
  br i1 %2250, label %2236, label %2251, !prof !48, !nosanitize !47

2251:                                             ; preds = %2245
  %2252 = extractvalue { i64, i1 } %2249, 0, !nosanitize !47
  %2253 = getelementptr inbounds nuw i8, ptr %2216, i64 2
  %2254 = add i32 %2217, -2
  %2255 = add nuw nsw i64 %2228, 16
  %2256 = icmp samesign ult i32 %2219, 16
  br i1 %2256, label %2257, label %2284

2257:                                             ; preds = %2251
  %2258 = icmp eq i32 %2254, 0
  br i1 %2258, label %2421, label %2259

2259:                                             ; preds = %2257
  %2260 = load i8, ptr %2253, align 1, !tbaa !44
  %2261 = zext i8 %2260 to i64
  %2262 = shl nuw nsw i64 %2261, %2255
  %2263 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2252, i64 %2262), !nosanitize !47
  %2264 = extractvalue { i64, i1 } %2263, 1, !nosanitize !47
  br i1 %2264, label %2236, label %2265, !prof !48, !nosanitize !47

2265:                                             ; preds = %2259
  %2266 = extractvalue { i64, i1 } %2263, 0, !nosanitize !47
  %2267 = getelementptr inbounds nuw i8, ptr %2216, i64 3
  %2268 = add i32 %2217, -3
  %2269 = add nuw nsw i64 %2228, 24
  %2270 = icmp samesign ult i32 %2219, 8
  br i1 %2270, label %2271, label %2284

2271:                                             ; preds = %2265
  %2272 = icmp eq i32 %2268, 0
  br i1 %2272, label %2421, label %2273

2273:                                             ; preds = %2271
  %2274 = load i8, ptr %2267, align 1, !tbaa !44
  %2275 = zext i8 %2274 to i64
  %2276 = shl nuw nsw i64 %2275, %2269
  %2277 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2266, i64 %2276), !nosanitize !47
  %2278 = extractvalue { i64, i1 } %2277, 1, !nosanitize !47
  br i1 %2278, label %2236, label %2279, !prof !48, !nosanitize !47

2279:                                             ; preds = %2273
  %2280 = extractvalue { i64, i1 } %2277, 0, !nosanitize !47
  %2281 = getelementptr inbounds nuw i8, ptr %2216, i64 4
  %2282 = add i32 %2217, -4
  %2283 = or disjoint i64 %2228, 32
  br label %2284

2284:                                             ; preds = %2279, %2265, %2251, %2237
  %2285 = phi i64 [ %2238, %2237 ], [ %2252, %2251 ], [ %2266, %2265 ], [ %2280, %2279 ]
  %2286 = phi ptr [ %2239, %2237 ], [ %2253, %2251 ], [ %2267, %2265 ], [ %2281, %2279 ]
  %2287 = phi i32 [ %2240, %2237 ], [ %2254, %2251 ], [ %2268, %2265 ], [ %2282, %2279 ]
  %2288 = phi i64 [ %2241, %2237 ], [ %2255, %2251 ], [ %2269, %2265 ], [ %2283, %2279 ]
  %2289 = trunc nuw nsw i64 %2288 to i32
  br label %2290

2290:                                             ; preds = %2284, %2225
  %2291 = phi ptr [ %2216, %2225 ], [ %2286, %2284 ]
  %2292 = phi i32 [ %2217, %2225 ], [ %2287, %2284 ]
  %2293 = phi i64 [ %2218, %2225 ], [ %2285, %2284 ]
  %2294 = phi i32 [ %2219, %2225 ], [ %2289, %2284 ]
  %2295 = and i32 %2215, 4
  %2296 = icmp eq i32 %2295, 0
  br i1 %2296, label %2302, label %2297

2297:                                             ; preds = %2290
  %2298 = load i64, ptr %51, align 8, !tbaa !21
  %2299 = and i64 %2298, 4294967295
  %2300 = icmp eq i64 %2293, %2299
  br i1 %2300, label %2302, label %2301

2301:                                             ; preds = %2297
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2307

2302:                                             ; preds = %2297, %2290, %2222, %2214
  %2303 = phi ptr [ %2216, %2214 ], [ %2216, %2222 ], [ %2291, %2290 ], [ %2291, %2297 ]
  %2304 = phi i32 [ %2217, %2214 ], [ %2217, %2222 ], [ %2292, %2290 ], [ %2292, %2297 ]
  %2305 = phi i64 [ %2218, %2214 ], [ %2218, %2222 ], [ 0, %2290 ], [ 0, %2297 ]
  %2306 = phi i32 [ %2219, %2214 ], [ %2219, %2222 ], [ 0, %2290 ], [ 0, %2297 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %.loopexit185

2307:                                             ; preds = %2301, %2206, %2079, %2076, %.loopexit172, %1936, %1841, %1616, %1612, %1608, %1461, %1452, %1435, %1426, %1422, %1393, %1275, %1132, %1058, %1006, %1001, %970, %889, %855, %766, %753, %262, %258, %212, %211, %196, %192, %174, %128
  %2308 = phi ptr [ %90, %128 ], [ %162, %174 ], [ %162, %192 ], [ %162, %196 ], [ %162, %211 ], [ %162, %212 ], [ %251, %258 ], [ %251, %262 ], [ %742, %753 ], [ %755, %766 ], [ %844, %855 ], [ %873, %889 ], [ %962, %970 ], [ %1003, %1001 ], [ %980, %1006 ], [ %1040, %1058 ], [ %1073, %1132 ], [ %1267, %1275 ], [ %1419, %1422 ], [ %1419, %1426 ], [ %1419, %1435 ], [ %1455, %1461 ], [ %1455, %1452 ], [ %1589, %1608 ], [ %1589, %1612 ], [ %1589, %1616 ], [ %1821, %1841 ], [ %1915, %1936 ], [ %1915, %2076 ], [ %1915, %.loopexit172 ], [ %90, %2079 ], [ %2153, %2206 ], [ %2291, %2301 ], [ %1364, %1393 ]
  %2309 = phi ptr [ %91, %128 ], [ %91, %174 ], [ %91, %192 ], [ %91, %196 ], [ %91, %211 ], [ %91, %212 ], [ %91, %258 ], [ %91, %262 ], [ %91, %753 ], [ %91, %766 ], [ %91, %855 ], [ %91, %889 ], [ %91, %970 ], [ %1005, %1001 ], [ %91, %1006 ], [ %91, %1058 ], [ %91, %1132 ], [ %91, %1275 ], [ %91, %1422 ], [ %91, %1426 ], [ %91, %1435 ], [ %1453, %1461 ], [ %1453, %1452 ], [ %91, %1608 ], [ %91, %1612 ], [ %91, %1616 ], [ %91, %1841 ], [ %91, %1936 ], [ %2073, %2076 ], [ %2073, %.loopexit172 ], [ %2083, %2079 ], [ %91, %2206 ], [ %91, %2301 ], [ %91, %1393 ]
  %2310 = phi i32 [ %92, %128 ], [ %163, %174 ], [ %163, %192 ], [ %163, %196 ], [ %163, %211 ], [ %163, %212 ], [ %252, %258 ], [ %252, %262 ], [ %743, %753 ], [ %756, %766 ], [ %845, %855 ], [ %874, %889 ], [ %963, %970 ], [ %993, %1001 ], [ %981, %1006 ], [ %1041, %1058 ], [ %1074, %1132 ], [ %1268, %1275 ], [ %1418, %1422 ], [ %1418, %1426 ], [ %1418, %1435 ], [ %1456, %1461 ], [ %1456, %1452 ], [ %1590, %1608 ], [ %1590, %1612 ], [ %1590, %1616 ], [ %1822, %1841 ], [ %1916, %1936 ], [ %1916, %2076 ], [ %1916, %.loopexit172 ], [ %92, %2079 ], [ %2154, %2206 ], [ %2292, %2301 ], [ %1365, %1393 ]
  %2311 = phi i32 [ %93, %128 ], [ %93, %174 ], [ %93, %192 ], [ %93, %196 ], [ %93, %211 ], [ %93, %212 ], [ %93, %258 ], [ %93, %262 ], [ %93, %753 ], [ %93, %766 ], [ %93, %855 ], [ %93, %889 ], [ %93, %970 ], [ %1002, %1001 ], [ %93, %1006 ], [ %93, %1058 ], [ %93, %1132 ], [ %93, %1275 ], [ %93, %1422 ], [ %93, %1426 ], [ %93, %1435 ], [ %1454, %1461 ], [ %1454, %1452 ], [ %93, %1608 ], [ %93, %1612 ], [ %93, %1616 ], [ %93, %1841 ], [ %93, %1936 ], [ %1969, %2076 ], [ %1969, %.loopexit172 ], [ %2082, %2079 ], [ %93, %2206 ], [ %93, %2301 ], [ %93, %1393 ]
  %2312 = phi i64 [ %94, %128 ], [ 0, %174 ], [ %164, %192 ], [ %164, %196 ], [ %198, %211 ], [ 0, %212 ], [ %253, %258 ], [ %253, %262 ], [ %744, %753 ], [ %757, %766 ], [ %859, %855 ], [ %891, %889 ], [ %964, %970 ], [ %982, %1001 ], [ %982, %1006 ], [ %1053, %1058 ], [ %1075, %1132 ], [ %1272, %1275 ], [ %1417, %1422 ], [ %1417, %1426 ], [ %1417, %1435 ], [ %1457, %1461 ], [ %1457, %1452 ], [ %1598, %1608 ], [ %1598, %1612 ], [ %1598, %1616 ], [ %1830, %1841 ], [ %1917, %1936 ], [ %1917, %2076 ], [ %1917, %.loopexit172 ], [ %94, %2079 ], [ %2155, %2206 ], [ %2293, %2301 ], [ %1366, %1393 ]
  %2313 = phi i32 [ %95, %128 ], [ 0, %174 ], [ %165, %192 ], [ %165, %196 ], [ %199, %211 ], [ 0, %212 ], [ %254, %258 ], [ %254, %262 ], [ %745, %753 ], [ %758, %766 ], [ %857, %855 ], [ %890, %889 ], [ %965, %970 ], [ %983, %1001 ], [ %983, %1006 ], [ %1054, %1058 ], [ %1076, %1132 ], [ %1273, %1275 ], [ %1416, %1422 ], [ %1416, %1426 ], [ %1416, %1435 ], [ %1458, %1461 ], [ %1458, %1452 ], [ %1600, %1608 ], [ %1600, %1612 ], [ %1600, %1616 ], [ %1832, %1841 ], [ %1918, %1936 ], [ %1918, %2076 ], [ %1918, %.loopexit172 ], [ %95, %2079 ], [ %2156, %2206 ], [ %2294, %2301 ], [ %1370, %1393 ]
  %2314 = phi i32 [ %96, %128 ], [ %96, %174 ], [ %96, %192 ], [ %96, %196 ], [ %96, %211 ], [ %96, %212 ], [ %96, %258 ], [ %96, %262 ], [ %96, %753 ], [ %96, %766 ], [ %96, %855 ], [ %96, %889 ], [ %96, %970 ], [ %96, %1001 ], [ %96, %1006 ], [ %96, %1058 ], [ %96, %1132 ], [ %96, %1275 ], [ %96, %1422 ], [ %96, %1426 ], [ %96, %1435 ], [ %96, %1461 ], [ %96, %1452 ], [ %96, %1608 ], [ %96, %1612 ], [ %96, %1616 ], [ %96, %1841 ], [ %96, %1936 ], [ %96, %2076 ], [ %96, %.loopexit172 ], [ %96, %2079 ], [ %93, %2206 ], [ %2220, %2301 ], [ %96, %1393 ]
  %2315 = phi i32 [ %97, %128 ], [ %97, %174 ], [ %97, %192 ], [ %97, %196 ], [ %97, %211 ], [ %97, %212 ], [ %97, %258 ], [ %97, %262 ], [ %97, %753 ], [ %97, %766 ], [ %97, %855 ], [ %97, %889 ], [ %97, %970 ], [ %97, %1001 ], [ %97, %1006 ], [ %97, %1058 ], [ %1130, %1132 ], [ %1139, %1275 ], [ %1139, %1422 ], [ %1424, %1426 ], [ %1433, %1435 ], [ %1448, %1461 ], [ %1448, %1452 ], [ %1448, %1608 ], [ %1448, %1612 ], [ %1448, %1616 ], [ %1694, %1841 ], [ %1919, %1936 ], [ %1919, %2076 ], [ %1919, %.loopexit172 ], [ %97, %2079 ], [ %97, %2206 ], [ %97, %2301 ], [ %1139, %1393 ]
  %2316 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

.loopexit:                                        ; preds = %1171, %1175
  %2317 = phi i64 [ %1189, %1175 ], [ %1160, %1171 ]
  %2318 = zext i32 %1159 to i64
  %2319 = shl i32 %1159, 3
  %2320 = add i32 %1161, %2319
  %2321 = getelementptr i8, ptr %1158, i64 %2318
  br label %.loopexit185

2322:                                             ; preds = %142, %125
  %.lcssa2477 = phi i32 [ 1, %142 ], [ 0, %125 ]
  %2323 = phi i64 [ %137, %142 ], [ %94, %125 ]
  %2324 = zext nneg i32 %.lcssa2477 to i64
  %2325 = shl nuw nsw i32 %.lcssa2477, 3
  %2326 = add nuw nsw i32 %95, %2325
  %2327 = getelementptr i8, ptr %90, i64 %2324
  br label %.loopexit185

2328:                                             ; preds = %722, %706
  %.lcssa1929 = phi i32 [ 1, %722 ], [ 0, %706 ]
  %2329 = phi i64 [ %717, %722 ], [ %699, %706 ]
  %2330 = zext nneg i32 %.lcssa1929 to i64
  %2331 = shl nuw nsw i32 %.lcssa1929, 3
  %2332 = add nuw nsw i32 %700, %2331
  %2333 = getelementptr i8, ptr %697, i64 %2330
  br label %.loopexit185

2334:                                             ; preds = %454, %433
  %.lcssa1923 = phi i32 [ 1, %454 ], [ 0, %433 ]
  %2335 = phi i64 [ %449, %454 ], [ %436, %433 ]
  %2336 = zext nneg i32 %.lcssa1923 to i64
  %2337 = shl nuw nsw i32 %.lcssa1923, 3
  %2338 = add nuw nsw i32 %437, %2337
  %2339 = getelementptr i8, ptr %434, i64 %2336
  br label %.loopexit185

2340:                                             ; preds = %386, %366
  %.lcssa1917 = phi i32 [ 1, %386 ], [ 0, %366 ]
  %2341 = phi i64 [ %381, %386 ], [ %368, %366 ]
  %2342 = zext nneg i32 %.lcssa1917 to i64
  %2343 = shl nuw nsw i32 %.lcssa1917, 3
  %2344 = add nuw nsw i32 %2343, %367
  %2345 = getelementptr i8, ptr %370, i64 %2342
  br label %.loopexit185

2346:                                             ; preds = %331, %317, %303, %283
  %.lcssa1911 = phi i32 [ 3, %331 ], [ 2, %317 ], [ 1, %303 ], [ 0, %283 ]
  %2347 = phi i64 [ %326, %331 ], [ %312, %317 ], [ %298, %303 ], [ %285, %283 ]
  %2348 = zext nneg i32 %.lcssa1911 to i64
  %2349 = shl nuw nsw i32 %.lcssa1911, 3
  %2350 = add nuw nsw i32 %2349, %284
  %2351 = getelementptr i8, ptr %287, i64 %2348
  br label %.loopexit185

2352:                                             ; preds = %231, %117
  %.lcssa2463 = phi i32 [ 1, %231 ], [ 0, %117 ]
  %2353 = phi i64 [ %226, %231 ], [ %94, %117 ]
  %2354 = zext nneg i32 %.lcssa2463 to i64
  %2355 = shl nuw nsw i32 %.lcssa2463, 3
  %2356 = add nuw nsw i32 %95, %2355
  %2357 = getelementptr i8, ptr %90, i64 %2354
  br label %.loopexit185

2358:                                             ; preds = %809, %795, %781, %112
  %.lcssa2457 = phi i32 [ 3, %809 ], [ 2, %795 ], [ 1, %781 ], [ 0, %112 ]
  %2359 = phi i64 [ %804, %809 ], [ %790, %795 ], [ %776, %781 ], [ %94, %112 ]
  %2360 = zext nneg i32 %.lcssa2457 to i64
  %2361 = shl nuw nsw i32 %.lcssa2457, 3
  %2362 = add nuw nsw i32 %95, %2361
  %2363 = getelementptr i8, ptr %90, i64 %2360
  br label %.loopexit185

2364:                                             ; preds = %943, %929, %915, %898
  %.lcssa2453 = phi i32 [ 3, %943 ], [ 2, %929 ], [ 1, %915 ], [ 0, %898 ]
  %2365 = phi i64 [ %938, %943 ], [ %924, %929 ], [ %910, %915 ], [ %895, %898 ]
  %2366 = zext nneg i32 %.lcssa2453 to i64
  %2367 = shl nuw nsw i32 %.lcssa2453, 3
  %2368 = add nuw nsw i32 %899, %2367
  %2369 = getelementptr i8, ptr %90, i64 %2366
  br label %.loopexit185

.loopexit176:                                     ; preds = %1855, %1859
  %2370 = phi i64 [ %1872, %1859 ], [ %1849, %1855 ]
  %2371 = zext i32 %1848 to i64
  %2372 = shl i32 %1848, 3
  %2373 = add i32 %1850, %2372
  %2374 = getelementptr i8, ptr %1847, i64 %2371
  br label %.loopexit185

.loopexit177:                                     ; preds = %1769, %1773
  %2375 = phi i64 [ %1787, %1773 ], [ %1744, %1769 ]
  %2376 = zext i32 %1743 to i64
  %2377 = shl i32 %1743, 3
  %2378 = add i32 %1745, %2377
  %2379 = getelementptr i8, ptr %1742, i64 %2376
  br label %.loopexit185

.loopexit178:                                     ; preds = %1707, %1711
  %2380 = phi i64 [ %1725, %1711 ], [ %1692, %1707 ]
  %2381 = zext i32 %1691 to i64
  %2382 = shl i32 %1691, 3
  %2383 = add i32 %1693, %2382
  %2384 = getelementptr i8, ptr %1690, i64 %2381
  br label %.loopexit185

.loopexit180:                                     ; preds = %1629, %1633
  %2385 = phi i64 [ %1646, %1633 ], [ %1623, %1629 ]
  %2386 = zext i32 %1622 to i64
  %2387 = shl i32 %1622, 3
  %2388 = add i32 %1624, %2387
  %2389 = getelementptr i8, ptr %1621, i64 %2386
  br label %.loopexit185

.loopexit181:                                     ; preds = %1538, %1542
  %2390 = phi i64 [ %1556, %1542 ], [ %1512, %1538 ]
  %2391 = zext i32 %1511 to i64
  %2392 = shl i32 %1511, 3
  %2393 = add i32 %1513, %2392
  %2394 = getelementptr i8, ptr %1510, i64 %2391
  br label %.loopexit185

.loopexit182:                                     ; preds = %1475, %1479
  %2395 = phi i64 [ %1493, %1479 ], [ %1446, %1475 ]
  %2396 = zext i32 %1445 to i64
  %2397 = shl i32 %1445, 3
  %2398 = add i32 %1447, %2397
  %2399 = getelementptr i8, ptr %1444, i64 %2396
  br label %.loopexit185

2400:                                             ; preds = %1326
  %2401 = zext i32 %1207 to i64
  %2402 = shl i32 %1207, 3
  %2403 = add i32 %1209, %2402
  %2404 = getelementptr i8, ptr %1206, i64 %2401
  br label %.loopexit185

2405:                                             ; preds = %1245
  %2406 = zext i32 %1207 to i64
  %2407 = shl i32 %1207, 3
  %2408 = add i32 %1209, %2407
  %2409 = getelementptr i8, ptr %1206, i64 %2406
  br label %.loopexit185

2410:                                             ; preds = %1289
  %2411 = zext i32 %1207 to i64
  %2412 = shl i32 %1207, 3
  %2413 = add i32 %1209, %2412
  %2414 = getelementptr i8, ptr %1206, i64 %2411
  br label %.loopexit185

2415:                                             ; preds = %1020, %107
  %.lcssa2400 = phi i32 [ 1, %1020 ], [ 0, %107 ]
  %2416 = phi i64 [ %1015, %1020 ], [ %94, %107 ]
  %2417 = zext nneg i32 %.lcssa2400 to i64
  %2418 = shl nuw nsw i32 %.lcssa2400, 3
  %2419 = add nuw nsw i32 %95, %2418
  %2420 = getelementptr i8, ptr %90, i64 %2417
  br label %.loopexit185

2421:                                             ; preds = %2271, %2257, %2243, %2227
  %.lcssa1695 = phi i32 [ 3, %2271 ], [ 2, %2257 ], [ 1, %2243 ], [ 0, %2227 ]
  %2422 = phi i64 [ %2266, %2271 ], [ %2252, %2257 ], [ %2238, %2243 ], [ %2218, %2227 ]
  %2423 = zext nneg i32 %.lcssa1695 to i64
  %2424 = shl nuw nsw i32 %.lcssa1695, 3
  %2425 = add nuw nsw i32 %2219, %2424
  %2426 = getelementptr i8, ptr %2216, i64 %2423
  br label %.loopexit185

2427:                                             ; preds = %2133, %2119, %2105, %2089
  %.lcssa2392 = phi i32 [ 3, %2133 ], [ 2, %2119 ], [ 1, %2105 ], [ 0, %2089 ]
  %2428 = phi i64 [ %2128, %2133 ], [ %2114, %2119 ], [ %2100, %2105 ], [ %94, %2089 ]
  %2429 = zext nneg i32 %.lcssa2392 to i64
  %2430 = shl nuw nsw i32 %.lcssa2392, 3
  %2431 = add nuw nsw i32 %95, %2430
  %2432 = getelementptr i8, ptr %90, i64 %2429
  br label %.loopexit185

.loopexit185.loopexit5286:                        ; preds = %88
  br label %.loopexit185

.loopexit185:                                     ; preds = %2077, %1914, %1436, %986, %971, %852, %838, %684, %640, %620, %576, %560, %1088, %88, %.loopexit185.loopexit5286, %2427, %2421, %2415, %2410, %2405, %2400, %.loopexit182, %.loopexit181, %.loopexit180, %.loopexit178, %.loopexit177, %.loopexit176, %2364, %2358, %2352, %2346, %2340, %2334, %2328, %2322, %.loopexit, %2302, %882
  %2433 = phi i32 [ %93, %2421 ], [ %93, %2322 ], [ %93, %.loopexit ], [ %93, %1088 ], [ %93, %2427 ], [ %93, %2400 ], [ %93, %2364 ], [ %93, %.loopexit176 ], [ %93, %2352 ], [ %93, %2340 ], [ %93, %.loopexit180 ], [ %93, %2334 ], [ %93, %2302 ], [ %93, %2328 ], [ %93, %882 ], [ %93, %.loopexit182 ], [ %93, %2410 ], [ %93, %.loopexit181 ], [ %93, %.loopexit177 ], [ %93, %2415 ], [ %93, %2346 ], [ %93, %.loopexit178 ], [ %93, %2405 ], [ %93, %2358 ], [ %93, %88 ], [ %93, %852 ], [ 0, %2077 ], [ 0, %1914 ], [ %93, %1436 ], [ %93, %986 ], [ %93, %971 ], [ %93, %838 ], [ %93, %684 ], [ %93, %640 ], [ %93, %620 ], [ %93, %576 ], [ %93, %560 ], [ %93, %.loopexit185.loopexit5286 ]
  %2434 = phi ptr [ %2426, %2421 ], [ %2327, %2322 ], [ %2321, %.loopexit ], [ %1086, %1088 ], [ %2432, %2427 ], [ %2404, %2400 ], [ %2369, %2364 ], [ %2374, %.loopexit176 ], [ %2357, %2352 ], [ %2345, %2340 ], [ %2389, %.loopexit180 ], [ %2339, %2334 ], [ %2303, %2302 ], [ %2333, %2328 ], [ %873, %882 ], [ %2399, %.loopexit182 ], [ %2414, %2410 ], [ %2394, %.loopexit181 ], [ %2379, %.loopexit177 ], [ %2420, %2415 ], [ %2351, %2346 ], [ %2384, %.loopexit178 ], [ %2409, %2405 ], [ %2363, %2358 ], [ %90, %88 ], [ %844, %852 ], [ %90, %2077 ], [ %1915, %1914 ], [ %1419, %1436 ], [ %980, %986 ], [ %962, %971 ], [ %839, %838 ], [ %687, %684 ], [ %633, %640 ], [ %623, %620 ], [ %569, %576 ], [ %562, %560 ], [ %90, %.loopexit185.loopexit5286 ]
  %2435 = phi i32 [ 0, %2421 ], [ 0, %2322 ], [ 0, %.loopexit ], [ 0, %1088 ], [ 0, %2427 ], [ 0, %2400 ], [ 0, %2364 ], [ 0, %.loopexit176 ], [ 0, %2352 ], [ 0, %2340 ], [ 0, %.loopexit180 ], [ 0, %2334 ], [ %2304, %2302 ], [ 0, %2328 ], [ %874, %882 ], [ 0, %.loopexit182 ], [ 0, %2410 ], [ 0, %.loopexit181 ], [ 0, %.loopexit177 ], [ 0, %2415 ], [ 0, %2346 ], [ 0, %.loopexit178 ], [ 0, %2405 ], [ 0, %2358 ], [ %92, %88 ], [ 0, %852 ], [ %92, %2077 ], [ %1916, %1914 ], [ %1418, %1436 ], [ %981, %986 ], [ %963, %971 ], [ %840, %838 ], [ %685, %684 ], [ 0, %640 ], [ %621, %620 ], [ 0, %576 ], [ %563, %560 ], [ %92, %.loopexit185.loopexit5286 ]
  %2436 = phi i64 [ %2422, %2421 ], [ %2323, %2322 ], [ %2317, %.loopexit ], [ %1084, %1088 ], [ %2428, %2427 ], [ %1328, %2400 ], [ %2365, %2364 ], [ %2370, %.loopexit176 ], [ %2353, %2352 ], [ %2341, %2340 ], [ %2385, %.loopexit180 ], [ %2335, %2334 ], [ %2305, %2302 ], [ %2329, %2328 ], [ %884, %882 ], [ %2395, %.loopexit182 ], [ %1291, %2410 ], [ %2390, %.loopexit181 ], [ %2375, %.loopexit177 ], [ %2416, %2415 ], [ %2347, %2346 ], [ %2380, %.loopexit178 ], [ %1247, %2405 ], [ %2359, %2358 ], [ %94, %88 ], [ %846, %852 ], [ %94, %2077 ], [ %1917, %1914 ], [ %1417, %1436 ], [ %982, %986 ], [ 0, %971 ], [ %841, %838 ], [ %635, %684 ], [ %635, %640 ], [ %571, %620 ], [ %571, %576 ], [ %504, %560 ], [ %94, %.loopexit185.loopexit5286 ]
  %2437 = phi i32 [ %2425, %2421 ], [ %2326, %2322 ], [ %2320, %.loopexit ], [ %1083, %1088 ], [ %2431, %2427 ], [ %2403, %2400 ], [ %2368, %2364 ], [ %2373, %.loopexit176 ], [ %2356, %2352 ], [ %2344, %2340 ], [ %2388, %.loopexit180 ], [ %2338, %2334 ], [ %2306, %2302 ], [ %2332, %2328 ], [ %883, %882 ], [ %2398, %.loopexit182 ], [ %2413, %2410 ], [ %2393, %.loopexit181 ], [ %2378, %.loopexit177 ], [ %2419, %2415 ], [ %2350, %2346 ], [ %2383, %.loopexit178 ], [ %2408, %2405 ], [ %2362, %2358 ], [ %95, %88 ], [ %847, %852 ], [ %95, %2077 ], [ %1918, %1914 ], [ %1416, %1436 ], [ %983, %986 ], [ 0, %971 ], [ %842, %838 ], [ %636, %684 ], [ %636, %640 ], [ %572, %620 ], [ %572, %576 ], [ %505, %560 ], [ %95, %.loopexit185.loopexit5286 ]
  %2438 = phi i32 [ %2220, %2421 ], [ %96, %2322 ], [ %96, %.loopexit ], [ %96, %1088 ], [ %96, %2427 ], [ %96, %2400 ], [ %96, %2364 ], [ %96, %.loopexit176 ], [ %96, %2352 ], [ %96, %2340 ], [ %96, %.loopexit180 ], [ %96, %2334 ], [ %2220, %2302 ], [ %96, %2328 ], [ %96, %882 ], [ %96, %.loopexit182 ], [ %96, %2410 ], [ %96, %.loopexit181 ], [ %96, %.loopexit177 ], [ %96, %2415 ], [ %96, %2346 ], [ %96, %.loopexit178 ], [ %96, %2405 ], [ %96, %2358 ], [ %96, %88 ], [ %96, %560 ], [ %96, %576 ], [ %96, %620 ], [ %96, %640 ], [ %96, %684 ], [ %96, %838 ], [ %96, %852 ], [ %96, %971 ], [ %96, %986 ], [ %96, %1436 ], [ %96, %1914 ], [ %96, %2077 ], [ %96, %.loopexit185.loopexit5286 ]
  %2439 = phi i32 [ %97, %2421 ], [ %97, %2322 ], [ %1139, %.loopexit ], [ %97, %1088 ], [ %97, %2427 ], [ %1139, %2400 ], [ %97, %2364 ], [ %1851, %.loopexit176 ], [ %97, %2352 ], [ %97, %2340 ], [ %1625, %.loopexit180 ], [ %97, %2334 ], [ 1, %2302 ], [ %97, %2328 ], [ %97, %882 ], [ %1448, %.loopexit182 ], [ %1139, %2410 ], [ %1448, %.loopexit181 ], [ %1694, %.loopexit177 ], [ %97, %2415 ], [ %97, %2346 ], [ %1694, %.loopexit178 ], [ %1139, %2405 ], [ %97, %2358 ], [ 1, %88 ], [ %97, %852 ], [ %97, %2077 ], [ %1919, %1914 ], [ 0, %1436 ], [ %97, %986 ], [ %97, %971 ], [ %97, %838 ], [ %97, %684 ], [ %97, %640 ], [ %97, %620 ], [ %97, %576 ], [ %97, %560 ], [ -3, %.loopexit185.loopexit5286 ]
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %2433, ptr %41, align 8, !tbaa !52
  store ptr %2434, ptr %0, align 8, !tbaa !50
  store i32 %2435, ptr %43, align 8, !tbaa !51
  store i64 %2436, ptr %45, align 8, !tbaa !31
  store i32 %2437, ptr %47, align 8, !tbaa !32
  %2440 = load i32, ptr %79, align 4, !tbaa !38
  %2441 = icmp eq i32 %2440, 0
  br i1 %2441, label %2442, label %2451

2442:                                             ; preds = %.loopexit185
  %2443 = icmp eq i32 %2438, %2433
  br i1 %2443, label %2534, label %2444

2444:                                             ; preds = %2442
  %2445 = load i32, ptr %21, align 8, !tbaa !20
  %2446 = icmp ult i32 %2445, 16209
  br i1 %2446, label %2447, label %2534

2447:                                             ; preds = %2444
  %2448 = icmp samesign ult i32 %2445, 16206
  %2449 = icmp ne i32 %1, 4
  %2450 = or i1 %2449, %2448
  br i1 %2450, label %2451, label %2534

2451:                                             ; preds = %2447, %.loopexit185
  %2452 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2438, i32 %2433), !nosanitize !47
  %2453 = extractvalue { i32, i1 } %2452, 1, !nosanitize !47
  br i1 %2453, label %2454, label %2455, !prof !48, !nosanitize !47

2454:                                             ; preds = %2451
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2455:                                             ; preds = %2451
  %2456 = extractvalue { i32, i1 } %2452, 0, !nosanitize !47
  %2457 = load ptr, ptr %14, align 8, !tbaa !15
  %2458 = getelementptr inbounds nuw i8, ptr %2457, i64 72
  %2459 = load ptr, ptr %2458, align 8, !tbaa !41
  %2460 = icmp eq ptr %2459, null
  br i1 %2460, label %2461, label %2470

2461:                                             ; preds = %2455
  %2462 = load ptr, ptr %6, align 8, !tbaa !8
  %2463 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2464 = load ptr, ptr %2463, align 8, !tbaa !43
  %2465 = getelementptr inbounds nuw i8, ptr %2457, i64 56
  %2466 = load i32, ptr %2465, align 8, !tbaa !42
  %2467 = shl nuw i32 1, %2466
  %2468 = call ptr %2462(ptr noundef %2464, i32 noundef %2467, i32 noundef 1) #12, !inline_history !104
  store ptr %2468, ptr %2458, align 8, !tbaa !41
  %2469 = icmp eq ptr %2468, null
  br i1 %2469, label %2533, label %2470

2470:                                             ; preds = %2461, %2455
  %2471 = phi ptr [ %2468, %2461 ], [ %2459, %2455 ]
  %2472 = getelementptr inbounds nuw i8, ptr %2457, i64 60
  %2473 = load i32, ptr %2472, align 4, !tbaa !38
  %2474 = icmp eq i32 %2473, 0
  br i1 %2474, label %2475, label %2481

2475:                                             ; preds = %2470
  %2476 = getelementptr inbounds nuw i8, ptr %2457, i64 56
  %2477 = load i32, ptr %2476, align 8, !tbaa !42
  %2478 = shl nuw i32 1, %2477
  store i32 %2478, ptr %2472, align 4, !tbaa !38
  %2479 = getelementptr inbounds nuw i8, ptr %2457, i64 68
  store i32 0, ptr %2479, align 4, !tbaa !40
  %2480 = getelementptr inbounds nuw i8, ptr %2457, i64 64
  store i32 0, ptr %2480, align 8, !tbaa !39
  br label %2481

2481:                                             ; preds = %2475, %2470
  %2482 = phi i32 [ %2478, %2475 ], [ %2473, %2470 ]
  %2483 = icmp ult i32 %2456, %2482
  br i1 %2483, label %2491, label %2484

2484:                                             ; preds = %2481
  %2485 = zext i32 %2482 to i64
  %2486 = sub nsw i64 0, %2485
  %2487 = getelementptr inbounds i8, ptr %91, i64 %2486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2471, ptr noundef nonnull readonly align 1 dereferenceable(1) %2487, i64 %2485, i1 false)
  %2488 = getelementptr inbounds nuw i8, ptr %2457, i64 68
  store i32 0, ptr %2488, align 4, !tbaa !40
  %2489 = load i32, ptr %2472, align 4, !tbaa !38
  %2490 = getelementptr inbounds nuw i8, ptr %2457, i64 64
  store i32 %2489, ptr %2490, align 8, !tbaa !39
  br label %2534

2491:                                             ; preds = %2481
  %2492 = getelementptr inbounds nuw i8, ptr %2457, i64 68
  %2493 = load i32, ptr %2492, align 4, !tbaa !40
  %2494 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2482, i32 %2493), !nosanitize !47
  %2495 = extractvalue { i32, i1 } %2494, 1, !nosanitize !47
  br i1 %2495, label %2496, label %2497, !prof !48, !nosanitize !47

2496:                                             ; preds = %2491
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2497:                                             ; preds = %2491
  %2498 = extractvalue { i32, i1 } %2494, 0, !nosanitize !47
  %2499 = call i32 @llvm.umin.i32(i32 %2498, i32 %2456)
  %2500 = zext i32 %2493 to i64
  %2501 = getelementptr inbounds nuw i8, ptr %2471, i64 %2500
  %2502 = zext i32 %2456 to i64
  %2503 = sub nsw i64 0, %2502
  %2504 = getelementptr inbounds i8, ptr %91, i64 %2503
  %2505 = zext i32 %2499 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2501, ptr readonly align 1 %2504, i64 %2505, i1 false)
  %.not = icmp ugt i32 %2456, %2498
  br i1 %.not, label %2506, label %2514

2506:                                             ; preds = %2497
  %2507 = sub i32 %2456, %2499
  %2508 = load ptr, ptr %2458, align 8, !tbaa !41
  %2509 = zext i32 %2507 to i64
  %2510 = sub nsw i64 0, %2509
  %2511 = getelementptr inbounds i8, ptr %91, i64 %2510
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2508, ptr nonnull readonly align 1 %2511, i64 %2509, i1 false)
  store i32 %2507, ptr %2492, align 4, !tbaa !40
  %2512 = load i32, ptr %2472, align 4, !tbaa !38
  %2513 = getelementptr inbounds nuw i8, ptr %2457, i64 64
  store i32 %2512, ptr %2513, align 8, !tbaa !39
  br label %2534

2514:                                             ; preds = %2497
  %2515 = load i32, ptr %2492, align 4, !tbaa !40
  %2516 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2515, i32 %2499), !nosanitize !47
  %2517 = extractvalue { i32, i1 } %2516, 1, !nosanitize !47
  br i1 %2517, label %2518, label %2519, !prof !48, !nosanitize !47

2518:                                             ; preds = %2514
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2519:                                             ; preds = %2514
  %2520 = extractvalue { i32, i1 } %2516, 0, !nosanitize !47
  %2521 = load i32, ptr %2472, align 4, !tbaa !38
  %2522 = icmp eq i32 %2520, %2521
  %2523 = select i1 %2522, i32 0, i32 %2520
  store i32 %2523, ptr %2492, align 4
  %2524 = getelementptr inbounds nuw i8, ptr %2457, i64 64
  %2525 = load i32, ptr %2524, align 8, !tbaa !39
  %2526 = icmp ult i32 %2525, %2521
  br i1 %2526, label %2527, label %2534

2527:                                             ; preds = %2519
  %2528 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2525, i32 %2499), !nosanitize !47
  %2529 = extractvalue { i32, i1 } %2528, 1, !nosanitize !47
  br i1 %2529, label %2530, label %2531, !prof !48, !nosanitize !47

2530:                                             ; preds = %2527
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2531:                                             ; preds = %2527
  %2532 = extractvalue { i32, i1 } %2528, 0, !nosanitize !47
  store i32 %2532, ptr %2524, align 8, !tbaa !39
  br label %2534

2533:                                             ; preds = %2461
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %.loopexit187

2534:                                             ; preds = %2531, %2519, %2506, %2484, %2447, %2444, %2442
  %2535 = load i32, ptr %43, align 8, !tbaa !51
  %2536 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2535), !nosanitize !47
  %2537 = extractvalue { i32, i1 } %2536, 0, !nosanitize !47
  %2538 = extractvalue { i32, i1 } %2536, 1, !nosanitize !47
  br i1 %2538, label %2539, label %2540, !prof !48, !nosanitize !47

2539:                                             ; preds = %2534
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2540:                                             ; preds = %2534
  %2541 = load i32, ptr %41, align 8, !tbaa !52
  %2542 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2438, i32 %2541), !nosanitize !47
  %2543 = extractvalue { i32, i1 } %2542, 0, !nosanitize !47
  %2544 = extractvalue { i32, i1 } %2542, 1, !nosanitize !47
  br i1 %2544, label %2545, label %2546, !prof !48, !nosanitize !47

2545:                                             ; preds = %2540
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2546:                                             ; preds = %2540
  %2547 = zext i32 %2537 to i64
  %2548 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2549 = load i64, ptr %2548, align 8, !tbaa !22
  %2550 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2549, i64 %2547), !nosanitize !47
  %2551 = extractvalue { i64, i1 } %2550, 1, !nosanitize !47
  br i1 %2551, label %2552, label %2553, !prof !48, !nosanitize !47

2552:                                             ; preds = %2546
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2553:                                             ; preds = %2546
  %2554 = extractvalue { i64, i1 } %2550, 0, !nosanitize !47
  store i64 %2554, ptr %2548, align 8, !tbaa !22
  %2555 = zext i32 %2543 to i64
  %2556 = load i64, ptr %50, align 8, !tbaa !103
  %2557 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2556, i64 %2555), !nosanitize !47
  %2558 = extractvalue { i64, i1 } %2557, 1, !nosanitize !47
  br i1 %2558, label %2559, label %2560, !prof !48, !nosanitize !47

2559:                                             ; preds = %2553
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2560:                                             ; preds = %2553
  %2561 = extractvalue { i64, i1 } %2557, 0, !nosanitize !47
  store i64 %2561, ptr %50, align 8, !tbaa !103
  %2562 = load i64, ptr %51, align 8, !tbaa !21
  %2563 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2562, i64 %2555), !nosanitize !47
  %2564 = extractvalue { i64, i1 } %2563, 1, !nosanitize !47
  br i1 %2564, label %2565, label %2566, !prof !48, !nosanitize !47

2565:                                             ; preds = %2560
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2566:                                             ; preds = %2560
  %2567 = extractvalue { i64, i1 } %2563, 0, !nosanitize !47
  store i64 %2567, ptr %51, align 8, !tbaa !21
  %2568 = load i32, ptr %49, align 8, !tbaa !24
  %2569 = and i32 %2568, 4
  %2570 = icmp ne i32 %2569, 0
  %2571 = icmp ne i32 %2543, 0
  %2572 = select i1 %2570, i1 %2571, i1 false
  br i1 %2572, label %2573, label %2586

2573:                                             ; preds = %2566
  %2574 = load i32, ptr %52, align 8, !tbaa !28
  %2575 = icmp eq i32 %2574, 0
  %2576 = load i64, ptr %53, align 8, !tbaa !54
  %2577 = load ptr, ptr %26, align 8, !tbaa !49
  %2578 = sub nsw i64 0, %2555
  %2579 = getelementptr inbounds i8, ptr %2577, i64 %2578
  br i1 %2575, label %2582, label %2580

2580:                                             ; preds = %2573
  %2581 = call i64 @crc32(i64 noundef %2576, ptr noundef nonnull %2579, i32 noundef %2543) #12
  br label %2584

2582:                                             ; preds = %2573
  %2583 = call i64 @adler32(i64 noundef %2576, ptr noundef nonnull %2579, i32 noundef %2543) #12
  br label %2584

2584:                                             ; preds = %2582, %2580
  %2585 = phi i64 [ %2581, %2580 ], [ %2583, %2582 ]
  store i64 %2585, ptr %53, align 8, !tbaa !54
  store i64 %2585, ptr %54, align 8, !tbaa !25
  br label %2586

2586:                                             ; preds = %2584, %2566
  %2587 = load i32, ptr %47, align 8, !tbaa !32
  %2588 = load i32, ptr %83, align 4, !tbaa !26
  %2589 = icmp eq i32 %2588, 0
  %2590 = select i1 %2589, i32 0, i32 64
  %2591 = add nsw i32 %2590, %2587
  %2592 = load i32, ptr %21, align 8, !tbaa !20
  %2593 = icmp eq i32 %2592, 16191
  %2594 = select i1 %2593, i32 128, i32 0
  %2595 = add nsw i32 %2591, %2594
  %2596 = icmp eq i32 %2592, 16199
  %2597 = icmp eq i32 %2592, 16194
  %2598 = or i1 %2596, %2597
  %2599 = select i1 %2598, i32 256, i32 0
  %2600 = add nsw i32 %2595, %2599
  %2601 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2600, ptr %2601, align 8, !tbaa !23
  %2602 = icmp eq i32 %2537, 0
  %2603 = icmp eq i32 %2543, 0
  %2604 = select i1 %2602, i1 %2603, i1 false
  %2605 = icmp eq i32 %1, 4
  %2606 = or i1 %2605, %2604
  %2607 = icmp eq i32 %2439, 0
  %2608 = select i1 %2606, i1 %2607, i1 false
  %2609 = select i1 %2608, i32 -5, i32 %2439
  br label %.loopexit187

.loopexit187.loopexit:                            ; preds = %88
  br label %.loopexit187

.loopexit187:                                     ; preds = %88, %.loopexit187.loopexit, %2586, %2533, %835, %32, %25, %20, %17, %13, %9, %5, %2
  %2610 = phi i32 [ -2, %20 ], [ -2, %.loopexit187.loopexit ], [ -4, %2533 ], [ %2609, %2586 ], [ 2, %835 ], [ -2, %32 ], [ -2, %25 ], [ -2, %17 ], [ -2, %13 ], [ -2, %2 ], [ -2, %9 ], [ -2, %5 ], [ -4, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %2610
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
  br i1 %4, label %119, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %119, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %119, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %119, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %119

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %119

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %27 = load i32, ptr %26, align 8, !tbaa !24
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %22, 16190
  br i1 %28, label %31, label %30

30:                                               ; preds = %25
  br i1 %29, label %32, label %119

31:                                               ; preds = %25
  br i1 %29, label %32, label %40

32:                                               ; preds = %31, %30
  %33 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %34 = tail call i64 @adler32(i64 noundef %33, ptr noundef %1, i32 noundef %2) #12
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %36 = load i64, ptr %35, align 8, !tbaa !54
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %119

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
  br i1 %55, label %116, label %56

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
  br label %117

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
  %.not = icmp ugt i32 %2, %84
  br i1 %.not, label %89, label %97

89:                                               ; preds = %83
  %90 = sub i32 %2, %85
  %91 = load ptr, ptr %44, align 8, !tbaa !41
  %92 = zext i32 %90 to i64
  %93 = sub nsw i64 0, %92
  %94 = getelementptr inbounds i8, ptr %43, i64 %93
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr nonnull readonly align 1 %94, i64 %92, i1 false)
  store i32 %90, ptr %78, align 4, !tbaa !40
  %95 = load i32, ptr %58, align 4, !tbaa !38
  %96 = getelementptr inbounds nuw i8, ptr %41, i64 64
  store i32 %95, ptr %96, align 8, !tbaa !39
  br label %117

97:                                               ; preds = %83
  %98 = load i32, ptr %78, align 4, !tbaa !40
  %99 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %98, i32 %85), !nosanitize !47
  %100 = extractvalue { i32, i1 } %99, 1, !nosanitize !47
  br i1 %100, label %101, label %102, !prof !48, !nosanitize !47

101:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

102:                                              ; preds = %97
  %103 = extractvalue { i32, i1 } %99, 0, !nosanitize !47
  %104 = load i32, ptr %58, align 4, !tbaa !38
  %105 = icmp eq i32 %103, %104
  %106 = select i1 %105, i32 0, i32 %103
  store i32 %106, ptr %78, align 4
  %107 = getelementptr inbounds nuw i8, ptr %41, i64 64
  %108 = load i32, ptr %107, align 8, !tbaa !39
  %109 = icmp ult i32 %108, %104
  br i1 %109, label %110, label %117

110:                                              ; preds = %102
  %111 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %108, i32 %85), !nosanitize !47
  %112 = extractvalue { i32, i1 } %111, 1, !nosanitize !47
  br i1 %112, label %113, label %114, !prof !48, !nosanitize !47

113:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

114:                                              ; preds = %110
  %115 = extractvalue { i32, i1 } %111, 0, !nosanitize !47
  store i32 %115, ptr %107, align 8, !tbaa !39
  br label %117

116:                                              ; preds = %47
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %119

117:                                              ; preds = %114, %102, %89, %70
  %118 = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 1, ptr %118, align 4, !tbaa !27
  br label %119

119:                                              ; preds = %117, %116, %32, %30, %20, %17, %13, %9, %5, %3
  %120 = phi i32 [ 0, %117 ], [ -2, %20 ], [ -2, %30 ], [ -4, %116 ], [ -3, %32 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %120
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
define dso_local range(i32 -5, 1) i32 @inflateSync(ptr noundef captures(address) %0) local_unnamed_addr #5 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %3 = icmp eq ptr %0, null
  br i1 %3, label %204, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %204, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %204, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %204, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %204

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %204

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %30 = load i32, ptr %29, align 8, !tbaa !32
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %204, label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq i32 %21, 16211
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %36 = load i32, ptr %35, align 4, !tbaa !4
  br label %119

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
  %45 = and i32 %39, -8
  %46 = icmp ugt i32 %39, 7
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  store i32 %45, ptr %38, align 8, !tbaa !32
  br label %.loopexit

48:                                               ; preds = %37
  %49 = add i32 %45, -8
  %50 = lshr exact i32 %49, 3
  %51 = add nuw nsw i32 %50, 1
  %52 = zext nneg i32 %51 to i64
  %53 = and i64 %52, 3
  %54 = icmp ult i32 %49, 24
  br i1 %54, label %83, label %55

55:                                               ; preds = %48
  %56 = and i64 %52, 1073741820
  %57 = add nsw i64 %52, -4
  %58 = lshr i64 %57, 2
  %59 = add nuw nsw i64 %58, 1
  %xtraiter = and i64 %59, 3
  %60 = icmp ult i64 %57, 12
  br i1 %60, label %.epil.preheader, label %.new

.new:                                             ; preds = %55
  %unroll_iter = and i64 %59, 9223372036854775804
  br label %61

61:                                               ; preds = %61, %.new
  %62 = phi i64 [ %44, %.new ], [ 0, %61 ]
  %63 = phi i64 [ 0, %.new ], [ %74, %61 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %61 ]
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %65 = trunc i64 %62 to i32
  store i32 %65, ptr %64, align 1
  %66 = lshr i64 %62, 32
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 4
  %69 = trunc nuw i64 %66 to i32
  store i32 %69, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i32 0, ptr %71, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 12
  store i32 0, ptr %73, align 1
  %74 = add nuw i64 %63, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %61, !llvm.loop !105

.unr-lcssa:                                       ; preds = %61
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %55
  %.epil.init = phi i64 [ %44, %55 ], [ 0, %.unr-lcssa ]
  %.epil.init35 = phi i64 [ 0, %55 ], [ %74, %.unr-lcssa ]
  %lcmp.mod37 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %75

75:                                               ; preds = %75, %.epil.preheader
  %76 = phi i64 [ %.epil.init, %.epil.preheader ], [ %81, %75 ]
  %77 = phi i64 [ %.epil.init35, %.epil.preheader ], [ %80, %75 ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %75 ]
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %77
  %79 = trunc i64 %76 to i32
  store i32 %79, ptr %78, align 1
  %80 = add nuw i64 %77, 4
  %81 = lshr i64 %76, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %75, !llvm.loop !106

.epilog-lcssa:                                    ; preds = %75, %.unr-lcssa
  %.lcssa33 = phi i64 [ 0, %.unr-lcssa ], [ %81, %75 ]
  %82 = icmp eq i64 %53, 0
  br i1 %82, label %.loopexit6, label %83

83:                                               ; preds = %.epilog-lcssa, %48
  %84 = phi i64 [ %44, %48 ], [ %.lcssa33, %.epilog-lcssa ]
  %85 = phi i64 [ 0, %48 ], [ %56, %.epilog-lcssa ]
  %86 = icmp ne i64 %53, 0
  tail call void @llvm.assume(i1 %86)
  br label %87

87:                                               ; preds = %87, %83
  %88 = phi i64 [ %84, %83 ], [ %94, %87 ]
  %89 = phi i64 [ %85, %83 ], [ %91, %87 ]
  %90 = phi i64 [ 0, %83 ], [ %95, %87 ]
  %91 = add nuw nsw i64 %89, 1
  %92 = trunc i64 %88 to i8
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 %89
  store i8 %92, ptr %93, align 1, !tbaa !44
  %94 = lshr i64 %88, 8
  %95 = add nuw nsw i64 %90, 1
  %96 = icmp eq i64 %95, %53
  br i1 %96, label %.loopexit6, label %87, !llvm.loop !107

.loopexit6:                                       ; preds = %87, %.epilog-lcssa
  %97 = phi i64 [ %.lcssa33, %.epilog-lcssa ], [ %94, %87 ]
  store i64 %97, ptr %41, align 8, !tbaa !31
  store i32 0, ptr %38, align 8, !tbaa !32
  br label %98

98:                                               ; preds = %98, %.loopexit6
  %99 = phi i64 [ 0, %.loopexit6 ], [ %101, %98 ]
  %100 = phi i32 [ 0, %.loopexit6 ], [ %112, %98 ]
  %101 = add nuw nsw i64 %99, 1
  %102 = icmp samesign ult i32 %100, 2
  %103 = select i1 %102, i32 0, i32 255
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 %99
  %105 = load i8, ptr %104, align 1, !tbaa !44
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %103, %106
  %108 = add nuw nsw i32 %100, 1
  %109 = icmp eq i8 %105, 0
  %110 = sub nuw nsw i32 4, %100
  %111 = select i1 %109, i32 %110, i32 0
  %112 = select i1 %107, i32 %108, i32 %111
  %113 = icmp samesign ult i64 %101, %52
  %114 = icmp samesign ult i32 %112, 4
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %98, label %.loopexit, !llvm.loop !108

.loopexit:                                        ; preds = %98, %47
  %116 = phi i32 [ 0, %47 ], [ %112, %98 ]
  %117 = getelementptr inbounds nuw i8, ptr %14, i64 140
  store i32 %116, ptr %117, align 4, !tbaa !4
  %118 = load i32, ptr %25, align 8, !tbaa !51
  br label %119

119:                                              ; preds = %.loopexit, %34
  %120 = phi i32 [ %116, %.loopexit ], [ %36, %34 ]
  %121 = phi i32 [ %118, %.loopexit ], [ %26, %34 ]
  %122 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %123 = load ptr, ptr %0, align 8, !tbaa !50
  %124 = icmp ne i32 %121, 0
  %125 = icmp ult i32 %120, 4
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %127, label %149

127:                                              ; preds = %119
  %128 = zext i32 %121 to i64
  br label %129

129:                                              ; preds = %129, %127
  %130 = phi i64 [ 0, %127 ], [ %132, %129 ]
  %131 = phi i32 [ %120, %127 ], [ %143, %129 ]
  %132 = add nuw nsw i64 %130, 1
  %133 = icmp samesign ult i32 %131, 2
  %134 = select i1 %133, i32 0, i32 255
  %135 = getelementptr inbounds nuw i8, ptr %123, i64 %130
  %136 = load i8, ptr %135, align 1, !tbaa !44
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %134, %137
  %139 = add nuw nsw i32 %131, 1
  %140 = icmp eq i8 %136, 0
  %141 = sub nuw nsw i32 4, %131
  %142 = select i1 %140, i32 %141, i32 0
  %143 = select i1 %138, i32 %139, i32 %142
  %144 = icmp samesign ult i64 %132, %128
  %145 = icmp samesign ult i32 %143, 4
  %146 = select i1 %144, i1 %145, i1 false
  br i1 %146, label %129, label %147, !llvm.loop !108

147:                                              ; preds = %129
  %148 = trunc nuw i64 %132 to i32
  br label %149

149:                                              ; preds = %147, %119
  %150 = phi i32 [ %120, %119 ], [ %143, %147 ]
  %151 = phi i32 [ 0, %119 ], [ %148, %147 ]
  store i32 %150, ptr %122, align 4, !tbaa !4
  %152 = load i32, ptr %25, align 8, !tbaa !51
  %153 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %152, i32 %151), !nosanitize !47
  %154 = extractvalue { i32, i1 } %153, 1, !nosanitize !47
  br i1 %154, label %155, label %156, !prof !48, !nosanitize !47

155:                                              ; preds = %149
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

156:                                              ; preds = %149
  %157 = extractvalue { i32, i1 } %153, 0, !nosanitize !47
  store i32 %157, ptr %25, align 8, !tbaa !51
  %158 = zext i32 %151 to i64
  %159 = getelementptr inbounds nuw i8, ptr %123, i64 %158
  store ptr %159, ptr %0, align 8, !tbaa !50
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %161 = load i64, ptr %160, align 8, !tbaa !22
  %162 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %161, i64 %158), !nosanitize !47
  %163 = extractvalue { i64, i1 } %162, 1, !nosanitize !47
  br i1 %163, label %164, label %165, !prof !48, !nosanitize !47

164:                                              ; preds = %156
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

165:                                              ; preds = %156
  %166 = extractvalue { i64, i1 } %162, 0, !nosanitize !47
  store i64 %166, ptr %160, align 8, !tbaa !22
  %167 = icmp eq i32 %150, 4
  br i1 %167, label %168, label %204

168:                                              ; preds = %165
  %169 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %170 = load i32, ptr %169, align 8, !tbaa !28
  %171 = icmp eq i32 %170, -1
  %172 = getelementptr inbounds nuw i8, ptr %14, i64 16
  br i1 %171, label %176, label %173

173:                                              ; preds = %168
  %174 = load i32, ptr %172, align 8, !tbaa !24
  %175 = and i32 %174, -5
  br label %176

176:                                              ; preds = %173, %168
  %177 = phi i32 [ %175, %173 ], [ 0, %168 ]
  store i32 %177, ptr %172, align 8, !tbaa !24
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %179 = load i64, ptr %178, align 8, !tbaa !103
  %180 = getelementptr inbounds nuw i8, ptr %14, i64 60
  store i32 0, ptr %180, align 4, !tbaa !38
  %181 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 0, ptr %181, align 8, !tbaa !39
  %182 = getelementptr inbounds nuw i8, ptr %14, i64 68
  store i32 0, ptr %182, align 4, !tbaa !40
  %183 = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %183, align 8, !tbaa !21
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %184, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %178, i8 0, i64 16, i1 false)
  %185 = load i32, ptr %172, align 8, !tbaa !24
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %176
  %188 = and i32 %185, 1
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %189, ptr %190, align 8, !tbaa !25
  br label %191

191:                                              ; preds = %187, %176
  %192 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 0, ptr %192, align 4, !tbaa !26
  %193 = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %193, align 4, !tbaa !27
  %194 = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 32768, ptr %194, align 4, !tbaa !29
  %195 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr null, ptr %195, align 8, !tbaa !30
  %196 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store i64 0, ptr %196, align 8, !tbaa !31
  %197 = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i32 0, ptr %197, align 8, !tbaa !32
  %198 = getelementptr inbounds nuw i8, ptr %14, i64 1368
  %199 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store ptr %198, ptr %199, align 8, !tbaa !33
  %200 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store ptr %198, ptr %200, align 8, !tbaa !34
  %201 = getelementptr inbounds nuw i8, ptr %14, i64 104
  store ptr %198, ptr %201, align 8, !tbaa !35
  %202 = getelementptr inbounds nuw i8, ptr %14, i64 7144
  store i32 1, ptr %202, align 8, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %14, i64 7148
  store i32 -1, ptr %203, align 4, !tbaa !37
  store i64 %166, ptr %160, align 8, !tbaa !22
  store i64 %179, ptr %178, align 8, !tbaa !103
  store i32 %170, ptr %169, align 8, !tbaa !28
  store i32 16191, ptr %20, align 8, !tbaa !20
  br label %204

204:                                              ; preds = %191, %165, %28, %19, %16, %12, %8, %4, %1
  %205 = phi i32 [ 0, %191 ], [ -2, %19 ], [ -5, %28 ], [ -3, %165 ], [ -2, %12 ], [ -2, %1 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %205
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
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %.sink.split, label %30

.sink.split:                                      ; preds = %19
  %24 = icmp eq i32 %1, 0
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %26 = load i32, ptr %25, align 8, !tbaa !24
  %27 = icmp eq i32 %26, 0
  %28 = or i32 %26, 4
  %spec.select = select i1 %27, i32 0, i32 %28
  %29 = and i32 %26, -5
  %.sink = select i1 %24, i32 %29, i32 %spec.select
  store i32 %.sink, ptr %25, align 8, !tbaa !24
  br label %30

30:                                               ; preds = %.sink.split, %19, %16, %12, %8, %4, %2
  %31 = phi i32 [ -2, %19 ], [ -2, %4 ], [ -2, %16 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ 0, %.sink.split ]
  ret i32 %31
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

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
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!107 = distinct !{!107, !101}
!108 = distinct !{!108, !68}
