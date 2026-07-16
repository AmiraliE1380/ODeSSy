; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/signed.gzlib.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/gzlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"<fd:%d>\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @gzopen(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %104, label %6

6:                                                ; preds = %2
  %7 = tail call noalias dereferenceable_or_null(248) ptr @malloc(i64 noundef 248) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %104, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 0, ptr %10, align 8, !tbaa !8
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 8192, ptr %11, align 4, !tbaa !16
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 120
  store i32 0, ptr %12, align 8, !tbaa !17
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr null, ptr %13, align 8, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 0, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i32 -1, ptr %15, align 8, !tbaa !20
  %16 = getelementptr inbounds nuw i8, ptr %7, i64 100
  store i32 0, ptr %16, align 4, !tbaa !21
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %17, align 8, !tbaa !22
  %18 = load i8, ptr %1, align 1, !tbaa !23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %57, label %.preheader

.preheader:                                       ; preds = %9, %46
  %20 = phi i32 [ %47, %46 ], [ 0, %9 ]
  %21 = phi i32 [ %48, %46 ], [ 0, %9 ]
  %22 = phi i8 [ %52, %46 ], [ %18, %9 ]
  %23 = phi i32 [ %50, %46 ], [ 0, %9 ]
  %24 = phi i32 [ %49, %46 ], [ 0, %9 ]
  %25 = phi ptr [ %51, %46 ], [ %1, %9 ]
  %26 = add i8 %22, -48
  %27 = icmp ult i8 %26, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %.preheader
  %29 = zext nneg i8 %26 to i32
  store i32 %29, ptr %15, align 8, !tbaa !20
  br label %46

30:                                               ; preds = %.preheader
  switch i8 %22, label %46 [
    i8 114, label %31
    i8 119, label %32
    i8 97, label %33
    i8 43, label %34
    i8 84, label %45
    i8 101, label %35
    i8 120, label %37
    i8 102, label %38
    i8 104, label %39
    i8 82, label %40
    i8 70, label %41
    i8 71, label %42
    i8 78, label %43
  ]

31:                                               ; preds = %30
  store i32 7247, ptr %14, align 8, !tbaa !19
  br label %46

32:                                               ; preds = %30
  store i32 31153, ptr %14, align 8, !tbaa !19
  br label %46

33:                                               ; preds = %30
  store i32 1, ptr %14, align 8, !tbaa !19
  br label %46

34:                                               ; preds = %30
  tail call void @free(ptr noundef %7) #16
  br label %104

35:                                               ; preds = %30
  %36 = or i32 %24, 524288
  br label %46

37:                                               ; preds = %30
  br label %46

38:                                               ; preds = %30
  store i32 1, ptr %16, align 4, !tbaa !21
  br label %46

39:                                               ; preds = %30
  store i32 2, ptr %16, align 4, !tbaa !21
  br label %46

40:                                               ; preds = %30
  store i32 3, ptr %16, align 4, !tbaa !21
  br label %46

41:                                               ; preds = %30
  store i32 4, ptr %16, align 4, !tbaa !21
  br label %46

42:                                               ; preds = %30
  store i32 -1, ptr %17, align 8, !tbaa !22
  br label %46

43:                                               ; preds = %30
  %44 = or i32 %24, 2048
  br label %46

45:                                               ; preds = %30
  store i32 1, ptr %17, align 8, !tbaa !22
  br label %46

46:                                               ; preds = %45, %43, %42, %41, %40, %39, %38, %37, %35, %33, %32, %31, %30, %28
  %47 = phi i32 [ %20, %28 ], [ %20, %30 ], [ %20, %31 ], [ %20, %32 ], [ %20, %33 ], [ 1, %45 ], [ %20, %35 ], [ %20, %37 ], [ %20, %38 ], [ %20, %39 ], [ %20, %40 ], [ %20, %41 ], [ -1, %42 ], [ %20, %43 ]
  %48 = phi i32 [ %21, %28 ], [ %21, %30 ], [ 7247, %31 ], [ 31153, %32 ], [ 1, %33 ], [ %21, %45 ], [ %21, %35 ], [ %21, %37 ], [ %21, %38 ], [ %21, %39 ], [ %21, %40 ], [ %21, %41 ], [ %21, %42 ], [ %21, %43 ]
  %49 = phi i32 [ %24, %28 ], [ %24, %30 ], [ %24, %31 ], [ %24, %32 ], [ %24, %33 ], [ %24, %45 ], [ %36, %35 ], [ %24, %37 ], [ %24, %38 ], [ %24, %39 ], [ %24, %40 ], [ %24, %41 ], [ %24, %42 ], [ %44, %43 ]
  %50 = phi i32 [ %23, %28 ], [ %23, %30 ], [ %23, %31 ], [ %23, %32 ], [ %23, %33 ], [ %23, %45 ], [ %23, %35 ], [ 1, %37 ], [ %23, %38 ], [ %23, %39 ], [ %23, %40 ], [ %23, %41 ], [ %23, %42 ], [ %23, %43 ]
  %51 = getelementptr inbounds nuw i8, ptr %25, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !23
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %.preheader, !llvm.loop !24

54:                                               ; preds = %46
  %55 = icmp eq i32 %50, 0
  %56 = select i1 %55, i32 65, i32 193
  switch i32 %48, label %61 [
    i32 0, label %57
    i32 7247, label %58
  ]

57:                                               ; preds = %54, %9
  tail call void @free(ptr noundef nonnull %7) #16
  br label %104

58:                                               ; preds = %54
  switch i32 %47, label %64 [
    i32 1, label %59
    i32 0, label %60
  ]

59:                                               ; preds = %58
  tail call void @free(ptr noundef nonnull %7) #16
  br label %104

60:                                               ; preds = %58
  store i32 1, ptr %17, align 8, !tbaa !22
  br label %64

61:                                               ; preds = %54
  %62 = icmp eq i32 %47, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  tail call void @free(ptr noundef nonnull %7) #16
  br label %104

64:                                               ; preds = %61, %60, %58
  %65 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %66 = add i64 %65, 1
  %67 = tail call noalias ptr @malloc(i64 noundef %66) #15
  %68 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %67, ptr %68, align 8, !tbaa !26
  %69 = icmp eq ptr %67, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  tail call void @free(ptr noundef nonnull %7) #16
  br label %104

71:                                               ; preds = %64
  %72 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %67, i64 noundef %66, ptr noundef nonnull @.str.5, ptr noundef nonnull %0) #16
  %73 = icmp eq i32 %48, 7247
  %74 = icmp eq i32 %48, 31153
  %75 = select i1 %74, i32 512, i32 1024
  %76 = or disjoint i32 %56, %75
  %77 = select i1 %73, i32 0, i32 %76
  %78 = or i32 %77, %49
  %79 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %78, i32 noundef 438) #16
  %80 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %79, ptr %80, align 4, !tbaa !27
  %81 = icmp eq i32 %79, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  tail call void @free(ptr noundef nonnull %67) #16
  tail call void @free(ptr noundef nonnull %7) #16
  br label %104

