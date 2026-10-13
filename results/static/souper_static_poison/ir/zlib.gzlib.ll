; ModuleID = '/mydata/zlib/gzlib.c'
source_filename = "/mydata/zlib/gzlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gz_state = type { %struct.gzFile_s, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, ptr, %struct.z_stream_s }
%struct.gzFile_s = type { i32, ptr, i64 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"<fd:%d>\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @gzopen(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %111, label %6

6:                                                ; preds = %2
  %7 = tail call noalias dereferenceable_or_null(248) ptr @malloc(i64 noundef 248) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %111, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 4
  store i32 0, ptr %10, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 5
  store i32 8192, ptr %11, align 4, !tbaa !14
  %12 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 19
  store i32 0, ptr %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 20
  store ptr null, ptr %13, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 1
  store i32 0, ptr %14, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 15
  store i32 -1, ptr %15, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 16
  store i32 0, ptr %16, align 4, !tbaa !19
  %17 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 8
  store i32 0, ptr %17, align 8, !tbaa !20
  %18 = load i8, ptr %1, align 1, !tbaa !21
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %9, %47
  %21 = phi i32 [ %48, %47 ], [ 0, %9 ]
  %22 = phi i32 [ %49, %47 ], [ 0, %9 ]
  %23 = phi i8 [ %53, %47 ], [ %18, %9 ]
  %24 = phi i32 [ %51, %47 ], [ 0, %9 ]
  %25 = phi i32 [ %50, %47 ], [ 0, %9 ]
  %26 = phi ptr [ %52, %47 ], [ %1, %9 ]
  %27 = add i8 %23, -48
  %28 = icmp ult i8 %27, 10
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = zext nneg i8 %27 to i32
  store i32 %30, ptr %15, align 8, !tbaa !18
  br label %47

31:                                               ; preds = %20
  switch i8 %23, label %47 [
    i8 114, label %32
    i8 119, label %33
    i8 97, label %34
    i8 43, label %35
    i8 84, label %46
    i8 101, label %36
    i8 120, label %38
    i8 102, label %39
    i8 104, label %40
    i8 82, label %41
    i8 70, label %42
    i8 71, label %43
    i8 78, label %44
  ]

32:                                               ; preds = %31
  store i32 7247, ptr %14, align 8, !tbaa !17
  br label %47

33:                                               ; preds = %31
  store i32 31153, ptr %14, align 8, !tbaa !17
  br label %47

34:                                               ; preds = %31
  store i32 1, ptr %14, align 8, !tbaa !17
  br label %47

35:                                               ; preds = %31
  tail call void @free(ptr noundef %7) #16
  br label %111

36:                                               ; preds = %31
  %37 = or i32 %25, 524288
  br label %47

38:                                               ; preds = %31
  br label %47

39:                                               ; preds = %31
  store i32 1, ptr %16, align 4, !tbaa !19
  br label %47

40:                                               ; preds = %31
  store i32 2, ptr %16, align 4, !tbaa !19
  br label %47

41:                                               ; preds = %31
  store i32 3, ptr %16, align 4, !tbaa !19
  br label %47

42:                                               ; preds = %31
  store i32 4, ptr %16, align 4, !tbaa !19
  br label %47

43:                                               ; preds = %31
  store i32 -1, ptr %17, align 8, !tbaa !20
  br label %47

44:                                               ; preds = %31
  %45 = or i32 %25, 2048
  br label %47

46:                                               ; preds = %31
  store i32 1, ptr %17, align 8, !tbaa !20
  br label %47

47:                                               ; preds = %46, %44, %43, %42, %41, %40, %39, %38, %36, %34, %33, %32, %31, %29
  %48 = phi i32 [ %21, %29 ], [ %21, %31 ], [ %21, %44 ], [ -1, %43 ], [ %21, %42 ], [ %21, %41 ], [ %21, %40 ], [ %21, %39 ], [ %21, %38 ], [ %21, %36 ], [ 1, %46 ], [ %21, %34 ], [ %21, %33 ], [ %21, %32 ]
  %49 = phi i32 [ %22, %29 ], [ %22, %31 ], [ %22, %44 ], [ %22, %43 ], [ %22, %42 ], [ %22, %41 ], [ %22, %40 ], [ %22, %39 ], [ %22, %38 ], [ %22, %36 ], [ %22, %46 ], [ 1, %34 ], [ 31153, %33 ], [ 7247, %32 ]
  %50 = phi i32 [ %25, %29 ], [ %25, %31 ], [ %45, %44 ], [ %25, %43 ], [ %25, %42 ], [ %25, %41 ], [ %25, %40 ], [ %25, %39 ], [ %25, %38 ], [ %37, %36 ], [ %25, %46 ], [ %25, %34 ], [ %25, %33 ], [ %25, %32 ]
  %51 = phi i32 [ %24, %29 ], [ %24, %31 ], [ %24, %44 ], [ %24, %43 ], [ %24, %42 ], [ %24, %41 ], [ %24, %40 ], [ %24, %39 ], [ 1, %38 ], [ %24, %36 ], [ %24, %46 ], [ %24, %34 ], [ %24, %33 ], [ %24, %32 ]
  %52 = getelementptr inbounds i8, ptr %26, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !21
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %20, !llvm.loop !22

55:                                               ; preds = %47
  switch i32 %49, label %60 [
    i32 0, label %56
    i32 7247, label %57
  ]

56:                                               ; preds = %55, %9
  tail call void @free(ptr noundef nonnull %7) #16
  br label %111

57:                                               ; preds = %55
  switch i32 %48, label %63 [
    i32 1, label %58
    i32 0, label %59
  ]

58:                                               ; preds = %57
  tail call void @free(ptr noundef nonnull %7) #16
  br label %111

59:                                               ; preds = %57
  store i32 1, ptr %17, align 8, !tbaa !20
  br label %63

60:                                               ; preds = %55
  %61 = icmp eq i32 %48, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  tail call void @free(ptr noundef nonnull %7) #16
  br label %111

63:                                               ; preds = %60, %59, %57
  %64 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %65 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 1), !nosanitize !24
  %66 = extractvalue { i64, i1 } %65, 0, !nosanitize !24
  %67 = extractvalue { i64, i1 } %65, 1, !nosanitize !24
  br i1 %67, label %68, label %69, !nosanitize !24

68:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !24
  unreachable, !nosanitize !24

69:                                               ; preds = %63
  %70 = tail call noalias ptr @malloc(i64 noundef %66) #15
  %71 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 3
  store ptr %70, ptr %71, align 8, !tbaa !25
  %72 = icmp eq ptr %70, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  tail call void @free(ptr noundef nonnull %7) #16
  br label %111

74:                                               ; preds = %69
  %75 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %70, i64 noundef %66, ptr noundef nonnull @.str.5, ptr noundef %0) #16
  %76 = icmp eq i32 %49, 7247
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = icmp eq i32 %51, 0
  %79 = select i1 %78, i32 65, i32 193
  %80 = icmp eq i32 %49, 31153
  %81 = select i1 %80, i32 512, i32 1024
  %82 = or disjoint i32 %79, %81
  br label %83

