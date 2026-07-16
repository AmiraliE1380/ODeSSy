; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.inflate.or.ll'
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

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

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

88:                                               ; preds = %2330, %39
  %89 = phi i32 [ %40, %39 ], [ %2339, %2330 ]
  %90 = phi ptr [ %30, %39 ], [ %2331, %2330 ]
  %91 = phi ptr [ %27, %39 ], [ %2332, %2330 ]
  %92 = phi i32 [ %44, %39 ], [ %2333, %2330 ]
  %93 = phi i32 [ %42, %39 ], [ %2334, %2330 ]
  %94 = phi i64 [ %46, %39 ], [ %2335, %2330 ]
  %95 = phi i32 [ %48, %39 ], [ %2336, %2330 ]
  %96 = phi i32 [ %42, %39 ], [ %2337, %2330 ]
  %97 = phi i32 [ 0, %39 ], [ %2338, %2330 ]
  %98 = ptrtoaddr ptr %91 to i64
  switch i32 %89, label %.loopexit187.loopexit [
    i32 16180, label %120
    i32 16181, label %115
    i32 16182, label %281
    i32 16183, label %364
    i32 16184, label %423
    i32 16185, label %501
    i32 16186, label %576
    i32 16187, label %640
    i32 16188, label %704
    i32 16189, label %110
    i32 16190, label %836
    i32 16191, label %846
    i32 16192, label %851
    i32 16193, label %900
    i32 16194, label %982
    i32 16195, label %987
    i32 16196, label %105
    i32 16197, label %1072
    i32 16198, label %1146
    i32 16199, label %1449
    i32 16200, label %1455
    i32 16201, label %101
    i32 16202, label %1701
    i32 16203, label %99
    i32 16204, label %1933
    i32 16205, label %2100
    i32 16206, label %2107
    i32 16207, label %103
    i32 16208, label %.loopexit185
    i32 16209, label %.loopexit185.loopexit5487
    i32 16210, label %.loopexit187
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !53
  br label %1864

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !53
  br label %1631

103:                                              ; preds = %88
  %104 = load i32, ptr %49, align 8, !tbaa !24
  br label %2237

105:                                              ; preds = %88
  %106 = icmp ult i32 %95, 14
  br i1 %106, label %107, label %1051

107:                                              ; preds = %105
  %108 = zext nneg i32 %95 to i64
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %2438, label %1019

110:                                              ; preds = %88
  %111 = icmp ult i32 %95, 32
  br i1 %111, label %112, label %829

112:                                              ; preds = %110
  %113 = zext nneg i32 %95 to i64
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %2381, label %776

115:                                              ; preds = %88
  %116 = icmp ult i32 %95, 16
  br i1 %116, label %117, label %250

117:                                              ; preds = %115
  %118 = zext nneg i32 %95 to i64
  %119 = icmp eq i32 %92, 0
  br i1 %119, label %2375, label %218

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
  br i1 %127, label %2345, label %129

128:                                              ; preds = %120
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2330

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
  br i1 %143, label %2345, label %144

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
  br label %2330

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
  br label %2330

193:                                              ; preds = %185
  %194 = and i64 %164, 15
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

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
  br label %2330

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
  br label %2330

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
  br i1 %232, label %2375, label %233

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
  br label %2330

259:                                              ; preds = %250
  %260 = and i32 %255, 57344
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

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
  br i1 %289, label %2369, label %290

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
  br i1 %304, label %2369, label %305

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
  br i1 %318, label %2369, label %319

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
  br i1 %332, label %2369, label %333

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
  br i1 %372, label %2363, label %373

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
  br i1 %387, label %2363, label %388

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
  br i1 %440, label %2357, label %441

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
  br i1 %455, label %2357, label %456

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
  br i1 %508, label %573, label %509

509:                                              ; preds = %501
  %510 = load i32, ptr %56, align 4, !tbaa !61
  %511 = call i32 @llvm.umin.i32(i32 %510, i32 %503)
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %568, label %513

513:                                              ; preds = %509
  %514 = load ptr, ptr %84, align 8, !tbaa !30
  %515 = icmp eq ptr %514, null
  br i1 %515, label %543, label %516

516:                                              ; preds = %513
  %517 = getelementptr inbounds nuw i8, ptr %514, i64 24
  %518 = load ptr, ptr %517, align 8, !tbaa !63
  %519 = icmp eq ptr %518, null
  br i1 %519, label %543, label %520

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
  br i1 %530, label %531, label %543

531:                                              ; preds = %527
  %532 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %524, i32 %511), !nosanitize !47
  %533 = extractvalue { i32, i1 } %532, 1, !nosanitize !47
  br i1 %533, label %534, label %535, !prof !48, !nosanitize !47

534:                                              ; preds = %531
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

535:                                              ; preds = %531
  %536 = zext i32 %524 to i64
  %537 = getelementptr inbounds nuw i8, ptr %518, i64 %536
  %538 = extractvalue { i32, i1 } %532, 0, !nosanitize !47
  %539 = icmp ugt i32 %538, %529
  %540 = sub i32 %529, %524
  %spec.select = select i1 %539, i32 %540, i32 %511
  %541 = zext i32 %spec.select to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %537, ptr align 1 %502, i64 %541, i1 false)
  %542 = load i32, ptr %52, align 8, !tbaa !28
  br label %543

543:                                              ; preds = %535, %527, %516, %513
  %544 = phi i32 [ %542, %535 ], [ %506, %527 ], [ %506, %516 ], [ %506, %513 ]
  %545 = and i32 %544, 512
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %554, label %547

547:                                              ; preds = %543
  %548 = load i32, ptr %49, align 8, !tbaa !24
  %549 = and i32 %548, 4
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %554, label %551

551:                                              ; preds = %547
  %552 = load i64, ptr %53, align 8, !tbaa !54
  %553 = call i64 @crc32(i64 noundef %552, ptr noundef %502, i32 noundef %511) #12
  store i64 %553, ptr %53, align 8, !tbaa !54
  br label %554

554:                                              ; preds = %551, %547, %543
  %555 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %511), !nosanitize !47
  %556 = extractvalue { i32, i1 } %555, 0, !nosanitize !47
  %557 = extractvalue { i32, i1 } %555, 1, !nosanitize !47
  br i1 %557, label %558, label %559, !prof !48, !nosanitize !47

558:                                              ; preds = %554
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

559:                                              ; preds = %554
  %560 = load i32, ptr %56, align 4, !tbaa !61
  %561 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %560, i32 %511), !nosanitize !47
  %562 = extractvalue { i32, i1 } %561, 1, !nosanitize !47
  br i1 %562, label %563, label %564, !prof !48, !nosanitize !47

563:                                              ; preds = %559
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

564:                                              ; preds = %559
  %565 = extractvalue { i32, i1 } %561, 0, !nosanitize !47
  %566 = zext i32 %511 to i64
  %567 = getelementptr inbounds nuw i8, ptr %502, i64 %566
  store i32 %565, ptr %56, align 4, !tbaa !61
  br label %568

568:                                              ; preds = %564, %509
  %569 = phi i32 [ %565, %564 ], [ %510, %509 ]
  %570 = phi ptr [ %567, %564 ], [ %502, %509 ]
  %571 = phi i32 [ %556, %564 ], [ %503, %509 ]
  %572 = icmp eq i32 %569, 0
  br i1 %572, label %573, label %.loopexit185

573:                                              ; preds = %568, %501
  %574 = phi ptr [ %570, %568 ], [ %502, %501 ]
  %575 = phi i32 [ %571, %568 ], [ %503, %501 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16186, ptr %21, align 8, !tbaa !20
  br label %576

576:                                              ; preds = %573, %88
  %577 = phi ptr [ %574, %573 ], [ %90, %88 ]
  %578 = phi i32 [ %575, %573 ], [ %92, %88 ]
  %579 = phi i64 [ %504, %573 ], [ %94, %88 ]
  %580 = phi i32 [ %505, %573 ], [ %95, %88 ]
  %581 = load i32, ptr %52, align 8, !tbaa !28
  %582 = and i32 %581, 2048
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %632, label %584

584:                                              ; preds = %576
  %585 = icmp eq i32 %578, 0
  br i1 %585, label %.loopexit185, label %586

586:                                              ; preds = %584
  %587 = zext i32 %578 to i64
  br label %588

588:                                              ; preds = %608, %586
  %589 = phi i64 [ 0, %586 ], [ %590, %608 ]
  %590 = add nuw nsw i64 %589, 1
  %591 = getelementptr inbounds nuw i8, ptr %577, i64 %589
  %592 = load i8, ptr %591, align 1, !tbaa !44
  %593 = load ptr, ptr %84, align 8, !tbaa !30
  %594 = icmp eq ptr %593, null
  br i1 %594, label %608, label %595

595:                                              ; preds = %588
  %596 = getelementptr inbounds nuw i8, ptr %593, i64 40
  %597 = load ptr, ptr %596, align 8, !tbaa !65
  %598 = icmp eq ptr %597, null
  br i1 %598, label %608, label %599

599:                                              ; preds = %595
  %600 = load i32, ptr %56, align 4, !tbaa !61
  %601 = getelementptr inbounds nuw i8, ptr %593, i64 48
  %602 = load i32, ptr %601, align 8, !tbaa !66
  %603 = icmp ult i32 %600, %602
  br i1 %603, label %604, label %608

604:                                              ; preds = %599
  %605 = add nuw i32 %600, 1
  store i32 %605, ptr %56, align 4, !tbaa !61
  %606 = zext i32 %600 to i64
  %607 = getelementptr inbounds nuw i8, ptr %597, i64 %606
  store i8 %592, ptr %607, align 1, !tbaa !44
  br label %608

608:                                              ; preds = %604, %599, %595, %588
  %609 = icmp ne i8 %592, 0
  %610 = icmp samesign ult i64 %590, %587
  %611 = select i1 %609, i1 %610, i1 false
  br i1 %611, label %588, label %612, !llvm.loop !67

612:                                              ; preds = %608
  %613 = trunc nuw i64 %590 to i32
  %614 = load i32, ptr %52, align 8, !tbaa !28
  %615 = and i32 %614, 512
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %624, label %617

617:                                              ; preds = %612
  %618 = load i32, ptr %49, align 8, !tbaa !24
  %619 = and i32 %618, 4
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %624, label %621

621:                                              ; preds = %617
  %622 = load i64, ptr %53, align 8, !tbaa !54
  %623 = call i64 @crc32(i64 noundef %622, ptr noundef nonnull %577, i32 noundef %613) #12
  store i64 %623, ptr %53, align 8, !tbaa !54
  br label %624

624:                                              ; preds = %621, %617, %612
  %625 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %578, i32 %613), !nosanitize !47
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !47
  br i1 %626, label %627, label %628, !prof !48, !nosanitize !47

627:                                              ; preds = %624
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

628:                                              ; preds = %624
  %629 = extractvalue { i32, i1 } %625, 0, !nosanitize !47
  %630 = and i64 %590, 4294967295
  %631 = getelementptr inbounds nuw i8, ptr %577, i64 %630
  br i1 %609, label %.loopexit185, label %637

632:                                              ; preds = %576
  %633 = load ptr, ptr %84, align 8, !tbaa !30
  %634 = icmp eq ptr %633, null
  br i1 %634, label %637, label %635

635:                                              ; preds = %632
  %636 = getelementptr inbounds nuw i8, ptr %633, i64 40
  store ptr null, ptr %636, align 8, !tbaa !65
  br label %637

637:                                              ; preds = %635, %632, %628
  %638 = phi ptr [ %631, %628 ], [ %577, %635 ], [ %577, %632 ]
  %639 = phi i32 [ %629, %628 ], [ %578, %635 ], [ %578, %632 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16187, ptr %21, align 8, !tbaa !20
  br label %640

640:                                              ; preds = %637, %88
  %641 = phi ptr [ %638, %637 ], [ %90, %88 ]
  %642 = phi i32 [ %639, %637 ], [ %92, %88 ]
  %643 = phi i64 [ %579, %637 ], [ %94, %88 ]
  %644 = phi i32 [ %580, %637 ], [ %95, %88 ]
  %645 = load i32, ptr %52, align 8, !tbaa !28
  %646 = and i32 %645, 4096
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %696, label %648

648:                                              ; preds = %640
  %649 = icmp eq i32 %642, 0
  br i1 %649, label %.loopexit185, label %650

650:                                              ; preds = %648
  %651 = zext i32 %642 to i64
  br label %652

652:                                              ; preds = %672, %650
  %653 = phi i64 [ 0, %650 ], [ %654, %672 ]
  %654 = add nuw nsw i64 %653, 1
  %655 = getelementptr inbounds nuw i8, ptr %641, i64 %653
  %656 = load i8, ptr %655, align 1, !tbaa !44
  %657 = load ptr, ptr %84, align 8, !tbaa !30
  %658 = icmp eq ptr %657, null
  br i1 %658, label %672, label %659

659:                                              ; preds = %652
  %660 = getelementptr inbounds nuw i8, ptr %657, i64 56
  %661 = load ptr, ptr %660, align 8, !tbaa !69
  %662 = icmp eq ptr %661, null
  br i1 %662, label %672, label %663

663:                                              ; preds = %659
  %664 = load i32, ptr %56, align 4, !tbaa !61
  %665 = getelementptr inbounds nuw i8, ptr %657, i64 64
  %666 = load i32, ptr %665, align 8, !tbaa !70
  %667 = icmp ult i32 %664, %666
  br i1 %667, label %668, label %672

668:                                              ; preds = %663
  %669 = add nuw i32 %664, 1
  store i32 %669, ptr %56, align 4, !tbaa !61
  %670 = zext i32 %664 to i64
  %671 = getelementptr inbounds nuw i8, ptr %661, i64 %670
  store i8 %656, ptr %671, align 1, !tbaa !44
  br label %672

672:                                              ; preds = %668, %663, %659, %652
  %673 = icmp ne i8 %656, 0
  %674 = icmp samesign ult i64 %654, %651
  %675 = select i1 %673, i1 %674, i1 false
  br i1 %675, label %652, label %676, !llvm.loop !71

676:                                              ; preds = %672
  %677 = trunc nuw i64 %654 to i32
  %678 = load i32, ptr %52, align 8, !tbaa !28
  %679 = and i32 %678, 512
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %688, label %681

681:                                              ; preds = %676
  %682 = load i32, ptr %49, align 8, !tbaa !24
  %683 = and i32 %682, 4
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %688, label %685

685:                                              ; preds = %681
  %686 = load i64, ptr %53, align 8, !tbaa !54
  %687 = call i64 @crc32(i64 noundef %686, ptr noundef nonnull %641, i32 noundef %677) #12
  store i64 %687, ptr %53, align 8, !tbaa !54
  br label %688

688:                                              ; preds = %685, %681, %676
  %689 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %642, i32 %677), !nosanitize !47
  %690 = extractvalue { i32, i1 } %689, 1, !nosanitize !47
  br i1 %690, label %691, label %692, !prof !48, !nosanitize !47

691:                                              ; preds = %688
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

692:                                              ; preds = %688
  %693 = extractvalue { i32, i1 } %689, 0, !nosanitize !47
  %694 = and i64 %654, 4294967295
  %695 = getelementptr inbounds nuw i8, ptr %641, i64 %694
  br i1 %673, label %.loopexit185, label %701

696:                                              ; preds = %640
  %697 = load ptr, ptr %84, align 8, !tbaa !30
  %698 = icmp eq ptr %697, null
  br i1 %698, label %701, label %699

699:                                              ; preds = %696
  %700 = getelementptr inbounds nuw i8, ptr %697, i64 56
  store ptr null, ptr %700, align 8, !tbaa !69
  br label %701

701:                                              ; preds = %699, %696, %692
  %702 = phi ptr [ %695, %692 ], [ %641, %699 ], [ %641, %696 ]
  %703 = phi i32 [ %693, %692 ], [ %642, %699 ], [ %642, %696 ]
  store i32 16188, ptr %21, align 8, !tbaa !20
  br label %704

704:                                              ; preds = %701, %88
  %705 = phi ptr [ %702, %701 ], [ %90, %88 ]
  %706 = phi i32 [ %703, %701 ], [ %92, %88 ]
  %707 = phi i64 [ %643, %701 ], [ %94, %88 ]
  %708 = phi i32 [ %644, %701 ], [ %95, %88 ]
  %709 = load i32, ptr %52, align 8, !tbaa !28
  %710 = and i32 %709, 512
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %762, label %712

712:                                              ; preds = %704
  %713 = icmp ult i32 %708, 16
  br i1 %713, label %714, label %749

714:                                              ; preds = %712
  %715 = zext nneg i32 %708 to i64
  %716 = icmp eq i32 %706, 0
  br i1 %716, label %2351, label %717

717:                                              ; preds = %714
  %718 = load i8, ptr %705, align 1, !tbaa !44
  %719 = zext i8 %718 to i64
  %720 = shl nuw nsw i64 %719, %715
  %721 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %707, i64 %720), !nosanitize !47
  %722 = extractvalue { i64, i1 } %721, 1, !nosanitize !47
  br i1 %722, label %723, label %724, !prof !48, !nosanitize !47

723:                                              ; preds = %732, %717
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

724:                                              ; preds = %717
  %725 = extractvalue { i64, i1 } %721, 0, !nosanitize !47
  %726 = getelementptr inbounds nuw i8, ptr %705, i64 1
  %727 = add i32 %706, -1
  %728 = add nuw nsw i64 %715, 8
  %729 = icmp samesign ult i32 %708, 8
  br i1 %729, label %730, label %743

730:                                              ; preds = %724
  %731 = icmp eq i32 %727, 0
  br i1 %731, label %2351, label %732

732:                                              ; preds = %730
  %733 = load i8, ptr %726, align 1, !tbaa !44
  %734 = zext i8 %733 to i64
  %735 = shl nuw nsw i64 %734, %728
  %736 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %725, i64 %735), !nosanitize !47
  %737 = extractvalue { i64, i1 } %736, 1, !nosanitize !47
  br i1 %737, label %723, label %738, !prof !48, !nosanitize !47

738:                                              ; preds = %732
  %739 = extractvalue { i64, i1 } %736, 0, !nosanitize !47
  %740 = getelementptr inbounds nuw i8, ptr %705, i64 2
  %741 = add i32 %706, -2
  %742 = or disjoint i64 %715, 16
  br label %743

743:                                              ; preds = %738, %724
  %744 = phi i64 [ %725, %724 ], [ %739, %738 ]
  %745 = phi ptr [ %726, %724 ], [ %740, %738 ]
  %746 = phi i32 [ %727, %724 ], [ %741, %738 ]
  %747 = phi i64 [ %728, %724 ], [ %742, %738 ]
  %748 = trunc nuw nsw i64 %747 to i32
  br label %749

749:                                              ; preds = %743, %712
  %750 = phi ptr [ %705, %712 ], [ %745, %743 ]
  %751 = phi i32 [ %706, %712 ], [ %746, %743 ]
  %752 = phi i64 [ %707, %712 ], [ %744, %743 ]
  %753 = phi i32 [ %708, %712 ], [ %748, %743 ]
  %754 = load i32, ptr %49, align 8, !tbaa !24
  %755 = and i32 %754, 4
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %762, label %757

757:                                              ; preds = %749
  %758 = load i64, ptr %53, align 8, !tbaa !54
  %759 = and i64 %758, 65535
  %760 = icmp eq i64 %752, %759
  br i1 %760, label %762, label %761

761:                                              ; preds = %757
  store ptr @.str.5, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

762:                                              ; preds = %757, %749, %704
  %763 = phi ptr [ %705, %704 ], [ %750, %749 ], [ %750, %757 ]
  %764 = phi i32 [ %706, %704 ], [ %751, %749 ], [ %751, %757 ]
  %765 = phi i64 [ %707, %704 ], [ 0, %749 ], [ 0, %757 ]
  %766 = phi i32 [ %708, %704 ], [ 0, %749 ], [ 0, %757 ]
  %767 = load ptr, ptr %84, align 8, !tbaa !30
  %768 = icmp eq ptr %767, null
  br i1 %768, label %774, label %769

769:                                              ; preds = %762
  %770 = lshr i32 %709, 9
  %771 = and i32 %770, 1
  %772 = getelementptr inbounds nuw i8, ptr %767, i64 68
  store i32 %771, ptr %772, align 4, !tbaa !72
  %773 = getelementptr inbounds nuw i8, ptr %767, i64 72
  store i32 1, ptr %773, align 8, !tbaa !55
  br label %774

774:                                              ; preds = %769, %762
  %775 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %775, ptr %53, align 8, !tbaa !54
  store i64 %775, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2330

776:                                              ; preds = %112
  %777 = load i8, ptr %90, align 1, !tbaa !44
  %778 = zext i8 %777 to i64
  %779 = shl nuw nsw i64 %778, %113
  %780 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %779), !nosanitize !47
  %781 = extractvalue { i64, i1 } %780, 1, !nosanitize !47
  br i1 %781, label %782, label %783, !prof !48, !nosanitize !47

782:                                              ; preds = %819, %805, %791, %776
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

783:                                              ; preds = %776
  %784 = extractvalue { i64, i1 } %780, 0, !nosanitize !47
  %785 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %786 = add i32 %92, -1
  %787 = add nuw nsw i64 %113, 8
  %788 = icmp samesign ult i32 %95, 24
  br i1 %788, label %789, label %829

789:                                              ; preds = %783
  %790 = icmp eq i32 %786, 0
  br i1 %790, label %2381, label %791

791:                                              ; preds = %789
  %792 = load i8, ptr %785, align 1, !tbaa !44
  %793 = zext i8 %792 to i64
  %794 = shl nuw nsw i64 %793, %787
  %795 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %784, i64 %794), !nosanitize !47
  %796 = extractvalue { i64, i1 } %795, 1, !nosanitize !47
  br i1 %796, label %782, label %797, !prof !48, !nosanitize !47