83:                                               ; preds = %71
  %84 = icmp eq i32 %48, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %83
  %86 = tail call i64 @lseek64(i32 noundef %79, i64 noundef 0, i32 noundef 2) #16
  store i32 31153, ptr %14, align 8, !tbaa !19
  br label %97

87:                                               ; preds = %83
  br i1 %73, label %88, label %97

88:                                               ; preds = %87
  %89 = tail call i64 @lseek64(i32 noundef %79, i64 noundef 0, i32 noundef 1) #16
  %90 = getelementptr inbounds nuw i8, ptr %7, i64 80
  %91 = icmp eq i64 %89, -1
  %92 = select i1 %91, i64 0, i64 %89
  store i64 %92, ptr %90, align 8
  store i32 0, ptr %7, align 8, !tbaa !28
  %93 = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i32 0, ptr %93, align 8, !tbaa !29
  %94 = getelementptr inbounds nuw i8, ptr %7, i64 92
  store i32 0, ptr %94, align 4, !tbaa !30
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 0, ptr %95, align 8, !tbaa !31
  %96 = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i32 -1, ptr %96, align 4, !tbaa !32
  br label %99

97:                                               ; preds = %87, %85
  store i32 0, ptr %7, align 8, !tbaa !28
  %98 = getelementptr inbounds nuw i8, ptr %7, i64 104
  store i32 0, ptr %98, align 8, !tbaa !33
  br label %99

99:                                               ; preds = %97, %88
  %100 = getelementptr inbounds nuw i8, ptr %7, i64 76
  store i32 0, ptr %100, align 4, !tbaa !34
  %101 = getelementptr inbounds nuw i8, ptr %7, i64 112
  store i64 0, ptr %101, align 8, !tbaa !35
  store i32 0, ptr %12, align 8, !tbaa !17
  %102 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %102, align 8, !tbaa !36
  %103 = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i32 0, ptr %103, align 8, !tbaa !37
  br label %104

104:                                              ; preds = %99, %82, %70, %63, %59, %57, %34, %6, %2
  %105 = phi ptr [ null, %63 ], [ null, %2 ], [ null, %34 ], [ null, %57 ], [ null, %59 ], [ null, %70 ], [ null, %82 ], [ %7, %99 ], [ null, %6 ]
  ret ptr %105
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @gzopen64(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %104, label %6

6:                                                ; preds = %2
  %7 = tail call noalias dereferenceable_or_null(248) ptr @malloc(i64 noundef 248) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %104, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 0, ptr %10, align 8, !tbaa !8
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 8192, ptr %11, align 4, !tbaa !16
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 120
  store i32 0, ptr %12, align 8, !tbaa !17
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr null, ptr %13, align 8, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 0, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i32 -1, ptr %15, align 8, !tbaa !20
  %16 = getelementptr inbounds nuw i8, ptr %7, i64 100
  store i32 0, ptr %16, align 4, !tbaa !21
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %17, align 8, !tbaa !22
  %18 = load i8, ptr %1, align 1, !tbaa !23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %57, label %.preheader

.preheader:                                       ; preds = %9, %46
  %20 = phi i32 [ %47, %46 ], [ 0, %9 ]
  %21 = phi i32 [ %48, %46 ], [ 0, %9 ]
  %22 = phi i8 [ %52, %46 ], [ %18, %9 ]
  %23 = phi i32 [ %50, %46 ], [ 0, %9 ]
  %24 = phi i32 [ %49, %46 ], [ 0, %9 ]
  %25 = phi ptr [ %51, %46 ], [ %1, %9 ]
  %26 = add i8 %22, -48
  %27 = icmp ult i8 %26, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %.preheader
  %29 = zext nneg i8 %26 to i32
  store i32 %29, ptr %15, align 8, !tbaa !20
  br label %46

30:                                               ; preds = %.preheader
  switch i8 %22, label %46 [
    i8 114, label %31
    i8 119, label %32
    i8 97, label %33
    i8 43, label %34
    i8 84, label %45
    i8 101, label %35
    i8 120, label %37
    i8 102, label %38
    i8 104, label %39
    i8 82, label %40
    i8 70, label %41
    i8 71, label %42
    i8 78, label %43
  ]

31:                                               ; preds = %30
  store i32 7247, ptr %14, align 8, !tbaa !19
  br label %46

32:                                               ; preds = %30
  store i32 31153, ptr %14, align 8, !tbaa !19
  br label %46

33:                                               ; preds = %30
  store i32 1, ptr %14, align 8, !tbaa !19
  br label %46

34:                                               ; preds = %30
  tail call void @free(ptr noundef %7) #16
  br label %104

35:                                               ; preds = %30
  %36 = or i32 %24, 524288
  br label %46

37:                                               ; preds = %30
  br label %46

38:                                               ; preds = %30
  store i32 1, ptr %16, align 4, !tbaa !21
  br label %46

39:                                               ; preds = %30
  store i32 2, ptr %16, align 4, !tbaa !21
  br label %46

40:                                               ; preds = %30
  store i32 3, ptr %16, align 4, !tbaa !21
  br label %46

41:                                               ; preds = %30
  store i32 4, ptr %16, align 4, !tbaa !21
  br label %46

42:                                               ; preds = %30
  store i32 -1, ptr %17, align 8, !tbaa !22
  br label %46

43:                                               ; preds = %30
  %44 = or i32 %24, 2048
  br label %46

45:                                               ; preds = %30
  store i32 1, ptr %17, align 8, !tbaa !22
  br label %46

46:                                               ; preds = %45, %43, %42, %41, %40, %39, %38, %37, %35, %33, %32, %31, %30, %28
  %47 = phi i32 [ %20, %28 ], [ %20, %30 ], [ %20, %31 ], [ %20, %32 ], [ %20, %33 ], [ 1, %45 ], [ %20, %35 ], [ %20, %37 ], [ %20, %38 ], [ %20, %39 ], [ %20, %40 ], [ %20, %41 ], [ -1, %42 ], [ %20, %43 ]
  %48 = phi i32 [ %21, %28 ], [ %21, %30 ], [ 7247, %31 ], [ 31153, %32 ], [ 1, %33 ], [ %21, %45 ], [ %21, %35 ], [ %21, %37 ], [ %21, %38 ], [ %21, %39 ], [ %21, %40 ], [ %21, %41 ], [ %21, %42 ], [ %21, %43 ]
  %49 = phi i32 [ %24, %28 ], [ %24, %30 ], [ %24, %31 ], [ %24, %32 ], [ %24, %33 ], [ %24, %45 ], [ %36, %35 ], [ %24, %37 ], [ %24, %38 ], [ %24, %39 ], [ %24, %40 ], [ %24, %41 ], [ %24, %42 ], [ %44, %43 ]
  %50 = phi i32 [ %23, %28 ], [ %23, %30 ], [ %23, %31 ], [ %23, %32 ], [ %23, %33 ], [ %23, %45 ], [ %23, %35 ], [ 1, %37 ], [ %23, %38 ], [ %23, %39 ], [ %23, %40 ], [ %23, %41 ], [ %23, %42 ], [ %23, %43 ]
  %51 = getelementptr inbounds nuw i8, ptr %25, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !23
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %.preheader, !llvm.loop !24

54:                                               ; preds = %46
  %55 = icmp eq i32 %50, 0
  %56 = select i1 %55, i32 65, i32 193
  switch i32 %48, label %61 [
    i32 0, label %57
    i32 7247, label %58
  ]

57:                                               ; preds = %54, %9
  tail call void @free(ptr noundef nonnull %7) #16
  br label %104

58:                                               ; preds = %54
  switch i32 %47, label %64 [
    i32 1, label %59
    i32 0, label %60
  ]

59:                                               ; preds = %58
  tail call void @free(ptr noundef nonnull %7) #16
  br label %104

60:                                               ; preds = %58
  store i32 1, ptr %17, align 8, !tbaa !22
  br label %64

61:                                               ; preds = %54
  %62 = icmp eq i32 %47, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  tail call void @free(ptr noundef nonnull %7) #16
  br label %104

64:                                               ; preds = %61, %60, %58
  %65 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %66 = add i64 %65, 1
  %67 = tail call noalias ptr @malloc(i64 noundef %66) #15
  %68 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %67, ptr %68, align 8, !tbaa !26
  %69 = icmp eq ptr %67, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  tail call void @free(ptr noundef nonnull %7) #16
  br label %104

71:                                               ; preds = %64
  %72 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %67, i64 noundef %66, ptr noundef nonnull @.str.5, ptr noundef nonnull %0) #16
  %73 = icmp eq i32 %48, 7247
  %74 = icmp eq i32 %48, 31153
  %75 = select i1 %74, i32 512, i32 1024
  %76 = or disjoint i32 %56, %75
  %77 = select i1 %73, i32 0, i32 %76
  %78 = or i32 %77, %49
  %79 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %78, i32 noundef 438) #16
  %80 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %79, ptr %80, align 4, !tbaa !27
  %81 = icmp eq i32 %79, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  tail call void @free(ptr noundef nonnull %67) #16
  tail call void @free(ptr noundef nonnull %7) #16
  br label %104

