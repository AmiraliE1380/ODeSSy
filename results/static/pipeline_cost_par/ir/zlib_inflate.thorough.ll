; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_inflate.thorough.mid.ll'
source_filename = "/mydata/zlib/inflate.c"
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
  %5 = load ptr, ptr %4, align 8, !tbaa !5
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
  %50 = phi i32 [ 0, %35 ], [ -2, %18 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !5
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
  %53 = phi i32 [ -2, %18 ], [ 0, %38 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateReset2(ptr noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %95, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
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
  %50 = load ptr, ptr %5, align 8, !tbaa !5
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
  %96 = phi i32 [ -2, %19 ], [ -2, %26 ], [ -2, %select.unfold ], [ -2, %61 ], [ 0, %81 ], [ -2, %53 ], [ -2, %47 ], [ -2, %58 ], [ -2, %55 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %96
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @inflateInit2_(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #1 {
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
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store ptr @zcalloc, ptr %15, align 8, !tbaa !5
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
  %34 = load ptr, ptr %15, align 8, !tbaa !5
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
  %85 = phi i32 [ -6, %6 ], [ -6, %4 ], [ -2, %11 ], [ -4, %26 ], [ -2, %82 ], [ 0, %68 ]
  ret i32 %85
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #4

declare void @zcfree(ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @inflateInit_(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #1 {
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
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  store ptr @zcalloc, ptr %14, align 8, !tbaa !5
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
  %28 = tail call ptr %20(ptr noundef %27, i32 noundef 1, i32 noundef 7160) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7152) %31, i8 0, i64 7152, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %28, ptr %32, align 8, !tbaa !15
  store ptr %0, ptr %28, align 8, !tbaa !16
  store i32 16180, ptr %31, align 8, !tbaa !20
  %33 = load ptr, ptr %14, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  %35 = load ptr, ptr %21, align 8, !tbaa !14
  %36 = icmp eq ptr %35, null
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %65, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 5, ptr %39, align 8, !tbaa !24
  %40 = getelementptr inbounds nuw i8, ptr %28, i64 56
  store <4 x i32> <i32 15, i32 0, i32 0, i32 0>, ptr %40, align 8, !tbaa !46
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
  tail call void %35(ptr noundef %66, ptr noundef nonnull %28) #12
  store ptr null, ptr %32, align 8, !tbaa !15
  br label %67

67:                                               ; preds = %65, %51, %25, %10, %5, %3
  %68 = phi i32 [ -6, %5 ], [ -6, %3 ], [ -2, %10 ], [ -4, %25 ], [ -2, %65 ], [ 0, %51 ]
  ret i32 %68
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !5
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
  %60 = phi i32 [ 0, %29 ], [ 0, %57 ], [ -2, %20 ], [ 0, %25 ], [ -2, %40 ], [ -2, %32 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %60
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %.loopexit163, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %.loopexit163, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %.loopexit163, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %.loopexit163, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %.loopexit163

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %.loopexit163

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %.loopexit163, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !50
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %.loopexit163

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
  %85 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %87 = getelementptr inbounds nuw i8, ptr %15, i64 28
  br label %88

88:                                               ; preds = %2240, %39
  %89 = phi i32 [ %40, %39 ], [ %2249, %2240 ]
  %90 = phi ptr [ %30, %39 ], [ %2241, %2240 ]
  %91 = phi ptr [ %27, %39 ], [ %2242, %2240 ]
  %92 = phi i32 [ %44, %39 ], [ %2243, %2240 ]
  %93 = phi i32 [ %42, %39 ], [ %2244, %2240 ]
  %94 = phi i64 [ %46, %39 ], [ %2245, %2240 ]
  %95 = phi i32 [ %48, %39 ], [ %2246, %2240 ]
  %96 = phi i32 [ %42, %39 ], [ %2247, %2240 ]
  %97 = phi i32 [ 0, %39 ], [ %2248, %2240 ]
  %98 = ptrtoaddr ptr %91 to i64
  switch i32 %89, label %.loopexit163.loopexit [
    i32 16180, label %120
    i32 16181, label %115
    i32 16182, label %281
    i32 16183, label %364
    i32 16184, label %423
    i32 16185, label %501
    i32 16186, label %568
    i32 16187, label %628
    i32 16188, label %692
    i32 16189, label %110
    i32 16190, label %824
    i32 16191, label %834
    i32 16192, label %839
    i32 16193, label %888
    i32 16194, label %970
    i32 16195, label %975
    i32 16196, label %105
    i32 16197, label %1056
    i32 16198, label %1130
    i32 16199, label %1423
    i32 16200, label %1429
    i32 16201, label %101
    i32 16202, label %1669
    i32 16203, label %99
    i32 16204, label %1895
    i32 16205, label %2010
    i32 16206, label %2017
    i32 16207, label %103
    i32 16208, label %.loopexit161
    i32 16209, label %.loopexit161.loopexit4602
    i32 16210, label %.loopexit163
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !53
  br label %1830

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !53
  br label %1603

103:                                              ; preds = %88
  %104 = load i32, ptr %49, align 8, !tbaa !24
  br label %2147

105:                                              ; preds = %88
  %106 = icmp ult i32 %95, 14
  br i1 %106, label %107, label %1035

107:                                              ; preds = %105
  %108 = zext nneg i32 %95 to i64
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %2341, label %1003

110:                                              ; preds = %88
  %111 = icmp ult i32 %95, 32
  br i1 %111, label %112, label %817

112:                                              ; preds = %110
  %113 = zext nneg i32 %95 to i64
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %2290, label %764

115:                                              ; preds = %88
  %116 = icmp ult i32 %95, 16
  br i1 %116, label %117, label %250

117:                                              ; preds = %115
  %118 = zext nneg i32 %95 to i64
  %119 = icmp eq i32 %92, 0
  br i1 %119, label %2284, label %218

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
  br i1 %127, label %2254, label %129

128:                                              ; preds = %120
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2240

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
  br i1 %141, label %142, label %155, !llvm.loop !54

142:                                              ; preds = %136
  %143 = icmp eq i32 %139, 0
  br i1 %143, label %2254, label %144

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
  %171 = load i32, ptr %86, align 8, !tbaa !42
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 15, ptr %86, align 8, !tbaa !42
  br label %174

174:                                              ; preds = %173, %170
  %175 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %175, ptr %53, align 8, !tbaa !56
  store i8 31, ptr %3, align 4, !tbaa !44
  store i8 -117, ptr %85, align 1, !tbaa !44
  %176 = call i64 @crc32(i64 noundef %175, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %176, ptr %53, align 8, !tbaa !56
  store i32 16181, ptr %21, align 8, !tbaa !20
  br label %2240

177:                                              ; preds = %161
  %178 = load ptr, ptr %84, align 8, !tbaa !30
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds nuw i8, ptr %178, i64 72
  store i32 -1, ptr %181, align 8, !tbaa !57
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
  br label %2240

193:                                              ; preds = %185
  %194 = and i64 %164, 15
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

197:                                              ; preds = %193
  %198 = lshr i64 %164, 4
  %199 = add i32 %165, -4
  %200 = trunc i64 %198 to i32
  %201 = and i32 %200, 15
  %202 = add nuw nsw i32 %201, 8
  %203 = load i32, ptr %86, align 8, !tbaa !42
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  store i32 %202, ptr %86, align 8, !tbaa !42
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
  br label %2240

212:                                              ; preds = %206
  %213 = shl nuw nsw i32 256, %201
  store i32 %213, ptr %87, align 4, !tbaa !29
  store i32 0, ptr %52, align 8, !tbaa !28
  %214 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %214, ptr %53, align 8, !tbaa !56
  store i64 %214, ptr %54, align 8, !tbaa !25
  %215 = and i64 %164, 8192
  %216 = icmp eq i64 %215, 0
  %217 = select i1 %216, i32 16191, i32 16189
  store i32 %217, ptr %21, align 8, !tbaa !20
  br label %2240

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
  br i1 %230, label %231, label %244, !llvm.loop !59

231:                                              ; preds = %225
  %232 = icmp eq i32 %228, 0
  br i1 %232, label %2284, label %233

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
  br label %2240

259:                                              ; preds = %250
  %260 = and i32 %255, 57344
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

263:                                              ; preds = %259
  %264 = load ptr, ptr %84, align 8, !tbaa !30
  %265 = icmp eq ptr %264, null
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = lshr i32 %255, 8
  %268 = and i32 %267, 1
  store i32 %268, ptr %264, align 8, !tbaa !60
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
  %278 = load i64, ptr %53, align 8, !tbaa !56
  %279 = call i64 @crc32(i64 noundef %278, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %279, ptr %53, align 8, !tbaa !56
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
  br i1 %289, label %2278, label %290

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
  br i1 %302, label %303, label %343, !llvm.loop !61

303:                                              ; preds = %297
  %304 = icmp eq i32 %300, 0
  br i1 %304, label %2278, label %305

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
  br i1 %316, label %317, label %343, !llvm.loop !61

317:                                              ; preds = %311
  %318 = icmp eq i32 %314, 0
  br i1 %318, label %2278, label %319

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
  br i1 %330, label %331, label %343, !llvm.loop !61

331:                                              ; preds = %325
  %332 = icmp eq i32 %328, 0
  br i1 %332, label %2278, label %333

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
  store i64 %346, ptr %350, align 8, !tbaa !62
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
  %361 = load i64, ptr %53, align 8, !tbaa !56
  %362 = call i64 @crc32(i64 noundef %361, ptr noundef nonnull %3, i32 noundef 4) #12
  store i64 %362, ptr %53, align 8, !tbaa !56
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
  br i1 %372, label %2272, label %373

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
  br i1 %385, label %386, label %398, !llvm.loop !63

386:                                              ; preds = %380
  %387 = icmp eq i32 %383, 0
  br i1 %387, label %2272, label %388

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
  store i32 %406, ptr %407, align 8, !tbaa !64
  %408 = lshr i64 %401, 8
  %409 = trunc i64 %408 to i32
  %410 = getelementptr inbounds nuw i8, ptr %402, i64 20
  store i32 %409, ptr %410, align 4, !tbaa !65
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
  %421 = load i64, ptr %53, align 8, !tbaa !56
  %422 = call i64 @crc32(i64 noundef %421, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %422, ptr %53, align 8, !tbaa !56
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
  br i1 %440, label %2266, label %441

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
  br i1 %453, label %454, label %466, !llvm.loop !66

454:                                              ; preds = %448
  %455 = icmp eq i32 %451, 0
  br i1 %455, label %2266, label %456

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
  store i32 %471, ptr %56, align 4, !tbaa !67
  %472 = load ptr, ptr %84, align 8, !tbaa !30
  %473 = icmp eq ptr %472, null
  br i1 %473, label %476, label %474

474:                                              ; preds = %466
  %475 = getelementptr inbounds nuw i8, ptr %472, i64 32
  store i32 %471, ptr %475, align 8, !tbaa !68
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
  %485 = load i64, ptr %53, align 8, !tbaa !56
  %486 = call i64 @crc32(i64 noundef %485, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %486, ptr %53, align 8, !tbaa !56
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
  store ptr null, ptr %495, align 8, !tbaa !69
  br label %496

496:                                              ; preds = %494, %487, %483, %479, %476
  %497 = phi ptr [ %491, %494 ], [ %491, %487 ], [ %468, %476 ], [ %468, %479 ], [ %468, %483 ]
  %498 = phi i32 [ %490, %494 ], [ %490, %487 ], [ %469, %476 ], [ %469, %479 ], [ %469, %483 ]
  %499 = phi i64 [ %489, %494 ], [ %489, %487 ], [ 0, %476 ], [ 0, %479 ], [ 0, %483 ]
  %500 = phi i32 [ %488, %494 ], [ %488, %487 ], [ 0, %476 ], [ 0, %479 ], [ 0, %483 ]
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
  %510 = load i32, ptr %56, align 4, !tbaa !67
  %511 = call i32 @llvm.umin.i32(i32 %510, i32 %503)
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %560, label %513

513:                                              ; preds = %509
  %514 = load ptr, ptr %84, align 8, !tbaa !30
  %515 = icmp eq ptr %514, null
  br i1 %515, label %539, label %516

516:                                              ; preds = %513
  %517 = getelementptr inbounds nuw i8, ptr %514, i64 24
  %518 = load ptr, ptr %517, align 8, !tbaa !69
  %519 = icmp eq ptr %518, null
  br i1 %519, label %539, label %520

520:                                              ; preds = %516
  %521 = getelementptr inbounds nuw i8, ptr %514, i64 32
  %522 = load i32, ptr %521, align 8, !tbaa !68
  %523 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %522, i32 %510), !nosanitize !47
  %524 = extractvalue { i32, i1 } %523, 0, !nosanitize !47
  %525 = extractvalue { i32, i1 } %523, 1, !nosanitize !47
  br i1 %525, label %526, label %527, !prof !48, !nosanitize !47

526:                                              ; preds = %520
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

527:                                              ; preds = %520
  %528 = getelementptr inbounds nuw i8, ptr %514, i64 36
  %529 = load i32, ptr %528, align 4, !tbaa !70
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
  %548 = load i64, ptr %53, align 8, !tbaa !56
  %549 = call i64 @crc32(i64 noundef %548, ptr noundef %502, i32 noundef %511) #12
  store i64 %549, ptr %53, align 8, !tbaa !56
  br label %550

550:                                              ; preds = %547, %543, %539
  %551 = load i32, ptr %56, align 4, !tbaa !67
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
  store i32 %557, ptr %56, align 4, !tbaa !67
  br label %560

560:                                              ; preds = %555, %509
  %561 = phi i32 [ %557, %555 ], [ %510, %509 ]
  %562 = phi ptr [ %559, %555 ], [ %502, %509 ]
  %563 = phi i32 [ %556, %555 ], [ %503, %509 ]
  %564 = icmp eq i32 %561, 0
  br i1 %564, label %565, label %.loopexit161

565:                                              ; preds = %560, %501
  %566 = phi ptr [ %562, %560 ], [ %502, %501 ]
  %567 = phi i32 [ %563, %560 ], [ %503, %501 ]
  store i32 0, ptr %56, align 4, !tbaa !67
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
  br i1 %575, label %620, label %576

576:                                              ; preds = %568
  %577 = icmp eq i32 %570, 0
  br i1 %577, label %.loopexit161, label %578

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
  %589 = load ptr, ptr %588, align 8, !tbaa !71
  %590 = icmp eq ptr %589, null
  br i1 %590, label %600, label %591

591:                                              ; preds = %587
  %592 = load i32, ptr %56, align 4, !tbaa !67
  %593 = getelementptr inbounds nuw i8, ptr %585, i64 48
  %594 = load i32, ptr %593, align 8, !tbaa !72
  %595 = icmp ult i32 %592, %594
  br i1 %595, label %596, label %600

596:                                              ; preds = %591
  %597 = add nuw i32 %592, 1
  store i32 %597, ptr %56, align 4, !tbaa !67
  %598 = zext i32 %592 to i64
  %599 = getelementptr inbounds nuw i8, ptr %589, i64 %598
  store i8 %584, ptr %599, align 1, !tbaa !44
  br label %600

600:                                              ; preds = %596, %591, %587, %580
  %601 = icmp ne i8 %584, 0
  %602 = icmp samesign ult i64 %582, %579
  %603 = select i1 %601, i1 %602, i1 false
  br i1 %603, label %580, label %604, !llvm.loop !73

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
  %614 = load i64, ptr %53, align 8, !tbaa !56
  %615 = call i64 @crc32(i64 noundef %614, ptr noundef nonnull %569, i32 noundef %605) #12
  store i64 %615, ptr %53, align 8, !tbaa !56
  br label %616

616:                                              ; preds = %613, %609, %604
  %617 = sub i32 %570, %605
  %618 = and i64 %582, 4294967295
  %619 = getelementptr inbounds nuw i8, ptr %569, i64 %618
  br i1 %601, label %.loopexit161, label %625

620:                                              ; preds = %568
  %621 = load ptr, ptr %84, align 8, !tbaa !30
  %622 = icmp eq ptr %621, null
  br i1 %622, label %625, label %623

623:                                              ; preds = %620
  %624 = getelementptr inbounds nuw i8, ptr %621, i64 40
  store ptr null, ptr %624, align 8, !tbaa !71
  br label %625

625:                                              ; preds = %623, %620, %616
  %626 = phi ptr [ %619, %616 ], [ %569, %623 ], [ %569, %620 ]
  %627 = phi i32 [ %617, %616 ], [ %570, %623 ], [ %570, %620 ]
  store i32 0, ptr %56, align 4, !tbaa !67
  store i32 16187, ptr %21, align 8, !tbaa !20
  br label %628

628:                                              ; preds = %625, %88
  %629 = phi ptr [ %626, %625 ], [ %90, %88 ]
  %630 = phi i32 [ %627, %625 ], [ %92, %88 ]
  %631 = phi i64 [ %571, %625 ], [ %94, %88 ]
  %632 = phi i32 [ %572, %625 ], [ %95, %88 ]
  %633 = load i32, ptr %52, align 8, !tbaa !28
  %634 = and i32 %633, 4096
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %684, label %636

636:                                              ; preds = %628
  %637 = icmp eq i32 %630, 0
  br i1 %637, label %.loopexit161, label %638

638:                                              ; preds = %636
  %639 = zext i32 %630 to i64
  br label %640

640:                                              ; preds = %660, %638
  %641 = phi i64 [ 0, %638 ], [ %642, %660 ]
  %642 = add nuw nsw i64 %641, 1
  %643 = getelementptr inbounds nuw i8, ptr %629, i64 %641
  %644 = load i8, ptr %643, align 1, !tbaa !44
  %645 = load ptr, ptr %84, align 8, !tbaa !30
  %646 = icmp eq ptr %645, null
  br i1 %646, label %660, label %647

647:                                              ; preds = %640
  %648 = getelementptr inbounds nuw i8, ptr %645, i64 56
  %649 = load ptr, ptr %648, align 8, !tbaa !74
  %650 = icmp eq ptr %649, null
  br i1 %650, label %660, label %651

651:                                              ; preds = %647
  %652 = load i32, ptr %56, align 4, !tbaa !67
  %653 = getelementptr inbounds nuw i8, ptr %645, i64 64
  %654 = load i32, ptr %653, align 8, !tbaa !75
  %655 = icmp ult i32 %652, %654
  br i1 %655, label %656, label %660

656:                                              ; preds = %651
  %657 = add nuw i32 %652, 1
  store i32 %657, ptr %56, align 4, !tbaa !67
  %658 = zext i32 %652 to i64
  %659 = getelementptr inbounds nuw i8, ptr %649, i64 %658
  store i8 %644, ptr %659, align 1, !tbaa !44
  br label %660

660:                                              ; preds = %656, %651, %647, %640
  %661 = icmp ne i8 %644, 0
  %662 = icmp samesign ult i64 %642, %639
  %663 = select i1 %661, i1 %662, i1 false
  br i1 %663, label %640, label %664, !llvm.loop !76

664:                                              ; preds = %660
  %665 = trunc nuw i64 %642 to i32
  %666 = load i32, ptr %52, align 8, !tbaa !28
  %667 = and i32 %666, 512
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %676, label %669

669:                                              ; preds = %664
  %670 = load i32, ptr %49, align 8, !tbaa !24
  %671 = and i32 %670, 4
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %676, label %673

673:                                              ; preds = %669
  %674 = load i64, ptr %53, align 8, !tbaa !56
  %675 = call i64 @crc32(i64 noundef %674, ptr noundef nonnull %629, i32 noundef %665) #12
  store i64 %675, ptr %53, align 8, !tbaa !56
  br label %676

676:                                              ; preds = %673, %669, %664
  %677 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %630, i32 %665), !nosanitize !47
  %678 = extractvalue { i32, i1 } %677, 1, !nosanitize !47
  br i1 %678, label %679, label %680, !prof !48, !nosanitize !47

679:                                              ; preds = %676
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

680:                                              ; preds = %676
  %681 = extractvalue { i32, i1 } %677, 0, !nosanitize !47
  %682 = and i64 %642, 4294967295
  %683 = getelementptr inbounds nuw i8, ptr %629, i64 %682
  br i1 %661, label %.loopexit161, label %689

684:                                              ; preds = %628
  %685 = load ptr, ptr %84, align 8, !tbaa !30
  %686 = icmp eq ptr %685, null
  br i1 %686, label %689, label %687

687:                                              ; preds = %684
  %688 = getelementptr inbounds nuw i8, ptr %685, i64 56
  store ptr null, ptr %688, align 8, !tbaa !74
  br label %689

689:                                              ; preds = %687, %684, %680
  %690 = phi ptr [ %683, %680 ], [ %629, %687 ], [ %629, %684 ]
  %691 = phi i32 [ %681, %680 ], [ %630, %687 ], [ %630, %684 ]
  store i32 16188, ptr %21, align 8, !tbaa !20
  br label %692

692:                                              ; preds = %689, %88
  %693 = phi ptr [ %690, %689 ], [ %90, %88 ]
  %694 = phi i32 [ %691, %689 ], [ %92, %88 ]
  %695 = phi i64 [ %631, %689 ], [ %94, %88 ]
  %696 = phi i32 [ %632, %689 ], [ %95, %88 ]
  %697 = load i32, ptr %52, align 8, !tbaa !28
  %698 = and i32 %697, 512
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %750, label %700

700:                                              ; preds = %692
  %701 = icmp ult i32 %696, 16
  br i1 %701, label %702, label %737

702:                                              ; preds = %700
  %703 = zext nneg i32 %696 to i64
  %704 = icmp eq i32 %694, 0
  br i1 %704, label %2260, label %705

705:                                              ; preds = %702
  %706 = load i8, ptr %693, align 1, !tbaa !44
  %707 = zext i8 %706 to i64
  %708 = shl nuw nsw i64 %707, %703
  %709 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %695, i64 %708), !nosanitize !47
  %710 = extractvalue { i64, i1 } %709, 1, !nosanitize !47
  br i1 %710, label %711, label %712, !prof !48, !nosanitize !47

711:                                              ; preds = %720, %705
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

712:                                              ; preds = %705
  %713 = extractvalue { i64, i1 } %709, 0, !nosanitize !47
  %714 = getelementptr inbounds nuw i8, ptr %693, i64 1
  %715 = add i32 %694, -1
  %716 = add nuw nsw i64 %703, 8
  %717 = icmp samesign ult i32 %696, 8
  br i1 %717, label %718, label %731, !llvm.loop !77

718:                                              ; preds = %712
  %719 = icmp eq i32 %715, 0
  br i1 %719, label %2260, label %720

720:                                              ; preds = %718
  %721 = load i8, ptr %714, align 1, !tbaa !44
  %722 = zext i8 %721 to i64
  %723 = shl nuw nsw i64 %722, %716
  %724 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %713, i64 %723), !nosanitize !47
  %725 = extractvalue { i64, i1 } %724, 1, !nosanitize !47
  br i1 %725, label %711, label %726, !prof !48, !nosanitize !47

726:                                              ; preds = %720
  %727 = extractvalue { i64, i1 } %724, 0, !nosanitize !47
  %728 = getelementptr inbounds nuw i8, ptr %693, i64 2
  %729 = add i32 %694, -2
  %730 = or disjoint i64 %703, 16
  br label %731

731:                                              ; preds = %726, %712
  %732 = phi i64 [ %713, %712 ], [ %727, %726 ]
  %733 = phi ptr [ %714, %712 ], [ %728, %726 ]
  %734 = phi i32 [ %715, %712 ], [ %729, %726 ]
  %735 = phi i64 [ %716, %712 ], [ %730, %726 ]
  %736 = trunc nuw nsw i64 %735 to i32
  br label %737

737:                                              ; preds = %731, %700
  %738 = phi ptr [ %693, %700 ], [ %733, %731 ]
  %739 = phi i32 [ %694, %700 ], [ %734, %731 ]
  %740 = phi i64 [ %695, %700 ], [ %732, %731 ]
  %741 = phi i32 [ %696, %700 ], [ %736, %731 ]
  %742 = load i32, ptr %49, align 8, !tbaa !24
  %743 = and i32 %742, 4
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %750, label %745

745:                                              ; preds = %737
  %746 = load i64, ptr %53, align 8, !tbaa !56
  %747 = and i64 %746, 65535
  %748 = icmp eq i64 %740, %747
  br i1 %748, label %750, label %749

749:                                              ; preds = %745
  store ptr @.str.5, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

750:                                              ; preds = %745, %737, %692
  %751 = phi ptr [ %693, %692 ], [ %738, %737 ], [ %738, %745 ]
  %752 = phi i32 [ %694, %692 ], [ %739, %737 ], [ %739, %745 ]
  %753 = phi i64 [ %695, %692 ], [ 0, %737 ], [ 0, %745 ]
  %754 = phi i32 [ %696, %692 ], [ 0, %737 ], [ 0, %745 ]
  %755 = load ptr, ptr %84, align 8, !tbaa !30
  %756 = icmp eq ptr %755, null
  br i1 %756, label %762, label %757

757:                                              ; preds = %750
  %758 = lshr i32 %697, 9
  %759 = and i32 %758, 1
  %760 = getelementptr inbounds nuw i8, ptr %755, i64 68
  store i32 %759, ptr %760, align 4, !tbaa !78
  %761 = getelementptr inbounds nuw i8, ptr %755, i64 72
  store i32 1, ptr %761, align 8, !tbaa !57
  br label %762

762:                                              ; preds = %757, %750
  %763 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %763, ptr %53, align 8, !tbaa !56
  store i64 %763, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2240

764:                                              ; preds = %112
  %765 = load i8, ptr %90, align 1, !tbaa !44
  %766 = zext i8 %765 to i64
  %767 = shl nuw nsw i64 %766, %113
  %768 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %767), !nosanitize !47
  %769 = extractvalue { i64, i1 } %768, 1, !nosanitize !47
  br i1 %769, label %770, label %771, !prof !48, !nosanitize !47

770:                                              ; preds = %807, %793, %779, %764
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

771:                                              ; preds = %764
  %772 = extractvalue { i64, i1 } %768, 0, !nosanitize !47
  %773 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %774 = add i32 %92, -1
  %775 = add nuw nsw i64 %113, 8
  %776 = icmp samesign ult i32 %95, 24
  br i1 %776, label %777, label %817, !llvm.loop !79

777:                                              ; preds = %771
  %778 = icmp eq i32 %774, 0
  br i1 %778, label %2290, label %779

779:                                              ; preds = %777
  %780 = load i8, ptr %773, align 1, !tbaa !44
  %781 = zext i8 %780 to i64
  %782 = shl nuw nsw i64 %781, %775
  %783 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %772, i64 %782), !nosanitize !47
  %784 = extractvalue { i64, i1 } %783, 1, !nosanitize !47
  br i1 %784, label %770, label %785, !prof !48, !nosanitize !47

785:                                              ; preds = %779
  %786 = extractvalue { i64, i1 } %783, 0, !nosanitize !47
  %787 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %788 = add i32 %92, -2
  %789 = add nuw nsw i64 %113, 16
  %790 = icmp samesign ult i32 %95, 16
  br i1 %790, label %791, label %817, !llvm.loop !79

791:                                              ; preds = %785
  %792 = icmp eq i32 %788, 0
  br i1 %792, label %2290, label %793

793:                                              ; preds = %791
  %794 = load i8, ptr %787, align 1, !tbaa !44
  %795 = zext i8 %794 to i64
  %796 = shl nuw nsw i64 %795, %789
  %797 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %786, i64 %796), !nosanitize !47
  %798 = extractvalue { i64, i1 } %797, 1, !nosanitize !47
  br i1 %798, label %770, label %799, !prof !48, !nosanitize !47

799:                                              ; preds = %793
  %800 = extractvalue { i64, i1 } %797, 0, !nosanitize !47
  %801 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %802 = add i32 %92, -3
  %803 = add nuw nsw i64 %113, 24
  %804 = icmp samesign ult i32 %95, 8
  br i1 %804, label %805, label %817, !llvm.loop !79

805:                                              ; preds = %799
  %806 = icmp eq i32 %802, 0
  br i1 %806, label %2290, label %807

807:                                              ; preds = %805
  %808 = load i8, ptr %801, align 1, !tbaa !44
  %809 = zext i8 %808 to i64
  %810 = shl nuw nsw i64 %809, %803
  %811 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %800, i64 %810), !nosanitize !47
  %812 = extractvalue { i64, i1 } %811, 1, !nosanitize !47
  br i1 %812, label %770, label %813, !prof !48, !nosanitize !47

813:                                              ; preds = %807
  %814 = extractvalue { i64, i1 } %811, 0, !nosanitize !47
  %815 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %816 = add i32 %92, -4
  br label %817

817:                                              ; preds = %813, %799, %785, %771, %110
  %818 = phi ptr [ %90, %110 ], [ %773, %771 ], [ %787, %785 ], [ %801, %799 ], [ %815, %813 ]
  %819 = phi i32 [ %92, %110 ], [ %774, %771 ], [ %788, %785 ], [ %802, %799 ], [ %816, %813 ]
  %820 = phi i64 [ %94, %110 ], [ %772, %771 ], [ %786, %785 ], [ %800, %799 ], [ %814, %813 ]
  %821 = trunc i64 %820 to i32
  %822 = call i32 @llvm.bswap.i32(i32 %821)
  %823 = zext i32 %822 to i64
  store i64 %823, ptr %53, align 8, !tbaa !56
  store i64 %823, ptr %54, align 8, !tbaa !25
  store i32 16190, ptr %21, align 8, !tbaa !20
  br label %824

824:                                              ; preds = %817, %88
  %825 = phi ptr [ %818, %817 ], [ %90, %88 ]
  %826 = phi i32 [ %819, %817 ], [ %92, %88 ]
  %827 = phi i64 [ 0, %817 ], [ %94, %88 ]
  %828 = phi i32 [ 0, %817 ], [ %95, %88 ]
  %829 = load i32, ptr %80, align 4, !tbaa !27
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %831, label %832

831:                                              ; preds = %824
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %825, ptr %0, align 8, !tbaa !50
  store i32 %826, ptr %43, align 8, !tbaa !51
  store i64 %827, ptr %45, align 8, !tbaa !31
  store i32 %828, ptr %47, align 8, !tbaa !32
  br label %.loopexit163

832:                                              ; preds = %824
  %833 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %833, ptr %53, align 8, !tbaa !56
  store i64 %833, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %834

834:                                              ; preds = %832, %88
  %835 = phi ptr [ %825, %832 ], [ %90, %88 ]
  %836 = phi i32 [ %826, %832 ], [ %92, %88 ]
  %837 = phi i64 [ %827, %832 ], [ %94, %88 ]
  %838 = phi i32 [ %828, %832 ], [ %95, %88 ]
  br i1 %82, label %.loopexit161, label %839

839:                                              ; preds = %834, %88
  %840 = phi ptr [ %835, %834 ], [ %90, %88 ]
  %841 = phi i32 [ %836, %834 ], [ %92, %88 ]
  %842 = phi i64 [ %837, %834 ], [ %94, %88 ]
  %843 = phi i32 [ %838, %834 ], [ %95, %88 ]
  %844 = load i32, ptr %83, align 4, !tbaa !26
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %851

846:                                              ; preds = %839
  %847 = icmp ult i32 %843, 3
  br i1 %847, label %848, label %868

848:                                              ; preds = %846
  %849 = or disjoint i32 %843, 8
  %850 = icmp eq i32 %841, 0
  br i1 %850, label %.loopexit161, label %856

851:                                              ; preds = %839
  %852 = and i32 %843, 7
  %853 = and i32 %843, -8
  %854 = zext nneg i32 %852 to i64
  %855 = lshr i64 %842, %854
  store i32 16206, ptr %21, align 8, !tbaa !20
  br label %2240

856:                                              ; preds = %848
  %857 = load i8, ptr %840, align 1, !tbaa !44
  %858 = zext i8 %857 to i64
  %859 = zext nneg i32 %843 to i64
  %860 = shl nuw nsw i64 %858, %859
  %861 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %842, i64 %860), !nosanitize !47
  %862 = extractvalue { i64, i1 } %861, 1, !nosanitize !47
  br i1 %862, label %863, label %864, !prof !48, !nosanitize !47

863:                                              ; preds = %856
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

864:                                              ; preds = %856
  %865 = extractvalue { i64, i1 } %861, 0, !nosanitize !47
  %866 = getelementptr inbounds nuw i8, ptr %840, i64 1
  %867 = add i32 %841, -1
  br label %868

868:                                              ; preds = %864, %846
  %869 = phi ptr [ %866, %864 ], [ %840, %846 ]
  %870 = phi i32 [ %867, %864 ], [ %841, %846 ]
  %871 = phi i64 [ %865, %864 ], [ %842, %846 ]
  %872 = phi i32 [ %849, %864 ], [ %843, %846 ]
  %873 = trunc i64 %871 to i32
  %874 = and i32 %873, 1
  store i32 %874, ptr %83, align 4, !tbaa !26
  %875 = lshr i32 %873, 1
  %876 = and i32 %875, 3
  switch i32 %876, label %default.unreachable2436 [
    i32 0, label %883
    i32 1, label %877
    i32 2, label %881
    i32 3, label %882
  ]

877:                                              ; preds = %868
  call void @inflate_fixed(ptr noundef nonnull %15) #12
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %878, label %885

878:                                              ; preds = %877
  %879 = add i32 %872, -3
  %880 = lshr i64 %871, 3
  br label %.loopexit161

881:                                              ; preds = %868
  br label %883

default.unreachable2436:                          ; preds = %868
  unreachable

882:                                              ; preds = %868
  store ptr @.str.6, ptr %55, align 8, !tbaa !45
  br label %883

883:                                              ; preds = %882, %881, %868
  %884 = phi i32 [ 16209, %882 ], [ 16196, %881 ], [ 16193, %868 ]
  store i32 %884, ptr %21, align 8, !tbaa !20
  br label %885

885:                                              ; preds = %883, %877
  %886 = add i32 %872, -3
  %887 = lshr i64 %871, 3
  br label %2240

888:                                              ; preds = %88
  %889 = and i32 %95, 7
  %890 = zext nneg i32 %889 to i64
  %891 = lshr i64 %94, %890
  %892 = and i32 %95, -8
  %893 = icmp ult i32 %95, 32
  br i1 %893, label %894, label %957

894:                                              ; preds = %888
  %895 = and i32 %95, 24
  %896 = zext nneg i32 %895 to i64
  %897 = icmp eq i32 %92, 0
  br i1 %897, label %2296, label %898

898:                                              ; preds = %894
  %899 = load i8, ptr %90, align 1, !tbaa !44
  %900 = zext i8 %899 to i64
  %901 = shl nuw nsw i64 %900, %896
  %902 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %891, i64 %901), !nosanitize !47
  %903 = extractvalue { i64, i1 } %902, 1, !nosanitize !47
  br i1 %903, label %904, label %905, !prof !48, !nosanitize !47

904:                                              ; preds = %941, %927, %913, %898
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

905:                                              ; preds = %898
  %906 = extractvalue { i64, i1 } %902, 0, !nosanitize !47
  %907 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %908 = add i32 %92, -1
  %909 = add nuw nsw i64 %896, 8
  %910 = icmp samesign ult i32 %95, 24
  br i1 %910, label %911, label %951, !llvm.loop !80

911:                                              ; preds = %905
  %912 = icmp eq i32 %908, 0
  br i1 %912, label %2296, label %913

913:                                              ; preds = %911
  %914 = load i8, ptr %907, align 1, !tbaa !44
  %915 = zext i8 %914 to i64
  %916 = shl nuw nsw i64 %915, %909
  %917 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %906, i64 %916), !nosanitize !47
  %918 = extractvalue { i64, i1 } %917, 1, !nosanitize !47
  br i1 %918, label %904, label %919, !prof !48, !nosanitize !47

919:                                              ; preds = %913
  %920 = extractvalue { i64, i1 } %917, 0, !nosanitize !47
  %921 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %922 = add i32 %92, -2
  %923 = add nuw nsw i64 %896, 16
  %924 = icmp samesign ult i32 %95, 16
  br i1 %924, label %925, label %951, !llvm.loop !80

925:                                              ; preds = %919
  %926 = icmp eq i32 %922, 0
  br i1 %926, label %2296, label %927

927:                                              ; preds = %925
  %928 = load i8, ptr %921, align 1, !tbaa !44
  %929 = zext i8 %928 to i64
  %930 = shl nuw nsw i64 %929, %923
  %931 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %920, i64 %930), !nosanitize !47
  %932 = extractvalue { i64, i1 } %931, 1, !nosanitize !47
  br i1 %932, label %904, label %933, !prof !48, !nosanitize !47