797:                                              ; preds = %791
  %798 = extractvalue { i64, i1 } %795, 0, !nosanitize !47
  %799 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %800 = add i32 %92, -2
  %801 = add nuw nsw i64 %113, 16
  %802 = icmp samesign ult i32 %95, 16
  br i1 %802, label %803, label %829

803:                                              ; preds = %797
  %804 = icmp eq i32 %800, 0
  br i1 %804, label %2381, label %805

805:                                              ; preds = %803
  %806 = load i8, ptr %799, align 1, !tbaa !44
  %807 = zext i8 %806 to i64
  %808 = shl nuw nsw i64 %807, %801
  %809 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %798, i64 %808), !nosanitize !47
  %810 = extractvalue { i64, i1 } %809, 1, !nosanitize !47
  br i1 %810, label %782, label %811, !prof !48, !nosanitize !47

811:                                              ; preds = %805
  %812 = extractvalue { i64, i1 } %809, 0, !nosanitize !47
  %813 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %814 = add i32 %92, -3
  %815 = add nuw nsw i64 %113, 24
  %816 = icmp samesign ult i32 %95, 8
  br i1 %816, label %817, label %829

817:                                              ; preds = %811
  %818 = icmp eq i32 %814, 0
  br i1 %818, label %2381, label %819

819:                                              ; preds = %817
  %820 = load i8, ptr %813, align 1, !tbaa !44
  %821 = zext i8 %820 to i64
  %822 = shl nuw nsw i64 %821, %815
  %823 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %812, i64 %822), !nosanitize !47
  %824 = extractvalue { i64, i1 } %823, 1, !nosanitize !47
  br i1 %824, label %782, label %825, !prof !48, !nosanitize !47

825:                                              ; preds = %819
  %826 = extractvalue { i64, i1 } %823, 0, !nosanitize !47
  %827 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %828 = add i32 %92, -4
  br label %829

829:                                              ; preds = %825, %811, %797, %783, %110
  %830 = phi ptr [ %90, %110 ], [ %785, %783 ], [ %799, %797 ], [ %813, %811 ], [ %827, %825 ]
  %831 = phi i32 [ %92, %110 ], [ %786, %783 ], [ %800, %797 ], [ %814, %811 ], [ %828, %825 ]
  %832 = phi i64 [ %94, %110 ], [ %784, %783 ], [ %798, %797 ], [ %812, %811 ], [ %826, %825 ]
  %833 = trunc i64 %832 to i32
  %834 = call i32 @llvm.bswap.i32(i32 %833)
  %835 = zext i32 %834 to i64
  store i64 %835, ptr %53, align 8, !tbaa !54
  store i64 %835, ptr %54, align 8, !tbaa !25
  store i32 16190, ptr %21, align 8, !tbaa !20
  br label %836

836:                                              ; preds = %829, %88
  %837 = phi ptr [ %830, %829 ], [ %90, %88 ]
  %838 = phi i32 [ %831, %829 ], [ %92, %88 ]
  %839 = phi i64 [ 0, %829 ], [ %94, %88 ]
  %840 = phi i32 [ 0, %829 ], [ %95, %88 ]
  %841 = load i32, ptr %80, align 4, !tbaa !27
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %843, label %844

843:                                              ; preds = %836
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %837, ptr %0, align 8, !tbaa !50
  store i32 %838, ptr %43, align 8, !tbaa !51
  store i64 %839, ptr %45, align 8, !tbaa !31
  store i32 %840, ptr %47, align 8, !tbaa !32
  br label %.loopexit187

844:                                              ; preds = %836
  %845 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %845, ptr %53, align 8, !tbaa !54
  store i64 %845, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %846

846:                                              ; preds = %844, %88
  %847 = phi ptr [ %837, %844 ], [ %90, %88 ]
  %848 = phi i32 [ %838, %844 ], [ %92, %88 ]
  %849 = phi i64 [ %839, %844 ], [ %94, %88 ]
  %850 = phi i32 [ %840, %844 ], [ %95, %88 ]
  br i1 %82, label %.loopexit185, label %851

851:                                              ; preds = %846, %88
  %852 = phi ptr [ %847, %846 ], [ %90, %88 ]
  %853 = phi i32 [ %848, %846 ], [ %92, %88 ]
  %854 = phi i64 [ %849, %846 ], [ %94, %88 ]
  %855 = phi i32 [ %850, %846 ], [ %95, %88 ]
  %856 = load i32, ptr %83, align 4, !tbaa !26
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %863

858:                                              ; preds = %851
  %859 = icmp ult i32 %855, 3
  br i1 %859, label %860, label %880

860:                                              ; preds = %858
  %861 = or disjoint i32 %855, 8
  %862 = icmp eq i32 %853, 0
  br i1 %862, label %.loopexit185, label %868

863:                                              ; preds = %851
  %864 = and i32 %855, 7
  %865 = and i32 %855, -8
  %866 = zext nneg i32 %864 to i64
  %867 = lshr i64 %854, %866
  store i32 16206, ptr %21, align 8, !tbaa !20
  br label %2330

868:                                              ; preds = %860
  %869 = load i8, ptr %852, align 1, !tbaa !44
  %870 = zext i8 %869 to i64
  %871 = zext nneg i32 %855 to i64
  %872 = shl nuw nsw i64 %870, %871
  %873 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %854, i64 %872), !nosanitize !47
  %874 = extractvalue { i64, i1 } %873, 1, !nosanitize !47
  br i1 %874, label %875, label %876, !prof !48, !nosanitize !47

875:                                              ; preds = %868
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

876:                                              ; preds = %868
  %877 = extractvalue { i64, i1 } %873, 0, !nosanitize !47
  %878 = getelementptr inbounds nuw i8, ptr %852, i64 1
  %879 = add i32 %853, -1
  br label %880

880:                                              ; preds = %876, %858
  %881 = phi ptr [ %878, %876 ], [ %852, %858 ]
  %882 = phi i32 [ %879, %876 ], [ %853, %858 ]
  %883 = phi i64 [ %877, %876 ], [ %854, %858 ]
  %884 = phi i32 [ %861, %876 ], [ %855, %858 ]
  %885 = trunc i64 %883 to i32
  %886 = and i32 %885, 1
  store i32 %886, ptr %83, align 4, !tbaa !26
  %887 = lshr i32 %885, 1
  %888 = and i32 %887, 3
  switch i32 %888, label %default.unreachable2932 [
    i32 0, label %895
    i32 1, label %889
    i32 2, label %893
    i32 3, label %894
  ]

889:                                              ; preds = %880
  call void @inflate_fixed(ptr noundef nonnull %15) #12
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %890, label %897

890:                                              ; preds = %889
  %891 = add i32 %884, -3
  %892 = lshr i64 %883, 3
  br label %.loopexit185

893:                                              ; preds = %880
  br label %895

default.unreachable2932:                          ; preds = %880
  unreachable

894:                                              ; preds = %880
  store ptr @.str.6, ptr %55, align 8, !tbaa !45
  br label %895

895:                                              ; preds = %894, %893, %880
  %896 = phi i32 [ 16209, %894 ], [ 16196, %893 ], [ 16193, %880 ]
  store i32 %896, ptr %21, align 8, !tbaa !20
  br label %897

897:                                              ; preds = %895, %889
  %898 = add i32 %884, -3
  %899 = lshr i64 %883, 3
  br label %2330

900:                                              ; preds = %88
  %901 = and i32 %95, 7
  %902 = zext nneg i32 %901 to i64
  %903 = lshr i64 %94, %902
  %904 = and i32 %95, -8
  %905 = icmp ult i32 %95, 32
  br i1 %905, label %906, label %969

906:                                              ; preds = %900
  %907 = and i32 %95, 24
  %908 = zext nneg i32 %907 to i64
  %909 = icmp eq i32 %92, 0
  br i1 %909, label %2387, label %910

910:                                              ; preds = %906
  %911 = load i8, ptr %90, align 1, !tbaa !44
  %912 = zext i8 %911 to i64
  %913 = shl nuw nsw i64 %912, %908
  %914 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %903, i64 %913), !nosanitize !47
  %915 = extractvalue { i64, i1 } %914, 1, !nosanitize !47
  br i1 %915, label %916, label %917, !prof !48, !nosanitize !47

916:                                              ; preds = %953, %939, %925, %910
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

917:                                              ; preds = %910
  %918 = extractvalue { i64, i1 } %914, 0, !nosanitize !47
  %919 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %920 = add i32 %92, -1
  %921 = add nuw nsw i64 %908, 8
  %922 = icmp samesign ult i32 %95, 24
  br i1 %922, label %923, label %963

923:                                              ; preds = %917
  %924 = icmp eq i32 %920, 0
  br i1 %924, label %2387, label %925

925:                                              ; preds = %923
  %926 = load i8, ptr %919, align 1, !tbaa !44
  %927 = zext i8 %926 to i64
  %928 = shl nuw nsw i64 %927, %921
  %929 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %918, i64 %928), !nosanitize !47
  %930 = extractvalue { i64, i1 } %929, 1, !nosanitize !47
  br i1 %930, label %916, label %931, !prof !48, !nosanitize !47

931:                                              ; preds = %925
  %932 = extractvalue { i64, i1 } %929, 0, !nosanitize !47
  %933 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %934 = add i32 %92, -2
  %935 = add nuw nsw i64 %908, 16
  %936 = icmp samesign ult i32 %95, 16
  br i1 %936, label %937, label %963

937:                                              ; preds = %931
  %938 = icmp eq i32 %934, 0
  br i1 %938, label %2387, label %939

939:                                              ; preds = %937
  %940 = load i8, ptr %933, align 1, !tbaa !44
  %941 = zext i8 %940 to i64
  %942 = shl nuw nsw i64 %941, %935
  %943 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %932, i64 %942), !nosanitize !47
  %944 = extractvalue { i64, i1 } %943, 1, !nosanitize !47
  br i1 %944, label %916, label %945, !prof !48, !nosanitize !47

945:                                              ; preds = %939
  %946 = extractvalue { i64, i1 } %943, 0, !nosanitize !47
  %947 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %948 = add i32 %92, -3
  %949 = add nuw nsw i64 %908, 24
  %950 = icmp eq i32 %907, 0
  br i1 %950, label %951, label %963

951:                                              ; preds = %945
  %952 = icmp eq i32 %948, 0
  br i1 %952, label %2387, label %953

953:                                              ; preds = %951
  %954 = load i8, ptr %947, align 1, !tbaa !44
  %955 = zext i8 %954 to i64
  %956 = shl nuw nsw i64 %955, %949
  %957 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %946, i64 %956), !nosanitize !47
  %958 = extractvalue { i64, i1 } %957, 1, !nosanitize !47
  br i1 %958, label %916, label %959, !prof !48, !nosanitize !47

959:                                              ; preds = %953
  %960 = extractvalue { i64, i1 } %957, 0, !nosanitize !47
  %961 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %962 = add i32 %92, -4
  br label %963

963:                                              ; preds = %959, %945, %931, %917
  %964 = phi i64 [ %918, %917 ], [ %932, %931 ], [ %946, %945 ], [ %960, %959 ]
  %965 = phi ptr [ %919, %917 ], [ %933, %931 ], [ %947, %945 ], [ %961, %959 ]
  %966 = phi i32 [ %920, %917 ], [ %934, %931 ], [ %948, %945 ], [ %962, %959 ]
  %967 = phi i64 [ %921, %917 ], [ %935, %931 ], [ %949, %945 ], [ 32, %959 ]
  %968 = trunc nuw nsw i64 %967 to i32
  br label %969

969:                                              ; preds = %963, %900
  %970 = phi ptr [ %90, %900 ], [ %965, %963 ]
  %971 = phi i32 [ %92, %900 ], [ %966, %963 ]
  %972 = phi i64 [ %903, %900 ], [ %964, %963 ]
  %973 = phi i32 [ %904, %900 ], [ %968, %963 ]
  %974 = and i64 %972, 65535
  %975 = lshr i64 %972, 16
  %976 = xor i64 %975, %974
  %977 = icmp eq i64 %976, 65535
  br i1 %977, label %979, label %978

978:                                              ; preds = %969
  store ptr @.str.7, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

979:                                              ; preds = %969
  %980 = trunc i64 %972 to i32
  %981 = and i32 %980, 65535
  store i32 %981, ptr %56, align 4, !tbaa !61
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit185, label %982

982:                                              ; preds = %979, %88
  %983 = phi ptr [ %970, %979 ], [ %90, %88 ]
  %984 = phi i32 [ %971, %979 ], [ %92, %88 ]
  %985 = phi i64 [ 0, %979 ], [ %94, %88 ]
  %986 = phi i32 [ 0, %979 ], [ %95, %88 ]
  store i32 16195, ptr %21, align 8, !tbaa !20
  br label %987

987:                                              ; preds = %982, %88
  %988 = phi ptr [ %983, %982 ], [ %90, %88 ]
  %989 = phi i32 [ %984, %982 ], [ %92, %88 ]
  %990 = phi i64 [ %985, %982 ], [ %94, %88 ]
  %991 = phi i32 [ %986, %982 ], [ %95, %88 ]
  %992 = load i32, ptr %56, align 4, !tbaa !61
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1018, label %994

994:                                              ; preds = %987
  %995 = call i32 @llvm.umin.i32(i32 %992, i32 %989)
  %996 = call i32 @llvm.umin.i32(i32 %995, i32 %93)
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %.loopexit185, label %998

998:                                              ; preds = %994
  %999 = zext i32 %996 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr align 1 %988, i64 %999, i1 false)
  %1000 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %989, i32 %996), !nosanitize !47
  %1001 = extractvalue { i32, i1 } %1000, 0, !nosanitize !47
  %1002 = extractvalue { i32, i1 } %1000, 1, !nosanitize !47
  br i1 %1002, label %1003, label %1004, !prof !48, !nosanitize !47

1003:                                             ; preds = %998
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1004:                                             ; preds = %998
  %1005 = getelementptr inbounds nuw i8, ptr %988, i64 %999
  %1006 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %996), !nosanitize !47
  %1007 = extractvalue { i32, i1 } %1006, 0, !nosanitize !47
  %1008 = extractvalue { i32, i1 } %1006, 1, !nosanitize !47
  br i1 %1008, label %1009, label %1010, !prof !48, !nosanitize !47

1009:                                             ; preds = %1004
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1010:                                             ; preds = %1004
  %1011 = load i32, ptr %56, align 4, !tbaa !61
  %1012 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1011, i32 %996), !nosanitize !47
  %1013 = extractvalue { i32, i1 } %1012, 1, !nosanitize !47
  br i1 %1013, label %1014, label %1015, !prof !48, !nosanitize !47

1014:                                             ; preds = %1010
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1015:                                             ; preds = %1010
  %1016 = extractvalue { i32, i1 } %1012, 0, !nosanitize !47
  %1017 = getelementptr inbounds nuw i8, ptr %91, i64 %999
  store i32 %1016, ptr %56, align 4, !tbaa !61
  br label %2330

1018:                                             ; preds = %987
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2330

1019:                                             ; preds = %107
  %1020 = load i8, ptr %90, align 1, !tbaa !44
  %1021 = zext i8 %1020 to i64
  %1022 = shl nuw nsw i64 %1021, %108
  %1023 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %1022), !nosanitize !47
  %1024 = extractvalue { i64, i1 } %1023, 1, !nosanitize !47
  br i1 %1024, label %1025, label %1026, !prof !48, !nosanitize !47

1025:                                             ; preds = %1034, %1019
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1026:                                             ; preds = %1019
  %1027 = extractvalue { i64, i1 } %1023, 0, !nosanitize !47
  %1028 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %1029 = add i32 %92, -1
  %1030 = add nuw nsw i64 %108, 8
  %1031 = icmp samesign ult i32 %95, 6
  br i1 %1031, label %1032, label %1045

1032:                                             ; preds = %1026
  %1033 = icmp eq i32 %1029, 0
  br i1 %1033, label %2438, label %1034

1034:                                             ; preds = %1032
  %1035 = load i8, ptr %1028, align 1, !tbaa !44
  %1036 = zext i8 %1035 to i64
  %1037 = shl nuw nsw i64 %1036, %1030
  %1038 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1027, i64 %1037), !nosanitize !47
  %1039 = extractvalue { i64, i1 } %1038, 1, !nosanitize !47
  br i1 %1039, label %1025, label %1040, !prof !48, !nosanitize !47

1040:                                             ; preds = %1034
  %1041 = extractvalue { i64, i1 } %1038, 0, !nosanitize !47
  %1042 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %1043 = add i32 %92, -2
  %1044 = or disjoint i64 %108, 16
  br label %1045

1045:                                             ; preds = %1040, %1026
  %1046 = phi i64 [ %1027, %1026 ], [ %1041, %1040 ]
  %1047 = phi ptr [ %1028, %1026 ], [ %1042, %1040 ]
  %1048 = phi i32 [ %1029, %1026 ], [ %1043, %1040 ]
  %1049 = phi i64 [ %1030, %1026 ], [ %1044, %1040 ]
  %1050 = trunc nuw nsw i64 %1049 to i32
  br label %1051

1051:                                             ; preds = %1045, %105
  %1052 = phi ptr [ %90, %105 ], [ %1047, %1045 ]
  %1053 = phi i32 [ %92, %105 ], [ %1048, %1045 ]
  %1054 = phi i64 [ %94, %105 ], [ %1046, %1045 ]
  %1055 = phi i32 [ %95, %105 ], [ %1050, %1045 ]
  %1056 = trunc i64 %1054 to i32
  %1057 = and i32 %1056, 31
  %1058 = add nuw nsw i32 %1057, 257
  store i32 %1058, ptr %57, align 4, !tbaa !73
  %1059 = lshr i32 %1056, 5
  %1060 = and i32 %1059, 31
  %1061 = add nuw nsw i32 %1060, 1
  store i32 %1061, ptr %58, align 8, !tbaa !74
  %1062 = lshr i32 %1056, 10
  %1063 = and i32 %1062, 15
  %1064 = add nuw nsw i32 %1063, 4
  store i32 %1064, ptr %59, align 8, !tbaa !75
  %1065 = lshr i64 %1054, 14
  %1066 = add i32 %1055, -14
  %1067 = icmp samesign ugt i32 %1057, 29
  %1068 = icmp samesign ugt i32 %1060, 29
  %1069 = select i1 %1067, i1 true, i1 %1068
  br i1 %1069, label %1070, label %1071

1070:                                             ; preds = %1051
  store ptr @.str.8, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

1071:                                             ; preds = %1051
  store i32 0, ptr %60, align 4, !tbaa !76
  store i32 16197, ptr %21, align 8, !tbaa !20
  br label %1076

1072:                                             ; preds = %88
  %1073 = load i32, ptr %59, align 8, !tbaa !75
  %1074 = load i32, ptr %60, align 4, !tbaa !76
  %1075 = icmp ult i32 %1074, %1073
  br i1 %1075, label %1076, label %.loopexit186

1076:                                             ; preds = %1072, %1071
  %1077 = phi i32 [ %1066, %1071 ], [ %95, %1072 ]
  %1078 = phi i64 [ %1065, %1071 ], [ %94, %1072 ]
  %1079 = phi i32 [ %1053, %1071 ], [ %92, %1072 ]
  %1080 = phi ptr [ %1052, %1071 ], [ %90, %1072 ]
  %1081 = phi i32 [ %1064, %1071 ], [ %1073, %1072 ]
  %1082 = phi i32 [ 0, %1071 ], [ %1074, %1072 ]
  %1083 = zext i32 %1082 to i64
  %1084 = zext i32 %1081 to i64
  br label %1093

.loopexit186:                                     ; preds = %1115, %1072
  %1085 = phi ptr [ %90, %1072 ], [ %1116, %1115 ]
  %1086 = phi i32 [ %92, %1072 ], [ %1117, %1115 ]
  %1087 = phi i64 [ %94, %1072 ], [ %1129, %1115 ]
  %1088 = phi i32 [ %95, %1072 ], [ %1128, %1115 ]
  %1089 = phi i32 [ %1074, %1072 ], [ %1081, %1115 ]
  %1090 = icmp ult i32 %1089, 19
  br i1 %1090, label %1091, label %1141

1091:                                             ; preds = %.loopexit186
  %1092 = zext nneg i32 %1089 to i64
  br label %1131

1093:                                             ; preds = %1115, %1076
  %1094 = phi i64 [ %1083, %1076 ], [ %1120, %1115 ]
  %1095 = phi i32 [ %1077, %1076 ], [ %1128, %1115 ]
  %1096 = phi i64 [ %1078, %1076 ], [ %1129, %1115 ]
  %1097 = phi i32 [ %1079, %1076 ], [ %1117, %1115 ]
  %1098 = phi ptr [ %1080, %1076 ], [ %1116, %1115 ]
  %1099 = icmp ult i32 %1095, 3
  br i1 %1099, label %1100, label %1115

1100:                                             ; preds = %1093
  %1101 = or disjoint i32 %1095, 8
  %1102 = icmp eq i32 %1097, 0
  br i1 %1102, label %.loopexit185, label %1103

1103:                                             ; preds = %1100
  %1104 = load i8, ptr %1098, align 1, !tbaa !44
  %1105 = zext i8 %1104 to i64
  %1106 = zext nneg i32 %1095 to i64
  %1107 = shl nuw nsw i64 %1105, %1106
  %1108 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1096, i64 %1107), !nosanitize !47
  %1109 = extractvalue { i64, i1 } %1108, 1, !nosanitize !47
  br i1 %1109, label %1110, label %1111, !prof !48, !nosanitize !47