83:                                               ; preds = %77, %74
  %84 = phi i32 [ %82, %77 ], [ 0, %74 ]
  %85 = or i32 %84, %50
  %86 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %85, i32 noundef 438) #16
  %87 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 2
  store i32 %86, ptr %87, align 4, !tbaa !26
  %88 = icmp eq i32 %86, -1
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  tail call void @free(ptr noundef nonnull %70) #16
  tail call void @free(ptr noundef nonnull %7) #16
  br label %111

90:                                               ; preds = %83
  %91 = icmp eq i32 %49, 1
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  %93 = tail call i64 @lseek64(i32 noundef %86, i64 noundef 0, i32 noundef 2) #16
  store i32 31153, ptr %14, align 8, !tbaa !17
  br label %104

94:                                               ; preds = %90
  br i1 %76, label %95, label %104

95:                                               ; preds = %94
  %96 = tail call i64 @lseek64(i32 noundef %86, i64 noundef 0, i32 noundef 1) #16
  %97 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 12
  %98 = icmp eq i64 %96, -1
  %99 = select i1 %98, i64 0, i64 %96
  store i64 %99, ptr %97, align 8
  store i32 0, ptr %7, align 8, !tbaa !27
  %100 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 13
  store i32 0, ptr %100, align 8, !tbaa !28
  %101 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 14
  store i32 0, ptr %101, align 4, !tbaa !29
  %102 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 10
  store i32 0, ptr %102, align 8, !tbaa !30
  %103 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 9
  store i32 -1, ptr %103, align 4, !tbaa !31
  br label %106

104:                                              ; preds = %94, %92
  store i32 0, ptr %7, align 8, !tbaa !27
  %105 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 17
  store i32 0, ptr %105, align 8, !tbaa !32
  br label %106

106:                                              ; preds = %104, %95
  %107 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 11
  store i32 0, ptr %107, align 4, !tbaa !33
  %108 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 18
  store i64 0, ptr %108, align 8, !tbaa !34
  store i32 0, ptr %12, align 8, !tbaa !15
  %109 = getelementptr inbounds %struct.gzFile_s, ptr %7, i64 0, i32 2
  store i64 0, ptr %109, align 8, !tbaa !35
  %110 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 21, i32 1
  store i32 0, ptr %110, align 8, !tbaa !36
  br label %111

111:                                              ; preds = %2, %6, %35, %56, %58, %62, %73, %89, %106
  %112 = phi ptr [ null, %35 ], [ null, %56 ], [ null, %58 ], [ null, %73 ], [ null, %89 ], [ %7, %106 ], [ null, %62 ], [ null, %2 ], [ null, %6 ]
  ret ptr %112
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @gzopen64(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %111, label %6

6:                                                ; preds = %2
  %7 = tail call noalias dereferenceable_or_null(248) ptr @malloc(i64 noundef 248) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %111, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 4
  store i32 0, ptr %10, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 5
  store i32 8192, ptr %11, align 4, !tbaa !14
  %12 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 19
  store i32 0, ptr %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 20
  store ptr null, ptr %13, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 1
  store i32 0, ptr %14, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 15
  store i32 -1, ptr %15, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 16
  store i32 0, ptr %16, align 4, !tbaa !19
  %17 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 8
  store i32 0, ptr %17, align 8, !tbaa !20
  %18 = load i8, ptr %1, align 1, !tbaa !21
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %9, %47
  %21 = phi i32 [ %48, %47 ], [ 0, %9 ]
  %22 = phi i32 [ %49, %47 ], [ 0, %9 ]
  %23 = phi i8 [ %53, %47 ], [ %18, %9 ]
  %24 = phi i32 [ %51, %47 ], [ 0, %9 ]
  %25 = phi i32 [ %50, %47 ], [ 0, %9 ]
  %26 = phi ptr [ %52, %47 ], [ %1, %9 ]
  %27 = add i8 %23, -48
  %28 = icmp ult i8 %27, 10
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = zext nneg i8 %27 to i32
  store i32 %30, ptr %15, align 8, !tbaa !18
  br label %47

31:                                               ; preds = %20
  switch i8 %23, label %47 [
    i8 114, label %32
    i8 119, label %33
    i8 97, label %34
    i8 43, label %35
    i8 84, label %46
    i8 101, label %36
    i8 120, label %38
    i8 102, label %39
    i8 104, label %40
    i8 82, label %41
    i8 70, label %42
    i8 71, label %43
    i8 78, label %44
  ]

32:                                               ; preds = %31
  store i32 7247, ptr %14, align 8, !tbaa !17
  br label %47

33:                                               ; preds = %31
  store i32 31153, ptr %14, align 8, !tbaa !17
  br label %47

34:                                               ; preds = %31
  store i32 1, ptr %14, align 8, !tbaa !17
  br label %47

35:                                               ; preds = %31
  tail call void @free(ptr noundef %7) #16
  br label %111

36:                                               ; preds = %31
  %37 = or i32 %25, 524288
  br label %47

38:                                               ; preds = %31
  br label %47

39:                                               ; preds = %31
  store i32 1, ptr %16, align 4, !tbaa !19
  br label %47

40:                                               ; preds = %31
  store i32 2, ptr %16, align 4, !tbaa !19
  br label %47

41:                                               ; preds = %31
  store i32 3, ptr %16, align 4, !tbaa !19
  br label %47

42:                                               ; preds = %31
  store i32 4, ptr %16, align 4, !tbaa !19
  br label %47

43:                                               ; preds = %31
  store i32 -1, ptr %17, align 8, !tbaa !20
  br label %47

44:                                               ; preds = %31
  %45 = or i32 %25, 2048
  br label %47

46:                                               ; preds = %31
  store i32 1, ptr %17, align 8, !tbaa !20
  br label %47

47:                                               ; preds = %46, %44, %43, %42, %41, %40, %39, %38, %36, %34, %33, %32, %31, %29
  %48 = phi i32 [ %21, %29 ], [ %21, %31 ], [ %21, %44 ], [ -1, %43 ], [ %21, %42 ], [ %21, %41 ], [ %21, %40 ], [ %21, %39 ], [ %21, %38 ], [ %21, %36 ], [ 1, %46 ], [ %21, %34 ], [ %21, %33 ], [ %21, %32 ]
  %49 = phi i32 [ %22, %29 ], [ %22, %31 ], [ %22, %44 ], [ %22, %43 ], [ %22, %42 ], [ %22, %41 ], [ %22, %40 ], [ %22, %39 ], [ %22, %38 ], [ %22, %36 ], [ %22, %46 ], [ 1, %34 ], [ 31153, %33 ], [ 7247, %32 ]
  %50 = phi i32 [ %25, %29 ], [ %25, %31 ], [ %45, %44 ], [ %25, %43 ], [ %25, %42 ], [ %25, %41 ], [ %25, %40 ], [ %25, %39 ], [ %25, %38 ], [ %37, %36 ], [ %25, %46 ], [ %25, %34 ], [ %25, %33 ], [ %25, %32 ]
  %51 = phi i32 [ %24, %29 ], [ %24, %31 ], [ %24, %44 ], [ %24, %43 ], [ %24, %42 ], [ %24, %41 ], [ %24, %40 ], [ %24, %39 ], [ 1, %38 ], [ %24, %36 ], [ %24, %46 ], [ %24, %34 ], [ %24, %33 ], [ %24, %32 ]
  %52 = getelementptr inbounds i8, ptr %26, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !21
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %20, !llvm.loop !22

55:                                               ; preds = %47
  switch i32 %49, label %60 [
    i32 0, label %56
    i32 7247, label %57
  ]

56:                                               ; preds = %55, %9
  tail call void @free(ptr noundef nonnull %7) #16
  br label %111

57:                                               ; preds = %55
  switch i32 %48, label %63 [
    i32 1, label %58
    i32 0, label %59
  ]

58:                                               ; preds = %57
  tail call void @free(ptr noundef nonnull %7) #16
  br label %111

59:                                               ; preds = %57
  store i32 1, ptr %17, align 8, !tbaa !20
  br label %63

60:                                               ; preds = %55
  %61 = icmp eq i32 %48, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  tail call void @free(ptr noundef nonnull %7) #16
  br label %111

63:                                               ; preds = %60, %59, %57
  %64 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %65 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 1), !nosanitize !24
  %66 = extractvalue { i64, i1 } %65, 0, !nosanitize !24
  %67 = extractvalue { i64, i1 } %65, 1, !nosanitize !24
  br i1 %67, label %68, label %69, !nosanitize !24

68:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !24
  unreachable, !nosanitize !24

69:                                               ; preds = %63
  %70 = tail call noalias ptr @malloc(i64 noundef %66) #15
  %71 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 3
  store ptr %70, ptr %71, align 8, !tbaa !25
  %72 = icmp eq ptr %70, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  tail call void @free(ptr noundef nonnull %7) #16
  br label %111

74:                                               ; preds = %69
  %75 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %70, i64 noundef %66, ptr noundef nonnull @.str.5, ptr noundef %0) #16
  %76 = icmp eq i32 %49, 7247
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = icmp eq i32 %51, 0
  %79 = select i1 %78, i32 65, i32 193
  %80 = icmp eq i32 %49, 31153
  %81 = select i1 %80, i32 512, i32 1024
  %82 = or disjoint i32 %79, %81
  br label %83

83:                                               ; preds = %77, %74
  %84 = phi i32 [ %82, %77 ], [ 0, %74 ]
  %85 = or i32 %84, %50
  %86 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %85, i32 noundef 438) #16
  %87 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 2
  store i32 %86, ptr %87, align 4, !tbaa !26
  %88 = icmp eq i32 %86, -1
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  tail call void @free(ptr noundef nonnull %70) #16
  tail call void @free(ptr noundef nonnull %7) #16
  br label %111

90:                                               ; preds = %83
  %91 = icmp eq i32 %49, 1
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  %93 = tail call i64 @lseek64(i32 noundef %86, i64 noundef 0, i32 noundef 2) #16
  store i32 31153, ptr %14, align 8, !tbaa !17
  br label %104

94:                                               ; preds = %90
  br i1 %76, label %95, label %104

95:                                               ; preds = %94
  %96 = tail call i64 @lseek64(i32 noundef %86, i64 noundef 0, i32 noundef 1) #16
  %97 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 12
  %98 = icmp eq i64 %96, -1
  %99 = select i1 %98, i64 0, i64 %96
  store i64 %99, ptr %97, align 8
  store i32 0, ptr %7, align 8, !tbaa !27
  %100 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 13
  store i32 0, ptr %100, align 8, !tbaa !28
  %101 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 14
  store i32 0, ptr %101, align 4, !tbaa !29
  %102 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 10
  store i32 0, ptr %102, align 8, !tbaa !30
  %103 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 9
  store i32 -1, ptr %103, align 4, !tbaa !31
  br label %106

104:                                              ; preds = %94, %92
  store i32 0, ptr %7, align 8, !tbaa !27
  %105 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 17
  store i32 0, ptr %105, align 8, !tbaa !32
  br label %106

106:                                              ; preds = %104, %95
  %107 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 11
  store i32 0, ptr %107, align 4, !tbaa !33
  %108 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 18
  store i64 0, ptr %108, align 8, !tbaa !34
  store i32 0, ptr %12, align 8, !tbaa !15
  %109 = getelementptr inbounds %struct.gzFile_s, ptr %7, i64 0, i32 2
  store i64 0, ptr %109, align 8, !tbaa !35
  %110 = getelementptr inbounds %struct.gz_state, ptr %7, i64 0, i32 21, i32 1
  store i32 0, ptr %110, align 8, !tbaa !36
  br label %111

111:                                              ; preds = %2, %6, %35, %56, %58, %62, %73, %89, %106
  %112 = phi ptr [ null, %35 ], [ null, %56 ], [ null, %58 ], [ null, %73 ], [ null, %89 ], [ %7, %106 ], [ null, %62 ], [ null, %2 ], [ null, %6 ]
  ret ptr %112
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @gzdopen(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, -1
  br i1 %3, label %112, label %4

4:                                                ; preds = %2
  %5 = tail call noalias dereferenceable_or_null(19) ptr @malloc(i64 noundef 19) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %112, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %5, i64 noundef 19, ptr noundef nonnull @.str, i32 noundef %0) #16
  %9 = icmp eq ptr %1, null
  br i1 %9, label %110, label %10

10:                                               ; preds = %7
  %11 = tail call noalias dereferenceable_or_null(248) ptr @malloc(i64 noundef 248) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %110, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 4
  store i32 0, ptr %14, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 5
  store i32 8192, ptr %15, align 4, !tbaa !14
  %16 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 19
  store i32 0, ptr %16, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 20
  store ptr null, ptr %17, align 8, !tbaa !16
  %18 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 1
  store i32 0, ptr %18, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 15
  store i32 -1, ptr %19, align 8, !tbaa !18
  %20 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 16
  store i32 0, ptr %20, align 4, !tbaa !19
  %21 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 8
  store i32 0, ptr %21, align 8, !tbaa !20
  %22 = load i8, ptr %1, align 1, !tbaa !21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %13, %49
  %25 = phi i32 [ %50, %49 ], [ 0, %13 ]
  %26 = phi i32 [ %51, %49 ], [ 0, %13 ]
  %27 = phi i8 [ %54, %49 ], [ %22, %13 ]
  %28 = phi i32 [ %52, %49 ], [ 0, %13 ]
  %29 = phi ptr [ %53, %49 ], [ %1, %13 ]
  %30 = add i8 %27, -48
  %31 = icmp ult i8 %30, 10
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = zext nneg i8 %30 to i32
  store i32 %33, ptr %19, align 8, !tbaa !18
  br label %49