83:                                               ; preds = %71
  %84 = icmp eq i32 %48, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %83
  %86 = tail call i64 @lseek64(i32 noundef %79, i64 noundef 0, i32 noundef 2) #16
  store i32 31153, ptr %14, align 8, !tbaa !19
  br label %97

87:                                               ; preds = %83
  br i1 %73, label %88, label %97

88:                                               ; preds = %87
  %89 = tail call i64 @lseek64(i32 noundef %79, i64 noundef 0, i32 noundef 1) #16
  %90 = getelementptr inbounds nuw i8, ptr %7, i64 80
  %91 = icmp eq i64 %89, -1
  %92 = select i1 %91, i64 0, i64 %89
  store i64 %92, ptr %90, align 8
  store i32 0, ptr %7, align 8, !tbaa !28
  %93 = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i32 0, ptr %93, align 8, !tbaa !29
  %94 = getelementptr inbounds nuw i8, ptr %7, i64 92
  store i32 0, ptr %94, align 4, !tbaa !30
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 0, ptr %95, align 8, !tbaa !31
  %96 = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i32 -1, ptr %96, align 4, !tbaa !32
  br label %99

97:                                               ; preds = %87, %85
  store i32 0, ptr %7, align 8, !tbaa !28
  %98 = getelementptr inbounds nuw i8, ptr %7, i64 104
  store i32 0, ptr %98, align 8, !tbaa !33
  br label %99

99:                                               ; preds = %97, %88
  %100 = getelementptr inbounds nuw i8, ptr %7, i64 76
  store i32 0, ptr %100, align 4, !tbaa !34
  %101 = getelementptr inbounds nuw i8, ptr %7, i64 112
  store i64 0, ptr %101, align 8, !tbaa !35
  store i32 0, ptr %12, align 8, !tbaa !17
  %102 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %102, align 8, !tbaa !36
  %103 = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i32 0, ptr %103, align 8, !tbaa !37
  br label %104

104:                                              ; preds = %99, %82, %70, %63, %59, %57, %34, %6, %2
  %105 = phi ptr [ null, %63 ], [ null, %2 ], [ null, %34 ], [ null, %57 ], [ null, %59 ], [ null, %70 ], [ null, %82 ], [ %7, %99 ], [ null, %6 ]
  ret ptr %105
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @gzdopen(i32 noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, -1
  br i1 %3, label %107, label %4

4:                                                ; preds = %2
  %5 = tail call noalias dereferenceable_or_null(19) ptr @malloc(i64 noundef 19) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %107, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %5, i64 noundef 19, ptr noundef nonnull @.str, i32 noundef %0) #16
  %9 = icmp eq ptr %1, null
  br i1 %9, label %105, label %10

10:                                               ; preds = %7
  %11 = tail call noalias dereferenceable_or_null(248) ptr @malloc(i64 noundef 248) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %105, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 0, ptr %14, align 8, !tbaa !8
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 8192, ptr %15, align 4, !tbaa !16
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 120
  store i32 0, ptr %16, align 8, !tbaa !17
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr null, ptr %17, align 8, !tbaa !18
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 0, ptr %18, align 8, !tbaa !19
  %19 = getelementptr inbounds nuw i8, ptr %11, i64 96
  store i32 -1, ptr %19, align 8, !tbaa !20
  %20 = getelementptr inbounds nuw i8, ptr %11, i64 100
  store i32 0, ptr %20, align 4, !tbaa !21
  %21 = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 0, ptr %21, align 8, !tbaa !22
  %22 = load i8, ptr %1, align 1, !tbaa !23
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %56, label %.preheader

.preheader:                                       ; preds = %13, %48
  %24 = phi i32 [ %49, %48 ], [ 0, %13 ]
  %25 = phi i32 [ %50, %48 ], [ 0, %13 ]
  %26 = phi i8 [ %53, %48 ], [ %22, %13 ]
  %27 = phi i32 [ %51, %48 ], [ 0, %13 ]
  %28 = phi ptr [ %52, %48 ], [ %1, %13 ]
  %29 = add i8 %26, -48
  %30 = icmp ult i8 %29, 10
  br i1 %30, label %31, label %33

