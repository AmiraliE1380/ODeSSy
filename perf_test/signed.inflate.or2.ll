; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/signed.inflate.or.ll'
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
  tail call void %10(ptr noundef %49, ptr noundef nonnull %39) #11
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
  %29 = tail call ptr %21(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #11
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
  tail call void %36(ptr noundef %83, ptr noundef nonnull %29) #11
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
  %28 = tail call ptr %20(ptr noundef %27, i32 noundef 1, i32 noundef 7160) #11, !inline_history !46
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
  tail call void %35(ptr noundef %66, ptr noundef nonnull %28) #11, !inline_history !46
  store ptr null, ptr %32, align 8, !tbaa !15
  br label %67

67:                                               ; preds = %65, %51, %25, %10, %5, %3
  %68 = phi i32 [ -4, %25 ], [ -6, %3 ], [ -2, %10 ], [ -6, %5 ], [ -2, %65 ], [ 0, %51 ]
  ret i32 %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %51

25:                                               ; preds = %20
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %25
  %28 = icmp slt i32 %1, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 80
  store i64 0, ptr %30, align 8, !tbaa !31
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 88
  store i32 0, ptr %31, align 8, !tbaa !32
  br label %51

32:                                               ; preds = %27
  %33 = icmp samesign ugt i32 %1, 16
  br i1 %33, label %51, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 88
  %36 = load i32, ptr %35, align 8, !tbaa !32
  %37 = add i32 %36, %1
  %38 = icmp ugt i32 %37, 32
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = zext nneg i32 %1 to i64
  %41 = shl nsw i64 -1, %40
  %42 = trunc nsw i64 %41 to i32
  %43 = xor i32 %42, -1
  %44 = and i32 %2, %43
  %45 = zext nneg i32 %44 to i64
  %46 = zext nneg i32 %36 to i64
  %47 = shl i64 %45, %46
  %48 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %49 = load i64, ptr %48, align 8, !tbaa !31
  %50 = add i64 %49, %47
  store i64 %50, ptr %48, align 8, !tbaa !31
  store i32 %37, ptr %35, align 8, !tbaa !32
  br label %51

51:                                               ; preds = %39, %34, %32, %29, %25, %20, %17, %13, %9, %5, %3
  %52 = phi i32 [ 0, %39 ], [ -2, %20 ], [ 0, %29 ], [ 0, %25 ], [ -2, %34 ], [ -2, %32 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %4 = icmp eq ptr %0, null
  br i1 %4, label %.loopexit189, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %.loopexit189, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %.loopexit189, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %.loopexit189, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %.loopexit189

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %.loopexit189

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %.loopexit189, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8, !tbaa !49
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %.loopexit189

36:                                               ; preds = %32, %29
  %37 = icmp eq i32 %22, 16191
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %22, %36 ], [ 16192, %38 ]
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %42 = load i32, ptr %41, align 8, !tbaa !50
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %44 = load i32, ptr %43, align 8, !tbaa !49
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

88:                                               ; preds = %2119, %39
  %89 = phi i32 [ %40, %39 ], [ %2128, %2119 ]
  %90 = phi ptr [ %30, %39 ], [ %2120, %2119 ]
  %91 = phi ptr [ %27, %39 ], [ %2121, %2119 ]
  %92 = phi i32 [ %44, %39 ], [ %2122, %2119 ]
  %93 = phi i32 [ %42, %39 ], [ %2123, %2119 ]
  %94 = phi i64 [ %46, %39 ], [ %2124, %2119 ]
  %95 = phi i32 [ %48, %39 ], [ %2125, %2119 ]
  %96 = phi i32 [ %42, %39 ], [ %2126, %2119 ]
  %97 = phi i32 [ 0, %39 ], [ %2127, %2119 ]
  %98 = ptrtoaddr ptr %91 to i64
  switch i32 %89, label %.loopexit189.loopexit [
    i32 16180, label %122
    i32 16181, label %117
    i32 16182, label %269
    i32 16183, label %339
    i32 16184, label %391
    i32 16185, label %462
    i32 16186, label %522
    i32 16187, label %582
    i32 16188, label %642
    i32 16189, label %112
    i32 16190, label %754
    i32 16191, label %764
    i32 16192, label %769
    i32 16193, label %814
    i32 16194, label %883
    i32 16195, label %888
    i32 16196, label %107
    i32 16197, label %954
    i32 16198, label %103
    i32 16199, label %1359
    i32 16200, label %1365
    i32 16201, label %101
    i32 16202, label %1579
    i32 16203, label %99
    i32 16204, label %1778
    i32 16205, label %1927
    i32 16206, label %1934
    i32 16207, label %105
    i32 16208, label %.loopexit187
    i32 16209, label %.loopexit187.loopexit2728
    i32 16210, label %.loopexit189
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !51
  br label %1731

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !51
  br label %1529

103:                                              ; preds = %88
  %104 = load i32, ptr %60, align 4, !tbaa !52
  br label %1024

105:                                              ; preds = %88
  %106 = load i32, ptr %49, align 8, !tbaa !24
  br label %2039

107:                                              ; preds = %88
  %108 = icmp ult i32 %95, 14
  br i1 %108, label %109, label %933

109:                                              ; preds = %107
  %110 = zext nneg i32 %95 to i64
  %111 = icmp eq i32 %92, 0
  br i1 %111, label %2175, label %908

112:                                              ; preds = %88
  %113 = icmp ult i32 %95, 32
  br i1 %113, label %114, label %747

114:                                              ; preds = %112
  %115 = zext nneg i32 %95 to i64
  %116 = icmp eq i32 %92, 0
  br i1 %116, label %2165, label %707

117:                                              ; preds = %88
  %118 = icmp ult i32 %95, 16
  br i1 %118, label %119, label %238

119:                                              ; preds = %117
  %120 = zext nneg i32 %95 to i64
  %121 = icmp eq i32 %92, 0
  br i1 %121, label %2160, label %213

122:                                              ; preds = %88
  %123 = load i32, ptr %49, align 8, !tbaa !24
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = icmp ult i32 %95, 16
  br i1 %126, label %127, label %156

127:                                              ; preds = %125
  %128 = zext nneg i32 %95 to i64
  %129 = icmp eq i32 %92, 0
  br i1 %129, label %2135, label %131

130:                                              ; preds = %122
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2119

131:                                              ; preds = %127
  %132 = add i32 %92, -1
  %133 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %134 = load i8, ptr %90, align 1, !tbaa !44
  %135 = zext i8 %134 to i64
  %136 = shl nuw nsw i64 %135, %128
  %137 = add i64 %136, %94
  %138 = add nuw nsw i64 %128, 8
  %139 = icmp samesign ult i32 %95, 8
  br i1 %139, label %140, label %150

140:                                              ; preds = %131
  %141 = icmp eq i32 %132, 0
  br i1 %141, label %2135, label %142

142:                                              ; preds = %140
  %143 = add i32 %92, -2
  %144 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %145 = load i8, ptr %133, align 1, !tbaa !44
  %146 = zext i8 %145 to i64
  %147 = shl nuw nsw i64 %146, %138
  %148 = add i64 %147, %137
  %149 = or disjoint i64 %128, 16
  br label %150

150:                                              ; preds = %142, %131
  %151 = phi i32 [ %132, %131 ], [ %143, %142 ]
  %152 = phi ptr [ %133, %131 ], [ %144, %142 ]
  %153 = phi i64 [ %137, %131 ], [ %148, %142 ]
  %154 = phi i64 [ %138, %131 ], [ %149, %142 ]
  %155 = trunc nuw nsw i64 %154 to i32
  br label %156

156:                                              ; preds = %150, %125
  %157 = phi ptr [ %90, %125 ], [ %152, %150 ]
  %158 = phi i32 [ %92, %125 ], [ %151, %150 ]
  %159 = phi i64 [ %94, %125 ], [ %153, %150 ]
  %160 = phi i32 [ %95, %125 ], [ %155, %150 ]
  %161 = and i32 %123, 2
  %162 = icmp ne i32 %161, 0
  %163 = icmp eq i64 %159, 35615
  %164 = select i1 %162, i1 %163, i1 false
  br i1 %164, label %165, label %172

165:                                              ; preds = %156
  %166 = load i32, ptr %85, align 8, !tbaa !42
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 15, ptr %85, align 8, !tbaa !42
  br label %169

169:                                              ; preds = %168, %165
  %170 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %170, ptr %53, align 8, !tbaa !53
  store i8 31, ptr %3, align 4, !tbaa !44
  store i8 -117, ptr %87, align 1, !tbaa !44
  %171 = call i64 @crc32(i64 noundef %170, ptr noundef nonnull %3, i32 noundef 2) #11
  store i64 %171, ptr %53, align 8, !tbaa !53
  store i32 16181, ptr %21, align 8, !tbaa !20
  br label %2119

172:                                              ; preds = %156
  %173 = load ptr, ptr %84, align 8, !tbaa !30
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds nuw i8, ptr %173, i64 72
  store i32 -1, ptr %176, align 8, !tbaa !54
  br label %177

177:                                              ; preds = %175, %172
  %178 = and i32 %123, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %177
  %181 = shl i64 %159, 8
  %182 = and i64 %181, 65280
  %183 = lshr i64 %159, 8
  %184 = add nuw nsw i64 %182, %183
  %185 = urem i64 %184, 31
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %180, %177
  store ptr @.str.1, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

188:                                              ; preds = %180
  %189 = and i64 %159, 15
  %190 = icmp eq i64 %189, 8
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

192:                                              ; preds = %188
  %193 = lshr i64 %159, 4
  %194 = add i32 %160, -4
  %195 = trunc i64 %193 to i32
  %196 = and i32 %195, 15
  %197 = add nuw nsw i32 %196, 8
  %198 = load i32, ptr %85, align 8, !tbaa !42
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  store i32 %197, ptr %85, align 8, !tbaa !42
  br label %201

201:                                              ; preds = %200, %192
  %202 = phi i32 [ %197, %200 ], [ %198, %192 ]
  %203 = icmp samesign ugt i32 %196, 7
  %204 = icmp ugt i32 %197, %202
  %205 = select i1 %203, i1 true, i1 %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  store ptr @.str.3, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

207:                                              ; preds = %201
  %208 = shl nuw nsw i32 256, %196
  store i32 %208, ptr %86, align 4, !tbaa !29
  store i32 0, ptr %52, align 8, !tbaa !28
  %209 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %209, ptr %53, align 8, !tbaa !53
  store i64 %209, ptr %54, align 8, !tbaa !25
  %210 = and i64 %159, 8192
  %211 = icmp eq i64 %210, 0
  %212 = select i1 %211, i32 16191, i32 16189
  store i32 %212, ptr %21, align 8, !tbaa !20
  br label %2119

213:                                              ; preds = %119
  %214 = add i32 %92, -1
  %215 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %216 = load i8, ptr %90, align 1, !tbaa !44
  %217 = zext i8 %216 to i64
  %218 = shl nuw nsw i64 %217, %120
  %219 = add i64 %218, %94
  %220 = add nuw nsw i64 %120, 8
  %221 = icmp samesign ult i32 %95, 8
  br i1 %221, label %222, label %232

222:                                              ; preds = %213
  %223 = icmp eq i32 %214, 0
  br i1 %223, label %2160, label %224

224:                                              ; preds = %222
  %225 = add i32 %92, -2
  %226 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %227 = load i8, ptr %215, align 1, !tbaa !44
  %228 = zext i8 %227 to i64
  %229 = shl nuw nsw i64 %228, %220
  %230 = add i64 %229, %219
  %231 = or disjoint i64 %120, 16
  br label %232

232:                                              ; preds = %224, %213
  %233 = phi i32 [ %214, %213 ], [ %225, %224 ]
  %234 = phi ptr [ %215, %213 ], [ %226, %224 ]
  %235 = phi i64 [ %219, %213 ], [ %230, %224 ]
  %236 = phi i64 [ %220, %213 ], [ %231, %224 ]
  %237 = trunc nuw nsw i64 %236 to i32
  br label %238

238:                                              ; preds = %232, %117
  %239 = phi ptr [ %90, %117 ], [ %234, %232 ]
  %240 = phi i32 [ %92, %117 ], [ %233, %232 ]
  %241 = phi i64 [ %94, %117 ], [ %235, %232 ]
  %242 = phi i32 [ %95, %117 ], [ %237, %232 ]
  %243 = trunc i64 %241 to i32
  store i32 %243, ptr %52, align 8, !tbaa !28
  %244 = and i32 %243, 255
  %245 = icmp eq i32 %244, 8
  br i1 %245, label %247, label %246

246:                                              ; preds = %238
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

247:                                              ; preds = %238
  %248 = and i32 %243, 57344
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %247
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

251:                                              ; preds = %247
  %252 = load ptr, ptr %84, align 8, !tbaa !30
  %253 = icmp eq ptr %252, null
  br i1 %253, label %257, label %254

254:                                              ; preds = %251
  %255 = lshr i32 %243, 8
  %256 = and i32 %255, 1
  store i32 %256, ptr %252, align 8, !tbaa !56
  br label %257

257:                                              ; preds = %254, %251
  %258 = and i32 %243, 512
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %268, label %260

260:                                              ; preds = %257
  %261 = load i32, ptr %49, align 8, !tbaa !24
  %262 = and i32 %261, 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %260
  %265 = trunc i64 %241 to i16
  store i16 %265, ptr %3, align 4
  %266 = load i64, ptr %53, align 8, !tbaa !53
  %267 = call i64 @crc32(i64 noundef %266, ptr noundef nonnull %3, i32 noundef 2) #11
  store i64 %267, ptr %53, align 8, !tbaa !53
  br label %268

268:                                              ; preds = %264, %260, %257
  store i32 16182, ptr %21, align 8, !tbaa !20
  br label %271

269:                                              ; preds = %88
  %270 = icmp ult i32 %95, 32
  br i1 %270, label %271, label %318

271:                                              ; preds = %269, %268
  %272 = phi i32 [ 0, %268 ], [ %95, %269 ]
  %273 = phi i64 [ 0, %268 ], [ %94, %269 ]
  %274 = phi i32 [ %240, %268 ], [ %92, %269 ]
  %275 = phi ptr [ %239, %268 ], [ %90, %269 ]
  %276 = zext nneg i32 %272 to i64
  %277 = icmp eq i32 %274, 0
  br i1 %277, label %2155, label %278

278:                                              ; preds = %271
  %279 = add i32 %274, -1
  %280 = getelementptr inbounds nuw i8, ptr %275, i64 1
  %281 = load i8, ptr %275, align 1, !tbaa !44
  %282 = zext i8 %281 to i64
  %283 = shl nuw nsw i64 %282, %276
  %284 = add i64 %283, %273
  %285 = add nuw nsw i64 %276, 8
  %286 = icmp samesign ult i32 %272, 24
  br i1 %286, label %287, label %318

287:                                              ; preds = %278
  %288 = icmp eq i32 %279, 0
  br i1 %288, label %2155, label %289

289:                                              ; preds = %287
  %290 = add i32 %274, -2
  %291 = getelementptr inbounds nuw i8, ptr %275, i64 2
  %292 = load i8, ptr %280, align 1, !tbaa !44
  %293 = zext i8 %292 to i64
  %294 = shl nuw nsw i64 %293, %285
  %295 = add i64 %294, %284
  %296 = add nuw nsw i64 %276, 16
  %297 = icmp samesign ult i32 %272, 16
  br i1 %297, label %298, label %318

298:                                              ; preds = %289
  %299 = icmp eq i32 %290, 0
  br i1 %299, label %2155, label %300

300:                                              ; preds = %298
  %301 = add i32 %274, -3
  %302 = getelementptr inbounds nuw i8, ptr %275, i64 3
  %303 = load i8, ptr %291, align 1, !tbaa !44
  %304 = zext i8 %303 to i64
  %305 = shl nuw nsw i64 %304, %296
  %306 = add i64 %305, %295
  %307 = add nuw nsw i64 %276, 24
  %308 = icmp samesign ult i32 %272, 8
  br i1 %308, label %309, label %318

309:                                              ; preds = %300
  %310 = icmp eq i32 %301, 0
  br i1 %310, label %2155, label %311

311:                                              ; preds = %309
  %312 = add i32 %274, -4
  %313 = getelementptr inbounds nuw i8, ptr %275, i64 4
  %314 = load i8, ptr %302, align 1, !tbaa !44
  %315 = zext i8 %314 to i64
  %316 = shl nuw nsw i64 %315, %307
  %317 = add i64 %316, %306
  br label %318

318:                                              ; preds = %311, %300, %289, %278, %269
  %319 = phi ptr [ %90, %269 ], [ %280, %278 ], [ %291, %289 ], [ %302, %300 ], [ %313, %311 ]
  %320 = phi i32 [ %92, %269 ], [ %279, %278 ], [ %290, %289 ], [ %301, %300 ], [ %312, %311 ]
  %321 = phi i64 [ %94, %269 ], [ %284, %278 ], [ %295, %289 ], [ %306, %300 ], [ %317, %311 ]
  %322 = load ptr, ptr %84, align 8, !tbaa !30
  %323 = icmp eq ptr %322, null
  br i1 %323, label %326, label %324

324:                                              ; preds = %318
  %325 = getelementptr inbounds nuw i8, ptr %322, i64 8
  store i64 %321, ptr %325, align 8, !tbaa !57
  br label %326

326:                                              ; preds = %324, %318
  %327 = load i32, ptr %52, align 8, !tbaa !28
  %328 = and i32 %327, 512
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %338, label %330

330:                                              ; preds = %326
  %331 = load i32, ptr %49, align 8, !tbaa !24
  %332 = and i32 %331, 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %338, label %334

334:                                              ; preds = %330
  %335 = trunc i64 %321 to i32
  store i32 %335, ptr %3, align 4
  %336 = load i64, ptr %53, align 8, !tbaa !53
  %337 = call i64 @crc32(i64 noundef %336, ptr noundef nonnull %3, i32 noundef 4) #11
  store i64 %337, ptr %53, align 8, !tbaa !53
  br label %338

338:                                              ; preds = %334, %330, %326
  store i32 16183, ptr %21, align 8, !tbaa !20
  br label %341

339:                                              ; preds = %88
  %340 = icmp ult i32 %95, 16
  br i1 %340, label %341, label %366

341:                                              ; preds = %339, %338
  %342 = phi i32 [ 0, %338 ], [ %95, %339 ]
  %343 = phi i64 [ 0, %338 ], [ %94, %339 ]
  %344 = phi i32 [ %320, %338 ], [ %92, %339 ]
  %345 = phi ptr [ %319, %338 ], [ %90, %339 ]
  %346 = zext nneg i32 %342 to i64
  %347 = icmp eq i32 %344, 0
  br i1 %347, label %2150, label %348

348:                                              ; preds = %341
  %349 = add i32 %344, -1
  %350 = getelementptr inbounds nuw i8, ptr %345, i64 1
  %351 = load i8, ptr %345, align 1, !tbaa !44
  %352 = zext i8 %351 to i64
  %353 = shl nuw nsw i64 %352, %346
  %354 = add i64 %353, %343
  %355 = add nuw nsw i64 %346, 8
  %356 = icmp samesign ult i32 %342, 8
  br i1 %356, label %357, label %366

357:                                              ; preds = %348
  %358 = icmp eq i32 %349, 0
  br i1 %358, label %2150, label %359

359:                                              ; preds = %357
  %360 = add i32 %344, -2
  %361 = getelementptr inbounds nuw i8, ptr %345, i64 2
  %362 = load i8, ptr %350, align 1, !tbaa !44
  %363 = zext i8 %362 to i64
  %364 = shl nuw nsw i64 %363, %355
  %365 = add i64 %364, %354
  br label %366

366:                                              ; preds = %359, %348, %339
  %367 = phi ptr [ %90, %339 ], [ %350, %348 ], [ %361, %359 ]
  %368 = phi i32 [ %92, %339 ], [ %349, %348 ], [ %360, %359 ]
  %369 = phi i64 [ %94, %339 ], [ %354, %348 ], [ %365, %359 ]
  %370 = load ptr, ptr %84, align 8, !tbaa !30
  %371 = icmp eq ptr %370, null
  br i1 %371, label %379, label %372

372:                                              ; preds = %366
  %373 = trunc i64 %369 to i32
  %374 = and i32 %373, 255
  %375 = getelementptr inbounds nuw i8, ptr %370, i64 16
  store i32 %374, ptr %375, align 8, !tbaa !58
  %376 = lshr i64 %369, 8
  %377 = trunc i64 %376 to i32
  %378 = getelementptr inbounds nuw i8, ptr %370, i64 20
  store i32 %377, ptr %378, align 4, !tbaa !59
  br label %379

379:                                              ; preds = %372, %366
  %380 = load i32, ptr %52, align 8, !tbaa !28
  %381 = and i32 %380, 512
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %395, label %383

383:                                              ; preds = %379
  %384 = load i32, ptr %49, align 8, !tbaa !24
  %385 = and i32 %384, 4
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %395, label %387

387:                                              ; preds = %383
  %388 = trunc i64 %369 to i16
  store i16 %388, ptr %3, align 4
  %389 = load i64, ptr %53, align 8, !tbaa !53
  %390 = call i64 @crc32(i64 noundef %389, ptr noundef nonnull %3, i32 noundef 2) #11
  store i64 %390, ptr %53, align 8, !tbaa !53
  %.pre = load i32, ptr %52, align 8, !tbaa !28
  br label %395

391:                                              ; preds = %88
  %392 = load i32, ptr %52, align 8, !tbaa !28
  %393 = and i32 %392, 1024
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %448, label %399

395:                                              ; preds = %387, %383, %379
  %396 = phi i32 [ %.pre, %387 ], [ %380, %383 ], [ %380, %379 ]
  store i32 16184, ptr %21, align 8, !tbaa !20
  %397 = and i32 %396, 1024
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %448, label %401

399:                                              ; preds = %391
  %400 = icmp ult i32 %95, 16
  br i1 %400, label %401, label %427

401:                                              ; preds = %399, %395
  %402 = phi ptr [ %90, %399 ], [ %367, %395 ]
  %403 = phi i32 [ %92, %399 ], [ %368, %395 ]
  %404 = phi i64 [ %94, %399 ], [ 0, %395 ]
  %405 = phi i32 [ %95, %399 ], [ 0, %395 ]
  %406 = phi i32 [ %392, %399 ], [ %396, %395 ]
  %407 = zext nneg i32 %405 to i64
  %408 = icmp eq i32 %403, 0
  br i1 %408, label %2145, label %409

409:                                              ; preds = %401
  %410 = add i32 %403, -1
  %411 = getelementptr inbounds nuw i8, ptr %402, i64 1
  %412 = load i8, ptr %402, align 1, !tbaa !44
  %413 = zext i8 %412 to i64
  %414 = shl nuw nsw i64 %413, %407
  %415 = add i64 %414, %404
  %416 = add nuw nsw i64 %407, 8
  %417 = icmp samesign ult i32 %405, 8
  br i1 %417, label %418, label %427

418:                                              ; preds = %409
  %419 = icmp eq i32 %410, 0
  br i1 %419, label %2145, label %420

420:                                              ; preds = %418
  %421 = add i32 %403, -2
  %422 = getelementptr inbounds nuw i8, ptr %402, i64 2
  %423 = load i8, ptr %411, align 1, !tbaa !44
  %424 = zext i8 %423 to i64
  %425 = shl nuw nsw i64 %424, %416
  %426 = add i64 %425, %415
  br label %427

427:                                              ; preds = %420, %409, %399
  %428 = phi i32 [ %392, %399 ], [ %406, %420 ], [ %406, %409 ]
  %429 = phi ptr [ %90, %399 ], [ %422, %420 ], [ %411, %409 ]
  %430 = phi i32 [ %92, %399 ], [ %421, %420 ], [ %410, %409 ]
  %431 = phi i64 [ %94, %399 ], [ %426, %420 ], [ %415, %409 ]
  %432 = trunc i64 %431 to i32
  store i32 %432, ptr %56, align 4, !tbaa !60
  %433 = load ptr, ptr %84, align 8, !tbaa !30
  %434 = icmp eq ptr %433, null
  br i1 %434, label %437, label %435

435:                                              ; preds = %427
  %436 = getelementptr inbounds nuw i8, ptr %433, i64 32
  store i32 %432, ptr %436, align 8, !tbaa !61
  br label %437

437:                                              ; preds = %435, %427
  %438 = and i32 %428, 512
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %457, label %440

440:                                              ; preds = %437
  %441 = load i32, ptr %49, align 8, !tbaa !24
  %442 = and i32 %441, 4
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %457, label %444

444:                                              ; preds = %440
  %445 = trunc i64 %431 to i16
  store i16 %445, ptr %3, align 4
  %446 = load i64, ptr %53, align 8, !tbaa !53
  %447 = call i64 @crc32(i64 noundef %446, ptr noundef nonnull %3, i32 noundef 2) #11
  store i64 %447, ptr %53, align 8, !tbaa !53
  br label %457

448:                                              ; preds = %395, %391
  %449 = phi i32 [ 0, %395 ], [ %95, %391 ]
  %450 = phi i64 [ 0, %395 ], [ %94, %391 ]
  %451 = phi i32 [ %368, %395 ], [ %92, %391 ]
  %452 = phi ptr [ %367, %395 ], [ %90, %391 ]
  %453 = load ptr, ptr %84, align 8, !tbaa !30
  %454 = icmp eq ptr %453, null
  br i1 %454, label %457, label %455

455:                                              ; preds = %448
  %456 = getelementptr inbounds nuw i8, ptr %453, i64 24
  store ptr null, ptr %456, align 8, !tbaa !62
  br label %457

457:                                              ; preds = %455, %448, %444, %440, %437
  %458 = phi ptr [ %452, %448 ], [ %452, %455 ], [ %429, %437 ], [ %429, %440 ], [ %429, %444 ]
  %459 = phi i32 [ %451, %448 ], [ %451, %455 ], [ %430, %437 ], [ %430, %440 ], [ %430, %444 ]
  %460 = phi i64 [ %450, %448 ], [ %450, %455 ], [ 0, %437 ], [ 0, %440 ], [ 0, %444 ]
  %461 = phi i32 [ %449, %448 ], [ %449, %455 ], [ 0, %437 ], [ 0, %440 ], [ 0, %444 ]
  store i32 16185, ptr %21, align 8, !tbaa !20
  br label %462

462:                                              ; preds = %457, %88
  %463 = phi ptr [ %458, %457 ], [ %90, %88 ]
  %464 = phi i32 [ %459, %457 ], [ %92, %88 ]
  %465 = phi i64 [ %460, %457 ], [ %94, %88 ]
  %466 = phi i32 [ %461, %457 ], [ %95, %88 ]
  %467 = load i32, ptr %52, align 8, !tbaa !28
  %468 = and i32 %467, 1024
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %519, label %470

470:                                              ; preds = %462
  %471 = load i32, ptr %56, align 4, !tbaa !60
  %472 = call i32 @llvm.umin.i32(i32 %471, i32 %464)
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %514, label %474

474:                                              ; preds = %470
  %475 = load ptr, ptr %84, align 8, !tbaa !30
  %476 = icmp eq ptr %475, null
  br i1 %476, label %497, label %477

477:                                              ; preds = %474
  %478 = getelementptr inbounds nuw i8, ptr %475, i64 24
  %479 = load ptr, ptr %478, align 8, !tbaa !62
  %480 = icmp eq ptr %479, null
  br i1 %480, label %497, label %481

481:                                              ; preds = %477
  %482 = getelementptr inbounds nuw i8, ptr %475, i64 32
  %483 = load i32, ptr %482, align 8, !tbaa !61
  %484 = sub i32 %483, %471
  %485 = getelementptr inbounds nuw i8, ptr %475, i64 36
  %486 = load i32, ptr %485, align 4, !tbaa !63
  %487 = icmp ult i32 %484, %486
  br i1 %487, label %488, label %497

488:                                              ; preds = %481
  %489 = zext i32 %484 to i64
  %490 = getelementptr inbounds nuw i8, ptr %479, i64 %489
  %491 = add i32 %484, %472
  %492 = icmp ugt i32 %491, %486
  %493 = sub nuw i32 %486, %484
  %494 = select i1 %492, i32 %493, i32 %472
  %495 = zext i32 %494 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %490, ptr align 1 %463, i64 %495, i1 false)
  %496 = load i32, ptr %52, align 8, !tbaa !28
  br label %497

497:                                              ; preds = %488, %481, %477, %474
  %498 = phi i32 [ %496, %488 ], [ %467, %481 ], [ %467, %477 ], [ %467, %474 ]
  %499 = and i32 %498, 512
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %508, label %501

501:                                              ; preds = %497
  %502 = load i32, ptr %49, align 8, !tbaa !24
  %503 = and i32 %502, 4
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %508, label %505

505:                                              ; preds = %501
  %506 = load i64, ptr %53, align 8, !tbaa !53
  %507 = call i64 @crc32(i64 noundef %506, ptr noundef %463, i32 noundef %472) #11
  store i64 %507, ptr %53, align 8, !tbaa !53
  br label %508

508:                                              ; preds = %505, %501, %497
  %509 = sub i32 %464, %472
  %510 = zext i32 %472 to i64
  %511 = getelementptr inbounds nuw i8, ptr %463, i64 %510
  %512 = load i32, ptr %56, align 4, !tbaa !60
  %513 = sub i32 %512, %472
  store i32 %513, ptr %56, align 4, !tbaa !60
  br label %514

514:                                              ; preds = %508, %470
  %515 = phi i32 [ %513, %508 ], [ %471, %470 ]
  %516 = phi ptr [ %511, %508 ], [ %463, %470 ]
  %517 = phi i32 [ %509, %508 ], [ %464, %470 ]
  %518 = icmp eq i32 %515, 0
  br i1 %518, label %519, label %.loopexit187

519:                                              ; preds = %514, %462
  %520 = phi ptr [ %516, %514 ], [ %463, %462 ]
  %521 = phi i32 [ %517, %514 ], [ %464, %462 ]
  store i32 0, ptr %56, align 4, !tbaa !60
  store i32 16186, ptr %21, align 8, !tbaa !20
  br label %522

522:                                              ; preds = %519, %88
  %523 = phi ptr [ %520, %519 ], [ %90, %88 ]
  %524 = phi i32 [ %521, %519 ], [ %92, %88 ]
  %525 = phi i64 [ %465, %519 ], [ %94, %88 ]
  %526 = phi i32 [ %466, %519 ], [ %95, %88 ]
  %527 = load i32, ptr %52, align 8, !tbaa !28
  %528 = and i32 %527, 2048
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %574, label %530

530:                                              ; preds = %522
  %531 = icmp eq i32 %524, 0
  br i1 %531, label %.loopexit187, label %532

532:                                              ; preds = %530
  %533 = zext i32 %524 to i64
  br label %534

534:                                              ; preds = %554, %532
  %535 = phi i64 [ 0, %532 ], [ %536, %554 ]
  %536 = add nuw nsw i64 %535, 1
  %537 = getelementptr inbounds nuw i8, ptr %523, i64 %535
  %538 = load i8, ptr %537, align 1, !tbaa !44
  %539 = load ptr, ptr %84, align 8, !tbaa !30
  %540 = icmp eq ptr %539, null
  br i1 %540, label %554, label %541

541:                                              ; preds = %534
  %542 = getelementptr inbounds nuw i8, ptr %539, i64 40
  %543 = load ptr, ptr %542, align 8, !tbaa !64
  %544 = icmp eq ptr %543, null
  br i1 %544, label %554, label %545

545:                                              ; preds = %541
  %546 = load i32, ptr %56, align 4, !tbaa !60
  %547 = getelementptr inbounds nuw i8, ptr %539, i64 48
  %548 = load i32, ptr %547, align 8, !tbaa !65
  %549 = icmp ult i32 %546, %548
  br i1 %549, label %550, label %554

550:                                              ; preds = %545
  %551 = add nuw i32 %546, 1
  store i32 %551, ptr %56, align 4, !tbaa !60
  %552 = zext i32 %546 to i64
  %553 = getelementptr inbounds nuw i8, ptr %543, i64 %552
  store i8 %538, ptr %553, align 1, !tbaa !44
  br label %554

554:                                              ; preds = %550, %545, %541, %534
  %555 = icmp ne i8 %538, 0
  %556 = icmp samesign ult i64 %536, %533
  %557 = select i1 %555, i1 %556, i1 false
  br i1 %557, label %534, label %558, !llvm.loop !66

558:                                              ; preds = %554
  %559 = trunc nuw i64 %536 to i32
  %560 = load i32, ptr %52, align 8, !tbaa !28
  %561 = and i32 %560, 512
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %570, label %563

563:                                              ; preds = %558
  %564 = load i32, ptr %49, align 8, !tbaa !24
  %565 = and i32 %564, 4
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %570, label %567

567:                                              ; preds = %563
  %568 = load i64, ptr %53, align 8, !tbaa !53
  %569 = call i64 @crc32(i64 noundef %568, ptr noundef nonnull %523, i32 noundef %559) #11
  store i64 %569, ptr %53, align 8, !tbaa !53
  br label %570

570:                                              ; preds = %567, %563, %558
  %571 = sub i32 %524, %559
  %572 = and i64 %536, 4294967295
  %573 = getelementptr inbounds nuw i8, ptr %523, i64 %572
  br i1 %555, label %.loopexit187, label %579

574:                                              ; preds = %522
  %575 = load ptr, ptr %84, align 8, !tbaa !30
  %576 = icmp eq ptr %575, null
  br i1 %576, label %579, label %577

577:                                              ; preds = %574
  %578 = getelementptr inbounds nuw i8, ptr %575, i64 40
  store ptr null, ptr %578, align 8, !tbaa !64
  br label %579

579:                                              ; preds = %577, %574, %570
  %580 = phi ptr [ %573, %570 ], [ %523, %577 ], [ %523, %574 ]
  %581 = phi i32 [ %571, %570 ], [ %524, %577 ], [ %524, %574 ]
  store i32 0, ptr %56, align 4, !tbaa !60
  store i32 16187, ptr %21, align 8, !tbaa !20
  br label %582

582:                                              ; preds = %579, %88
  %583 = phi ptr [ %580, %579 ], [ %90, %88 ]
  %584 = phi i32 [ %581, %579 ], [ %92, %88 ]
  %585 = phi i64 [ %525, %579 ], [ %94, %88 ]
  %586 = phi i32 [ %526, %579 ], [ %95, %88 ]
  %587 = load i32, ptr %52, align 8, !tbaa !28
  %588 = and i32 %587, 4096
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %634, label %590

590:                                              ; preds = %582
  %591 = icmp eq i32 %584, 0
  br i1 %591, label %.loopexit187, label %592

592:                                              ; preds = %590
  %593 = zext i32 %584 to i64
  br label %594

594:                                              ; preds = %614, %592
  %595 = phi i64 [ 0, %592 ], [ %596, %614 ]
  %596 = add nuw nsw i64 %595, 1
  %597 = getelementptr inbounds nuw i8, ptr %583, i64 %595
  %598 = load i8, ptr %597, align 1, !tbaa !44
  %599 = load ptr, ptr %84, align 8, !tbaa !30
  %600 = icmp eq ptr %599, null
  br i1 %600, label %614, label %601

601:                                              ; preds = %594
  %602 = getelementptr inbounds nuw i8, ptr %599, i64 56
  %603 = load ptr, ptr %602, align 8, !tbaa !68
  %604 = icmp eq ptr %603, null
  br i1 %604, label %614, label %605

605:                                              ; preds = %601
  %606 = load i32, ptr %56, align 4, !tbaa !60
  %607 = getelementptr inbounds nuw i8, ptr %599, i64 64
  %608 = load i32, ptr %607, align 8, !tbaa !69
  %609 = icmp ult i32 %606, %608
  br i1 %609, label %610, label %614

610:                                              ; preds = %605
  %611 = add nuw i32 %606, 1
  store i32 %611, ptr %56, align 4, !tbaa !60
  %612 = zext i32 %606 to i64
  %613 = getelementptr inbounds nuw i8, ptr %603, i64 %612
  store i8 %598, ptr %613, align 1, !tbaa !44
  br label %614

614:                                              ; preds = %610, %605, %601, %594
  %615 = icmp ne i8 %598, 0
  %616 = icmp samesign ult i64 %596, %593
  %617 = select i1 %615, i1 %616, i1 false
  br i1 %617, label %594, label %618, !llvm.loop !70

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
  %628 = load i64, ptr %53, align 8, !tbaa !53
  %629 = call i64 @crc32(i64 noundef %628, ptr noundef nonnull %583, i32 noundef %619) #11
  store i64 %629, ptr %53, align 8, !tbaa !53
  br label %630

630:                                              ; preds = %627, %623, %618
  %631 = sub i32 %584, %619
  %632 = and i64 %596, 4294967295
  %633 = getelementptr inbounds nuw i8, ptr %583, i64 %632
  br i1 %615, label %.loopexit187, label %639

634:                                              ; preds = %582
  %635 = load ptr, ptr %84, align 8, !tbaa !30
  %636 = icmp eq ptr %635, null
  br i1 %636, label %639, label %637

637:                                              ; preds = %634
  %638 = getelementptr inbounds nuw i8, ptr %635, i64 56
  store ptr null, ptr %638, align 8, !tbaa !68
  br label %639

639:                                              ; preds = %637, %634, %630
  %640 = phi ptr [ %633, %630 ], [ %583, %637 ], [ %583, %634 ]
  %641 = phi i32 [ %631, %630 ], [ %584, %637 ], [ %584, %634 ]
  store i32 16188, ptr %21, align 8, !tbaa !20
  br label %642

642:                                              ; preds = %639, %88
  %643 = phi ptr [ %640, %639 ], [ %90, %88 ]
  %644 = phi i32 [ %641, %639 ], [ %92, %88 ]
  %645 = phi i64 [ %585, %639 ], [ %94, %88 ]
  %646 = phi i32 [ %586, %639 ], [ %95, %88 ]
  %647 = load i32, ptr %52, align 8, !tbaa !28
  %648 = and i32 %647, 512
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %693, label %650

650:                                              ; preds = %642
  %651 = icmp ult i32 %646, 16
  br i1 %651, label %652, label %680

652:                                              ; preds = %650
  %653 = zext nneg i32 %646 to i64
  %654 = icmp eq i32 %644, 0
  br i1 %654, label %2140, label %655

655:                                              ; preds = %652
  %656 = add i32 %644, -1
  %657 = getelementptr inbounds nuw i8, ptr %643, i64 1
  %658 = load i8, ptr %643, align 1, !tbaa !44
  %659 = zext i8 %658 to i64
  %660 = shl nuw nsw i64 %659, %653
  %661 = add i64 %660, %645
  %662 = add nuw nsw i64 %653, 8
  %663 = icmp samesign ult i32 %646, 8
  br i1 %663, label %664, label %674

664:                                              ; preds = %655
  %665 = icmp eq i32 %656, 0
  br i1 %665, label %2140, label %666

666:                                              ; preds = %664
  %667 = add i32 %644, -2
  %668 = getelementptr inbounds nuw i8, ptr %643, i64 2
  %669 = load i8, ptr %657, align 1, !tbaa !44
  %670 = zext i8 %669 to i64
  %671 = shl nuw nsw i64 %670, %662
  %672 = add i64 %671, %661
  %673 = or disjoint i64 %653, 16
  br label %674

674:                                              ; preds = %666, %655
  %675 = phi i32 [ %656, %655 ], [ %667, %666 ]
  %676 = phi ptr [ %657, %655 ], [ %668, %666 ]
  %677 = phi i64 [ %661, %655 ], [ %672, %666 ]
  %678 = phi i64 [ %662, %655 ], [ %673, %666 ]
  %679 = trunc nuw nsw i64 %678 to i32
  br label %680

680:                                              ; preds = %674, %650
  %681 = phi ptr [ %643, %650 ], [ %676, %674 ]
  %682 = phi i32 [ %644, %650 ], [ %675, %674 ]
  %683 = phi i64 [ %645, %650 ], [ %677, %674 ]
  %684 = phi i32 [ %646, %650 ], [ %679, %674 ]
  %685 = load i32, ptr %49, align 8, !tbaa !24
  %686 = and i32 %685, 4
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %693, label %688

688:                                              ; preds = %680
  %689 = load i64, ptr %53, align 8, !tbaa !53
  %690 = and i64 %689, 65535
  %691 = icmp eq i64 %683, %690
  br i1 %691, label %693, label %692

692:                                              ; preds = %688
  store ptr @.str.5, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

693:                                              ; preds = %688, %680, %642
  %694 = phi ptr [ %643, %642 ], [ %681, %680 ], [ %681, %688 ]
  %695 = phi i32 [ %644, %642 ], [ %682, %680 ], [ %682, %688 ]
  %696 = phi i64 [ %645, %642 ], [ 0, %680 ], [ 0, %688 ]
  %697 = phi i32 [ %646, %642 ], [ 0, %680 ], [ 0, %688 ]
  %698 = load ptr, ptr %84, align 8, !tbaa !30
  %699 = icmp eq ptr %698, null
  br i1 %699, label %705, label %700

700:                                              ; preds = %693
  %701 = lshr i32 %647, 9
  %702 = and i32 %701, 1
  %703 = getelementptr inbounds nuw i8, ptr %698, i64 68
  store i32 %702, ptr %703, align 4, !tbaa !71
  %704 = getelementptr inbounds nuw i8, ptr %698, i64 72
  store i32 1, ptr %704, align 8, !tbaa !54
  br label %705

705:                                              ; preds = %700, %693
  %706 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %706, ptr %53, align 8, !tbaa !53
  store i64 %706, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2119

707:                                              ; preds = %114
  %708 = add i32 %92, -1
  %709 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %710 = load i8, ptr %90, align 1, !tbaa !44
  %711 = zext i8 %710 to i64
  %712 = shl nuw nsw i64 %711, %115
  %713 = add i64 %712, %94
  %714 = add nuw nsw i64 %115, 8
  %715 = icmp samesign ult i32 %95, 24
  br i1 %715, label %716, label %747

716:                                              ; preds = %707
  %717 = icmp eq i32 %708, 0
  br i1 %717, label %2165, label %718

718:                                              ; preds = %716
  %719 = add i32 %92, -2
  %720 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %721 = load i8, ptr %709, align 1, !tbaa !44
  %722 = zext i8 %721 to i64
  %723 = shl nuw nsw i64 %722, %714
  %724 = add i64 %723, %713
  %725 = add nuw nsw i64 %115, 16
  %726 = icmp samesign ult i32 %95, 16
  br i1 %726, label %727, label %747

727:                                              ; preds = %718
  %728 = icmp eq i32 %719, 0
  br i1 %728, label %2165, label %729

729:                                              ; preds = %727
  %730 = add i32 %92, -3
  %731 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %732 = load i8, ptr %720, align 1, !tbaa !44
  %733 = zext i8 %732 to i64
  %734 = shl nuw nsw i64 %733, %725
  %735 = add i64 %734, %724
  %736 = add nuw nsw i64 %115, 24
  %737 = icmp samesign ult i32 %95, 8
  br i1 %737, label %738, label %747

738:                                              ; preds = %729
  %739 = icmp eq i32 %730, 0
  br i1 %739, label %2165, label %740

740:                                              ; preds = %738
  %741 = add i32 %92, -4
  %742 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %743 = load i8, ptr %731, align 1, !tbaa !44
  %744 = zext i8 %743 to i64
  %745 = shl nuw nsw i64 %744, %736
  %746 = add i64 %745, %735
  br label %747

747:                                              ; preds = %740, %729, %718, %707, %112
  %748 = phi ptr [ %90, %112 ], [ %709, %707 ], [ %720, %718 ], [ %731, %729 ], [ %742, %740 ]
  %749 = phi i32 [ %92, %112 ], [ %708, %707 ], [ %719, %718 ], [ %730, %729 ], [ %741, %740 ]
  %750 = phi i64 [ %94, %112 ], [ %713, %707 ], [ %724, %718 ], [ %735, %729 ], [ %746, %740 ]
  %751 = trunc i64 %750 to i32
  %752 = call i32 @llvm.bswap.i32(i32 %751)
  %753 = zext i32 %752 to i64
  store i64 %753, ptr %53, align 8, !tbaa !53
  store i64 %753, ptr %54, align 8, !tbaa !25
  store i32 16190, ptr %21, align 8, !tbaa !20
  br label %754

754:                                              ; preds = %747, %88
  %755 = phi ptr [ %748, %747 ], [ %90, %88 ]
  %756 = phi i32 [ %749, %747 ], [ %92, %88 ]
  %757 = phi i64 [ 0, %747 ], [ %94, %88 ]
  %758 = phi i32 [ 0, %747 ], [ %95, %88 ]
  %759 = load i32, ptr %80, align 4, !tbaa !27
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %761, label %762

761:                                              ; preds = %754
  store ptr %91, ptr %26, align 8, !tbaa !47
  store i32 %93, ptr %41, align 8, !tbaa !50
  store ptr %755, ptr %0, align 8, !tbaa !48
  store i32 %756, ptr %43, align 8, !tbaa !49
  store i64 %757, ptr %45, align 8, !tbaa !31
  store i32 %758, ptr %47, align 8, !tbaa !32
  br label %.loopexit189

762:                                              ; preds = %754
  %763 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %763, ptr %53, align 8, !tbaa !53
  store i64 %763, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %764

764:                                              ; preds = %762, %88
  %765 = phi ptr [ %755, %762 ], [ %90, %88 ]
  %766 = phi i32 [ %756, %762 ], [ %92, %88 ]
  %767 = phi i64 [ %757, %762 ], [ %94, %88 ]
  %768 = phi i32 [ %758, %762 ], [ %95, %88 ]
  br i1 %82, label %.loopexit187, label %769

769:                                              ; preds = %764, %88
  %770 = phi ptr [ %765, %764 ], [ %90, %88 ]
  %771 = phi i32 [ %766, %764 ], [ %92, %88 ]
  %772 = phi i64 [ %767, %764 ], [ %94, %88 ]
  %773 = phi i32 [ %768, %764 ], [ %95, %88 ]
  %774 = load i32, ptr %83, align 4, !tbaa !26
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %776, label %780

776:                                              ; preds = %769
  %777 = icmp ult i32 %773, 3
  br i1 %777, label %778, label %794

778:                                              ; preds = %776
  %779 = icmp eq i32 %771, 0
  br i1 %779, label %.loopexit187, label %785

780:                                              ; preds = %769
  %781 = and i32 %773, 7
  %782 = zext nneg i32 %781 to i64
  %783 = lshr i64 %772, %782
  %784 = and i32 %773, -8
  store i32 16206, ptr %21, align 8, !tbaa !20
  br label %2119

785:                                              ; preds = %778
  %786 = or disjoint i32 %773, 8
  %787 = add i32 %771, -1
  %788 = getelementptr inbounds nuw i8, ptr %770, i64 1
  %789 = load i8, ptr %770, align 1, !tbaa !44
  %790 = zext i8 %789 to i64
  %791 = zext nneg i32 %773 to i64
  %792 = shl nuw nsw i64 %790, %791
  %793 = add i64 %792, %772
  br label %794

794:                                              ; preds = %785, %776
  %795 = phi ptr [ %788, %785 ], [ %770, %776 ]
  %796 = phi i32 [ %787, %785 ], [ %771, %776 ]
  %797 = phi i64 [ %793, %785 ], [ %772, %776 ]
  %798 = phi i32 [ %786, %785 ], [ %773, %776 ]
  %799 = trunc i64 %797 to i32
  %800 = and i32 %799, 1
  store i32 %800, ptr %83, align 4, !tbaa !26
  %801 = lshr i32 %799, 1
  %802 = and i32 %801, 3
  switch i32 %802, label %default.unreachable1547 [
    i32 0, label %809
    i32 1, label %803
    i32 2, label %807
    i32 3, label %808
  ]

803:                                              ; preds = %794
  call void @inflate_fixed(ptr noundef nonnull %15) #11
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %804, label %811

804:                                              ; preds = %803
  %805 = lshr i64 %797, 3
  %806 = add i32 %798, -3
  br label %.loopexit187

807:                                              ; preds = %794
  br label %809

default.unreachable1547:                          ; preds = %794
  unreachable

808:                                              ; preds = %794
  store ptr @.str.6, ptr %55, align 8, !tbaa !45
  br label %809

809:                                              ; preds = %808, %807, %794
  %810 = phi i32 [ 16209, %808 ], [ 16196, %807 ], [ 16193, %794 ]
  store i32 %810, ptr %21, align 8, !tbaa !20
  br label %811

811:                                              ; preds = %809, %803
  %812 = lshr i64 %797, 3
  %813 = add i32 %798, -3
  br label %2119

814:                                              ; preds = %88
  %815 = and i32 %95, 7
  %816 = zext nneg i32 %815 to i64
  %817 = lshr i64 %94, %816
  %818 = and i32 %95, -8
  %819 = icmp ult i32 %95, 32
  br i1 %819, label %820, label %870

820:                                              ; preds = %814
  %821 = and i32 %95, 24
  %822 = zext nneg i32 %821 to i64
  %823 = icmp eq i32 %92, 0
  br i1 %823, label %2170, label %824

824:                                              ; preds = %820
  %825 = add i32 %92, -1
  %826 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %827 = load i8, ptr %90, align 1, !tbaa !44
  %828 = zext i8 %827 to i64
  %829 = shl nuw nsw i64 %828, %822
  %830 = add i64 %829, %817
  %831 = add nuw nsw i64 %822, 8
  %832 = icmp eq i32 %821, 24
  br i1 %832, label %864, label %833

833:                                              ; preds = %824
  %834 = icmp eq i32 %825, 0
  br i1 %834, label %2170, label %835

835:                                              ; preds = %833
  %836 = add i32 %92, -2
  %837 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %838 = load i8, ptr %826, align 1, !tbaa !44
  %839 = zext i8 %838 to i64
  %840 = shl nuw nsw i64 %839, %831
  %841 = add i64 %840, %830
  %842 = add nuw nsw i64 %822, 16
  %843 = icmp samesign ult i32 %821, 16
  br i1 %843, label %844, label %864

844:                                              ; preds = %835
  %845 = icmp eq i32 %836, 0
  br i1 %845, label %2170, label %846

846:                                              ; preds = %844
  %847 = add i32 %92, -3
  %848 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %849 = load i8, ptr %837, align 1, !tbaa !44
  %850 = zext i8 %849 to i64
  %851 = shl nuw nsw i64 %850, %842
  %852 = add i64 %851, %841
  %853 = add nuw nsw i64 %822, 24
  %854 = icmp eq i32 %821, 0
  br i1 %854, label %855, label %864

855:                                              ; preds = %846
  %856 = icmp eq i32 %847, 0
  br i1 %856, label %2170, label %857

857:                                              ; preds = %855
  %858 = add i32 %92, -4
  %859 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %860 = load i8, ptr %848, align 1, !tbaa !44
  %861 = zext i8 %860 to i64
  %862 = shl nuw nsw i64 %861, %853
  %863 = add i64 %862, %852
  br label %864

864:                                              ; preds = %857, %846, %835, %824
  %865 = phi i32 [ %825, %824 ], [ %836, %835 ], [ %847, %846 ], [ %858, %857 ]
  %866 = phi ptr [ %826, %824 ], [ %837, %835 ], [ %848, %846 ], [ %859, %857 ]
  %867 = phi i64 [ %830, %824 ], [ %841, %835 ], [ %852, %846 ], [ %863, %857 ]
  %868 = phi i64 [ %831, %824 ], [ %842, %835 ], [ %853, %846 ], [ 32, %857 ]
  %869 = trunc nuw nsw i64 %868 to i32
  br label %870

870:                                              ; preds = %864, %814
  %871 = phi ptr [ %90, %814 ], [ %866, %864 ]
  %872 = phi i32 [ %92, %814 ], [ %865, %864 ]
  %873 = phi i64 [ %817, %814 ], [ %867, %864 ]
  %874 = phi i32 [ %818, %814 ], [ %869, %864 ]
  %875 = and i64 %873, 65535
  %876 = lshr i64 %873, 16
  %877 = xor i64 %876, %875
  %878 = icmp eq i64 %877, 65535
  br i1 %878, label %880, label %879

879:                                              ; preds = %870
  store ptr @.str.7, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

880:                                              ; preds = %870
  %881 = trunc i64 %873 to i32
  %882 = and i32 %881, 65535
  store i32 %882, ptr %56, align 4, !tbaa !60
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit187, label %883

883:                                              ; preds = %880, %88
  %884 = phi ptr [ %871, %880 ], [ %90, %88 ]
  %885 = phi i32 [ %872, %880 ], [ %92, %88 ]
  %886 = phi i64 [ 0, %880 ], [ %94, %88 ]
  %887 = phi i32 [ 0, %880 ], [ %95, %88 ]
  store i32 16195, ptr %21, align 8, !tbaa !20
  br label %888

888:                                              ; preds = %883, %88
  %889 = phi ptr [ %884, %883 ], [ %90, %88 ]
  %890 = phi i32 [ %885, %883 ], [ %92, %88 ]
  %891 = phi i64 [ %886, %883 ], [ %94, %88 ]
  %892 = phi i32 [ %887, %883 ], [ %95, %88 ]
  %893 = load i32, ptr %56, align 4, !tbaa !60
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %907, label %895

895:                                              ; preds = %888
  %896 = call i32 @llvm.umin.i32(i32 %893, i32 %890)
  %897 = call i32 @llvm.umin.i32(i32 %896, i32 %93)
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %.loopexit187, label %899

899:                                              ; preds = %895
  %900 = zext i32 %897 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr align 1 %889, i64 %900, i1 false)
  %901 = sub i32 %890, %897
  %902 = getelementptr inbounds nuw i8, ptr %889, i64 %900
  %903 = sub i32 %93, %897
  %904 = getelementptr inbounds nuw i8, ptr %91, i64 %900
  %905 = load i32, ptr %56, align 4, !tbaa !60
  %906 = sub i32 %905, %897
  store i32 %906, ptr %56, align 4, !tbaa !60
  br label %2119