34:                                               ; preds = %24
  switch i8 %27, label %49 [
    i8 114, label %35
    i8 119, label %36
    i8 97, label %37
    i8 43, label %38
    i8 84, label %48
    i8 101, label %39
    i8 78, label %46
    i8 102, label %41
    i8 104, label %42
    i8 82, label %43
    i8 70, label %44
    i8 71, label %45
  ]

35:                                               ; preds = %34
  store i32 7247, ptr %18, align 8, !tbaa !17
  br label %49

36:                                               ; preds = %34
  store i32 31153, ptr %18, align 8, !tbaa !17
  br label %49

37:                                               ; preds = %34
  store i32 1, ptr %18, align 8, !tbaa !17
  br label %49

38:                                               ; preds = %34
  tail call void @free(ptr noundef %11) #16
  br label %110

39:                                               ; preds = %34
  %40 = or i32 %28, 524288
  br label %49

41:                                               ; preds = %34
  store i32 1, ptr %20, align 4, !tbaa !19
  br label %49

42:                                               ; preds = %34
  store i32 2, ptr %20, align 4, !tbaa !19
  br label %49

43:                                               ; preds = %34
  store i32 3, ptr %20, align 4, !tbaa !19
  br label %49

44:                                               ; preds = %34
  store i32 4, ptr %20, align 4, !tbaa !19
  br label %49

45:                                               ; preds = %34
  store i32 -1, ptr %21, align 8, !tbaa !20
  br label %49

46:                                               ; preds = %34
  %47 = or i32 %28, 2048
  br label %49

48:                                               ; preds = %34
  store i32 1, ptr %21, align 8, !tbaa !20
  br label %49

49:                                               ; preds = %48, %46, %45, %44, %43, %42, %41, %39, %37, %36, %35, %34, %32
  %50 = phi i32 [ %25, %32 ], [ %25, %46 ], [ -1, %45 ], [ %25, %44 ], [ %25, %43 ], [ %25, %42 ], [ %25, %41 ], [ %25, %39 ], [ 1, %48 ], [ %25, %37 ], [ %25, %36 ], [ %25, %35 ], [ %25, %34 ]
  %51 = phi i32 [ %26, %32 ], [ %26, %46 ], [ %26, %45 ], [ %26, %44 ], [ %26, %43 ], [ %26, %42 ], [ %26, %41 ], [ %26, %39 ], [ %26, %48 ], [ 1, %37 ], [ 31153, %36 ], [ 7247, %35 ], [ %26, %34 ]
  %52 = phi i32 [ %28, %32 ], [ %47, %46 ], [ %28, %45 ], [ %28, %44 ], [ %28, %43 ], [ %28, %42 ], [ %28, %41 ], [ %40, %39 ], [ %28, %48 ], [ %28, %37 ], [ %28, %36 ], [ %28, %35 ], [ %28, %34 ]
  %53 = getelementptr inbounds i8, ptr %29, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !21
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %24, !llvm.loop !22

56:                                               ; preds = %49
  switch i32 %51, label %61 [
    i32 0, label %57
    i32 7247, label %58
  ]

57:                                               ; preds = %56, %13
  tail call void @free(ptr noundef nonnull %11) #16
  br label %110

58:                                               ; preds = %56
  switch i32 %50, label %64 [
    i32 1, label %59
    i32 0, label %60
  ]

59:                                               ; preds = %58
  tail call void @free(ptr noundef nonnull %11) #16
  br label %110

60:                                               ; preds = %58
  store i32 1, ptr %21, align 8, !tbaa !20
  br label %64

61:                                               ; preds = %56
  %62 = icmp eq i32 %50, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  tail call void @free(ptr noundef nonnull %11) #16
  br label %110

64:                                               ; preds = %61, %60, %58
  %65 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #17
  %66 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %65, i64 1), !nosanitize !24
  %67 = extractvalue { i64, i1 } %66, 0, !nosanitize !24
  %68 = extractvalue { i64, i1 } %66, 1, !nosanitize !24
  br i1 %68, label %69, label %70, !nosanitize !24

69:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !24
  unreachable, !nosanitize !24

70:                                               ; preds = %64
  %71 = tail call noalias ptr @malloc(i64 noundef %67) #15
  %72 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 3
  store ptr %71, ptr %72, align 8, !tbaa !25
  %73 = icmp eq ptr %71, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  tail call void @free(ptr noundef nonnull %11) #16
  br label %110

75:                                               ; preds = %70
  %76 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %71, i64 noundef %67, ptr noundef nonnull @.str.5, ptr noundef nonnull %5) #16
  %77 = and i32 %52, 2048
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 3) #16
  %81 = or i32 %80, 2048
  %82 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 4, i32 noundef %81) #16
  br label %83

83:                                               ; preds = %79, %75
  %84 = and i32 %52, 524288
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1) #16
  %88 = or i32 %87, 524288
  %89 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 2, i32 noundef %88) #16
  br label %90

90:                                               ; preds = %83, %86
  %91 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 2
  store i32 %0, ptr %91, align 4, !tbaa !26
  switch i32 %51, label %103 [
    i32 1, label %92
    i32 7247, label %94
  ]

92:                                               ; preds = %90
  %93 = tail call i64 @lseek64(i32 noundef %0, i64 noundef 0, i32 noundef 2) #16
  store i32 31153, ptr %18, align 8, !tbaa !17
  br label %103

94:                                               ; preds = %90
  %95 = tail call i64 @lseek64(i32 noundef %0, i64 noundef 0, i32 noundef 1) #16
  %96 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 12
  %97 = icmp eq i64 %95, -1
  %98 = select i1 %97, i64 0, i64 %95
  store i64 %98, ptr %96, align 8
  store i32 0, ptr %11, align 8, !tbaa !27
  %99 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 13
  store i32 0, ptr %99, align 8, !tbaa !28
  %100 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 14
  store i32 0, ptr %100, align 4, !tbaa !29
  %101 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 10
  store i32 0, ptr %101, align 8, !tbaa !30
  %102 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 9
  store i32 -1, ptr %102, align 4, !tbaa !31
  br label %105

103:                                              ; preds = %90, %92
  store i32 0, ptr %11, align 8, !tbaa !27
  %104 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 17
  store i32 0, ptr %104, align 8, !tbaa !32
  br label %105

105:                                              ; preds = %103, %94
  %106 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 11
  store i32 0, ptr %106, align 4, !tbaa !33
  %107 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 18
  store i64 0, ptr %107, align 8, !tbaa !34
  store i32 0, ptr %16, align 8, !tbaa !15
  %108 = getelementptr inbounds %struct.gzFile_s, ptr %11, i64 0, i32 2
  store i64 0, ptr %108, align 8, !tbaa !35
  %109 = getelementptr inbounds %struct.gz_state, ptr %11, i64 0, i32 21, i32 1
  store i32 0, ptr %109, align 8, !tbaa !36
  br label %110