31:                                               ; preds = %.preheader
  %32 = zext nneg i8 %29 to i32
  store i32 %32, ptr %19, align 8, !tbaa !20
  br label %48

33:                                               ; preds = %.preheader
  switch i8 %26, label %48 [
    i8 114, label %34
    i8 119, label %35
    i8 97, label %36
    i8 43, label %37
    i8 84, label %47
    i8 101, label %38
    i8 78, label %45
    i8 102, label %40
    i8 104, label %41
    i8 82, label %42
    i8 70, label %43
    i8 71, label %44
  ]

34:                                               ; preds = %33
  store i32 7247, ptr %18, align 8, !tbaa !19
  br label %48

35:                                               ; preds = %33
  store i32 31153, ptr %18, align 8, !tbaa !19
  br label %48

36:                                               ; preds = %33
  store i32 1, ptr %18, align 8, !tbaa !19
  br label %48

37:                                               ; preds = %33
  tail call void @free(ptr noundef %11) #16
  br label %105

38:                                               ; preds = %33
  %39 = or i32 %27, 524288
  br label %48

40:                                               ; preds = %33
  store i32 1, ptr %20, align 4, !tbaa !21
  br label %48

41:                                               ; preds = %33
  store i32 2, ptr %20, align 4, !tbaa !21
  br label %48

42:                                               ; preds = %33
  store i32 3, ptr %20, align 4, !tbaa !21
  br label %48

43:                                               ; preds = %33
  store i32 4, ptr %20, align 4, !tbaa !21
  br label %48

44:                                               ; preds = %33
  store i32 -1, ptr %21, align 8, !tbaa !22
  br label %48

45:                                               ; preds = %33
  %46 = or i32 %27, 2048
  br label %48

47:                                               ; preds = %33
  store i32 1, ptr %21, align 8, !tbaa !22
  br label %48

48:                                               ; preds = %47, %45, %44, %43, %42, %41, %40, %38, %36, %35, %34, %33, %31
  %49 = phi i32 [ %24, %31 ], [ %24, %33 ], [ %24, %34 ], [ %24, %35 ], [ %24, %36 ], [ 1, %47 ], [ %24, %38 ], [ %24, %45 ], [ %24, %40 ], [ %24, %41 ], [ %24, %42 ], [ %24, %43 ], [ -1, %44 ]
  %50 = phi i32 [ %25, %31 ], [ %25, %33 ], [ 7247, %34 ], [ 31153, %35 ], [ 1, %36 ], [ %25, %47 ], [ %25, %38 ], [ %25, %45 ], [ %25, %40 ], [ %25, %41 ], [ %25, %42 ], [ %25, %43 ], [ %25, %44 ]
  %51 = phi i32 [ %27, %31 ], [ %27, %33 ], [ %27, %34 ], [ %27, %35 ], [ %27, %36 ], [ %27, %47 ], [ %39, %38 ], [ %46, %45 ], [ %27, %40 ], [ %27, %41 ], [ %27, %42 ], [ %27, %43 ], [ %27, %44 ]
  %52 = getelementptr inbounds nuw i8, ptr %28, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !23
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %.preheader, !llvm.loop !24

55:                                               ; preds = %48
  switch i32 %50, label %60 [
    i32 0, label %56
    i32 7247, label %57
  ]

56:                                               ; preds = %55, %13
  tail call void @free(ptr noundef nonnull %11) #16
  br label %105

57:                                               ; preds = %55
  switch i32 %49, label %63 [
    i32 1, label %58
    i32 0, label %59
  ]

58:                                               ; preds = %57
  tail call void @free(ptr noundef nonnull %11) #16
  br label %105

59:                                               ; preds = %57
  store i32 1, ptr %21, align 8, !tbaa !22
  br label %63

60:                                               ; preds = %55
  %61 = icmp eq i32 %49, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  tail call void @free(ptr noundef nonnull %11) #16
  br label %105

63:                                               ; preds = %60, %59, %57
  %64 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #17
  %65 = add i64 %64, 1
  %66 = tail call noalias ptr @malloc(i64 noundef %65) #15
  %67 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %66, ptr %67, align 8, !tbaa !26
  %68 = icmp eq ptr %66, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  tail call void @free(ptr noundef nonnull %11) #16
  br label %105

70:                                               ; preds = %63
  %71 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %66, i64 noundef %65, ptr noundef nonnull @.str.5, ptr noundef nonnull %5) #16
  %72 = and i32 %51, 2048
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 3) #16
  %76 = or i32 %75, 2048
  %77 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 4, i32 noundef %76) #16
  br label %78

78:                                               ; preds = %74, %70
  %79 = and i32 %51, 524288
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1) #16
  %83 = or i32 %82, 524288
  %84 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 2, i32 noundef %83) #16
  br label %85

85:                                               ; preds = %81, %78
  %86 = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i32 %0, ptr %86, align 4, !tbaa !27
  switch i32 %50, label %98 [
    i32 1, label %87
    i32 7247, label %89
  ]

87:                                               ; preds = %85
  %88 = tail call i64 @lseek64(i32 noundef %0, i64 noundef 0, i32 noundef 2) #16
  store i32 31153, ptr %18, align 8, !tbaa !19
  br label %98

89:                                               ; preds = %85
  %90 = tail call i64 @lseek64(i32 noundef %0, i64 noundef 0, i32 noundef 1) #16
  %91 = getelementptr inbounds nuw i8, ptr %11, i64 80
  %92 = icmp eq i64 %90, -1
  %93 = select i1 %92, i64 0, i64 %90
  store i64 %93, ptr %91, align 8
  store i32 0, ptr %11, align 8, !tbaa !28
  %94 = getelementptr inbounds nuw i8, ptr %11, i64 88
  store i32 0, ptr %94, align 8, !tbaa !29
  %95 = getelementptr inbounds nuw i8, ptr %11, i64 92
  store i32 0, ptr %95, align 4, !tbaa !30
  %96 = getelementptr inbounds nuw i8, ptr %11, i64 72
  store i32 0, ptr %96, align 8, !tbaa !31
  %97 = getelementptr inbounds nuw i8, ptr %11, i64 68
  store i32 -1, ptr %97, align 4, !tbaa !32
  br label %100

98:                                               ; preds = %87, %85
  store i32 0, ptr %11, align 8, !tbaa !28
  %99 = getelementptr inbounds nuw i8, ptr %11, i64 104
  store i32 0, ptr %99, align 8, !tbaa !33
  br label %100