907:                                              ; preds = %888
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2119

908:                                              ; preds = %109
  %909 = add i32 %92, -1
  %910 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %911 = load i8, ptr %90, align 1, !tbaa !44
  %912 = zext i8 %911 to i64
  %913 = shl nuw nsw i64 %912, %110
  %914 = add i64 %913, %94
  %915 = add nuw nsw i64 %110, 8
  %916 = icmp samesign ult i32 %95, 6
  br i1 %916, label %917, label %927

917:                                              ; preds = %908
  %918 = icmp eq i32 %909, 0
  br i1 %918, label %2175, label %919

919:                                              ; preds = %917
  %920 = add i32 %92, -2
  %921 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %922 = load i8, ptr %910, align 1, !tbaa !44
  %923 = zext i8 %922 to i64
  %924 = shl nuw nsw i64 %923, %915
  %925 = add i64 %924, %914
  %926 = or disjoint i64 %110, 16
  br label %927

927:                                              ; preds = %919, %908
  %928 = phi i32 [ %909, %908 ], [ %920, %919 ]
  %929 = phi ptr [ %910, %908 ], [ %921, %919 ]
  %930 = phi i64 [ %914, %908 ], [ %925, %919 ]
  %931 = phi i64 [ %915, %908 ], [ %926, %919 ]
  %932 = trunc nuw nsw i64 %931 to i32
  br label %933