933:                                              ; preds = %927
  %934 = extractvalue { i64, i1 } %931, 0, !nosanitize !47
  %935 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %936 = add i32 %92, -3
  %937 = add nuw nsw i64 %896, 24
  %938 = icmp eq i32 %895, 0
  br i1 %938, label %939, label %951, !llvm.loop !80

939:                                              ; preds = %933
  %940 = icmp eq i32 %936, 0
  br i1 %940, label %2296, label %941

941:                                              ; preds = %939
  %942 = load i8, ptr %935, align 1, !tbaa !44
  %943 = zext i8 %942 to i64
  %944 = shl nuw nsw i64 %943, %937
  %945 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %934, i64 %944), !nosanitize !47
  %946 = extractvalue { i64, i1 } %945, 1, !nosanitize !47
  br i1 %946, label %904, label %947, !prof !48, !nosanitize !47

947:                                              ; preds = %941
  %948 = extractvalue { i64, i1 } %945, 0, !nosanitize !47
  %949 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %950 = add i32 %92, -4
  br label %951

951:                                              ; preds = %947, %933, %919, %905
  %952 = phi i64 [ %906, %905 ], [ %920, %919 ], [ %934, %933 ], [ %948, %947 ]
  %953 = phi ptr [ %907, %905 ], [ %921, %919 ], [ %935, %933 ], [ %949, %947 ]
  %954 = phi i32 [ %908, %905 ], [ %922, %919 ], [ %936, %933 ], [ %950, %947 ]
  %955 = phi i64 [ %909, %905 ], [ %923, %919 ], [ %937, %933 ], [ 32, %947 ]
  %956 = trunc nuw nsw i64 %955 to i32
  br label %957

957:                                              ; preds = %951, %888
  %958 = phi ptr [ %90, %888 ], [ %953, %951 ]
  %959 = phi i32 [ %92, %888 ], [ %954, %951 ]
  %960 = phi i64 [ %891, %888 ], [ %952, %951 ]
  %961 = phi i32 [ %892, %888 ], [ %956, %951 ]
  %962 = and i64 %960, 65535
  %963 = lshr i64 %960, 16
  %964 = xor i64 %963, %962
  %965 = icmp eq i64 %964, 65535
  br i1 %965, label %967, label %966

966:                                              ; preds = %957
  store ptr @.str.7, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

967:                                              ; preds = %957
  %968 = trunc i64 %960 to i32
  %969 = and i32 %968, 65535
  store i32 %969, ptr %56, align 4, !tbaa !67
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit161, label %970

970:                                              ; preds = %967, %88
  %971 = phi ptr [ %958, %967 ], [ %90, %88 ]
  %972 = phi i32 [ %959, %967 ], [ %92, %88 ]
  %973 = phi i64 [ 0, %967 ], [ %94, %88 ]
  %974 = phi i32 [ 0, %967 ], [ %95, %88 ]
  store i32 16195, ptr %21, align 8, !tbaa !20
  br label %975

975:                                              ; preds = %970, %88
  %976 = phi ptr [ %971, %970 ], [ %90, %88 ]
  %977 = phi i32 [ %972, %970 ], [ %92, %88 ]
  %978 = phi i64 [ %973, %970 ], [ %94, %88 ]
  %979 = phi i32 [ %974, %970 ], [ %95, %88 ]
  %980 = load i32, ptr %56, align 4, !tbaa !67
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %1002, label %982

982:                                              ; preds = %975
  %983 = call i32 @llvm.umin.i32(i32 %980, i32 %977)
  %984 = call i32 @llvm.umin.i32(i32 %983, i32 %93)
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %.loopexit161, label %986

986:                                              ; preds = %982
  %987 = zext i32 %984 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr align 1 %976, i64 %987, i1 false)
  %988 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %977, i32 %984), !nosanitize !47
  %989 = extractvalue { i32, i1 } %988, 0, !nosanitize !47
  %990 = extractvalue { i32, i1 } %988, 1, !nosanitize !47
  br i1 %990, label %991, label %992, !prof !48, !nosanitize !47

991:                                              ; preds = %986
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

992:                                              ; preds = %986
  %993 = load i32, ptr %56, align 4, !tbaa !67
  %994 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %993, i32 %984), !nosanitize !47
  %995 = extractvalue { i32, i1 } %994, 1, !nosanitize !47
  br i1 %995, label %996, label %997, !prof !48, !nosanitize !47

996:                                              ; preds = %992
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

997:                                              ; preds = %992
  %998 = sub i32 %93, %984
  %999 = getelementptr inbounds nuw i8, ptr %976, i64 %987
  %1000 = extractvalue { i32, i1 } %994, 0, !nosanitize !47
  %1001 = getelementptr inbounds nuw i8, ptr %91, i64 %987
  store i32 %1000, ptr %56, align 4, !tbaa !67
  br label %2240

1002:                                             ; preds = %975
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2240

1003:                                             ; preds = %107
  %1004 = load i8, ptr %90, align 1, !tbaa !44
  %1005 = zext i8 %1004 to i64
  %1006 = shl nuw nsw i64 %1005, %108
  %1007 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %1006), !nosanitize !47
  %1008 = extractvalue { i64, i1 } %1007, 1, !nosanitize !47
  br i1 %1008, label %1009, label %1010, !prof !48, !nosanitize !47

1009:                                             ; preds = %1018, %1003
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1010:                                             ; preds = %1003
  %1011 = extractvalue { i64, i1 } %1007, 0, !nosanitize !47
  %1012 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %1013 = add i32 %92, -1
  %1014 = add nuw nsw i64 %108, 8
  %1015 = icmp samesign ult i32 %95, 6
  br i1 %1015, label %1016, label %1029, !llvm.loop !81

1016:                                             ; preds = %1010
  %1017 = icmp eq i32 %1013, 0
  br i1 %1017, label %2341, label %1018

1018:                                             ; preds = %1016
  %1019 = load i8, ptr %1012, align 1, !tbaa !44
  %1020 = zext i8 %1019 to i64
  %1021 = shl nuw nsw i64 %1020, %1014
  %1022 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1011, i64 %1021), !nosanitize !47
  %1023 = extractvalue { i64, i1 } %1022, 1, !nosanitize !47
  br i1 %1023, label %1009, label %1024, !prof !48, !nosanitize !47

1024:                                             ; preds = %1018
  %1025 = extractvalue { i64, i1 } %1022, 0, !nosanitize !47
  %1026 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %1027 = add i32 %92, -2
  %1028 = or disjoint i64 %108, 16
  br label %1029

1029:                                             ; preds = %1024, %1010
  %1030 = phi i64 [ %1011, %1010 ], [ %1025, %1024 ]
  %1031 = phi ptr [ %1012, %1010 ], [ %1026, %1024 ]
  %1032 = phi i32 [ %1013, %1010 ], [ %1027, %1024 ]
  %1033 = phi i64 [ %1014, %1010 ], [ %1028, %1024 ]
  %1034 = trunc nuw nsw i64 %1033 to i32
  br label %1035

1035:                                             ; preds = %1029, %105
  %1036 = phi ptr [ %90, %105 ], [ %1031, %1029 ]
  %1037 = phi i32 [ %92, %105 ], [ %1032, %1029 ]
  %1038 = phi i64 [ %94, %105 ], [ %1030, %1029 ]
  %1039 = phi i32 [ %95, %105 ], [ %1034, %1029 ]
  %1040 = trunc i64 %1038 to i32
  %1041 = and i32 %1040, 31
  %1042 = add nuw nsw i32 %1041, 257
  store i32 %1042, ptr %57, align 4, !tbaa !82
  %1043 = lshr i32 %1040, 5
  %1044 = and i32 %1043, 31
  %1045 = add nuw nsw i32 %1044, 1
  store i32 %1045, ptr %58, align 8, !tbaa !83
  %1046 = lshr i32 %1040, 10
  %1047 = and i32 %1046, 15
  %1048 = add nuw nsw i32 %1047, 4
  store i32 %1048, ptr %59, align 8, !tbaa !84
  %1049 = lshr i64 %1038, 14
  %1050 = add i32 %1039, -14
  %1051 = icmp samesign ugt i32 %1041, 29
  %1052 = icmp samesign ugt i32 %1044, 29
  %1053 = select i1 %1051, i1 true, i1 %1052
  br i1 %1053, label %1054, label %1055

1054:                                             ; preds = %1035
  store ptr @.str.8, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

1055:                                             ; preds = %1035
  store i32 0, ptr %60, align 4, !tbaa !85
  store i32 16197, ptr %21, align 8, !tbaa !20
  br label %1060

1056:                                             ; preds = %88
  %1057 = load i32, ptr %59, align 8, !tbaa !84
  %1058 = load i32, ptr %60, align 4, !tbaa !85
  %1059 = icmp ult i32 %1058, %1057
  br i1 %1059, label %1060, label %.loopexit162

1060:                                             ; preds = %1056, %1055
  %1061 = phi i32 [ %1050, %1055 ], [ %95, %1056 ]
  %1062 = phi i64 [ %1049, %1055 ], [ %94, %1056 ]
  %1063 = phi i32 [ %1037, %1055 ], [ %92, %1056 ]
  %1064 = phi ptr [ %1036, %1055 ], [ %90, %1056 ]
  %1065 = phi i32 [ %1048, %1055 ], [ %1057, %1056 ]
  %1066 = phi i32 [ 0, %1055 ], [ %1058, %1056 ]
  %1067 = zext i32 %1066 to i64
  %1068 = zext i32 %1065 to i64
  br label %1077

.loopexit162:                                     ; preds = %1099, %1056
  %1069 = phi ptr [ %90, %1056 ], [ %1100, %1099 ]
  %1070 = phi i32 [ %92, %1056 ], [ %1101, %1099 ]
  %1071 = phi i64 [ %94, %1056 ], [ %1113, %1099 ]
  %1072 = phi i32 [ %95, %1056 ], [ %1112, %1099 ]
  %1073 = phi i32 [ %1058, %1056 ], [ %1065, %1099 ]
  %1074 = icmp ult i32 %1073, 19
  br i1 %1074, label %1075, label %1125

1075:                                             ; preds = %.loopexit162
  %1076 = zext nneg i32 %1073 to i64
  br label %1115

1077:                                             ; preds = %1099, %1060
  %1078 = phi i64 [ %1067, %1060 ], [ %1104, %1099 ]
  %1079 = phi i32 [ %1061, %1060 ], [ %1112, %1099 ]
  %1080 = phi i64 [ %1062, %1060 ], [ %1113, %1099 ]
  %1081 = phi i32 [ %1063, %1060 ], [ %1101, %1099 ]
  %1082 = phi ptr [ %1064, %1060 ], [ %1100, %1099 ]
  %1083 = icmp ult i32 %1079, 3
  br i1 %1083, label %1084, label %1099

1084:                                             ; preds = %1077
  %1085 = or disjoint i32 %1079, 8
  %1086 = icmp eq i32 %1081, 0
  br i1 %1086, label %.loopexit161, label %1087

1087:                                             ; preds = %1084
  %1088 = load i8, ptr %1082, align 1, !tbaa !44
  %1089 = zext i8 %1088 to i64
  %1090 = zext nneg i32 %1079 to i64
  %1091 = shl nuw nsw i64 %1089, %1090
  %1092 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1080, i64 %1091), !nosanitize !47
  %1093 = extractvalue { i64, i1 } %1092, 1, !nosanitize !47
  br i1 %1093, label %1094, label %1095, !prof !48, !nosanitize !47

1094:                                             ; preds = %1087
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1095:                                             ; preds = %1087
  %1096 = extractvalue { i64, i1 } %1092, 0, !nosanitize !47
  %1097 = getelementptr inbounds nuw i8, ptr %1082, i64 1
  %1098 = add i32 %1081, -1
  br label %1099

1099:                                             ; preds = %1095, %1077
  %1100 = phi ptr [ %1097, %1095 ], [ %1082, %1077 ]
  %1101 = phi i32 [ %1098, %1095 ], [ %1081, %1077 ]
  %1102 = phi i64 [ %1096, %1095 ], [ %1080, %1077 ]
  %1103 = phi i32 [ %1085, %1095 ], [ %1079, %1077 ]
  %1104 = add nuw nsw i64 %1078, 1
  %1105 = trunc i64 %1102 to i16
  %1106 = and i16 %1105, 7
  %1107 = trunc nuw i64 %1104 to i32
  store i32 %1107, ptr %60, align 4, !tbaa !85
  %1108 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1078
  %1109 = load i16, ptr %1108, align 2, !tbaa !86
  %1110 = zext i16 %1109 to i64
  %1111 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1110
  store i16 %1106, ptr %1111, align 2, !tbaa !86
  %1112 = add i32 %1103, -3
  %1113 = lshr i64 %1102, 3
  %1114 = icmp eq i64 %1104, %1068
  br i1 %1114, label %.loopexit162, label %1077, !llvm.loop !88