110:                                              ; preds = %7, %10, %38, %57, %59, %63, %74, %105
  %111 = phi ptr [ null, %38 ], [ null, %57 ], [ null, %59 ], [ null, %74 ], [ %11, %105 ], [ null, %63 ], [ null, %7 ], [ null, %10 ]
  tail call void @free(ptr noundef %5) #16
  br label %112

112:                                              ; preds = %2, %4, %110
  %113 = phi ptr [ %111, %110 ], [ null, %4 ], [ null, %2 ]
  ret ptr %113
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gzbuffer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !17
  switch i32 %6, label %16 [
    i32 7247, label %7
    i32 31153, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = icmp ne i32 %9, 0
  %11 = icmp slt i32 %1, 0
  %12 = or i1 %11, %10
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @llvm.umax.i32(i32 %1, i32 8)
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  store i32 %14, ptr %15, align 4, !tbaa !14
  br label %16

16:                                               ; preds = %7, %4, %2, %13
  %17 = phi i32 [ 0, %13 ], [ -1, %2 ], [ -1, %4 ], [ -1, %7 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gzrewind(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !17
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %41

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %9 = load i32, ptr %8, align 8, !tbaa !15
  switch i32 %9, label %41 [
    i32 0, label %10
    i32 -5, label %10
  ]

10:                                               ; preds = %7, %7
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !26
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 12
  %14 = load i64, ptr %13, align 8, !tbaa !37
  %15 = tail call i64 @lseek64(i32 noundef %12, i64 noundef %14, i32 noundef 0) #16
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %41, label %17

17:                                               ; preds = %10
  store i32 0, ptr %0, align 8, !tbaa !27
  %18 = load i32, ptr %4, align 8, !tbaa !17
  %19 = icmp eq i32 %18, 7247
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  store i32 0, ptr %21, align 8, !tbaa !28
  %22 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  store i32 0, ptr %22, align 4, !tbaa !29
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  store i32 0, ptr %23, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  store i32 -1, ptr %24, align 4, !tbaa !31
  br label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  store i32 0, ptr %26, align 8, !tbaa !32
  br label %27

27:                                               ; preds = %25, %20
  %28 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  store i32 0, ptr %28, align 4, !tbaa !33
  %29 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  store i64 0, ptr %29, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %8, align 8, !tbaa !15
  %35 = icmp eq i32 %34, -4
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @free(ptr noundef nonnull %31) #16
  br label %37

37:                                               ; preds = %36, %33
  store ptr null, ptr %30, align 8, !tbaa !16
  br label %38

38:                                               ; preds = %27, %37
  store i32 0, ptr %8, align 8, !tbaa !15
  %39 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %39, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  store i32 0, ptr %40, align 8, !tbaa !36
  br label %41

41:                                               ; preds = %10, %3, %7, %1, %38
  %42 = phi i32 [ 0, %38 ], [ -1, %1 ], [ -1, %7 ], [ -1, %3 ], [ -1, %10 ]
  ret i32 %42
}

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @gzseek64(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %133, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !17
  switch i32 %7, label %133 [
    i32 7247, label %8
    i32 31153, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %10 = load i32, ptr %9, align 8, !tbaa !15
  switch i32 %10, label %133 [
    i32 0, label %11
    i32 -5, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = icmp ugt i32 %2, 1
  br i1 %12, label %133, label %13

13:                                               ; preds = %11
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !35
  %18 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1, i64 %17), !nosanitize !24
  %19 = extractvalue { i64, i1 } %18, 1, !nosanitize !24
  br i1 %19, label %20, label %35, !nosanitize !24

20:                                               ; preds = %103, %51, %15
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !24
  unreachable, !nosanitize !24

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  %23 = load i32, ptr %22, align 4, !tbaa !29
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %27 = load i64, ptr %26, align 8, !tbaa !34
  br label %28

28:                                               ; preds = %21, %25
  %29 = phi i64 [ %27, %25 ], [ 0, %21 ]
  %30 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1, i64 %29), !nosanitize !24
  %31 = extractvalue { i64, i1 } %30, 1, !nosanitize !24
  br i1 %31, label %32, label %33, !nosanitize !24

32:                                               ; preds = %125, %112, %85, %74, %43, %28
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !24
  unreachable, !nosanitize !24

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  store i64 0, ptr %34, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %15, %33
  %36 = phi { i64, i1 } [ %30, %33 ], [ %18, %15 ]
  %37 = extractvalue { i64, i1 } %36, 0
  %38 = icmp eq i32 %7, 7247
  br i1 %38, label %39, label %83

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  %41 = load i32, ptr %40, align 8, !tbaa !30
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %81

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !35
  %46 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %45, i64 %37), !nosanitize !24
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !24
  br i1 %47, label %32, label %48, !nosanitize !24

48:                                               ; preds = %43
  %49 = extractvalue { i64, i1 } %46, 0, !nosanitize !24
  %50 = icmp sgt i64 %49, -1
  br i1 %50, label %51, label %81

51:                                               ; preds = %48
  %52 = load i32, ptr %0, align 8, !tbaa !27
  %53 = zext i32 %52 to i64
  %54 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %37, i64 %53), !nosanitize !24
  %55 = extractvalue { i64, i1 } %54, 1, !nosanitize !24
  br i1 %55, label %20, label %56, !nosanitize !24

56:                                               ; preds = %51
  %57 = extractvalue { i64, i1 } %54, 0, !nosanitize !24
  %58 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !26
  %60 = tail call i64 @lseek64(i32 noundef %59, i64 noundef %57, i32 noundef 1) #16
  %61 = icmp eq i64 %60, -1
  br i1 %61, label %133, label %62

62:                                               ; preds = %56
  store i32 0, ptr %0, align 8, !tbaa !27
  %63 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  store i32 0, ptr %63, align 8, !tbaa !28
  %64 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  store i32 0, ptr %64, align 4, !tbaa !29
  %65 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  store i64 0, ptr %65, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 20
  %67 = load ptr, ptr %66, align 8, !tbaa !16
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %62
  %70 = load i32, ptr %9, align 8, !tbaa !15
  %71 = icmp eq i32 %70, -4
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @free(ptr noundef nonnull %67) #16
  br label %73

73:                                               ; preds = %72, %69
  store ptr null, ptr %66, align 8, !tbaa !16
  br label %74

74:                                               ; preds = %62, %73
  store i32 0, ptr %9, align 8, !tbaa !15
  %75 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  store i32 0, ptr %75, align 8, !tbaa !36
  %76 = load i64, ptr %44, align 8, !tbaa !35
  %77 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %76, i64 %37), !nosanitize !24
  %78 = extractvalue { i64, i1 } %77, 1, !nosanitize !24
  br i1 %78, label %32, label %79, !nosanitize !24