100:                                              ; preds = %98, %89
  %101 = getelementptr inbounds nuw i8, ptr %11, i64 76
  store i32 0, ptr %101, align 4, !tbaa !34
  %102 = getelementptr inbounds nuw i8, ptr %11, i64 112
  store i64 0, ptr %102, align 8, !tbaa !35
  store i32 0, ptr %16, align 8, !tbaa !17
  %103 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %103, align 8, !tbaa !36
  %104 = getelementptr inbounds nuw i8, ptr %11, i64 144
  store i32 0, ptr %104, align 8, !tbaa !37
  br label %105

105:                                              ; preds = %100, %69, %62, %58, %56, %37, %10, %7
  %106 = phi ptr [ null, %62 ], [ null, %7 ], [ null, %37 ], [ null, %56 ], [ null, %58 ], [ null, %69 ], [ null, %10 ], [ %11, %100 ]
  tail call void @free(ptr noundef %5) #16
  br label %107

107:                                              ; preds = %105, %4, %2
  %108 = phi ptr [ %106, %105 ], [ null, %4 ], [ null, %2 ]
  ret ptr %108
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @gzbuffer(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !19
  switch i32 %6, label %16 [
    i32 7247, label %7
    i32 31153, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %9 = load i32, ptr %8, align 8, !tbaa !8
  %10 = icmp ne i32 %9, 0
  %11 = icmp slt i32 %1, 0
  %12 = or i1 %11, %10
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @llvm.umax.i32(i32 %1, i32 8)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %14, ptr %15, align 4, !tbaa !16
  br label %16

16:                                               ; preds = %13, %7, %4, %2
  %17 = phi i32 [ 0, %13 ], [ -1, %2 ], [ -1, %4 ], [ -1, %7 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @gzrewind(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !19
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %41

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %9 = load i32, ptr %8, align 8, !tbaa !17
  switch i32 %9, label %41 [
    i32 0, label %10
    i32 -5, label %10
  ]

10:                                               ; preds = %7, %7
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %12 = load i32, ptr %11, align 4, !tbaa !27
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %14 = load i64, ptr %13, align 8, !tbaa !38
  %15 = tail call i64 @lseek64(i32 noundef %12, i64 noundef %14, i32 noundef 0) #16
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %41, label %17

17:                                               ; preds = %10
  store i32 0, ptr %0, align 8, !tbaa !28
  %18 = load i32, ptr %4, align 8, !tbaa !19
  %19 = icmp eq i32 %18, 7247
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %21, align 8, !tbaa !29
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %22, align 4, !tbaa !30
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %23, align 8, !tbaa !31
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 -1, ptr %24, align 4, !tbaa !32
  br label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %26, align 8, !tbaa !33
  br label %27

27:                                               ; preds = %25, %20
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %29, align 8, !tbaa !35
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %31 = load ptr, ptr %30, align 8, !tbaa !18
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %8, align 8, !tbaa !17
  %35 = icmp eq i32 %34, -4
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @free(ptr noundef nonnull %31) #16
  br label %37

37:                                               ; preds = %36, %33
  store ptr null, ptr %30, align 8, !tbaa !18
  br label %38

38:                                               ; preds = %37, %27
  store i32 0, ptr %8, align 8, !tbaa !17
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %39, align 8, !tbaa !36
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %40, align 8, !tbaa !37
  br label %41

41:                                               ; preds = %38, %10, %7, %3, %1
  %42 = phi i32 [ 0, %38 ], [ -1, %1 ], [ -1, %3 ], [ -1, %7 ], [ -1, %10 ]
  ret i32 %42
}

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @gzseek64(ptr noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %128, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !19
  switch i32 %7, label %128 [
    i32 7247, label %8
    i32 31153, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !17
  switch i32 %10, label %128 [
    i32 0, label %11
    i32 -5, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = icmp ugt i32 %2, 1
  br i1 %12, label %128, label %13

13:                                               ; preds = %11
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i64, ptr %16, align 8, !tbaa !36
  %18 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1, i64 %17), !nosanitize !39
  %19 = extractvalue { i64, i1 } %18, 1, !nosanitize !39
  br i1 %19, label %20, label %35, !prof !40, !nosanitize !39

20:                                               ; preds = %51, %15
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !39
  unreachable, !nosanitize !39

21:                                               ; preds = %13
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %23 = load i32, ptr %22, align 4, !tbaa !30
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %27 = load i64, ptr %26, align 8, !tbaa !35
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i64 [ %27, %25 ], [ 0, %21 ]
  %30 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1, i64 %29), !nosanitize !39
  %31 = extractvalue { i64, i1 } %30, 1, !nosanitize !39
  br i1 %31, label %32, label %33, !prof !40, !nosanitize !39

32:                                               ; preds = %120, %103, %85, %74, %43, %28
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !39
  unreachable, !nosanitize !39

33:                                               ; preds = %28
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %34, align 8, !tbaa !35
  br label %35

35:                                               ; preds = %33, %15
  %36 = phi { i64, i1 } [ %30, %33 ], [ %18, %15 ]
  %37 = extractvalue { i64, i1 } %36, 0
  %38 = icmp eq i32 %7, 7247
  br i1 %38, label %39, label %83

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %41 = load i32, ptr %40, align 8, !tbaa !31
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %81

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %45 = load i64, ptr %44, align 8, !tbaa !36
  %46 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %45, i64 %37), !nosanitize !39
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !39
  br i1 %47, label %32, label %48, !prof !40, !nosanitize !39

48:                                               ; preds = %43
  %49 = extractvalue { i64, i1 } %46, 0, !nosanitize !39
  %50 = icmp sgt i64 %49, -1
  br i1 %50, label %51, label %81

51:                                               ; preds = %48
  %52 = load i32, ptr %0, align 8, !tbaa !28
  %53 = zext i32 %52 to i64
  %54 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %37, i64 %53), !nosanitize !39
  %55 = extractvalue { i64, i1 } %54, 1, !nosanitize !39
  br i1 %55, label %20, label %56, !prof !40, !nosanitize !39

56:                                               ; preds = %51
  %57 = extractvalue { i64, i1 } %54, 0, !nosanitize !39
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %59 = load i32, ptr %58, align 4, !tbaa !27
  %60 = tail call i64 @lseek64(i32 noundef %59, i64 noundef %57, i32 noundef 1) #16
  %61 = icmp eq i64 %60, -1
  br i1 %61, label %128, label %62

62:                                               ; preds = %56
  store i32 0, ptr %0, align 8, !tbaa !28
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %63, align 8, !tbaa !29
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %64, align 4, !tbaa !30
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %65, align 8, !tbaa !35
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %67 = load ptr, ptr %66, align 8, !tbaa !18
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %62
  %70 = load i32, ptr %9, align 8, !tbaa !17
  %71 = icmp eq i32 %70, -4
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @free(ptr noundef nonnull %67) #16
  br label %73

73:                                               ; preds = %72, %69
  store ptr null, ptr %66, align 8, !tbaa !18
  br label %74

74:                                               ; preds = %73, %62
  store i32 0, ptr %9, align 8, !tbaa !17
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %75, align 8, !tbaa !37
  %76 = load i64, ptr %44, align 8, !tbaa !36
  %77 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %76, i64 %37), !nosanitize !39
  %78 = extractvalue { i64, i1 } %77, 1, !nosanitize !39
  br i1 %78, label %32, label %79, !prof !40, !nosanitize !39

79:                                               ; preds = %74
  %80 = extractvalue { i64, i1 } %77, 0, !nosanitize !39
  store i64 %80, ptr %44, align 8, !tbaa !36
  br label %128

81:                                               ; preds = %48, %39
  %82 = icmp slt i64 %37, 0
  br i1 %82, label %85, label %103

83:                                               ; preds = %35
  %84 = icmp slt i64 %37, 0
  br i1 %84, label %128, label %99

85:                                               ; preds = %81
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %87 = load i64, ptr %86, align 8, !tbaa !36
  %88 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %37, i64 %87), !nosanitize !39
  %89 = extractvalue { i64, i1 } %88, 0, !nosanitize !39
  %90 = extractvalue { i64, i1 } %88, 1, !nosanitize !39
  br i1 %90, label %32, label %91, !prof !40, !nosanitize !39