1110:                                             ; preds = %1103
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1111:                                             ; preds = %1103
  %1112 = extractvalue { i64, i1 } %1108, 0, !nosanitize !47
  %1113 = getelementptr inbounds nuw i8, ptr %1098, i64 1
  %1114 = add i32 %1097, -1
  br label %1115

1115:                                             ; preds = %1111, %1093
  %1116 = phi ptr [ %1113, %1111 ], [ %1098, %1093 ]
  %1117 = phi i32 [ %1114, %1111 ], [ %1097, %1093 ]
  %1118 = phi i64 [ %1112, %1111 ], [ %1096, %1093 ]
  %1119 = phi i32 [ %1101, %1111 ], [ %1095, %1093 ]
  %1120 = add nuw nsw i64 %1094, 1
  %1121 = trunc i64 %1118 to i16
  %1122 = and i16 %1121, 7
  %1123 = trunc nuw i64 %1120 to i32
  store i32 %1123, ptr %60, align 4, !tbaa !76
  %1124 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1094
  %1125 = load i16, ptr %1124, align 2, !tbaa !77
  %1126 = zext i16 %1125 to i64
  %1127 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1126
  store i16 %1122, ptr %1127, align 2, !tbaa !77
  %1128 = add i32 %1119, -3
  %1129 = lshr i64 %1118, 3
  %1130 = icmp eq i64 %1120, %1084
  br i1 %1130, label %.loopexit186, label %1093, !llvm.loop !79

1131:                                             ; preds = %1131, %1091
  %1132 = phi i64 [ %1092, %1091 ], [ %1133, %1131 ]
  %1133 = add nuw nsw i64 %1132, 1
  %1134 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1132
  %1135 = load i16, ptr %1134, align 2, !tbaa !77
  %1136 = zext i16 %1135 to i64
  %1137 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1136
  store i16 0, ptr %1137, align 2, !tbaa !77
  %1138 = and i64 %1133, 4294967295
  %1139 = icmp eq i64 %1138, 19
  br i1 %1139, label %1140, label %1131, !llvm.loop !80

1140:                                             ; preds = %1131
  store i32 19, ptr %60, align 4, !tbaa !76
  br label %1141

1141:                                             ; preds = %1140, %.loopexit186
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %64, align 8, !tbaa !34
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 7, ptr %66, align 8, !tbaa !81
  %1142 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1145, label %1144

1144:                                             ; preds = %1141
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

1145:                                             ; preds = %1141
  store i32 0, ptr %60, align 4, !tbaa !76
  store i32 16198, ptr %21, align 8, !tbaa !20
  br label %1146

1146:                                             ; preds = %1145, %88
  %1147 = phi ptr [ %1085, %1145 ], [ %90, %88 ]
  %1148 = phi i32 [ %1086, %1145 ], [ %92, %88 ]
  %1149 = phi i64 [ %1087, %1145 ], [ %94, %88 ]
  %1150 = phi i32 [ %1088, %1145 ], [ %95, %88 ]
  %1151 = phi i32 [ 0, %1145 ], [ %97, %88 ]
  %1152 = load i32, ptr %57, align 4, !tbaa !73
  %1153 = load i32, ptr %58, align 8, !tbaa !74
  %1154 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1152, i32 %1153), !nosanitize !47
  %1155 = extractvalue { i32, i1 } %1154, 1, !nosanitize !47
  br i1 %1155, label %1168, label %1156, !prof !82, !nosanitize !47

1156:                                             ; preds = %1146
  %1157 = extractvalue { i32, i1 } %1154, 0, !nosanitize !47
  %1158 = load i32, ptr %60, align 4, !tbaa !76
  %.fr = freeze i32 %1158
  %1159 = call i32 @llvm.umax.i32(i32 %.fr, i32 %1157)
  %1160 = zext i32 %1159 to i64
  %1161 = icmp ult i32 %.fr, %1157
  br i1 %1161, label %1162, label %.loopexit184

1162:                                             ; preds = %1156
  %1163 = zext i32 %.fr to i64
  %1164 = load i32, ptr %66, align 8, !tbaa !81
  %1165 = shl nsw i32 -1, %1164
  %1166 = xor i32 %1165, -1
  %1167 = load ptr, ptr %65, align 8, !tbaa !35
  br label %1169

1168:                                             ; preds = %1146
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1169:                                             ; preds = %1424, %1162
  %1170 = phi ptr [ %1147, %1162 ], [ %1218, %1424 ]
  %1171 = phi i32 [ %1148, %1162 ], [ %1219, %1424 ]
  %1172 = phi i64 [ %1149, %1162 ], [ %1230, %1424 ]
  %1173 = phi i32 [ %1150, %1162 ], [ %1232, %1424 ]
  %1174 = phi i64 [ %1163, %1162 ], [ %1425, %1424 ]
  %1175 = trunc i64 %1172 to i32
  %1176 = and i32 %1175, %1166
  %1177 = zext nneg i32 %1176 to i64
  %1178 = getelementptr inbounds nuw [4 x i8], ptr %1167, i64 %1177
  %1179 = getelementptr inbounds nuw i8, ptr %1178, i64 1
  %1180 = load i8, ptr %1179, align 1, !tbaa !44
  %1181 = zext i8 %1180 to i32
  %1182 = icmp ult i32 %1173, %1181
  br i1 %1182, label %1183, label %1216

1183:                                             ; preds = %1169
  %1184 = icmp eq i32 %1171, 0
  br i1 %1184, label %.loopexit, label %1185

1185:                                             ; preds = %1183
  %1186 = zext nneg i32 %1173 to i64
  br label %1189

1187:                                             ; preds = %1200
  %1188 = icmp eq i32 %1203, 0
  br i1 %1188, label %.loopexit, label %1189

1189:                                             ; preds = %1187, %1185
  %1190 = phi ptr [ %1170, %1185 ], [ %1202, %1187 ]
  %1191 = phi i32 [ %1171, %1185 ], [ %1203, %1187 ]
  %1192 = phi i64 [ %1172, %1185 ], [ %1201, %1187 ]
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
  %1206 = and i32 %1205, %1166
  %1207 = zext nneg i32 %1206 to i64
  %1208 = getelementptr inbounds nuw [4 x i8], ptr %1167, i64 %1207
  %1209 = getelementptr inbounds nuw i8, ptr %1208, i64 1
  %1210 = load i8, ptr %1209, align 1, !tbaa !44
  %1211 = zext i8 %1210 to i64
  %1212 = icmp samesign ult i64 %1204, %1211
  br i1 %1212, label %1187, label %1213

1213:                                             ; preds = %1200
  %1214 = zext i8 %1210 to i32
  %1215 = trunc nuw nsw i64 %1204 to i32
  br label %1216

1216:                                             ; preds = %1213, %1169
  %1217 = phi i64 [ %1177, %1169 ], [ %1207, %1213 ]
  %1218 = phi ptr [ %1170, %1169 ], [ %1202, %1213 ]
  %1219 = phi i32 [ %1171, %1169 ], [ %1203, %1213 ]
  %1220 = phi i64 [ %1172, %1169 ], [ %1201, %1213 ]
  %1221 = phi i32 [ %1173, %1169 ], [ %1215, %1213 ]
  %1222 = phi i8 [ %1180, %1169 ], [ %1210, %1213 ]
  %1223 = phi i32 [ %1181, %1169 ], [ %1214, %1213 ]
  %1224 = getelementptr inbounds nuw [4 x i8], ptr %1167, i64 %1217
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
  %1236 = icmp eq i64 %1174, 4294967295
  br i1 %1236, label %1237, label %1424, !prof !48, !nosanitize !47

1237:                                             ; preds = %1235
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1238:                                             ; preds = %1216
  %indvars2761.le = trunc i64 %1174 to i32
  switch i16 %1226, label %1251 [
    i16 16, label %1245
    i16 17, label %1239
  ]

1239:                                             ; preds = %1238
  %1240 = add nuw nsw i32 %1223, 3
  %1241 = icmp ult i32 %1221, %1240
  br i1 %1241, label %1242, label %1322

1242:                                             ; preds = %1239
  %1243 = zext nneg i32 %1221 to i64
  %1244 = zext nneg i32 %1240 to i64
  br label %1301

1245:                                             ; preds = %1238
  %1246 = add nuw nsw i32 %1223, 2
  %1247 = icmp ult i32 %1221, %1246
  br i1 %1247, label %1248, label %1278

1248:                                             ; preds = %1245
  %1249 = zext nneg i32 %1221 to i64
  %1250 = zext nneg i32 %1246 to i64
  br label %1257

1251:                                             ; preds = %1238
  %1252 = add nuw nsw i32 %1223, 7
  %1253 = icmp ult i32 %1221, %1252
  br i1 %1253, label %1254, label %1359

1254:                                             ; preds = %1251
  %1255 = zext nneg i32 %1221 to i64
  %1256 = zext nneg i32 %1252 to i64
  br label %1338

1257:                                             ; preds = %1270, %1248
  %1258 = phi i64 [ %1249, %1248 ], [ %1274, %1270 ]
  %1259 = phi i64 [ %1220, %1248 ], [ %1271, %1270 ]
  %1260 = phi i32 [ %1219, %1248 ], [ %1273, %1270 ]
  %1261 = phi ptr [ %1218, %1248 ], [ %1272, %1270 ]
  %1262 = icmp eq i32 %1260, 0
  br i1 %1262, label %2428, label %1263

1263:                                             ; preds = %1257
  %1264 = load i8, ptr %1261, align 1, !tbaa !44
  %1265 = zext i8 %1264 to i64
  %1266 = shl i64 %1265, %1258
  %1267 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1259, i64 %1266), !nosanitize !47
  %1268 = extractvalue { i64, i1 } %1267, 1, !nosanitize !47
  br i1 %1268, label %1269, label %1270, !prof !48, !nosanitize !47

1269:                                             ; preds = %1263
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1270:                                             ; preds = %1263
  %1271 = extractvalue { i64, i1 } %1267, 0, !nosanitize !47
  %1272 = getelementptr inbounds nuw i8, ptr %1261, i64 1
  %1273 = add i32 %1260, -1
  %1274 = add nuw nsw i64 %1258, 8
  %1275 = icmp samesign ult i64 %1274, %1250
  br i1 %1275, label %1257, label %1276, !llvm.loop !83

1276:                                             ; preds = %1270
  %1277 = trunc nuw nsw i64 %1274 to i32
  br label %1278

1278:                                             ; preds = %1276, %1245
  %1279 = phi ptr [ %1218, %1245 ], [ %1272, %1276 ]
  %1280 = phi i32 [ %1219, %1245 ], [ %1273, %1276 ]
  %1281 = phi i64 [ %1220, %1245 ], [ %1271, %1276 ]
  %1282 = phi i32 [ %1221, %1245 ], [ %1277, %1276 ]
  %1283 = zext nneg i8 %1222 to i64
  %1284 = lshr i64 %1281, %1283
  %1285 = sub nuw i32 %1282, %1223
  %1286 = icmp eq i64 %1174, 0
  br i1 %1286, label %1287, label %1288

1287:                                             ; preds = %1278
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

1288:                                             ; preds = %1278
  %1289 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1285, i32 2), !nosanitize !47
  %1290 = extractvalue { i32, i1 } %1289, 1, !nosanitize !47
  br i1 %1290, label %1291, label %1292, !prof !48, !nosanitize !47

1291:                                             ; preds = %1288
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1292:                                             ; preds = %1288
  %1293 = trunc i64 %1284 to i32
  %1294 = and i32 %1293, 3
  %1295 = add nuw nsw i32 %1294, 3
  %1296 = add nuw nsw i64 %1174, 4294967295
  %1297 = and i64 %1296, 4294967295
  %1298 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1297
  %1299 = load i16, ptr %1298, align 2, !tbaa !77
  %1300 = lshr i64 %1284, 2
  br label %1375

1301:                                             ; preds = %1314, %1242
  %1302 = phi i64 [ %1243, %1242 ], [ %1318, %1314 ]
  %1303 = phi i64 [ %1220, %1242 ], [ %1315, %1314 ]
  %1304 = phi i32 [ %1219, %1242 ], [ %1317, %1314 ]
  %1305 = phi ptr [ %1218, %1242 ], [ %1316, %1314 ]
  %1306 = icmp eq i32 %1304, 0
  br i1 %1306, label %2433, label %1307

1307:                                             ; preds = %1301
  %1308 = load i8, ptr %1305, align 1, !tbaa !44
  %1309 = zext i8 %1308 to i64
  %1310 = shl i64 %1309, %1302
  %1311 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1303, i64 %1310), !nosanitize !47
  %1312 = extractvalue { i64, i1 } %1311, 1, !nosanitize !47
  br i1 %1312, label %1313, label %1314, !prof !48, !nosanitize !47

1313:                                             ; preds = %1307
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1314:                                             ; preds = %1307
  %1315 = extractvalue { i64, i1 } %1311, 0, !nosanitize !47
  %1316 = getelementptr inbounds nuw i8, ptr %1305, i64 1
  %1317 = add i32 %1304, -1
  %1318 = add nuw nsw i64 %1302, 8
  %1319 = icmp samesign ult i64 %1318, %1244
  br i1 %1319, label %1301, label %1320, !llvm.loop !84

1320:                                             ; preds = %1314
  %1321 = trunc nuw nsw i64 %1318 to i32
  br label %1322

1322:                                             ; preds = %1320, %1239
  %1323 = phi ptr [ %1218, %1239 ], [ %1316, %1320 ]
  %1324 = phi i32 [ %1219, %1239 ], [ %1317, %1320 ]
  %1325 = phi i64 [ %1220, %1239 ], [ %1315, %1320 ]
  %1326 = phi i32 [ %1221, %1239 ], [ %1321, %1320 ]
  %1327 = sub nuw i32 %1326, %1223
  %1328 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1327, i32 3), !nosanitize !47
  %1329 = extractvalue { i32, i1 } %1328, 1, !nosanitize !47
  br i1 %1329, label %1330, label %1331, !prof !48, !nosanitize !47

1330:                                             ; preds = %1322
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1331:                                             ; preds = %1322
  %1332 = zext nneg i8 %1222 to i64
  %1333 = lshr i64 %1325, %1332
  %1334 = trunc i64 %1333 to i32
  %1335 = and i32 %1334, 7
  %1336 = add nuw nsw i32 %1335, 3
  %1337 = lshr i64 %1333, 3
  br label %1375

1338:                                             ; preds = %1351, %1254
  %1339 = phi i64 [ %1255, %1254 ], [ %1355, %1351 ]
  %1340 = phi i64 [ %1220, %1254 ], [ %1352, %1351 ]
  %1341 = phi i32 [ %1219, %1254 ], [ %1354, %1351 ]
  %1342 = phi ptr [ %1218, %1254 ], [ %1353, %1351 ]
  %1343 = icmp eq i32 %1341, 0
  br i1 %1343, label %2423, label %1344

1344:                                             ; preds = %1338
  %1345 = load i8, ptr %1342, align 1, !tbaa !44
  %1346 = zext i8 %1345 to i64
  %1347 = shl i64 %1346, %1339
  %1348 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1340, i64 %1347), !nosanitize !47
  %1349 = extractvalue { i64, i1 } %1348, 1, !nosanitize !47
  br i1 %1349, label %1350, label %1351, !prof !48, !nosanitize !47

1350:                                             ; preds = %1344
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1351:                                             ; preds = %1344
  %1352 = extractvalue { i64, i1 } %1348, 0, !nosanitize !47
  %1353 = getelementptr inbounds nuw i8, ptr %1342, i64 1
  %1354 = add i32 %1341, -1
  %1355 = add nuw nsw i64 %1339, 8
  %1356 = icmp samesign ult i64 %1355, %1256
  br i1 %1356, label %1338, label %1357, !llvm.loop !85

1357:                                             ; preds = %1351
  %1358 = trunc nuw nsw i64 %1355 to i32
  br label %1359

1359:                                             ; preds = %1357, %1251
  %1360 = phi ptr [ %1218, %1251 ], [ %1353, %1357 ]
  %1361 = phi i32 [ %1219, %1251 ], [ %1354, %1357 ]
  %1362 = phi i64 [ %1220, %1251 ], [ %1352, %1357 ]
  %1363 = phi i32 [ %1221, %1251 ], [ %1358, %1357 ]
  %1364 = sub nuw i32 %1363, %1223
  %1365 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1364, i32 7), !nosanitize !47
  %1366 = extractvalue { i32, i1 } %1365, 1, !nosanitize !47
  br i1 %1366, label %1367, label %1368, !prof !48, !nosanitize !47

1367:                                             ; preds = %1359
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1368:                                             ; preds = %1359
  %1369 = zext nneg i8 %1222 to i64
  %1370 = lshr i64 %1362, %1369
  %1371 = trunc i64 %1370 to i32
  %1372 = and i32 %1371, 127
  %1373 = add nuw nsw i32 %1372, 11
  %1374 = lshr i64 %1370, 7
  br label %1375

1375:                                             ; preds = %1368, %1331, %1292
  %1376 = phi ptr [ %1279, %1292 ], [ %1323, %1331 ], [ %1360, %1368 ]
  %1377 = phi i32 [ %1280, %1292 ], [ %1324, %1331 ], [ %1361, %1368 ]
  %1378 = phi i64 [ %1300, %1292 ], [ %1337, %1331 ], [ %1374, %1368 ]
  %1379 = phi { i32, i1 } [ %1289, %1292 ], [ %1328, %1331 ], [ %1365, %1368 ]
  %1380 = phi i32 [ %1295, %1292 ], [ %1336, %1331 ], [ %1373, %1368 ]
  %1381 = phi i16 [ %1299, %1292 ], [ 0, %1331 ], [ 0, %1368 ]
  %1382 = extractvalue { i32, i1 } %1379, 0
  %1383 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %indvars2761.le, i32 %1380), !nosanitize !47
  %1384 = extractvalue { i32, i1 } %1383, 1, !nosanitize !47
  br i1 %1384, label %1385, label %1386, !prof !48, !nosanitize !47

1385:                                             ; preds = %1375
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1386:                                             ; preds = %1375
  %1387 = extractvalue { i32, i1 } %1383, 0, !nosanitize !47
  %1388 = icmp ugt i32 %1387, %1157
  br i1 %1388, label %1405, label %1389

1389:                                             ; preds = %1386
  %1390 = icmp eq i32 %indvars2761.le, -1
  br i1 %1390, label %1416, label %1391, !prof !82, !nosanitize !47

1391:                                             ; preds = %1389
  %1392 = and i64 %1174, 4294967295
  %1393 = add nsw i32 %1380, -1
  %1394 = and i64 %1174, 1
  %1395 = icmp eq i64 %1394, 0
  br i1 %1395, label %1396, label %1401, !prof !82

1396:                                             ; preds = %1391
  %1397 = or disjoint i64 %1392, 1
  %1398 = trunc nuw i64 %1397 to i32
  store i32 %1398, ptr %60, align 4, !tbaa !76
  %1399 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1392
  store i16 %1381, ptr %1399, align 2, !tbaa !77
  %1400 = add nsw i32 %1380, -2
  br label %1401

1401:                                             ; preds = %1396, %1391
  %.pn170 = phi i32 [ %1393, %1391 ], [ %1400, %1396 ]
  %1402 = phi i64 [ %1392, %1391 ], [ %1397, %1396 ]
  %1403 = icmp eq i32 %indvars2761.le, -2
  br i1 %1403, label %1416, label %.preheader.preheader, !prof !82

.preheader.preheader:                             ; preds = %1401
  %1404 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %.pn170, 0
  br label %.preheader

1405:                                             ; preds = %1386
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

.split.loop.exit:                                 ; preds = %1407, %.preheader
  %.in = phi i64 [ %1420, %.preheader ], [ %1409, %1407 ]
  %1406 = trunc i64 %.in to i32
  store i32 %1406, ptr %60, align 4, !tbaa !76
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1407:                                             ; preds = %.preheader
  %1408 = extractvalue { i32, i1 } %1422, 0
  %1409 = add nuw nsw i64 %1418, 2
  %1410 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1420
  store i16 %1381, ptr %1410, align 2, !tbaa !77
  %1411 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1408, i32 1), !nosanitize !47
  %1412 = extractvalue { i32, i1 } %1411, 1, !nosanitize !47
  br i1 %1412, label %.split.loop.exit, label %1413, !prof !86, !llvm.loop !87, !nosanitize !47

1413:                                             ; preds = %1407
  %1414 = icmp eq i64 %1409, 4294967295
  br i1 %1414, label %1415, label %.preheader, !prof !86, !llvm.loop !88, !nosanitize !47

1415:                                             ; preds = %1413
  store i32 -1, ptr %60, align 4, !tbaa !76
  br label %1416

1416:                                             ; preds = %1415, %1401, %1389
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

.preheader:                                       ; preds = %.preheader.preheader, %1413
  %1417 = phi { i32, i1 } [ %1411, %1413 ], [ %1404, %.preheader.preheader ]
  %1418 = phi i64 [ %1409, %1413 ], [ %1402, %.preheader.preheader ]
  %1419 = extractvalue { i32, i1 } %1417, 0
  %1420 = add nuw nsw i64 %1418, 1
  %1421 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1418
  store i16 %1381, ptr %1421, align 2, !tbaa !77
  %1422 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1419, i32 1), !nosanitize !47
  %1423 = extractvalue { i32, i1 } %1422, 1, !nosanitize !47
  br i1 %1423, label %.split.loop.exit, label %1407, !prof !86, !llvm.loop !87, !nosanitize !47

1424:                                             ; preds = %1235
  %1425 = add i64 %1174, 1
  %indvars = trunc nuw i64 %1425 to i32
  store i32 %indvars, ptr %60, align 4, !tbaa !76
  %1426 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1174
  store i16 %1226, ptr %1426, align 2, !tbaa !77
  %1427 = icmp eq i64 %1425, %1160
  br i1 %1427, label %.loopexit184, label %1169