79:                                               ; preds = %74
  %80 = extractvalue { i64, i1 } %77, 0, !nosanitize !24
  store i64 %80, ptr %44, align 8, !tbaa !35
  br label %133

81:                                               ; preds = %48, %39
  %82 = icmp slt i64 %37, 0
  br i1 %82, label %85, label %103

83:                                               ; preds = %35
  %84 = icmp slt i64 %37, 0
  br i1 %84, label %133, label %99

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %87 = load i64, ptr %86, align 8, !tbaa !35
  %88 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %37, i64 %87), !nosanitize !24
  %89 = extractvalue { i64, i1 } %88, 0, !nosanitize !24
  %90 = extractvalue { i64, i1 } %88, 1, !nosanitize !24
  br i1 %90, label %32, label %91, !nosanitize !24

91:                                               ; preds = %85
  %92 = icmp slt i64 %89, 0
  br i1 %92, label %133, label %93

93:                                               ; preds = %91
  %94 = tail call i32 @gzrewind(ptr noundef nonnull %0), !range !38
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %133, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %6, align 8, !tbaa !17
  %98 = icmp eq i32 %97, 7247
  br i1 %98, label %103, label %99

99:                                               ; preds = %83, %96
  %100 = phi i64 [ %89, %96 ], [ %37, %83 ]
  %101 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %102 = load i64, ptr %101, align 8, !tbaa !35
  br label %125

103:                                              ; preds = %81, %96
  %104 = phi i64 [ %89, %96 ], [ %37, %81 ]
  %105 = load i32, ptr %0, align 8, !tbaa !27
  %106 = zext i32 %105 to i64
  %107 = icmp ult i64 %104, %106
  %108 = trunc i64 %104 to i32
  %109 = select i1 %107, i32 %108, i32 %105
  %110 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %105, i32 %109), !nosanitize !24
  %111 = extractvalue { i32, i1 } %110, 1, !nosanitize !24
  br i1 %111, label %20, label %112, !nosanitize !24

112:                                              ; preds = %103
  %113 = extractvalue { i32, i1 } %110, 0, !nosanitize !24
  store i32 %113, ptr %0, align 8, !tbaa !27
  %114 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !39
  %116 = zext i32 %109 to i64
  %117 = getelementptr inbounds i8, ptr %115, i64 %116
  store ptr %117, ptr %114, align 8, !tbaa !39
  %118 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %119 = load i64, ptr %118, align 8, !tbaa !35
  %120 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %119, i64 %116), !nosanitize !24
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !24
  br i1 %121, label %32, label %122, !nosanitize !24

122:                                              ; preds = %112
  %123 = extractvalue { i64, i1 } %120, 0, !nosanitize !24
  store i64 %123, ptr %118, align 8, !tbaa !35
  %124 = sub nsw i64 %104, %116
  br label %125

125:                                              ; preds = %99, %122
  %126 = phi i64 [ %123, %122 ], [ %102, %99 ]
  %127 = phi i64 [ %124, %122 ], [ %100, %99 ]
  %128 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  store i64 %127, ptr %128, align 8, !tbaa !34
  %129 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %126, i64 %127), !nosanitize !24
  %130 = extractvalue { i64, i1 } %129, 1, !nosanitize !24
  br i1 %130, label %32, label %131, !nosanitize !24

131:                                              ; preds = %125
  %132 = extractvalue { i64, i1 } %129, 0, !nosanitize !24
  br label %133

133:                                              ; preds = %83, %93, %91, %56, %11, %8, %5, %3, %131, %79
  %134 = phi i64 [ %80, %79 ], [ %132, %131 ], [ -1, %3 ], [ -1, %5 ], [ -1, %8 ], [ -1, %11 ], [ -1, %56 ], [ -1, %91 ], [ -1, %93 ], [ -1, %83 ]
  ret i64 %134
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #6

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #6

; Function Attrs: nounwind uwtable
define dso_local void @gz_error(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %9 = load i32, ptr %8, align 8, !tbaa !15
  %10 = icmp eq i32 %9, -4
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %5) #16
  br label %12

12:                                               ; preds = %11, %7
  store ptr null, ptr %4, align 8, !tbaa !16
  br label %13

13:                                               ; preds = %12, %3
  switch i32 %1, label %14 [
    i32 -5, label %19
    i32 0, label %19
  ]

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !33
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, ptr %0, align 8, !tbaa !27
  br label %19

19:                                               ; preds = %13, %13, %18, %14
  %20 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  store i32 %1, ptr %20, align 8, !tbaa !15
  %21 = icmp eq ptr %2, null
  %22 = icmp eq i32 %1, -4
  %23 = or i1 %22, %21
  br i1 %23, label %53, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #17
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #17
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %28), !nosanitize !24
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !24
  br i1 %30, label %31, label %32, !nosanitize !24

31:                                               ; preds = %46, %41, %32, %24
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !24
  unreachable, !nosanitize !24

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !24
  %34 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 3), !nosanitize !24
  %35 = extractvalue { i64, i1 } %34, 1, !nosanitize !24
  br i1 %35, label %31, label %36, !nosanitize !24

36:                                               ; preds = %32
  %37 = extractvalue { i64, i1 } %34, 0, !nosanitize !24
  %38 = tail call noalias ptr @malloc(i64 noundef %37) #15
  store ptr %38, ptr %4, align 8, !tbaa !16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -4, ptr %20, align 8, !tbaa !15
  br label %53

41:                                               ; preds = %36
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #17
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #17
  %44 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %42, i64 %43), !nosanitize !24
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !24
  br i1 %45, label %31, label %46, !nosanitize !24

46:                                               ; preds = %41
  %47 = extractvalue { i64, i1 } %44, 0, !nosanitize !24
  %48 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %47, i64 3), !nosanitize !24
  %49 = extractvalue { i64, i1 } %48, 1, !nosanitize !24
  br i1 %49, label %31, label %50, !nosanitize !24

50:                                               ; preds = %46
  %51 = extractvalue { i64, i1 } %48, 0, !nosanitize !24
  %52 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %38, i64 noundef %51, ptr noundef nonnull @.str.3, ptr noundef %26, ptr noundef nonnull @.str.4, ptr noundef nonnull %2) #16
  br label %53

53:                                               ; preds = %19, %50, %40
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind uwtable
define dso_local i64 @gzseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %133, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !17
  switch i32 %7, label %133 [
    i32 7247, label %8
    i32 31153, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %10 = load i32, ptr %9, align 8, !tbaa !15
  switch i32 %10, label %133 [
    i32 0, label %11
    i32 -5, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = icmp ugt i32 %2, 1
  br i1 %12, label %133, label %13

13:                                               ; preds = %11
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !35
  %18 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1, i64 %17), !nosanitize !24
  %19 = extractvalue { i64, i1 } %18, 1, !nosanitize !24
  br i1 %19, label %20, label %35, !nosanitize !24

20:                                               ; preds = %103, %51, %15
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !24
  unreachable, !nosanitize !24

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  %23 = load i32, ptr %22, align 4, !tbaa !29
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %27 = load i64, ptr %26, align 8, !tbaa !34
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i64 [ %27, %25 ], [ 0, %21 ]
  %30 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1, i64 %29), !nosanitize !24
  %31 = extractvalue { i64, i1 } %30, 1, !nosanitize !24
  br i1 %31, label %32, label %33, !nosanitize !24