933:                                              ; preds = %927, %107
  %934 = phi ptr [ %90, %107 ], [ %929, %927 ]
  %935 = phi i32 [ %92, %107 ], [ %928, %927 ]
  %936 = phi i64 [ %94, %107 ], [ %930, %927 ]
  %937 = phi i32 [ %95, %107 ], [ %932, %927 ]
  %938 = trunc i64 %936 to i32
  %939 = and i32 %938, 31
  %940 = add nuw nsw i32 %939, 257
  store i32 %940, ptr %57, align 4, !tbaa !72
  %941 = lshr i32 %938, 5
  %942 = and i32 %941, 31
  %943 = add nuw nsw i32 %942, 1
  store i32 %943, ptr %58, align 8, !tbaa !73
  %944 = lshr i32 %938, 10
  %945 = and i32 %944, 15
  %946 = add nuw nsw i32 %945, 4
  store i32 %946, ptr %59, align 8, !tbaa !74
  %947 = lshr i64 %936, 14
  %948 = add i32 %937, -14
  %949 = icmp samesign ugt i32 %939, 29
  %950 = icmp samesign ugt i32 %942, 29
  %951 = select i1 %949, i1 true, i1 %950
  br i1 %951, label %952, label %953

952:                                              ; preds = %933
  store ptr @.str.8, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

953:                                              ; preds = %933
  store i32 0, ptr %60, align 4, !tbaa !52
  store i32 16197, ptr %21, align 8, !tbaa !20
  br label %958

954:                                              ; preds = %88
  %955 = load i32, ptr %59, align 8, !tbaa !74
  %956 = load i32, ptr %60, align 4, !tbaa !52
  %957 = icmp ult i32 %956, %955
  br i1 %957, label %958, label %.loopexit188

958:                                              ; preds = %954, %953
  %959 = phi i32 [ %948, %953 ], [ %95, %954 ]
  %960 = phi i64 [ %947, %953 ], [ %94, %954 ]
  %961 = phi i32 [ %935, %953 ], [ %92, %954 ]
  %962 = phi ptr [ %934, %953 ], [ %90, %954 ]
  %963 = phi i32 [ %946, %953 ], [ %955, %954 ]
  %964 = phi i32 [ 0, %953 ], [ %956, %954 ]
  %965 = zext i32 %964 to i64
  %966 = zext i32 %963 to i64
  br label %975

.loopexit188:                                     ; preds = %993, %954
  %967 = phi ptr [ %90, %954 ], [ %994, %993 ]
  %968 = phi i32 [ %92, %954 ], [ %995, %993 ]
  %969 = phi i64 [ %94, %954 ], [ %1006, %993 ]
  %970 = phi i32 [ %95, %954 ], [ %1007, %993 ]
  %971 = phi i32 [ %956, %954 ], [ %963, %993 ]
  %972 = icmp ult i32 %971, 19
  br i1 %972, label %973, label %1019

973:                                              ; preds = %.loopexit188
  %974 = zext nneg i32 %971 to i64
  br label %1009

975:                                              ; preds = %993, %958
  %976 = phi i64 [ %965, %958 ], [ %1000, %993 ]
  %977 = phi i32 [ %959, %958 ], [ %1007, %993 ]
  %978 = phi i64 [ %960, %958 ], [ %1006, %993 ]
  %979 = phi i32 [ %961, %958 ], [ %995, %993 ]
  %980 = phi ptr [ %962, %958 ], [ %994, %993 ]
  %981 = icmp ult i32 %977, 3
  br i1 %981, label %982, label %993

982:                                              ; preds = %975
  %983 = icmp eq i32 %979, 0
  br i1 %983, label %.loopexit187, label %984

984:                                              ; preds = %982
  %985 = or disjoint i32 %977, 8
  %986 = add i32 %979, -1
  %987 = getelementptr inbounds nuw i8, ptr %980, i64 1
  %988 = load i8, ptr %980, align 1, !tbaa !44
  %989 = zext i8 %988 to i64
  %990 = zext nneg i32 %977 to i64
  %991 = shl nuw nsw i64 %989, %990
  %992 = add i64 %991, %978
  br label %993

993:                                              ; preds = %984, %975
  %994 = phi ptr [ %987, %984 ], [ %980, %975 ]
  %995 = phi i32 [ %986, %984 ], [ %979, %975 ]
  %996 = phi i64 [ %992, %984 ], [ %978, %975 ]
  %997 = phi i32 [ %985, %984 ], [ %977, %975 ]
  %998 = trunc i64 %996 to i16
  %999 = and i16 %998, 7
  %1000 = add nuw nsw i64 %976, 1
  %1001 = trunc nuw i64 %1000 to i32
  store i32 %1001, ptr %60, align 4, !tbaa !52
  %1002 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %976
  %1003 = load i16, ptr %1002, align 2, !tbaa !75
  %1004 = zext i16 %1003 to i64
  %1005 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1004
  store i16 %999, ptr %1005, align 2, !tbaa !75
  %1006 = lshr i64 %996, 3
  %1007 = add i32 %997, -3
  %1008 = icmp eq i64 %1000, %966
  br i1 %1008, label %.loopexit188, label %975, !llvm.loop !77

1009:                                             ; preds = %1009, %973
  %1010 = phi i64 [ %974, %973 ], [ %1011, %1009 ]
  %1011 = add nuw nsw i64 %1010, 1
  %1012 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1010
  %1013 = load i16, ptr %1012, align 2, !tbaa !75
  %1014 = zext i16 %1013 to i64
  %1015 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1014
  store i16 0, ptr %1015, align 2, !tbaa !75
  %1016 = and i64 %1011, 4294967295
  %1017 = icmp eq i64 %1016, 19
  br i1 %1017, label %1018, label %1009, !llvm.loop !78

1018:                                             ; preds = %1009
  store i32 19, ptr %60, align 4, !tbaa !52
  br label %1019

1019:                                             ; preds = %1018, %.loopexit188
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %64, align 8, !tbaa !34
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 7, ptr %66, align 8, !tbaa !79
  %1020 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #11
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1023, label %1022

1022:                                             ; preds = %1019
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

1023:                                             ; preds = %1019
  store i32 0, ptr %60, align 4, !tbaa !52
  store i32 16198, ptr %21, align 8, !tbaa !20
  br label %1024

1024:                                             ; preds = %1023, %103
  %1025 = phi i32 [ 0, %1023 ], [ %104, %103 ]
  %1026 = phi ptr [ %967, %1023 ], [ %90, %103 ]
  %1027 = phi i32 [ %968, %1023 ], [ %92, %103 ]
  %1028 = phi i64 [ %969, %1023 ], [ %94, %103 ]
  %1029 = phi i32 [ %970, %1023 ], [ %95, %103 ]
  %1030 = phi i32 [ 0, %1023 ], [ %97, %103 ]
  %1031 = load i32, ptr %57, align 4, !tbaa !72
  %1032 = load i32, ptr %58, align 8, !tbaa !73
  %1033 = add i32 %1032, %1031
  %1034 = icmp ult i32 %1025, %1033
  br i1 %1034, label %1035, label %.loopexit186

1035:                                             ; preds = %1024
  %1036 = load ptr, ptr %65, align 8, !tbaa !35
  %1037 = load i32, ptr %66, align 8, !tbaa !79
  %1038 = shl nsw i32 -1, %1037
  %1039 = xor i32 %1038, -1
  br label %1040

1040:                                             ; preds = %1331, %1035
  %1041 = phi i32 [ %1029, %1035 ], [ %1336, %1331 ]
  %1042 = phi i64 [ %1028, %1035 ], [ %1335, %1331 ]
  %1043 = phi i32 [ %1027, %1035 ], [ %1334, %1331 ]
  %1044 = phi ptr [ %1026, %1035 ], [ %1333, %1331 ]
  %1045 = phi i32 [ %1025, %1035 ], [ %1332, %1331 ]
  %1046 = trunc i64 %1042 to i32
  %1047 = and i32 %1046, %1039
  %1048 = zext nneg i32 %1047 to i64
  %1049 = getelementptr inbounds nuw [4 x i8], ptr %1036, i64 %1048
  %1050 = getelementptr inbounds nuw i8, ptr %1049, i64 1
  %1051 = load i8, ptr %1050, align 1, !tbaa !44
  %1052 = zext i8 %1051 to i32
  %1053 = icmp ult i32 %1041, %1052
  br i1 %1053, label %1054, label %1083

1054:                                             ; preds = %1040
  %1055 = icmp eq i32 %1043, 0
  br i1 %1055, label %.loopexit170, label %1056

1056:                                             ; preds = %1054
  %1057 = zext nneg i32 %1041 to i64
  br label %1060

1058:                                             ; preds = %1060
  %1059 = icmp eq i32 %1065, 0
  br i1 %1059, label %.loopexit170, label %1060

1060:                                             ; preds = %1058, %1056
  %1061 = phi ptr [ %1044, %1056 ], [ %1066, %1058 ]
  %1062 = phi i32 [ %1043, %1056 ], [ %1065, %1058 ]
  %1063 = phi i64 [ %1042, %1056 ], [ %1070, %1058 ]
  %1064 = phi i64 [ %1057, %1056 ], [ %1071, %1058 ]
  %1065 = add i32 %1062, -1
  %1066 = getelementptr inbounds nuw i8, ptr %1061, i64 1
  %1067 = load i8, ptr %1061, align 1, !tbaa !44
  %1068 = zext i8 %1067 to i64
  %1069 = shl i64 %1068, %1064
  %1070 = add i64 %1069, %1063
  %1071 = add nuw nsw i64 %1064, 8
  %1072 = trunc i64 %1070 to i32
  %1073 = and i32 %1072, %1039
  %1074 = zext nneg i32 %1073 to i64
  %1075 = getelementptr inbounds nuw [4 x i8], ptr %1036, i64 %1074
  %1076 = getelementptr inbounds nuw i8, ptr %1075, i64 1
  %1077 = load i8, ptr %1076, align 1, !tbaa !44
  %1078 = zext i8 %1077 to i64
  %1079 = icmp samesign ult i64 %1071, %1078
  br i1 %1079, label %1058, label %1080

1080:                                             ; preds = %1060
  %1081 = zext i8 %1077 to i32
  %1082 = trunc nuw nsw i64 %1071 to i32
  br label %1083

1083:                                             ; preds = %1080, %1040
  %1084 = phi i64 [ %1048, %1040 ], [ %1074, %1080 ]
  %1085 = phi i32 [ %1052, %1040 ], [ %1081, %1080 ]
  %1086 = phi ptr [ %1044, %1040 ], [ %1066, %1080 ]
  %1087 = phi i32 [ %1043, %1040 ], [ %1065, %1080 ]
  %1088 = phi i64 [ %1042, %1040 ], [ %1070, %1080 ]
  %1089 = phi i32 [ %1041, %1040 ], [ %1082, %1080 ]
  %1090 = phi i8 [ %1051, %1040 ], [ %1077, %1080 ]
  %1091 = getelementptr inbounds nuw [4 x i8], ptr %1036, i64 %1084
  %1092 = getelementptr inbounds nuw i8, ptr %1091, i64 2
  %1093 = load i16, ptr %1092, align 2, !tbaa !75
  %1094 = icmp ult i16 %1093, 16
  br i1 %1094, label %1095, label %1102

1095:                                             ; preds = %1083
  %1096 = zext nneg i8 %1090 to i64
  %1097 = lshr i64 %1088, %1096
  %1098 = sub i32 %1089, %1085
  %1099 = add i32 %1045, 1
  store i32 %1099, ptr %60, align 4, !tbaa !52
  %1100 = zext i32 %1045 to i64
  %1101 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1100
  store i16 %1093, ptr %1101, align 2, !tbaa !75
  br label %1331

1102:                                             ; preds = %1083
  switch i16 %1093, label %1115 [
    i16 16, label %1109
    i16 17, label %1103
  ]

1103:                                             ; preds = %1102
  %1104 = add nuw nsw i32 %1085, 3
  %1105 = icmp ult i32 %1089, %1104
  br i1 %1105, label %1106, label %1175

1106:                                             ; preds = %1103
  %1107 = zext nneg i32 %1089 to i64
  %1108 = zext nneg i32 %1104 to i64
  br label %1158

1109:                                             ; preds = %1102
  %1110 = add nuw nsw i32 %1085, 2
  %1111 = icmp ult i32 %1089, %1110
  br i1 %1111, label %1112, label %1138

1112:                                             ; preds = %1109
  %1113 = zext nneg i32 %1089 to i64
  %1114 = zext nneg i32 %1110 to i64
  br label %1121

1115:                                             ; preds = %1102
  %1116 = add nuw nsw i32 %1085, 7
  %1117 = icmp ult i32 %1089, %1116
  br i1 %1117, label %1118, label %1204

1118:                                             ; preds = %1115
  %1119 = zext nneg i32 %1089 to i64
  %1120 = zext nneg i32 %1116 to i64
  br label %1187

.loopexit201:                                     ; preds = %1707, %1689, %2357, %2350, %2343
  call void @llvm.ubsantrap(i8 0) #12, !nosanitize !80
  unreachable, !nosanitize !80

1121:                                             ; preds = %1127, %1112
  %1122 = phi i64 [ %1113, %1112 ], [ %1134, %1127 ]
  %1123 = phi i64 [ %1088, %1112 ], [ %1133, %1127 ]
  %1124 = phi i32 [ %1087, %1112 ], [ %1128, %1127 ]
  %1125 = phi ptr [ %1086, %1112 ], [ %1129, %1127 ]
  %1126 = icmp eq i32 %1124, 0
  br i1 %1126, label %2131, label %1127

1127:                                             ; preds = %1121
  %1128 = add i32 %1124, -1
  %1129 = getelementptr inbounds nuw i8, ptr %1125, i64 1
  %1130 = load i8, ptr %1125, align 1, !tbaa !44
  %1131 = zext i8 %1130 to i64
  %1132 = shl i64 %1131, %1122
  %1133 = add i64 %1132, %1123
  %1134 = add nuw nsw i64 %1122, 8
  %1135 = icmp samesign ult i64 %1134, %1114
  br i1 %1135, label %1121, label %1136, !llvm.loop !81

1136:                                             ; preds = %1127
  %1137 = trunc nuw nsw i64 %1134 to i32
  br label %1138

1138:                                             ; preds = %1136, %1109
  %1139 = phi ptr [ %1086, %1109 ], [ %1129, %1136 ]
  %1140 = phi i32 [ %1087, %1109 ], [ %1128, %1136 ]
  %1141 = phi i64 [ %1088, %1109 ], [ %1133, %1136 ]
  %1142 = phi i32 [ %1089, %1109 ], [ %1137, %1136 ]
  %1143 = zext nneg i8 %1090 to i64
  %1144 = lshr i64 %1141, %1143
  %1145 = sub nuw i32 %1142, %1085
  %1146 = icmp eq i32 %1045, 0
  br i1 %1146, label %1147, label %1148

1147:                                             ; preds = %1138
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

1148:                                             ; preds = %1138
  %1149 = add i32 %1045, -1
  %1150 = zext i32 %1149 to i64
  %1151 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1150
  %1152 = load i16, ptr %1151, align 2, !tbaa !75
  %1153 = trunc i64 %1144 to i32
  %1154 = and i32 %1153, 3
  %1155 = add nuw nsw i32 %1154, 3
  %1156 = lshr i64 %1144, 2
  %1157 = add i32 %1145, -2
  br label %1216

1158:                                             ; preds = %1164, %1106
  %1159 = phi i64 [ %1107, %1106 ], [ %1171, %1164 ]
  %1160 = phi i64 [ %1088, %1106 ], [ %1170, %1164 ]
  %1161 = phi i32 [ %1087, %1106 ], [ %1165, %1164 ]
  %1162 = phi ptr [ %1086, %1106 ], [ %1166, %1164 ]
  %1163 = icmp eq i32 %1161, 0
  br i1 %1163, label %2133, label %1164

1164:                                             ; preds = %1158
  %1165 = add i32 %1161, -1
  %1166 = getelementptr inbounds nuw i8, ptr %1162, i64 1
  %1167 = load i8, ptr %1162, align 1, !tbaa !44
  %1168 = zext i8 %1167 to i64
  %1169 = shl i64 %1168, %1159
  %1170 = add i64 %1169, %1160
  %1171 = add nuw nsw i64 %1159, 8
  %1172 = icmp samesign ult i64 %1171, %1108
  br i1 %1172, label %1158, label %1173, !llvm.loop !82

1173:                                             ; preds = %1164
  %1174 = trunc nuw nsw i64 %1171 to i32
  br label %1175

1175:                                             ; preds = %1173, %1103
  %1176 = phi ptr [ %1086, %1103 ], [ %1166, %1173 ]
  %1177 = phi i32 [ %1087, %1103 ], [ %1165, %1173 ]
  %1178 = phi i64 [ %1088, %1103 ], [ %1170, %1173 ]
  %1179 = phi i32 [ %1089, %1103 ], [ %1174, %1173 ]
  %1180 = zext nneg i8 %1090 to i64
  %1181 = lshr i64 %1178, %1180
  %1182 = trunc i64 %1181 to i32
  %1183 = and i32 %1182, 7
  %1184 = add nuw nsw i32 %1183, 3
  %1185 = lshr i64 %1181, 3
  %reass.sub = sub i32 %1179, %1085
  %1186 = add i32 %reass.sub, -3
  br label %1216

1187:                                             ; preds = %1193, %1118
  %1188 = phi i64 [ %1119, %1118 ], [ %1200, %1193 ]
  %1189 = phi i64 [ %1088, %1118 ], [ %1199, %1193 ]
  %1190 = phi i32 [ %1087, %1118 ], [ %1194, %1193 ]
  %1191 = phi ptr [ %1086, %1118 ], [ %1195, %1193 ]
  %1192 = icmp eq i32 %1190, 0
  br i1 %1192, label %2129, label %1193

1193:                                             ; preds = %1187
  %1194 = add i32 %1190, -1
  %1195 = getelementptr inbounds nuw i8, ptr %1191, i64 1
  %1196 = load i8, ptr %1191, align 1, !tbaa !44
  %1197 = zext i8 %1196 to i64
  %1198 = shl i64 %1197, %1188
  %1199 = add i64 %1198, %1189
  %1200 = add nuw nsw i64 %1188, 8
  %1201 = icmp samesign ult i64 %1200, %1120
  br i1 %1201, label %1187, label %1202, !llvm.loop !83

1202:                                             ; preds = %1193
  %1203 = trunc nuw nsw i64 %1200 to i32
  br label %1204

1204:                                             ; preds = %1202, %1115
  %1205 = phi ptr [ %1086, %1115 ], [ %1195, %1202 ]
  %1206 = phi i32 [ %1087, %1115 ], [ %1194, %1202 ]
  %1207 = phi i64 [ %1088, %1115 ], [ %1199, %1202 ]
  %1208 = phi i32 [ %1089, %1115 ], [ %1203, %1202 ]
  %1209 = zext nneg i8 %1090 to i64
  %1210 = lshr i64 %1207, %1209
  %1211 = trunc i64 %1210 to i32
  %1212 = and i32 %1211, 127
  %1213 = add nuw nsw i32 %1212, 11
  %1214 = lshr i64 %1210, 7
  %reass.sub781 = sub i32 %1208, %1085
  %1215 = add i32 %reass.sub781, -7
  br label %1216