.loopexit184:                                     ; preds = %1424, %1156
  %1428 = phi i32 [ %1150, %1156 ], [ %1232, %1424 ]
  %1429 = phi i64 [ %1149, %1156 ], [ %1230, %1424 ]
  %1430 = phi i32 [ %1148, %1156 ], [ %1219, %1424 ]
  %1431 = phi ptr [ %1147, %1156 ], [ %1218, %1424 ]
  %1432 = load i16, ptr %68, align 8, !tbaa !77
  %1433 = icmp eq i16 %1432, 0
  br i1 %1433, label %1434, label %1435

1434:                                             ; preds = %.loopexit184
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

1435:                                             ; preds = %.loopexit184
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !81
  %1436 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1152, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1437 = icmp eq i32 %1436, 0
  br i1 %1437, label %1439, label %1438

1438:                                             ; preds = %1435
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

1439:                                             ; preds = %1435
  %1440 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1440, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !90
  %1441 = load i32, ptr %57, align 4, !tbaa !73
  %1442 = zext i32 %1441 to i64
  %1443 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1442
  %1444 = load i32, ptr %58, align 8, !tbaa !74
  %1445 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1443, i32 noundef %1444, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #12
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %1448, label %1447

1447:                                             ; preds = %1439
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

1448:                                             ; preds = %1439
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit185, label %1449

1449:                                             ; preds = %1448, %88
  %1450 = phi ptr [ %1431, %1448 ], [ %90, %88 ]
  %1451 = phi i32 [ %1430, %1448 ], [ %92, %88 ]
  %1452 = phi i64 [ %1429, %1448 ], [ %94, %88 ]
  %1453 = phi i32 [ %1428, %1448 ], [ %95, %88 ]
  %1454 = phi i32 [ 0, %1448 ], [ %97, %88 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1455

1455:                                             ; preds = %1449, %88
  %1456 = phi ptr [ %1450, %1449 ], [ %90, %88 ]
  %1457 = phi i32 [ %1451, %1449 ], [ %92, %88 ]
  %1458 = phi i64 [ %1452, %1449 ], [ %94, %88 ]
  %1459 = phi i32 [ %1453, %1449 ], [ %95, %88 ]
  %1460 = phi i32 [ %1454, %1449 ], [ %97, %88 ]
  %1461 = icmp ugt i32 %1457, 5
  %1462 = icmp ugt i32 %93, 257
  %1463 = select i1 %1461, i1 %1462, i1 false
  br i1 %1463, label %1464, label %1474

1464:                                             ; preds = %1455
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %1456, ptr %0, align 8, !tbaa !50
  store i32 %1457, ptr %43, align 8, !tbaa !51
  store i64 %1458, ptr %45, align 8, !tbaa !31
  store i32 %1459, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %96) #12
  %1465 = load ptr, ptr %26, align 8, !tbaa !49
  %1466 = load i32, ptr %41, align 8, !tbaa !52
  %1467 = load ptr, ptr %0, align 8, !tbaa !50
  %1468 = load i32, ptr %43, align 8, !tbaa !51
  %1469 = load i64, ptr %45, align 8, !tbaa !31
  %1470 = load i32, ptr %47, align 8, !tbaa !32
  %1471 = load i32, ptr %21, align 8, !tbaa !20
  %1472 = icmp eq i32 %1471, 16191
  br i1 %1472, label %1473, label %2330

1473:                                             ; preds = %1464
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2330

1474:                                             ; preds = %1455
  store i32 0, ptr %71, align 4, !tbaa !37
  %1475 = load i32, ptr %66, align 8, !tbaa !81
  %1476 = shl nsw i32 -1, %1475
  %1477 = xor i32 %1476, -1
  %1478 = load ptr, ptr %65, align 8, !tbaa !35
  %1479 = trunc i64 %1458 to i32
  %1480 = and i32 %1477, %1479
  %1481 = zext nneg i32 %1480 to i64
  %1482 = getelementptr inbounds nuw [4 x i8], ptr %1478, i64 %1481
  %1483 = getelementptr inbounds nuw i8, ptr %1482, i64 1
  %1484 = load i8, ptr %1483, align 1, !tbaa !44
  %1485 = zext i8 %1484 to i32
  %1486 = icmp ult i32 %1459, %1485
  br i1 %1486, label %1487, label %1520

1487:                                             ; preds = %1474
  %1488 = icmp eq i32 %1457, 0
  br i1 %1488, label %.loopexit182, label %1489

1489:                                             ; preds = %1487
  %1490 = zext nneg i32 %1459 to i64
  br label %1493

1491:                                             ; preds = %1504
  %1492 = icmp eq i32 %1507, 0
  br i1 %1492, label %.loopexit182, label %1493

1493:                                             ; preds = %1491, %1489
  %1494 = phi ptr [ %1456, %1489 ], [ %1506, %1491 ]
  %1495 = phi i32 [ %1457, %1489 ], [ %1507, %1491 ]
  %1496 = phi i64 [ %1458, %1489 ], [ %1505, %1491 ]
  %1497 = phi i64 [ %1490, %1489 ], [ %1508, %1491 ]
  %1498 = load i8, ptr %1494, align 1, !tbaa !44
  %1499 = zext i8 %1498 to i64
  %1500 = shl i64 %1499, %1497
  %1501 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1496, i64 %1500), !nosanitize !47
  %1502 = extractvalue { i64, i1 } %1501, 1, !nosanitize !47
  br i1 %1502, label %1503, label %1504, !prof !48, !nosanitize !47

1503:                                             ; preds = %1493
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1504:                                             ; preds = %1493
  %1505 = extractvalue { i64, i1 } %1501, 0, !nosanitize !47
  %1506 = getelementptr inbounds nuw i8, ptr %1494, i64 1
  %1507 = add i32 %1495, -1
  %1508 = add nuw nsw i64 %1497, 8
  %1509 = trunc i64 %1505 to i32
  %1510 = and i32 %1509, %1477
  %1511 = zext nneg i32 %1510 to i64
  %1512 = getelementptr inbounds nuw [4 x i8], ptr %1478, i64 %1511
  %1513 = getelementptr inbounds nuw i8, ptr %1512, i64 1
  %1514 = load i8, ptr %1513, align 1, !tbaa !44
  %1515 = zext i8 %1514 to i64
  %1516 = icmp samesign ult i64 %1508, %1515
  br i1 %1516, label %1491, label %1517

1517:                                             ; preds = %1504
  %1518 = zext i8 %1514 to i32
  %1519 = trunc nuw nsw i64 %1508 to i32
  br label %1520

1520:                                             ; preds = %1517, %1474
  %1521 = phi ptr [ %1482, %1474 ], [ %1512, %1517 ]
  %1522 = phi ptr [ %1456, %1474 ], [ %1506, %1517 ]
  %1523 = phi i32 [ %1457, %1474 ], [ %1507, %1517 ]
  %1524 = phi i64 [ %1458, %1474 ], [ %1505, %1517 ]
  %1525 = phi i32 [ %1459, %1474 ], [ %1519, %1517 ]
  %1526 = phi i8 [ %1484, %1474 ], [ %1514, %1517 ]
  %1527 = phi i32 [ %1485, %1474 ], [ %1518, %1517 ]
  %1528 = getelementptr inbounds nuw i8, ptr %1521, i64 2
  %1529 = load i16, ptr %1528, align 2, !tbaa !77
  %1530 = load i8, ptr %1521, align 2, !tbaa !44
  %1531 = add i8 %1530, -1
  %1532 = icmp ult i8 %1531, 15
  br i1 %1532, label %1533, label %1599

1533:                                             ; preds = %1520
  %1534 = zext nneg i8 %1530 to i32
  %1535 = add nuw nsw i32 %1527, %1534
  %1536 = shl nsw i32 -1, %1535
  %1537 = xor i32 %1536, -1
  %1538 = zext i16 %1529 to i32
  %1539 = trunc i64 %1524 to i32
  %1540 = and i32 %1537, %1539
  %1541 = lshr i32 %1540, %1527
  %1542 = add nuw i32 %1541, %1538
  %1543 = zext i32 %1542 to i64
  %1544 = getelementptr inbounds nuw [4 x i8], ptr %1478, i64 %1543
  %1545 = getelementptr inbounds nuw i8, ptr %1544, i64 1
  %1546 = load i8, ptr %1545, align 1, !tbaa !44
  %1547 = zext i8 %1546 to i32
  %1548 = add nuw nsw i32 %1527, %1547
  %1549 = icmp ugt i32 %1548, %1525
  br i1 %1549, label %1550, label %1586

1550:                                             ; preds = %1533
  %1551 = icmp eq i32 %1523, 0
  br i1 %1551, label %.loopexit181, label %1552

1552:                                             ; preds = %1550
  %1553 = zext nneg i32 %1525 to i64
  br label %1556

1554:                                             ; preds = %1567
  %1555 = icmp eq i32 %1570, 0
  br i1 %1555, label %.loopexit181, label %1556

1556:                                             ; preds = %1554, %1552
  %1557 = phi ptr [ %1522, %1552 ], [ %1569, %1554 ]
  %1558 = phi i32 [ %1523, %1552 ], [ %1570, %1554 ]
  %1559 = phi i64 [ %1524, %1552 ], [ %1568, %1554 ]
  %1560 = phi i64 [ %1553, %1552 ], [ %1571, %1554 ]
  %1561 = load i8, ptr %1557, align 1, !tbaa !44
  %1562 = zext i8 %1561 to i64
  %1563 = shl i64 %1562, %1560
  %1564 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1559, i64 %1563), !nosanitize !47
  %1565 = extractvalue { i64, i1 } %1564, 1, !nosanitize !47
  br i1 %1565, label %1566, label %1567, !prof !48, !nosanitize !47

1566:                                             ; preds = %1556
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1567:                                             ; preds = %1556
  %1568 = extractvalue { i64, i1 } %1564, 0, !nosanitize !47
  %1569 = getelementptr inbounds nuw i8, ptr %1557, i64 1
  %1570 = add i32 %1558, -1
  %1571 = add nuw nsw i64 %1560, 8
  %1572 = trunc i64 %1568 to i32
  %1573 = and i32 %1572, %1537
  %1574 = lshr i32 %1573, %1527
  %1575 = add nuw i32 %1574, %1538
  %1576 = zext i32 %1575 to i64
  %1577 = getelementptr inbounds nuw [4 x i8], ptr %1478, i64 %1576
  %1578 = getelementptr inbounds nuw i8, ptr %1577, i64 1
  %1579 = load i8, ptr %1578, align 1, !tbaa !44
  %1580 = zext i8 %1579 to i32
  %1581 = add nuw nsw i32 %1527, %1580
  %1582 = zext nneg i32 %1581 to i64
  %1583 = icmp samesign ult i64 %1571, %1582
  br i1 %1583, label %1554, label %1584

1584:                                             ; preds = %1567
  %1585 = trunc nuw nsw i64 %1571 to i32
  br label %1586

1586:                                             ; preds = %1584, %1533
  %1587 = phi ptr [ %1544, %1533 ], [ %1577, %1584 ]
  %1588 = phi ptr [ %1522, %1533 ], [ %1569, %1584 ]
  %1589 = phi i32 [ %1523, %1533 ], [ %1570, %1584 ]
  %1590 = phi i64 [ %1524, %1533 ], [ %1568, %1584 ]
  %1591 = phi i32 [ %1525, %1533 ], [ %1585, %1584 ]
  %1592 = phi i8 [ %1546, %1533 ], [ %1579, %1584 ]
  %1593 = load i8, ptr %1587, align 2, !tbaa !44
  %1594 = getelementptr inbounds nuw i8, ptr %1587, i64 2
  %1595 = load i16, ptr %1594, align 2, !tbaa !77
  %1596 = sub nuw i32 %1591, %1527
  %1597 = zext nneg i8 %1526 to i64
  %1598 = lshr i64 %1590, %1597
  store i32 %1527, ptr %71, align 4, !tbaa !37
  br label %1599

1599:                                             ; preds = %1586, %1520
  %1600 = phi i32 [ %1527, %1586 ], [ 0, %1520 ]
  %1601 = phi ptr [ %1588, %1586 ], [ %1522, %1520 ]
  %1602 = phi i32 [ %1589, %1586 ], [ %1523, %1520 ]
  %1603 = phi i64 [ %1598, %1586 ], [ %1524, %1520 ]
  %1604 = phi i32 [ %1596, %1586 ], [ %1525, %1520 ]
  %1605 = phi i16 [ %1595, %1586 ], [ %1529, %1520 ]
  %1606 = phi i8 [ %1592, %1586 ], [ %1526, %1520 ]
  %1607 = phi i8 [ %1593, %1586 ], [ %1530, %1520 ]
  %1608 = zext i8 %1606 to i32
  %1609 = zext nneg i8 %1606 to i64
  %1610 = lshr i64 %1603, %1609
  %1611 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1604, i32 %1608), !nosanitize !47
  %1612 = extractvalue { i32, i1 } %1611, 0, !nosanitize !47
  %1613 = extractvalue { i32, i1 } %1611, 1, !nosanitize !47
  br i1 %1613, label %1614, label %1615, !prof !48, !nosanitize !47

1614:                                             ; preds = %1599
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1615:                                             ; preds = %1599
  %1616 = add nuw nsw i32 %1600, %1608
  store i32 %1616, ptr %71, align 4, !tbaa !37
  %1617 = zext i16 %1605 to i32
  store i32 %1617, ptr %56, align 4, !tbaa !61
  %1618 = zext i8 %1607 to i32
  %1619 = icmp eq i8 %1607, 0
  br i1 %1619, label %1620, label %1621

1620:                                             ; preds = %1615
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2330

1621:                                             ; preds = %1615
  %1622 = and i32 %1618, 32
  %1623 = icmp eq i32 %1622, 0
  br i1 %1623, label %1625, label %1624

1624:                                             ; preds = %1621
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2330

1625:                                             ; preds = %1621
  %1626 = and i32 %1618, 64
  %1627 = icmp eq i32 %1626, 0
  br i1 %1627, label %1629, label %1628

1628:                                             ; preds = %1625
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

1629:                                             ; preds = %1625
  %1630 = and i32 %1618, 15
  store i32 %1630, ptr %72, align 4, !tbaa !53
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1631

1631:                                             ; preds = %1629, %101
  %1632 = phi i32 [ %1630, %1629 ], [ %102, %101 ]
  %1633 = phi ptr [ %1601, %1629 ], [ %90, %101 ]
  %1634 = phi i32 [ %1602, %1629 ], [ %92, %101 ]
  %1635 = phi i64 [ %1610, %1629 ], [ %94, %101 ]
  %1636 = phi i32 [ %1612, %1629 ], [ %95, %101 ]
  %1637 = phi i32 [ %1460, %1629 ], [ %97, %101 ]
  %1638 = icmp eq i32 %1632, 0
  br i1 %1638, label %1695, label %1639

1639:                                             ; preds = %1631
  %1640 = icmp ult i32 %1636, %1632
  br i1 %1640, label %1641, label %.loopexit179

1641:                                             ; preds = %1639
  %1642 = icmp eq i32 %1634, 0
  br i1 %1642, label %.loopexit180, label %1643

1643:                                             ; preds = %1641
  %1644 = zext i32 %1636 to i64
  br label %1647

1645:                                             ; preds = %1664
  %1646 = icmp eq i32 %1652, 0
  br i1 %1646, label %.loopexit180, label %1647, !llvm.loop !91

1647:                                             ; preds = %1645, %1643
  %1648 = phi ptr [ %1633, %1643 ], [ %1653, %1645 ]
  %1649 = phi i32 [ %1634, %1643 ], [ %1652, %1645 ]
  %1650 = phi i64 [ %1635, %1643 ], [ %1658, %1645 ]
  %1651 = phi i64 [ %1644, %1643 ], [ %1665, %1645 ]
  %1652 = add i32 %1649, -1
  %1653 = getelementptr inbounds nuw i8, ptr %1648, i64 1
  %1654 = load i8, ptr %1648, align 1, !tbaa !44
  %1655 = zext i8 %1654 to i64
  %1656 = shl i64 %1655, %1651
  %1657 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1650, i64 %1656), !nosanitize !47
  %1658 = extractvalue { i64, i1 } %1657, 0, !nosanitize !47
  %1659 = extractvalue { i64, i1 } %1657, 1, !nosanitize !47
  br i1 %1659, label %1660, label %1661, !prof !48, !nosanitize !47

1660:                                             ; preds = %1647
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1661:                                             ; preds = %1647
  %1662 = icmp samesign ugt i64 %1651, 4294967287
  br i1 %1662, label %1663, label %1664, !prof !48, !nosanitize !47

1663:                                             ; preds = %1661
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1664:                                             ; preds = %1661
  %1665 = add nuw nsw i64 %1651, 8
  %1666 = trunc nuw i64 %1665 to i32
  %1667 = icmp ugt i32 %1632, %1666
  br i1 %1667, label %1645, label %.loopexit179, !llvm.loop !91

.loopexit179:                                     ; preds = %1664, %1639
  %1668 = phi ptr [ %1633, %1639 ], [ %1653, %1664 ]
  %1669 = phi i32 [ %1634, %1639 ], [ %1652, %1664 ]
  %1670 = phi i64 [ %1635, %1639 ], [ %1658, %1664 ]
  %1671 = phi i32 [ %1636, %1639 ], [ %1666, %1664 ]
  %1672 = shl nsw i32 -1, %1632
  %1673 = xor i32 %1672, -1
  %1674 = trunc i64 %1670 to i32
  %1675 = and i32 %1674, %1673
  %1676 = load i32, ptr %56, align 4, !tbaa !61
  %1677 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1676, i32 %1675), !nosanitize !47
  %1678 = extractvalue { i32, i1 } %1677, 1, !nosanitize !47
  br i1 %1678, label %1679, label %1680, !prof !48, !nosanitize !47

1679:                                             ; preds = %.loopexit179
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1680:                                             ; preds = %.loopexit179
  %1681 = extractvalue { i32, i1 } %1677, 0, !nosanitize !47
  store i32 %1681, ptr %56, align 4, !tbaa !61
  %1682 = zext nneg i32 %1632 to i64
  %1683 = lshr i64 %1670, %1682
  %1684 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1671, i32 %1632), !nosanitize !47
  %1685 = extractvalue { i32, i1 } %1684, 0, !nosanitize !47
  %1686 = extractvalue { i32, i1 } %1684, 1, !nosanitize !47
  br i1 %1686, label %1687, label %1688, !prof !48, !nosanitize !47

1687:                                             ; preds = %1680
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1688:                                             ; preds = %1680
  %1689 = load i32, ptr %71, align 4, !tbaa !37
  %1690 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1689, i32 %1632), !nosanitize !47
  %1691 = extractvalue { i32, i1 } %1690, 1, !nosanitize !47
  br i1 %1691, label %1692, label %1693, !prof !48, !nosanitize !47

1692:                                             ; preds = %1688
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1693:                                             ; preds = %1688
  %1694 = extractvalue { i32, i1 } %1690, 0, !nosanitize !47
  store i32 %1694, ptr %71, align 4, !tbaa !37
  br label %1695

1695:                                             ; preds = %1693, %1631
  %1696 = phi ptr [ %1668, %1693 ], [ %1633, %1631 ]
  %1697 = phi i32 [ %1669, %1693 ], [ %1634, %1631 ]
  %1698 = phi i64 [ %1683, %1693 ], [ %1635, %1631 ]
  %1699 = phi i32 [ %1685, %1693 ], [ %1636, %1631 ]
  %1700 = load i32, ptr %56, align 4, !tbaa !61
  store i32 %1700, ptr %73, align 8, !tbaa !92
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1701

1701:                                             ; preds = %1695, %88
  %1702 = phi ptr [ %1696, %1695 ], [ %90, %88 ]
  %1703 = phi i32 [ %1697, %1695 ], [ %92, %88 ]
  %1704 = phi i64 [ %1698, %1695 ], [ %94, %88 ]
  %1705 = phi i32 [ %1699, %1695 ], [ %95, %88 ]
  %1706 = phi i32 [ %1637, %1695 ], [ %97, %88 ]
  %1707 = load i32, ptr %69, align 4, !tbaa !90
  %1708 = shl nsw i32 -1, %1707
  %1709 = xor i32 %1708, -1
  %1710 = load ptr, ptr %64, align 8, !tbaa !34
  %1711 = trunc i64 %1704 to i32
  %1712 = and i32 %1709, %1711
  %1713 = zext nneg i32 %1712 to i64
  %1714 = getelementptr inbounds nuw [4 x i8], ptr %1710, i64 %1713
  %1715 = getelementptr inbounds nuw i8, ptr %1714, i64 1
  %1716 = load i8, ptr %1715, align 1, !tbaa !44
  %1717 = zext i8 %1716 to i32
  %1718 = icmp ult i32 %1705, %1717
  br i1 %1718, label %1719, label %1752

1719:                                             ; preds = %1701
  %1720 = icmp eq i32 %1703, 0
  br i1 %1720, label %.loopexit178, label %1721

1721:                                             ; preds = %1719
  %1722 = zext nneg i32 %1705 to i64
  br label %1725

1723:                                             ; preds = %1736
  %1724 = icmp eq i32 %1739, 0
  br i1 %1724, label %.loopexit178, label %1725

1725:                                             ; preds = %1723, %1721
  %1726 = phi ptr [ %1702, %1721 ], [ %1738, %1723 ]
  %1727 = phi i32 [ %1703, %1721 ], [ %1739, %1723 ]
  %1728 = phi i64 [ %1704, %1721 ], [ %1737, %1723 ]
  %1729 = phi i64 [ %1722, %1721 ], [ %1740, %1723 ]
  %1730 = load i8, ptr %1726, align 1, !tbaa !44
  %1731 = zext i8 %1730 to i64
  %1732 = shl i64 %1731, %1729
  %1733 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1728, i64 %1732), !nosanitize !47
  %1734 = extractvalue { i64, i1 } %1733, 1, !nosanitize !47
  br i1 %1734, label %1735, label %1736, !prof !48, !nosanitize !47