32:                                               ; preds = %125, %112, %85, %74, %43, %28
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !24
  unreachable, !nosanitize !24

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  store i64 0, ptr %34, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %33, %15
  %36 = phi { i64, i1 } [ %30, %33 ], [ %18, %15 ]
  %37 = extractvalue { i64, i1 } %36, 0
  %38 = icmp eq i32 %7, 7247
  br i1 %38, label %39, label %83

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  %41 = load i32, ptr %40, align 8, !tbaa !30
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %81

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !35
  %46 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %45, i64 %37), !nosanitize !24
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !24
  br i1 %47, label %32, label %48, !nosanitize !24

48:                                               ; preds = %43
  %49 = extractvalue { i64, i1 } %46, 0, !nosanitize !24
  %50 = icmp sgt i64 %49, -1
  br i1 %50, label %51, label %81

51:                                               ; preds = %48
  %52 = load i32, ptr %0, align 8, !tbaa !27
  %53 = zext i32 %52 to i64
  %54 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %37, i64 %53), !nosanitize !24
  %55 = extractvalue { i64, i1 } %54, 1, !nosanitize !24
  br i1 %55, label %20, label %56, !nosanitize !24

56:                                               ; preds = %51
  %57 = extractvalue { i64, i1 } %54, 0, !nosanitize !24
  %58 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !26
  %60 = tail call i64 @lseek64(i32 noundef %59, i64 noundef %57, i32 noundef 1) #16
  %61 = icmp eq i64 %60, -1
  br i1 %61, label %133, label %62

62:                                               ; preds = %56
  store i32 0, ptr %0, align 8, !tbaa !27
  %63 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  store i32 0, ptr %63, align 8, !tbaa !28
  %64 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  store i32 0, ptr %64, align 4, !tbaa !29
  %65 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  store i64 0, ptr %65, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 20
  %67 = load ptr, ptr %66, align 8, !tbaa !16
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %62
  %70 = load i32, ptr %9, align 8, !tbaa !15
  %71 = icmp eq i32 %70, -4
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @free(ptr noundef nonnull %67) #16
  br label %73

73:                                               ; preds = %72, %69
  store ptr null, ptr %66, align 8, !tbaa !16
  br label %74

74:                                               ; preds = %73, %62
  store i32 0, ptr %9, align 8, !tbaa !15
  %75 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  store i32 0, ptr %75, align 8, !tbaa !36
  %76 = load i64, ptr %44, align 8, !tbaa !35
  %77 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %76, i64 %37), !nosanitize !24
  %78 = extractvalue { i64, i1 } %77, 1, !nosanitize !24
  br i1 %78, label %32, label %79, !nosanitize !24

79:                                               ; preds = %74
  %80 = extractvalue { i64, i1 } %77, 0, !nosanitize !24
  store i64 %80, ptr %44, align 8, !tbaa !35
  br label %133

81:                                               ; preds = %48, %39
  %82 = icmp slt i64 %37, 0
  br i1 %82, label %85, label %103

83:                                               ; preds = %35
  %84 = icmp slt i64 %37, 0
  br i1 %84, label %133, label %99

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %87 = load i64, ptr %86, align 8, !tbaa !35
  %88 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %37, i64 %87), !nosanitize !24
  %89 = extractvalue { i64, i1 } %88, 0, !nosanitize !24
  %90 = extractvalue { i64, i1 } %88, 1, !nosanitize !24
  br i1 %90, label %32, label %91, !nosanitize !24

91:                                               ; preds = %85
  %92 = icmp slt i64 %89, 0
  br i1 %92, label %133, label %93

93:                                               ; preds = %91
  %94 = tail call i32 @gzrewind(ptr noundef nonnull %0), !range !38
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %133, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %6, align 8, !tbaa !17
  %98 = icmp eq i32 %97, 7247
  br i1 %98, label %103, label %99

99:                                               ; preds = %96, %83
  %100 = phi i64 [ %89, %96 ], [ %37, %83 ]
  %101 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %102 = load i64, ptr %101, align 8, !tbaa !35
  br label %125

103:                                              ; preds = %96, %81
  %104 = phi i64 [ %89, %96 ], [ %37, %81 ]
  %105 = load i32, ptr %0, align 8, !tbaa !27
  %106 = zext i32 %105 to i64
  %107 = icmp ult i64 %104, %106
  %108 = trunc i64 %104 to i32
  %109 = select i1 %107, i32 %108, i32 %105
  %110 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %105, i32 %109), !nosanitize !24
  %111 = extractvalue { i32, i1 } %110, 1, !nosanitize !24
  br i1 %111, label %20, label %112, !nosanitize !24

112:                                              ; preds = %103
  %113 = extractvalue { i32, i1 } %110, 0, !nosanitize !24
  store i32 %113, ptr %0, align 8, !tbaa !27
  %114 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !39
  %116 = zext i32 %109 to i64
  %117 = getelementptr inbounds i8, ptr %115, i64 %116
  store ptr %117, ptr %114, align 8, !tbaa !39
  %118 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %119 = load i64, ptr %118, align 8, !tbaa !35
  %120 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %119, i64 %116), !nosanitize !24
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !24
  br i1 %121, label %32, label %122, !nosanitize !24

122:                                              ; preds = %112
  %123 = extractvalue { i64, i1 } %120, 0, !nosanitize !24
  store i64 %123, ptr %118, align 8, !tbaa !35
  %124 = sub nsw i64 %104, %116
  br label %125

125:                                              ; preds = %122, %99
  %126 = phi i64 [ %123, %122 ], [ %102, %99 ]
  %127 = phi i64 [ %124, %122 ], [ %100, %99 ]
  %128 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  store i64 %127, ptr %128, align 8, !tbaa !34
  %129 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %126, i64 %127), !nosanitize !24
  %130 = extractvalue { i64, i1 } %129, 1, !nosanitize !24
  br i1 %130, label %32, label %131, !nosanitize !24

131:                                              ; preds = %125
  %132 = extractvalue { i64, i1 } %129, 0, !nosanitize !24
  br label %133