1216:                                             ; preds = %1204, %1175, %1148
  %1217 = phi ptr [ %1139, %1148 ], [ %1176, %1175 ], [ %1205, %1204 ]
  %1218 = phi i32 [ %1140, %1148 ], [ %1177, %1175 ], [ %1206, %1204 ]
  %1219 = phi i64 [ %1156, %1148 ], [ %1185, %1175 ], [ %1214, %1204 ]
  %1220 = phi i32 [ %1157, %1148 ], [ %1186, %1175 ], [ %1215, %1204 ]
  %1221 = phi i32 [ %1155, %1148 ], [ %1184, %1175 ], [ %1213, %1204 ]
  %1222 = phi i16 [ %1152, %1148 ], [ 0, %1175 ], [ 0, %1204 ]
  %1223 = add i32 %1221, %1045
  %1224 = icmp ugt i32 %1223, %1033
  br i1 %1224, label %1301, label %1225

1225:                                             ; preds = %1216
  %1226 = icmp samesign ult i32 %1221, 4
  %1227 = sub nsw i32 0, %1221
  %1228 = icmp ugt i32 %1045, %1227
  %1229 = select i1 %1226, i1 true, i1 %1228
  br i1 %1229, label %1267, label %1230

1230:                                             ; preds = %1225
  %1231 = icmp samesign ult i32 %1221, 16
  br i1 %1231, label %._crit_edge, label %1232

1232:                                             ; preds = %1230
  %1233 = and i32 %1221, -16
  %1234 = insertelement <8 x i16> poison, i16 %1222, i64 0
  %1235 = shufflevector <8 x i16> %1234, <8 x i16> poison, <8 x i32> zeroinitializer
  %1236 = zext nneg i32 %1233 to i64
  br label %1237

1237:                                             ; preds = %1237, %1232
  %indvars.iv = phi i64 [ %indvars.iv.next, %1237 ], [ 0, %1232 ]
  %1238 = trunc nuw i64 %indvars.iv to i32
  %1239 = add i32 %1045, %1238
  %1240 = zext i32 %1239 to i64
  %1241 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1240
  %1242 = getelementptr inbounds nuw i8, ptr %1241, i64 16
  store <8 x i16> %1235, ptr %1241, align 2, !tbaa !75
  store <8 x i16> %1235, ptr %1242, align 2, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %1243 = icmp eq i64 %indvars.iv.next, %1236
  br i1 %1243, label %1244, label %1237, !llvm.loop !84

1244:                                             ; preds = %1237
  %1245 = add i32 %1233, %1045
  %1246 = icmp eq i32 %1221, %1233
  br i1 %1246, label %.loopexit, label %1247

1247:                                             ; preds = %1244
  %1248 = and i32 %1221, 15
  %1249 = and i32 %1221, 12
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1267, label %._crit_edge, !prof !87

._crit_edge:                                      ; preds = %1230, %1247
  %1251 = phi i32 [ %1233, %1247 ], [ 0, %1230 ]
  %1252 = and i32 %1221, -4
  %1253 = insertelement <4 x i16> poison, i16 %1222, i64 0
  %1254 = shufflevector <4 x i16> %1253, <4 x i16> poison, <4 x i32> zeroinitializer
  %1255 = zext nneg i32 %1251 to i64
  %1256 = zext nneg i32 %1252 to i64
  br label %1257

1257:                                             ; preds = %1257, %._crit_edge
  %indvars.iv1375 = phi i64 [ %indvars.iv.next1376, %1257 ], [ %1255, %._crit_edge ]
  %1258 = trunc nuw i64 %indvars.iv1375 to i32
  %1259 = add i32 %1045, %1258
  %1260 = zext i32 %1259 to i64
  %1261 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1260
  store <4 x i16> %1254, ptr %1261, align 2, !tbaa !75
  %indvars.iv.next1376 = add nuw nsw i64 %indvars.iv1375, 4
  %1262 = icmp eq i64 %indvars.iv.next1376, %1256
  br i1 %1262, label %1263, label %1257, !llvm.loop !88

1263:                                             ; preds = %1257
  %1264 = and i32 %1221, 3
  %1265 = add i32 %1252, %1045
  %1266 = icmp eq i32 %1221, %1252
  br i1 %1266, label %.loopexit, label %1267

1267:                                             ; preds = %1263, %1247, %1225
  %1268 = phi i32 [ %1221, %1225 ], [ %1248, %1247 ], [ %1264, %1263 ]
  %1269 = phi i32 [ %1045, %1225 ], [ %1245, %1247 ], [ %1265, %1263 ]
  %1270 = add nsw i32 %1268, -1
  %1271 = and i32 %1268, 3
  %1272 = icmp eq i32 %1271, 0
  br i1 %1272, label %.loopexit169, label %.preheader168

.preheader168:                                    ; preds = %1267, %.preheader168
  %1273 = phi i32 [ %1275, %.preheader168 ], [ %1269, %1267 ]
  %1274 = phi i32 [ %1278, %.preheader168 ], [ 0, %1267 ]
  %1275 = add i32 %1273, 1
  %1276 = zext i32 %1273 to i64
  %1277 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1276
  store i16 %1222, ptr %1277, align 2, !tbaa !75
  %1278 = add nuw nsw i32 %1274, 1
  %1279 = icmp eq i32 %1278, %1271
  br i1 %1279, label %.loopexit169.loopexit, label %.preheader168, !llvm.loop !89

.loopexit169.loopexit:                            ; preds = %.preheader168
  %1280 = and i32 %1268, -4
  br label %.loopexit169

.loopexit169:                                     ; preds = %.loopexit169.loopexit, %1267
  %1281 = phi i32 [ poison, %1267 ], [ %1275, %.loopexit169.loopexit ]
  %1282 = phi i32 [ %1268, %1267 ], [ %1280, %.loopexit169.loopexit ]
  %1283 = phi i32 [ %1269, %1267 ], [ %1275, %.loopexit169.loopexit ]
  %1284 = icmp ult i32 %1270, 3
  br i1 %1284, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit169
  %1285 = add nsw i32 %1282, -4
  %1286 = and i32 %1285, 4
  %lcmp.mod.not.not = icmp eq i32 %1286, 0
  br i1 %lcmp.mod.not.not, label %.preheader.prol, label %.preheader.prol.loopexit

.preheader.prol:                                  ; preds = %.preheader.preheader
  %1287 = add i32 %1283, 1
  %1288 = zext i32 %1283 to i64
  %1289 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1288
  store i16 %1222, ptr %1289, align 2, !tbaa !75
  %1290 = add i32 %1283, 2
  %1291 = zext i32 %1287 to i64
  %1292 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1291
  store i16 %1222, ptr %1292, align 2, !tbaa !75
  %1293 = add i32 %1283, 3
  %1294 = zext i32 %1290 to i64
  %1295 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1294
  store i16 %1222, ptr %1295, align 2, !tbaa !75
  %1296 = add nsw i32 %1282, -4
  %1297 = add i32 %1283, 4
  %1298 = zext i32 %1293 to i64
  %1299 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1298
  store i16 %1222, ptr %1299, align 2, !tbaa !75
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa2792.unr = phi i32 [ poison, %.preheader.preheader ], [ %1297, %.preheader.prol ]
  %.unr = phi i32 [ %1282, %.preheader.preheader ], [ %1296, %.preheader.prol ]
  %.unr3316 = phi i32 [ %1283, %.preheader.preheader ], [ %1297, %.preheader.prol ]
  %1300 = icmp ult i32 %1285, 4
  br i1 %1300, label %.loopexit, label %.preheader

1301:                                             ; preds = %1216
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %1302 = phi i32 [ %1325, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %1303 = phi i32 [ %1326, %.preheader ], [ %.unr3316, %.preheader.prol.loopexit ]
  %1304 = add i32 %1303, 1
  %1305 = zext i32 %1303 to i64
  %1306 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1305
  store i16 %1222, ptr %1306, align 2, !tbaa !75
  %1307 = add i32 %1303, 2
  %1308 = zext i32 %1304 to i64
  %1309 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1308
  store i16 %1222, ptr %1309, align 2, !tbaa !75
  %1310 = add i32 %1303, 3
  %1311 = zext i32 %1307 to i64
  %1312 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1311
  store i16 %1222, ptr %1312, align 2, !tbaa !75
  %1313 = add i32 %1303, 4
  %1314 = zext i32 %1310 to i64
  %1315 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1314
  store i16 %1222, ptr %1315, align 2, !tbaa !75
  %1316 = add i32 %1303, 5
  %1317 = zext i32 %1313 to i64
  %1318 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1317
  store i16 %1222, ptr %1318, align 2, !tbaa !75
  %1319 = add i32 %1303, 6
  %1320 = zext i32 %1316 to i64
  %1321 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1320
  store i16 %1222, ptr %1321, align 2, !tbaa !75
  %1322 = add i32 %1303, 7
  %1323 = zext i32 %1319 to i64
  %1324 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1323
  store i16 %1222, ptr %1324, align 2, !tbaa !75
  %1325 = add i32 %1302, -8
  %1326 = add i32 %1303, 8
  %1327 = zext i32 %1322 to i64
  %1328 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1327
  store i16 %1222, ptr %1328, align 2, !tbaa !75
  %1329 = icmp eq i32 %1325, 0
  br i1 %1329, label %.loopexit, label %.preheader, !llvm.loop !91

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %.loopexit169, %1263, %1244
  %1330 = phi i32 [ %1265, %1263 ], [ %1245, %1244 ], [ %1281, %.loopexit169 ], [ %.lcssa2792.unr, %.preheader.prol.loopexit ], [ %1326, %.preheader ]
  store i32 %1330, ptr %60, align 4, !tbaa !52
  br label %1331

1331:                                             ; preds = %.loopexit, %1095
  %1332 = phi i32 [ %1099, %1095 ], [ %1330, %.loopexit ]
  %1333 = phi ptr [ %1086, %1095 ], [ %1217, %.loopexit ]
  %1334 = phi i32 [ %1087, %1095 ], [ %1218, %.loopexit ]
  %1335 = phi i64 [ %1097, %1095 ], [ %1219, %.loopexit ]
  %1336 = phi i32 [ %1098, %1095 ], [ %1220, %.loopexit ]
  %1337 = icmp ult i32 %1332, %1033
  br i1 %1337, label %1040, label %.loopexit186, !llvm.loop !92

.loopexit186:                                     ; preds = %1331, %1024
  %1338 = phi ptr [ %1026, %1024 ], [ %1333, %1331 ]
  %1339 = phi i32 [ %1027, %1024 ], [ %1334, %1331 ]
  %1340 = phi i64 [ %1028, %1024 ], [ %1335, %1331 ]
  %1341 = phi i32 [ %1029, %1024 ], [ %1336, %1331 ]
  %1342 = load i16, ptr %68, align 8, !tbaa !75
  %1343 = icmp eq i16 %1342, 0
  br i1 %1343, label %1344, label %1345

1344:                                             ; preds = %.loopexit186
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

1345:                                             ; preds = %.loopexit186
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !79
  %1346 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1031, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #11
  %1347 = icmp eq i32 %1346, 0
  br i1 %1347, label %1349, label %1348

1348:                                             ; preds = %1345
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

1349:                                             ; preds = %1345
  %1350 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1350, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !93
  %1351 = load i32, ptr %57, align 4, !tbaa !72
  %1352 = zext i32 %1351 to i64
  %1353 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1352
  %1354 = load i32, ptr %58, align 8, !tbaa !73
  %1355 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1353, i32 noundef %1354, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #11
  %1356 = icmp eq i32 %1355, 0
  br i1 %1356, label %1358, label %1357

1357:                                             ; preds = %1349
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

1358:                                             ; preds = %1349
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit187, label %1359

1359:                                             ; preds = %1358, %88
  %1360 = phi ptr [ %1338, %1358 ], [ %90, %88 ]
  %1361 = phi i32 [ %1339, %1358 ], [ %92, %88 ]
  %1362 = phi i64 [ %1340, %1358 ], [ %94, %88 ]
  %1363 = phi i32 [ %1341, %1358 ], [ %95, %88 ]
  %1364 = phi i32 [ 0, %1358 ], [ %97, %88 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1365

1365:                                             ; preds = %1359, %88
  %1366 = phi ptr [ %1360, %1359 ], [ %90, %88 ]
  %1367 = phi i32 [ %1361, %1359 ], [ %92, %88 ]
  %1368 = phi i64 [ %1362, %1359 ], [ %94, %88 ]
  %1369 = phi i32 [ %1363, %1359 ], [ %95, %88 ]
  %1370 = phi i32 [ %1364, %1359 ], [ %97, %88 ]
  %1371 = icmp ugt i32 %1367, 5
  %1372 = icmp ugt i32 %93, 257
  %1373 = select i1 %1371, i1 %1372, i1 false
  br i1 %1373, label %1374, label %1384

1374:                                             ; preds = %1365
  store ptr %91, ptr %26, align 8, !tbaa !47
  store i32 %93, ptr %41, align 8, !tbaa !50
  store ptr %1366, ptr %0, align 8, !tbaa !48
  store i32 %1367, ptr %43, align 8, !tbaa !49
  store i64 %1368, ptr %45, align 8, !tbaa !31
  store i32 %1369, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %96) #11
  %1375 = load ptr, ptr %26, align 8, !tbaa !47
  %1376 = load i32, ptr %41, align 8, !tbaa !50
  %1377 = load ptr, ptr %0, align 8, !tbaa !48
  %1378 = load i32, ptr %43, align 8, !tbaa !49
  %1379 = load i64, ptr %45, align 8, !tbaa !31
  %1380 = load i32, ptr %47, align 8, !tbaa !32
  %1381 = load i32, ptr %21, align 8, !tbaa !20
  %1382 = icmp eq i32 %1381, 16191
  br i1 %1382, label %1383, label %2119

1383:                                             ; preds = %1374
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2119

1384:                                             ; preds = %1365
  store i32 0, ptr %71, align 4, !tbaa !37
  %1385 = load ptr, ptr %65, align 8, !tbaa !35
  %1386 = load i32, ptr %66, align 8, !tbaa !79
  %1387 = shl nsw i32 -1, %1386
  %1388 = xor i32 %1387, -1
  %1389 = trunc i64 %1368 to i32
  %1390 = and i32 %1388, %1389
  %1391 = zext nneg i32 %1390 to i64
  %1392 = getelementptr inbounds nuw [4 x i8], ptr %1385, i64 %1391
  %1393 = getelementptr inbounds nuw i8, ptr %1392, i64 1
  %1394 = load i8, ptr %1393, align 1, !tbaa !44
  %1395 = zext i8 %1394 to i32
  %1396 = icmp ult i32 %1369, %1395
  br i1 %1396, label %1397, label %1426

1397:                                             ; preds = %1384
  %1398 = icmp eq i32 %1367, 0
  br i1 %1398, label %.loopexit184, label %1399

1399:                                             ; preds = %1397
  %1400 = zext nneg i32 %1369 to i64
  br label %1403

1401:                                             ; preds = %1403
  %1402 = icmp eq i32 %1408, 0
  br i1 %1402, label %.loopexit184, label %1403

1403:                                             ; preds = %1401, %1399
  %1404 = phi ptr [ %1366, %1399 ], [ %1409, %1401 ]
  %1405 = phi i32 [ %1367, %1399 ], [ %1408, %1401 ]
  %1406 = phi i64 [ %1368, %1399 ], [ %1413, %1401 ]
  %1407 = phi i64 [ %1400, %1399 ], [ %1414, %1401 ]
  %1408 = add i32 %1405, -1
  %1409 = getelementptr inbounds nuw i8, ptr %1404, i64 1
  %1410 = load i8, ptr %1404, align 1, !tbaa !44
  %1411 = zext i8 %1410 to i64
  %1412 = shl i64 %1411, %1407
  %1413 = add i64 %1412, %1406
  %1414 = add nuw nsw i64 %1407, 8
  %1415 = trunc i64 %1413 to i32
  %1416 = and i32 %1415, %1388
  %1417 = zext nneg i32 %1416 to i64
  %1418 = getelementptr inbounds nuw [4 x i8], ptr %1385, i64 %1417
  %1419 = getelementptr inbounds nuw i8, ptr %1418, i64 1
  %1420 = load i8, ptr %1419, align 1, !tbaa !44
  %1421 = zext i8 %1420 to i64
  %1422 = icmp samesign ult i64 %1414, %1421
  br i1 %1422, label %1401, label %1423

1423:                                             ; preds = %1403
  %1424 = zext i8 %1420 to i32
  %1425 = trunc nuw nsw i64 %1414 to i32
  br label %1426

1426:                                             ; preds = %1423, %1384
  %1427 = phi ptr [ %1392, %1384 ], [ %1418, %1423 ]
  %1428 = phi ptr [ %1366, %1384 ], [ %1409, %1423 ]
  %1429 = phi i32 [ %1367, %1384 ], [ %1408, %1423 ]
  %1430 = phi i64 [ %1368, %1384 ], [ %1413, %1423 ]
  %1431 = phi i32 [ %1369, %1384 ], [ %1425, %1423 ]
  %1432 = phi i8 [ %1394, %1384 ], [ %1420, %1423 ]
  %1433 = phi i32 [ %1395, %1384 ], [ %1424, %1423 ]
  %1434 = getelementptr inbounds nuw i8, ptr %1427, i64 2
  %1435 = load i16, ptr %1434, align 2, !tbaa !75
  %1436 = load i8, ptr %1427, align 2, !tbaa !44
  %1437 = add i8 %1436, -1
  %1438 = icmp ult i8 %1437, 15
  br i1 %1438, label %1439, label %1501

1439:                                             ; preds = %1426
  %1440 = zext nneg i8 %1436 to i32
  %1441 = zext i16 %1435 to i32
  %1442 = add nuw nsw i32 %1433, %1440
  %1443 = shl nsw i32 -1, %1442
  %1444 = xor i32 %1443, -1
  %1445 = trunc i64 %1430 to i32
  %1446 = and i32 %1444, %1445
  %1447 = lshr i32 %1446, %1433
  %1448 = add nuw i32 %1447, %1441
  %1449 = zext i32 %1448 to i64
  %1450 = getelementptr inbounds nuw [4 x i8], ptr %1385, i64 %1449
  %1451 = getelementptr inbounds nuw i8, ptr %1450, i64 1
  %1452 = load i8, ptr %1451, align 1, !tbaa !44
  %1453 = zext i8 %1452 to i32
  %1454 = add nuw nsw i32 %1433, %1453
  %1455 = icmp ugt i32 %1454, %1431
  br i1 %1455, label %1456, label %1488

1456:                                             ; preds = %1439
  %1457 = icmp eq i32 %1429, 0
  br i1 %1457, label %.loopexit183, label %1458

1458:                                             ; preds = %1456
  %1459 = zext nneg i32 %1431 to i64
  br label %1462

1460:                                             ; preds = %1462
  %1461 = icmp eq i32 %1467, 0
  br i1 %1461, label %.loopexit183, label %1462

1462:                                             ; preds = %1460, %1458
  %1463 = phi ptr [ %1428, %1458 ], [ %1468, %1460 ]
  %1464 = phi i32 [ %1429, %1458 ], [ %1467, %1460 ]
  %1465 = phi i64 [ %1430, %1458 ], [ %1472, %1460 ]
  %1466 = phi i64 [ %1459, %1458 ], [ %1473, %1460 ]
  %1467 = add i32 %1464, -1
  %1468 = getelementptr inbounds nuw i8, ptr %1463, i64 1
  %1469 = load i8, ptr %1463, align 1, !tbaa !44
  %1470 = zext i8 %1469 to i64
  %1471 = shl i64 %1470, %1466
  %1472 = add i64 %1471, %1465
  %1473 = add nuw nsw i64 %1466, 8
  %1474 = trunc i64 %1472 to i32
  %1475 = and i32 %1474, %1444
  %1476 = lshr i32 %1475, %1433
  %1477 = add nuw i32 %1476, %1441
  %1478 = zext i32 %1477 to i64
  %1479 = getelementptr inbounds nuw [4 x i8], ptr %1385, i64 %1478
  %1480 = getelementptr inbounds nuw i8, ptr %1479, i64 1
  %1481 = load i8, ptr %1480, align 1, !tbaa !44
  %1482 = zext i8 %1481 to i32
  %1483 = add nuw nsw i32 %1433, %1482
  %1484 = zext nneg i32 %1483 to i64
  %1485 = icmp samesign ult i64 %1473, %1484
  br i1 %1485, label %1460, label %1486

1486:                                             ; preds = %1462
  %1487 = trunc nuw nsw i64 %1473 to i32
  br label %1488

1488:                                             ; preds = %1486, %1439
  %1489 = phi ptr [ %1450, %1439 ], [ %1479, %1486 ]
  %1490 = phi ptr [ %1428, %1439 ], [ %1468, %1486 ]
  %1491 = phi i32 [ %1429, %1439 ], [ %1467, %1486 ]
  %1492 = phi i64 [ %1430, %1439 ], [ %1472, %1486 ]
  %1493 = phi i32 [ %1431, %1439 ], [ %1487, %1486 ]
  %1494 = phi i8 [ %1452, %1439 ], [ %1481, %1486 ]
  %1495 = load i8, ptr %1489, align 2, !tbaa !44
  %1496 = getelementptr inbounds nuw i8, ptr %1489, i64 2
  %1497 = load i16, ptr %1496, align 2, !tbaa !75
  %1498 = sub i32 %1493, %1433
  %1499 = zext nneg i8 %1432 to i64
  %1500 = lshr i64 %1492, %1499
  br label %1501

1501:                                             ; preds = %1488, %1426
  %1502 = phi i32 [ %1433, %1488 ], [ 0, %1426 ]
  %1503 = phi ptr [ %1490, %1488 ], [ %1428, %1426 ]
  %1504 = phi i32 [ %1491, %1488 ], [ %1429, %1426 ]
  %1505 = phi i64 [ %1500, %1488 ], [ %1430, %1426 ]
  %1506 = phi i32 [ %1498, %1488 ], [ %1431, %1426 ]
  %1507 = phi i16 [ %1497, %1488 ], [ %1435, %1426 ]
  %1508 = phi i8 [ %1494, %1488 ], [ %1432, %1426 ]
  %1509 = phi i8 [ %1495, %1488 ], [ %1436, %1426 ]
  %1510 = zext i8 %1508 to i32
  %1511 = zext nneg i8 %1508 to i64
  %1512 = lshr i64 %1505, %1511
  %1513 = sub i32 %1506, %1510
  %1514 = add nuw nsw i32 %1502, %1510
  store i32 %1514, ptr %71, align 4, !tbaa !37
  %1515 = zext i16 %1507 to i32
  store i32 %1515, ptr %56, align 4, !tbaa !60
  %1516 = zext i8 %1509 to i32
  %1517 = icmp eq i8 %1509, 0
  br i1 %1517, label %1518, label %1519

1518:                                             ; preds = %1501
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2119

1519:                                             ; preds = %1501
  %1520 = and i32 %1516, 32
  %1521 = icmp eq i32 %1520, 0
  br i1 %1521, label %1523, label %1522

1522:                                             ; preds = %1519
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2119

1523:                                             ; preds = %1519
  %1524 = and i32 %1516, 64
  %1525 = icmp eq i32 %1524, 0
  br i1 %1525, label %1527, label %1526

1526:                                             ; preds = %1523
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

1527:                                             ; preds = %1523
  %1528 = and i32 %1516, 15
  store i32 %1528, ptr %72, align 4, !tbaa !51
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1529

1529:                                             ; preds = %1527, %101
  %1530 = phi i32 [ %1528, %1527 ], [ %102, %101 ]
  %1531 = phi ptr [ %1503, %1527 ], [ %90, %101 ]
  %1532 = phi i32 [ %1504, %1527 ], [ %92, %101 ]
  %1533 = phi i64 [ %1512, %1527 ], [ %94, %101 ]
  %1534 = phi i32 [ %1513, %1527 ], [ %95, %101 ]
  %1535 = phi i32 [ %1370, %1527 ], [ %97, %101 ]
  %1536 = icmp eq i32 %1530, 0
  br i1 %1536, label %1537, label %1539

1537:                                             ; preds = %1529
  %1538 = load i32, ptr %56, align 4, !tbaa !60
  br label %1573

1539:                                             ; preds = %1529
  %1540 = icmp ult i32 %1534, %1530
  br i1 %1540, label %1541, label %.loopexit181

1541:                                             ; preds = %1539
  %1542 = icmp eq i32 %1532, 0
  br i1 %1542, label %.loopexit182, label %.preheader180

1543:                                             ; preds = %.preheader180
  %1544 = icmp eq i32 %1549, 0
  br i1 %1544, label %.loopexit182, label %.preheader180, !llvm.loop !94

.preheader180:                                    ; preds = %1541, %1543
  %1545 = phi ptr [ %1550, %1543 ], [ %1531, %1541 ]
  %1546 = phi i32 [ %1549, %1543 ], [ %1532, %1541 ]
  %1547 = phi i64 [ %1555, %1543 ], [ %1533, %1541 ]
  %1548 = phi i32 [ %1556, %1543 ], [ %1534, %1541 ]
  %1549 = add i32 %1546, -1
  %1550 = getelementptr inbounds nuw i8, ptr %1545, i64 1
  %1551 = load i8, ptr %1545, align 1, !tbaa !44
  %1552 = zext i8 %1551 to i64
  %1553 = zext nneg i32 %1548 to i64
  %1554 = shl i64 %1552, %1553
  %1555 = add i64 %1554, %1547
  %1556 = add i32 %1548, 8
  %1557 = icmp ult i32 %1556, %1530
  br i1 %1557, label %1543, label %.loopexit181, !llvm.loop !94

.loopexit181:                                     ; preds = %.preheader180, %1539
  %1558 = phi ptr [ %1531, %1539 ], [ %1550, %.preheader180 ]
  %1559 = phi i32 [ %1532, %1539 ], [ %1549, %.preheader180 ]
  %1560 = phi i64 [ %1533, %1539 ], [ %1555, %.preheader180 ]
  %1561 = phi i32 [ %1534, %1539 ], [ %1556, %.preheader180 ]
  %1562 = trunc i64 %1560 to i32
  %1563 = shl nsw i32 -1, %1530
  %1564 = xor i32 %1563, -1
  %1565 = and i32 %1562, %1564
  %1566 = load i32, ptr %56, align 4, !tbaa !60
  %1567 = add i32 %1566, %1565
  store i32 %1567, ptr %56, align 4, !tbaa !60
  %1568 = zext nneg i32 %1530 to i64
  %1569 = lshr i64 %1560, %1568
  %1570 = sub nuw i32 %1561, %1530
  %1571 = load i32, ptr %71, align 4, !tbaa !37
  %1572 = add i32 %1571, %1530
  store i32 %1572, ptr %71, align 4, !tbaa !37
  br label %1573

1573:                                             ; preds = %.loopexit181, %1537
  %1574 = phi i32 [ %1567, %.loopexit181 ], [ %1538, %1537 ]
  %1575 = phi ptr [ %1558, %.loopexit181 ], [ %1531, %1537 ]
  %1576 = phi i32 [ %1559, %.loopexit181 ], [ %1532, %1537 ]
  %1577 = phi i64 [ %1569, %.loopexit181 ], [ %1533, %1537 ]
  %1578 = phi i32 [ %1570, %.loopexit181 ], [ %1534, %1537 ]
  store i32 %1574, ptr %73, align 8, !tbaa !95
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1579

1579:                                             ; preds = %1573, %88
  %1580 = phi ptr [ %1575, %1573 ], [ %90, %88 ]
  %1581 = phi i32 [ %1576, %1573 ], [ %92, %88 ]
  %1582 = phi i64 [ %1577, %1573 ], [ %94, %88 ]
  %1583 = phi i32 [ %1578, %1573 ], [ %95, %88 ]
  %1584 = phi i32 [ %1535, %1573 ], [ %97, %88 ]
  %1585 = load ptr, ptr %64, align 8, !tbaa !34
  %1586 = load i32, ptr %69, align 4, !tbaa !93
  %1587 = shl nsw i32 -1, %1586
  %1588 = xor i32 %1587, -1
  %1589 = trunc i64 %1582 to i32
  %1590 = and i32 %1588, %1589
  %1591 = zext nneg i32 %1590 to i64
  %1592 = getelementptr inbounds nuw [4 x i8], ptr %1585, i64 %1591
  %1593 = getelementptr inbounds nuw i8, ptr %1592, i64 1
  %1594 = load i8, ptr %1593, align 1, !tbaa !44
  %1595 = zext i8 %1594 to i32
  %1596 = icmp ult i32 %1583, %1595
  br i1 %1596, label %1597, label %1626

1597:                                             ; preds = %1579
  %1598 = icmp eq i32 %1581, 0
  br i1 %1598, label %.loopexit179, label %1599

1599:                                             ; preds = %1597
  %1600 = zext nneg i32 %1583 to i64
  br label %1603

1601:                                             ; preds = %1603
  %1602 = icmp eq i32 %1608, 0
  br i1 %1602, label %.loopexit179, label %1603

1603:                                             ; preds = %1601, %1599
  %1604 = phi ptr [ %1580, %1599 ], [ %1609, %1601 ]
  %1605 = phi i32 [ %1581, %1599 ], [ %1608, %1601 ]
  %1606 = phi i64 [ %1582, %1599 ], [ %1613, %1601 ]
  %1607 = phi i64 [ %1600, %1599 ], [ %1614, %1601 ]
  %1608 = add i32 %1605, -1
  %1609 = getelementptr inbounds nuw i8, ptr %1604, i64 1
  %1610 = load i8, ptr %1604, align 1, !tbaa !44
  %1611 = zext i8 %1610 to i64
  %1612 = shl i64 %1611, %1607
  %1613 = add i64 %1612, %1606
  %1614 = add nuw nsw i64 %1607, 8
  %1615 = trunc i64 %1613 to i32
  %1616 = and i32 %1615, %1588
  %1617 = zext nneg i32 %1616 to i64
  %1618 = getelementptr inbounds nuw [4 x i8], ptr %1585, i64 %1617
  %1619 = getelementptr inbounds nuw i8, ptr %1618, i64 1
  %1620 = load i8, ptr %1619, align 1, !tbaa !44
  %1621 = zext i8 %1620 to i64
  %1622 = icmp samesign ult i64 %1614, %1621
  br i1 %1622, label %1601, label %1623

1623:                                             ; preds = %1603
  %1624 = zext i8 %1620 to i32
  %1625 = trunc nuw nsw i64 %1614 to i32
  br label %1626

1626:                                             ; preds = %1623, %1579
  %1627 = phi ptr [ %1592, %1579 ], [ %1618, %1623 ]
  %1628 = phi ptr [ %1580, %1579 ], [ %1609, %1623 ]
  %1629 = phi i32 [ %1581, %1579 ], [ %1608, %1623 ]
  %1630 = phi i64 [ %1582, %1579 ], [ %1613, %1623 ]
  %1631 = phi i32 [ %1583, %1579 ], [ %1625, %1623 ]
  %1632 = phi i8 [ %1594, %1579 ], [ %1620, %1623 ]
  %1633 = phi i32 [ %1595, %1579 ], [ %1624, %1623 ]
  %1634 = getelementptr inbounds nuw i8, ptr %1627, i64 2
  %1635 = load i16, ptr %1634, align 2, !tbaa !75
  %1636 = load i8, ptr %1627, align 2, !tbaa !44
  %1637 = icmp ult i8 %1636, 16
  br i1 %1637, label %1640, label %1638

1638:                                             ; preds = %1626
  %1639 = load i32, ptr %71, align 4, !tbaa !37
  br label %1707

1640:                                             ; preds = %1626
  %1641 = zext nneg i8 %1636 to i32
  %1642 = zext i16 %1635 to i32
  %1643 = add nuw nsw i32 %1633, %1641
  %1644 = shl nsw i32 -1, %1643
  %1645 = xor i32 %1644, -1
  %1646 = trunc i64 %1630 to i32
  %1647 = and i32 %1645, %1646
  %1648 = lshr i32 %1647, %1633
  %1649 = add nuw i32 %1648, %1642
  %1650 = zext i32 %1649 to i64
  %1651 = getelementptr inbounds nuw [4 x i8], ptr %1585, i64 %1650
  %1652 = getelementptr inbounds nuw i8, ptr %1651, i64 1
  %1653 = load i8, ptr %1652, align 1, !tbaa !44
  %1654 = zext i8 %1653 to i32
  %1655 = add nuw nsw i32 %1633, %1654
  %1656 = icmp ugt i32 %1655, %1631
  br i1 %1656, label %1657, label %1689

1657:                                             ; preds = %1640
  %1658 = icmp eq i32 %1629, 0
  br i1 %1658, label %.loopexit178, label %1659

1659:                                             ; preds = %1657
  %1660 = zext nneg i32 %1631 to i64
  br label %1663

1661:                                             ; preds = %1663
  %1662 = icmp eq i32 %1668, 0
  br i1 %1662, label %.loopexit178, label %1663

1663:                                             ; preds = %1661, %1659
  %1664 = phi ptr [ %1628, %1659 ], [ %1669, %1661 ]
  %1665 = phi i32 [ %1629, %1659 ], [ %1668, %1661 ]
  %1666 = phi i64 [ %1630, %1659 ], [ %1673, %1661 ]
  %1667 = phi i64 [ %1660, %1659 ], [ %1674, %1661 ]
  %1668 = add i32 %1665, -1
  %1669 = getelementptr inbounds nuw i8, ptr %1664, i64 1
  %1670 = load i8, ptr %1664, align 1, !tbaa !44
  %1671 = zext i8 %1670 to i64
  %1672 = shl i64 %1671, %1667
  %1673 = add i64 %1672, %1666
  %1674 = add nuw nsw i64 %1667, 8
  %1675 = trunc i64 %1673 to i32
  %1676 = and i32 %1675, %1645
  %1677 = lshr i32 %1676, %1633
  %1678 = add nuw i32 %1677, %1642
  %1679 = zext i32 %1678 to i64
  %1680 = getelementptr inbounds nuw [4 x i8], ptr %1585, i64 %1679
  %1681 = getelementptr inbounds nuw i8, ptr %1680, i64 1
  %1682 = load i8, ptr %1681, align 1, !tbaa !44
  %1683 = zext i8 %1682 to i32
  %1684 = add nuw nsw i32 %1633, %1683
  %1685 = zext nneg i32 %1684 to i64
  %1686 = icmp samesign ult i64 %1674, %1685
  br i1 %1686, label %1661, label %1687

1687:                                             ; preds = %1663
  %1688 = trunc nuw nsw i64 %1674 to i32
  br label %1689

1689:                                             ; preds = %1687, %1640
  %1690 = phi ptr [ %1651, %1640 ], [ %1680, %1687 ]
  %1691 = phi ptr [ %1628, %1640 ], [ %1669, %1687 ]
  %1692 = phi i32 [ %1629, %1640 ], [ %1668, %1687 ]
  %1693 = phi i64 [ %1630, %1640 ], [ %1673, %1687 ]
  %1694 = phi i32 [ %1631, %1640 ], [ %1688, %1687 ]
  %1695 = phi i8 [ %1653, %1640 ], [ %1682, %1687 ]
  %1696 = load i32, ptr %71, align 4, !tbaa !37
  %1697 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1696, i32 %1633), !nosanitize !80
  %1698 = extractvalue { i32, i1 } %1697, 1, !nosanitize !80
  br i1 %1698, label %.loopexit201, label %1699, !prof !96, !nosanitize !80