1735:                                             ; preds = %1725
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1736:                                             ; preds = %1725
  %1737 = extractvalue { i64, i1 } %1733, 0, !nosanitize !47
  %1738 = getelementptr inbounds nuw i8, ptr %1726, i64 1
  %1739 = add i32 %1727, -1
  %1740 = add nuw nsw i64 %1729, 8
  %1741 = trunc i64 %1737 to i32
  %1742 = and i32 %1741, %1709
  %1743 = zext nneg i32 %1742 to i64
  %1744 = getelementptr inbounds nuw [4 x i8], ptr %1710, i64 %1743
  %1745 = getelementptr inbounds nuw i8, ptr %1744, i64 1
  %1746 = load i8, ptr %1745, align 1, !tbaa !44
  %1747 = zext i8 %1746 to i64
  %1748 = icmp samesign ult i64 %1740, %1747
  br i1 %1748, label %1723, label %1749

1749:                                             ; preds = %1736
  %1750 = zext i8 %1746 to i32
  %1751 = trunc nuw nsw i64 %1740 to i32
  br label %1752

1752:                                             ; preds = %1749, %1701
  %1753 = phi ptr [ %1714, %1701 ], [ %1744, %1749 ]
  %1754 = phi ptr [ %1702, %1701 ], [ %1738, %1749 ]
  %1755 = phi i32 [ %1703, %1701 ], [ %1739, %1749 ]
  %1756 = phi i64 [ %1704, %1701 ], [ %1737, %1749 ]
  %1757 = phi i32 [ %1705, %1701 ], [ %1751, %1749 ]
  %1758 = phi i8 [ %1716, %1701 ], [ %1746, %1749 ]
  %1759 = phi i32 [ %1717, %1701 ], [ %1750, %1749 ]
  %1760 = getelementptr inbounds nuw i8, ptr %1753, i64 2
  %1761 = load i16, ptr %1760, align 2, !tbaa !77
  %1762 = load i8, ptr %1753, align 2, !tbaa !44
  %1763 = icmp ult i8 %1762, 16
  br i1 %1763, label %1764, label %1836

1764:                                             ; preds = %1752
  %1765 = zext nneg i8 %1762 to i32
  %1766 = add nuw nsw i32 %1759, %1765
  %1767 = shl nsw i32 -1, %1766
  %1768 = xor i32 %1767, -1
  %1769 = zext i16 %1761 to i32
  %1770 = trunc i64 %1756 to i32
  %1771 = and i32 %1768, %1770
  %1772 = lshr i32 %1771, %1759
  %1773 = add nuw i32 %1772, %1769
  %1774 = zext i32 %1773 to i64
  %1775 = getelementptr inbounds nuw [4 x i8], ptr %1710, i64 %1774
  %1776 = getelementptr inbounds nuw i8, ptr %1775, i64 1
  %1777 = load i8, ptr %1776, align 1, !tbaa !44
  %1778 = zext i8 %1777 to i32
  %1779 = add nuw nsw i32 %1759, %1778
  %1780 = icmp ugt i32 %1779, %1757
  br i1 %1780, label %1781, label %1818

1781:                                             ; preds = %1764
  %1782 = icmp eq i32 %1755, 0
  br i1 %1782, label %.loopexit177, label %1783

1783:                                             ; preds = %1781
  %1784 = zext nneg i32 %1757 to i64
  br label %1787

1785:                                             ; preds = %1799
  %1786 = icmp eq i32 %1802, 0
  br i1 %1786, label %.loopexit177, label %1787

1787:                                             ; preds = %1785, %1783
  %1788 = phi ptr [ %1754, %1783 ], [ %1801, %1785 ]
  %1789 = phi i32 [ %1755, %1783 ], [ %1802, %1785 ]
  %1790 = phi i64 [ %1756, %1783 ], [ %1800, %1785 ]
  %1791 = phi i64 [ %1784, %1783 ], [ %1803, %1785 ]
  %1792 = load i8, ptr %1788, align 1, !tbaa !44
  %1793 = zext i8 %1792 to i64
  %1794 = shl i64 %1793, %1791
  %1795 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1790, i64 %1794), !nosanitize !47
  %1796 = extractvalue { i64, i1 } %1795, 1, !nosanitize !47
  br i1 %1796, label %1797, label %1799, !prof !48, !nosanitize !47

1797:                                             ; preds = %1787
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1798:                                             ; preds = %1851, %1818
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1799:                                             ; preds = %1787
  %1800 = extractvalue { i64, i1 } %1795, 0, !nosanitize !47
  %1801 = getelementptr inbounds nuw i8, ptr %1788, i64 1
  %1802 = add i32 %1789, -1
  %1803 = add nuw nsw i64 %1791, 8
  %1804 = trunc i64 %1800 to i32
  %1805 = and i32 %1804, %1768
  %1806 = lshr i32 %1805, %1759
  %1807 = add nuw i32 %1806, %1769
  %1808 = zext i32 %1807 to i64
  %1809 = getelementptr inbounds nuw [4 x i8], ptr %1710, i64 %1808
  %1810 = getelementptr inbounds nuw i8, ptr %1809, i64 1
  %1811 = load i8, ptr %1810, align 1, !tbaa !44
  %1812 = zext i8 %1811 to i32
  %1813 = add nuw nsw i32 %1759, %1812
  %1814 = zext nneg i32 %1813 to i64
  %1815 = icmp samesign ult i64 %1803, %1814
  br i1 %1815, label %1785, label %1816

1816:                                             ; preds = %1799
  %1817 = trunc nuw nsw i64 %1803 to i32
  br label %1818

1818:                                             ; preds = %1816, %1764
  %1819 = phi ptr [ %1775, %1764 ], [ %1809, %1816 ]
  %1820 = phi ptr [ %1754, %1764 ], [ %1801, %1816 ]
  %1821 = phi i32 [ %1755, %1764 ], [ %1802, %1816 ]
  %1822 = phi i64 [ %1756, %1764 ], [ %1800, %1816 ]
  %1823 = phi i32 [ %1757, %1764 ], [ %1817, %1816 ]
  %1824 = phi i8 [ %1777, %1764 ], [ %1811, %1816 ]
  %1825 = load i32, ptr %71, align 4, !tbaa !37
  %1826 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1825, i32 %1759), !nosanitize !47
  %1827 = extractvalue { i32, i1 } %1826, 1, !nosanitize !47
  br i1 %1827, label %1798, label %1828, !prof !48, !nosanitize !47

1828:                                             ; preds = %1818
  %1829 = getelementptr inbounds nuw i8, ptr %1819, i64 2
  %1830 = load i16, ptr %1829, align 2, !tbaa !77
  %1831 = load i8, ptr %1819, align 2, !tbaa !44
  %1832 = sub nuw i32 %1823, %1759
  %1833 = zext nneg i8 %1758 to i64
  %1834 = lshr i64 %1822, %1833
  %1835 = extractvalue { i32, i1 } %1826, 0, !nosanitize !47
  store i32 %1835, ptr %71, align 4, !tbaa !37
  br label %1836

1836:                                             ; preds = %1828, %1752
  %1837 = phi ptr [ %1820, %1828 ], [ %1754, %1752 ]
  %1838 = phi i32 [ %1821, %1828 ], [ %1755, %1752 ]
  %1839 = phi i64 [ %1834, %1828 ], [ %1756, %1752 ]
  %1840 = phi i32 [ %1832, %1828 ], [ %1757, %1752 ]
  %1841 = phi i16 [ %1830, %1828 ], [ %1761, %1752 ]
  %1842 = phi i8 [ %1824, %1828 ], [ %1758, %1752 ]
  %1843 = phi i8 [ %1831, %1828 ], [ %1762, %1752 ]
  %1844 = zext i8 %1842 to i32
  %1845 = zext nneg i8 %1842 to i64
  %1846 = lshr i64 %1839, %1845
  %1847 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1840, i32 %1844), !nosanitize !47
  %1848 = extractvalue { i32, i1 } %1847, 0, !nosanitize !47
  %1849 = extractvalue { i32, i1 } %1847, 1, !nosanitize !47
  br i1 %1849, label %1850, label %1851, !prof !48, !nosanitize !47

1850:                                             ; preds = %1836
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1851:                                             ; preds = %1836
  %1852 = load i32, ptr %71, align 4, !tbaa !37
  %1853 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1852, i32 %1844), !nosanitize !47
  %1854 = extractvalue { i32, i1 } %1853, 1, !nosanitize !47
  br i1 %1854, label %1798, label %1855, !prof !48, !nosanitize !47

1855:                                             ; preds = %1851
  %1856 = extractvalue { i32, i1 } %1853, 0, !nosanitize !47
  store i32 %1856, ptr %71, align 4, !tbaa !37
  %1857 = zext i8 %1843 to i32
  %1858 = and i32 %1857, 64
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %1861, label %1860

1860:                                             ; preds = %1855
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

1861:                                             ; preds = %1855
  %1862 = zext i16 %1841 to i32
  store i32 %1862, ptr %74, align 8, !tbaa !93
  %1863 = and i32 %1857, 15
  store i32 %1863, ptr %72, align 4, !tbaa !53
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1864

1864:                                             ; preds = %1861, %99
  %1865 = phi i32 [ %1863, %1861 ], [ %100, %99 ]
  %1866 = phi ptr [ %1837, %1861 ], [ %90, %99 ]
  %1867 = phi i32 [ %1838, %1861 ], [ %92, %99 ]
  %1868 = phi i64 [ %1846, %1861 ], [ %94, %99 ]
  %1869 = phi i32 [ %1848, %1861 ], [ %95, %99 ]
  %1870 = phi i32 [ %1706, %1861 ], [ %97, %99 ]
  %1871 = icmp eq i32 %1865, 0
  br i1 %1871, label %1928, label %1872

1872:                                             ; preds = %1864
  %1873 = icmp ult i32 %1869, %1865
  br i1 %1873, label %1874, label %.loopexit175

1874:                                             ; preds = %1872
  %1875 = icmp eq i32 %1867, 0
  br i1 %1875, label %.loopexit176, label %1876

1876:                                             ; preds = %1874
  %1877 = zext i32 %1869 to i64
  br label %1880

1878:                                             ; preds = %1897
  %1879 = icmp eq i32 %1885, 0
  br i1 %1879, label %.loopexit176, label %1880, !llvm.loop !94

1880:                                             ; preds = %1878, %1876
  %1881 = phi ptr [ %1866, %1876 ], [ %1886, %1878 ]
  %1882 = phi i32 [ %1867, %1876 ], [ %1885, %1878 ]
  %1883 = phi i64 [ %1868, %1876 ], [ %1891, %1878 ]
  %1884 = phi i64 [ %1877, %1876 ], [ %1898, %1878 ]
  %1885 = add i32 %1882, -1
  %1886 = getelementptr inbounds nuw i8, ptr %1881, i64 1
  %1887 = load i8, ptr %1881, align 1, !tbaa !44
  %1888 = zext i8 %1887 to i64
  %1889 = shl i64 %1888, %1884
  %1890 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1883, i64 %1889), !nosanitize !47
  %1891 = extractvalue { i64, i1 } %1890, 0, !nosanitize !47
  %1892 = extractvalue { i64, i1 } %1890, 1, !nosanitize !47
  br i1 %1892, label %1893, label %1894, !prof !48, !nosanitize !47

1893:                                             ; preds = %1880
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1894:                                             ; preds = %1880
  %1895 = icmp samesign ugt i64 %1884, 4294967287
  br i1 %1895, label %1896, label %1897, !prof !48, !nosanitize !47

1896:                                             ; preds = %1894
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1897:                                             ; preds = %1894
  %1898 = add nuw nsw i64 %1884, 8
  %1899 = trunc nuw i64 %1898 to i32
  %1900 = icmp ugt i32 %1865, %1899
  br i1 %1900, label %1878, label %.loopexit175, !llvm.loop !94

.loopexit175:                                     ; preds = %1897, %1872
  %1901 = phi ptr [ %1866, %1872 ], [ %1886, %1897 ]
  %1902 = phi i32 [ %1867, %1872 ], [ %1885, %1897 ]
  %1903 = phi i64 [ %1868, %1872 ], [ %1891, %1897 ]
  %1904 = phi i32 [ %1869, %1872 ], [ %1899, %1897 ]
  %1905 = shl nsw i32 -1, %1865
  %1906 = xor i32 %1905, -1
  %1907 = trunc i64 %1903 to i32
  %1908 = and i32 %1907, %1906
  %1909 = load i32, ptr %74, align 8, !tbaa !93
  %1910 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1909, i32 %1908), !nosanitize !47
  %1911 = extractvalue { i32, i1 } %1910, 1, !nosanitize !47
  br i1 %1911, label %1912, label %1913, !prof !48, !nosanitize !47

1912:                                             ; preds = %.loopexit175
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1913:                                             ; preds = %.loopexit175
  %1914 = extractvalue { i32, i1 } %1910, 0, !nosanitize !47
  store i32 %1914, ptr %74, align 8, !tbaa !93
  %1915 = zext nneg i32 %1865 to i64
  %1916 = lshr i64 %1903, %1915
  %1917 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1904, i32 %1865), !nosanitize !47
  %1918 = extractvalue { i32, i1 } %1917, 0, !nosanitize !47
  %1919 = extractvalue { i32, i1 } %1917, 1, !nosanitize !47
  br i1 %1919, label %1920, label %1921, !prof !48, !nosanitize !47

1920:                                             ; preds = %1913
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1921:                                             ; preds = %1913
  %1922 = load i32, ptr %71, align 4, !tbaa !37
  %1923 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1922, i32 %1865), !nosanitize !47
  %1924 = extractvalue { i32, i1 } %1923, 1, !nosanitize !47
  br i1 %1924, label %1925, label %1926, !prof !48, !nosanitize !47

1925:                                             ; preds = %1921
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1926:                                             ; preds = %1921
  %1927 = extractvalue { i32, i1 } %1923, 0, !nosanitize !47
  store i32 %1927, ptr %71, align 4, !tbaa !37
  br label %1928

1928:                                             ; preds = %1926, %1864
  %1929 = phi ptr [ %1901, %1926 ], [ %1866, %1864 ]
  %1930 = phi i32 [ %1902, %1926 ], [ %1867, %1864 ]
  %1931 = phi i64 [ %1916, %1926 ], [ %1868, %1864 ]
  %1932 = phi i32 [ %1918, %1926 ], [ %1869, %1864 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1933

1933:                                             ; preds = %1928, %88
  %1934 = phi ptr [ %1929, %1928 ], [ %90, %88 ]
  %1935 = phi i32 [ %1930, %1928 ], [ %92, %88 ]
  %1936 = phi i64 [ %1931, %1928 ], [ %94, %88 ]
  %1937 = phi i32 [ %1932, %1928 ], [ %95, %88 ]
  %1938 = phi i32 [ %1870, %1928 ], [ %97, %88 ]
  %1939 = icmp eq i32 %93, 0
  br i1 %1939, label %.loopexit185, label %1940

1940:                                             ; preds = %1933
  %1941 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %1942 = extractvalue { i32, i1 } %1941, 0, !nosanitize !47
  %1943 = extractvalue { i32, i1 } %1941, 1, !nosanitize !47
  br i1 %1943, label %1944, label %1945, !prof !48, !nosanitize !47

1944:                                             ; preds = %1940
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1945:                                             ; preds = %1940
  %1946 = load i32, ptr %74, align 8, !tbaa !93
  %1947 = icmp ugt i32 %1946, %1942
  br i1 %1947, label %1948, label %1977

1948:                                             ; preds = %1945
  %1949 = sub nuw i32 %1946, %1942
  %1950 = load i32, ptr %75, align 8, !tbaa !39
  %1951 = icmp ugt i32 %1949, %1950
  br i1 %1951, label %1952, label %1956

1952:                                             ; preds = %1948
  %1953 = load i32, ptr %76, align 8, !tbaa !36
  %1954 = icmp eq i32 %1953, 0
  br i1 %1954, label %1956, label %1955

1955:                                             ; preds = %1952
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

1956:                                             ; preds = %1952, %1948
  %1957 = load i32, ptr %77, align 4, !tbaa !40
  %1958 = icmp ugt i32 %1949, %1957
  br i1 %1958, label %1959, label %1967

1959:                                             ; preds = %1956
  %1960 = sub nuw i32 %1949, %1957
  %1961 = load i32, ptr %79, align 4, !tbaa !38
  %1962 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1961, i32 %1960), !nosanitize !47
  %1963 = extractvalue { i32, i1 } %1962, 1, !nosanitize !47
  br i1 %1963, label %1964, label %1965, !prof !48, !nosanitize !47

1964:                                             ; preds = %1959
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1965:                                             ; preds = %1959
  %1966 = extractvalue { i32, i1 } %1962, 0, !nosanitize !47
  br label %1969

1967:                                             ; preds = %1956
  %1968 = sub nuw i32 %1957, %1949
  br label %1969

1969:                                             ; preds = %1967, %1965
  %1970 = phi i32 [ %1968, %1967 ], [ %1966, %1965 ]
  %1971 = phi i32 [ %1949, %1967 ], [ %1960, %1965 ]
  %1972 = load ptr, ptr %78, align 8, !tbaa !41
  %1973 = zext i32 %1970 to i64
  %1974 = getelementptr inbounds nuw i8, ptr %1972, i64 %1973
  %1975 = load i32, ptr %56, align 4, !tbaa !61
  %1976 = call i32 @llvm.umin.i32(i32 %1971, i32 %1975)
  br label %1982

1977:                                             ; preds = %1945
  %1978 = zext i32 %1946 to i64
  %1979 = sub nsw i64 0, %1978
  %1980 = getelementptr inbounds i8, ptr %91, i64 %1979
  %1981 = load i32, ptr %56, align 4, !tbaa !61
  br label %1982

1982:                                             ; preds = %1977, %1969
  %1983 = phi i32 [ %1981, %1977 ], [ %1975, %1969 ]
  %1984 = phi i32 [ %1981, %1977 ], [ %1976, %1969 ]
  %1985 = phi ptr [ %1980, %1977 ], [ %1974, %1969 ]
  %1986 = ptrtoaddr ptr %1985 to i64
  %1987 = call i32 @llvm.umin.i32(i32 %1984, i32 %93)
  %1988 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %1987), !nosanitize !47
  %1989 = extractvalue { i32, i1 } %1988, 0, !nosanitize !47
  %1990 = extractvalue { i32, i1 } %1988, 1, !nosanitize !47
  br i1 %1990, label %1991, label %1992, !prof !48, !nosanitize !47

1991:                                             ; preds = %1982
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1992:                                             ; preds = %1982
  %1993 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1983, i32 %1987), !nosanitize !47
  %1994 = extractvalue { i32, i1 } %1993, 1, !nosanitize !47
  br i1 %1994, label %1995, label %1996, !prof !48, !nosanitize !47

1995:                                             ; preds = %1992
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1996:                                             ; preds = %1992
  %1997 = extractvalue { i32, i1 } %1993, 0, !nosanitize !47
  store i32 %1997, ptr %56, align 4, !tbaa !61
  %1998 = icmp eq i32 %1987, 0
  br i1 %1998, label %2065, label %1999, !prof !48, !nosanitize !47

1999:                                             ; preds = %1996
  %2000 = zext i32 %1987 to i64
  %2001 = icmp ult i32 %1987, 4
  %2002 = sub i64 %98, %1986
  %2003 = icmp ult i64 %2002, 32
  %2004 = select i1 %2001, i1 true, i1 %2003
  br i1 %2004, label %2044, label %2005

2005:                                             ; preds = %1999
  %2006 = icmp ult i32 %1987, 32
  br i1 %2006, label %2028, label %2007

2007:                                             ; preds = %2005
  %2008 = and i64 %2000, 4294967264
  br label %2009

2009:                                             ; preds = %2009, %2007
  %2010 = phi i64 [ 0, %2007 ], [ %2017, %2009 ]
  %2011 = getelementptr i8, ptr %91, i64 %2010
  %2012 = getelementptr i8, ptr %1985, i64 %2010
  %2013 = getelementptr i8, ptr %2012, i64 16
  %2014 = load <16 x i8>, ptr %2012, align 1, !tbaa !44
  %2015 = load <16 x i8>, ptr %2013, align 1, !tbaa !44
  %2016 = getelementptr i8, ptr %2011, i64 16
  store <16 x i8> %2014, ptr %2011, align 1, !tbaa !44
  store <16 x i8> %2015, ptr %2016, align 1, !tbaa !44
  %2017 = add nuw i64 %2010, 32
  %2018 = icmp eq i64 %2017, %2008
  br i1 %2018, label %2019, label %2009, !llvm.loop !95

2019:                                             ; preds = %2009
  %2020 = getelementptr i8, ptr %91, i64 %2008
  %2021 = icmp eq i64 %2008, %2000
  br i1 %2021, label %.loopexit172, label %2022

2022:                                             ; preds = %2019
  %2023 = getelementptr i8, ptr %1985, i64 %2008
  %2024 = trunc nuw i64 %2008 to i32
  %2025 = sub i32 %1987, %2024
  %2026 = and i64 %2000, 28
  %2027 = icmp eq i64 %2026, 0
  br i1 %2027, label %2044, label %2028, !prof !98

2028:                                             ; preds = %2022, %2005
  %2029 = phi i64 [ %2008, %2022 ], [ 0, %2005 ]
  %2030 = and i64 %2000, 4294967292
  br label %2031