1115:                                             ; preds = %1115, %1075
  %1116 = phi i64 [ %1076, %1075 ], [ %1117, %1115 ]
  %1117 = add nuw nsw i64 %1116, 1
  %1118 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1116
  %1119 = load i16, ptr %1118, align 2, !tbaa !86
  %1120 = zext i16 %1119 to i64
  %1121 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1120
  store i16 0, ptr %1121, align 2, !tbaa !86
  %1122 = and i64 %1117, 4294967295
  %1123 = icmp eq i64 %1122, 19
  br i1 %1123, label %1124, label %1115, !llvm.loop !89

1124:                                             ; preds = %1115
  store i32 19, ptr %60, align 4, !tbaa !85
  br label %1125

1125:                                             ; preds = %1124, %.loopexit162
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %64, align 8, !tbaa !34
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 7, ptr %66, align 8, !tbaa !90
  %1126 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1129, label %1128

1128:                                             ; preds = %1125
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

1129:                                             ; preds = %1125
  store i32 0, ptr %60, align 4, !tbaa !85
  store i32 16198, ptr %21, align 8, !tbaa !20
  br label %1130

1130:                                             ; preds = %1129, %88
  %1131 = phi ptr [ %1069, %1129 ], [ %90, %88 ]
  %1132 = phi i32 [ %1070, %1129 ], [ %92, %88 ]
  %1133 = phi i64 [ %1071, %1129 ], [ %94, %88 ]
  %1134 = phi i32 [ %1072, %1129 ], [ %95, %88 ]
  %1135 = phi i32 [ 0, %1129 ], [ %97, %88 ]
  %1136 = load i32, ptr %57, align 4, !tbaa !82
  %1137 = load i32, ptr %58, align 8, !tbaa !83
  %1138 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1136, i32 %1137), !nosanitize !47
  %1139 = extractvalue { i32, i1 } %1138, 1, !nosanitize !47
  br i1 %1139, label %1152, label %1140, !prof !91, !nosanitize !47

1140:                                             ; preds = %1130
  %1141 = extractvalue { i32, i1 } %1138, 0, !nosanitize !47
  %1142 = load i32, ptr %60, align 4, !tbaa !85
  %.fr5767 = freeze i32 %1142
  %1143 = call i32 @llvm.umax.i32(i32 %.fr5767, i32 %1141)
  %1144 = zext i32 %1143 to i64
  %1145 = icmp ult i32 %.fr5767, %1141
  br i1 %1145, label %1146, label %.loopexit160

1146:                                             ; preds = %1140
  %1147 = zext i32 %.fr5767 to i64
  %1148 = load i32, ptr %66, align 8, !tbaa !90
  %1149 = shl nsw i32 -1, %1148
  %1150 = xor i32 %1149, -1
  %1151 = load ptr, ptr %65, align 8, !tbaa !35
  br label %1153

1152:                                             ; preds = %1130
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1153:                                             ; preds = %1212, %1146
  %1154 = phi ptr [ %1131, %1146 ], [ %1199, %1212 ]
  %1155 = phi i32 [ %1132, %1146 ], [ %1200, %1212 ]
  %1156 = phi i64 [ %1133, %1146 ], [ %1215, %1212 ]
  %1157 = phi i32 [ %1134, %1146 ], [ %1213, %1212 ]
  %1158 = phi i64 [ %1147, %1146 ], [ %1216, %1212 ]
  %1159 = trunc i64 %1156 to i32
  %1160 = and i32 %1159, %1150
  %1161 = zext nneg i32 %1160 to i64
  %.split = getelementptr inbounds nuw [4 x i8], ptr %1151, i64 %1161
  %1162 = getelementptr inbounds nuw i8, ptr %.split, i64 1
  %1163 = load i8, ptr %1162, align 1, !tbaa !44
  %1164 = zext i8 %1163 to i32
  %1165 = icmp ult i32 %1157, %1164
  br i1 %1165, label %1166, label %1197

1166:                                             ; preds = %1153
  %1167 = icmp eq i32 %1155, 0
  br i1 %1167, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %1166
  %1168 = zext nneg i32 %1157 to i64
  br label %1171

1169:                                             ; preds = %1182
  %1170 = icmp eq i32 %1185, 0
  br i1 %1170, label %._crit_edge, label %1171

1171:                                             ; preds = %.lr.ph, %1169
  %1172 = phi ptr [ %1154, %.lr.ph ], [ %1184, %1169 ]
  %1173 = phi i32 [ %1155, %.lr.ph ], [ %1185, %1169 ]
  %1174 = phi i64 [ %1156, %.lr.ph ], [ %1183, %1169 ]
  %1175 = phi i64 [ %1168, %.lr.ph ], [ %1186, %1169 ]
  %1176 = load i8, ptr %1172, align 1, !tbaa !44
  %1177 = zext i8 %1176 to i64
  %1178 = shl i64 %1177, %1175
  %1179 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1174, i64 %1178), !nosanitize !47
  %1180 = extractvalue { i64, i1 } %1179, 1, !nosanitize !47
  br i1 %1180, label %1181, label %1182, !prof !48, !nosanitize !47

1181:                                             ; preds = %1171
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1182:                                             ; preds = %1171
  %1183 = extractvalue { i64, i1 } %1179, 0, !nosanitize !47
  %1184 = getelementptr inbounds nuw i8, ptr %1172, i64 1
  %1185 = add i32 %1173, -1
  %1186 = add nuw nsw i64 %1175, 8
  %1187 = trunc i64 %1183 to i32
  %1188 = and i32 %1187, %1150
  %1189 = zext nneg i32 %1188 to i64
  %.split157 = getelementptr inbounds nuw [4 x i8], ptr %1151, i64 %1189
  %1190 = getelementptr inbounds nuw i8, ptr %.split157, i64 1
  %1191 = load i8, ptr %1190, align 1, !tbaa !44
  %1192 = zext i8 %1191 to i64
  %1193 = icmp samesign ult i64 %1186, %1192
  br i1 %1193, label %1169, label %1194

1194:                                             ; preds = %1182
  %1195 = zext i8 %1191 to i32
  %1196 = trunc nuw nsw i64 %1186 to i32
  br label %1197

1197:                                             ; preds = %1194, %1153
  %1198 = phi i64 [ %1161, %1153 ], [ %1189, %1194 ]
  %1199 = phi ptr [ %1154, %1153 ], [ %1184, %1194 ]
  %1200 = phi i32 [ %1155, %1153 ], [ %1185, %1194 ]
  %1201 = phi i64 [ %1156, %1153 ], [ %1183, %1194 ]
  %1202 = phi i32 [ %1157, %1153 ], [ %1196, %1194 ]
  %1203 = phi i8 [ %1163, %1153 ], [ %1191, %1194 ]
  %1204 = phi i32 [ %1164, %1153 ], [ %1195, %1194 ]
  %.split158 = getelementptr inbounds nuw [4 x i8], ptr %1151, i64 %1198
  %1205 = getelementptr inbounds nuw i8, ptr %.split158, i64 2
  %1206 = load i16, ptr %1205, align 2, !tbaa !86
  %1207 = icmp ult i16 %1206, 16
  br i1 %1207, label %1208, label %1219

1208:                                             ; preds = %1197
  %1209 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1202, i32 %1204), !nosanitize !47
  %1210 = extractvalue { i32, i1 } %1209, 1, !nosanitize !47
  br i1 %1210, label %1211, label %1212, !prof !48, !nosanitize !47

1211:                                             ; preds = %1208
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1212:                                             ; preds = %1208
  %1213 = extractvalue { i32, i1 } %1209, 0, !nosanitize !47
  %1214 = zext nneg i8 %1203 to i64
  %1215 = lshr i64 %1201, %1214
  %1216 = add i64 %1158, 1
  %indvars = trunc i64 %1216 to i32
  store i32 %indvars, ptr %60, align 4, !tbaa !85
  %1217 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1158
  store i16 %1206, ptr %1217, align 2, !tbaa !86
  %1218 = icmp eq i64 %1216, %1144
  br i1 %1218, label %.loopexit160, label %1153

1219:                                             ; preds = %1197
  %indvars2191.le = trunc i64 %1158 to i32
  switch i16 %1206, label %1232 [
    i16 16, label %1226
    i16 17, label %1220
  ]

1220:                                             ; preds = %1219
  %1221 = add nuw nsw i32 %1204, 3
  %1222 = icmp ult i32 %1202, %1221
  br i1 %1222, label %1223, label %1303

1223:                                             ; preds = %1220
  %1224 = zext nneg i32 %1202 to i64
  %1225 = zext nneg i32 %1221 to i64
  br label %1282

1226:                                             ; preds = %1219
  %1227 = add nuw nsw i32 %1204, 2
  %1228 = icmp ult i32 %1202, %1227
  br i1 %1228, label %1229, label %1259

1229:                                             ; preds = %1226
  %1230 = zext nneg i32 %1202 to i64
  %1231 = zext nneg i32 %1227 to i64
  br label %1238

1232:                                             ; preds = %1219
  %1233 = add nuw nsw i32 %1204, 7
  %1234 = icmp ult i32 %1202, %1233
  br i1 %1234, label %1235, label %1340

1235:                                             ; preds = %1232
  %1236 = zext nneg i32 %1202 to i64
  %1237 = zext nneg i32 %1233 to i64
  br label %1319

1238:                                             ; preds = %1251, %1229
  %1239 = phi i64 [ %1230, %1229 ], [ %1255, %1251 ]
  %1240 = phi i64 [ %1201, %1229 ], [ %1252, %1251 ]
  %1241 = phi i32 [ %1200, %1229 ], [ %1254, %1251 ]
  %1242 = phi ptr [ %1199, %1229 ], [ %1253, %1251 ]
  %1243 = icmp eq i32 %1241, 0
  br i1 %1243, label %2331, label %1244

1244:                                             ; preds = %1238
  %1245 = load i8, ptr %1242, align 1, !tbaa !44
  %1246 = zext i8 %1245 to i64
  %1247 = shl i64 %1246, %1239
  %1248 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1240, i64 %1247), !nosanitize !47
  %1249 = extractvalue { i64, i1 } %1248, 1, !nosanitize !47
  br i1 %1249, label %1250, label %1251, !prof !48, !nosanitize !47

1250:                                             ; preds = %1244
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1251:                                             ; preds = %1244
  %1252 = extractvalue { i64, i1 } %1248, 0, !nosanitize !47
  %1253 = getelementptr inbounds nuw i8, ptr %1242, i64 1
  %1254 = add i32 %1241, -1
  %1255 = add nuw nsw i64 %1239, 8
  %1256 = icmp samesign ult i64 %1255, %1231
  br i1 %1256, label %1238, label %1257, !llvm.loop !92

1257:                                             ; preds = %1251
  %1258 = trunc nuw nsw i64 %1255 to i32
  br label %1259

1259:                                             ; preds = %1257, %1226
  %1260 = phi ptr [ %1199, %1226 ], [ %1253, %1257 ]
  %1261 = phi i32 [ %1200, %1226 ], [ %1254, %1257 ]
  %1262 = phi i64 [ %1201, %1226 ], [ %1252, %1257 ]
  %1263 = phi i32 [ %1202, %1226 ], [ %1258, %1257 ]
  %1264 = zext nneg i8 %1203 to i64
  %1265 = lshr i64 %1262, %1264
  %1266 = sub nuw i32 %1263, %1204
  %1267 = icmp eq i64 %1158, 0
  br i1 %1267, label %1268, label %1269

1268:                                             ; preds = %1259
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

1269:                                             ; preds = %1259
  %1270 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1266, i32 2), !nosanitize !47
  %1271 = extractvalue { i32, i1 } %1270, 1, !nosanitize !47
  br i1 %1271, label %1272, label %1273, !prof !48, !nosanitize !47

1272:                                             ; preds = %1269
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1273:                                             ; preds = %1269
  %1274 = trunc i64 %1265 to i32
  %1275 = and i32 %1274, 3
  %1276 = add nuw nsw i32 %1275, 3
  %1277 = add nuw i64 %1158, 4294967295
  %1278 = and i64 %1277, 4294967295
  %1279 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1278
  %1280 = load i16, ptr %1279, align 2, !tbaa !86
  %1281 = lshr i64 %1265, 2
  br label %1356

1282:                                             ; preds = %1295, %1223
  %1283 = phi i64 [ %1224, %1223 ], [ %1299, %1295 ]
  %1284 = phi i64 [ %1201, %1223 ], [ %1296, %1295 ]
  %1285 = phi i32 [ %1200, %1223 ], [ %1298, %1295 ]
  %1286 = phi ptr [ %1199, %1223 ], [ %1297, %1295 ]
  %1287 = icmp eq i32 %1285, 0
  br i1 %1287, label %2336, label %1288

1288:                                             ; preds = %1282
  %1289 = load i8, ptr %1286, align 1, !tbaa !44
  %1290 = zext i8 %1289 to i64
  %1291 = shl i64 %1290, %1283
  %1292 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1284, i64 %1291), !nosanitize !47
  %1293 = extractvalue { i64, i1 } %1292, 1, !nosanitize !47
  br i1 %1293, label %1294, label %1295, !prof !48, !nosanitize !47

1294:                                             ; preds = %1288
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1295:                                             ; preds = %1288
  %1296 = extractvalue { i64, i1 } %1292, 0, !nosanitize !47
  %1297 = getelementptr inbounds nuw i8, ptr %1286, i64 1
  %1298 = add i32 %1285, -1
  %1299 = add nuw nsw i64 %1283, 8
  %1300 = icmp samesign ult i64 %1299, %1225
  br i1 %1300, label %1282, label %1301, !llvm.loop !93

1301:                                             ; preds = %1295
  %1302 = trunc nuw nsw i64 %1299 to i32
  br label %1303

1303:                                             ; preds = %1301, %1220
  %1304 = phi ptr [ %1199, %1220 ], [ %1297, %1301 ]
  %1305 = phi i32 [ %1200, %1220 ], [ %1298, %1301 ]
  %1306 = phi i64 [ %1201, %1220 ], [ %1296, %1301 ]
  %1307 = phi i32 [ %1202, %1220 ], [ %1302, %1301 ]
  %1308 = sub nuw i32 %1307, %1204
  %1309 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1308, i32 3), !nosanitize !47
  %1310 = extractvalue { i32, i1 } %1309, 1, !nosanitize !47
  br i1 %1310, label %1311, label %1312, !prof !48, !nosanitize !47

1311:                                             ; preds = %1303
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1312:                                             ; preds = %1303
  %1313 = zext nneg i8 %1203 to i64
  %1314 = lshr i64 %1306, %1313
  %1315 = trunc i64 %1314 to i32
  %1316 = and i32 %1315, 7
  %1317 = add nuw nsw i32 %1316, 3
  %1318 = lshr i64 %1314, 3
  br label %1356

1319:                                             ; preds = %1332, %1235
  %1320 = phi i64 [ %1236, %1235 ], [ %1336, %1332 ]
  %1321 = phi i64 [ %1201, %1235 ], [ %1333, %1332 ]
  %1322 = phi i32 [ %1200, %1235 ], [ %1335, %1332 ]
  %1323 = phi ptr [ %1199, %1235 ], [ %1334, %1332 ]
  %1324 = icmp eq i32 %1322, 0
  br i1 %1324, label %2326, label %1325

1325:                                             ; preds = %1319
  %1326 = load i8, ptr %1323, align 1, !tbaa !44
  %1327 = zext i8 %1326 to i64
  %1328 = shl i64 %1327, %1320
  %1329 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1321, i64 %1328), !nosanitize !47
  %1330 = extractvalue { i64, i1 } %1329, 1, !nosanitize !47
  br i1 %1330, label %1331, label %1332, !prof !48, !nosanitize !47

1331:                                             ; preds = %1325
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1332:                                             ; preds = %1325
  %1333 = extractvalue { i64, i1 } %1329, 0, !nosanitize !47
  %1334 = getelementptr inbounds nuw i8, ptr %1323, i64 1
  %1335 = add i32 %1322, -1
  %1336 = add nuw nsw i64 %1320, 8
  %1337 = icmp samesign ult i64 %1336, %1237
  br i1 %1337, label %1319, label %1338, !llvm.loop !94

1338:                                             ; preds = %1332
  %1339 = trunc nuw nsw i64 %1336 to i32
  br label %1340

1340:                                             ; preds = %1338, %1232
  %1341 = phi ptr [ %1199, %1232 ], [ %1334, %1338 ]
  %1342 = phi i32 [ %1200, %1232 ], [ %1335, %1338 ]
  %1343 = phi i64 [ %1201, %1232 ], [ %1333, %1338 ]
  %1344 = phi i32 [ %1202, %1232 ], [ %1339, %1338 ]
  %1345 = sub nuw i32 %1344, %1204
  %1346 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1345, i32 7), !nosanitize !47
  %1347 = extractvalue { i32, i1 } %1346, 1, !nosanitize !47
  br i1 %1347, label %1348, label %1349, !prof !48, !nosanitize !47

1348:                                             ; preds = %1340
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1349:                                             ; preds = %1340
  %1350 = zext nneg i8 %1203 to i64
  %1351 = lshr i64 %1343, %1350
  %1352 = trunc i64 %1351 to i32
  %1353 = and i32 %1352, 127
  %1354 = add nuw nsw i32 %1353, 11
  %1355 = lshr i64 %1351, 7
  br label %1356

1356:                                             ; preds = %1349, %1312, %1273
  %1357 = phi ptr [ %1260, %1273 ], [ %1304, %1312 ], [ %1341, %1349 ]
  %1358 = phi i32 [ %1261, %1273 ], [ %1305, %1312 ], [ %1342, %1349 ]
  %1359 = phi i64 [ %1281, %1273 ], [ %1318, %1312 ], [ %1355, %1349 ]
  %1360 = phi { i32, i1 } [ %1270, %1273 ], [ %1309, %1312 ], [ %1346, %1349 ]
  %1361 = phi i32 [ %1276, %1273 ], [ %1317, %1312 ], [ %1354, %1349 ]
  %1362 = phi i16 [ %1280, %1273 ], [ 0, %1312 ], [ 0, %1349 ]
  %1363 = extractvalue { i32, i1 } %1360, 0
  %1364 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %indvars2191.le, i32 %1361), !nosanitize !47
  %1365 = extractvalue { i32, i1 } %1364, 1, !nosanitize !47
  br i1 %1365, label %1366, label %1367, !prof !48, !nosanitize !47

1366:                                             ; preds = %1356
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1367:                                             ; preds = %1356
  %1368 = extractvalue { i32, i1 } %1364, 0, !nosanitize !47
  %1369 = icmp ugt i32 %1368, %1141
  br i1 %1369, label %1382, label %1370

1370:                                             ; preds = %1367
  %1371 = and i64 %1158, 4294967295
  %1372 = icmp eq i64 %1371, 4294967295
  br i1 %1372, label %._crit_edge4580, label %.lr.ph4579, !prof !91, !nosanitize !47

.lr.ph4579:                                       ; preds = %1370
  %1373 = add nsw i32 %1361, -1
  %1374 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %1373, 0
  %1375 = and i64 %1158, 1
  %lcmp.mod5761.not.not = icmp eq i64 %1375, 0
  br i1 %lcmp.mod5761.not.not, label %.prol.preheader, label %.prol.loopexit, !prof !91

.prol.preheader:                                  ; preds = %.lr.ph4579
  %1376 = or disjoint i64 %1371, 1
  %1377 = trunc nuw i64 %1376 to i32
  store i32 %1377, ptr %60, align 4, !tbaa !85
  %1378 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1371
  store i16 %1362, ptr %1378, align 2, !tbaa !86
  %1379 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1373, i32 1), !nosanitize !47
  %1380 = extractvalue { i32, i1 } %1379, 1, !nosanitize !47
  br i1 %1380, label %1384, label %.prol.loopexit, !prof !95, !llvm.loop !96, !nosanitize !47

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph4579
  %.unr5763 = phi { i32, i1 } [ %1374, %.lr.ph4579 ], [ %1379, %.prol.preheader ]
  %.unr5764 = phi i64 [ %1371, %.lr.ph4579 ], [ %1376, %.prol.preheader ]
  %1381 = icmp eq i64 %1371, 4294967294
  br i1 %1381, label %._crit_edge4580, label %.lr.ph4579.new, !prof !91

1382:                                             ; preds = %1367
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

.loopexit5765:                                    ; preds = %1385, %.lr.ph4579.new
  %1383 = phi i32 [ %1388, %1385 ], [ %1398, %.lr.ph4579.new ]
  store i32 %1383, ptr %60, align 4, !tbaa !85
  br label %1384

1384:                                             ; preds = %.loopexit5765, %.prol.preheader
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1385:                                             ; preds = %.lr.ph4579.new
  %1386 = extractvalue { i32, i1 } %1400, 0
  %1387 = add nuw nsw i64 %1395, 2
  %1388 = trunc nuw i64 %1387 to i32
  %1389 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1397
  store i16 %1362, ptr %1389, align 2, !tbaa !86
  %1390 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1386, i32 1), !nosanitize !47
  %1391 = extractvalue { i32, i1 } %1390, 1, !nosanitize !47
  br i1 %1391, label %.loopexit5765, label %1392, !prof !95, !llvm.loop !96, !nosanitize !47

1392:                                             ; preds = %1385
  %1393 = icmp eq i64 %1387, 4294967295
  br i1 %1393, label %._crit_edge4580.loopexit.unr-lcssa, label %.lr.ph4579.new, !prof !95, !llvm.loop !97, !nosanitize !47

._crit_edge4580.loopexit.unr-lcssa:               ; preds = %1392
  store i32 %1388, ptr %60, align 4, !tbaa !85
  br label %._crit_edge4580

._crit_edge4580:                                  ; preds = %._crit_edge4580.loopexit.unr-lcssa, %.prol.loopexit, %1370
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

.lr.ph4579.new:                                   ; preds = %.prol.loopexit, %1392
  %1394 = phi { i32, i1 } [ %1390, %1392 ], [ %.unr5763, %.prol.loopexit ]
  %1395 = phi i64 [ %1387, %1392 ], [ %.unr5764, %.prol.loopexit ]
  %1396 = extractvalue { i32, i1 } %1394, 0
  %1397 = add nuw nsw i64 %1395, 1
  %1398 = trunc nuw i64 %1397 to i32
  %1399 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1395
  store i16 %1362, ptr %1399, align 2, !tbaa !86
  %1400 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1396, i32 1), !nosanitize !47
  %1401 = extractvalue { i32, i1 } %1400, 1, !nosanitize !47
  br i1 %1401, label %.loopexit5765, label %1385, !prof !95, !llvm.loop !96, !nosanitize !47

.loopexit160:                                     ; preds = %1212, %1140
  %1402 = phi i32 [ %1134, %1140 ], [ %1213, %1212 ]
  %1403 = phi i64 [ %1133, %1140 ], [ %1215, %1212 ]
  %1404 = phi i32 [ %1132, %1140 ], [ %1200, %1212 ]
  %1405 = phi ptr [ %1131, %1140 ], [ %1199, %1212 ]
  %1406 = load i16, ptr %68, align 8, !tbaa !86
  %1407 = icmp eq i16 %1406, 0
  br i1 %1407, label %1408, label %1409

1408:                                             ; preds = %.loopexit160
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

1409:                                             ; preds = %.loopexit160
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !90
  %1410 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1136, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1411 = icmp eq i32 %1410, 0
  br i1 %1411, label %1413, label %1412

1412:                                             ; preds = %1409
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

1413:                                             ; preds = %1409
  %1414 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1414, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !99
  %1415 = load i32, ptr %57, align 4, !tbaa !82
  %1416 = zext i32 %1415 to i64
  %1417 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1416
  %1418 = load i32, ptr %58, align 8, !tbaa !83
  %1419 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1417, i32 noundef %1418, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #12
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1422, label %1421

1421:                                             ; preds = %1413
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

1422:                                             ; preds = %1413
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit161, label %1423

1423:                                             ; preds = %1422, %88
  %1424 = phi ptr [ %1405, %1422 ], [ %90, %88 ]
  %1425 = phi i32 [ %1404, %1422 ], [ %92, %88 ]
  %1426 = phi i64 [ %1403, %1422 ], [ %94, %88 ]
  %1427 = phi i32 [ %1402, %1422 ], [ %95, %88 ]
  %1428 = phi i32 [ 0, %1422 ], [ %97, %88 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1429

1429:                                             ; preds = %1423, %88
  %1430 = phi ptr [ %1424, %1423 ], [ %90, %88 ]
  %1431 = phi i32 [ %1425, %1423 ], [ %92, %88 ]
  %1432 = phi i64 [ %1426, %1423 ], [ %94, %88 ]
  %1433 = phi i32 [ %1427, %1423 ], [ %95, %88 ]
  %1434 = phi i32 [ %1428, %1423 ], [ %97, %88 ]
  %1435 = icmp ugt i32 %1431, 5
  %1436 = icmp ugt i32 %93, 257
  %1437 = select i1 %1435, i1 %1436, i1 false
  br i1 %1437, label %1438, label %1448

1438:                                             ; preds = %1429
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %1430, ptr %0, align 8, !tbaa !50
  store i32 %1431, ptr %43, align 8, !tbaa !51
  store i64 %1432, ptr %45, align 8, !tbaa !31
  store i32 %1433, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %96) #12
  %1439 = load ptr, ptr %26, align 8, !tbaa !49
  %1440 = load i32, ptr %41, align 8, !tbaa !52
  %1441 = load ptr, ptr %0, align 8, !tbaa !50
  %1442 = load i32, ptr %43, align 8, !tbaa !51
  %1443 = load i64, ptr %45, align 8, !tbaa !31
  %1444 = load i32, ptr %47, align 8, !tbaa !32
  %1445 = load i32, ptr %21, align 8, !tbaa !20
  %1446 = icmp eq i32 %1445, 16191
  br i1 %1446, label %1447, label %2240