1699:                                             ; preds = %1689
  %1700 = getelementptr inbounds nuw i8, ptr %1690, i64 2
  %1701 = load i16, ptr %1700, align 2, !tbaa !75
  %1702 = load i8, ptr %1690, align 2, !tbaa !44
  %1703 = extractvalue { i32, i1 } %1697, 0, !nosanitize !80
  %1704 = sub i32 %1694, %1633
  %1705 = zext nneg i8 %1632 to i64
  %1706 = lshr i64 %1693, %1705
  store i32 %1703, ptr %71, align 4, !tbaa !37
  br label %1707

1707:                                             ; preds = %1699, %1638
  %1708 = phi i32 [ %1703, %1699 ], [ %1639, %1638 ]
  %1709 = phi ptr [ %1691, %1699 ], [ %1628, %1638 ]
  %1710 = phi i32 [ %1692, %1699 ], [ %1629, %1638 ]
  %1711 = phi i64 [ %1706, %1699 ], [ %1630, %1638 ]
  %1712 = phi i32 [ %1704, %1699 ], [ %1631, %1638 ]
  %1713 = phi i16 [ %1701, %1699 ], [ %1635, %1638 ]
  %1714 = phi i8 [ %1695, %1699 ], [ %1632, %1638 ]
  %1715 = phi i8 [ %1702, %1699 ], [ %1636, %1638 ]
  %1716 = zext i8 %1714 to i32
  %1717 = zext nneg i8 %1714 to i64
  %1718 = lshr i64 %1711, %1717
  %1719 = sub i32 %1712, %1716
  %1720 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1708, i32 %1716), !nosanitize !80
  %1721 = extractvalue { i32, i1 } %1720, 1, !nosanitize !80
  br i1 %1721, label %.loopexit201, label %1722, !prof !96, !nosanitize !80

1722:                                             ; preds = %1707
  %1723 = extractvalue { i32, i1 } %1720, 0, !nosanitize !80
  store i32 %1723, ptr %71, align 4, !tbaa !37
  %1724 = zext i8 %1715 to i32
  %1725 = and i32 %1724, 64
  %1726 = icmp eq i32 %1725, 0
  br i1 %1726, label %1728, label %1727

1727:                                             ; preds = %1722
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

1728:                                             ; preds = %1722
  %1729 = zext i16 %1713 to i32
  store i32 %1729, ptr %74, align 8, !tbaa !97
  %1730 = and i32 %1724, 15
  store i32 %1730, ptr %72, align 4, !tbaa !51
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1731

1731:                                             ; preds = %1728, %99
  %1732 = phi i32 [ %1730, %1728 ], [ %100, %99 ]
  %1733 = phi ptr [ %1709, %1728 ], [ %90, %99 ]
  %1734 = phi i32 [ %1710, %1728 ], [ %92, %99 ]
  %1735 = phi i64 [ %1718, %1728 ], [ %94, %99 ]
  %1736 = phi i32 [ %1719, %1728 ], [ %95, %99 ]
  %1737 = phi i32 [ %1584, %1728 ], [ %97, %99 ]
  %1738 = icmp eq i32 %1732, 0
  br i1 %1738, label %1773, label %1739

1739:                                             ; preds = %1731
  %1740 = icmp ult i32 %1736, %1732
  br i1 %1740, label %1741, label %.loopexit176

1741:                                             ; preds = %1739
  %1742 = icmp eq i32 %1734, 0
  br i1 %1742, label %.loopexit177, label %.preheader175

1743:                                             ; preds = %.preheader175
  %1744 = icmp eq i32 %1749, 0
  br i1 %1744, label %.loopexit177, label %.preheader175, !llvm.loop !98

.preheader175:                                    ; preds = %1741, %1743
  %1745 = phi ptr [ %1750, %1743 ], [ %1733, %1741 ]
  %1746 = phi i32 [ %1749, %1743 ], [ %1734, %1741 ]
  %1747 = phi i64 [ %1755, %1743 ], [ %1735, %1741 ]
  %1748 = phi i32 [ %1756, %1743 ], [ %1736, %1741 ]
  %1749 = add i32 %1746, -1
  %1750 = getelementptr inbounds nuw i8, ptr %1745, i64 1
  %1751 = load i8, ptr %1745, align 1, !tbaa !44
  %1752 = zext i8 %1751 to i64
  %1753 = zext nneg i32 %1748 to i64
  %1754 = shl i64 %1752, %1753
  %1755 = add i64 %1754, %1747
  %1756 = add i32 %1748, 8
  %1757 = icmp ult i32 %1756, %1732
  br i1 %1757, label %1743, label %.loopexit176, !llvm.loop !98

.loopexit176:                                     ; preds = %.preheader175, %1739
  %1758 = phi ptr [ %1733, %1739 ], [ %1750, %.preheader175 ]
  %1759 = phi i32 [ %1734, %1739 ], [ %1749, %.preheader175 ]
  %1760 = phi i64 [ %1735, %1739 ], [ %1755, %.preheader175 ]
  %1761 = phi i32 [ %1736, %1739 ], [ %1756, %.preheader175 ]
  %1762 = trunc i64 %1760 to i32
  %1763 = shl nsw i32 -1, %1732
  %1764 = xor i32 %1763, -1
  %1765 = and i32 %1762, %1764
  %1766 = load i32, ptr %74, align 8, !tbaa !97
  %1767 = add i32 %1766, %1765
  store i32 %1767, ptr %74, align 8, !tbaa !97
  %1768 = zext nneg i32 %1732 to i64
  %1769 = lshr i64 %1760, %1768
  %1770 = sub nuw i32 %1761, %1732
  %1771 = load i32, ptr %71, align 4, !tbaa !37
  %1772 = add i32 %1771, %1732
  store i32 %1772, ptr %71, align 4, !tbaa !37
  br label %1773