2031:                                             ; preds = %2031, %2028
  %2032 = phi i64 [ %2029, %2028 ], [ %2036, %2031 ]
  %2033 = getelementptr i8, ptr %91, i64 %2032
  %2034 = getelementptr i8, ptr %1985, i64 %2032
  %2035 = load <4 x i8>, ptr %2034, align 1, !tbaa !44
  store <4 x i8> %2035, ptr %2033, align 1, !tbaa !44
  %2036 = add nuw i64 %2032, 4
  %2037 = icmp eq i64 %2036, %2030
  br i1 %2037, label %2038, label %2031, !llvm.loop !99

2038:                                             ; preds = %2031
  %2039 = getelementptr i8, ptr %91, i64 %2030
  %2040 = trunc nuw i64 %2030 to i32
  %2041 = sub i32 %1987, %2040
  %2042 = getelementptr i8, ptr %1985, i64 %2030
  %2043 = icmp eq i64 %2030, %2000
  br i1 %2043, label %.loopexit172, label %2044

2044:                                             ; preds = %2038, %2022, %1999
  %2045 = phi ptr [ %91, %1999 ], [ %2020, %2022 ], [ %2039, %2038 ]
  %2046 = phi i32 [ %1987, %1999 ], [ %2025, %2022 ], [ %2041, %2038 ]
  %2047 = phi ptr [ %1985, %1999 ], [ %2023, %2022 ], [ %2042, %2038 ]
  %2048 = add i32 %2046, -1
  %2049 = and i32 %2046, 7
  %2050 = icmp eq i32 %2049, 0
  br i1 %2050, label %.loopexit174, label %.preheader173

.preheader173:                                    ; preds = %2044, %.preheader173
  %2051 = phi ptr [ %2055, %.preheader173 ], [ %2045, %2044 ]
  %2052 = phi ptr [ %2056, %.preheader173 ], [ %2047, %2044 ]
  %2053 = phi i32 [ %2057, %.preheader173 ], [ 0, %2044 ]
  %2054 = load i8, ptr %2052, align 1, !tbaa !44
  store i8 %2054, ptr %2051, align 1, !tbaa !44
  %2055 = getelementptr inbounds nuw i8, ptr %2051, i64 1
  %2056 = getelementptr inbounds nuw i8, ptr %2052, i64 1
  %2057 = add nuw nsw i32 %2053, 1
  %2058 = icmp eq i32 %2057, %2049
  br i1 %2058, label %.loopexit174.loopexit, label %.preheader173, !llvm.loop !100

.loopexit174.loopexit:                            ; preds = %.preheader173
  %2059 = and i32 %2046, -8
  br label %.loopexit174

.loopexit174:                                     ; preds = %.loopexit174.loopexit, %2044
  %2060 = phi ptr [ poison, %2044 ], [ %2055, %.loopexit174.loopexit ]
  %2061 = phi ptr [ %2045, %2044 ], [ %2055, %.loopexit174.loopexit ]
  %2062 = phi i32 [ %2046, %2044 ], [ %2059, %.loopexit174.loopexit ]
  %2063 = phi ptr [ %2047, %2044 ], [ %2056, %.loopexit174.loopexit ]
  %2064 = icmp ult i32 %2048, 7
  br i1 %2064, label %.loopexit172, label %.preheader171

2065:                                             ; preds = %1996
  %2066 = load i8, ptr %1985, align 1, !tbaa !44
  store i8 %2066, ptr %91, align 1, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

.preheader171:                                    ; preds = %.loopexit174, %.preheader171
  %2067 = phi ptr [ %2092, %.preheader171 ], [ %2061, %.loopexit174 ]
  %2068 = phi i32 [ %2093, %.preheader171 ], [ %2062, %.loopexit174 ]
  %2069 = phi ptr [ %2094, %.preheader171 ], [ %2063, %.loopexit174 ]
  %2070 = load i8, ptr %2069, align 1, !tbaa !44
  store i8 %2070, ptr %2067, align 1, !tbaa !44
  %2071 = getelementptr inbounds nuw i8, ptr %2067, i64 1
  %2072 = getelementptr inbounds nuw i8, ptr %2069, i64 1
  %2073 = load i8, ptr %2072, align 1, !tbaa !44
  store i8 %2073, ptr %2071, align 1, !tbaa !44
  %2074 = getelementptr inbounds nuw i8, ptr %2067, i64 2
  %2075 = getelementptr inbounds nuw i8, ptr %2069, i64 2
  %2076 = load i8, ptr %2075, align 1, !tbaa !44
  store i8 %2076, ptr %2074, align 1, !tbaa !44
  %2077 = getelementptr inbounds nuw i8, ptr %2067, i64 3
  %2078 = getelementptr inbounds nuw i8, ptr %2069, i64 3
  %2079 = load i8, ptr %2078, align 1, !tbaa !44
  store i8 %2079, ptr %2077, align 1, !tbaa !44
  %2080 = getelementptr inbounds nuw i8, ptr %2067, i64 4
  %2081 = getelementptr inbounds nuw i8, ptr %2069, i64 4
  %2082 = load i8, ptr %2081, align 1, !tbaa !44
  store i8 %2082, ptr %2080, align 1, !tbaa !44
  %2083 = getelementptr inbounds nuw i8, ptr %2067, i64 5
  %2084 = getelementptr inbounds nuw i8, ptr %2069, i64 5
  %2085 = load i8, ptr %2084, align 1, !tbaa !44
  store i8 %2085, ptr %2083, align 1, !tbaa !44
  %2086 = getelementptr inbounds nuw i8, ptr %2067, i64 6
  %2087 = getelementptr inbounds nuw i8, ptr %2069, i64 6
  %2088 = load i8, ptr %2087, align 1, !tbaa !44
  store i8 %2088, ptr %2086, align 1, !tbaa !44
  %2089 = getelementptr inbounds nuw i8, ptr %2067, i64 7
  %2090 = getelementptr inbounds nuw i8, ptr %2069, i64 7
  %2091 = load i8, ptr %2090, align 1, !tbaa !44
  store i8 %2091, ptr %2089, align 1, !tbaa !44
  %2092 = getelementptr inbounds nuw i8, ptr %2067, i64 8
  %2093 = add i32 %2068, -8
  %2094 = getelementptr inbounds nuw i8, ptr %2069, i64 8
  %2095 = icmp eq i32 %2093, 0
  br i1 %2095, label %.loopexit172, label %.preheader171, !llvm.loop !102

.loopexit172:                                     ; preds = %.preheader171, %.loopexit174, %2038, %2019
  %2096 = phi ptr [ %2039, %2038 ], [ %2020, %2019 ], [ %2060, %.loopexit174 ], [ %2092, %.preheader171 ]
  %2097 = load i32, ptr %56, align 4, !tbaa !61
  %2098 = icmp eq i32 %2097, 0
  br i1 %2098, label %2099, label %2330

2099:                                             ; preds = %.loopexit172
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2330

2100:                                             ; preds = %88
  %2101 = icmp eq i32 %93, 0
  br i1 %2101, label %.loopexit185, label %2102

2102:                                             ; preds = %2100
  %2103 = load i32, ptr %56, align 4, !tbaa !61
  %2104 = trunc i32 %2103 to i8
  store i8 %2104, ptr %91, align 1, !tbaa !44
  %2105 = add i32 %93, -1
  %2106 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2330

2107:                                             ; preds = %88
  %2108 = load i32, ptr %49, align 8, !tbaa !24
  %2109 = icmp eq i32 %2108, 0
  br i1 %2109, label %2230, label %2110

2110:                                             ; preds = %2107
  %2111 = icmp ult i32 %95, 32
  br i1 %2111, label %2112, label %2175

2112:                                             ; preds = %2110
  %2113 = zext nneg i32 %95 to i64
  %2114 = icmp eq i32 %92, 0
  br i1 %2114, label %2450, label %2115

2115:                                             ; preds = %2112
  %2116 = load i8, ptr %90, align 1, !tbaa !44
  %2117 = zext i8 %2116 to i64
  %2118 = shl nuw nsw i64 %2117, %2113
  %2119 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %2118), !nosanitize !47
  %2120 = extractvalue { i64, i1 } %2119, 1, !nosanitize !47
  br i1 %2120, label %2121, label %2122, !prof !48, !nosanitize !47

2121:                                             ; preds = %2158, %2144, %2130, %2115
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2122:                                             ; preds = %2115
  %2123 = extractvalue { i64, i1 } %2119, 0, !nosanitize !47
  %2124 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %2125 = add i32 %92, -1
  %2126 = add nuw nsw i64 %2113, 8
  %2127 = icmp samesign ult i32 %95, 24
  br i1 %2127, label %2128, label %2169

2128:                                             ; preds = %2122
  %2129 = icmp eq i32 %2125, 0
  br i1 %2129, label %2450, label %2130

2130:                                             ; preds = %2128
  %2131 = load i8, ptr %2124, align 1, !tbaa !44
  %2132 = zext i8 %2131 to i64
  %2133 = shl nuw nsw i64 %2132, %2126
  %2134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2123, i64 %2133), !nosanitize !47
  %2135 = extractvalue { i64, i1 } %2134, 1, !nosanitize !47
  br i1 %2135, label %2121, label %2136, !prof !48, !nosanitize !47

2136:                                             ; preds = %2130
  %2137 = extractvalue { i64, i1 } %2134, 0, !nosanitize !47
  %2138 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %2139 = add i32 %92, -2
  %2140 = add nuw nsw i64 %2113, 16
  %2141 = icmp samesign ult i32 %95, 16
  br i1 %2141, label %2142, label %2169

2142:                                             ; preds = %2136
  %2143 = icmp eq i32 %2139, 0
  br i1 %2143, label %2450, label %2144

2144:                                             ; preds = %2142
  %2145 = load i8, ptr %2138, align 1, !tbaa !44
  %2146 = zext i8 %2145 to i64
  %2147 = shl nuw nsw i64 %2146, %2140
  %2148 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2137, i64 %2147), !nosanitize !47
  %2149 = extractvalue { i64, i1 } %2148, 1, !nosanitize !47
  br i1 %2149, label %2121, label %2150, !prof !48, !nosanitize !47

2150:                                             ; preds = %2144
  %2151 = extractvalue { i64, i1 } %2148, 0, !nosanitize !47
  %2152 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %2153 = add i32 %92, -3
  %2154 = add nuw nsw i64 %2113, 24
  %2155 = icmp samesign ult i32 %95, 8
  br i1 %2155, label %2156, label %2169

2156:                                             ; preds = %2150
  %2157 = icmp eq i32 %2153, 0
  br i1 %2157, label %2450, label %2158

2158:                                             ; preds = %2156
  %2159 = load i8, ptr %2152, align 1, !tbaa !44
  %2160 = zext i8 %2159 to i64
  %2161 = shl nuw nsw i64 %2160, %2154
  %2162 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2151, i64 %2161), !nosanitize !47
  %2163 = extractvalue { i64, i1 } %2162, 1, !nosanitize !47
  br i1 %2163, label %2121, label %2164, !prof !48, !nosanitize !47

2164:                                             ; preds = %2158
  %2165 = extractvalue { i64, i1 } %2162, 0, !nosanitize !47
  %2166 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %2167 = add i32 %92, -4
  %2168 = or disjoint i64 %2113, 32
  br label %2169

2169:                                             ; preds = %2164, %2150, %2136, %2122
  %2170 = phi i64 [ %2123, %2122 ], [ %2137, %2136 ], [ %2151, %2150 ], [ %2165, %2164 ]
  %2171 = phi ptr [ %2124, %2122 ], [ %2138, %2136 ], [ %2152, %2150 ], [ %2166, %2164 ]
  %2172 = phi i32 [ %2125, %2122 ], [ %2139, %2136 ], [ %2153, %2150 ], [ %2167, %2164 ]
  %2173 = phi i64 [ %2126, %2122 ], [ %2140, %2136 ], [ %2154, %2150 ], [ %2168, %2164 ]
  %2174 = trunc nuw nsw i64 %2173 to i32
  br label %2175

2175:                                             ; preds = %2169, %2110
  %2176 = phi ptr [ %90, %2110 ], [ %2171, %2169 ]
  %2177 = phi i32 [ %92, %2110 ], [ %2172, %2169 ]
  %2178 = phi i64 [ %94, %2110 ], [ %2170, %2169 ]
  %2179 = phi i32 [ %95, %2110 ], [ %2174, %2169 ]
  %2180 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %2181 = extractvalue { i32, i1 } %2180, 0, !nosanitize !47
  %2182 = extractvalue { i32, i1 } %2180, 1, !nosanitize !47
  br i1 %2182, label %2183, label %2184, !prof !48, !nosanitize !47

2183:                                             ; preds = %2175
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2184:                                             ; preds = %2175
  %2185 = zext i32 %2181 to i64
  %2186 = load i64, ptr %50, align 8, !tbaa !103
  %2187 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2186, i64 %2185), !nosanitize !47
  %2188 = extractvalue { i64, i1 } %2187, 1, !nosanitize !47
  br i1 %2188, label %2189, label %2190, !prof !48, !nosanitize !47

2189:                                             ; preds = %2184
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2190:                                             ; preds = %2184
  %2191 = extractvalue { i64, i1 } %2187, 0, !nosanitize !47
  store i64 %2191, ptr %50, align 8, !tbaa !103
  %2192 = load i64, ptr %51, align 8, !tbaa !21
  %2193 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2192, i64 %2185), !nosanitize !47
  %2194 = extractvalue { i64, i1 } %2193, 1, !nosanitize !47
  br i1 %2194, label %2195, label %2196, !prof !48, !nosanitize !47

2195:                                             ; preds = %2190
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2196:                                             ; preds = %2190
  %2197 = extractvalue { i64, i1 } %2193, 0, !nosanitize !47
  store i64 %2197, ptr %51, align 8, !tbaa !21
  %2198 = and i32 %2108, 4
  %2199 = icmp ne i32 %2198, 0
  %2200 = icmp ne i32 %2181, 0
  %2201 = select i1 %2199, i1 %2200, i1 false
  br i1 %2201, label %2202, label %2216

2202:                                             ; preds = %2196
  %2203 = load i32, ptr %52, align 8, !tbaa !28
  %2204 = icmp eq i32 %2203, 0
  %2205 = load i64, ptr %53, align 8, !tbaa !54
  %2206 = sub nsw i64 0, %2185
  %2207 = getelementptr inbounds i8, ptr %91, i64 %2206
  br i1 %2204, label %2210, label %2208

2208:                                             ; preds = %2202
  %2209 = call i64 @crc32(i64 noundef %2205, ptr noundef nonnull %2207, i32 noundef %2181) #12
  br label %2212

2210:                                             ; preds = %2202
  %2211 = call i64 @adler32(i64 noundef %2205, ptr noundef nonnull %2207, i32 noundef %2181) #12
  br label %2212

2212:                                             ; preds = %2210, %2208
  %2213 = phi i64 [ %2209, %2208 ], [ %2211, %2210 ]
  store i64 %2213, ptr %53, align 8, !tbaa !54
  store i64 %2213, ptr %54, align 8, !tbaa !25
  %2214 = load i32, ptr %49, align 8, !tbaa !24
  %2215 = and i32 %2214, 4
  br label %2216

2216:                                             ; preds = %2212, %2196
  %2217 = phi i32 [ %2215, %2212 ], [ %2198, %2196 ]
  %2218 = phi i32 [ %2214, %2212 ], [ %2108, %2196 ]
  %2219 = icmp eq i32 %2217, 0
  br i1 %2219, label %2230, label %2220

2220:                                             ; preds = %2216
  %2221 = load i32, ptr %52, align 8, !tbaa !28
  %2222 = icmp eq i32 %2221, 0
  %2223 = trunc i64 %2178 to i32
  %2224 = call i32 @llvm.bswap.i32(i32 %2223)
  %2225 = zext i32 %2224 to i64
  %2226 = select i1 %2222, i64 %2225, i64 %2178
  %2227 = load i64, ptr %53, align 8, !tbaa !54
  %2228 = icmp eq i64 %2226, %2227
  br i1 %2228, label %2230, label %2229

2229:                                             ; preds = %2220
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

2230:                                             ; preds = %2220, %2216, %2107
  %2231 = phi i32 [ 0, %2107 ], [ %2218, %2216 ], [ %2218, %2220 ]
  %2232 = phi ptr [ %90, %2107 ], [ %2176, %2216 ], [ %2176, %2220 ]
  %2233 = phi i32 [ %92, %2107 ], [ %2177, %2216 ], [ %2177, %2220 ]
  %2234 = phi i64 [ %94, %2107 ], [ 0, %2216 ], [ 0, %2220 ]
  %2235 = phi i32 [ %95, %2107 ], [ 0, %2216 ], [ 0, %2220 ]
  %2236 = phi i32 [ %96, %2107 ], [ %93, %2216 ], [ %93, %2220 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2237

2237:                                             ; preds = %2230, %103
  %2238 = phi i32 [ %2231, %2230 ], [ %104, %103 ]
  %2239 = phi ptr [ %2232, %2230 ], [ %90, %103 ]
  %2240 = phi i32 [ %2233, %2230 ], [ %92, %103 ]
  %2241 = phi i64 [ %2234, %2230 ], [ %94, %103 ]
  %2242 = phi i32 [ %2235, %2230 ], [ %95, %103 ]
  %2243 = phi i32 [ %2236, %2230 ], [ %96, %103 ]
  %2244 = icmp eq i32 %2238, 0
  br i1 %2244, label %2325, label %2245

2245:                                             ; preds = %2237
  %2246 = load i32, ptr %52, align 8, !tbaa !28
  %2247 = icmp eq i32 %2246, 0
  br i1 %2247, label %2325, label %2248

2248:                                             ; preds = %2245
  %2249 = icmp ult i32 %2242, 32
  br i1 %2249, label %2250, label %2313

2250:                                             ; preds = %2248
  %2251 = zext nneg i32 %2242 to i64
  %2252 = icmp eq i32 %2240, 0
  br i1 %2252, label %2444, label %2253

2253:                                             ; preds = %2250
  %2254 = load i8, ptr %2239, align 1, !tbaa !44
  %2255 = zext i8 %2254 to i64
  %2256 = shl nuw nsw i64 %2255, %2251
  %2257 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2241, i64 %2256), !nosanitize !47
  %2258 = extractvalue { i64, i1 } %2257, 1, !nosanitize !47
  br i1 %2258, label %2259, label %2260, !prof !48, !nosanitize !47

2259:                                             ; preds = %2296, %2282, %2268, %2253
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2260:                                             ; preds = %2253
  %2261 = extractvalue { i64, i1 } %2257, 0, !nosanitize !47
  %2262 = getelementptr inbounds nuw i8, ptr %2239, i64 1
  %2263 = add i32 %2240, -1
  %2264 = add nuw nsw i64 %2251, 8
  %2265 = icmp samesign ult i32 %2242, 24
  br i1 %2265, label %2266, label %2307

2266:                                             ; preds = %2260
  %2267 = icmp eq i32 %2263, 0
  br i1 %2267, label %2444, label %2268

2268:                                             ; preds = %2266
  %2269 = load i8, ptr %2262, align 1, !tbaa !44
  %2270 = zext i8 %2269 to i64
  %2271 = shl nuw nsw i64 %2270, %2264
  %2272 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2261, i64 %2271), !nosanitize !47
  %2273 = extractvalue { i64, i1 } %2272, 1, !nosanitize !47
  br i1 %2273, label %2259, label %2274, !prof !48, !nosanitize !47

2274:                                             ; preds = %2268
  %2275 = extractvalue { i64, i1 } %2272, 0, !nosanitize !47
  %2276 = getelementptr inbounds nuw i8, ptr %2239, i64 2
  %2277 = add i32 %2240, -2
  %2278 = add nuw nsw i64 %2251, 16
  %2279 = icmp samesign ult i32 %2242, 16
  br i1 %2279, label %2280, label %2307

2280:                                             ; preds = %2274
  %2281 = icmp eq i32 %2277, 0
  br i1 %2281, label %2444, label %2282

2282:                                             ; preds = %2280
  %2283 = load i8, ptr %2276, align 1, !tbaa !44
  %2284 = zext i8 %2283 to i64
  %2285 = shl nuw nsw i64 %2284, %2278
  %2286 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2275, i64 %2285), !nosanitize !47
  %2287 = extractvalue { i64, i1 } %2286, 1, !nosanitize !47
  br i1 %2287, label %2259, label %2288, !prof !48, !nosanitize !47

2288:                                             ; preds = %2282
  %2289 = extractvalue { i64, i1 } %2286, 0, !nosanitize !47
  %2290 = getelementptr inbounds nuw i8, ptr %2239, i64 3
  %2291 = add i32 %2240, -3
  %2292 = add nuw nsw i64 %2251, 24
  %2293 = icmp samesign ult i32 %2242, 8
  br i1 %2293, label %2294, label %2307

2294:                                             ; preds = %2288
  %2295 = icmp eq i32 %2291, 0
  br i1 %2295, label %2444, label %2296

2296:                                             ; preds = %2294
  %2297 = load i8, ptr %2290, align 1, !tbaa !44
  %2298 = zext i8 %2297 to i64
  %2299 = shl nuw nsw i64 %2298, %2292
  %2300 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2289, i64 %2299), !nosanitize !47
  %2301 = extractvalue { i64, i1 } %2300, 1, !nosanitize !47
  br i1 %2301, label %2259, label %2302, !prof !48, !nosanitize !47

2302:                                             ; preds = %2296
  %2303 = extractvalue { i64, i1 } %2300, 0, !nosanitize !47
  %2304 = getelementptr inbounds nuw i8, ptr %2239, i64 4
  %2305 = add i32 %2240, -4
  %2306 = or disjoint i64 %2251, 32
  br label %2307