133:                                              ; preds = %3, %5, %8, %11, %56, %79, %83, %91, %93, %131
  %134 = phi i64 [ %80, %79 ], [ %132, %131 ], [ -1, %3 ], [ -1, %5 ], [ -1, %8 ], [ -1, %11 ], [ -1, %56 ], [ -1, %91 ], [ -1, %93 ], [ -1, %83 ]
  ret i64 %134
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gztell64(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !17
  switch i32 %5, label %22 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  %10 = load i32, ptr %9, align 4, !tbaa !29
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %14 = load i64, ptr %13, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %6, %12
  %16 = phi i64 [ %14, %12 ], [ 0, %6 ]
  %17 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %8, i64 %16), !nosanitize !24
  %18 = extractvalue { i64, i1 } %17, 1, !nosanitize !24
  br i1 %18, label %19, label %20, !nosanitize !24

19:                                               ; preds = %15
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !24
  unreachable, !nosanitize !24

20:                                               ; preds = %15
  %21 = extractvalue { i64, i1 } %17, 0, !nosanitize !24
  br label %22

22:                                               ; preds = %3, %1, %20
  %23 = phi i64 [ %21, %20 ], [ -1, %1 ], [ -1, %3 ]
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gztell(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !17
  switch i32 %5, label %22 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  %10 = load i32, ptr %9, align 4, !tbaa !29
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %14 = load i64, ptr %13, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi i64 [ %14, %12 ], [ 0, %6 ]
  %17 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %8, i64 %16), !nosanitize !24
  %18 = extractvalue { i64, i1 } %17, 1, !nosanitize !24
  br i1 %18, label %19, label %20, !nosanitize !24

19:                                               ; preds = %15
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !24
  unreachable, !nosanitize !24

20:                                               ; preds = %15
  %21 = extractvalue { i64, i1 } %17, 0, !nosanitize !24
  br label %22

22:                                               ; preds = %1, %3, %20
  %23 = phi i64 [ %21, %20 ], [ -1, %1 ], [ -1, %3 ]
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gzoffset64(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !17
  switch i32 %5, label %23 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !26
  %9 = tail call i64 @lseek64(i32 noundef %8, i64 noundef 0, i32 noundef 1) #16
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %4, align 8, !tbaa !17
  %13 = icmp eq i32 %12, 7247
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !36
  %17 = zext i32 %16 to i64
  %18 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %9, i64 %17), !nosanitize !24
  %19 = extractvalue { i64, i1 } %18, 1, !nosanitize !24
  br i1 %19, label %20, label %21, !nosanitize !24

20:                                               ; preds = %14
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !24
  unreachable, !nosanitize !24

21:                                               ; preds = %14
  %22 = extractvalue { i64, i1 } %18, 0, !nosanitize !24
  br label %23

23:                                               ; preds = %11, %21, %6, %3, %1
  %24 = phi i64 [ -1, %1 ], [ -1, %3 ], [ -1, %6 ], [ %22, %21 ], [ %9, %11 ]
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gzoffset(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !17
  switch i32 %5, label %23 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !26
  %9 = tail call i64 @lseek64(i32 noundef %8, i64 noundef 0, i32 noundef 1) #16
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %4, align 8, !tbaa !17
  %13 = icmp eq i32 %12, 7247
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !36
  %17 = zext i32 %16 to i64
  %18 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %9, i64 %17), !nosanitize !24
  %19 = extractvalue { i64, i1 } %18, 1, !nosanitize !24
  br i1 %19, label %20, label %21, !nosanitize !24

20:                                               ; preds = %14
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !24
  unreachable, !nosanitize !24

21:                                               ; preds = %14
  %22 = extractvalue { i64, i1 } %18, 0, !nosanitize !24
  br label %23

23:                                               ; preds = %1, %3, %6, %11, %21
  %24 = phi i64 [ -1, %1 ], [ -1, %3 ], [ -1, %6 ], [ %22, %21 ], [ %9, %11 ]
  ret i64 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gzeof(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !17
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 4, !tbaa !29
  br label %10

10:                                               ; preds = %3, %7, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %7 ], [ 0, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @gzerror(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !17
  switch i32 %6, label %19 [
    i32 7247, label %7
    i32 31153, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %10 = load i32, ptr %9, align 8, !tbaa !15
  br i1 %8, label %12, label %11

11:                                               ; preds = %7
  store i32 %10, ptr %1, align 4, !tbaa !40
  br label %12

12:                                               ; preds = %7, %11
  %13 = icmp eq i32 %10, -4
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @.str.2, ptr %16
  br label %19

19:                                               ; preds = %14, %12, %4, %2
  %20 = phi ptr [ null, %2 ], [ null, %4 ], [ @.str.1, %12 ], [ %18, %14 ]
  ret ptr %20
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @gzclearerr(ptr noundef %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !17
  switch i32 %5, label %21 [
    i32 7247, label %6
    i32 31153, label %9
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  store i32 0, ptr %7, align 8, !tbaa !28
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  store i32 0, ptr %8, align 4, !tbaa !29
  br label %9

9:                                                ; preds = %3, %6
  %10 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = icmp eq i32 %15, -4
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %11) #16
  br label %18

18:                                               ; preds = %17, %13
  store ptr null, ptr %10, align 8, !tbaa !16
  br label %19

19:                                               ; preds = %9, %18
  %20 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  store i32 0, ptr %20, align 8, !tbaa !15
  br label %21

21:                                               ; preds = %3, %1, %19
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gz_intmax() local_unnamed_addr #11 {
  ret i32 2147483647
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #12

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !8, i64 40}
!6 = !{!"", !7, i64 0, !8, i64 24, !8, i64 28, !11, i64 32, !8, i64 40, !8, i64 44, !11, i64 48, !11, i64 56, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !12, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !12, i64 112, !8, i64 120, !11, i64 128, !13, i64 136}
!7 = !{!"gzFile_s", !8, i64 0, !11, i64 8, !12, i64 16}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"z_stream_s", !11, i64 0, !8, i64 8, !12, i64 16, !11, i64 24, !8, i64 32, !12, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !8, i64 88, !12, i64 96, !12, i64 104}
!14 = !{!6, !8, i64 44}
!15 = !{!6, !8, i64 120}
!16 = !{!6, !11, i64 128}
!17 = !{!6, !8, i64 24}
!18 = !{!6, !8, i64 96}
!19 = !{!6, !8, i64 100}
!20 = !{!6, !8, i64 64}
!21 = !{!9, !9, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{}
!25 = !{!6, !11, i64 32}
!26 = !{!6, !8, i64 28}
!27 = !{!6, !8, i64 0}
!28 = !{!6, !8, i64 88}
!29 = !{!6, !8, i64 92}
!30 = !{!6, !8, i64 72}
!31 = !{!6, !8, i64 68}
!32 = !{!6, !8, i64 104}
!33 = !{!6, !8, i64 76}
!34 = !{!6, !12, i64 112}
!35 = !{!6, !12, i64 16}
!36 = !{!6, !8, i64 144}
!37 = !{!6, !12, i64 80}
!38 = !{i32 -1, i32 1}
!39 = !{!6, !11, i64 8}
!40 = !{!8, !8, i64 0}