1773:                                             ; preds = %.loopexit176, %1731
  %1774 = phi ptr [ %1758, %.loopexit176 ], [ %1733, %1731 ]
  %1775 = phi i32 [ %1759, %.loopexit176 ], [ %1734, %1731 ]
  %1776 = phi i64 [ %1769, %.loopexit176 ], [ %1735, %1731 ]
  %1777 = phi i32 [ %1770, %.loopexit176 ], [ %1736, %1731 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1778

1778:                                             ; preds = %1773, %88
  %1779 = phi ptr [ %1774, %1773 ], [ %90, %88 ]
  %1780 = phi i32 [ %1775, %1773 ], [ %92, %88 ]
  %1781 = phi i64 [ %1776, %1773 ], [ %94, %88 ]
  %1782 = phi i32 [ %1777, %1773 ], [ %95, %88 ]
  %1783 = phi i32 [ %1737, %1773 ], [ %97, %88 ]
  %1784 = icmp eq i32 %93, 0
  br i1 %1784, label %.loopexit187, label %1785

1785:                                             ; preds = %1778
  %1786 = sub i32 %96, %93
  %1787 = load i32, ptr %74, align 8, !tbaa !97
  %1788 = icmp ugt i32 %1787, %1786
  br i1 %1788, label %1789, label %1814

1789:                                             ; preds = %1785
  %1790 = sub nuw i32 %1787, %1786
  %1791 = load i32, ptr %75, align 8, !tbaa !39
  %1792 = icmp ugt i32 %1790, %1791
  br i1 %1792, label %1793, label %1797

1793:                                             ; preds = %1789
  %1794 = load i32, ptr %76, align 8, !tbaa !36
  %1795 = icmp eq i32 %1794, 0
  br i1 %1795, label %1797, label %1796

1796:                                             ; preds = %1793
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

1797:                                             ; preds = %1793, %1789
  %1798 = load i32, ptr %77, align 4, !tbaa !40
  %1799 = icmp ugt i32 %1790, %1798
  br i1 %1799, label %1800, label %1804

1800:                                             ; preds = %1797
  %1801 = sub nuw i32 %1790, %1798
  %1802 = load i32, ptr %79, align 4, !tbaa !38
  %1803 = sub i32 %1802, %1801
  br label %1806

1804:                                             ; preds = %1797
  %1805 = sub nuw i32 %1798, %1790
  br label %1806

1806:                                             ; preds = %1804, %1800
  %1807 = phi i32 [ %1805, %1804 ], [ %1803, %1800 ]
  %1808 = phi i32 [ %1790, %1804 ], [ %1801, %1800 ]
  %1809 = load ptr, ptr %78, align 8, !tbaa !41
  %1810 = zext i32 %1807 to i64
  %1811 = getelementptr inbounds nuw i8, ptr %1809, i64 %1810
  %1812 = load i32, ptr %56, align 4, !tbaa !60
  %1813 = call i32 @llvm.umin.i32(i32 %1808, i32 %1812)
  br label %1819

1814:                                             ; preds = %1785
  %1815 = zext i32 %1787 to i64
  %1816 = sub nsw i64 0, %1815
  %1817 = getelementptr inbounds i8, ptr %91, i64 %1816
  %1818 = load i32, ptr %56, align 4, !tbaa !60
  br label %1819

1819:                                             ; preds = %1814, %1806
  %1820 = phi i32 [ %1818, %1814 ], [ %1812, %1806 ]
  %1821 = phi i32 [ %1818, %1814 ], [ %1813, %1806 ]
  %1822 = phi ptr [ %1817, %1814 ], [ %1811, %1806 ]
  %1823 = call i32 @llvm.umin.i32(i32 %1821, i32 %93)
  %1824 = sub i32 %1820, %1823
  store i32 %1824, ptr %56, align 4, !tbaa !60
  %1825 = add i32 %1823, -1
  %1826 = zext i32 %1825 to i64
  %1827 = add nuw nsw i64 %1826, 1
  %1828 = icmp ult i32 %1825, 3
  %1829 = ptrtoaddr ptr %1822 to i64
  %1830 = sub i64 %98, %1829
  %1831 = icmp ult i64 %1830, 32
  %1832 = select i1 %1828, i1 true, i1 %1831
  br i1 %1832, label %1872, label %1833

1833:                                             ; preds = %1819
  %1834 = icmp ult i32 %1825, 31
  br i1 %1834, label %1856, label %1835

1835:                                             ; preds = %1833
  %1836 = and i64 %1827, 8589934560
  br label %1837

1837:                                             ; preds = %1837, %1835
  %1838 = phi i64 [ 0, %1835 ], [ %1845, %1837 ]
  %1839 = getelementptr i8, ptr %91, i64 %1838
  %1840 = getelementptr i8, ptr %1822, i64 %1838
  %1841 = getelementptr i8, ptr %1840, i64 16
  %1842 = load <16 x i8>, ptr %1840, align 1, !tbaa !44
  %1843 = load <16 x i8>, ptr %1841, align 1, !tbaa !44
  %1844 = getelementptr i8, ptr %1839, i64 16
  store <16 x i8> %1842, ptr %1839, align 1, !tbaa !44
  store <16 x i8> %1843, ptr %1844, align 1, !tbaa !44
  %1845 = add nuw i64 %1838, 32
  %1846 = icmp eq i64 %1845, %1836
  br i1 %1846, label %1847, label %1837, !llvm.loop !99

1847:                                             ; preds = %1837
  %1848 = getelementptr i8, ptr %91, i64 %1836
  %1849 = icmp eq i64 %1827, %1836
  br i1 %1849, label %.loopexit172, label %1850

1850:                                             ; preds = %1847
  %1851 = getelementptr i8, ptr %1822, i64 %1836
  %1852 = trunc i64 %1836 to i32
  %1853 = sub i32 %1823, %1852
  %1854 = and i64 %1827, 28
  %1855 = icmp eq i64 %1854, 0
  br i1 %1855, label %1872, label %1856, !prof !100

1856:                                             ; preds = %1850, %1833
  %1857 = phi i64 [ %1836, %1850 ], [ 0, %1833 ]
  %1858 = and i64 %1827, 8589934588
  br label %1859

1859:                                             ; preds = %1859, %1856
  %1860 = phi i64 [ %1857, %1856 ], [ %1864, %1859 ]
  %1861 = getelementptr i8, ptr %91, i64 %1860
  %1862 = getelementptr i8, ptr %1822, i64 %1860
  %1863 = load <4 x i8>, ptr %1862, align 1, !tbaa !44
  store <4 x i8> %1863, ptr %1861, align 1, !tbaa !44
  %1864 = add nuw i64 %1860, 4
  %1865 = icmp eq i64 %1864, %1858
  br i1 %1865, label %1866, label %1859, !llvm.loop !101

1866:                                             ; preds = %1859
  %1867 = getelementptr i8, ptr %91, i64 %1858
  %1868 = trunc i64 %1858 to i32
  %1869 = sub i32 %1823, %1868
  %1870 = getelementptr i8, ptr %1822, i64 %1858
  %1871 = icmp eq i64 %1827, %1858
  br i1 %1871, label %.loopexit172, label %1872

1872:                                             ; preds = %1866, %1850, %1819
  %1873 = phi ptr [ %91, %1819 ], [ %1848, %1850 ], [ %1867, %1866 ]
  %1874 = phi i32 [ %1823, %1819 ], [ %1853, %1850 ], [ %1869, %1866 ]
  %1875 = phi ptr [ %1822, %1819 ], [ %1851, %1850 ], [ %1870, %1866 ]
  %1876 = add i32 %1874, -1
  %1877 = and i32 %1874, 7
  %1878 = icmp eq i32 %1877, 0
  br i1 %1878, label %.loopexit174, label %.preheader173

.preheader173:                                    ; preds = %1872, %.preheader173
  %1879 = phi ptr [ %1884, %.preheader173 ], [ %1873, %1872 ]
  %1880 = phi ptr [ %1882, %.preheader173 ], [ %1875, %1872 ]
  %1881 = phi i32 [ %1885, %.preheader173 ], [ 0, %1872 ]
  %1882 = getelementptr inbounds nuw i8, ptr %1880, i64 1
  %1883 = load i8, ptr %1880, align 1, !tbaa !44
  %1884 = getelementptr inbounds nuw i8, ptr %1879, i64 1
  store i8 %1883, ptr %1879, align 1, !tbaa !44
  %1885 = add nuw nsw i32 %1881, 1
  %1886 = icmp eq i32 %1885, %1877
  br i1 %1886, label %.loopexit174.loopexit, label %.preheader173, !llvm.loop !102

.loopexit174.loopexit:                            ; preds = %.preheader173
  %1887 = and i32 %1874, -8
  br label %.loopexit174

.loopexit174:                                     ; preds = %.loopexit174.loopexit, %1872
  %1888 = phi ptr [ poison, %1872 ], [ %1884, %.loopexit174.loopexit ]
  %1889 = phi ptr [ %1873, %1872 ], [ %1884, %.loopexit174.loopexit ]
  %1890 = phi i32 [ %1874, %1872 ], [ %1887, %.loopexit174.loopexit ]
  %1891 = phi ptr [ %1875, %1872 ], [ %1882, %.loopexit174.loopexit ]
  %1892 = icmp ult i32 %1876, 7
  br i1 %1892, label %.loopexit172, label %.preheader171

.preheader171:                                    ; preds = %.loopexit174, %.preheader171
  %1893 = phi ptr [ %1919, %.preheader171 ], [ %1889, %.loopexit174 ]
  %1894 = phi i32 [ %1920, %.preheader171 ], [ %1890, %.loopexit174 ]
  %1895 = phi ptr [ %1917, %.preheader171 ], [ %1891, %.loopexit174 ]
  %1896 = getelementptr inbounds nuw i8, ptr %1895, i64 1
  %1897 = load i8, ptr %1895, align 1, !tbaa !44
  %1898 = getelementptr inbounds nuw i8, ptr %1893, i64 1
  store i8 %1897, ptr %1893, align 1, !tbaa !44
  %1899 = getelementptr inbounds nuw i8, ptr %1895, i64 2
  %1900 = load i8, ptr %1896, align 1, !tbaa !44
  %1901 = getelementptr inbounds nuw i8, ptr %1893, i64 2
  store i8 %1900, ptr %1898, align 1, !tbaa !44
  %1902 = getelementptr inbounds nuw i8, ptr %1895, i64 3
  %1903 = load i8, ptr %1899, align 1, !tbaa !44
  %1904 = getelementptr inbounds nuw i8, ptr %1893, i64 3
  store i8 %1903, ptr %1901, align 1, !tbaa !44
  %1905 = getelementptr inbounds nuw i8, ptr %1895, i64 4
  %1906 = load i8, ptr %1902, align 1, !tbaa !44
  %1907 = getelementptr inbounds nuw i8, ptr %1893, i64 4
  store i8 %1906, ptr %1904, align 1, !tbaa !44
  %1908 = getelementptr inbounds nuw i8, ptr %1895, i64 5
  %1909 = load i8, ptr %1905, align 1, !tbaa !44
  %1910 = getelementptr inbounds nuw i8, ptr %1893, i64 5
  store i8 %1909, ptr %1907, align 1, !tbaa !44
  %1911 = getelementptr inbounds nuw i8, ptr %1895, i64 6
  %1912 = load i8, ptr %1908, align 1, !tbaa !44
  %1913 = getelementptr inbounds nuw i8, ptr %1893, i64 6
  store i8 %1912, ptr %1910, align 1, !tbaa !44
  %1914 = getelementptr inbounds nuw i8, ptr %1895, i64 7
  %1915 = load i8, ptr %1911, align 1, !tbaa !44
  %1916 = getelementptr inbounds nuw i8, ptr %1893, i64 7
  store i8 %1915, ptr %1913, align 1, !tbaa !44
  %1917 = getelementptr inbounds nuw i8, ptr %1895, i64 8
  %1918 = load i8, ptr %1914, align 1, !tbaa !44
  %1919 = getelementptr inbounds nuw i8, ptr %1893, i64 8
  store i8 %1918, ptr %1916, align 1, !tbaa !44
  %1920 = add i32 %1894, -8
  %1921 = icmp eq i32 %1920, 0
  br i1 %1921, label %.loopexit172, label %.preheader171, !llvm.loop !103

.loopexit172:                                     ; preds = %.preheader171, %.loopexit174, %1866, %1847
  %1922 = phi ptr [ %1867, %1866 ], [ %1848, %1847 ], [ %1888, %.loopexit174 ], [ %1919, %.preheader171 ]
  %1923 = sub i32 %93, %1823
  %1924 = load i32, ptr %56, align 4, !tbaa !60
  %1925 = icmp eq i32 %1924, 0
  br i1 %1925, label %1926, label %2119

1926:                                             ; preds = %.loopexit172
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2119

1927:                                             ; preds = %88
  %1928 = icmp eq i32 %93, 0
  br i1 %1928, label %.loopexit187, label %1929

1929:                                             ; preds = %1927
  %1930 = load i32, ptr %56, align 4, !tbaa !60
  %1931 = trunc i32 %1930 to i8
  %1932 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i8 %1931, ptr %91, align 1, !tbaa !44
  %1933 = add i32 %93, -1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2119

1934:                                             ; preds = %88
  %1935 = load i32, ptr %49, align 8, !tbaa !24
  %1936 = icmp eq i32 %1935, 0
  br i1 %1936, label %2032, label %1937

1937:                                             ; preds = %1934
  %1938 = icmp ult i32 %95, 32
  br i1 %1938, label %1939, label %1989

1939:                                             ; preds = %1937
  %1940 = zext nneg i32 %95 to i64
  %1941 = icmp eq i32 %92, 0
  br i1 %1941, label %2185, label %1942

1942:                                             ; preds = %1939
  %1943 = add i32 %92, -1
  %1944 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %1945 = load i8, ptr %90, align 1, !tbaa !44
  %1946 = zext i8 %1945 to i64
  %1947 = shl nuw nsw i64 %1946, %1940
  %1948 = add i64 %1947, %94
  %1949 = add nuw nsw i64 %1940, 8
  %1950 = icmp samesign ult i32 %95, 24
  br i1 %1950, label %1951, label %1983

1951:                                             ; preds = %1942
  %1952 = icmp eq i32 %1943, 0
  br i1 %1952, label %2185, label %1953

1953:                                             ; preds = %1951
  %1954 = add i32 %92, -2
  %1955 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %1956 = load i8, ptr %1944, align 1, !tbaa !44
  %1957 = zext i8 %1956 to i64
  %1958 = shl nuw nsw i64 %1957, %1949
  %1959 = add i64 %1958, %1948
  %1960 = add nuw nsw i64 %1940, 16
  %1961 = icmp samesign ult i32 %95, 16
  br i1 %1961, label %1962, label %1983

1962:                                             ; preds = %1953
  %1963 = icmp eq i32 %1954, 0
  br i1 %1963, label %2185, label %1964

1964:                                             ; preds = %1962
  %1965 = add i32 %92, -3
  %1966 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %1967 = load i8, ptr %1955, align 1, !tbaa !44
  %1968 = zext i8 %1967 to i64
  %1969 = shl nuw nsw i64 %1968, %1960
  %1970 = add i64 %1969, %1959
  %1971 = add nuw nsw i64 %1940, 24
  %1972 = icmp samesign ult i32 %95, 8
  br i1 %1972, label %1973, label %1983

1973:                                             ; preds = %1964
  %1974 = icmp eq i32 %1965, 0
  br i1 %1974, label %2185, label %1975

1975:                                             ; preds = %1973
  %1976 = add i32 %92, -4
  %1977 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %1978 = load i8, ptr %1966, align 1, !tbaa !44
  %1979 = zext i8 %1978 to i64
  %1980 = shl nuw nsw i64 %1979, %1971
  %1981 = add i64 %1980, %1970
  %1982 = or disjoint i64 %1940, 32
  br label %1983

1983:                                             ; preds = %1975, %1964, %1953, %1942
  %1984 = phi i32 [ %1943, %1942 ], [ %1954, %1953 ], [ %1965, %1964 ], [ %1976, %1975 ]
  %1985 = phi ptr [ %1944, %1942 ], [ %1955, %1953 ], [ %1966, %1964 ], [ %1977, %1975 ]
  %1986 = phi i64 [ %1948, %1942 ], [ %1959, %1953 ], [ %1970, %1964 ], [ %1981, %1975 ]
  %1987 = phi i64 [ %1949, %1942 ], [ %1960, %1953 ], [ %1971, %1964 ], [ %1982, %1975 ]
  %1988 = trunc nuw nsw i64 %1987 to i32
  br label %1989

1989:                                             ; preds = %1983, %1937
  %1990 = phi ptr [ %90, %1937 ], [ %1985, %1983 ]
  %1991 = phi i32 [ %92, %1937 ], [ %1984, %1983 ]
  %1992 = phi i64 [ %94, %1937 ], [ %1986, %1983 ]
  %1993 = phi i32 [ %95, %1937 ], [ %1988, %1983 ]
  %1994 = sub i32 %96, %93
  %1995 = zext i32 %1994 to i64
  %1996 = load i64, ptr %50, align 8, !tbaa !104
  %1997 = add i64 %1996, %1995
  store i64 %1997, ptr %50, align 8, !tbaa !104
  %1998 = load i64, ptr %51, align 8, !tbaa !21
  %1999 = add i64 %1998, %1995
  store i64 %1999, ptr %51, align 8, !tbaa !21
  %2000 = and i32 %1935, 4
  %2001 = icmp ne i32 %2000, 0
  %2002 = icmp ne i32 %96, %93
  %2003 = select i1 %2001, i1 %2002, i1 false
  br i1 %2003, label %2004, label %2018

2004:                                             ; preds = %1989
  %2005 = load i32, ptr %52, align 8, !tbaa !28
  %2006 = icmp eq i32 %2005, 0
  %2007 = load i64, ptr %53, align 8, !tbaa !53
  %2008 = sub nsw i64 0, %1995
  %2009 = getelementptr inbounds i8, ptr %91, i64 %2008
  br i1 %2006, label %2012, label %2010

2010:                                             ; preds = %2004
  %2011 = call i64 @crc32(i64 noundef %2007, ptr noundef %2009, i32 noundef %1994) #11
  br label %2014

2012:                                             ; preds = %2004
  %2013 = call i64 @adler32(i64 noundef %2007, ptr noundef %2009, i32 noundef %1994) #11
  br label %2014

2014:                                             ; preds = %2012, %2010
  %2015 = phi i64 [ %2011, %2010 ], [ %2013, %2012 ]
  store i64 %2015, ptr %53, align 8, !tbaa !53
  store i64 %2015, ptr %54, align 8, !tbaa !25
  %2016 = load i32, ptr %49, align 8, !tbaa !24
  %2017 = and i32 %2016, 4
  br label %2018

2018:                                             ; preds = %2014, %1989
  %2019 = phi i32 [ %2017, %2014 ], [ %2000, %1989 ]
  %2020 = phi i32 [ %2016, %2014 ], [ %1935, %1989 ]
  %2021 = icmp eq i32 %2019, 0
  br i1 %2021, label %2032, label %2022

2022:                                             ; preds = %2018
  %2023 = load i32, ptr %52, align 8, !tbaa !28
  %2024 = icmp eq i32 %2023, 0
  %2025 = trunc i64 %1992 to i32
  %2026 = call i32 @llvm.bswap.i32(i32 %2025)
  %2027 = zext i32 %2026 to i64
  %2028 = select i1 %2024, i64 %2027, i64 %1992
  %2029 = load i64, ptr %53, align 8, !tbaa !53
  %2030 = icmp eq i64 %2028, %2029
  br i1 %2030, label %2032, label %2031

2031:                                             ; preds = %2022
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

2032:                                             ; preds = %2022, %2018, %1934
  %2033 = phi i32 [ 0, %1934 ], [ %2020, %2018 ], [ %2020, %2022 ]
  %2034 = phi ptr [ %90, %1934 ], [ %1990, %2018 ], [ %1990, %2022 ]
  %2035 = phi i32 [ %92, %1934 ], [ %1991, %2018 ], [ %1991, %2022 ]
  %2036 = phi i64 [ %94, %1934 ], [ 0, %2018 ], [ 0, %2022 ]
  %2037 = phi i32 [ %95, %1934 ], [ 0, %2018 ], [ 0, %2022 ]
  %2038 = phi i32 [ %96, %1934 ], [ %93, %2018 ], [ %93, %2022 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2039

2039:                                             ; preds = %2032, %105
  %2040 = phi i32 [ %2033, %2032 ], [ %106, %105 ]
  %2041 = phi ptr [ %2034, %2032 ], [ %90, %105 ]
  %2042 = phi i32 [ %2035, %2032 ], [ %92, %105 ]
  %2043 = phi i64 [ %2036, %2032 ], [ %94, %105 ]
  %2044 = phi i32 [ %2037, %2032 ], [ %95, %105 ]
  %2045 = phi i32 [ %2038, %2032 ], [ %96, %105 ]
  %2046 = icmp eq i32 %2040, 0
  br i1 %2046, label %2114, label %2047

2047:                                             ; preds = %2039
  %2048 = load i32, ptr %52, align 8, !tbaa !28
  %2049 = icmp eq i32 %2048, 0
  br i1 %2049, label %2114, label %2050

2050:                                             ; preds = %2047
  %2051 = icmp ult i32 %2044, 32
  br i1 %2051, label %2052, label %2102

2052:                                             ; preds = %2050
  %2053 = zext nneg i32 %2044 to i64
  %2054 = icmp eq i32 %2042, 0
  br i1 %2054, label %2180, label %2055

2055:                                             ; preds = %2052
  %2056 = add i32 %2042, -1
  %2057 = getelementptr inbounds nuw i8, ptr %2041, i64 1
  %2058 = load i8, ptr %2041, align 1, !tbaa !44
  %2059 = zext i8 %2058 to i64
  %2060 = shl nuw nsw i64 %2059, %2053
  %2061 = add i64 %2060, %2043
  %2062 = add nuw nsw i64 %2053, 8
  %2063 = icmp samesign ult i32 %2044, 24
  br i1 %2063, label %2064, label %2096

2064:                                             ; preds = %2055
  %2065 = icmp eq i32 %2056, 0
  br i1 %2065, label %2180, label %2066

2066:                                             ; preds = %2064
  %2067 = add i32 %2042, -2
  %2068 = getelementptr inbounds nuw i8, ptr %2041, i64 2
  %2069 = load i8, ptr %2057, align 1, !tbaa !44
  %2070 = zext i8 %2069 to i64
  %2071 = shl nuw nsw i64 %2070, %2062
  %2072 = add i64 %2071, %2061
  %2073 = add nuw nsw i64 %2053, 16
  %2074 = icmp samesign ult i32 %2044, 16
  br i1 %2074, label %2075, label %2096

2075:                                             ; preds = %2066
  %2076 = icmp eq i32 %2067, 0
  br i1 %2076, label %2180, label %2077

2077:                                             ; preds = %2075
  %2078 = add i32 %2042, -3
  %2079 = getelementptr inbounds nuw i8, ptr %2041, i64 3
  %2080 = load i8, ptr %2068, align 1, !tbaa !44
  %2081 = zext i8 %2080 to i64
  %2082 = shl nuw nsw i64 %2081, %2073
  %2083 = add i64 %2082, %2072
  %2084 = add nuw nsw i64 %2053, 24
  %2085 = icmp samesign ult i32 %2044, 8
  br i1 %2085, label %2086, label %2096

2086:                                             ; preds = %2077
  %2087 = icmp eq i32 %2078, 0
  br i1 %2087, label %2180, label %2088

2088:                                             ; preds = %2086
  %2089 = add i32 %2042, -4
  %2090 = getelementptr inbounds nuw i8, ptr %2041, i64 4
  %2091 = load i8, ptr %2079, align 1, !tbaa !44
  %2092 = zext i8 %2091 to i64
  %2093 = shl nuw nsw i64 %2092, %2084
  %2094 = add i64 %2093, %2083
  %2095 = or disjoint i64 %2053, 32
  br label %2096

2096:                                             ; preds = %2088, %2077, %2066, %2055
  %2097 = phi i32 [ %2056, %2055 ], [ %2067, %2066 ], [ %2078, %2077 ], [ %2089, %2088 ]
  %2098 = phi ptr [ %2057, %2055 ], [ %2068, %2066 ], [ %2079, %2077 ], [ %2090, %2088 ]
  %2099 = phi i64 [ %2061, %2055 ], [ %2072, %2066 ], [ %2083, %2077 ], [ %2094, %2088 ]
  %2100 = phi i64 [ %2062, %2055 ], [ %2073, %2066 ], [ %2084, %2077 ], [ %2095, %2088 ]
  %2101 = trunc nuw nsw i64 %2100 to i32
  br label %2102

2102:                                             ; preds = %2096, %2050
  %2103 = phi ptr [ %2041, %2050 ], [ %2098, %2096 ]
  %2104 = phi i32 [ %2042, %2050 ], [ %2097, %2096 ]
  %2105 = phi i64 [ %2043, %2050 ], [ %2099, %2096 ]
  %2106 = phi i32 [ %2044, %2050 ], [ %2101, %2096 ]
  %2107 = and i32 %2040, 4
  %2108 = icmp eq i32 %2107, 0
  br i1 %2108, label %2114, label %2109

2109:                                             ; preds = %2102
  %2110 = load i64, ptr %51, align 8, !tbaa !21
  %2111 = and i64 %2110, 4294967295
  %2112 = icmp eq i64 %2105, %2111
  br i1 %2112, label %2114, label %2113

2113:                                             ; preds = %2109
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2119

2114:                                             ; preds = %2109, %2102, %2047, %2039
  %2115 = phi ptr [ %2041, %2039 ], [ %2041, %2047 ], [ %2103, %2102 ], [ %2103, %2109 ]
  %2116 = phi i32 [ %2042, %2039 ], [ %2042, %2047 ], [ %2104, %2102 ], [ %2104, %2109 ]
  %2117 = phi i64 [ %2043, %2039 ], [ %2043, %2047 ], [ 0, %2102 ], [ 0, %2109 ]
  %2118 = phi i32 [ %2044, %2039 ], [ %2044, %2047 ], [ 0, %2102 ], [ 0, %2109 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %.loopexit187

2119:                                             ; preds = %2113, %2031, %1929, %1926, %.loopexit172, %1796, %1727, %1526, %1522, %1518, %1383, %1374, %1357, %1348, %1344, %1301, %1147, %1022, %952, %907, %899, %879, %811, %780, %705, %692, %250, %246, %207, %206, %191, %187, %169, %130
  %2120 = phi ptr [ %90, %130 ], [ %157, %169 ], [ %157, %187 ], [ %157, %191 ], [ %157, %206 ], [ %157, %207 ], [ %239, %246 ], [ %239, %250 ], [ %681, %692 ], [ %694, %705 ], [ %770, %780 ], [ %795, %811 ], [ %871, %879 ], [ %902, %899 ], [ %889, %907 ], [ %934, %952 ], [ %967, %1022 ], [ %1139, %1147 ], [ %1338, %1344 ], [ %1338, %1348 ], [ %1338, %1357 ], [ %1377, %1383 ], [ %1377, %1374 ], [ %1503, %1518 ], [ %1503, %1522 ], [ %1503, %1526 ], [ %1709, %1727 ], [ %1779, %1796 ], [ %1779, %1926 ], [ %1779, %.loopexit172 ], [ %90, %1929 ], [ %1990, %2031 ], [ %2103, %2113 ], [ %1217, %1301 ]
  %2121 = phi ptr [ %91, %130 ], [ %91, %169 ], [ %91, %187 ], [ %91, %191 ], [ %91, %206 ], [ %91, %207 ], [ %91, %246 ], [ %91, %250 ], [ %91, %692 ], [ %91, %705 ], [ %91, %780 ], [ %91, %811 ], [ %91, %879 ], [ %904, %899 ], [ %91, %907 ], [ %91, %952 ], [ %91, %1022 ], [ %91, %1147 ], [ %91, %1344 ], [ %91, %1348 ], [ %91, %1357 ], [ %1375, %1383 ], [ %1375, %1374 ], [ %91, %1518 ], [ %91, %1522 ], [ %91, %1526 ], [ %91, %1727 ], [ %91, %1796 ], [ %1922, %1926 ], [ %1922, %.loopexit172 ], [ %1932, %1929 ], [ %91, %2031 ], [ %91, %2113 ], [ %91, %1301 ]
  %2122 = phi i32 [ %92, %130 ], [ %158, %169 ], [ %158, %187 ], [ %158, %191 ], [ %158, %206 ], [ %158, %207 ], [ %240, %246 ], [ %240, %250 ], [ %682, %692 ], [ %695, %705 ], [ %771, %780 ], [ %796, %811 ], [ %872, %879 ], [ %901, %899 ], [ %890, %907 ], [ %935, %952 ], [ %968, %1022 ], [ %1140, %1147 ], [ %1339, %1344 ], [ %1339, %1348 ], [ %1339, %1357 ], [ %1378, %1383 ], [ %1378, %1374 ], [ %1504, %1518 ], [ %1504, %1522 ], [ %1504, %1526 ], [ %1710, %1727 ], [ %1780, %1796 ], [ %1780, %1926 ], [ %1780, %.loopexit172 ], [ %92, %1929 ], [ %1991, %2031 ], [ %2104, %2113 ], [ %1218, %1301 ]
  %2123 = phi i32 [ %93, %130 ], [ %93, %169 ], [ %93, %187 ], [ %93, %191 ], [ %93, %206 ], [ %93, %207 ], [ %93, %246 ], [ %93, %250 ], [ %93, %692 ], [ %93, %705 ], [ %93, %780 ], [ %93, %811 ], [ %93, %879 ], [ %903, %899 ], [ %93, %907 ], [ %93, %952 ], [ %93, %1022 ], [ %93, %1147 ], [ %93, %1344 ], [ %93, %1348 ], [ %93, %1357 ], [ %1376, %1383 ], [ %1376, %1374 ], [ %93, %1518 ], [ %93, %1522 ], [ %93, %1526 ], [ %93, %1727 ], [ %93, %1796 ], [ %1923, %1926 ], [ %1923, %.loopexit172 ], [ %1933, %1929 ], [ %93, %2031 ], [ %93, %2113 ], [ %93, %1301 ]
  %2124 = phi i64 [ %94, %130 ], [ 0, %169 ], [ %159, %187 ], [ %159, %191 ], [ %193, %206 ], [ 0, %207 ], [ %241, %246 ], [ %241, %250 ], [ %683, %692 ], [ %696, %705 ], [ %783, %780 ], [ %812, %811 ], [ %873, %879 ], [ %891, %899 ], [ %891, %907 ], [ %947, %952 ], [ %969, %1022 ], [ %1144, %1147 ], [ %1340, %1344 ], [ %1340, %1348 ], [ %1340, %1357 ], [ %1379, %1383 ], [ %1379, %1374 ], [ %1512, %1518 ], [ %1512, %1522 ], [ %1512, %1526 ], [ %1718, %1727 ], [ %1781, %1796 ], [ %1781, %1926 ], [ %1781, %.loopexit172 ], [ %94, %1929 ], [ %1992, %2031 ], [ %2105, %2113 ], [ %1219, %1301 ]
  %2125 = phi i32 [ %95, %130 ], [ 0, %169 ], [ %160, %187 ], [ %160, %191 ], [ %194, %206 ], [ 0, %207 ], [ %242, %246 ], [ %242, %250 ], [ %684, %692 ], [ %697, %705 ], [ %784, %780 ], [ %813, %811 ], [ %874, %879 ], [ %892, %899 ], [ %892, %907 ], [ %948, %952 ], [ %970, %1022 ], [ %1145, %1147 ], [ %1341, %1344 ], [ %1341, %1348 ], [ %1341, %1357 ], [ %1380, %1383 ], [ %1380, %1374 ], [ %1513, %1518 ], [ %1513, %1522 ], [ %1513, %1526 ], [ %1719, %1727 ], [ %1782, %1796 ], [ %1782, %1926 ], [ %1782, %.loopexit172 ], [ %95, %1929 ], [ %1993, %2031 ], [ %2106, %2113 ], [ %1220, %1301 ]
  %2126 = phi i32 [ %96, %130 ], [ %96, %169 ], [ %96, %187 ], [ %96, %191 ], [ %96, %206 ], [ %96, %207 ], [ %96, %246 ], [ %96, %250 ], [ %96, %692 ], [ %96, %705 ], [ %96, %780 ], [ %96, %811 ], [ %96, %879 ], [ %96, %899 ], [ %96, %907 ], [ %96, %952 ], [ %96, %1022 ], [ %96, %1147 ], [ %96, %1344 ], [ %96, %1348 ], [ %96, %1357 ], [ %96, %1383 ], [ %96, %1374 ], [ %96, %1518 ], [ %96, %1522 ], [ %96, %1526 ], [ %96, %1727 ], [ %96, %1796 ], [ %96, %1926 ], [ %96, %.loopexit172 ], [ %96, %1929 ], [ %93, %2031 ], [ %2045, %2113 ], [ %96, %1301 ]
  %2127 = phi i32 [ %97, %130 ], [ %97, %169 ], [ %97, %187 ], [ %97, %191 ], [ %97, %206 ], [ %97, %207 ], [ %97, %246 ], [ %97, %250 ], [ %97, %692 ], [ %97, %705 ], [ %97, %780 ], [ %97, %811 ], [ %97, %879 ], [ %97, %899 ], [ %97, %907 ], [ %97, %952 ], [ %1020, %1022 ], [ %1030, %1147 ], [ %1030, %1344 ], [ %1346, %1348 ], [ %1355, %1357 ], [ %1370, %1383 ], [ %1370, %1374 ], [ %1370, %1518 ], [ %1370, %1522 ], [ %1370, %1526 ], [ %1584, %1727 ], [ %1783, %1796 ], [ %1783, %1926 ], [ %1783, %.loopexit172 ], [ %97, %1929 ], [ %97, %2031 ], [ %97, %2113 ], [ %1030, %1301 ]
  %2128 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

2129:                                             ; preds = %1187
  %2130 = trunc nuw nsw i64 %1188 to i32
  br label %.loopexit187

2131:                                             ; preds = %1121
  %2132 = trunc nuw nsw i64 %1122 to i32
  br label %.loopexit187

2133:                                             ; preds = %1158
  %2134 = trunc nuw nsw i64 %1159 to i32
  br label %.loopexit187

2135:                                             ; preds = %140, %127
  %2136 = phi i64 [ %128, %127 ], [ %138, %140 ]
  %2137 = phi i64 [ %94, %127 ], [ %137, %140 ]
  %2138 = phi ptr [ %90, %127 ], [ %133, %140 ]
  %2139 = trunc nuw nsw i64 %2136 to i32
  br label %.loopexit187

2140:                                             ; preds = %664, %652
  %2141 = phi i64 [ %653, %652 ], [ %662, %664 ]
  %2142 = phi i64 [ %645, %652 ], [ %661, %664 ]
  %2143 = phi ptr [ %643, %652 ], [ %657, %664 ]
  %2144 = trunc nuw nsw i64 %2141 to i32
  br label %.loopexit187

2145:                                             ; preds = %418, %401
  %2146 = phi i64 [ %407, %401 ], [ %416, %418 ]
  %2147 = phi i64 [ %404, %401 ], [ %415, %418 ]
  %2148 = phi ptr [ %402, %401 ], [ %411, %418 ]
  %2149 = trunc nuw nsw i64 %2146 to i32
  br label %.loopexit187

2150:                                             ; preds = %357, %341
  %2151 = phi i64 [ %346, %341 ], [ %355, %357 ]
  %2152 = phi i64 [ %343, %341 ], [ %354, %357 ]
  %2153 = phi ptr [ %345, %341 ], [ %350, %357 ]
  %2154 = trunc nuw nsw i64 %2151 to i32
  br label %.loopexit187

2155:                                             ; preds = %309, %298, %287, %271
  %2156 = phi i64 [ %276, %271 ], [ %285, %287 ], [ %296, %298 ], [ %307, %309 ]
  %2157 = phi i64 [ %273, %271 ], [ %284, %287 ], [ %295, %298 ], [ %306, %309 ]
  %2158 = phi ptr [ %275, %271 ], [ %280, %287 ], [ %291, %298 ], [ %302, %309 ]
  %2159 = trunc nuw nsw i64 %2156 to i32
  br label %.loopexit187

2160:                                             ; preds = %222, %119
  %2161 = phi i64 [ %120, %119 ], [ %220, %222 ]
  %2162 = phi i64 [ %94, %119 ], [ %219, %222 ]
  %2163 = phi ptr [ %90, %119 ], [ %215, %222 ]
  %2164 = trunc nuw nsw i64 %2161 to i32
  br label %.loopexit187

2165:                                             ; preds = %738, %727, %716, %114
  %2166 = phi i64 [ %115, %114 ], [ %714, %716 ], [ %725, %727 ], [ %736, %738 ]
  %2167 = phi i64 [ %94, %114 ], [ %713, %716 ], [ %724, %727 ], [ %735, %738 ]
  %2168 = phi ptr [ %90, %114 ], [ %709, %716 ], [ %720, %727 ], [ %731, %738 ]
  %2169 = trunc nuw nsw i64 %2166 to i32
  br label %.loopexit187

2170:                                             ; preds = %855, %844, %833, %820
  %2171 = phi i64 [ %822, %820 ], [ %831, %833 ], [ %842, %844 ], [ %853, %855 ]
  %2172 = phi i64 [ %817, %820 ], [ %830, %833 ], [ %841, %844 ], [ %852, %855 ]
  %2173 = phi ptr [ %90, %820 ], [ %826, %833 ], [ %837, %844 ], [ %848, %855 ]
  %2174 = trunc nuw nsw i64 %2171 to i32
  br label %.loopexit187

2175:                                             ; preds = %917, %109
  %2176 = phi i64 [ %110, %109 ], [ %915, %917 ]
  %2177 = phi i64 [ %94, %109 ], [ %914, %917 ]
  %2178 = phi ptr [ %90, %109 ], [ %910, %917 ]
  %2179 = trunc nuw nsw i64 %2176 to i32
  br label %.loopexit187

2180:                                             ; preds = %2086, %2075, %2064, %2052
  %2181 = phi i64 [ %2053, %2052 ], [ %2062, %2064 ], [ %2073, %2075 ], [ %2084, %2086 ]
  %2182 = phi i64 [ %2043, %2052 ], [ %2061, %2064 ], [ %2072, %2075 ], [ %2083, %2086 ]
  %2183 = phi ptr [ %2041, %2052 ], [ %2057, %2064 ], [ %2068, %2075 ], [ %2079, %2086 ]
  %2184 = trunc nuw nsw i64 %2181 to i32
  br label %.loopexit187

2185:                                             ; preds = %1973, %1962, %1951, %1939
  %2186 = phi i64 [ %1940, %1939 ], [ %1949, %1951 ], [ %1960, %1962 ], [ %1971, %1973 ]
  %2187 = phi i64 [ %94, %1939 ], [ %1948, %1951 ], [ %1959, %1962 ], [ %1970, %1973 ]
  %2188 = phi ptr [ %90, %1939 ], [ %1944, %1951 ], [ %1955, %1962 ], [ %1966, %1973 ]
  %2189 = trunc nuw nsw i64 %2186 to i32
  br label %.loopexit187

.loopexit170:                                     ; preds = %1054, %1058
  %2190 = phi i64 [ %1070, %1058 ], [ %1042, %1054 ]
  %2191 = zext i32 %1043 to i64
  %2192 = shl i32 %1043, 3
  %2193 = add i32 %2192, %1041
  %2194 = getelementptr i8, ptr %1044, i64 %2191
  br label %.loopexit187

.loopexit177:                                     ; preds = %1741, %1743
  %2195 = phi i64 [ %1755, %1743 ], [ %1735, %1741 ]
  %2196 = shl i32 %1734, 3
  %2197 = add i32 %1736, %2196
  %2198 = zext i32 %1734 to i64
  %2199 = getelementptr i8, ptr %1733, i64 %2198
  br label %.loopexit187

.loopexit178:                                     ; preds = %1657, %1661
  %2200 = phi i64 [ %1673, %1661 ], [ %1630, %1657 ]
  %2201 = zext i32 %1629 to i64
  %2202 = shl i32 %1629, 3
  %2203 = add i32 %1631, %2202
  %2204 = getelementptr i8, ptr %1628, i64 %2201
  br label %.loopexit187

.loopexit179:                                     ; preds = %1597, %1601
  %2205 = phi i64 [ %1613, %1601 ], [ %1582, %1597 ]
  %2206 = zext i32 %1581 to i64
  %2207 = shl i32 %1581, 3
  %2208 = add i32 %1583, %2207
  %2209 = getelementptr i8, ptr %1580, i64 %2206
  br label %.loopexit187

.loopexit182:                                     ; preds = %1541, %1543
  %2210 = phi i64 [ %1555, %1543 ], [ %1533, %1541 ]
  %2211 = shl i32 %1532, 3
  %2212 = add i32 %1534, %2211
  %2213 = zext i32 %1532 to i64
  %2214 = getelementptr i8, ptr %1531, i64 %2213
  br label %.loopexit187

.loopexit183:                                     ; preds = %1456, %1460
  %2215 = phi i64 [ %1472, %1460 ], [ %1430, %1456 ]
  %2216 = zext i32 %1429 to i64
  %2217 = shl i32 %1429, 3
  %2218 = add i32 %1431, %2217
  %2219 = getelementptr i8, ptr %1428, i64 %2216
  br label %.loopexit187

.loopexit184:                                     ; preds = %1397, %1401
  %2220 = phi i64 [ %1413, %1401 ], [ %1368, %1397 ]
  %2221 = zext i32 %1367 to i64
  %2222 = shl i32 %1367, 3
  %2223 = add i32 %1369, %2222
  %2224 = getelementptr i8, ptr %1366, i64 %2221
  br label %.loopexit187

.loopexit187.loopexit2728:                        ; preds = %88
  br label %.loopexit187

.loopexit187:                                     ; preds = %1927, %1778, %1358, %895, %880, %778, %764, %630, %590, %570, %530, %514, %982, %88, %.loopexit187.loopexit2728, %.loopexit184, %.loopexit183, %.loopexit182, %.loopexit179, %.loopexit178, %.loopexit177, %.loopexit170, %2185, %2180, %2175, %2170, %2165, %2160, %2155, %2150, %2145, %2140, %2135, %2133, %2131, %2129, %2114, %804
  %2225 = phi i32 [ %93, %2133 ], [ %93, %2145 ], [ %93, %2140 ], [ %93, %2135 ], [ %93, %88 ], [ %93, %2170 ], [ %93, %.loopexit170 ], [ %93, %.loopexit177 ], [ %93, %.loopexit184 ], [ %93, %2114 ], [ %93, %.loopexit182 ], [ %93, %2155 ], [ %93, %2129 ], [ %93, %2150 ], [ %93, %804 ], [ %93, %2165 ], [ %93, %2175 ], [ %93, %.loopexit183 ], [ %93, %.loopexit178 ], [ %93, %2131 ], [ %93, %2185 ], [ %93, %.loopexit179 ], [ %93, %982 ], [ %93, %2160 ], [ %93, %2180 ], [ %93, %778 ], [ 0, %1927 ], [ 0, %1778 ], [ %93, %1358 ], [ %93, %895 ], [ %93, %880 ], [ %93, %764 ], [ %93, %630 ], [ %93, %590 ], [ %93, %570 ], [ %93, %530 ], [ %93, %514 ], [ %93, %.loopexit187.loopexit2728 ]
  %2226 = phi ptr [ %1162, %2133 ], [ %2148, %2145 ], [ %2143, %2140 ], [ %2138, %2135 ], [ %90, %88 ], [ %2173, %2170 ], [ %2194, %.loopexit170 ], [ %2199, %.loopexit177 ], [ %2224, %.loopexit184 ], [ %2115, %2114 ], [ %2214, %.loopexit182 ], [ %2158, %2155 ], [ %1191, %2129 ], [ %2153, %2150 ], [ %795, %804 ], [ %2168, %2165 ], [ %2178, %2175 ], [ %2219, %.loopexit183 ], [ %2204, %.loopexit178 ], [ %1125, %2131 ], [ %2188, %2185 ], [ %2209, %.loopexit179 ], [ %980, %982 ], [ %2163, %2160 ], [ %2183, %2180 ], [ %770, %778 ], [ %90, %1927 ], [ %1779, %1778 ], [ %1338, %1358 ], [ %889, %895 ], [ %871, %880 ], [ %765, %764 ], [ %633, %630 ], [ %583, %590 ], [ %573, %570 ], [ %523, %530 ], [ %516, %514 ], [ %90, %.loopexit187.loopexit2728 ]
  %2227 = phi i32 [ 0, %2133 ], [ 0, %2145 ], [ 0, %2140 ], [ 0, %2135 ], [ %92, %88 ], [ 0, %2170 ], [ 0, %.loopexit170 ], [ 0, %.loopexit177 ], [ 0, %.loopexit184 ], [ %2116, %2114 ], [ 0, %.loopexit182 ], [ 0, %2155 ], [ 0, %2129 ], [ 0, %2150 ], [ %796, %804 ], [ 0, %2165 ], [ 0, %2175 ], [ 0, %.loopexit183 ], [ 0, %.loopexit178 ], [ 0, %2131 ], [ 0, %2185 ], [ 0, %.loopexit179 ], [ 0, %982 ], [ 0, %2160 ], [ 0, %2180 ], [ 0, %778 ], [ %92, %1927 ], [ %1780, %1778 ], [ %1339, %1358 ], [ %890, %895 ], [ %872, %880 ], [ %766, %764 ], [ %631, %630 ], [ 0, %590 ], [ %571, %570 ], [ 0, %530 ], [ %517, %514 ], [ %92, %.loopexit187.loopexit2728 ]
  %2228 = phi i64 [ %1160, %2133 ], [ %2147, %2145 ], [ %2142, %2140 ], [ %2137, %2135 ], [ %94, %88 ], [ %2172, %2170 ], [ %2190, %.loopexit170 ], [ %2195, %.loopexit177 ], [ %2220, %.loopexit184 ], [ %2117, %2114 ], [ %2210, %.loopexit182 ], [ %2157, %2155 ], [ %1189, %2129 ], [ %2152, %2150 ], [ %805, %804 ], [ %2167, %2165 ], [ %2177, %2175 ], [ %2215, %.loopexit183 ], [ %2200, %.loopexit178 ], [ %1123, %2131 ], [ %2187, %2185 ], [ %2205, %.loopexit179 ], [ %978, %982 ], [ %2162, %2160 ], [ %2182, %2180 ], [ %772, %778 ], [ %94, %1927 ], [ %1781, %1778 ], [ %1340, %1358 ], [ %891, %895 ], [ 0, %880 ], [ %767, %764 ], [ %585, %630 ], [ %585, %590 ], [ %525, %570 ], [ %525, %530 ], [ %465, %514 ], [ %94, %.loopexit187.loopexit2728 ]
  %2229 = phi i32 [ %2134, %2133 ], [ %2149, %2145 ], [ %2144, %2140 ], [ %2139, %2135 ], [ %95, %88 ], [ %2174, %2170 ], [ %2193, %.loopexit170 ], [ %2197, %.loopexit177 ], [ %2223, %.loopexit184 ], [ %2118, %2114 ], [ %2212, %.loopexit182 ], [ %2159, %2155 ], [ %2130, %2129 ], [ %2154, %2150 ], [ %806, %804 ], [ %2169, %2165 ], [ %2179, %2175 ], [ %2218, %.loopexit183 ], [ %2203, %.loopexit178 ], [ %2132, %2131 ], [ %2189, %2185 ], [ %2208, %.loopexit179 ], [ %977, %982 ], [ %2164, %2160 ], [ %2184, %2180 ], [ %773, %778 ], [ %95, %1927 ], [ %1782, %1778 ], [ %1341, %1358 ], [ %892, %895 ], [ 0, %880 ], [ %768, %764 ], [ %586, %630 ], [ %586, %590 ], [ %526, %570 ], [ %526, %530 ], [ %466, %514 ], [ %95, %.loopexit187.loopexit2728 ]
  %2230 = phi i32 [ %96, %2133 ], [ %96, %2145 ], [ %96, %2140 ], [ %96, %2135 ], [ %96, %88 ], [ %96, %2170 ], [ %96, %.loopexit170 ], [ %96, %.loopexit177 ], [ %96, %.loopexit184 ], [ %2045, %2114 ], [ %96, %.loopexit182 ], [ %96, %2155 ], [ %96, %2129 ], [ %96, %2150 ], [ %96, %804 ], [ %96, %2165 ], [ %96, %2175 ], [ %96, %.loopexit183 ], [ %96, %.loopexit178 ], [ %96, %2131 ], [ %96, %2185 ], [ %96, %.loopexit179 ], [ %96, %982 ], [ %96, %2160 ], [ %2045, %2180 ], [ %96, %514 ], [ %96, %530 ], [ %96, %570 ], [ %96, %590 ], [ %96, %630 ], [ %96, %764 ], [ %96, %778 ], [ %96, %880 ], [ %96, %895 ], [ %96, %1358 ], [ %96, %1778 ], [ %96, %1927 ], [ %96, %.loopexit187.loopexit2728 ]
  %2231 = phi i32 [ %1030, %2133 ], [ %97, %2145 ], [ %97, %2140 ], [ %97, %2135 ], [ 1, %88 ], [ %97, %2170 ], [ %1030, %.loopexit170 ], [ %1737, %.loopexit177 ], [ %1370, %.loopexit184 ], [ 1, %2114 ], [ %1535, %.loopexit182 ], [ %97, %2155 ], [ %1030, %2129 ], [ %97, %2150 ], [ %97, %804 ], [ %97, %2165 ], [ %97, %2175 ], [ %1370, %.loopexit183 ], [ %1584, %.loopexit178 ], [ %1030, %2131 ], [ %97, %2185 ], [ %1584, %.loopexit179 ], [ %97, %982 ], [ %97, %2160 ], [ %97, %2180 ], [ %97, %778 ], [ %97, %1927 ], [ %1783, %1778 ], [ 0, %1358 ], [ %97, %895 ], [ %97, %880 ], [ %97, %764 ], [ %97, %630 ], [ %97, %590 ], [ %97, %570 ], [ %97, %530 ], [ %97, %514 ], [ -3, %.loopexit187.loopexit2728 ]
  store ptr %91, ptr %26, align 8, !tbaa !47
  store i32 %2225, ptr %41, align 8, !tbaa !50
  store ptr %2226, ptr %0, align 8, !tbaa !48
  store i32 %2227, ptr %43, align 8, !tbaa !49
  store i64 %2228, ptr %45, align 8, !tbaa !31
  store i32 %2229, ptr %47, align 8, !tbaa !32
  %2232 = load i32, ptr %79, align 4, !tbaa !38
  %2233 = icmp eq i32 %2232, 0
  br i1 %2233, label %2234, label %2243

2234:                                             ; preds = %.loopexit187
  %2235 = icmp eq i32 %2230, %2225
  br i1 %2235, label %2311, label %2236

2236:                                             ; preds = %2234
  %2237 = load i32, ptr %21, align 8, !tbaa !20
  %2238 = icmp ult i32 %2237, 16209
  br i1 %2238, label %2239, label %2311

2239:                                             ; preds = %2236
  %2240 = icmp samesign ult i32 %2237, 16206
  %2241 = icmp ne i32 %1, 4
  %2242 = or i1 %2241, %2240
  br i1 %2242, label %2243, label %2311

2243:                                             ; preds = %2239, %.loopexit187
  %2244 = sub i32 %2230, %2225
  %2245 = load ptr, ptr %14, align 8, !tbaa !15
  %2246 = getelementptr inbounds nuw i8, ptr %2245, i64 72
  %2247 = load ptr, ptr %2246, align 8, !tbaa !41
  %2248 = icmp eq ptr %2247, null
  br i1 %2248, label %2249, label %2258

2249:                                             ; preds = %2243
  %2250 = load ptr, ptr %6, align 8, !tbaa !8
  %2251 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2252 = load ptr, ptr %2251, align 8, !tbaa !43
  %2253 = getelementptr inbounds nuw i8, ptr %2245, i64 56
  %2254 = load i32, ptr %2253, align 8, !tbaa !42
  %2255 = shl nuw i32 1, %2254
  %2256 = call ptr %2250(ptr noundef %2252, i32 noundef %2255, i32 noundef 1) #11, !inline_history !105
  store ptr %2256, ptr %2246, align 8, !tbaa !41
  %2257 = icmp eq ptr %2256, null
  br i1 %2257, label %2310, label %2258

2258:                                             ; preds = %2249, %2243
  %2259 = phi ptr [ %2256, %2249 ], [ %2247, %2243 ]
  %2260 = getelementptr inbounds nuw i8, ptr %2245, i64 60
  %2261 = load i32, ptr %2260, align 4, !tbaa !38
  %2262 = icmp eq i32 %2261, 0
  br i1 %2262, label %2263, label %2269

2263:                                             ; preds = %2258
  %2264 = getelementptr inbounds nuw i8, ptr %2245, i64 56
  %2265 = load i32, ptr %2264, align 8, !tbaa !42
  %2266 = shl nuw i32 1, %2265
  store i32 %2266, ptr %2260, align 4, !tbaa !38
  %2267 = getelementptr inbounds nuw i8, ptr %2245, i64 68
  store i32 0, ptr %2267, align 4, !tbaa !40
  %2268 = getelementptr inbounds nuw i8, ptr %2245, i64 64
  store i32 0, ptr %2268, align 8, !tbaa !39
  br label %2269

2269:                                             ; preds = %2263, %2258
  %2270 = phi i32 [ %2266, %2263 ], [ %2261, %2258 ]
  %2271 = icmp ult i32 %2244, %2270
  br i1 %2271, label %2279, label %2272

2272:                                             ; preds = %2269
  %2273 = zext i32 %2270 to i64
  %2274 = sub nsw i64 0, %2273
  %2275 = getelementptr inbounds i8, ptr %91, i64 %2274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2259, ptr noundef nonnull readonly align 1 dereferenceable(1) %2275, i64 %2273, i1 false)
  %2276 = getelementptr inbounds nuw i8, ptr %2245, i64 68
  store i32 0, ptr %2276, align 4, !tbaa !40
  %2277 = load i32, ptr %2260, align 4, !tbaa !38
  %2278 = getelementptr inbounds nuw i8, ptr %2245, i64 64
  store i32 %2277, ptr %2278, align 8, !tbaa !39
  br label %2311

2279:                                             ; preds = %2269
  %2280 = getelementptr inbounds nuw i8, ptr %2245, i64 68
  %2281 = load i32, ptr %2280, align 4, !tbaa !40
  %2282 = sub i32 %2270, %2281
  %2283 = call i32 @llvm.umin.i32(i32 %2282, i32 %2244)
  %2284 = zext i32 %2281 to i64
  %2285 = getelementptr inbounds nuw i8, ptr %2259, i64 %2284
  %2286 = zext i32 %2244 to i64
  %2287 = sub nsw i64 0, %2286
  %2288 = getelementptr inbounds i8, ptr %91, i64 %2287
  %2289 = zext i32 %2283 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2285, ptr readonly align 1 %2288, i64 %2289, i1 false)
  %2290 = icmp ugt i32 %2244, %2282
  br i1 %2290, label %2291, label %2299

2291:                                             ; preds = %2279
  %2292 = sub i32 %2244, %2283
  %2293 = load ptr, ptr %2246, align 8, !tbaa !41
  %2294 = zext i32 %2292 to i64
  %2295 = sub nsw i64 0, %2294
  %2296 = getelementptr inbounds i8, ptr %91, i64 %2295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2293, ptr nonnull readonly align 1 %2296, i64 %2294, i1 false)
  store i32 %2292, ptr %2280, align 4, !tbaa !40
  %2297 = load i32, ptr %2260, align 4, !tbaa !38
  %2298 = getelementptr inbounds nuw i8, ptr %2245, i64 64
  store i32 %2297, ptr %2298, align 8, !tbaa !39
  br label %2311