2307:                                             ; preds = %2302, %2288, %2274, %2260
  %2308 = phi i64 [ %2261, %2260 ], [ %2275, %2274 ], [ %2289, %2288 ], [ %2303, %2302 ]
  %2309 = phi ptr [ %2262, %2260 ], [ %2276, %2274 ], [ %2290, %2288 ], [ %2304, %2302 ]
  %2310 = phi i32 [ %2263, %2260 ], [ %2277, %2274 ], [ %2291, %2288 ], [ %2305, %2302 ]
  %2311 = phi i64 [ %2264, %2260 ], [ %2278, %2274 ], [ %2292, %2288 ], [ %2306, %2302 ]
  %2312 = trunc nuw nsw i64 %2311 to i32
  br label %2313

2313:                                             ; preds = %2307, %2248
  %2314 = phi ptr [ %2239, %2248 ], [ %2309, %2307 ]
  %2315 = phi i32 [ %2240, %2248 ], [ %2310, %2307 ]
  %2316 = phi i64 [ %2241, %2248 ], [ %2308, %2307 ]
  %2317 = phi i32 [ %2242, %2248 ], [ %2312, %2307 ]
  %2318 = and i32 %2238, 4
  %2319 = icmp eq i32 %2318, 0
  br i1 %2319, label %2325, label %2320

2320:                                             ; preds = %2313
  %2321 = load i64, ptr %51, align 8, !tbaa !21
  %2322 = and i64 %2321, 4294967295
  %2323 = icmp eq i64 %2316, %2322
  br i1 %2323, label %2325, label %2324

2324:                                             ; preds = %2320
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2330

2325:                                             ; preds = %2320, %2313, %2245, %2237
  %2326 = phi ptr [ %2239, %2237 ], [ %2239, %2245 ], [ %2314, %2313 ], [ %2314, %2320 ]
  %2327 = phi i32 [ %2240, %2237 ], [ %2240, %2245 ], [ %2315, %2313 ], [ %2315, %2320 ]
  %2328 = phi i64 [ %2241, %2237 ], [ %2241, %2245 ], [ 0, %2313 ], [ 0, %2320 ]
  %2329 = phi i32 [ %2242, %2237 ], [ %2242, %2245 ], [ 0, %2313 ], [ 0, %2320 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %.loopexit185

2330:                                             ; preds = %2324, %2229, %2102, %2099, %.loopexit172, %1955, %1860, %1628, %1624, %1620, %1473, %1464, %1447, %1438, %1434, %1405, %1287, %1144, %1070, %1018, %1015, %978, %897, %863, %774, %761, %262, %258, %212, %211, %196, %192, %174, %128
  %2331 = phi ptr [ %90, %128 ], [ %162, %174 ], [ %162, %192 ], [ %162, %196 ], [ %162, %211 ], [ %162, %212 ], [ %251, %258 ], [ %251, %262 ], [ %750, %761 ], [ %763, %774 ], [ %852, %863 ], [ %881, %897 ], [ %970, %978 ], [ %1005, %1015 ], [ %988, %1018 ], [ %1052, %1070 ], [ %1085, %1144 ], [ %1279, %1287 ], [ %1431, %1434 ], [ %1431, %1438 ], [ %1431, %1447 ], [ %1467, %1473 ], [ %1467, %1464 ], [ %1601, %1620 ], [ %1601, %1624 ], [ %1601, %1628 ], [ %1837, %1860 ], [ %1934, %1955 ], [ %1934, %2099 ], [ %1934, %.loopexit172 ], [ %90, %2102 ], [ %2176, %2229 ], [ %2314, %2324 ], [ %1376, %1405 ]
  %2332 = phi ptr [ %91, %128 ], [ %91, %174 ], [ %91, %192 ], [ %91, %196 ], [ %91, %211 ], [ %91, %212 ], [ %91, %258 ], [ %91, %262 ], [ %91, %761 ], [ %91, %774 ], [ %91, %863 ], [ %91, %897 ], [ %91, %978 ], [ %1017, %1015 ], [ %91, %1018 ], [ %91, %1070 ], [ %91, %1144 ], [ %91, %1287 ], [ %91, %1434 ], [ %91, %1438 ], [ %91, %1447 ], [ %1465, %1473 ], [ %1465, %1464 ], [ %91, %1620 ], [ %91, %1624 ], [ %91, %1628 ], [ %91, %1860 ], [ %91, %1955 ], [ %2096, %2099 ], [ %2096, %.loopexit172 ], [ %2106, %2102 ], [ %91, %2229 ], [ %91, %2324 ], [ %91, %1405 ]
  %2333 = phi i32 [ %92, %128 ], [ %163, %174 ], [ %163, %192 ], [ %163, %196 ], [ %163, %211 ], [ %163, %212 ], [ %252, %258 ], [ %252, %262 ], [ %751, %761 ], [ %764, %774 ], [ %853, %863 ], [ %882, %897 ], [ %971, %978 ], [ %1001, %1015 ], [ %989, %1018 ], [ %1053, %1070 ], [ %1086, %1144 ], [ %1280, %1287 ], [ %1430, %1434 ], [ %1430, %1438 ], [ %1430, %1447 ], [ %1468, %1473 ], [ %1468, %1464 ], [ %1602, %1620 ], [ %1602, %1624 ], [ %1602, %1628 ], [ %1838, %1860 ], [ %1935, %1955 ], [ %1935, %2099 ], [ %1935, %.loopexit172 ], [ %92, %2102 ], [ %2177, %2229 ], [ %2315, %2324 ], [ %1377, %1405 ]
  %2334 = phi i32 [ %93, %128 ], [ %93, %174 ], [ %93, %192 ], [ %93, %196 ], [ %93, %211 ], [ %93, %212 ], [ %93, %258 ], [ %93, %262 ], [ %93, %761 ], [ %93, %774 ], [ %93, %863 ], [ %93, %897 ], [ %93, %978 ], [ %1007, %1015 ], [ %93, %1018 ], [ %93, %1070 ], [ %93, %1144 ], [ %93, %1287 ], [ %93, %1434 ], [ %93, %1438 ], [ %93, %1447 ], [ %1466, %1473 ], [ %1466, %1464 ], [ %93, %1620 ], [ %93, %1624 ], [ %93, %1628 ], [ %93, %1860 ], [ %93, %1955 ], [ %1989, %2099 ], [ %1989, %.loopexit172 ], [ %2105, %2102 ], [ %93, %2229 ], [ %93, %2324 ], [ %93, %1405 ]
  %2335 = phi i64 [ %94, %128 ], [ 0, %174 ], [ %164, %192 ], [ %164, %196 ], [ %198, %211 ], [ 0, %212 ], [ %253, %258 ], [ %253, %262 ], [ %752, %761 ], [ %765, %774 ], [ %867, %863 ], [ %899, %897 ], [ %972, %978 ], [ %990, %1015 ], [ %990, %1018 ], [ %1065, %1070 ], [ %1087, %1144 ], [ %1284, %1287 ], [ %1429, %1434 ], [ %1429, %1438 ], [ %1429, %1447 ], [ %1469, %1473 ], [ %1469, %1464 ], [ %1610, %1620 ], [ %1610, %1624 ], [ %1610, %1628 ], [ %1846, %1860 ], [ %1936, %1955 ], [ %1936, %2099 ], [ %1936, %.loopexit172 ], [ %94, %2102 ], [ %2178, %2229 ], [ %2316, %2324 ], [ %1378, %1405 ]
  %2336 = phi i32 [ %95, %128 ], [ 0, %174 ], [ %165, %192 ], [ %165, %196 ], [ %199, %211 ], [ 0, %212 ], [ %254, %258 ], [ %254, %262 ], [ %753, %761 ], [ %766, %774 ], [ %865, %863 ], [ %898, %897 ], [ %973, %978 ], [ %991, %1015 ], [ %991, %1018 ], [ %1066, %1070 ], [ %1088, %1144 ], [ %1285, %1287 ], [ %1428, %1434 ], [ %1428, %1438 ], [ %1428, %1447 ], [ %1470, %1473 ], [ %1470, %1464 ], [ %1612, %1620 ], [ %1612, %1624 ], [ %1612, %1628 ], [ %1848, %1860 ], [ %1937, %1955 ], [ %1937, %2099 ], [ %1937, %.loopexit172 ], [ %95, %2102 ], [ %2179, %2229 ], [ %2317, %2324 ], [ %1382, %1405 ]
  %2337 = phi i32 [ %96, %128 ], [ %96, %174 ], [ %96, %192 ], [ %96, %196 ], [ %96, %211 ], [ %96, %212 ], [ %96, %258 ], [ %96, %262 ], [ %96, %761 ], [ %96, %774 ], [ %96, %863 ], [ %96, %897 ], [ %96, %978 ], [ %96, %1015 ], [ %96, %1018 ], [ %96, %1070 ], [ %96, %1144 ], [ %96, %1287 ], [ %96, %1434 ], [ %96, %1438 ], [ %96, %1447 ], [ %96, %1473 ], [ %96, %1464 ], [ %96, %1620 ], [ %96, %1624 ], [ %96, %1628 ], [ %96, %1860 ], [ %96, %1955 ], [ %96, %2099 ], [ %96, %.loopexit172 ], [ %96, %2102 ], [ %93, %2229 ], [ %2243, %2324 ], [ %96, %1405 ]
  %2338 = phi i32 [ %97, %128 ], [ %97, %174 ], [ %97, %192 ], [ %97, %196 ], [ %97, %211 ], [ %97, %212 ], [ %97, %258 ], [ %97, %262 ], [ %97, %761 ], [ %97, %774 ], [ %97, %863 ], [ %97, %897 ], [ %97, %978 ], [ %97, %1015 ], [ %97, %1018 ], [ %97, %1070 ], [ %1142, %1144 ], [ %1151, %1287 ], [ %1151, %1434 ], [ %1436, %1438 ], [ %1445, %1447 ], [ %1460, %1473 ], [ %1460, %1464 ], [ %1460, %1620 ], [ %1460, %1624 ], [ %1460, %1628 ], [ %1706, %1860 ], [ %1938, %1955 ], [ %1938, %2099 ], [ %1938, %.loopexit172 ], [ %97, %2102 ], [ %97, %2229 ], [ %97, %2324 ], [ %1151, %1405 ]
  %2339 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

.loopexit:                                        ; preds = %1183, %1187
  %2340 = phi i64 [ %1201, %1187 ], [ %1172, %1183 ]
  %2341 = zext i32 %1171 to i64
  %2342 = shl i32 %1171, 3
  %2343 = add i32 %1173, %2342
  %2344 = getelementptr i8, ptr %1170, i64 %2341
  br label %.loopexit185

2345:                                             ; preds = %142, %125
  %.lcssa2567 = phi i32 [ 1, %142 ], [ 0, %125 ]
  %2346 = phi i64 [ %137, %142 ], [ %94, %125 ]
  %2347 = zext nneg i32 %.lcssa2567 to i64
  %2348 = shl nuw nsw i32 %.lcssa2567, 3
  %2349 = add nuw nsw i32 %95, %2348
  %2350 = getelementptr i8, ptr %90, i64 %2347
  br label %.loopexit185

2351:                                             ; preds = %730, %714
  %.lcssa1989 = phi i32 [ 1, %730 ], [ 0, %714 ]
  %2352 = phi i64 [ %725, %730 ], [ %707, %714 ]
  %2353 = zext nneg i32 %.lcssa1989 to i64
  %2354 = shl nuw nsw i32 %.lcssa1989, 3
  %2355 = add nuw nsw i32 %708, %2354
  %2356 = getelementptr i8, ptr %705, i64 %2353
  br label %.loopexit185

2357:                                             ; preds = %454, %433
  %.lcssa1983 = phi i32 [ 1, %454 ], [ 0, %433 ]
  %2358 = phi i64 [ %449, %454 ], [ %436, %433 ]
  %2359 = zext nneg i32 %.lcssa1983 to i64
  %2360 = shl nuw nsw i32 %.lcssa1983, 3
  %2361 = add nuw nsw i32 %437, %2360
  %2362 = getelementptr i8, ptr %434, i64 %2359
  br label %.loopexit185

2363:                                             ; preds = %386, %366
  %.lcssa1977 = phi i32 [ 1, %386 ], [ 0, %366 ]
  %2364 = phi i64 [ %381, %386 ], [ %368, %366 ]
  %2365 = zext nneg i32 %.lcssa1977 to i64
  %2366 = shl nuw nsw i32 %.lcssa1977, 3
  %2367 = add nuw nsw i32 %2366, %367
  %2368 = getelementptr i8, ptr %370, i64 %2365
  br label %.loopexit185

2369:                                             ; preds = %331, %317, %303, %283
  %.lcssa1971 = phi i32 [ 3, %331 ], [ 2, %317 ], [ 1, %303 ], [ 0, %283 ]
  %2370 = phi i64 [ %326, %331 ], [ %312, %317 ], [ %298, %303 ], [ %285, %283 ]
  %2371 = zext nneg i32 %.lcssa1971 to i64
  %2372 = shl nuw nsw i32 %.lcssa1971, 3
  %2373 = add nuw nsw i32 %2372, %284
  %2374 = getelementptr i8, ptr %287, i64 %2371
  br label %.loopexit185

2375:                                             ; preds = %231, %117
  %.lcssa2551 = phi i32 [ 1, %231 ], [ 0, %117 ]
  %2376 = phi i64 [ %226, %231 ], [ %94, %117 ]
  %2377 = zext nneg i32 %.lcssa2551 to i64
  %2378 = shl nuw nsw i32 %.lcssa2551, 3
  %2379 = add nuw nsw i32 %95, %2378
  %2380 = getelementptr i8, ptr %90, i64 %2377
  br label %.loopexit185

2381:                                             ; preds = %817, %803, %789, %112
  %.lcssa2545 = phi i32 [ 3, %817 ], [ 2, %803 ], [ 1, %789 ], [ 0, %112 ]
  %2382 = phi i64 [ %812, %817 ], [ %798, %803 ], [ %784, %789 ], [ %94, %112 ]
  %2383 = zext nneg i32 %.lcssa2545 to i64
  %2384 = shl nuw nsw i32 %.lcssa2545, 3
  %2385 = add nuw nsw i32 %95, %2384
  %2386 = getelementptr i8, ptr %90, i64 %2383
  br label %.loopexit185

2387:                                             ; preds = %951, %937, %923, %906
  %.lcssa2540 = phi i32 [ 3, %951 ], [ 2, %937 ], [ 1, %923 ], [ 0, %906 ]
  %2388 = phi i64 [ %946, %951 ], [ %932, %937 ], [ %918, %923 ], [ %903, %906 ]
  %2389 = zext nneg i32 %.lcssa2540 to i64
  %2390 = shl nuw nsw i32 %.lcssa2540, 3
  %2391 = add nuw nsw i32 %907, %2390
  %2392 = getelementptr i8, ptr %90, i64 %2389
  br label %.loopexit185

.loopexit176:                                     ; preds = %1874, %1878
  %2393 = phi i64 [ %1891, %1878 ], [ %1868, %1874 ]
  %2394 = zext i32 %1867 to i64
  %2395 = shl i32 %1867, 3
  %2396 = add i32 %1869, %2395
  %2397 = getelementptr i8, ptr %1866, i64 %2394
  br label %.loopexit185

.loopexit177:                                     ; preds = %1781, %1785
  %2398 = phi i64 [ %1800, %1785 ], [ %1756, %1781 ]
  %2399 = zext i32 %1755 to i64
  %2400 = shl i32 %1755, 3
  %2401 = add i32 %1757, %2400
  %2402 = getelementptr i8, ptr %1754, i64 %2399
  br label %.loopexit185

.loopexit178:                                     ; preds = %1719, %1723
  %2403 = phi i64 [ %1737, %1723 ], [ %1704, %1719 ]
  %2404 = zext i32 %1703 to i64
  %2405 = shl i32 %1703, 3
  %2406 = add i32 %1705, %2405
  %2407 = getelementptr i8, ptr %1702, i64 %2404
  br label %.loopexit185

.loopexit180:                                     ; preds = %1641, %1645
  %2408 = phi i64 [ %1658, %1645 ], [ %1635, %1641 ]
  %2409 = zext i32 %1634 to i64
  %2410 = shl i32 %1634, 3
  %2411 = add i32 %1636, %2410
  %2412 = getelementptr i8, ptr %1633, i64 %2409
  br label %.loopexit185

.loopexit181:                                     ; preds = %1550, %1554
  %2413 = phi i64 [ %1568, %1554 ], [ %1524, %1550 ]
  %2414 = zext i32 %1523 to i64
  %2415 = shl i32 %1523, 3
  %2416 = add i32 %1525, %2415
  %2417 = getelementptr i8, ptr %1522, i64 %2414
  br label %.loopexit185

.loopexit182:                                     ; preds = %1487, %1491
  %2418 = phi i64 [ %1505, %1491 ], [ %1458, %1487 ]
  %2419 = zext i32 %1457 to i64
  %2420 = shl i32 %1457, 3
  %2421 = add i32 %1459, %2420
  %2422 = getelementptr i8, ptr %1456, i64 %2419
  br label %.loopexit185

2423:                                             ; preds = %1338
  %2424 = zext i32 %1219 to i64
  %2425 = shl i32 %1219, 3
  %2426 = add i32 %1221, %2425
  %2427 = getelementptr i8, ptr %1218, i64 %2424
  br label %.loopexit185

2428:                                             ; preds = %1257
  %2429 = zext i32 %1219 to i64
  %2430 = shl i32 %1219, 3
  %2431 = add i32 %1221, %2430
  %2432 = getelementptr i8, ptr %1218, i64 %2429
  br label %.loopexit185

2433:                                             ; preds = %1301
  %2434 = zext i32 %1219 to i64
  %2435 = shl i32 %1219, 3
  %2436 = add i32 %1221, %2435
  %2437 = getelementptr i8, ptr %1218, i64 %2434
  br label %.loopexit185

2438:                                             ; preds = %1032, %107
  %.lcssa2485 = phi i32 [ 1, %1032 ], [ 0, %107 ]
  %2439 = phi i64 [ %1027, %1032 ], [ %94, %107 ]
  %2440 = zext nneg i32 %.lcssa2485 to i64
  %2441 = shl nuw nsw i32 %.lcssa2485, 3
  %2442 = add nuw nsw i32 %95, %2441
  %2443 = getelementptr i8, ptr %90, i64 %2440
  br label %.loopexit185

2444:                                             ; preds = %2294, %2280, %2266, %2250
  %.lcssa1745 = phi i32 [ 3, %2294 ], [ 2, %2280 ], [ 1, %2266 ], [ 0, %2250 ]
  %2445 = phi i64 [ %2289, %2294 ], [ %2275, %2280 ], [ %2261, %2266 ], [ %2241, %2250 ]
  %2446 = zext nneg i32 %.lcssa1745 to i64
  %2447 = shl nuw nsw i32 %.lcssa1745, 3
  %2448 = add nuw nsw i32 %2242, %2447
  %2449 = getelementptr i8, ptr %2239, i64 %2446
  br label %.loopexit185

2450:                                             ; preds = %2156, %2142, %2128, %2112
  %.lcssa2477 = phi i32 [ 3, %2156 ], [ 2, %2142 ], [ 1, %2128 ], [ 0, %2112 ]
  %2451 = phi i64 [ %2151, %2156 ], [ %2137, %2142 ], [ %2123, %2128 ], [ %94, %2112 ]
  %2452 = zext nneg i32 %.lcssa2477 to i64
  %2453 = shl nuw nsw i32 %.lcssa2477, 3
  %2454 = add nuw nsw i32 %95, %2453
  %2455 = getelementptr i8, ptr %90, i64 %2452
  br label %.loopexit185

.loopexit185.loopexit5487:                        ; preds = %88
  br label %.loopexit185

.loopexit185:                                     ; preds = %2100, %1933, %1448, %994, %979, %860, %846, %692, %648, %628, %584, %568, %1100, %88, %.loopexit185.loopexit5487, %2450, %2444, %2438, %2433, %2428, %2423, %.loopexit182, %.loopexit181, %.loopexit180, %.loopexit178, %.loopexit177, %.loopexit176, %2387, %2381, %2375, %2369, %2363, %2357, %2351, %2345, %.loopexit, %2325, %890
  %2456 = phi i32 [ %93, %2444 ], [ %93, %2345 ], [ %93, %.loopexit ], [ %93, %1100 ], [ %93, %2450 ], [ %93, %2423 ], [ %93, %2387 ], [ %93, %.loopexit176 ], [ %93, %2375 ], [ %93, %2363 ], [ %93, %.loopexit180 ], [ %93, %2357 ], [ %93, %2325 ], [ %93, %2351 ], [ %93, %890 ], [ %93, %.loopexit182 ], [ %93, %2433 ], [ %93, %.loopexit181 ], [ %93, %.loopexit177 ], [ %93, %2438 ], [ %93, %2369 ], [ %93, %.loopexit178 ], [ %93, %2428 ], [ %93, %2381 ], [ %93, %88 ], [ %93, %860 ], [ 0, %2100 ], [ 0, %1933 ], [ %93, %1448 ], [ %93, %994 ], [ %93, %979 ], [ %93, %846 ], [ %93, %692 ], [ %93, %648 ], [ %93, %628 ], [ %93, %584 ], [ %93, %568 ], [ %93, %.loopexit185.loopexit5487 ]
  %2457 = phi ptr [ %2449, %2444 ], [ %2350, %2345 ], [ %2344, %.loopexit ], [ %1098, %1100 ], [ %2455, %2450 ], [ %2427, %2423 ], [ %2392, %2387 ], [ %2397, %.loopexit176 ], [ %2380, %2375 ], [ %2368, %2363 ], [ %2412, %.loopexit180 ], [ %2362, %2357 ], [ %2326, %2325 ], [ %2356, %2351 ], [ %881, %890 ], [ %2422, %.loopexit182 ], [ %2437, %2433 ], [ %2417, %.loopexit181 ], [ %2402, %.loopexit177 ], [ %2443, %2438 ], [ %2374, %2369 ], [ %2407, %.loopexit178 ], [ %2432, %2428 ], [ %2386, %2381 ], [ %90, %88 ], [ %852, %860 ], [ %90, %2100 ], [ %1934, %1933 ], [ %1431, %1448 ], [ %988, %994 ], [ %970, %979 ], [ %847, %846 ], [ %695, %692 ], [ %641, %648 ], [ %631, %628 ], [ %577, %584 ], [ %570, %568 ], [ %90, %.loopexit185.loopexit5487 ]
  %2458 = phi i32 [ 0, %2444 ], [ 0, %2345 ], [ 0, %.loopexit ], [ 0, %1100 ], [ 0, %2450 ], [ 0, %2423 ], [ 0, %2387 ], [ 0, %.loopexit176 ], [ 0, %2375 ], [ 0, %2363 ], [ 0, %.loopexit180 ], [ 0, %2357 ], [ %2327, %2325 ], [ 0, %2351 ], [ %882, %890 ], [ 0, %.loopexit182 ], [ 0, %2433 ], [ 0, %.loopexit181 ], [ 0, %.loopexit177 ], [ 0, %2438 ], [ 0, %2369 ], [ 0, %.loopexit178 ], [ 0, %2428 ], [ 0, %2381 ], [ %92, %88 ], [ 0, %860 ], [ %92, %2100 ], [ %1935, %1933 ], [ %1430, %1448 ], [ %989, %994 ], [ %971, %979 ], [ %848, %846 ], [ %693, %692 ], [ 0, %648 ], [ %629, %628 ], [ 0, %584 ], [ %571, %568 ], [ %92, %.loopexit185.loopexit5487 ]
  %2459 = phi i64 [ %2445, %2444 ], [ %2346, %2345 ], [ %2340, %.loopexit ], [ %1096, %1100 ], [ %2451, %2450 ], [ %1340, %2423 ], [ %2388, %2387 ], [ %2393, %.loopexit176 ], [ %2376, %2375 ], [ %2364, %2363 ], [ %2408, %.loopexit180 ], [ %2358, %2357 ], [ %2328, %2325 ], [ %2352, %2351 ], [ %892, %890 ], [ %2418, %.loopexit182 ], [ %1303, %2433 ], [ %2413, %.loopexit181 ], [ %2398, %.loopexit177 ], [ %2439, %2438 ], [ %2370, %2369 ], [ %2403, %.loopexit178 ], [ %1259, %2428 ], [ %2382, %2381 ], [ %94, %88 ], [ %854, %860 ], [ %94, %2100 ], [ %1936, %1933 ], [ %1429, %1448 ], [ %990, %994 ], [ 0, %979 ], [ %849, %846 ], [ %643, %692 ], [ %643, %648 ], [ %579, %628 ], [ %579, %584 ], [ %504, %568 ], [ %94, %.loopexit185.loopexit5487 ]
  %2460 = phi i32 [ %2448, %2444 ], [ %2349, %2345 ], [ %2343, %.loopexit ], [ %1095, %1100 ], [ %2454, %2450 ], [ %2426, %2423 ], [ %2391, %2387 ], [ %2396, %.loopexit176 ], [ %2379, %2375 ], [ %2367, %2363 ], [ %2411, %.loopexit180 ], [ %2361, %2357 ], [ %2329, %2325 ], [ %2355, %2351 ], [ %891, %890 ], [ %2421, %.loopexit182 ], [ %2436, %2433 ], [ %2416, %.loopexit181 ], [ %2401, %.loopexit177 ], [ %2442, %2438 ], [ %2373, %2369 ], [ %2406, %.loopexit178 ], [ %2431, %2428 ], [ %2385, %2381 ], [ %95, %88 ], [ %855, %860 ], [ %95, %2100 ], [ %1937, %1933 ], [ %1428, %1448 ], [ %991, %994 ], [ 0, %979 ], [ %850, %846 ], [ %644, %692 ], [ %644, %648 ], [ %580, %628 ], [ %580, %584 ], [ %505, %568 ], [ %95, %.loopexit185.loopexit5487 ]
  %2461 = phi i32 [ %2243, %2444 ], [ %96, %2345 ], [ %96, %.loopexit ], [ %96, %1100 ], [ %96, %2450 ], [ %96, %2423 ], [ %96, %2387 ], [ %96, %.loopexit176 ], [ %96, %2375 ], [ %96, %2363 ], [ %96, %.loopexit180 ], [ %96, %2357 ], [ %2243, %2325 ], [ %96, %2351 ], [ %96, %890 ], [ %96, %.loopexit182 ], [ %96, %2433 ], [ %96, %.loopexit181 ], [ %96, %.loopexit177 ], [ %96, %2438 ], [ %96, %2369 ], [ %96, %.loopexit178 ], [ %96, %2428 ], [ %96, %2381 ], [ %96, %88 ], [ %96, %568 ], [ %96, %584 ], [ %96, %628 ], [ %96, %648 ], [ %96, %692 ], [ %96, %846 ], [ %96, %860 ], [ %96, %979 ], [ %96, %994 ], [ %96, %1448 ], [ %96, %1933 ], [ %96, %2100 ], [ %96, %.loopexit185.loopexit5487 ]
  %2462 = phi i32 [ %97, %2444 ], [ %97, %2345 ], [ %1151, %.loopexit ], [ %97, %1100 ], [ %97, %2450 ], [ %1151, %2423 ], [ %97, %2387 ], [ %1870, %.loopexit176 ], [ %97, %2375 ], [ %97, %2363 ], [ %1637, %.loopexit180 ], [ %97, %2357 ], [ 1, %2325 ], [ %97, %2351 ], [ %97, %890 ], [ %1460, %.loopexit182 ], [ %1151, %2433 ], [ %1460, %.loopexit181 ], [ %1706, %.loopexit177 ], [ %97, %2438 ], [ %97, %2369 ], [ %1706, %.loopexit178 ], [ %1151, %2428 ], [ %97, %2381 ], [ 1, %88 ], [ %97, %860 ], [ %97, %2100 ], [ %1938, %1933 ], [ 0, %1448 ], [ %97, %994 ], [ %97, %979 ], [ %97, %846 ], [ %97, %692 ], [ %97, %648 ], [ %97, %628 ], [ %97, %584 ], [ %97, %568 ], [ -3, %.loopexit185.loopexit5487 ]
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %2456, ptr %41, align 8, !tbaa !52
  store ptr %2457, ptr %0, align 8, !tbaa !50
  store i32 %2458, ptr %43, align 8, !tbaa !51
  store i64 %2459, ptr %45, align 8, !tbaa !31
  store i32 %2460, ptr %47, align 8, !tbaa !32
  %2463 = load i32, ptr %79, align 4, !tbaa !38
  %2464 = icmp eq i32 %2463, 0
  br i1 %2464, label %2465, label %2474

2465:                                             ; preds = %.loopexit185
  %2466 = icmp eq i32 %2461, %2456
  br i1 %2466, label %2562, label %2467

2467:                                             ; preds = %2465
  %2468 = load i32, ptr %21, align 8, !tbaa !20
  %2469 = icmp ult i32 %2468, 16209
  br i1 %2469, label %2470, label %2562

2470:                                             ; preds = %2467
  %2471 = icmp samesign ult i32 %2468, 16206
  %2472 = icmp ne i32 %1, 4
  %2473 = or i1 %2472, %2471
  br i1 %2473, label %2474, label %2562

2474:                                             ; preds = %2470, %.loopexit185
  %2475 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2461, i32 %2456), !nosanitize !47
  %2476 = extractvalue { i32, i1 } %2475, 1, !nosanitize !47
  br i1 %2476, label %2477, label %2478, !prof !48, !nosanitize !47