1447:                                             ; preds = %1438
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2240

1448:                                             ; preds = %1429
  store i32 0, ptr %71, align 4, !tbaa !37
  %1449 = load i32, ptr %66, align 8, !tbaa !90
  %1450 = shl nsw i32 -1, %1449
  %1451 = xor i32 %1450, -1
  %1452 = load ptr, ptr %65, align 8, !tbaa !35
  %1453 = trunc i64 %1432 to i32
  %1454 = and i32 %1451, %1453
  %1455 = zext nneg i32 %1454 to i64
  %1456 = getelementptr inbounds nuw [4 x i8], ptr %1452, i64 %1455
  %1457 = getelementptr inbounds nuw i8, ptr %1456, i64 1
  %1458 = load i8, ptr %1457, align 1, !tbaa !44
  %1459 = zext i8 %1458 to i32
  %1460 = icmp ult i32 %1433, %1459
  br i1 %1460, label %1461, label %1493

1461:                                             ; preds = %1448
  %1462 = icmp eq i32 %1431, 0
  br i1 %1462, label %._crit_edge4460, label %.lr.ph4459

.lr.ph4459:                                       ; preds = %1461
  %1463 = zext nneg i32 %1433 to i64
  br label %1466

1464:                                             ; preds = %1477
  %1465 = icmp eq i32 %1480, 0
  br i1 %1465, label %._crit_edge4460, label %1466

1466:                                             ; preds = %.lr.ph4459, %1464
  %1467 = phi ptr [ %1430, %.lr.ph4459 ], [ %1479, %1464 ]
  %1468 = phi i32 [ %1431, %.lr.ph4459 ], [ %1480, %1464 ]
  %1469 = phi i64 [ %1432, %.lr.ph4459 ], [ %1478, %1464 ]
  %1470 = phi i64 [ %1463, %.lr.ph4459 ], [ %1481, %1464 ]
  %1471 = load i8, ptr %1467, align 1, !tbaa !44
  %1472 = zext i8 %1471 to i64
  %1473 = shl i64 %1472, %1470
  %1474 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1469, i64 %1473), !nosanitize !47
  %1475 = extractvalue { i64, i1 } %1474, 1, !nosanitize !47
  br i1 %1475, label %1476, label %1477, !prof !48, !nosanitize !47

1476:                                             ; preds = %1466
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1477:                                             ; preds = %1466
  %1478 = extractvalue { i64, i1 } %1474, 0, !nosanitize !47
  %1479 = getelementptr inbounds nuw i8, ptr %1467, i64 1
  %1480 = add i32 %1468, -1
  %1481 = add nuw nsw i64 %1470, 8
  %1482 = trunc i64 %1478 to i32
  %1483 = and i32 %1482, %1451
  %1484 = zext nneg i32 %1483 to i64
  %1485 = getelementptr inbounds nuw [4 x i8], ptr %1452, i64 %1484
  %1486 = getelementptr inbounds nuw i8, ptr %1485, i64 1
  %1487 = load i8, ptr %1486, align 1, !tbaa !44
  %1488 = zext i8 %1487 to i64
  %1489 = icmp samesign ult i64 %1481, %1488
  br i1 %1489, label %1464, label %1490

1490:                                             ; preds = %1477
  %1491 = zext i8 %1487 to i32
  %1492 = trunc nuw nsw i64 %1481 to i32
  br label %1493

1493:                                             ; preds = %1490, %1448
  %1494 = phi ptr [ %1456, %1448 ], [ %1485, %1490 ]
  %1495 = phi ptr [ %1430, %1448 ], [ %1479, %1490 ]
  %1496 = phi i32 [ %1431, %1448 ], [ %1480, %1490 ]
  %1497 = phi i64 [ %1432, %1448 ], [ %1478, %1490 ]
  %1498 = phi i32 [ %1433, %1448 ], [ %1492, %1490 ]
  %1499 = phi i8 [ %1458, %1448 ], [ %1487, %1490 ]
  %1500 = phi i32 [ %1459, %1448 ], [ %1491, %1490 ]
  %1501 = getelementptr inbounds nuw i8, ptr %1494, i64 2
  %1502 = load i16, ptr %1501, align 2, !tbaa !86
  %1503 = load i8, ptr %1494, align 2, !tbaa !44
  %1504 = add i8 %1503, -1
  %1505 = icmp ult i8 %1504, 15
  br i1 %1505, label %1506, label %1571

1506:                                             ; preds = %1493
  %1507 = zext nneg i8 %1503 to i32
  %1508 = add nuw nsw i32 %1500, %1507
  %1509 = shl nsw i32 -1, %1508
  %1510 = xor i32 %1509, -1
  %1511 = zext i16 %1502 to i32
  %1512 = trunc i64 %1497 to i32
  %1513 = and i32 %1510, %1512
  %1514 = lshr i32 %1513, %1500
  %1515 = add nuw i32 %1514, %1511
  %1516 = zext i32 %1515 to i64
  %1517 = getelementptr inbounds nuw [4 x i8], ptr %1452, i64 %1516
  %1518 = getelementptr inbounds nuw i8, ptr %1517, i64 1
  %1519 = load i8, ptr %1518, align 1, !tbaa !44
  %1520 = zext i8 %1519 to i32
  %1521 = add nuw nsw i32 %1500, %1520
  %1522 = icmp ugt i32 %1521, %1498
  br i1 %1522, label %1523, label %1558

1523:                                             ; preds = %1506
  %1524 = icmp eq i32 %1496, 0
  br i1 %1524, label %._crit_edge4480, label %.lr.ph4479

.lr.ph4479:                                       ; preds = %1523
  %1525 = zext nneg i32 %1498 to i64
  br label %1528

1526:                                             ; preds = %1539
  %1527 = icmp eq i32 %1542, 0
  br i1 %1527, label %._crit_edge4480, label %1528

1528:                                             ; preds = %.lr.ph4479, %1526
  %1529 = phi ptr [ %1495, %.lr.ph4479 ], [ %1541, %1526 ]
  %1530 = phi i32 [ %1496, %.lr.ph4479 ], [ %1542, %1526 ]
  %1531 = phi i64 [ %1497, %.lr.ph4479 ], [ %1540, %1526 ]
  %1532 = phi i64 [ %1525, %.lr.ph4479 ], [ %1543, %1526 ]
  %1533 = load i8, ptr %1529, align 1, !tbaa !44
  %1534 = zext i8 %1533 to i64
  %1535 = shl i64 %1534, %1532
  %1536 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1531, i64 %1535), !nosanitize !47
  %1537 = extractvalue { i64, i1 } %1536, 1, !nosanitize !47
  br i1 %1537, label %1538, label %1539, !prof !48, !nosanitize !47

1538:                                             ; preds = %1528
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1539:                                             ; preds = %1528
  %1540 = extractvalue { i64, i1 } %1536, 0, !nosanitize !47
  %1541 = getelementptr inbounds nuw i8, ptr %1529, i64 1
  %1542 = add i32 %1530, -1
  %1543 = add nuw nsw i64 %1532, 8
  %1544 = trunc i64 %1540 to i32
  %1545 = and i32 %1544, %1510
  %1546 = lshr i32 %1545, %1500
  %1547 = add nuw i32 %1546, %1511
  %1548 = zext i32 %1547 to i64
  %1549 = getelementptr inbounds nuw [4 x i8], ptr %1452, i64 %1548
  %1550 = getelementptr inbounds nuw i8, ptr %1549, i64 1
  %1551 = load i8, ptr %1550, align 1, !tbaa !44
  %1552 = zext i8 %1551 to i32
  %1553 = add nuw nsw i32 %1500, %1552
  %1554 = zext nneg i32 %1553 to i64
  %1555 = icmp samesign ult i64 %1543, %1554
  br i1 %1555, label %1526, label %1556

1556:                                             ; preds = %1539
  %1557 = trunc nuw nsw i64 %1543 to i32
  br label %1558

1558:                                             ; preds = %1556, %1506
  %1559 = phi ptr [ %1517, %1506 ], [ %1549, %1556 ]
  %1560 = phi ptr [ %1495, %1506 ], [ %1541, %1556 ]
  %1561 = phi i32 [ %1496, %1506 ], [ %1542, %1556 ]
  %1562 = phi i64 [ %1497, %1506 ], [ %1540, %1556 ]
  %1563 = phi i32 [ %1498, %1506 ], [ %1557, %1556 ]
  %1564 = phi i8 [ %1519, %1506 ], [ %1551, %1556 ]
  %1565 = load i8, ptr %1559, align 2, !tbaa !44
  %1566 = getelementptr inbounds nuw i8, ptr %1559, i64 2
  %1567 = load i16, ptr %1566, align 2, !tbaa !86
  %1568 = sub nuw i32 %1563, %1500
  %1569 = zext nneg i8 %1499 to i64
  %1570 = lshr i64 %1562, %1569
  store i32 %1500, ptr %71, align 4, !tbaa !37
  br label %1571

1571:                                             ; preds = %1558, %1493
  %1572 = phi i32 [ %1500, %1558 ], [ 0, %1493 ]
  %1573 = phi ptr [ %1560, %1558 ], [ %1495, %1493 ]
  %1574 = phi i32 [ %1561, %1558 ], [ %1496, %1493 ]
  %1575 = phi i64 [ %1570, %1558 ], [ %1497, %1493 ]
  %1576 = phi i32 [ %1568, %1558 ], [ %1498, %1493 ]
  %1577 = phi i16 [ %1567, %1558 ], [ %1502, %1493 ]
  %1578 = phi i8 [ %1564, %1558 ], [ %1499, %1493 ]
  %1579 = phi i8 [ %1565, %1558 ], [ %1503, %1493 ]
  %1580 = zext i8 %1578 to i32
  %1581 = zext nneg i8 %1578 to i64
  %1582 = lshr i64 %1575, %1581
  %1583 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1576, i32 %1580), !nosanitize !47
  %1584 = extractvalue { i32, i1 } %1583, 0, !nosanitize !47
  %1585 = extractvalue { i32, i1 } %1583, 1, !nosanitize !47
  br i1 %1585, label %1586, label %1587, !prof !48, !nosanitize !47

1586:                                             ; preds = %1571
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1587:                                             ; preds = %1571
  %1588 = add nuw nsw i32 %1572, %1580
  store i32 %1588, ptr %71, align 4, !tbaa !37
  %1589 = zext i16 %1577 to i32
  store i32 %1589, ptr %56, align 4, !tbaa !67
  %1590 = zext i8 %1579 to i32
  %1591 = icmp eq i8 %1579, 0
  br i1 %1591, label %1592, label %1593

1592:                                             ; preds = %1587
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2240

1593:                                             ; preds = %1587
  %1594 = and i32 %1590, 32
  %1595 = icmp eq i32 %1594, 0
  br i1 %1595, label %1597, label %1596

1596:                                             ; preds = %1593
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2240

1597:                                             ; preds = %1593
  %1598 = and i32 %1590, 64
  %1599 = icmp eq i32 %1598, 0
  br i1 %1599, label %1601, label %1600

1600:                                             ; preds = %1597
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

1601:                                             ; preds = %1597
  %1602 = and i32 %1590, 15
  store i32 %1602, ptr %72, align 4, !tbaa !53
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1603

1603:                                             ; preds = %1601, %101
  %1604 = phi i32 [ %1602, %1601 ], [ %102, %101 ]
  %1605 = phi ptr [ %1573, %1601 ], [ %90, %101 ]
  %1606 = phi i32 [ %1574, %1601 ], [ %92, %101 ]
  %1607 = phi i64 [ %1582, %1601 ], [ %94, %101 ]
  %1608 = phi i32 [ %1584, %1601 ], [ %95, %101 ]
  %1609 = phi i32 [ %1434, %1601 ], [ %97, %101 ]
  %1610 = icmp eq i32 %1604, 0
  br i1 %1610, label %1663, label %1611

1611:                                             ; preds = %1603
  %1612 = icmp ult i32 %1608, %1604
  br i1 %1612, label %1613, label %.loopexit159

1613:                                             ; preds = %1611
  %1614 = icmp eq i32 %1606, 0
  br i1 %1614, label %._crit_edge4500, label %.lr.ph4499

.lr.ph4499:                                       ; preds = %1613
  %1615 = zext i32 %1608 to i64
  br label %1618

1616:                                             ; preds = %1629
  %1617 = icmp eq i32 %1632, 0
  br i1 %1617, label %._crit_edge4500, label %1618, !llvm.loop !100

1618:                                             ; preds = %.lr.ph4499, %1616
  %1619 = phi ptr [ %1605, %.lr.ph4499 ], [ %1631, %1616 ]
  %1620 = phi i32 [ %1606, %.lr.ph4499 ], [ %1632, %1616 ]
  %1621 = phi i64 [ %1607, %.lr.ph4499 ], [ %1630, %1616 ]
  %1622 = phi i64 [ %1615, %.lr.ph4499 ], [ %1633, %1616 ]
  %1623 = load i8, ptr %1619, align 1, !tbaa !44
  %1624 = zext i8 %1623 to i64
  %1625 = shl i64 %1624, %1622
  %1626 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1621, i64 %1625), !nosanitize !47
  %1627 = extractvalue { i64, i1 } %1626, 1, !nosanitize !47
  br i1 %1627, label %1628, label %1629, !prof !48, !nosanitize !47

1628:                                             ; preds = %1618
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1629:                                             ; preds = %1618
  %1630 = extractvalue { i64, i1 } %1626, 0, !nosanitize !47
  %1631 = getelementptr inbounds nuw i8, ptr %1619, i64 1
  %1632 = add i32 %1620, -1
  %1633 = add nuw nsw i64 %1622, 8
  %1634 = trunc nuw i64 %1633 to i32
  %1635 = icmp ugt i32 %1604, %1634
  br i1 %1635, label %1616, label %.loopexit159, !llvm.loop !100

.loopexit159:                                     ; preds = %1629, %1611
  %1636 = phi ptr [ %1605, %1611 ], [ %1631, %1629 ]
  %1637 = phi i32 [ %1606, %1611 ], [ %1632, %1629 ]
  %1638 = phi i64 [ %1607, %1611 ], [ %1630, %1629 ]
  %1639 = phi i32 [ %1608, %1611 ], [ %1634, %1629 ]
  %1640 = shl nsw i32 -1, %1604
  %1641 = xor i32 %1640, -1
  %1642 = trunc i64 %1638 to i32
  %1643 = and i32 %1642, %1641
  %1644 = load i32, ptr %56, align 4, !tbaa !67
  %1645 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1644, i32 %1643), !nosanitize !47
  %1646 = extractvalue { i32, i1 } %1645, 1, !nosanitize !47
  br i1 %1646, label %1647, label %1648, !prof !48, !nosanitize !47

1647:                                             ; preds = %.loopexit159
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1648:                                             ; preds = %.loopexit159
  %1649 = extractvalue { i32, i1 } %1645, 0, !nosanitize !47
  store i32 %1649, ptr %56, align 4, !tbaa !67
  %1650 = zext nneg i32 %1604 to i64
  %1651 = lshr i64 %1638, %1650
  %1652 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1639, i32 %1604), !nosanitize !47
  %1653 = extractvalue { i32, i1 } %1652, 0, !nosanitize !47
  %1654 = extractvalue { i32, i1 } %1652, 1, !nosanitize !47
  br i1 %1654, label %1655, label %1656, !prof !48, !nosanitize !47

1655:                                             ; preds = %1648
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1656:                                             ; preds = %1648
  %1657 = load i32, ptr %71, align 4, !tbaa !37
  %1658 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1657, i32 %1604), !nosanitize !47
  %1659 = extractvalue { i32, i1 } %1658, 1, !nosanitize !47
  br i1 %1659, label %1660, label %1661, !prof !48, !nosanitize !47

1660:                                             ; preds = %1656
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1661:                                             ; preds = %1656
  %1662 = extractvalue { i32, i1 } %1658, 0, !nosanitize !47
  store i32 %1662, ptr %71, align 4, !tbaa !37
  br label %1663

1663:                                             ; preds = %1661, %1603
  %1664 = phi ptr [ %1636, %1661 ], [ %1605, %1603 ]
  %1665 = phi i32 [ %1637, %1661 ], [ %1606, %1603 ]
  %1666 = phi i64 [ %1651, %1661 ], [ %1607, %1603 ]
  %1667 = phi i32 [ %1653, %1661 ], [ %1608, %1603 ]
  %1668 = load i32, ptr %56, align 4, !tbaa !67
  store i32 %1668, ptr %73, align 8, !tbaa !101
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1669

1669:                                             ; preds = %1663, %88
  %1670 = phi ptr [ %1664, %1663 ], [ %90, %88 ]
  %1671 = phi i32 [ %1665, %1663 ], [ %92, %88 ]
  %1672 = phi i64 [ %1666, %1663 ], [ %94, %88 ]
  %1673 = phi i32 [ %1667, %1663 ], [ %95, %88 ]
  %1674 = phi i32 [ %1609, %1663 ], [ %97, %88 ]
  %1675 = load i32, ptr %69, align 4, !tbaa !99
  %1676 = shl nsw i32 -1, %1675
  %1677 = xor i32 %1676, -1
  %1678 = load ptr, ptr %64, align 8, !tbaa !34
  %1679 = trunc i64 %1672 to i32
  %1680 = and i32 %1677, %1679
  %1681 = zext nneg i32 %1680 to i64
  %1682 = getelementptr inbounds nuw [4 x i8], ptr %1678, i64 %1681
  %1683 = getelementptr inbounds nuw i8, ptr %1682, i64 1
  %1684 = load i8, ptr %1683, align 1, !tbaa !44
  %1685 = zext i8 %1684 to i32
  %1686 = icmp ult i32 %1673, %1685
  br i1 %1686, label %1687, label %1719

1687:                                             ; preds = %1669
  %1688 = icmp eq i32 %1671, 0
  br i1 %1688, label %._crit_edge4520, label %.lr.ph4519

.lr.ph4519:                                       ; preds = %1687
  %1689 = zext nneg i32 %1673 to i64
  br label %1692

1690:                                             ; preds = %1703
  %1691 = icmp eq i32 %1706, 0
  br i1 %1691, label %._crit_edge4520, label %1692

1692:                                             ; preds = %.lr.ph4519, %1690
  %1693 = phi ptr [ %1670, %.lr.ph4519 ], [ %1705, %1690 ]
  %1694 = phi i32 [ %1671, %.lr.ph4519 ], [ %1706, %1690 ]
  %1695 = phi i64 [ %1672, %.lr.ph4519 ], [ %1704, %1690 ]
  %1696 = phi i64 [ %1689, %.lr.ph4519 ], [ %1707, %1690 ]
  %1697 = load i8, ptr %1693, align 1, !tbaa !44
  %1698 = zext i8 %1697 to i64
  %1699 = shl i64 %1698, %1696
  %1700 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1695, i64 %1699), !nosanitize !47
  %1701 = extractvalue { i64, i1 } %1700, 1, !nosanitize !47
  br i1 %1701, label %1702, label %1703, !prof !48, !nosanitize !47

1702:                                             ; preds = %1692
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1703:                                             ; preds = %1692
  %1704 = extractvalue { i64, i1 } %1700, 0, !nosanitize !47
  %1705 = getelementptr inbounds nuw i8, ptr %1693, i64 1
  %1706 = add i32 %1694, -1
  %1707 = add nuw nsw i64 %1696, 8
  %1708 = trunc i64 %1704 to i32
  %1709 = and i32 %1708, %1677
  %1710 = zext nneg i32 %1709 to i64
  %1711 = getelementptr inbounds nuw [4 x i8], ptr %1678, i64 %1710
  %1712 = getelementptr inbounds nuw i8, ptr %1711, i64 1
  %1713 = load i8, ptr %1712, align 1, !tbaa !44
  %1714 = zext i8 %1713 to i64
  %1715 = icmp samesign ult i64 %1707, %1714
  br i1 %1715, label %1690, label %1716

1716:                                             ; preds = %1703
  %1717 = zext i8 %1713 to i32
  %1718 = trunc nuw nsw i64 %1707 to i32
  br label %1719

1719:                                             ; preds = %1716, %1669
  %1720 = phi ptr [ %1682, %1669 ], [ %1711, %1716 ]
  %1721 = phi ptr [ %1670, %1669 ], [ %1705, %1716 ]
  %1722 = phi i32 [ %1671, %1669 ], [ %1706, %1716 ]
  %1723 = phi i64 [ %1672, %1669 ], [ %1704, %1716 ]
  %1724 = phi i32 [ %1673, %1669 ], [ %1718, %1716 ]
  %1725 = phi i8 [ %1684, %1669 ], [ %1713, %1716 ]
  %1726 = phi i32 [ %1685, %1669 ], [ %1717, %1716 ]
  %1727 = getelementptr inbounds nuw i8, ptr %1720, i64 2
  %1728 = load i16, ptr %1727, align 2, !tbaa !86
  %1729 = load i8, ptr %1720, align 2, !tbaa !44
  %1730 = icmp ult i8 %1729, 16
  br i1 %1730, label %1731, label %1802

1731:                                             ; preds = %1719
  %1732 = zext nneg i8 %1729 to i32
  %1733 = add nuw nsw i32 %1726, %1732
  %1734 = shl nsw i32 -1, %1733
  %1735 = xor i32 %1734, -1
  %1736 = zext i16 %1728 to i32
  %1737 = trunc i64 %1723 to i32
  %1738 = and i32 %1735, %1737
  %1739 = lshr i32 %1738, %1726
  %1740 = add nuw i32 %1739, %1736
  %1741 = zext i32 %1740 to i64
  %1742 = getelementptr inbounds nuw [4 x i8], ptr %1678, i64 %1741
  %1743 = getelementptr inbounds nuw i8, ptr %1742, i64 1
  %1744 = load i8, ptr %1743, align 1, !tbaa !44
  %1745 = zext i8 %1744 to i32
  %1746 = add nuw nsw i32 %1726, %1745
  %1747 = icmp ugt i32 %1746, %1724
  br i1 %1747, label %1748, label %1784

1748:                                             ; preds = %1731
  %1749 = icmp eq i32 %1722, 0
  br i1 %1749, label %._crit_edge4540, label %.lr.ph4539

.lr.ph4539:                                       ; preds = %1748
  %1750 = zext nneg i32 %1724 to i64
  br label %1753

1751:                                             ; preds = %1765
  %1752 = icmp eq i32 %1768, 0
  br i1 %1752, label %._crit_edge4540, label %1753

1753:                                             ; preds = %.lr.ph4539, %1751
  %1754 = phi ptr [ %1721, %.lr.ph4539 ], [ %1767, %1751 ]
  %1755 = phi i32 [ %1722, %.lr.ph4539 ], [ %1768, %1751 ]
  %1756 = phi i64 [ %1723, %.lr.ph4539 ], [ %1766, %1751 ]
  %1757 = phi i64 [ %1750, %.lr.ph4539 ], [ %1769, %1751 ]
  %1758 = load i8, ptr %1754, align 1, !tbaa !44
  %1759 = zext i8 %1758 to i64
  %1760 = shl i64 %1759, %1757
  %1761 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1756, i64 %1760), !nosanitize !47
  %1762 = extractvalue { i64, i1 } %1761, 1, !nosanitize !47
  br i1 %1762, label %1763, label %1765, !prof !48, !nosanitize !47

1763:                                             ; preds = %1753
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1764:                                             ; preds = %1817, %1784
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1765:                                             ; preds = %1753
  %1766 = extractvalue { i64, i1 } %1761, 0, !nosanitize !47
  %1767 = getelementptr inbounds nuw i8, ptr %1754, i64 1
  %1768 = add i32 %1755, -1
  %1769 = add nuw nsw i64 %1757, 8
  %1770 = trunc i64 %1766 to i32
  %1771 = and i32 %1770, %1735
  %1772 = lshr i32 %1771, %1726
  %1773 = add nuw i32 %1772, %1736
  %1774 = zext i32 %1773 to i64
  %1775 = getelementptr inbounds nuw [4 x i8], ptr %1678, i64 %1774
  %1776 = getelementptr inbounds nuw i8, ptr %1775, i64 1
  %1777 = load i8, ptr %1776, align 1, !tbaa !44
  %1778 = zext i8 %1777 to i32
  %1779 = add nuw nsw i32 %1726, %1778
  %1780 = zext nneg i32 %1779 to i64
  %1781 = icmp samesign ult i64 %1769, %1780
  br i1 %1781, label %1751, label %1782