2299:                                             ; preds = %2279
  %2300 = load i32, ptr %2280, align 4, !tbaa !40
  %2301 = add i32 %2300, %2283
  %2302 = load i32, ptr %2260, align 4, !tbaa !38
  %2303 = icmp eq i32 %2301, %2302
  %2304 = select i1 %2303, i32 0, i32 %2301
  store i32 %2304, ptr %2280, align 4
  %2305 = getelementptr inbounds nuw i8, ptr %2245, i64 64
  %2306 = load i32, ptr %2305, align 8, !tbaa !39
  %2307 = icmp ult i32 %2306, %2302
  br i1 %2307, label %2308, label %2311

2308:                                             ; preds = %2299
  %2309 = add i32 %2306, %2283
  store i32 %2309, ptr %2305, align 8, !tbaa !39
  br label %2311

2310:                                             ; preds = %2249
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %.loopexit189

2311:                                             ; preds = %2308, %2299, %2291, %2272, %2239, %2236, %2234
  %2312 = load i32, ptr %43, align 8, !tbaa !49
  %2313 = sub i32 %44, %2312
  %2314 = load i32, ptr %41, align 8, !tbaa !50
  %2315 = sub i32 %2230, %2314
  %2316 = zext i32 %2313 to i64
  %2317 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2318 = load i64, ptr %2317, align 8, !tbaa !22
  %2319 = add i64 %2318, %2316
  store i64 %2319, ptr %2317, align 8, !tbaa !22
  %2320 = zext i32 %2315 to i64
  %2321 = load i64, ptr %50, align 8, !tbaa !104
  %2322 = add i64 %2321, %2320
  store i64 %2322, ptr %50, align 8, !tbaa !104
  %2323 = load i64, ptr %51, align 8, !tbaa !21
  %2324 = add i64 %2323, %2320
  store i64 %2324, ptr %51, align 8, !tbaa !21
  %2325 = load i32, ptr %49, align 8, !tbaa !24
  %2326 = and i32 %2325, 4
  %2327 = icmp ne i32 %2326, 0
  %2328 = icmp ne i32 %2230, %2314
  %2329 = select i1 %2327, i1 %2328, i1 false
  br i1 %2329, label %2330, label %2343