2477:                                             ; preds = %2474
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2478:                                             ; preds = %2474
  %2479 = extractvalue { i32, i1 } %2475, 0, !nosanitize !47
  %2480 = load ptr, ptr %14, align 8, !tbaa !15
  %2481 = getelementptr inbounds nuw i8, ptr %2480, i64 72
  %2482 = load ptr, ptr %2481, align 8, !tbaa !41
  %2483 = icmp eq ptr %2482, null
  br i1 %2483, label %2484, label %2493

2484:                                             ; preds = %2478
  %2485 = load ptr, ptr %6, align 8, !tbaa !8
  %2486 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2487 = load ptr, ptr %2486, align 8, !tbaa !43
  %2488 = getelementptr inbounds nuw i8, ptr %2480, i64 56
  %2489 = load i32, ptr %2488, align 8, !tbaa !42
  %2490 = shl nuw i32 1, %2489
  %2491 = call ptr %2485(ptr noundef %2487, i32 noundef %2490, i32 noundef 1) #12, !inline_history !104
  store ptr %2491, ptr %2481, align 8, !tbaa !41
  %2492 = icmp eq ptr %2491, null
  br i1 %2492, label %2561, label %2493

2493:                                             ; preds = %2484, %2478
  %2494 = phi ptr [ %2491, %2484 ], [ %2482, %2478 ]
  %2495 = getelementptr inbounds nuw i8, ptr %2480, i64 60
  %2496 = load i32, ptr %2495, align 4, !tbaa !38
  %2497 = icmp eq i32 %2496, 0
  br i1 %2497, label %2498, label %2504

2498:                                             ; preds = %2493
  %2499 = getelementptr inbounds nuw i8, ptr %2480, i64 56
  %2500 = load i32, ptr %2499, align 8, !tbaa !42
  %2501 = shl nuw i32 1, %2500
  store i32 %2501, ptr %2495, align 4, !tbaa !38
  %2502 = getelementptr inbounds nuw i8, ptr %2480, i64 68
  store i32 0, ptr %2502, align 4, !tbaa !40
  %2503 = getelementptr inbounds nuw i8, ptr %2480, i64 64
  store i32 0, ptr %2503, align 8, !tbaa !39
  br label %2504

2504:                                             ; preds = %2498, %2493
  %2505 = phi i32 [ %2501, %2498 ], [ %2496, %2493 ]
  %2506 = icmp ult i32 %2479, %2505
  br i1 %2506, label %2514, label %2507

2507:                                             ; preds = %2504
  %2508 = zext i32 %2505 to i64
  %2509 = sub nsw i64 0, %2508
  %2510 = getelementptr inbounds i8, ptr %91, i64 %2509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2494, ptr noundef nonnull readonly align 1 dereferenceable(1) %2510, i64 %2508, i1 false)
  %2511 = getelementptr inbounds nuw i8, ptr %2480, i64 68
  store i32 0, ptr %2511, align 4, !tbaa !40
  %2512 = load i32, ptr %2495, align 4, !tbaa !38
  %2513 = getelementptr inbounds nuw i8, ptr %2480, i64 64
  store i32 %2512, ptr %2513, align 8, !tbaa !39
  br label %2562

2514:                                             ; preds = %2504
  %2515 = getelementptr inbounds nuw i8, ptr %2480, i64 68
  %2516 = load i32, ptr %2515, align 4, !tbaa !40
  %2517 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2505, i32 %2516), !nosanitize !47
  %2518 = extractvalue { i32, i1 } %2517, 1, !nosanitize !47
  br i1 %2518, label %2519, label %2520, !prof !48, !nosanitize !47

2519:                                             ; preds = %2514
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2520:                                             ; preds = %2514
  %2521 = extractvalue { i32, i1 } %2517, 0, !nosanitize !47
  %2522 = call i32 @llvm.umin.i32(i32 %2521, i32 %2479)
  %2523 = zext i32 %2516 to i64
  %2524 = getelementptr inbounds nuw i8, ptr %2494, i64 %2523
  %2525 = zext i32 %2479 to i64
  %2526 = sub nsw i64 0, %2525
  %2527 = getelementptr inbounds i8, ptr %91, i64 %2526
  %2528 = zext i32 %2522 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2524, ptr readonly align 1 %2527, i64 %2528, i1 false)
  %2529 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2479, i32 %2522), !nosanitize !47
  %2530 = extractvalue { i32, i1 } %2529, 0, !nosanitize !47
  %2531 = extractvalue { i32, i1 } %2529, 1, !nosanitize !47
  br i1 %2531, label %2532, label %2533, !prof !48, !nosanitize !47

2532:                                             ; preds = %2520
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2533:                                             ; preds = %2520
  %2534 = icmp eq i32 %2530, 0
  br i1 %2534, label %2542, label %2535

2535:                                             ; preds = %2533
  %2536 = load ptr, ptr %2481, align 8, !tbaa !41
  %2537 = zext i32 %2530 to i64
  %2538 = sub nsw i64 0, %2537
  %2539 = getelementptr inbounds i8, ptr %91, i64 %2538
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2536, ptr nonnull readonly align 1 %2539, i64 %2537, i1 false)
  store i32 %2530, ptr %2515, align 4, !tbaa !40
  %2540 = load i32, ptr %2495, align 4, !tbaa !38
  %2541 = getelementptr inbounds nuw i8, ptr %2480, i64 64
  store i32 %2540, ptr %2541, align 8, !tbaa !39
  br label %2562

2542:                                             ; preds = %2533
  %2543 = load i32, ptr %2515, align 4, !tbaa !40
  %2544 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2543, i32 %2522), !nosanitize !47
  %2545 = extractvalue { i32, i1 } %2544, 1, !nosanitize !47
  br i1 %2545, label %2546, label %2547, !prof !48, !nosanitize !47

2546:                                             ; preds = %2542
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2547:                                             ; preds = %2542
  %2548 = extractvalue { i32, i1 } %2544, 0, !nosanitize !47
  %2549 = load i32, ptr %2495, align 4, !tbaa !38
  %2550 = icmp eq i32 %2548, %2549
  %2551 = select i1 %2550, i32 0, i32 %2548
  store i32 %2551, ptr %2515, align 4
  %2552 = getelementptr inbounds nuw i8, ptr %2480, i64 64
  %2553 = load i32, ptr %2552, align 8, !tbaa !39
  %2554 = icmp ult i32 %2553, %2549
  br i1 %2554, label %2555, label %2562

2555:                                             ; preds = %2547
  %2556 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2553, i32 %2522), !nosanitize !47
  %2557 = extractvalue { i32, i1 } %2556, 1, !nosanitize !47
  br i1 %2557, label %2558, label %2559, !prof !48, !nosanitize !47

2558:                                             ; preds = %2555
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2559:                                             ; preds = %2555
  %2560 = extractvalue { i32, i1 } %2556, 0, !nosanitize !47
  store i32 %2560, ptr %2552, align 8, !tbaa !39
  br label %2562

2561:                                             ; preds = %2484
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %.loopexit187

2562:                                             ; preds = %2559, %2547, %2535, %2507, %2470, %2467, %2465
  %2563 = load i32, ptr %43, align 8, !tbaa !51
  %2564 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2563), !nosanitize !47
  %2565 = extractvalue { i32, i1 } %2564, 0, !nosanitize !47
  %2566 = extractvalue { i32, i1 } %2564, 1, !nosanitize !47
  br i1 %2566, label %2567, label %2568, !prof !48, !nosanitize !47

2567:                                             ; preds = %2562
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2568:                                             ; preds = %2562
  %2569 = load i32, ptr %41, align 8, !tbaa !52
  %2570 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2461, i32 %2569), !nosanitize !47
  %2571 = extractvalue { i32, i1 } %2570, 0, !nosanitize !47
  %2572 = extractvalue { i32, i1 } %2570, 1, !nosanitize !47
  br i1 %2572, label %2573, label %2574, !prof !48, !nosanitize !47

2573:                                             ; preds = %2568
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2574:                                             ; preds = %2568
  %2575 = zext i32 %2565 to i64
  %2576 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2577 = load i64, ptr %2576, align 8, !tbaa !22
  %2578 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2577, i64 %2575), !nosanitize !47
  %2579 = extractvalue { i64, i1 } %2578, 1, !nosanitize !47
  br i1 %2579, label %2580, label %2581, !prof !48, !nosanitize !47

2580:                                             ; preds = %2574
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2581:                                             ; preds = %2574
  %2582 = extractvalue { i64, i1 } %2578, 0, !nosanitize !47
  store i64 %2582, ptr %2576, align 8, !tbaa !22
  %2583 = zext i32 %2571 to i64
  %2584 = load i64, ptr %50, align 8, !tbaa !103
  %2585 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2584, i64 %2583), !nosanitize !47
  %2586 = extractvalue { i64, i1 } %2585, 1, !nosanitize !47
  br i1 %2586, label %2587, label %2588, !prof !48, !nosanitize !47

2587:                                             ; preds = %2581
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2588:                                             ; preds = %2581
  %2589 = extractvalue { i64, i1 } %2585, 0, !nosanitize !47
  store i64 %2589, ptr %50, align 8, !tbaa !103
  %2590 = load i64, ptr %51, align 8, !tbaa !21
  %2591 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2590, i64 %2583), !nosanitize !47
  %2592 = extractvalue { i64, i1 } %2591, 1, !nosanitize !47
  br i1 %2592, label %2593, label %2594, !prof !48, !nosanitize !47

2593:                                             ; preds = %2628, %2621, %2614, %2588
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2594:                                             ; preds = %2588
  %2595 = extractvalue { i64, i1 } %2591, 0, !nosanitize !47
  store i64 %2595, ptr %51, align 8, !tbaa !21
  %2596 = load i32, ptr %49, align 8, !tbaa !24
  %2597 = and i32 %2596, 4
  %2598 = icmp ne i32 %2597, 0
  %2599 = icmp ne i32 %2571, 0
  %2600 = select i1 %2598, i1 %2599, i1 false
  br i1 %2600, label %2601, label %2614

2601:                                             ; preds = %2594
  %2602 = load i32, ptr %52, align 8, !tbaa !28
  %2603 = icmp eq i32 %2602, 0
  %2604 = load i64, ptr %53, align 8, !tbaa !54
  %2605 = load ptr, ptr %26, align 8, !tbaa !49
  %2606 = sub nsw i64 0, %2583
  %2607 = getelementptr inbounds i8, ptr %2605, i64 %2606
  br i1 %2603, label %2610, label %2608

2608:                                             ; preds = %2601
  %2609 = call i64 @crc32(i64 noundef %2604, ptr noundef nonnull %2607, i32 noundef %2571) #12
  br label %2612

2610:                                             ; preds = %2601
  %2611 = call i64 @adler32(i64 noundef %2604, ptr noundef nonnull %2607, i32 noundef %2571) #12
  br label %2612

2612:                                             ; preds = %2610, %2608
  %2613 = phi i64 [ %2609, %2608 ], [ %2611, %2610 ]
  store i64 %2613, ptr %53, align 8, !tbaa !54
  store i64 %2613, ptr %54, align 8, !tbaa !25
  br label %2614

2614:                                             ; preds = %2612, %2594
  %2615 = load i32, ptr %47, align 8, !tbaa !32
  %2616 = load i32, ptr %83, align 4, !tbaa !26
  %2617 = icmp eq i32 %2616, 0
  %2618 = select i1 %2617, i32 0, i32 64
  %2619 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2615, i32 %2618), !nosanitize !47
  %2620 = extractvalue { i32, i1 } %2619, 1, !nosanitize !47
  br i1 %2620, label %2593, label %2621, !prof !48, !nosanitize !47

2621:                                             ; preds = %2614
  %2622 = extractvalue { i32, i1 } %2619, 0, !nosanitize !47
  %2623 = load i32, ptr %21, align 8, !tbaa !20
  %2624 = icmp eq i32 %2623, 16191
  %2625 = select i1 %2624, i32 128, i32 0
  %2626 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2622, i32 %2625), !nosanitize !47
  %2627 = extractvalue { i32, i1 } %2626, 1, !nosanitize !47
  br i1 %2627, label %2593, label %2628, !prof !48, !nosanitize !47

2628:                                             ; preds = %2621
  %2629 = extractvalue { i32, i1 } %2626, 0, !nosanitize !47
  %2630 = icmp eq i32 %2623, 16199
  %2631 = icmp eq i32 %2623, 16194
  %2632 = or i1 %2630, %2631
  %2633 = select i1 %2632, i32 256, i32 0
  %2634 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2629, i32 %2633), !nosanitize !47
  %2635 = extractvalue { i32, i1 } %2634, 1, !nosanitize !47
  br i1 %2635, label %2593, label %2636, !prof !48, !nosanitize !47

2636:                                             ; preds = %2628
  %2637 = extractvalue { i32, i1 } %2634, 0, !nosanitize !47
  %2638 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2637, ptr %2638, align 8, !tbaa !23
  %2639 = icmp eq i32 %2565, 0
  %2640 = icmp eq i32 %2571, 0
  %2641 = select i1 %2639, i1 %2640, i1 false
  %2642 = icmp eq i32 %1, 4
  %2643 = or i1 %2642, %2641
  %2644 = icmp eq i32 %2462, 0
  %2645 = select i1 %2643, i1 %2644, i1 false
  %2646 = select i1 %2645, i32 -5, i32 %2462
  br label %.loopexit187

.loopexit187.loopexit:                            ; preds = %88
  br label %.loopexit187

.loopexit187:                                     ; preds = %88, %.loopexit187.loopexit, %2636, %2561, %843, %32, %25, %20, %17, %13, %9, %5, %2
  %2647 = phi i32 [ -2, %20 ], [ -2, %.loopexit187.loopexit ], [ -4, %2561 ], [ %2646, %2636 ], [ 2, %843 ], [ -2, %32 ], [ -2, %25 ], [ -2, %17 ], [ -2, %13 ], [ -2, %2 ], [ -2, %9 ], [ -2, %5 ], [ -4, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %2647
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
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

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