91:                                               ; preds = %85
  %92 = icmp slt i64 %89, 0
  br i1 %92, label %128, label %93

93:                                               ; preds = %91
  %94 = tail call i32 @gzrewind(ptr noundef nonnull %0)
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %128, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %6, align 8, !tbaa !19
  %98 = icmp eq i32 %97, 7247
  br i1 %98, label %103, label %99

99:                                               ; preds = %96, %83
  %100 = phi i64 [ %89, %96 ], [ %37, %83 ]
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %102 = load i64, ptr %101, align 8, !tbaa !36
  br label %120

103:                                              ; preds = %96, %81
  %104 = phi i64 [ %89, %96 ], [ %37, %81 ]
  %105 = load i32, ptr %0, align 8, !tbaa !28
  %106 = zext i32 %105 to i64
  %107 = tail call i64 @llvm.umin.i64(i64 %104, i64 %106)
  %108 = trunc nuw i64 %107 to i32
  %109 = sub i32 %105, %108
  store i32 %109, ptr %0, align 8, !tbaa !28
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %111 = load ptr, ptr %110, align 8, !tbaa !41
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 %107
  store ptr %112, ptr %110, align 8, !tbaa !41
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %114 = load i64, ptr %113, align 8, !tbaa !36
  %115 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %114, i64 %107), !nosanitize !39
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !39
  br i1 %116, label %32, label %117, !prof !40, !nosanitize !39

117:                                              ; preds = %103
  %118 = extractvalue { i64, i1 } %115, 0, !nosanitize !39
  store i64 %118, ptr %113, align 8, !tbaa !36
  %119 = sub nsw i64 %104, %107
  br label %120

120:                                              ; preds = %117, %99
  %121 = phi i64 [ %118, %117 ], [ %102, %99 ]
  %122 = phi i64 [ %119, %117 ], [ %100, %99 ]
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %122, ptr %123, align 8, !tbaa !35
  %124 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %121, i64 %122), !nosanitize !39
  %125 = extractvalue { i64, i1 } %124, 1, !nosanitize !39
  br i1 %125, label %32, label %126, !prof !40, !nosanitize !39

126:                                              ; preds = %120
  %127 = extractvalue { i64, i1 } %124, 0, !nosanitize !39
  br label %128

128:                                              ; preds = %126, %93, %91, %83, %79, %56, %11, %8, %5, %3
  %129 = phi i64 [ %127, %126 ], [ -1, %3 ], [ -1, %5 ], [ -1, %8 ], [ -1, %11 ], [ %80, %79 ], [ -1, %56 ], [ -1, %83 ], [ -1, %91 ], [ -1, %93 ]
  ret i64 %129
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #7

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #6

; Function Attrs: nounwind uwtable
define dso_local void @gz_error(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %9 = load i32, ptr %8, align 8, !tbaa !17
  %10 = icmp eq i32 %9, -4
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %5) #16
  br label %12

12:                                               ; preds = %11, %7
  store ptr null, ptr %4, align 8, !tbaa !18
  br label %13

13:                                               ; preds = %12, %3
  switch i32 %1, label %14 [
    i32 -5, label %19
    i32 0, label %19
  ]

14:                                               ; preds = %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !34
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, ptr %0, align 8, !tbaa !28
  br label %19

19:                                               ; preds = %18, %14, %13, %13
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %1, ptr %20, align 8, !tbaa !17
  %21 = icmp eq ptr %2, null
  %22 = icmp eq i32 %1, -4
  %23 = or i1 %22, %21
  br i1 %23, label %40, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !26
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #17
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #17
  %29 = add i64 %27, 3
  %30 = add i64 %29, %28
  %31 = tail call noalias ptr @malloc(i64 noundef %30) #15
  store ptr %31, ptr %4, align 8, !tbaa !18
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 -4, ptr %20, align 8, !tbaa !17
  br label %40

34:                                               ; preds = %24
  %35 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #17
  %36 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #17
  %37 = add i64 %35, 3
  %38 = add i64 %37, %36
  %39 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %31, i64 noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull %26, ptr noundef nonnull @.str.4, ptr noundef nonnull %2) #16
  br label %40

40:                                               ; preds = %34, %33, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gzseek(ptr noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %128, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !19
  switch i32 %7, label %128 [
    i32 7247, label %8
    i32 31153, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !17
  switch i32 %10, label %128 [
    i32 0, label %11
    i32 -5, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = icmp ugt i32 %2, 1
  br i1 %12, label %128, label %13

13:                                               ; preds = %11
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i64, ptr %16, align 8, !tbaa !36
  %18 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1, i64 %17), !nosanitize !39
  %19 = extractvalue { i64, i1 } %18, 1, !nosanitize !39
  br i1 %19, label %20, label %35, !prof !40, !nosanitize !39

20:                                               ; preds = %51, %15
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !39
  unreachable, !nosanitize !39

21:                                               ; preds = %13
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %23 = load i32, ptr %22, align 4, !tbaa !30
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %27 = load i64, ptr %26, align 8, !tbaa !35
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i64 [ %27, %25 ], [ 0, %21 ]
  %30 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1, i64 %29), !nosanitize !39
  %31 = extractvalue { i64, i1 } %30, 1, !nosanitize !39
  br i1 %31, label %32, label %33, !prof !40, !nosanitize !39

32:                                               ; preds = %120, %103, %85, %74, %43, %28
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !39
  unreachable, !nosanitize !39

33:                                               ; preds = %28
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %34, align 8, !tbaa !35
  br label %35

35:                                               ; preds = %33, %15
  %36 = phi { i64, i1 } [ %30, %33 ], [ %18, %15 ]
  %37 = extractvalue { i64, i1 } %36, 0
  %38 = icmp eq i32 %7, 7247
  br i1 %38, label %39, label %83

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %41 = load i32, ptr %40, align 8, !tbaa !31
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %81

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %45 = load i64, ptr %44, align 8, !tbaa !36
  %46 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %45, i64 %37), !nosanitize !39
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !39
  br i1 %47, label %32, label %48, !prof !40, !nosanitize !39