1782:                                             ; preds = %1765
  %1783 = trunc nuw nsw i64 %1769 to i32
  br label %1784

1784:                                             ; preds = %1782, %1731
  %1785 = phi ptr [ %1742, %1731 ], [ %1775, %1782 ]
  %1786 = phi ptr [ %1721, %1731 ], [ %1767, %1782 ]
  %1787 = phi i32 [ %1722, %1731 ], [ %1768, %1782 ]
  %1788 = phi i64 [ %1723, %1731 ], [ %1766, %1782 ]
  %1789 = phi i32 [ %1724, %1731 ], [ %1783, %1782 ]
  %1790 = phi i8 [ %1744, %1731 ], [ %1777, %1782 ]
  %1791 = load i32, ptr %71, align 4, !tbaa !37
  %1792 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1791, i32 %1726), !nosanitize !47
  %1793 = extractvalue { i32, i1 } %1792, 1, !nosanitize !47
  br i1 %1793, label %1764, label %1794, !prof !48, !nosanitize !47

1794:                                             ; preds = %1784
  %1795 = getelementptr inbounds nuw i8, ptr %1785, i64 2
  %1796 = load i16, ptr %1795, align 2, !tbaa !86
  %1797 = load i8, ptr %1785, align 2, !tbaa !44
  %1798 = sub nuw i32 %1789, %1726
  %1799 = zext nneg i8 %1725 to i64
  %1800 = lshr i64 %1788, %1799
  %1801 = extractvalue { i32, i1 } %1792, 0, !nosanitize !47
  store i32 %1801, ptr %71, align 4, !tbaa !37
  br label %1802

1802:                                             ; preds = %1794, %1719
  %1803 = phi ptr [ %1786, %1794 ], [ %1721, %1719 ]
  %1804 = phi i32 [ %1787, %1794 ], [ %1722, %1719 ]
  %1805 = phi i64 [ %1800, %1794 ], [ %1723, %1719 ]
  %1806 = phi i32 [ %1798, %1794 ], [ %1724, %1719 ]
  %1807 = phi i16 [ %1796, %1794 ], [ %1728, %1719 ]
  %1808 = phi i8 [ %1790, %1794 ], [ %1725, %1719 ]
  %1809 = phi i8 [ %1797, %1794 ], [ %1729, %1719 ]
  %1810 = zext i8 %1808 to i32
  %1811 = zext nneg i8 %1808 to i64
  %1812 = lshr i64 %1805, %1811
  %1813 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1806, i32 %1810), !nosanitize !47
  %1814 = extractvalue { i32, i1 } %1813, 0, !nosanitize !47
  %1815 = extractvalue { i32, i1 } %1813, 1, !nosanitize !47
  br i1 %1815, label %1816, label %1817, !prof !48, !nosanitize !47

1816:                                             ; preds = %1802
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1817:                                             ; preds = %1802
  %1818 = load i32, ptr %71, align 4, !tbaa !37
  %1819 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1818, i32 %1810), !nosanitize !47
  %1820 = extractvalue { i32, i1 } %1819, 1, !nosanitize !47
  br i1 %1820, label %1764, label %1821, !prof !48, !nosanitize !47

1821:                                             ; preds = %1817
  %1822 = extractvalue { i32, i1 } %1819, 0, !nosanitize !47
  store i32 %1822, ptr %71, align 4, !tbaa !37
  %1823 = zext i8 %1809 to i32
  %1824 = and i32 %1823, 64
  %1825 = icmp eq i32 %1824, 0
  br i1 %1825, label %1827, label %1826

1826:                                             ; preds = %1821
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

1827:                                             ; preds = %1821
  %1828 = zext i16 %1807 to i32
  store i32 %1828, ptr %74, align 8, !tbaa !102
  %1829 = and i32 %1823, 15
  store i32 %1829, ptr %72, align 4, !tbaa !53
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1830

1830:                                             ; preds = %1827, %99
  %1831 = phi i32 [ %1829, %1827 ], [ %100, %99 ]
  %1832 = phi ptr [ %1803, %1827 ], [ %90, %99 ]
  %1833 = phi i32 [ %1804, %1827 ], [ %92, %99 ]
  %1834 = phi i64 [ %1812, %1827 ], [ %94, %99 ]
  %1835 = phi i32 [ %1814, %1827 ], [ %95, %99 ]
  %1836 = phi i32 [ %1674, %1827 ], [ %97, %99 ]
  %1837 = icmp eq i32 %1831, 0
  br i1 %1837, label %1890, label %1838

1838:                                             ; preds = %1830
  %1839 = icmp ult i32 %1835, %1831
  br i1 %1839, label %1840, label %.loopexit

1840:                                             ; preds = %1838
  %1841 = icmp eq i32 %1833, 0
  br i1 %1841, label %._crit_edge4560, label %.lr.ph4559

.lr.ph4559:                                       ; preds = %1840
  %1842 = zext i32 %1835 to i64
  br label %1845

1843:                                             ; preds = %1856
  %1844 = icmp eq i32 %1859, 0
  br i1 %1844, label %._crit_edge4560, label %1845, !llvm.loop !103

1845:                                             ; preds = %.lr.ph4559, %1843
  %1846 = phi ptr [ %1832, %.lr.ph4559 ], [ %1858, %1843 ]
  %1847 = phi i32 [ %1833, %.lr.ph4559 ], [ %1859, %1843 ]
  %1848 = phi i64 [ %1834, %.lr.ph4559 ], [ %1857, %1843 ]
  %1849 = phi i64 [ %1842, %.lr.ph4559 ], [ %1860, %1843 ]
  %1850 = load i8, ptr %1846, align 1, !tbaa !44
  %1851 = zext i8 %1850 to i64
  %1852 = shl i64 %1851, %1849
  %1853 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1848, i64 %1852), !nosanitize !47
  %1854 = extractvalue { i64, i1 } %1853, 1, !nosanitize !47
  br i1 %1854, label %1855, label %1856, !prof !48, !nosanitize !47

1855:                                             ; preds = %1845
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1856:                                             ; preds = %1845
  %1857 = extractvalue { i64, i1 } %1853, 0, !nosanitize !47
  %1858 = getelementptr inbounds nuw i8, ptr %1846, i64 1
  %1859 = add i32 %1847, -1
  %1860 = add nuw nsw i64 %1849, 8
  %1861 = trunc nuw i64 %1860 to i32
  %1862 = icmp ugt i32 %1831, %1861
  br i1 %1862, label %1843, label %.loopexit, !llvm.loop !103

.loopexit:                                        ; preds = %1856, %1838
  %1863 = phi ptr [ %1832, %1838 ], [ %1858, %1856 ]
  %1864 = phi i32 [ %1833, %1838 ], [ %1859, %1856 ]
  %1865 = phi i64 [ %1834, %1838 ], [ %1857, %1856 ]
  %1866 = phi i32 [ %1835, %1838 ], [ %1861, %1856 ]
  %1867 = shl nsw i32 -1, %1831
  %1868 = xor i32 %1867, -1
  %1869 = trunc i64 %1865 to i32
  %1870 = and i32 %1869, %1868
  %1871 = load i32, ptr %74, align 8, !tbaa !102
  %1872 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1871, i32 %1870), !nosanitize !47
  %1873 = extractvalue { i32, i1 } %1872, 1, !nosanitize !47
  br i1 %1873, label %1874, label %1875, !prof !48, !nosanitize !47

1874:                                             ; preds = %.loopexit
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1875:                                             ; preds = %.loopexit
  %1876 = extractvalue { i32, i1 } %1872, 0, !nosanitize !47
  store i32 %1876, ptr %74, align 8, !tbaa !102
  %1877 = zext nneg i32 %1831 to i64
  %1878 = lshr i64 %1865, %1877
  %1879 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1866, i32 %1831), !nosanitize !47
  %1880 = extractvalue { i32, i1 } %1879, 0, !nosanitize !47
  %1881 = extractvalue { i32, i1 } %1879, 1, !nosanitize !47
  br i1 %1881, label %1882, label %1883, !prof !48, !nosanitize !47

1882:                                             ; preds = %1875
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1883:                                             ; preds = %1875
  %1884 = load i32, ptr %71, align 4, !tbaa !37
  %1885 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1884, i32 %1831), !nosanitize !47
  %1886 = extractvalue { i32, i1 } %1885, 1, !nosanitize !47
  br i1 %1886, label %1887, label %1888, !prof !48, !nosanitize !47

1887:                                             ; preds = %1883
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1888:                                             ; preds = %1883
  %1889 = extractvalue { i32, i1 } %1885, 0, !nosanitize !47
  store i32 %1889, ptr %71, align 4, !tbaa !37
  br label %1890

1890:                                             ; preds = %1888, %1830
  %1891 = phi ptr [ %1863, %1888 ], [ %1832, %1830 ]
  %1892 = phi i32 [ %1864, %1888 ], [ %1833, %1830 ]
  %1893 = phi i64 [ %1878, %1888 ], [ %1834, %1830 ]
  %1894 = phi i32 [ %1880, %1888 ], [ %1835, %1830 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1895

1895:                                             ; preds = %1890, %88
  %1896 = phi ptr [ %1891, %1890 ], [ %90, %88 ]
  %1897 = phi i32 [ %1892, %1890 ], [ %92, %88 ]
  %1898 = phi i64 [ %1893, %1890 ], [ %94, %88 ]
  %1899 = phi i32 [ %1894, %1890 ], [ %95, %88 ]
  %1900 = phi i32 [ %1836, %1890 ], [ %97, %88 ]
  %1901 = icmp eq i32 %93, 0
  br i1 %1901, label %.loopexit161, label %1902

1902:                                             ; preds = %1895
  %1903 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %1904 = extractvalue { i32, i1 } %1903, 0, !nosanitize !47
  %1905 = extractvalue { i32, i1 } %1903, 1, !nosanitize !47
  br i1 %1905, label %1906, label %1907, !prof !48, !nosanitize !47

1906:                                             ; preds = %1902
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1907:                                             ; preds = %1902
  %1908 = load i32, ptr %74, align 8, !tbaa !102
  %1909 = icmp ugt i32 %1908, %1904
  br i1 %1909, label %1910, label %1939

1910:                                             ; preds = %1907
  %1911 = sub nuw i32 %1908, %1904
  %1912 = load i32, ptr %75, align 8, !tbaa !39
  %1913 = icmp ugt i32 %1911, %1912
  br i1 %1913, label %1914, label %1918

1914:                                             ; preds = %1910
  %1915 = load i32, ptr %76, align 8, !tbaa !36
  %1916 = icmp eq i32 %1915, 0
  br i1 %1916, label %1918, label %1917

1917:                                             ; preds = %1914
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

1918:                                             ; preds = %1914, %1910
  %1919 = load i32, ptr %77, align 4, !tbaa !40
  %1920 = icmp ugt i32 %1911, %1919
  br i1 %1920, label %1921, label %1929

1921:                                             ; preds = %1918
  %1922 = sub nuw i32 %1911, %1919
  %1923 = load i32, ptr %79, align 4, !tbaa !38
  %1924 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1923, i32 %1922), !nosanitize !47
  %1925 = extractvalue { i32, i1 } %1924, 1, !nosanitize !47
  br i1 %1925, label %1926, label %1927, !prof !48, !nosanitize !47

1926:                                             ; preds = %1921
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1927:                                             ; preds = %1921
  %1928 = extractvalue { i32, i1 } %1924, 0, !nosanitize !47
  br label %1931

1929:                                             ; preds = %1918
  %1930 = sub nuw i32 %1919, %1911
  br label %1931

1931:                                             ; preds = %1929, %1927
  %1932 = phi i32 [ %1930, %1929 ], [ %1928, %1927 ]
  %1933 = phi i32 [ %1911, %1929 ], [ %1922, %1927 ]
  %1934 = load ptr, ptr %78, align 8, !tbaa !41
  %1935 = zext i32 %1932 to i64
  %1936 = getelementptr inbounds nuw i8, ptr %1934, i64 %1935
  %1937 = load i32, ptr %56, align 4, !tbaa !67
  %1938 = call i32 @llvm.umin.i32(i32 %1933, i32 %1937)
  br label %1944

1939:                                             ; preds = %1907
  %1940 = zext i32 %1908 to i64
  %1941 = sub nsw i64 0, %1940
  %1942 = getelementptr inbounds i8, ptr %91, i64 %1941
  %1943 = load i32, ptr %56, align 4, !tbaa !67
  br label %1944

1944:                                             ; preds = %1939, %1931
  %1945 = phi i32 [ %1943, %1939 ], [ %1937, %1931 ]
  %1946 = phi i32 [ %1943, %1939 ], [ %1938, %1931 ]
  %1947 = phi ptr [ %1942, %1939 ], [ %1936, %1931 ]
  %1948 = ptrtoaddr ptr %1947 to i64
  %1949 = call i32 @llvm.umin.i32(i32 %1946, i32 %93)
  %1950 = sub i32 %93, %1949
  %1951 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1945, i32 %1949), !nosanitize !47
  %1952 = extractvalue { i32, i1 } %1951, 1, !nosanitize !47
  br i1 %1952, label %1953, label %1954, !prof !48, !nosanitize !47

1953:                                             ; preds = %1944
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1954:                                             ; preds = %1944
  %1955 = extractvalue { i32, i1 } %1951, 0, !nosanitize !47
  store i32 %1955, ptr %56, align 4, !tbaa !67
  %.not2437.not = icmp eq i32 %1949, 0
  br i1 %.not2437.not, label %.split2193.us, label %iter.check, !prof !48, !nosanitize !47

iter.check:                                       ; preds = %1954
  %1956 = call i32 @llvm.umin.i32(i32 %1946, i32 %93)
  %umin = zext i32 %1956 to i64
  %min.iters.check = icmp ult i32 %1956, 4
  %1957 = sub i64 %98, %1948
  %diff.check = icmp ult i64 %1957, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.split2193.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4581 = icmp ult i32 %1956, 32
  br i1 %min.iters.check4581, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %umin, 28
  %n.vec = and i64 %umin, 4294967264
  %1958 = getelementptr i8, ptr %91, i64 %n.vec
  %.cast = trunc nuw i64 %n.vec to i32
  %1959 = sub i32 %1949, %.cast
  %1960 = getelementptr i8, ptr %1947, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %91, i64 %index
  %next.gep4582 = getelementptr i8, ptr %1947, i64 %index
  %1961 = getelementptr i8, ptr %next.gep4582, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep4582, align 1, !tbaa !44
  %wide.load4583 = load <16 x i8>, ptr %1961, align 1, !tbaa !44
  %1962 = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !44
  store <16 x i8> %wide.load4583, ptr %1962, align 1, !tbaa !44
  %index.next = add nuw i64 %index, 32
  %1963 = icmp eq i64 %index.next, %n.vec
  br i1 %1963, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %umin
  br i1 %cmp.n, label %.loopexit4598, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.split2193.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4587 = and i64 %umin, 4294967292
  %1964 = getelementptr i8, ptr %91, i64 %n.vec4587
  %.cast4588 = trunc nuw i64 %n.vec4587 to i32
  %1965 = sub i32 %1949, %.cast4588
  %1966 = getelementptr i8, ptr %1947, i64 %n.vec4587
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4589 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4593, %vec.epilog.vector.body ]
  %next.gep4590 = getelementptr i8, ptr %91, i64 %index4589
  %next.gep4591 = getelementptr i8, ptr %1947, i64 %index4589
  %wide.load4592 = load <4 x i8>, ptr %next.gep4591, align 1, !tbaa !44
  store <4 x i8> %wide.load4592, ptr %next.gep4590, align 1, !tbaa !44
  %index.next4593 = add nuw i64 %index4589, 4
  %1967 = icmp eq i64 %index.next4593, %n.vec4587
  br i1 %1967, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4594 = icmp eq i64 %n.vec4587, %umin
  br i1 %cmp.n4594, label %.loopexit4598, label %.split2193.preheader

.split2193.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %91, %iter.check ], [ %1958, %vec.epilog.iter.check ], [ %1964, %vec.epilog.middle.block ]
  %.ph4599 = phi i32 [ %1949, %iter.check ], [ %1959, %vec.epilog.iter.check ], [ %1965, %vec.epilog.middle.block ]
  %.ph4600 = phi ptr [ %1947, %iter.check ], [ %1960, %vec.epilog.iter.check ], [ %1966, %vec.epilog.middle.block ]
  %1968 = add i32 %.ph4599, -1
  %xtraiter = and i32 %.ph4599, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split2193.prol.loopexit, label %.split2193.prol

.split2193.prol:                                  ; preds = %.split2193.preheader, %.split2193.prol
  %1969 = phi ptr [ %1973, %.split2193.prol ], [ %.ph, %.split2193.preheader ]
  %1970 = phi i32 [ %1974, %.split2193.prol ], [ %.ph4599, %.split2193.preheader ]
  %1971 = phi ptr [ %1975, %.split2193.prol ], [ %.ph4600, %.split2193.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.split2193.prol ], [ 0, %.split2193.preheader ]
  %1972 = load i8, ptr %1971, align 1, !tbaa !44
  store i8 %1972, ptr %1969, align 1, !tbaa !44
  %1973 = getelementptr inbounds nuw i8, ptr %1969, i64 1
  %1974 = add i32 %1970, -1
  %1975 = getelementptr inbounds nuw i8, ptr %1971, i64 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.split2193.prol.loopexit, label %.split2193.prol, !llvm.loop !109

.split2193.prol.loopexit:                         ; preds = %.split2193.prol, %.split2193.preheader
  %.lcssa4817.unr = phi ptr [ poison, %.split2193.preheader ], [ %1973, %.split2193.prol ]
  %.unr = phi ptr [ %.ph, %.split2193.preheader ], [ %1973, %.split2193.prol ]
  %.unr5758 = phi i32 [ %.ph4599, %.split2193.preheader ], [ %1974, %.split2193.prol ]
  %.unr5759 = phi ptr [ %.ph4600, %.split2193.preheader ], [ %1975, %.split2193.prol ]
  %1976 = icmp ult i32 %1968, 7
  br i1 %1976, label %.loopexit4598, label %.split2193

.split2193.us:                                    ; preds = %1954
  %1977 = load i8, ptr %1947, align 1, !tbaa !44
  store i8 %1977, ptr %91, align 1, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

.split2193:                                       ; preds = %.split2193.prol.loopexit, %.split2193
  %1978 = phi ptr [ %2003, %.split2193 ], [ %.unr, %.split2193.prol.loopexit ]
  %1979 = phi i32 [ %2004, %.split2193 ], [ %.unr5758, %.split2193.prol.loopexit ]
  %1980 = phi ptr [ %2005, %.split2193 ], [ %.unr5759, %.split2193.prol.loopexit ]
  %1981 = load i8, ptr %1980, align 1, !tbaa !44
  store i8 %1981, ptr %1978, align 1, !tbaa !44
  %1982 = getelementptr inbounds nuw i8, ptr %1978, i64 1
  %1983 = getelementptr inbounds nuw i8, ptr %1980, i64 1
  %1984 = load i8, ptr %1983, align 1, !tbaa !44
  store i8 %1984, ptr %1982, align 1, !tbaa !44
  %1985 = getelementptr inbounds nuw i8, ptr %1978, i64 2
  %1986 = getelementptr inbounds nuw i8, ptr %1980, i64 2
  %1987 = load i8, ptr %1986, align 1, !tbaa !44
  store i8 %1987, ptr %1985, align 1, !tbaa !44
  %1988 = getelementptr inbounds nuw i8, ptr %1978, i64 3
  %1989 = getelementptr inbounds nuw i8, ptr %1980, i64 3
  %1990 = load i8, ptr %1989, align 1, !tbaa !44
  store i8 %1990, ptr %1988, align 1, !tbaa !44
  %1991 = getelementptr inbounds nuw i8, ptr %1978, i64 4
  %1992 = getelementptr inbounds nuw i8, ptr %1980, i64 4
  %1993 = load i8, ptr %1992, align 1, !tbaa !44
  store i8 %1993, ptr %1991, align 1, !tbaa !44
  %1994 = getelementptr inbounds nuw i8, ptr %1978, i64 5
  %1995 = getelementptr inbounds nuw i8, ptr %1980, i64 5
  %1996 = load i8, ptr %1995, align 1, !tbaa !44
  store i8 %1996, ptr %1994, align 1, !tbaa !44
  %1997 = getelementptr inbounds nuw i8, ptr %1978, i64 6
  %1998 = getelementptr inbounds nuw i8, ptr %1980, i64 6
  %1999 = load i8, ptr %1998, align 1, !tbaa !44
  store i8 %1999, ptr %1997, align 1, !tbaa !44
  %2000 = getelementptr inbounds nuw i8, ptr %1978, i64 7
  %2001 = getelementptr inbounds nuw i8, ptr %1980, i64 7
  %2002 = load i8, ptr %2001, align 1, !tbaa !44
  store i8 %2002, ptr %2000, align 1, !tbaa !44
  %2003 = getelementptr inbounds nuw i8, ptr %1978, i64 8
  %2004 = add i32 %1979, -8
  %2005 = getelementptr inbounds nuw i8, ptr %1980, i64 8
  %2006 = icmp eq i32 %2004, 0
  br i1 %2006, label %.loopexit4598, label %.split2193, !llvm.loop !111

.loopexit4598:                                    ; preds = %.split2193.prol.loopexit, %.split2193, %vec.epilog.middle.block, %middle.block
  %.lcssa3624 = phi ptr [ %1964, %vec.epilog.middle.block ], [ %1958, %middle.block ], [ %.lcssa4817.unr, %.split2193.prol.loopexit ], [ %2003, %.split2193 ]
  %2007 = load i32, ptr %56, align 4, !tbaa !67
  %2008 = icmp eq i32 %2007, 0
  br i1 %2008, label %2009, label %2240

2009:                                             ; preds = %.loopexit4598
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2240

2010:                                             ; preds = %88
  %2011 = icmp eq i32 %93, 0
  br i1 %2011, label %.loopexit161, label %2012

2012:                                             ; preds = %2010
  %2013 = load i32, ptr %56, align 4, !tbaa !67
  %2014 = trunc i32 %2013 to i8
  store i8 %2014, ptr %91, align 1, !tbaa !44
  %2015 = add i32 %93, -1
  %2016 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2240

2017:                                             ; preds = %88
  %2018 = load i32, ptr %49, align 8, !tbaa !24
  %2019 = icmp eq i32 %2018, 0
  br i1 %2019, label %2140, label %2020

2020:                                             ; preds = %2017
  %2021 = icmp ult i32 %95, 32
  br i1 %2021, label %2022, label %2085

2022:                                             ; preds = %2020
  %2023 = zext nneg i32 %95 to i64
  %2024 = icmp eq i32 %92, 0
  br i1 %2024, label %2353, label %2025

2025:                                             ; preds = %2022
  %2026 = load i8, ptr %90, align 1, !tbaa !44
  %2027 = zext i8 %2026 to i64
  %2028 = shl nuw nsw i64 %2027, %2023
  %2029 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %2028), !nosanitize !47
  %2030 = extractvalue { i64, i1 } %2029, 1, !nosanitize !47
  br i1 %2030, label %2031, label %2032, !prof !48, !nosanitize !47

2031:                                             ; preds = %2068, %2054, %2040, %2025
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2032:                                             ; preds = %2025
  %2033 = extractvalue { i64, i1 } %2029, 0, !nosanitize !47
  %2034 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %2035 = add i32 %92, -1
  %2036 = add nuw nsw i64 %2023, 8
  %2037 = icmp samesign ult i32 %95, 24
  br i1 %2037, label %2038, label %2079, !llvm.loop !112

2038:                                             ; preds = %2032
  %2039 = icmp eq i32 %2035, 0
  br i1 %2039, label %2353, label %2040

2040:                                             ; preds = %2038
  %2041 = load i8, ptr %2034, align 1, !tbaa !44
  %2042 = zext i8 %2041 to i64
  %2043 = shl nuw nsw i64 %2042, %2036
  %2044 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2033, i64 %2043), !nosanitize !47
  %2045 = extractvalue { i64, i1 } %2044, 1, !nosanitize !47
  br i1 %2045, label %2031, label %2046, !prof !48, !nosanitize !47

2046:                                             ; preds = %2040
  %2047 = extractvalue { i64, i1 } %2044, 0, !nosanitize !47
  %2048 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %2049 = add i32 %92, -2
  %2050 = add nuw nsw i64 %2023, 16
  %2051 = icmp samesign ult i32 %95, 16
  br i1 %2051, label %2052, label %2079, !llvm.loop !112

2052:                                             ; preds = %2046
  %2053 = icmp eq i32 %2049, 0
  br i1 %2053, label %2353, label %2054