2330:                                             ; preds = %2311
  %2331 = load i32, ptr %52, align 8, !tbaa !28
  %2332 = icmp eq i32 %2331, 0
  %2333 = load i64, ptr %53, align 8, !tbaa !53
  %2334 = load ptr, ptr %26, align 8, !tbaa !47
  %2335 = sub nsw i64 0, %2320
  %2336 = getelementptr inbounds i8, ptr %2334, i64 %2335
  br i1 %2332, label %2339, label %2337

2337:                                             ; preds = %2330
  %2338 = call i64 @crc32(i64 noundef %2333, ptr noundef %2336, i32 noundef %2315) #11
  br label %2341

2339:                                             ; preds = %2330
  %2340 = call i64 @adler32(i64 noundef %2333, ptr noundef %2336, i32 noundef %2315) #11
  br label %2341

2341:                                             ; preds = %2339, %2337
  %2342 = phi i64 [ %2338, %2337 ], [ %2340, %2339 ]
  store i64 %2342, ptr %53, align 8, !tbaa !53
  store i64 %2342, ptr %54, align 8, !tbaa !25
  br label %2343

2343:                                             ; preds = %2341, %2311
  %2344 = load i32, ptr %47, align 8, !tbaa !32
  %2345 = load i32, ptr %83, align 4, !tbaa !26
  %2346 = icmp eq i32 %2345, 0
  %2347 = select i1 %2346, i32 0, i32 64
  %2348 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2344, i32 %2347), !nosanitize !80
  %2349 = extractvalue { i32, i1 } %2348, 1, !nosanitize !80
  br i1 %2349, label %.loopexit201, label %2350, !prof !96, !nosanitize !80

2350:                                             ; preds = %2343
  %2351 = extractvalue { i32, i1 } %2348, 0, !nosanitize !80
  %2352 = load i32, ptr %21, align 8, !tbaa !20
  %2353 = icmp eq i32 %2352, 16191
  %2354 = select i1 %2353, i32 128, i32 0
  %2355 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2351, i32 %2354), !nosanitize !80
  %2356 = extractvalue { i32, i1 } %2355, 1, !nosanitize !80
  br i1 %2356, label %.loopexit201, label %2357, !prof !96, !nosanitize !80

2357:                                             ; preds = %2350
  %2358 = extractvalue { i32, i1 } %2355, 0, !nosanitize !80
  %2359 = icmp eq i32 %2352, 16199
  %2360 = icmp eq i32 %2352, 16194
  %2361 = or i1 %2359, %2360
  %2362 = select i1 %2361, i32 256, i32 0
  %2363 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2358, i32 %2362), !nosanitize !80
  %2364 = extractvalue { i32, i1 } %2363, 1, !nosanitize !80
  br i1 %2364, label %.loopexit201, label %2365, !prof !96, !nosanitize !80

2365:                                             ; preds = %2357
  %2366 = extractvalue { i32, i1 } %2363, 0, !nosanitize !80
  %2367 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2366, ptr %2367, align 8, !tbaa !23
  %2368 = icmp eq i32 %44, %2312
  %2369 = icmp eq i32 %2230, %2314
  %2370 = select i1 %2368, i1 %2369, i1 false
  %2371 = icmp eq i32 %1, 4
  %2372 = or i1 %2371, %2370
  %2373 = icmp eq i32 %2231, 0
  %2374 = select i1 %2372, i1 %2373, i1 false
  %2375 = select i1 %2374, i32 -5, i32 %2231
  br label %.loopexit189

.loopexit189.loopexit:                            ; preds = %88
  br label %.loopexit189

.loopexit189:                                     ; preds = %88, %.loopexit189.loopexit, %2365, %2310, %761, %32, %25, %20, %17, %13, %9, %5, %2
  %2376 = phi i32 [ -2, %20 ], [ -2, %.loopexit189.loopexit ], [ -4, %2310 ], [ %2375, %2365 ], [ 2, %761 ], [ -2, %32 ], [ -2, %25 ], [ -2, %17 ], [ -2, %13 ], [ -2, %2 ], [ -2, %9 ], [ -2, %5 ], [ -4, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %2376
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

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
  tail call void %9(ptr noundef %29, ptr noundef nonnull %25) #11
  %30 = load ptr, ptr %8, align 8, !tbaa !14
  %31 = load ptr, ptr %12, align 8, !tbaa !15
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi ptr [ %31, %27 ], [ %13, %23 ]
  %34 = phi ptr [ %30, %27 ], [ %9, %23 ]
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  tail call void %34(ptr noundef %36, ptr noundef %33) #11
  store ptr null, ptr %12, align 8, !tbaa !15
  br label %37

37:                                               ; preds = %32, %18, %15, %11, %7, %3, %1
  %38 = phi i32 [ 0, %32 ], [ -2, %18 ], [ -2, %11 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %15 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %27 = load i32, ptr %26, align 8, !tbaa !39
  %28 = icmp ne i32 %27, 0
  %29 = icmp ne ptr %1, null
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = getelementptr inbounds nuw i8, ptr %15, i64 72
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  %34 = getelementptr inbounds nuw i8, ptr %15, i64 68
  %35 = load i32, ptr %34, align 4, !tbaa !40
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 %36
  %38 = sub i32 %27, %35
  %39 = zext i32 %38 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %37, i64 %39, i1 false)
  %40 = load i32, ptr %26, align 8, !tbaa !39
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 %41
  %43 = load i32, ptr %34, align 4, !tbaa !40
  %44 = zext i32 %43 to i64
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = load ptr, ptr %32, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %47, i64 %44, i1 false)
  br label %48

48:                                               ; preds = %31, %25
  %49 = icmp eq ptr %2, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = load i32, ptr %26, align 8, !tbaa !39
  store i32 %51, ptr %2, align 4, !tbaa !4
  br label %52

52:                                               ; preds = %50, %48, %20, %17, %13, %9, %5, %3
  %53 = phi i32 [ -2, %20 ], [ 0, %50 ], [ 0, %48 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @inflateSetDictionary(ptr noundef readonly captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %108, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %108, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %108, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %108, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %108

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %108

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %27 = load i32, ptr %26, align 8, !tbaa !24
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %22, 16190
  br i1 %28, label %31, label %30

30:                                               ; preds = %25
  br i1 %29, label %32, label %108

31:                                               ; preds = %25
  br i1 %29, label %32, label %40

32:                                               ; preds = %31, %30
  %33 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %34 = tail call i64 @adler32(i64 noundef %33, ptr noundef %1, i32 noundef %2) #11
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %36 = load i64, ptr %35, align 8, !tbaa !53
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %108

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
  %54 = tail call ptr %48(ptr noundef %50, i32 noundef %53, i32 noundef 1) #11, !inline_history !105
  store ptr %54, ptr %44, align 8, !tbaa !41
  %55 = icmp eq ptr %54, null
  br i1 %55, label %105, label %56

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
  br label %106

77:                                               ; preds = %67
  %78 = getelementptr inbounds nuw i8, ptr %41, i64 68
  %79 = load i32, ptr %78, align 4, !tbaa !40
  %80 = sub i32 %68, %79
  %81 = tail call i32 @llvm.umin.i32(i32 %80, i32 %2)
  %82 = zext i32 %79 to i64
  %83 = getelementptr inbounds nuw i8, ptr %57, i64 %82
  %84 = zext i32 %81 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %83, ptr readonly align 1 %1, i64 %84, i1 false)
  %85 = icmp ugt i32 %2, %80
  br i1 %85, label %86, label %94

86:                                               ; preds = %77
  %87 = sub i32 %2, %81
  %88 = load ptr, ptr %44, align 8, !tbaa !41
  %89 = zext i32 %87 to i64
  %90 = sub nsw i64 0, %89
  %91 = getelementptr inbounds i8, ptr %43, i64 %90
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %88, ptr nonnull readonly align 1 %91, i64 %89, i1 false)
  store i32 %87, ptr %78, align 4, !tbaa !40
  %92 = load i32, ptr %58, align 4, !tbaa !38
  %93 = getelementptr inbounds nuw i8, ptr %41, i64 64
  store i32 %92, ptr %93, align 8, !tbaa !39
  br label %106

94:                                               ; preds = %77
  %95 = load i32, ptr %78, align 4, !tbaa !40
  %96 = add i32 %95, %81
  %97 = load i32, ptr %58, align 4, !tbaa !38
  %98 = icmp eq i32 %96, %97
  %99 = select i1 %98, i32 0, i32 %96
  store i32 %99, ptr %78, align 4
  %100 = getelementptr inbounds nuw i8, ptr %41, i64 64
  %101 = load i32, ptr %100, align 8, !tbaa !39
  %102 = icmp ult i32 %101, %97
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = add i32 %101, %81
  store i32 %104, ptr %100, align 8, !tbaa !39
  br label %106

105:                                              ; preds = %47
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %108

106:                                              ; preds = %103, %94, %86, %70
  %107 = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 1, ptr %107, align 4, !tbaa !27
  br label %108

108:                                              ; preds = %106, %105, %32, %30, %20, %17, %13, %9, %5, %3
  %109 = phi i32 [ 0, %106 ], [ -2, %20 ], [ -2, %30 ], [ -4, %105 ], [ -3, %32 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %109
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
  store i32 0, ptr %31, align 8, !tbaa !54
  br label %32

32:                                               ; preds = %29, %24, %19, %16, %12, %8, %4, %2
  %33 = phi i32 [ 0, %29 ], [ -2, %19 ], [ -2, %24 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %33
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @inflateSync(ptr noundef captures(address) %0) local_unnamed_addr #8 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %3 = icmp eq ptr %0, null
  br i1 %3, label %195, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %195, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %195, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %195, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %195

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %195

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i32, ptr %25, align 8, !tbaa !49
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %30 = load i32, ptr %29, align 8, !tbaa !32
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %195, label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq i32 %21, 16211
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %36 = load i32, ptr %35, align 4, !tbaa !4
  br label %118

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
  %45 = icmp ult i32 %39, 8
  br i1 %45, label %57, label %46

46:                                               ; preds = %37
  %47 = add i32 %39, -8
  %48 = lshr i32 %47, 3
  %49 = add nuw nsw i32 %48, 1
  %50 = and i32 %49, 3
  %51 = icmp ult i32 %47, 24
  br i1 %51, label %80, label %52

52:                                               ; preds = %46
  %53 = add nsw i32 %48, -3
  %54 = lshr i32 %53, 2
  %55 = add nuw nsw i32 %54, 1
  %xtraiter = and i32 %55, 3
  %56 = icmp ult i32 %53, 12
  br i1 %56, label %.epil.preheader, label %.new

.new:                                             ; preds = %52
  %unroll_iter = and i32 %55, 2147483644
  br label %58

57:                                               ; preds = %37
  store i32 0, ptr %38, align 8, !tbaa !32
  br label %.loopexit

58:                                               ; preds = %58, %.new
  %59 = phi i64 [ 0, %.new ], [ %71, %58 ]
  %60 = phi i64 [ %44, %.new ], [ 0, %58 ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %58 ]
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %62 = trunc i64 %60 to i32
  store i32 %62, ptr %61, align 1
  %63 = lshr i64 %60, 32
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 4
  %66 = trunc nuw i64 %63 to i32
  store i32 %66, ptr %65, align 1
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i32 0, ptr %68, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 12
  store i32 0, ptr %70, align 1
  %71 = add nuw nsw i64 %59, 16
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %58, !llvm.loop !106

.unr-lcssa:                                       ; preds = %58
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %52
  %.epil.init = phi i64 [ 0, %52 ], [ %71, %.unr-lcssa ]
  %.epil.init44 = phi i64 [ %44, %52 ], [ 0, %.unr-lcssa ]
  %lcmp.mod47 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %72

72:                                               ; preds = %72, %.epil.preheader
  %73 = phi i64 [ %.epil.init, %.epil.preheader ], [ %77, %72 ]
  %74 = phi i64 [ %.epil.init44, %.epil.preheader ], [ %78, %72 ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %72 ]
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 %73
  %76 = trunc i64 %74 to i32
  store i32 %76, ptr %75, align 1
  %77 = add nuw nsw i64 %73, 4
  %78 = lshr i64 %74, 32
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %72, !llvm.loop !107

.epilog-lcssa:                                    ; preds = %72, %.unr-lcssa
  %.lcssa42 = phi i64 [ %71, %.unr-lcssa ], [ %77, %72 ]
  %.lcssa41 = phi i64 [ 0, %.unr-lcssa ], [ %78, %72 ]
  %79 = icmp eq i32 %50, 0
  br i1 %79, label %.loopexit6, label %80

80:                                               ; preds = %.epilog-lcssa, %46
  %81 = phi i64 [ 0, %46 ], [ %.lcssa42, %.epilog-lcssa ]
  %82 = phi i64 [ %44, %46 ], [ %.lcssa41, %.epilog-lcssa ]
  %83 = icmp ne i32 %50, 0
  tail call void @llvm.assume(i1 %83)
  br label %84

84:                                               ; preds = %84, %80
  %85 = phi i64 [ %89, %84 ], [ %81, %80 ]
  %86 = phi i64 [ %91, %84 ], [ %82, %80 ]
  %87 = phi i32 [ %92, %84 ], [ 0, %80 ]
  %88 = trunc i64 %86 to i8
  %89 = add nuw nsw i64 %85, 1
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 %85
  store i8 %88, ptr %90, align 1, !tbaa !44
  %91 = lshr i64 %86, 8
  %92 = add nuw nsw i32 %87, 1
  %93 = icmp eq i32 %92, %50
  br i1 %93, label %.loopexit6, label %84, !llvm.loop !108

.loopexit6:                                       ; preds = %84, %.epilog-lcssa
  %94 = phi i64 [ %.lcssa42, %.epilog-lcssa ], [ %89, %84 ]
  %95 = phi i64 [ %.lcssa41, %.epilog-lcssa ], [ %91, %84 ]
  store i64 %95, ptr %41, align 8, !tbaa !31
  store i32 0, ptr %38, align 8, !tbaa !32
  %96 = and i64 %94, 4294967295
  br label %97

97:                                               ; preds = %97, %.loopexit6
  %98 = phi i64 [ 0, %.loopexit6 ], [ %111, %97 ]
  %99 = phi i32 [ 0, %.loopexit6 ], [ %110, %97 ]
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %101 = load i8, ptr %100, align 1, !tbaa !44
  %102 = zext i8 %101 to i32
  %103 = icmp samesign ult i32 %99, 2
  %104 = select i1 %103, i32 0, i32 255
  %105 = icmp eq i32 %104, %102
  %106 = add nuw nsw i32 %99, 1
  %107 = icmp eq i8 %101, 0
  %108 = sub nuw nsw i32 4, %99
  %109 = select i1 %107, i32 %108, i32 0
  %110 = select i1 %105, i32 %106, i32 %109
  %111 = add nuw nsw i64 %98, 1
  %112 = icmp samesign ult i64 %111, %96
  %113 = icmp samesign ult i32 %110, 4
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %97, label %.loopexit, !llvm.loop !109

.loopexit:                                        ; preds = %97, %57
  %115 = phi i32 [ 0, %57 ], [ %110, %97 ]
  %116 = getelementptr inbounds nuw i8, ptr %14, i64 140
  store i32 %115, ptr %116, align 4, !tbaa !4
  %117 = load i32, ptr %25, align 8, !tbaa !49
  br label %118

118:                                              ; preds = %.loopexit, %34
  %119 = phi i32 [ %115, %.loopexit ], [ %36, %34 ]
  %120 = phi i32 [ %117, %.loopexit ], [ %26, %34 ]
  %121 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %122 = load ptr, ptr %0, align 8, !tbaa !48
  %123 = icmp ne i32 %120, 0
  %124 = icmp ult i32 %119, 4
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %126, label %148

126:                                              ; preds = %118
  %127 = zext i32 %120 to i64
  br label %128

128:                                              ; preds = %128, %126
  %129 = phi i64 [ 0, %126 ], [ %142, %128 ]
  %130 = phi i32 [ %119, %126 ], [ %141, %128 ]
  %131 = getelementptr inbounds nuw i8, ptr %122, i64 %129
  %132 = load i8, ptr %131, align 1, !tbaa !44
  %133 = zext i8 %132 to i32
  %134 = icmp samesign ult i32 %130, 2
  %135 = select i1 %134, i32 0, i32 255
  %136 = icmp eq i32 %135, %133
  %137 = add nuw nsw i32 %130, 1
  %138 = icmp eq i8 %132, 0
  %139 = sub nuw nsw i32 4, %130
  %140 = select i1 %138, i32 %139, i32 0
  %141 = select i1 %136, i32 %137, i32 %140
  %142 = add nuw nsw i64 %129, 1
  %143 = icmp samesign ult i64 %142, %127
  %144 = icmp samesign ult i32 %141, 4
  %145 = select i1 %143, i1 %144, i1 false
  br i1 %145, label %128, label %146, !llvm.loop !109

146:                                              ; preds = %128
  %147 = trunc nuw i64 %142 to i32
  br label %148

148:                                              ; preds = %146, %118
  %149 = phi i32 [ %119, %118 ], [ %141, %146 ]
  %150 = phi i32 [ 0, %118 ], [ %147, %146 ]
  store i32 %149, ptr %121, align 4, !tbaa !4
  %151 = load i32, ptr %25, align 8, !tbaa !49
  %152 = sub i32 %151, %150
  store i32 %152, ptr %25, align 8, !tbaa !49
  %153 = zext i32 %150 to i64
  %154 = getelementptr inbounds nuw i8, ptr %122, i64 %153
  store ptr %154, ptr %0, align 8, !tbaa !48
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %156 = load i64, ptr %155, align 8, !tbaa !22
  %157 = add i64 %156, %153
  store i64 %157, ptr %155, align 8, !tbaa !22
  %158 = icmp eq i32 %149, 4
  br i1 %158, label %159, label %195

159:                                              ; preds = %148
  %160 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %161 = load i32, ptr %160, align 8, !tbaa !28
  %162 = icmp eq i32 %161, -1
  %163 = getelementptr inbounds nuw i8, ptr %14, i64 16
  br i1 %162, label %167, label %164

164:                                              ; preds = %159
  %165 = load i32, ptr %163, align 8, !tbaa !24
  %166 = and i32 %165, -5
  br label %167

167:                                              ; preds = %164, %159
  %168 = phi i32 [ %166, %164 ], [ 0, %159 ]
  store i32 %168, ptr %163, align 8, !tbaa !24
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %170 = load i64, ptr %169, align 8, !tbaa !104
  %171 = getelementptr inbounds nuw i8, ptr %14, i64 60
  store i32 0, ptr %171, align 4, !tbaa !38
  %172 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 0, ptr %172, align 8, !tbaa !39
  %173 = getelementptr inbounds nuw i8, ptr %14, i64 68
  store i32 0, ptr %173, align 4, !tbaa !40
  %174 = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %174, align 8, !tbaa !21
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %175, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %169, i8 0, i64 16, i1 false)
  %176 = load i32, ptr %163, align 8, !tbaa !24
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %167
  %179 = and i32 %176, 1
  %180 = zext nneg i32 %179 to i64
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %180, ptr %181, align 8, !tbaa !25
  br label %182

182:                                              ; preds = %178, %167
  %183 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 0, ptr %183, align 4, !tbaa !26
  %184 = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %184, align 4, !tbaa !27
  %185 = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 32768, ptr %185, align 4, !tbaa !29
  %186 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr null, ptr %186, align 8, !tbaa !30
  %187 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store i64 0, ptr %187, align 8, !tbaa !31
  %188 = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i32 0, ptr %188, align 8, !tbaa !32
  %189 = getelementptr inbounds nuw i8, ptr %14, i64 1368
  %190 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store ptr %189, ptr %190, align 8, !tbaa !33
  %191 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store ptr %189, ptr %191, align 8, !tbaa !34
  %192 = getelementptr inbounds nuw i8, ptr %14, i64 104
  store ptr %189, ptr %192, align 8, !tbaa !35
  %193 = getelementptr inbounds nuw i8, ptr %14, i64 7144
  store i32 1, ptr %193, align 8, !tbaa !36
  %194 = getelementptr inbounds nuw i8, ptr %14, i64 7148
  store i32 -1, ptr %194, align 4, !tbaa !37
  store i64 %157, ptr %155, align 8, !tbaa !22
  store i64 %170, ptr %169, align 8, !tbaa !104
  store i32 %161, ptr %160, align 8, !tbaa !28
  store i32 16191, ptr %20, align 8, !tbaa !20
  br label %195

195:                                              ; preds = %182, %148, %28, %19, %16, %12, %8, %4, %1
  %196 = phi i32 [ 0, %182 ], [ -2, %19 ], [ -5, %28 ], [ -3, %148 ], [ -2, %12 ], [ -2, %1 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %196
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
  %29 = tail call ptr %6(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #11
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
  %41 = tail call ptr %36(ptr noundef %37, i32 noundef %40, i32 noundef 1) #11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load ptr, ptr %9, align 8, !tbaa !14
  %45 = load ptr, ptr %27, align 8, !tbaa !43
  tail call void %44(ptr noundef %45, ptr noundef nonnull %29) #11
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -140737488355328, 140741783257088) i64 @inflateMark(ptr noundef readonly captures(address) %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %41, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 7148
  %25 = load i32, ptr %24, align 4, !tbaa !37
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 16
  switch i32 %20, label %37 [
    i32 16195, label %28
    i32 16204, label %31
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 92
  %30 = load i32, ptr %29, align 4, !tbaa !60
  br label %37

31:                                               ; preds = %23
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 7152
  %33 = load i32, ptr %32, align 8, !tbaa !95
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 92
  %35 = load i32, ptr %34, align 4, !tbaa !60
  %36 = sub i32 %33, %35
  br label %37

37:                                               ; preds = %31, %28, %23
  %38 = phi i32 [ %30, %28 ], [ %36, %31 ], [ 0, %23 ]
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %27, %39
  br label %41

41:                                               ; preds = %37, %18, %15, %11, %7, %3, %1
  %42 = phi i64 [ %40, %37 ], [ -65536, %18 ], [ -65536, %11 ], [ -65536, %1 ], [ -65536, %7 ], [ -65536, %3 ], [ -65536, %15 ]
  ret i64 %42
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

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
!47 = !{!9, !10, i64 24}
!48 = !{!9, !10, i64 0}
!49 = !{!9, !5, i64 8}
!50 = !{!9, !5, i64 32}
!51 = !{!17, !5, i64 100}
!52 = !{!17, !5, i64 140}
!53 = !{!17, !12, i64 32}
!54 = !{!55, !5, i64 72}
!55 = !{!"gz_header_s", !5, i64 0, !12, i64 8, !5, i64 16, !5, i64 20, !10, i64 24, !5, i64 32, !5, i64 36, !10, i64 40, !5, i64 48, !10, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!56 = !{!55, !5, i64 0}
!57 = !{!55, !12, i64 8}
!58 = !{!55, !5, i64 16}
!59 = !{!55, !5, i64 20}
!60 = !{!17, !5, i64 92}
!61 = !{!55, !5, i64 32}
!62 = !{!55, !10, i64 24}
!63 = !{!55, !5, i64 36}
!64 = !{!55, !10, i64 40}
!65 = !{!55, !5, i64 48}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!55, !10, i64 56}
!69 = !{!55, !5, i64 64}
!70 = distinct !{!70, !67}
!71 = !{!55, !5, i64 68}
!72 = !{!17, !5, i64 132}
!73 = !{!17, !5, i64 136}
!74 = !{!17, !5, i64 128}
!75 = !{!76, !76, i64 0}
!76 = !{!"short", !6, i64 0}
!77 = distinct !{!77, !67}
!78 = distinct !{!78, !67}
!79 = !{!17, !5, i64 120}
!80 = !{}
!81 = distinct !{!81, !67}
!82 = distinct !{!82, !67}
!83 = distinct !{!83, !67}
!84 = distinct !{!84, !67, !85, !86}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = !{!"branch_weights", i32 4, i32 12}
!88 = distinct !{!88, !67, !85, !86}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = distinct !{!91, !67, !85}
!92 = distinct !{!92, !67}
!93 = !{!17, !5, i64 124}
!94 = distinct !{!94, !67}
!95 = !{!17, !5, i64 7152}
!96 = !{!"branch_weights", i32 1, i32 1048575}
!97 = !{!17, !5, i64 96}
!98 = distinct !{!98, !67}
!99 = distinct !{!99, !67, !85, !86}
!100 = !{!"branch_weights", i32 4, i32 28}
!101 = distinct !{!101, !67, !85, !86}
!102 = distinct !{!102, !90}
!103 = distinct !{!103, !67, !85}
!104 = !{!9, !12, i64 40}
!105 = distinct !{null}
!106 = distinct !{!106, !67}
!107 = distinct !{!107, !90}
!108 = distinct !{!108, !90}
!109 = distinct !{!109, !67}