48:                                               ; preds = %43
  %49 = extractvalue { i64, i1 } %46, 0, !nosanitize !39
  %50 = icmp sgt i64 %49, -1
  br i1 %50, label %51, label %81

51:                                               ; preds = %48
  %52 = load i32, ptr %0, align 8, !tbaa !28
  %53 = zext i32 %52 to i64
  %54 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %37, i64 %53), !nosanitize !39
  %55 = extractvalue { i64, i1 } %54, 1, !nosanitize !39
  br i1 %55, label %20, label %56, !prof !40, !nosanitize !39

56:                                               ; preds = %51
  %57 = extractvalue { i64, i1 } %54, 0, !nosanitize !39
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %59 = load i32, ptr %58, align 4, !tbaa !27
  %60 = tail call i64 @lseek64(i32 noundef %59, i64 noundef %57, i32 noundef 1) #16
  %61 = icmp eq i64 %60, -1
  br i1 %61, label %128, label %62

62:                                               ; preds = %56
  store i32 0, ptr %0, align 8, !tbaa !28
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %63, align 8, !tbaa !29
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %64, align 4, !tbaa !30
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %65, align 8, !tbaa !35
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %67 = load ptr, ptr %66, align 8, !tbaa !18
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %62
  %70 = load i32, ptr %9, align 8, !tbaa !17
  %71 = icmp eq i32 %70, -4
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @free(ptr noundef nonnull %67) #16
  br label %73

73:                                               ; preds = %72, %69
  store ptr null, ptr %66, align 8, !tbaa !18
  br label %74

74:                                               ; preds = %73, %62
  store i32 0, ptr %9, align 8, !tbaa !17
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %75, align 8, !tbaa !37
  %76 = load i64, ptr %44, align 8, !tbaa !36
  %77 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %76, i64 %37), !nosanitize !39
  %78 = extractvalue { i64, i1 } %77, 1, !nosanitize !39
  br i1 %78, label %32, label %79, !prof !40, !nosanitize !39

79:                                               ; preds = %74
  %80 = extractvalue { i64, i1 } %77, 0, !nosanitize !39
  store i64 %80, ptr %44, align 8, !tbaa !36
  br label %128

81:                                               ; preds = %48, %39
  %82 = icmp slt i64 %37, 0
  br i1 %82, label %85, label %103

83:                                               ; preds = %35
  %84 = icmp slt i64 %37, 0
  br i1 %84, label %128, label %99

85:                                               ; preds = %81
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %87 = load i64, ptr %86, align 8, !tbaa !36
  %88 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %37, i64 %87), !nosanitize !39
  %89 = extractvalue { i64, i1 } %88, 0, !nosanitize !39
  %90 = extractvalue { i64, i1 } %88, 1, !nosanitize !39
  br i1 %90, label %32, label %91, !prof !40, !nosanitize !39

91:                                               ; preds = %85
  %92 = icmp slt i64 %89, 0
  br i1 %92, label %128, label %93

93:                                               ; preds = %91
  %94 = tail call i32 @gzrewind(ptr noundef nonnull %0)
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %128, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %6, align 8, !tbaa !19
  %98 = icmp eq i32 %97, 7247
  br i1 %98, label %103, label %99

99:                                               ; preds = %96, %83
  %100 = phi i64 [ %89, %96 ], [ %37, %83 ]
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %102 = load i64, ptr %101, align 8, !tbaa !36
  br label %120

103:                                              ; preds = %96, %81
  %104 = phi i64 [ %89, %96 ], [ %37, %81 ]
  %105 = load i32, ptr %0, align 8, !tbaa !28
  %106 = zext i32 %105 to i64
  %107 = tail call i64 @llvm.umin.i64(i64 %104, i64 %106)
  %108 = trunc nuw i64 %107 to i32
  %109 = sub i32 %105, %108
  store i32 %109, ptr %0, align 8, !tbaa !28
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %111 = load ptr, ptr %110, align 8, !tbaa !41
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 %107
  store ptr %112, ptr %110, align 8, !tbaa !41
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %114 = load i64, ptr %113, align 8, !tbaa !36
  %115 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %114, i64 %107), !nosanitize !39
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !39
  br i1 %116, label %32, label %117, !prof !40, !nosanitize !39

117:                                              ; preds = %103
  %118 = extractvalue { i64, i1 } %115, 0, !nosanitize !39
  store i64 %118, ptr %113, align 8, !tbaa !36
  %119 = sub nsw i64 %104, %107
  br label %120

120:                                              ; preds = %117, %99
  %121 = phi i64 [ %118, %117 ], [ %102, %99 ]
  %122 = phi i64 [ %119, %117 ], [ %100, %99 ]
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %122, ptr %123, align 8, !tbaa !35
  %124 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %121, i64 %122), !nosanitize !39
  %125 = extractvalue { i64, i1 } %124, 1, !nosanitize !39
  br i1 %125, label %32, label %126, !prof !40, !nosanitize !39

126:                                              ; preds = %120
  %127 = extractvalue { i64, i1 } %124, 0, !nosanitize !39
  br label %128

128:                                              ; preds = %126, %93, %91, %83, %79, %56, %11, %8, %5, %3
  %129 = phi i64 [ %127, %126 ], [ -1, %3 ], [ -1, %5 ], [ -1, %8 ], [ -1, %11 ], [ %80, %79 ], [ -1, %56 ], [ -1, %83 ], [ -1, %91 ], [ -1, %93 ]
  ret i64 %129
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @gztell64(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !19
  switch i32 %5, label %22 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %7, align 8, !tbaa !36
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %10 = load i32, ptr %9, align 4, !tbaa !30
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %14 = load i64, ptr %13, align 8, !tbaa !35
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi i64 [ %14, %12 ], [ 0, %6 ]
  %17 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %8, i64 %16), !nosanitize !39
  %18 = extractvalue { i64, i1 } %17, 1, !nosanitize !39
  br i1 %18, label %19, label %20, !prof !40, !nosanitize !39

19:                                               ; preds = %15
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !39
  unreachable, !nosanitize !39

20:                                               ; preds = %15
  %21 = extractvalue { i64, i1 } %17, 0, !nosanitize !39
  br label %22