2054:                                             ; preds = %2052
  %2055 = load i8, ptr %2048, align 1, !tbaa !44
  %2056 = zext i8 %2055 to i64
  %2057 = shl nuw nsw i64 %2056, %2050
  %2058 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2047, i64 %2057), !nosanitize !47
  %2059 = extractvalue { i64, i1 } %2058, 1, !nosanitize !47
  br i1 %2059, label %2031, label %2060, !prof !48, !nosanitize !47

2060:                                             ; preds = %2054
  %2061 = extractvalue { i64, i1 } %2058, 0, !nosanitize !47
  %2062 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %2063 = add i32 %92, -3
  %2064 = add nuw nsw i64 %2023, 24
  %2065 = icmp samesign ult i32 %95, 8
  br i1 %2065, label %2066, label %2079, !llvm.loop !112

2066:                                             ; preds = %2060
  %2067 = icmp eq i32 %2063, 0
  br i1 %2067, label %2353, label %2068

2068:                                             ; preds = %2066
  %2069 = load i8, ptr %2062, align 1, !tbaa !44
  %2070 = zext i8 %2069 to i64
  %2071 = shl nuw nsw i64 %2070, %2064
  %2072 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2061, i64 %2071), !nosanitize !47
  %2073 = extractvalue { i64, i1 } %2072, 1, !nosanitize !47
  br i1 %2073, label %2031, label %2074, !prof !48, !nosanitize !47

2074:                                             ; preds = %2068
  %2075 = extractvalue { i64, i1 } %2072, 0, !nosanitize !47
  %2076 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %2077 = add i32 %92, -4
  %2078 = or disjoint i64 %2023, 32
  br label %2079

2079:                                             ; preds = %2074, %2060, %2046, %2032
  %2080 = phi i64 [ %2033, %2032 ], [ %2047, %2046 ], [ %2061, %2060 ], [ %2075, %2074 ]
  %2081 = phi ptr [ %2034, %2032 ], [ %2048, %2046 ], [ %2062, %2060 ], [ %2076, %2074 ]
  %2082 = phi i32 [ %2035, %2032 ], [ %2049, %2046 ], [ %2063, %2060 ], [ %2077, %2074 ]
  %2083 = phi i64 [ %2036, %2032 ], [ %2050, %2046 ], [ %2064, %2060 ], [ %2078, %2074 ]
  %2084 = trunc nuw nsw i64 %2083 to i32
  br label %2085

2085:                                             ; preds = %2079, %2020
  %2086 = phi ptr [ %90, %2020 ], [ %2081, %2079 ]
  %2087 = phi i32 [ %92, %2020 ], [ %2082, %2079 ]
  %2088 = phi i64 [ %94, %2020 ], [ %2080, %2079 ]
  %2089 = phi i32 [ %95, %2020 ], [ %2084, %2079 ]
  %2090 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %2091 = extractvalue { i32, i1 } %2090, 0, !nosanitize !47
  %2092 = extractvalue { i32, i1 } %2090, 1, !nosanitize !47
  br i1 %2092, label %2093, label %2094, !prof !48, !nosanitize !47

2093:                                             ; preds = %2085
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2094:                                             ; preds = %2085
  %2095 = zext i32 %2091 to i64
  %2096 = load i64, ptr %50, align 8, !tbaa !113
  %2097 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2096, i64 %2095), !nosanitize !47
  %2098 = extractvalue { i64, i1 } %2097, 1, !nosanitize !47
  br i1 %2098, label %2099, label %2100, !prof !48, !nosanitize !47

2099:                                             ; preds = %2094
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2100:                                             ; preds = %2094
  %2101 = extractvalue { i64, i1 } %2097, 0, !nosanitize !47
  store i64 %2101, ptr %50, align 8, !tbaa !113
  %2102 = load i64, ptr %51, align 8, !tbaa !21
  %2103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2102, i64 %2095), !nosanitize !47
  %2104 = extractvalue { i64, i1 } %2103, 1, !nosanitize !47
  br i1 %2104, label %2105, label %2106, !prof !48, !nosanitize !47

2105:                                             ; preds = %2100
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2106:                                             ; preds = %2100
  %2107 = extractvalue { i64, i1 } %2103, 0, !nosanitize !47
  store i64 %2107, ptr %51, align 8, !tbaa !21
  %2108 = and i32 %2018, 4
  %2109 = icmp ne i32 %2108, 0
  %2110 = icmp ne i32 %2091, 0
  %2111 = select i1 %2109, i1 %2110, i1 false
  br i1 %2111, label %2112, label %2126

2112:                                             ; preds = %2106
  %2113 = load i32, ptr %52, align 8, !tbaa !28
  %2114 = icmp eq i32 %2113, 0
  %2115 = load i64, ptr %53, align 8, !tbaa !56
  %2116 = sub nsw i64 0, %2095
  %2117 = getelementptr inbounds i8, ptr %91, i64 %2116
  br i1 %2114, label %2120, label %2118

2118:                                             ; preds = %2112
  %2119 = call i64 @crc32(i64 noundef %2115, ptr noundef nonnull %2117, i32 noundef %2091) #12
  br label %2122

2120:                                             ; preds = %2112
  %2121 = call i64 @adler32(i64 noundef %2115, ptr noundef nonnull %2117, i32 noundef %2091) #12
  br label %2122

2122:                                             ; preds = %2120, %2118
  %2123 = phi i64 [ %2119, %2118 ], [ %2121, %2120 ]
  store i64 %2123, ptr %53, align 8, !tbaa !56
  store i64 %2123, ptr %54, align 8, !tbaa !25
  %2124 = load i32, ptr %49, align 8, !tbaa !24
  %2125 = and i32 %2124, 4
  br label %2126

2126:                                             ; preds = %2122, %2106
  %2127 = phi i32 [ %2125, %2122 ], [ %2108, %2106 ]
  %2128 = phi i32 [ %2124, %2122 ], [ %2018, %2106 ]
  %2129 = icmp eq i32 %2127, 0
  br i1 %2129, label %2140, label %2130

2130:                                             ; preds = %2126
  %2131 = load i32, ptr %52, align 8, !tbaa !28
  %2132 = icmp eq i32 %2131, 0
  %2133 = trunc i64 %2088 to i32
  %2134 = call i32 @llvm.bswap.i32(i32 %2133)
  %2135 = zext i32 %2134 to i64
  %2136 = select i1 %2132, i64 %2135, i64 %2088
  %2137 = load i64, ptr %53, align 8, !tbaa !56
  %2138 = icmp eq i64 %2136, %2137
  br i1 %2138, label %2140, label %2139

2139:                                             ; preds = %2130
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

2140:                                             ; preds = %2130, %2126, %2017
  %2141 = phi i32 [ 0, %2017 ], [ %2128, %2126 ], [ %2128, %2130 ]
  %2142 = phi ptr [ %90, %2017 ], [ %2086, %2126 ], [ %2086, %2130 ]
  %2143 = phi i32 [ %92, %2017 ], [ %2087, %2126 ], [ %2087, %2130 ]
  %2144 = phi i64 [ %94, %2017 ], [ 0, %2126 ], [ 0, %2130 ]
  %2145 = phi i32 [ %95, %2017 ], [ 0, %2126 ], [ 0, %2130 ]
  %2146 = phi i32 [ %96, %2017 ], [ %93, %2126 ], [ %93, %2130 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2147

2147:                                             ; preds = %2140, %103
  %2148 = phi i32 [ %2141, %2140 ], [ %104, %103 ]
  %2149 = phi ptr [ %2142, %2140 ], [ %90, %103 ]
  %2150 = phi i32 [ %2143, %2140 ], [ %92, %103 ]
  %2151 = phi i64 [ %2144, %2140 ], [ %94, %103 ]
  %2152 = phi i32 [ %2145, %2140 ], [ %95, %103 ]
  %2153 = phi i32 [ %2146, %2140 ], [ %96, %103 ]
  %2154 = icmp eq i32 %2148, 0
  br i1 %2154, label %2235, label %2155

2155:                                             ; preds = %2147
  %2156 = load i32, ptr %52, align 8, !tbaa !28
  %2157 = icmp eq i32 %2156, 0
  br i1 %2157, label %2235, label %2158

2158:                                             ; preds = %2155
  %2159 = icmp ult i32 %2152, 32
  br i1 %2159, label %2160, label %2223

2160:                                             ; preds = %2158
  %2161 = zext nneg i32 %2152 to i64
  %2162 = icmp eq i32 %2150, 0
  br i1 %2162, label %2347, label %2163

2163:                                             ; preds = %2160
  %2164 = load i8, ptr %2149, align 1, !tbaa !44
  %2165 = zext i8 %2164 to i64
  %2166 = shl nuw nsw i64 %2165, %2161
  %2167 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2151, i64 %2166), !nosanitize !47
  %2168 = extractvalue { i64, i1 } %2167, 1, !nosanitize !47
  br i1 %2168, label %2169, label %2170, !prof !48, !nosanitize !47

2169:                                             ; preds = %2206, %2192, %2178, %2163
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2170:                                             ; preds = %2163
  %2171 = extractvalue { i64, i1 } %2167, 0, !nosanitize !47
  %2172 = getelementptr inbounds nuw i8, ptr %2149, i64 1
  %2173 = add i32 %2150, -1
  %2174 = add nuw nsw i64 %2161, 8
  %2175 = icmp samesign ult i32 %2152, 24
  br i1 %2175, label %2176, label %2217, !llvm.loop !114

2176:                                             ; preds = %2170
  %2177 = icmp eq i32 %2173, 0
  br i1 %2177, label %2347, label %2178

2178:                                             ; preds = %2176
  %2179 = load i8, ptr %2172, align 1, !tbaa !44
  %2180 = zext i8 %2179 to i64
  %2181 = shl nuw nsw i64 %2180, %2174
  %2182 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2171, i64 %2181), !nosanitize !47
  %2183 = extractvalue { i64, i1 } %2182, 1, !nosanitize !47
  br i1 %2183, label %2169, label %2184, !prof !48, !nosanitize !47

2184:                                             ; preds = %2178
  %2185 = extractvalue { i64, i1 } %2182, 0, !nosanitize !47
  %2186 = getelementptr inbounds nuw i8, ptr %2149, i64 2
  %2187 = add i32 %2150, -2
  %2188 = add nuw nsw i64 %2161, 16
  %2189 = icmp samesign ult i32 %2152, 16
  br i1 %2189, label %2190, label %2217, !llvm.loop !114

2190:                                             ; preds = %2184
  %2191 = icmp eq i32 %2187, 0
  br i1 %2191, label %2347, label %2192

2192:                                             ; preds = %2190
  %2193 = load i8, ptr %2186, align 1, !tbaa !44
  %2194 = zext i8 %2193 to i64
  %2195 = shl nuw nsw i64 %2194, %2188
  %2196 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2185, i64 %2195), !nosanitize !47
  %2197 = extractvalue { i64, i1 } %2196, 1, !nosanitize !47
  br i1 %2197, label %2169, label %2198, !prof !48, !nosanitize !47

2198:                                             ; preds = %2192
  %2199 = extractvalue { i64, i1 } %2196, 0, !nosanitize !47
  %2200 = getelementptr inbounds nuw i8, ptr %2149, i64 3
  %2201 = add i32 %2150, -3
  %2202 = add nuw nsw i64 %2161, 24
  %2203 = icmp samesign ult i32 %2152, 8
  br i1 %2203, label %2204, label %2217, !llvm.loop !114

2204:                                             ; preds = %2198
  %2205 = icmp eq i32 %2201, 0
  br i1 %2205, label %2347, label %2206

2206:                                             ; preds = %2204
  %2207 = load i8, ptr %2200, align 1, !tbaa !44
  %2208 = zext i8 %2207 to i64
  %2209 = shl nuw nsw i64 %2208, %2202
  %2210 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2199, i64 %2209), !nosanitize !47
  %2211 = extractvalue { i64, i1 } %2210, 1, !nosanitize !47
  br i1 %2211, label %2169, label %2212, !prof !48, !nosanitize !47

2212:                                             ; preds = %2206
  %2213 = extractvalue { i64, i1 } %2210, 0, !nosanitize !47
  %2214 = getelementptr inbounds nuw i8, ptr %2149, i64 4
  %2215 = add i32 %2150, -4
  %2216 = or disjoint i64 %2161, 32
  br label %2217

2217:                                             ; preds = %2212, %2198, %2184, %2170
  %2218 = phi i64 [ %2171, %2170 ], [ %2185, %2184 ], [ %2199, %2198 ], [ %2213, %2212 ]
  %2219 = phi ptr [ %2172, %2170 ], [ %2186, %2184 ], [ %2200, %2198 ], [ %2214, %2212 ]
  %2220 = phi i32 [ %2173, %2170 ], [ %2187, %2184 ], [ %2201, %2198 ], [ %2215, %2212 ]
  %2221 = phi i64 [ %2174, %2170 ], [ %2188, %2184 ], [ %2202, %2198 ], [ %2216, %2212 ]
  %2222 = trunc nuw nsw i64 %2221 to i32
  br label %2223

2223:                                             ; preds = %2217, %2158
  %2224 = phi ptr [ %2149, %2158 ], [ %2219, %2217 ]
  %2225 = phi i32 [ %2150, %2158 ], [ %2220, %2217 ]
  %2226 = phi i64 [ %2151, %2158 ], [ %2218, %2217 ]
  %2227 = phi i32 [ %2152, %2158 ], [ %2222, %2217 ]
  %2228 = and i32 %2148, 4
  %2229 = icmp eq i32 %2228, 0
  br i1 %2229, label %2235, label %2230

2230:                                             ; preds = %2223
  %2231 = load i64, ptr %51, align 8, !tbaa !21
  %2232 = and i64 %2231, 4294967295
  %2233 = icmp eq i64 %2226, %2232
  br i1 %2233, label %2235, label %2234

2234:                                             ; preds = %2230
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2240