22:                                               ; preds = %20, %3, %1
  %23 = phi i64 [ %21, %20 ], [ -1, %1 ], [ -1, %3 ]
  ret i64 %23
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @gztell(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !19
  switch i32 %5, label %22 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %7, align 8, !tbaa !36
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %10 = load i32, ptr %9, align 4, !tbaa !30
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %14 = load i64, ptr %13, align 8, !tbaa !35
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi i64 [ %14, %12 ], [ 0, %6 ]
  %17 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %8, i64 %16), !nosanitize !39
  %18 = extractvalue { i64, i1 } %17, 1, !nosanitize !39
  br i1 %18, label %19, label %20, !prof !40, !nosanitize !39

19:                                               ; preds = %15
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !39
  unreachable, !nosanitize !39

20:                                               ; preds = %15
  %21 = extractvalue { i64, i1 } %17, 0, !nosanitize !39
  br label %22

22:                                               ; preds = %20, %3, %1
  %23 = phi i64 [ %21, %20 ], [ -1, %1 ], [ -1, %3 ]
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gzoffset64(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !19
  switch i32 %5, label %23 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %8 = load i32, ptr %7, align 4, !tbaa !27
  %9 = tail call i64 @lseek64(i32 noundef %8, i64 noundef 0, i32 noundef 1) #16
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %4, align 8, !tbaa !19
  %13 = icmp eq i32 %12, 7247
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %16 = load i32, ptr %15, align 8, !tbaa !37
  %17 = zext i32 %16 to i64
  %18 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %9, i64 %17), !nosanitize !39
  %19 = extractvalue { i64, i1 } %18, 1, !nosanitize !39
  br i1 %19, label %20, label %21, !prof !40, !nosanitize !39

20:                                               ; preds = %14
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !39
  unreachable, !nosanitize !39

21:                                               ; preds = %14
  %22 = extractvalue { i64, i1 } %18, 0, !nosanitize !39
  br label %23

23:                                               ; preds = %21, %11, %6, %3, %1
  %24 = phi i64 [ -1, %6 ], [ -1, %1 ], [ -1, %3 ], [ %22, %21 ], [ %9, %11 ]
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gzoffset(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !19
  switch i32 %5, label %23 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %8 = load i32, ptr %7, align 4, !tbaa !27
  %9 = tail call i64 @lseek64(i32 noundef %8, i64 noundef 0, i32 noundef 1) #16
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %4, align 8, !tbaa !19
  %13 = icmp eq i32 %12, 7247
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %16 = load i32, ptr %15, align 8, !tbaa !37
  %17 = zext i32 %16 to i64
  %18 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %9, i64 %17), !nosanitize !39
  %19 = extractvalue { i64, i1 } %18, 1, !nosanitize !39
  br i1 %19, label %20, label %21, !prof !40, !nosanitize !39

20:                                               ; preds = %14
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !39
  unreachable, !nosanitize !39

21:                                               ; preds = %14
  %22 = extractvalue { i64, i1 } %18, 0, !nosanitize !39
  br label %23

23:                                               ; preds = %21, %11, %6, %3, %1
  %24 = phi i64 [ -1, %6 ], [ -1, %1 ], [ -1, %3 ], [ %22, %21 ], [ %9, %11 ]
  ret i64 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gzeof(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !19
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %9 = load i32, ptr %8, align 4, !tbaa !30
  br label %10

10:                                               ; preds = %7, %3, %1
  %11 = phi i32 [ 0, %3 ], [ 0, %1 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @gzerror(ptr noundef readonly captures(address_is_null) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !19
  switch i32 %6, label %19 [
    i32 7247, label %7
    i32 31153, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !17
  br i1 %8, label %12, label %11

11:                                               ; preds = %7
  store i32 %10, ptr %1, align 4, !tbaa !4
  br label %12

12:                                               ; preds = %11, %7
  %13 = icmp eq i32 %10, -4
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @.str.2, ptr %16
  br label %19

19:                                               ; preds = %14, %12, %4, %2
  %20 = phi ptr [ null, %4 ], [ null, %2 ], [ @.str.1, %12 ], [ %18, %14 ]
  ret ptr %20
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @gzclearerr(ptr noundef captures(address_is_null) %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !19
  switch i32 %5, label %21 [
    i32 7247, label %6
    i32 31153, label %9
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %7, align 8, !tbaa !29
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %8, align 4, !tbaa !30
  br label %9

9:                                                ; preds = %6, %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %15 = load i32, ptr %14, align 8, !tbaa !17
  %16 = icmp eq i32 %15, -4
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %11) #16
  br label %18

18:                                               ; preds = %17, %13
  store ptr null, ptr %10, align 8, !tbaa !18
  br label %19

19:                                               ; preds = %18, %9
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %20, align 8, !tbaa !17
  br label %21

21:                                               ; preds = %19, %3, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gz_intmax() local_unnamed_addr #12 {
  ret i32 2147483647
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #13

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { noreturn nounwind }

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
!8 = !{!9, !5, i64 40}
!9 = !{!"", !10, i64 0, !5, i64 24, !5, i64 28, !11, i64 32, !5, i64 40, !5, i64 44, !11, i64 48, !11, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !13, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !13, i64 112, !5, i64 120, !11, i64 128, !14, i64 136}
!10 = !{!"gzFile_s", !5, i64 0, !11, i64 8, !13, i64 16}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"z_stream_s", !11, i64 0, !5, i64 8, !13, i64 16, !11, i64 24, !5, i64 32, !13, i64 40, !11, i64 48, !15, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !5, i64 88, !13, i64 96, !13, i64 104}
!15 = !{!"p1 _ZTS14internal_state", !12, i64 0}
!16 = !{!9, !5, i64 44}
!17 = !{!9, !5, i64 120}
!18 = !{!9, !11, i64 128}
!19 = !{!9, !5, i64 24}
!20 = !{!9, !5, i64 96}
!21 = !{!9, !5, i64 100}
!22 = !{!9, !5, i64 64}
!23 = !{!6, !6, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!9, !11, i64 32}
!27 = !{!9, !5, i64 28}
!28 = !{!9, !5, i64 0}
!29 = !{!9, !5, i64 88}
!30 = !{!9, !5, i64 92}
!31 = !{!9, !5, i64 72}
!32 = !{!9, !5, i64 68}
!33 = !{!9, !5, i64 104}
!34 = !{!9, !5, i64 76}
!35 = !{!9, !13, i64 112}
!36 = !{!9, !13, i64 16}
!37 = !{!9, !5, i64 144}
!38 = !{!9, !13, i64 80}
!39 = !{}
!40 = !{!"branch_weights", i32 1, i32 1048575}
!41 = !{!9, !11, i64 8}