2235:                                             ; preds = %2230, %2223, %2155, %2147
  %2236 = phi ptr [ %2149, %2155 ], [ %2149, %2147 ], [ %2224, %2223 ], [ %2224, %2230 ]
  %2237 = phi i32 [ %2150, %2155 ], [ %2150, %2147 ], [ %2225, %2223 ], [ %2225, %2230 ]
  %2238 = phi i64 [ %2151, %2155 ], [ %2151, %2147 ], [ 0, %2223 ], [ 0, %2230 ]
  %2239 = phi i32 [ %2152, %2155 ], [ %2152, %2147 ], [ 0, %2223 ], [ 0, %2230 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %.loopexit161

2240:                                             ; preds = %2234, %2139, %2012, %2009, %.loopexit4598, %1917, %1826, %1600, %1596, %1592, %1447, %1438, %1421, %1412, %1408, %1382, %1268, %1128, %1054, %1002, %997, %966, %885, %851, %762, %749, %262, %258, %212, %211, %196, %192, %174, %128
  %2241 = phi ptr [ %90, %128 ], [ %162, %174 ], [ %162, %192 ], [ %162, %196 ], [ %162, %211 ], [ %162, %212 ], [ %251, %258 ], [ %251, %262 ], [ %738, %749 ], [ %751, %762 ], [ %840, %851 ], [ %869, %885 ], [ %958, %966 ], [ %999, %997 ], [ %976, %1002 ], [ %1036, %1054 ], [ %1069, %1128 ], [ %1405, %1408 ], [ %1405, %1412 ], [ %1405, %1421 ], [ %1441, %1447 ], [ %1441, %1438 ], [ %1573, %1592 ], [ %1573, %1596 ], [ %1573, %1600 ], [ %1803, %1826 ], [ %1896, %1917 ], [ %1896, %2009 ], [ %1896, %.loopexit4598 ], [ %90, %2012 ], [ %2086, %2139 ], [ %2224, %2234 ], [ %1357, %1382 ], [ %1260, %1268 ]
  %2242 = phi ptr [ %91, %128 ], [ %91, %174 ], [ %91, %192 ], [ %91, %196 ], [ %91, %211 ], [ %91, %212 ], [ %91, %258 ], [ %91, %262 ], [ %91, %749 ], [ %91, %762 ], [ %91, %851 ], [ %91, %885 ], [ %91, %966 ], [ %1001, %997 ], [ %91, %1002 ], [ %91, %1054 ], [ %91, %1128 ], [ %91, %1408 ], [ %91, %1412 ], [ %91, %1421 ], [ %1439, %1447 ], [ %1439, %1438 ], [ %91, %1592 ], [ %91, %1596 ], [ %91, %1600 ], [ %91, %1826 ], [ %91, %1917 ], [ %.lcssa3624, %2009 ], [ %.lcssa3624, %.loopexit4598 ], [ %2016, %2012 ], [ %91, %2139 ], [ %91, %2234 ], [ %91, %1382 ], [ %91, %1268 ]
  %2243 = phi i32 [ %92, %128 ], [ %163, %174 ], [ %163, %192 ], [ %163, %196 ], [ %163, %211 ], [ %163, %212 ], [ %252, %258 ], [ %252, %262 ], [ %739, %749 ], [ %752, %762 ], [ %841, %851 ], [ %870, %885 ], [ %959, %966 ], [ %989, %997 ], [ %977, %1002 ], [ %1037, %1054 ], [ %1070, %1128 ], [ %1404, %1408 ], [ %1404, %1412 ], [ %1404, %1421 ], [ %1442, %1447 ], [ %1442, %1438 ], [ %1574, %1592 ], [ %1574, %1596 ], [ %1574, %1600 ], [ %1804, %1826 ], [ %1897, %1917 ], [ %1897, %2009 ], [ %1897, %.loopexit4598 ], [ %92, %2012 ], [ %2087, %2139 ], [ %2225, %2234 ], [ %1358, %1382 ], [ %1261, %1268 ]
  %2244 = phi i32 [ %93, %128 ], [ %93, %174 ], [ %93, %192 ], [ %93, %196 ], [ %93, %211 ], [ %93, %212 ], [ %93, %258 ], [ %93, %262 ], [ %93, %749 ], [ %93, %762 ], [ %93, %851 ], [ %93, %885 ], [ %93, %966 ], [ %998, %997 ], [ %93, %1002 ], [ %93, %1054 ], [ %93, %1128 ], [ %93, %1408 ], [ %93, %1412 ], [ %93, %1421 ], [ %1440, %1447 ], [ %1440, %1438 ], [ %93, %1592 ], [ %93, %1596 ], [ %93, %1600 ], [ %93, %1826 ], [ %93, %1917 ], [ %1950, %2009 ], [ %1950, %.loopexit4598 ], [ %2015, %2012 ], [ %93, %2139 ], [ %93, %2234 ], [ %93, %1382 ], [ %93, %1268 ]
  %2245 = phi i64 [ %94, %128 ], [ 0, %174 ], [ %164, %192 ], [ %164, %196 ], [ %198, %211 ], [ 0, %212 ], [ %253, %258 ], [ %253, %262 ], [ %740, %749 ], [ %753, %762 ], [ %855, %851 ], [ %887, %885 ], [ %960, %966 ], [ %978, %997 ], [ %978, %1002 ], [ %1049, %1054 ], [ %1071, %1128 ], [ %1403, %1408 ], [ %1403, %1412 ], [ %1403, %1421 ], [ %1443, %1447 ], [ %1443, %1438 ], [ %1582, %1592 ], [ %1582, %1596 ], [ %1582, %1600 ], [ %1812, %1826 ], [ %1898, %1917 ], [ %1898, %2009 ], [ %1898, %.loopexit4598 ], [ %94, %2012 ], [ %2088, %2139 ], [ %2226, %2234 ], [ %1359, %1382 ], [ %1265, %1268 ]
  %2246 = phi i32 [ %95, %128 ], [ 0, %174 ], [ %165, %192 ], [ %165, %196 ], [ %199, %211 ], [ 0, %212 ], [ %254, %258 ], [ %254, %262 ], [ %741, %749 ], [ %754, %762 ], [ %853, %851 ], [ %886, %885 ], [ %961, %966 ], [ %979, %997 ], [ %979, %1002 ], [ %1050, %1054 ], [ %1072, %1128 ], [ %1402, %1408 ], [ %1402, %1412 ], [ %1402, %1421 ], [ %1444, %1447 ], [ %1444, %1438 ], [ %1584, %1592 ], [ %1584, %1596 ], [ %1584, %1600 ], [ %1814, %1826 ], [ %1899, %1917 ], [ %1899, %2009 ], [ %1899, %.loopexit4598 ], [ %95, %2012 ], [ %2089, %2139 ], [ %2227, %2234 ], [ %1363, %1382 ], [ %1266, %1268 ]
  %2247 = phi i32 [ %96, %128 ], [ %96, %174 ], [ %96, %192 ], [ %96, %196 ], [ %96, %211 ], [ %96, %212 ], [ %96, %258 ], [ %96, %262 ], [ %96, %749 ], [ %96, %762 ], [ %96, %851 ], [ %96, %885 ], [ %96, %966 ], [ %96, %997 ], [ %96, %1002 ], [ %96, %1054 ], [ %96, %1128 ], [ %96, %1408 ], [ %96, %1412 ], [ %96, %1421 ], [ %96, %1447 ], [ %96, %1438 ], [ %96, %1592 ], [ %96, %1596 ], [ %96, %1600 ], [ %96, %1826 ], [ %96, %1917 ], [ %96, %2009 ], [ %96, %.loopexit4598 ], [ %96, %2012 ], [ %93, %2139 ], [ %2153, %2234 ], [ %96, %1382 ], [ %96, %1268 ]
  %2248 = phi i32 [ %97, %128 ], [ %97, %174 ], [ %97, %192 ], [ %97, %196 ], [ %97, %211 ], [ %97, %212 ], [ %97, %258 ], [ %97, %262 ], [ %97, %749 ], [ %97, %762 ], [ %97, %851 ], [ %97, %885 ], [ %97, %966 ], [ %97, %997 ], [ %97, %1002 ], [ %97, %1054 ], [ %1126, %1128 ], [ %1135, %1408 ], [ %1410, %1412 ], [ %1419, %1421 ], [ %1434, %1447 ], [ %1434, %1438 ], [ %1434, %1592 ], [ %1434, %1596 ], [ %1434, %1600 ], [ %1674, %1826 ], [ %1900, %1917 ], [ %1900, %2009 ], [ %1900, %.loopexit4598 ], [ %97, %2012 ], [ %97, %2139 ], [ %97, %2234 ], [ %1135, %1382 ], [ %1135, %1268 ]
  %2249 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

._crit_edge:                                      ; preds = %1166, %1169
  %.lcssa3461 = phi i64 [ %1183, %1169 ], [ %1156, %1166 ]
  %2250 = zext i32 %1155 to i64
  %2251 = shl i32 %1155, 3
  %2252 = add i32 %1157, %2251
  %2253 = getelementptr i8, ptr %1154, i64 %2250
  br label %.loopexit161

2254:                                             ; preds = %142, %125
  %.lcssa2027 = phi i32 [ 1, %142 ], [ 0, %125 ]
  %2255 = phi i64 [ %137, %142 ], [ %94, %125 ]
  %2256 = zext nneg i32 %.lcssa2027 to i64
  %2257 = shl nuw nsw i32 %.lcssa2027, 3
  %2258 = add nuw nsw i32 %95, %2257
  %2259 = getelementptr i8, ptr %90, i64 %2256
  br label %.loopexit161

2260:                                             ; preds = %718, %702
  %.lcssa1539 = phi i32 [ 1, %718 ], [ 0, %702 ]
  %2261 = phi i64 [ %713, %718 ], [ %695, %702 ]
  %2262 = zext nneg i32 %.lcssa1539 to i64
  %2263 = shl nuw nsw i32 %.lcssa1539, 3
  %2264 = add nuw nsw i32 %696, %2263
  %2265 = getelementptr i8, ptr %693, i64 %2262
  br label %.loopexit161

2266:                                             ; preds = %454, %433
  %.lcssa1533 = phi i32 [ 1, %454 ], [ 0, %433 ]
  %2267 = phi i64 [ %449, %454 ], [ %436, %433 ]
  %2268 = zext nneg i32 %.lcssa1533 to i64
  %2269 = shl nuw nsw i32 %.lcssa1533, 3
  %2270 = add nuw nsw i32 %437, %2269
  %2271 = getelementptr i8, ptr %434, i64 %2268
  br label %.loopexit161

2272:                                             ; preds = %386, %366
  %.lcssa1527 = phi i32 [ 1, %386 ], [ 0, %366 ]
  %2273 = phi i64 [ %381, %386 ], [ %368, %366 ]
  %2274 = zext nneg i32 %.lcssa1527 to i64
  %2275 = shl nuw nsw i32 %.lcssa1527, 3
  %2276 = add nuw nsw i32 %2275, %367
  %2277 = getelementptr i8, ptr %370, i64 %2274
  br label %.loopexit161

2278:                                             ; preds = %331, %317, %303, %283
  %.lcssa1521 = phi i32 [ 3, %331 ], [ 2, %317 ], [ 1, %303 ], [ 0, %283 ]
  %2279 = phi i64 [ %326, %331 ], [ %312, %317 ], [ %298, %303 ], [ %285, %283 ]
  %2280 = zext nneg i32 %.lcssa1521 to i64
  %2281 = shl nuw nsw i32 %.lcssa1521, 3
  %2282 = add nuw nsw i32 %2281, %284
  %2283 = getelementptr i8, ptr %287, i64 %2280
  br label %.loopexit161

2284:                                             ; preds = %231, %117
  %.lcssa2014 = phi i32 [ 1, %231 ], [ 0, %117 ]
  %2285 = phi i64 [ %226, %231 ], [ %94, %117 ]
  %2286 = zext nneg i32 %.lcssa2014 to i64
  %2287 = shl nuw nsw i32 %.lcssa2014, 3
  %2288 = add nuw nsw i32 %95, %2287
  %2289 = getelementptr i8, ptr %90, i64 %2286
  br label %.loopexit161

2290:                                             ; preds = %805, %791, %777, %112
  %.lcssa2008 = phi i32 [ 3, %805 ], [ 2, %791 ], [ 1, %777 ], [ 0, %112 ]
  %2291 = phi i64 [ %800, %805 ], [ %786, %791 ], [ %772, %777 ], [ %94, %112 ]
  %2292 = zext nneg i32 %.lcssa2008 to i64
  %2293 = shl nuw nsw i32 %.lcssa2008, 3
  %2294 = add nuw nsw i32 %95, %2293
  %2295 = getelementptr i8, ptr %90, i64 %2292
  br label %.loopexit161

2296:                                             ; preds = %939, %925, %911, %894
  %.lcssa2004 = phi i32 [ 3, %939 ], [ 2, %925 ], [ 1, %911 ], [ 0, %894 ]
  %2297 = phi i64 [ %934, %939 ], [ %920, %925 ], [ %906, %911 ], [ %891, %894 ]
  %2298 = zext nneg i32 %.lcssa2004 to i64
  %2299 = shl nuw nsw i32 %.lcssa2004, 3
  %2300 = add nuw nsw i32 %895, %2299
  %2301 = getelementptr i8, ptr %90, i64 %2298
  br label %.loopexit161

._crit_edge4560:                                  ; preds = %1840, %1843
  %.lcssa3617 = phi i64 [ %1857, %1843 ], [ %1834, %1840 ]
  %2302 = zext i32 %1833 to i64
  %2303 = shl i32 %1833, 3
  %2304 = add i32 %1835, %2303
  %2305 = getelementptr i8, ptr %1832, i64 %2302
  br label %.loopexit161

._crit_edge4540:                                  ; preds = %1748, %1751
  %.lcssa3608 = phi i64 [ %1766, %1751 ], [ %1723, %1748 ]
  %2306 = zext i32 %1722 to i64
  %2307 = shl i32 %1722, 3
  %2308 = add i32 %1724, %2307
  %2309 = getelementptr i8, ptr %1721, i64 %2306
  br label %.loopexit161

._crit_edge4520:                                  ; preds = %1687, %1690
  %.lcssa3599 = phi i64 [ %1704, %1690 ], [ %1672, %1687 ]
  %2310 = zext i32 %1671 to i64
  %2311 = shl i32 %1671, 3
  %2312 = add i32 %1673, %2311
  %2313 = getelementptr i8, ptr %1670, i64 %2310
  br label %.loopexit161

._crit_edge4500:                                  ; preds = %1613, %1616
  %.lcssa3592 = phi i64 [ %1630, %1616 ], [ %1607, %1613 ]
  %2314 = zext i32 %1606 to i64
  %2315 = shl i32 %1606, 3
  %2316 = add i32 %1608, %2315
  %2317 = getelementptr i8, ptr %1605, i64 %2314
  br label %.loopexit161

._crit_edge4480:                                  ; preds = %1523, %1526
  %.lcssa3583 = phi i64 [ %1540, %1526 ], [ %1497, %1523 ]
  %2318 = zext i32 %1496 to i64
  %2319 = shl i32 %1496, 3
  %2320 = add i32 %1498, %2319
  %2321 = getelementptr i8, ptr %1495, i64 %2318
  br label %.loopexit161

._crit_edge4460:                                  ; preds = %1461, %1464
  %.lcssa3574 = phi i64 [ %1478, %1464 ], [ %1432, %1461 ]
  %2322 = zext i32 %1431 to i64
  %2323 = shl i32 %1431, 3
  %2324 = add i32 %1433, %2323
  %2325 = getelementptr i8, ptr %1430, i64 %2322
  br label %.loopexit161

2326:                                             ; preds = %1319
  %2327 = zext i32 %1200 to i64
  %2328 = shl i32 %1200, 3
  %2329 = add i32 %1202, %2328
  %2330 = getelementptr i8, ptr %1199, i64 %2327
  br label %.loopexit161

2331:                                             ; preds = %1238
  %2332 = zext i32 %1200 to i64
  %2333 = shl i32 %1200, 3
  %2334 = add i32 %1202, %2333
  %2335 = getelementptr i8, ptr %1199, i64 %2332
  br label %.loopexit161

2336:                                             ; preds = %1282
  %2337 = zext i32 %1200 to i64
  %2338 = shl i32 %1200, 3
  %2339 = add i32 %1202, %2338
  %2340 = getelementptr i8, ptr %1199, i64 %2337
  br label %.loopexit161

2341:                                             ; preds = %1016, %107
  %.lcssa1960 = phi i32 [ 1, %1016 ], [ 0, %107 ]
  %2342 = phi i64 [ %1011, %1016 ], [ %94, %107 ]
  %2343 = zext nneg i32 %.lcssa1960 to i64
  %2344 = shl nuw nsw i32 %.lcssa1960, 3
  %2345 = add nuw nsw i32 %95, %2344
  %2346 = getelementptr i8, ptr %90, i64 %2343
  br label %.loopexit161

2347:                                             ; preds = %2204, %2190, %2176, %2160
  %.lcssa1376 = phi i32 [ 3, %2204 ], [ 2, %2190 ], [ 1, %2176 ], [ 0, %2160 ]
  %2348 = phi i64 [ %2199, %2204 ], [ %2185, %2190 ], [ %2171, %2176 ], [ %2151, %2160 ]
  %2349 = zext nneg i32 %.lcssa1376 to i64
  %2350 = shl nuw nsw i32 %.lcssa1376, 3
  %2351 = add nuw nsw i32 %2152, %2350
  %2352 = getelementptr i8, ptr %2149, i64 %2349
  br label %.loopexit161

2353:                                             ; preds = %2066, %2052, %2038, %2022
  %.lcssa1952 = phi i32 [ 3, %2066 ], [ 2, %2052 ], [ 1, %2038 ], [ 0, %2022 ]
  %2354 = phi i64 [ %2061, %2066 ], [ %2047, %2052 ], [ %2033, %2038 ], [ %94, %2022 ]
  %2355 = zext nneg i32 %.lcssa1952 to i64
  %2356 = shl nuw nsw i32 %.lcssa1952, 3
  %2357 = add nuw nsw i32 %95, %2356
  %2358 = getelementptr i8, ptr %90, i64 %2355
  br label %.loopexit161

.loopexit161.loopexit4602:                        ; preds = %88
  br label %.loopexit161

.loopexit161:                                     ; preds = %2010, %1895, %1422, %982, %967, %848, %834, %680, %636, %616, %576, %560, %1084, %88, %.loopexit161.loopexit4602, %2353, %2347, %2341, %2336, %2331, %2326, %._crit_edge4460, %._crit_edge4480, %._crit_edge4500, %._crit_edge4520, %._crit_edge4540, %._crit_edge4560, %2296, %2290, %2284, %2278, %2272, %2266, %2260, %2254, %._crit_edge, %2235, %878
  %2359 = phi i32 [ %93, %878 ], [ %93, %2235 ], [ %93, %._crit_edge ], [ %93, %2254 ], [ %93, %2260 ], [ %93, %2266 ], [ %93, %2272 ], [ %93, %2278 ], [ %93, %2284 ], [ %93, %2290 ], [ %93, %2296 ], [ %93, %._crit_edge4560 ], [ %93, %._crit_edge4540 ], [ %93, %._crit_edge4520 ], [ %93, %._crit_edge4500 ], [ %93, %._crit_edge4480 ], [ %93, %._crit_edge4460 ], [ %93, %2326 ], [ %93, %2331 ], [ %93, %2336 ], [ %93, %2341 ], [ %93, %2347 ], [ %93, %2353 ], [ %93, %88 ], [ %93, %1084 ], [ %93, %848 ], [ 0, %2010 ], [ 0, %1895 ], [ %93, %1422 ], [ %93, %982 ], [ %93, %967 ], [ %93, %834 ], [ %93, %680 ], [ %93, %636 ], [ %93, %616 ], [ %93, %576 ], [ %93, %560 ], [ %93, %.loopexit161.loopexit4602 ]
  %2360 = phi ptr [ %869, %878 ], [ %2236, %2235 ], [ %2253, %._crit_edge ], [ %2259, %2254 ], [ %2265, %2260 ], [ %2271, %2266 ], [ %2277, %2272 ], [ %2283, %2278 ], [ %2289, %2284 ], [ %2295, %2290 ], [ %2301, %2296 ], [ %2305, %._crit_edge4560 ], [ %2309, %._crit_edge4540 ], [ %2313, %._crit_edge4520 ], [ %2317, %._crit_edge4500 ], [ %2321, %._crit_edge4480 ], [ %2325, %._crit_edge4460 ], [ %2330, %2326 ], [ %2335, %2331 ], [ %2340, %2336 ], [ %2346, %2341 ], [ %2352, %2347 ], [ %2358, %2353 ], [ %90, %88 ], [ %1082, %1084 ], [ %840, %848 ], [ %90, %2010 ], [ %1896, %1895 ], [ %1405, %1422 ], [ %976, %982 ], [ %958, %967 ], [ %835, %834 ], [ %683, %680 ], [ %629, %636 ], [ %619, %616 ], [ %569, %576 ], [ %562, %560 ], [ %90, %.loopexit161.loopexit4602 ]
  %2361 = phi i32 [ %870, %878 ], [ %2237, %2235 ], [ 0, %._crit_edge ], [ 0, %2254 ], [ 0, %2260 ], [ 0, %2266 ], [ 0, %2272 ], [ 0, %2278 ], [ 0, %2284 ], [ 0, %2290 ], [ 0, %2296 ], [ 0, %._crit_edge4560 ], [ 0, %._crit_edge4540 ], [ 0, %._crit_edge4520 ], [ 0, %._crit_edge4500 ], [ 0, %._crit_edge4480 ], [ 0, %._crit_edge4460 ], [ 0, %2326 ], [ 0, %2331 ], [ 0, %2336 ], [ 0, %2341 ], [ 0, %2347 ], [ 0, %2353 ], [ %92, %88 ], [ 0, %1084 ], [ 0, %848 ], [ %92, %2010 ], [ %1897, %1895 ], [ %1404, %1422 ], [ %977, %982 ], [ %959, %967 ], [ %836, %834 ], [ %681, %680 ], [ 0, %636 ], [ %617, %616 ], [ 0, %576 ], [ %563, %560 ], [ %92, %.loopexit161.loopexit4602 ]
  %2362 = phi i64 [ %880, %878 ], [ %2238, %2235 ], [ %.lcssa3461, %._crit_edge ], [ %2255, %2254 ], [ %2261, %2260 ], [ %2267, %2266 ], [ %2273, %2272 ], [ %2279, %2278 ], [ %2285, %2284 ], [ %2291, %2290 ], [ %2297, %2296 ], [ %.lcssa3617, %._crit_edge4560 ], [ %.lcssa3608, %._crit_edge4540 ], [ %.lcssa3599, %._crit_edge4520 ], [ %.lcssa3592, %._crit_edge4500 ], [ %.lcssa3583, %._crit_edge4480 ], [ %.lcssa3574, %._crit_edge4460 ], [ %1321, %2326 ], [ %1240, %2331 ], [ %1284, %2336 ], [ %2342, %2341 ], [ %2348, %2347 ], [ %2354, %2353 ], [ %94, %88 ], [ %1080, %1084 ], [ %842, %848 ], [ %94, %2010 ], [ %1898, %1895 ], [ %1403, %1422 ], [ %978, %982 ], [ 0, %967 ], [ %837, %834 ], [ %631, %680 ], [ %631, %636 ], [ %571, %616 ], [ %571, %576 ], [ %504, %560 ], [ %94, %.loopexit161.loopexit4602 ]
  %2363 = phi i32 [ %879, %878 ], [ %2239, %2235 ], [ %2252, %._crit_edge ], [ %2258, %2254 ], [ %2264, %2260 ], [ %2270, %2266 ], [ %2276, %2272 ], [ %2282, %2278 ], [ %2288, %2284 ], [ %2294, %2290 ], [ %2300, %2296 ], [ %2304, %._crit_edge4560 ], [ %2308, %._crit_edge4540 ], [ %2312, %._crit_edge4520 ], [ %2316, %._crit_edge4500 ], [ %2320, %._crit_edge4480 ], [ %2324, %._crit_edge4460 ], [ %2329, %2326 ], [ %2334, %2331 ], [ %2339, %2336 ], [ %2345, %2341 ], [ %2351, %2347 ], [ %2357, %2353 ], [ %95, %88 ], [ %1079, %1084 ], [ %843, %848 ], [ %95, %2010 ], [ %1899, %1895 ], [ %1402, %1422 ], [ %979, %982 ], [ 0, %967 ], [ %838, %834 ], [ %632, %680 ], [ %632, %636 ], [ %572, %616 ], [ %572, %576 ], [ %505, %560 ], [ %95, %.loopexit161.loopexit4602 ]
  %2364 = phi i32 [ %96, %878 ], [ %2153, %2235 ], [ %96, %._crit_edge ], [ %96, %2254 ], [ %96, %2260 ], [ %96, %2266 ], [ %96, %2272 ], [ %96, %2278 ], [ %96, %2284 ], [ %96, %2290 ], [ %96, %2296 ], [ %96, %._crit_edge4560 ], [ %96, %._crit_edge4540 ], [ %96, %._crit_edge4520 ], [ %96, %._crit_edge4500 ], [ %96, %._crit_edge4480 ], [ %96, %._crit_edge4460 ], [ %96, %2326 ], [ %96, %2331 ], [ %96, %2336 ], [ %96, %2341 ], [ %2153, %2347 ], [ %96, %2353 ], [ %96, %88 ], [ %96, %1084 ], [ %96, %560 ], [ %96, %576 ], [ %96, %616 ], [ %96, %636 ], [ %96, %680 ], [ %96, %834 ], [ %96, %848 ], [ %96, %967 ], [ %96, %982 ], [ %96, %1422 ], [ %96, %1895 ], [ %96, %2010 ], [ %96, %.loopexit161.loopexit4602 ]
  %2365 = phi i32 [ %97, %878 ], [ 1, %2235 ], [ %1135, %._crit_edge ], [ %97, %2254 ], [ %97, %2260 ], [ %97, %2266 ], [ %97, %2272 ], [ %97, %2278 ], [ %97, %2284 ], [ %97, %2290 ], [ %97, %2296 ], [ %1836, %._crit_edge4560 ], [ %1674, %._crit_edge4540 ], [ %1674, %._crit_edge4520 ], [ %1609, %._crit_edge4500 ], [ %1434, %._crit_edge4480 ], [ %1434, %._crit_edge4460 ], [ %1135, %2326 ], [ %1135, %2331 ], [ %1135, %2336 ], [ %97, %2341 ], [ %97, %2347 ], [ %97, %2353 ], [ 1, %88 ], [ %97, %1084 ], [ %97, %848 ], [ %97, %2010 ], [ %1900, %1895 ], [ 0, %1422 ], [ %97, %982 ], [ %97, %967 ], [ %97, %834 ], [ %97, %680 ], [ %97, %636 ], [ %97, %616 ], [ %97, %576 ], [ %97, %560 ], [ -3, %.loopexit161.loopexit4602 ]
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %2359, ptr %41, align 8, !tbaa !52
  store ptr %2360, ptr %0, align 8, !tbaa !50
  store i32 %2361, ptr %43, align 8, !tbaa !51
  store i64 %2362, ptr %45, align 8, !tbaa !31
  store i32 %2363, ptr %47, align 8, !tbaa !32
  %2366 = load i32, ptr %79, align 4, !tbaa !38
  %2367 = icmp eq i32 %2366, 0
  br i1 %2367, label %2368, label %2377

2368:                                             ; preds = %.loopexit161
  %2369 = icmp eq i32 %2364, %2359
  br i1 %2369, label %2460, label %2370

2370:                                             ; preds = %2368
  %2371 = load i32, ptr %21, align 8, !tbaa !20
  %2372 = icmp ult i32 %2371, 16209
  br i1 %2372, label %2373, label %2460

2373:                                             ; preds = %2370
  %2374 = icmp samesign ult i32 %2371, 16206
  %2375 = icmp ne i32 %1, 4
  %2376 = or i1 %2375, %2374
  br i1 %2376, label %2377, label %2460

2377:                                             ; preds = %2373, %.loopexit161
  %2378 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2364, i32 %2359), !nosanitize !47
  %2379 = extractvalue { i32, i1 } %2378, 1, !nosanitize !47
  br i1 %2379, label %2380, label %2381, !prof !48, !nosanitize !47

2380:                                             ; preds = %2377
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2381:                                             ; preds = %2377
  %2382 = extractvalue { i32, i1 } %2378, 0, !nosanitize !47
  %2383 = load ptr, ptr %14, align 8, !tbaa !15
  %2384 = getelementptr inbounds nuw i8, ptr %2383, i64 72
  %2385 = load ptr, ptr %2384, align 8, !tbaa !41
  %2386 = icmp eq ptr %2385, null
  br i1 %2386, label %2387, label %2396

2387:                                             ; preds = %2381
  %2388 = load ptr, ptr %6, align 8, !tbaa !5
  %2389 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2390 = load ptr, ptr %2389, align 8, !tbaa !43
  %2391 = getelementptr inbounds nuw i8, ptr %2383, i64 56
  %2392 = load i32, ptr %2391, align 8, !tbaa !42
  %2393 = shl nuw i32 1, %2392
  %2394 = call ptr %2388(ptr noundef %2390, i32 noundef %2393, i32 noundef 1) #12
  store ptr %2394, ptr %2384, align 8, !tbaa !41
  %2395 = icmp eq ptr %2394, null
  br i1 %2395, label %2459, label %2396

2396:                                             ; preds = %2387, %2381
  %2397 = phi ptr [ %2394, %2387 ], [ %2385, %2381 ]
  %2398 = getelementptr inbounds nuw i8, ptr %2383, i64 60
  %2399 = load i32, ptr %2398, align 4, !tbaa !38
  %2400 = icmp eq i32 %2399, 0
  br i1 %2400, label %2401, label %2407

2401:                                             ; preds = %2396
  %2402 = getelementptr inbounds nuw i8, ptr %2383, i64 56
  %2403 = load i32, ptr %2402, align 8, !tbaa !42
  %2404 = shl nuw i32 1, %2403
  store i32 %2404, ptr %2398, align 4, !tbaa !38
  %2405 = getelementptr inbounds nuw i8, ptr %2383, i64 68
  store i32 0, ptr %2405, align 4, !tbaa !40
  %2406 = getelementptr inbounds nuw i8, ptr %2383, i64 64
  store i32 0, ptr %2406, align 8, !tbaa !39
  br label %2407

2407:                                             ; preds = %2401, %2396
  %2408 = phi i32 [ %2404, %2401 ], [ %2399, %2396 ]
  %2409 = icmp ult i32 %2382, %2408
  br i1 %2409, label %2417, label %2410

2410:                                             ; preds = %2407
  %2411 = zext i32 %2408 to i64
  %2412 = sub nsw i64 0, %2411
  %2413 = getelementptr inbounds i8, ptr %91, i64 %2412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2397, ptr noundef nonnull readonly align 1 dereferenceable(1) %2413, i64 %2411, i1 false)
  %2414 = getelementptr inbounds nuw i8, ptr %2383, i64 68
  store i32 0, ptr %2414, align 4, !tbaa !40
  %2415 = load i32, ptr %2398, align 4, !tbaa !38
  %2416 = getelementptr inbounds nuw i8, ptr %2383, i64 64
  store i32 %2415, ptr %2416, align 8, !tbaa !39
  br label %2460

2417:                                             ; preds = %2407
  %2418 = getelementptr inbounds nuw i8, ptr %2383, i64 68
  %2419 = load i32, ptr %2418, align 4, !tbaa !40
  %2420 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2408, i32 %2419), !nosanitize !47
  %2421 = extractvalue { i32, i1 } %2420, 1, !nosanitize !47
  br i1 %2421, label %2422, label %2423, !prof !48, !nosanitize !47

2422:                                             ; preds = %2417
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2423:                                             ; preds = %2417
  %2424 = extractvalue { i32, i1 } %2420, 0, !nosanitize !47
  %2425 = call i32 @llvm.umin.i32(i32 %2424, i32 %2382)
  %2426 = zext i32 %2419 to i64
  %2427 = getelementptr inbounds nuw i8, ptr %2397, i64 %2426
  %2428 = zext i32 %2382 to i64
  %2429 = sub nsw i64 0, %2428
  %2430 = getelementptr inbounds i8, ptr %91, i64 %2429
  %2431 = zext i32 %2425 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2427, ptr readonly align 1 %2430, i64 %2431, i1 false)
  %.not = icmp ugt i32 %2382, %2424
  br i1 %.not, label %2432, label %2440

2432:                                             ; preds = %2423
  %2433 = sub i32 %2382, %2425
  %2434 = load ptr, ptr %2384, align 8, !tbaa !41
  %2435 = zext i32 %2433 to i64
  %2436 = sub nsw i64 0, %2435
  %2437 = getelementptr inbounds i8, ptr %91, i64 %2436
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2434, ptr nonnull readonly align 1 %2437, i64 %2435, i1 false)
  store i32 %2433, ptr %2418, align 4, !tbaa !40
  %2438 = load i32, ptr %2398, align 4, !tbaa !38
  %2439 = getelementptr inbounds nuw i8, ptr %2383, i64 64
  store i32 %2438, ptr %2439, align 8, !tbaa !39
  br label %2460

2440:                                             ; preds = %2423
  %2441 = load i32, ptr %2418, align 4, !tbaa !40
  %2442 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2441, i32 %2425), !nosanitize !47
  %2443 = extractvalue { i32, i1 } %2442, 1, !nosanitize !47
  br i1 %2443, label %2444, label %2445, !prof !48, !nosanitize !47

2444:                                             ; preds = %2440
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2445:                                             ; preds = %2440
  %2446 = extractvalue { i32, i1 } %2442, 0, !nosanitize !47
  %2447 = load i32, ptr %2398, align 4, !tbaa !38
  %2448 = icmp eq i32 %2446, %2447
  %2449 = select i1 %2448, i32 0, i32 %2446
  store i32 %2449, ptr %2418, align 4
  %2450 = getelementptr inbounds nuw i8, ptr %2383, i64 64
  %2451 = load i32, ptr %2450, align 8, !tbaa !39
  %2452 = icmp ult i32 %2451, %2447
  br i1 %2452, label %2453, label %2460

2453:                                             ; preds = %2445
  %2454 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2451, i32 %2425), !nosanitize !47
  %2455 = extractvalue { i32, i1 } %2454, 1, !nosanitize !47
  br i1 %2455, label %2456, label %2457, !prof !48, !nosanitize !47

2456:                                             ; preds = %2453
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2457:                                             ; preds = %2453
  %2458 = extractvalue { i32, i1 } %2454, 0, !nosanitize !47
  store i32 %2458, ptr %2450, align 8, !tbaa !39
  br label %2460

2459:                                             ; preds = %2387
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %.loopexit163

2460:                                             ; preds = %2457, %2445, %2432, %2410, %2373, %2370, %2368
  %2461 = load i32, ptr %43, align 8, !tbaa !51
  %2462 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2461), !nosanitize !47
  %2463 = extractvalue { i32, i1 } %2462, 0, !nosanitize !47
  %2464 = extractvalue { i32, i1 } %2462, 1, !nosanitize !47
  br i1 %2464, label %2465, label %2466, !prof !48, !nosanitize !47

2465:                                             ; preds = %2460
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2466:                                             ; preds = %2460
  %2467 = load i32, ptr %41, align 8, !tbaa !52
  %2468 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2364, i32 %2467), !nosanitize !47
  %2469 = extractvalue { i32, i1 } %2468, 0, !nosanitize !47
  %2470 = extractvalue { i32, i1 } %2468, 1, !nosanitize !47
  br i1 %2470, label %2471, label %2472, !prof !48, !nosanitize !47

2471:                                             ; preds = %2466
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2472:                                             ; preds = %2466
  %2473 = zext i32 %2463 to i64
  %2474 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2475 = load i64, ptr %2474, align 8, !tbaa !22
  %2476 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2475, i64 %2473), !nosanitize !47
  %2477 = extractvalue { i64, i1 } %2476, 1, !nosanitize !47
  br i1 %2477, label %2478, label %2479, !prof !48, !nosanitize !47

2478:                                             ; preds = %2472
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2479:                                             ; preds = %2472
  %2480 = extractvalue { i64, i1 } %2476, 0, !nosanitize !47
  store i64 %2480, ptr %2474, align 8, !tbaa !22
  %2481 = zext i32 %2469 to i64
  %2482 = load i64, ptr %50, align 8, !tbaa !113
  %2483 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2482, i64 %2481), !nosanitize !47
  %2484 = extractvalue { i64, i1 } %2483, 1, !nosanitize !47
  br i1 %2484, label %2485, label %2486, !prof !48, !nosanitize !47

2485:                                             ; preds = %2479
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2486:                                             ; preds = %2479
  %2487 = extractvalue { i64, i1 } %2483, 0, !nosanitize !47
  store i64 %2487, ptr %50, align 8, !tbaa !113
  %2488 = load i64, ptr %51, align 8, !tbaa !21
  %2489 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2488, i64 %2481), !nosanitize !47
  %2490 = extractvalue { i64, i1 } %2489, 1, !nosanitize !47
  br i1 %2490, label %2491, label %2492, !prof !48, !nosanitize !47

2491:                                             ; preds = %2526, %2519, %2512, %2486
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2492:                                             ; preds = %2486
  %2493 = extractvalue { i64, i1 } %2489, 0, !nosanitize !47
  store i64 %2493, ptr %51, align 8, !tbaa !21
  %2494 = load i32, ptr %49, align 8, !tbaa !24
  %2495 = and i32 %2494, 4
  %2496 = icmp ne i32 %2495, 0
  %2497 = icmp ne i32 %2469, 0
  %2498 = select i1 %2496, i1 %2497, i1 false
  br i1 %2498, label %2499, label %2512

2499:                                             ; preds = %2492
  %2500 = load i32, ptr %52, align 8, !tbaa !28
  %2501 = icmp eq i32 %2500, 0
  %2502 = load i64, ptr %53, align 8, !tbaa !56
  %2503 = load ptr, ptr %26, align 8, !tbaa !49
  %2504 = sub nsw i64 0, %2481
  %2505 = getelementptr inbounds i8, ptr %2503, i64 %2504
  br i1 %2501, label %2508, label %2506

2506:                                             ; preds = %2499
  %2507 = call i64 @crc32(i64 noundef %2502, ptr noundef nonnull %2505, i32 noundef %2469) #12
  br label %2510

2508:                                             ; preds = %2499
  %2509 = call i64 @adler32(i64 noundef %2502, ptr noundef nonnull %2505, i32 noundef %2469) #12
  br label %2510

2510:                                             ; preds = %2508, %2506
  %2511 = phi i64 [ %2507, %2506 ], [ %2509, %2508 ]
  store i64 %2511, ptr %53, align 8, !tbaa !56
  store i64 %2511, ptr %54, align 8, !tbaa !25
  br label %2512

2512:                                             ; preds = %2510, %2492
  %2513 = load i32, ptr %47, align 8, !tbaa !32
  %2514 = load i32, ptr %83, align 4, !tbaa !26
  %2515 = icmp eq i32 %2514, 0
  %2516 = select i1 %2515, i32 0, i32 64
  %2517 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2513, i32 %2516), !nosanitize !47
  %2518 = extractvalue { i32, i1 } %2517, 1, !nosanitize !47
  br i1 %2518, label %2491, label %2519, !prof !48, !nosanitize !47

2519:                                             ; preds = %2512
  %2520 = extractvalue { i32, i1 } %2517, 0, !nosanitize !47
  %2521 = load i32, ptr %21, align 8, !tbaa !20
  %2522 = icmp eq i32 %2521, 16191
  %2523 = select i1 %2522, i32 128, i32 0
  %2524 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2520, i32 %2523), !nosanitize !47
  %2525 = extractvalue { i32, i1 } %2524, 1, !nosanitize !47
  br i1 %2525, label %2491, label %2526, !prof !48, !nosanitize !47

2526:                                             ; preds = %2519
  %2527 = extractvalue { i32, i1 } %2524, 0, !nosanitize !47
  %2528 = icmp eq i32 %2521, 16199
  %2529 = icmp eq i32 %2521, 16194
  %2530 = or i1 %2528, %2529
  %2531 = select i1 %2530, i32 256, i32 0
  %2532 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2527, i32 %2531), !nosanitize !47
  %2533 = extractvalue { i32, i1 } %2532, 1, !nosanitize !47
  br i1 %2533, label %2491, label %2534, !prof !48, !nosanitize !47

2534:                                             ; preds = %2526
  %2535 = extractvalue { i32, i1 } %2532, 0, !nosanitize !47
  %2536 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2535, ptr %2536, align 8, !tbaa !23
  %2537 = icmp eq i32 %2463, 0
  %2538 = icmp eq i32 %2469, 0
  %2539 = select i1 %2537, i1 %2538, i1 false
  %2540 = icmp eq i32 %1, 4
  %2541 = or i1 %2540, %2539
  %2542 = icmp eq i32 %2365, 0
  %2543 = select i1 %2541, i1 %2542, i1 false
  %2544 = select i1 %2543, i32 -5, i32 %2365
  br label %.loopexit163

.loopexit163.loopexit:                            ; preds = %88
  br label %.loopexit163

.loopexit163:                                     ; preds = %88, %.loopexit163.loopexit, %2534, %2459, %831, %32, %25, %20, %17, %13, %9, %5, %2
  %2545 = phi i32 [ -4, %2459 ], [ %2544, %2534 ], [ 2, %831 ], [ -2, %32 ], [ -2, %25 ], [ -2, %20 ], [ -2, %9 ], [ -2, %5 ], [ -2, %2 ], [ -2, %17 ], [ -2, %13 ], [ -2, %.loopexit163.loopexit ], [ -4, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %2545
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #4

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateEnd(ptr noundef captures(address) %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !5
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
  %38 = phi i32 [ 0, %32 ], [ -2, %18 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %38
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !5
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
  store i32 %55, ptr %2, align 4, !tbaa !46
  br label %56

56:                                               ; preds = %54, %52, %20, %17, %13, %9, %5, %3
  %57 = phi i32 [ -2, %20 ], [ 0, %54 ], [ 0, %52 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @inflateSetDictionary(ptr noundef readonly captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %119, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !5
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
  %36 = load i64, ptr %35, align 8, !tbaa !56
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
  %48 = load ptr, ptr %6, align 8, !tbaa !5
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  %51 = getelementptr inbounds nuw i8, ptr %41, i64 56
  %52 = load i32, ptr %51, align 8, !tbaa !42
  %53 = shl nuw i32 1, %52
  %54 = tail call ptr %48(ptr noundef %50, i32 noundef %53, i32 noundef 1) #12
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
  %120 = phi i32 [ -4, %116 ], [ 0, %117 ], [ -2, %20 ], [ -2, %30 ], [ -3, %32 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateGetHeader(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
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
  store i32 0, ptr %31, align 8, !tbaa !57
  br label %32

32:                                               ; preds = %29, %24, %19, %16, %12, %8, %4, %2
  %33 = phi i32 [ 0, %29 ], [ -2, %19 ], [ -2, %24 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %33
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @inflateSync(ptr noundef captures(address) %0) local_unnamed_addr #6 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %202, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %202, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %202, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %202, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %202

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %202

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %30 = load i32, ptr %29, align 8, !tbaa !32
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %202, label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq i32 %21, 16211
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %36 = load i32, ptr %35, align 4, !tbaa !46
  br label %117

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
  br i1 %54, label %.loopexit7, label %55

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
  br i1 %niter.ncmp.3, label %.loopexit7.loopexit.unr-lcssa, label %61, !llvm.loop !115

.loopexit7.loopexit.unr-lcssa:                    ; preds = %61
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit7, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit7.loopexit.unr-lcssa, %55
  %.epil.init = phi i64 [ %44, %55 ], [ 0, %.loopexit7.loopexit.unr-lcssa ]
  %.epil.init37 = phi i64 [ 0, %55 ], [ %74, %.loopexit7.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %75

75:                                               ; preds = %75, %.epil.preheader
  %76 = phi i64 [ %.epil.init, %.epil.preheader ], [ %81, %75 ]
  %77 = phi i64 [ %.epil.init37, %.epil.preheader ], [ %80, %75 ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %75 ]
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %77
  %79 = trunc i64 %76 to i32
  store i32 %79, ptr %78, align 1
  %80 = add nuw i64 %77, 4
  %81 = lshr i64 %76, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit7, label %75, !llvm.loop !116

.loopexit7:                                       ; preds = %.loopexit7.loopexit.unr-lcssa, %75, %48
  %82 = phi i64 [ poison, %48 ], [ 0, %.loopexit7.loopexit.unr-lcssa ], [ %81, %75 ]
  %83 = phi i64 [ %44, %48 ], [ 0, %.loopexit7.loopexit.unr-lcssa ], [ %81, %75 ]
  %84 = phi i64 [ 0, %48 ], [ %56, %75 ], [ %56, %.loopexit7.loopexit.unr-lcssa ]
  %85 = icmp eq i64 %53, 0
  br i1 %85, label %.loopexit6, label %.preheader

.preheader:                                       ; preds = %.loopexit7, %.preheader
  %86 = phi i64 [ %92, %.preheader ], [ %83, %.loopexit7 ]
  %87 = phi i64 [ %89, %.preheader ], [ %84, %.loopexit7 ]
  %88 = phi i64 [ %93, %.preheader ], [ 0, %.loopexit7 ]
  %89 = add nuw nsw i64 %87, 1
  %90 = trunc i64 %86 to i8
  %91 = getelementptr inbounds nuw i8, ptr %2, i64 %87
  store i8 %90, ptr %91, align 1, !tbaa !44
  %92 = lshr i64 %86, 8
  %93 = add nuw nsw i64 %88, 1
  %94 = icmp eq i64 %93, %53
  br i1 %94, label %.loopexit6, label %.preheader, !llvm.loop !117

.loopexit6:                                       ; preds = %.preheader, %.loopexit7
  %95 = phi i64 [ %82, %.loopexit7 ], [ %92, %.preheader ]
  store i64 %95, ptr %41, align 8, !tbaa !31
  store i32 0, ptr %38, align 8, !tbaa !32
  br label %96

96:                                               ; preds = %96, %.loopexit6
  %97 = phi i64 [ 0, %.loopexit6 ], [ %99, %96 ]
  %98 = phi i32 [ 0, %.loopexit6 ], [ %110, %96 ]
  %99 = add nuw nsw i64 %97, 1
  %100 = icmp samesign ult i32 %98, 2
  %101 = select i1 %100, i32 0, i32 255
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 %97
  %103 = load i8, ptr %102, align 1, !tbaa !44
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %101, %104
  %106 = add nuw nsw i32 %98, 1
  %107 = icmp eq i8 %103, 0
  %108 = sub nuw nsw i32 4, %98
  %109 = select i1 %107, i32 %108, i32 0
  %110 = select i1 %105, i32 %106, i32 %109
  %111 = icmp samesign ult i64 %99, %52
  %112 = icmp samesign ult i32 %110, 4
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %96, label %.loopexit, !llvm.loop !118

.loopexit:                                        ; preds = %96, %47
  %114 = phi i32 [ 0, %47 ], [ %110, %96 ]
  %115 = getelementptr inbounds nuw i8, ptr %14, i64 140
  store i32 %114, ptr %115, align 4, !tbaa !46
  %116 = load i32, ptr %25, align 8, !tbaa !51
  br label %117

117:                                              ; preds = %.loopexit, %34
  %118 = phi i32 [ %114, %.loopexit ], [ %36, %34 ]
  %119 = phi i32 [ %116, %.loopexit ], [ %26, %34 ]
  %120 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %121 = load ptr, ptr %0, align 8, !tbaa !50
  %122 = icmp ne i32 %119, 0
  %123 = icmp ult i32 %118, 4
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %125, label %147

125:                                              ; preds = %117
  %126 = zext i32 %119 to i64
  br label %127

127:                                              ; preds = %127, %125
  %128 = phi i64 [ 0, %125 ], [ %130, %127 ]
  %129 = phi i32 [ %118, %125 ], [ %141, %127 ]
  %130 = add nuw nsw i64 %128, 1
  %131 = icmp samesign ult i32 %129, 2
  %132 = select i1 %131, i32 0, i32 255
  %133 = getelementptr inbounds nuw i8, ptr %121, i64 %128
  %134 = load i8, ptr %133, align 1, !tbaa !44
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %132, %135
  %137 = add nuw nsw i32 %129, 1
  %138 = icmp eq i8 %134, 0
  %139 = sub nuw nsw i32 4, %129
  %140 = select i1 %138, i32 %139, i32 0
  %141 = select i1 %136, i32 %137, i32 %140
  %142 = icmp samesign ult i64 %130, %126
  %143 = icmp samesign ult i32 %141, 4
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %127, label %145, !llvm.loop !118

145:                                              ; preds = %127
  %146 = trunc nuw i64 %130 to i32
  br label %147

147:                                              ; preds = %145, %117
  %148 = phi i32 [ %118, %117 ], [ %141, %145 ]
  %149 = phi i32 [ 0, %117 ], [ %146, %145 ]
  store i32 %148, ptr %120, align 4, !tbaa !46
  %150 = load i32, ptr %25, align 8, !tbaa !51
  %151 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %150, i32 %149), !nosanitize !47
  %152 = extractvalue { i32, i1 } %151, 1, !nosanitize !47
  br i1 %152, label %153, label %154, !prof !48, !nosanitize !47

153:                                              ; preds = %147
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

154:                                              ; preds = %147
  %155 = extractvalue { i32, i1 } %151, 0, !nosanitize !47
  store i32 %155, ptr %25, align 8, !tbaa !51
  %156 = zext i32 %149 to i64
  %157 = getelementptr inbounds nuw i8, ptr %121, i64 %156
  store ptr %157, ptr %0, align 8, !tbaa !50
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %159 = load i64, ptr %158, align 8, !tbaa !22
  %160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %159, i64 %156), !nosanitize !47
  %161 = extractvalue { i64, i1 } %160, 1, !nosanitize !47
  br i1 %161, label %162, label %163, !prof !48, !nosanitize !47

162:                                              ; preds = %154
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

163:                                              ; preds = %154
  %164 = extractvalue { i64, i1 } %160, 0, !nosanitize !47
  store i64 %164, ptr %158, align 8, !tbaa !22
  %165 = icmp eq i32 %148, 4
  br i1 %165, label %166, label %202

166:                                              ; preds = %163
  %167 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %168 = load i32, ptr %167, align 8, !tbaa !28
  %169 = icmp eq i32 %168, -1
  %170 = getelementptr inbounds nuw i8, ptr %14, i64 16
  br i1 %169, label %174, label %171

171:                                              ; preds = %166
  %172 = load i32, ptr %170, align 8, !tbaa !24
  %173 = and i32 %172, -5
  br label %174

174:                                              ; preds = %171, %166
  %175 = phi i32 [ %173, %171 ], [ 0, %166 ]
  store i32 %175, ptr %170, align 8, !tbaa !24
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %177 = load i64, ptr %176, align 8, !tbaa !113
  %178 = getelementptr inbounds nuw i8, ptr %14, i64 60
  store i32 0, ptr %178, align 4, !tbaa !38
  %179 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 0, ptr %179, align 8, !tbaa !39
  %180 = getelementptr inbounds nuw i8, ptr %14, i64 68
  store i32 0, ptr %180, align 4, !tbaa !40
  %181 = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %181, align 8, !tbaa !21
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %182, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %176, i8 0, i64 16, i1 false)
  %183 = load i32, ptr %170, align 8, !tbaa !24
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %174
  %186 = and i32 %183, 1
  %187 = zext nneg i32 %186 to i64
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %187, ptr %188, align 8, !tbaa !25
  br label %189

189:                                              ; preds = %185, %174
  %190 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 0, ptr %190, align 4, !tbaa !26
  %191 = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %191, align 4, !tbaa !27
  %192 = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 32768, ptr %192, align 4, !tbaa !29
  %193 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr null, ptr %193, align 8, !tbaa !30
  %194 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store i64 0, ptr %194, align 8, !tbaa !31
  %195 = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i32 0, ptr %195, align 8, !tbaa !32
  %196 = getelementptr inbounds nuw i8, ptr %14, i64 1368
  %197 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store ptr %196, ptr %197, align 8, !tbaa !33
  %198 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store ptr %196, ptr %198, align 8, !tbaa !34
  %199 = getelementptr inbounds nuw i8, ptr %14, i64 104
  store ptr %196, ptr %199, align 8, !tbaa !35
  %200 = getelementptr inbounds nuw i8, ptr %14, i64 7144
  store i32 1, ptr %200, align 8, !tbaa !36
  %201 = getelementptr inbounds nuw i8, ptr %14, i64 7148
  store i32 -1, ptr %201, align 4, !tbaa !37
  store i64 %164, ptr %158, align 8, !tbaa !22
  store i64 %177, ptr %176, align 8, !tbaa !113
  store i32 %168, ptr %167, align 8, !tbaa !28
  store i32 16191, ptr %20, align 8, !tbaa !20
  br label %202

202:                                              ; preds = %189, %163, %28, %19, %16, %12, %8, %4, %1
  %203 = phi i32 [ 0, %189 ], [ -2, %19 ], [ -5, %28 ], [ -3, %163 ], [ -2, %8 ], [ -2, %4 ], [ -2, %1 ], [ -2, %16 ], [ -2, %12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %203
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 2) i32 @inflateSyncPoint(ptr noundef readonly captures(address) %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !5
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
  %31 = phi i32 [ -2, %18 ], [ 0, %23 ], [ %29, %25 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @inflateCopy(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %88, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
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
  %36 = load ptr, ptr %5, align 8, !tbaa !5
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
  %89 = phi i32 [ -4, %43 ], [ 0, %85 ], [ -2, %19 ], [ -4, %26 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %89
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -3, -1) i32 @inflateUndermine(ptr noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
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
  %27 = phi i32 [ -3, %24 ], [ -2, %19 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateValidate(ptr noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
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
  %31 = phi i32 [ -2, %19 ], [ -2, %16 ], [ -2, %12 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ 0, %.sink.split ]
  ret i32 %31
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i64 -140737488355328, 140741783257088) i64 @inflateMark(ptr noundef readonly captures(address) %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !5
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
  %30 = load i32, ptr %29, align 4, !tbaa !67
  br label %40

31:                                               ; preds = %23
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 7152
  %33 = load i32, ptr %32, align 8, !tbaa !101
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 92
  %35 = load i32, ptr %34, align 4, !tbaa !67
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
  %45 = phi i64 [ %43, %40 ], [ -65536, %18 ], [ -65536, %7 ], [ -65536, %3 ], [ -65536, %1 ], [ -65536, %15 ], [ -65536, %11 ]
  ret i64 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -2305843009213693952, 2305843009213693952) i64 @inflateCodesUsed(ptr noundef readonly captures(address) %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !5
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
  %32 = phi i64 [ %30, %23 ], [ -1, %18 ], [ -1, %7 ], [ -1, %3 ], [ -1, %1 ], [ -1, %15 ], [ -1, %11 ]
  ret i64 %32
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nomerge noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !8, i64 64}
!6 = !{!"z_stream_s", !7, i64 0, !11, i64 8, !12, i64 16, !7, i64 24, !11, i64 32, !12, i64 40, !7, i64 48, !13, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !11, i64 88, !12, i64 96, !12, i64 104}
!7 = !{!"p1 omnipotent char", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"p1 _ZTS14internal_state", !8, i64 0}
!14 = !{!6, !8, i64 72}
!15 = !{!6, !13, i64 56}
!16 = !{!17, !18, i64 0}
!17 = !{!"inflate_state", !18, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !12, i64 40, !19, i64 48, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !7, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !8, i64 104, !8, i64 112, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !8, i64 144, !9, i64 152, !9, i64 792, !9, i64 1368, !11, i64 7144, !11, i64 7148, !11, i64 7152}
!18 = !{!"p1 _ZTS10z_stream_s", !8, i64 0}
!19 = !{!"p1 _ZTS11gz_header_s", !8, i64 0}
!20 = !{!17, !11, i64 8}
!21 = !{!17, !12, i64 40}
!22 = !{!6, !12, i64 16}
!23 = !{!6, !11, i64 88}
!24 = !{!17, !11, i64 16}
!25 = !{!6, !12, i64 96}
!26 = !{!17, !11, i64 12}
!27 = !{!17, !11, i64 20}
!28 = !{!17, !11, i64 24}
!29 = !{!17, !11, i64 28}
!30 = !{!17, !19, i64 48}
!31 = !{!17, !12, i64 80}
!32 = !{!17, !11, i64 88}
!33 = !{!17, !8, i64 144}
!34 = !{!17, !8, i64 112}
!35 = !{!17, !8, i64 104}
!36 = !{!17, !11, i64 7144}
!37 = !{!17, !11, i64 7148}
!38 = !{!17, !11, i64 60}
!39 = !{!17, !11, i64 64}
!40 = !{!17, !11, i64 68}
!41 = !{!17, !7, i64 72}
!42 = !{!17, !11, i64 56}
!43 = !{!6, !8, i64 80}
!44 = !{!9, !9, i64 0}
!45 = !{!6, !7, i64 48}
!46 = !{!11, !11, i64 0}
!47 = !{}
!48 = !{!"branch_weights", i32 1, i32 1048575}
!49 = !{!6, !7, i64 24}
!50 = !{!6, !7, i64 0}
!51 = !{!6, !11, i64 8}
!52 = !{!6, !11, i64 32}
!53 = !{!17, !11, i64 100}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!17, !12, i64 32}
!57 = !{!58, !11, i64 72}
!58 = !{!"gz_header_s", !11, i64 0, !12, i64 8, !11, i64 16, !11, i64 20, !7, i64 24, !11, i64 32, !11, i64 36, !7, i64 40, !11, i64 48, !7, i64 56, !11, i64 64, !11, i64 68, !11, i64 72}
!59 = distinct !{!59, !55}
!60 = !{!58, !11, i64 0}
!61 = distinct !{!61, !55}
!62 = !{!58, !12, i64 8}
!63 = distinct !{!63, !55}
!64 = !{!58, !11, i64 16}
!65 = !{!58, !11, i64 20}
!66 = distinct !{!66, !55}
!67 = !{!17, !11, i64 92}
!68 = !{!58, !11, i64 32}
!69 = !{!58, !7, i64 24}
!70 = !{!58, !11, i64 36}
!71 = !{!58, !7, i64 40}
!72 = !{!58, !11, i64 48}
!73 = distinct !{!73, !55}
!74 = !{!58, !7, i64 56}
!75 = !{!58, !11, i64 64}
!76 = distinct !{!76, !55}
!77 = distinct !{!77, !55}
!78 = !{!58, !11, i64 68}
!79 = distinct !{!79, !55}
!80 = distinct !{!80, !55}
!81 = distinct !{!81, !55}
!82 = !{!17, !11, i64 132}
!83 = !{!17, !11, i64 136}
!84 = !{!17, !11, i64 128}
!85 = !{!17, !11, i64 140}
!86 = !{!87, !87, i64 0}
!87 = !{!"short", !9, i64 0}
!88 = distinct !{!88, !55}
!89 = distinct !{!89, !55}
!90 = !{!17, !11, i64 120}
!91 = !{!"branch_weights", i32 1, i32 127}
!92 = distinct !{!92, !55}
!93 = distinct !{!93, !55}
!94 = distinct !{!94, !55}
!95 = !{!"branch_weights", i32 127, i32 134217473}
!96 = distinct !{!96, !55}
!97 = distinct !{!97, !55, !98}
!98 = !{!"llvm.loop.estimated_trip_count", i32 528415}
!99 = !{!17, !11, i64 124}
!100 = distinct !{!100, !55}
!101 = !{!17, !11, i64 7152}
!102 = !{!17, !11, i64 96}
!103 = distinct !{!103, !55}
!104 = distinct !{!104, !55, !105, !106}
!105 = !{!"llvm.loop.isvectorized", i32 1}
!106 = !{!"llvm.loop.unroll.runtime.disable"}
!107 = !{!"branch_weights", i32 4, i32 28}
!108 = distinct !{!108, !55, !105, !106}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = distinct !{!111, !55, !105}
!112 = distinct !{!112, !55}
!113 = !{!6, !12, i64 40}
!114 = distinct !{!114, !55}
!115 = distinct !{!115, !55}
!116 = distinct !{!116, !110}
!117 = distinct !{!117, !110}
!118 = distinct !{!118, !55}
