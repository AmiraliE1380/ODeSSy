; ModuleID = '/mydata/zlib/uncompr.c'
source_filename = "/mydata/zlib/uncompr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @uncompress2_z(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #7
  %6 = icmp eq ptr %3, null
  br i1 %6, label %92, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %3, align 8, !tbaa !5
  %9 = icmp ne i64 %8, 0
  %10 = icmp eq ptr %2, null
  %11 = and i1 %10, %9
  %12 = icmp eq ptr %1, null
  %13 = or i1 %12, %11
  br i1 %13, label %92, label %14

14:                                               ; preds = %7
  %15 = load i64, ptr %1, align 8, !tbaa !5
  %16 = icmp ne i64 %15, 0
  %17 = icmp eq ptr %0, null
  %18 = and i1 %17, %16
  br i1 %18, label %92, label %19

19:                                               ; preds = %14
  store ptr %2, ptr %5, align 8, !tbaa !9
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 1
  store i32 0, ptr %20, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %22 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %92

24:                                               ; preds = %19
  %25 = icmp eq i64 %15, 0
  %26 = and i1 %17, %25
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 13
  %28 = select i1 %26, ptr %27, ptr %0
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !14
  %30 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 4
  store i32 0, ptr %30, align 8, !tbaa !15
  br label %33

31:                                               ; preds = %57
  %32 = load i32, ptr %30, align 8, !tbaa !15
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i32 [ %32, %31 ], [ 0, %24 ]
  %35 = phi i64 [ %58, %31 ], [ %8, %24 ]
  %36 = phi i64 [ %47, %31 ], [ %15, %24 ]
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = call i64 @llvm.umin.i64(i64 %36, i64 4294967295)
  %40 = trunc i64 %39 to i32
  store i32 %40, ptr %30, align 8, !tbaa !15
  %41 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %36, i64 %39), !nosanitize !16
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !16
  br i1 %42, label %43, label %44, !nosanitize !16

43:                                               ; preds = %50, %38, %78, %74
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !16
  unreachable, !nosanitize !16

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !16
  br label %46

46:                                               ; preds = %44, %33
  %47 = phi i64 [ %45, %44 ], [ %36, %33 ]
  %48 = load i32, ptr %20, align 8, !tbaa !13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = call i64 @llvm.umin.i64(i64 %35, i64 4294967295)
  %52 = trunc i64 %51 to i32
  store i32 %52, ptr %20, align 8, !tbaa !13
  %53 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %35, i64 %51), !nosanitize !16
  %54 = extractvalue { i64, i1 } %53, 1, !nosanitize !16
  br i1 %54, label %43, label %55, !nosanitize !16

55:                                               ; preds = %50
  %56 = extractvalue { i64, i1 } %53, 0, !nosanitize !16
  br label %57

57:                                               ; preds = %55, %46
  %58 = phi i64 [ %56, %55 ], [ %35, %46 ]
  %59 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %31, label %61, !llvm.loop !17

61:                                               ; preds = %57
  %62 = load i32, ptr %20, align 8, !tbaa !13
  %63 = zext i32 %62 to i64
  %64 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %58, i64 %63), !nosanitize !16
  %65 = extractvalue { i64, i1 } %64, 0, !nosanitize !16
  %66 = extractvalue { i64, i1 } %64, 1, !nosanitize !16
  br i1 %66, label %67, label %68, !nosanitize !16

67:                                               ; preds = %68, %61
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !16
  unreachable, !nosanitize !16

68:                                               ; preds = %61
  %69 = load i32, ptr %30, align 8, !tbaa !15
  %70 = zext i32 %69 to i64
  %71 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %47, i64 %70), !nosanitize !16
  %72 = extractvalue { i64, i1 } %71, 0, !nosanitize !16
  %73 = extractvalue { i64, i1 } %71, 1, !nosanitize !16
  br i1 %73, label %67, label %74, !nosanitize !16

74:                                               ; preds = %68
  %75 = load i64, ptr %3, align 8, !tbaa !5
  %76 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %75, i64 %65), !nosanitize !16
  %77 = extractvalue { i64, i1 } %76, 1, !nosanitize !16
  br i1 %77, label %43, label %78, !nosanitize !16

78:                                               ; preds = %74
  %79 = extractvalue { i64, i1 } %76, 0, !nosanitize !16
  store i64 %79, ptr %3, align 8, !tbaa !5
  %80 = load i64, ptr %1, align 8, !tbaa !5
  %81 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %80, i64 %72), !nosanitize !16
  %82 = extractvalue { i64, i1 } %81, 1, !nosanitize !16
  br i1 %82, label %43, label %83, !nosanitize !16

83:                                               ; preds = %78
  %84 = extractvalue { i64, i1 } %81, 0, !nosanitize !16
  store i64 %84, ptr %1, align 8, !tbaa !5
  %85 = call i32 @inflateEnd(ptr noundef nonnull %5) #7
  switch i32 %59, label %86 [
    i32 1, label %92
    i32 2, label %91
  ]

86:                                               ; preds = %83
  %87 = icmp eq i32 %59, -5
  %88 = icmp eq i64 %65, 0
  %89 = select i1 %87, i1 %88, i1 false
  %90 = select i1 %89, i32 -3, i32 %59
  br label %92

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %86, %91, %83, %19, %4, %7, %14
  %93 = phi i32 [ -2, %14 ], [ -2, %7 ], [ -2, %4 ], [ %22, %19 ], [ 0, %83 ], [ %90, %86 ], [ -3, %91 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #7
  ret i32 %93
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #4

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @uncompress2(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  %6 = load i64, ptr %1, align 8, !tbaa !5
  %7 = load i64, ptr %3, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #7
  %8 = icmp ne i64 %7, 0
  %9 = icmp eq ptr %2, null
  %10 = and i1 %9, %8
  br i1 %10, label %86, label %11

11:                                               ; preds = %4
  %12 = icmp ne i64 %6, 0
  %13 = icmp eq ptr %0, null
  %14 = and i1 %13, %12
  br i1 %14, label %86, label %15

15:                                               ; preds = %11
  store ptr %2, ptr %5, align 8, !tbaa !9
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 1
  store i32 0, ptr %16, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %18 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %86

20:                                               ; preds = %15
  %21 = icmp eq i64 %6, 0
  %22 = and i1 %13, %21
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 13
  %24 = select i1 %22, ptr %23, ptr %0
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !14
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 4
  store i32 0, ptr %26, align 8, !tbaa !15
  br label %29

27:                                               ; preds = %53
  %28 = load i32, ptr %26, align 8, !tbaa !15
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i32 [ %28, %27 ], [ 0, %20 ]
  %31 = phi i64 [ %54, %27 ], [ %7, %20 ]
  %32 = phi i64 [ %43, %27 ], [ %6, %20 ]
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = call i64 @llvm.umin.i64(i64 %32, i64 4294967295)
  %36 = trunc i64 %35 to i32
  store i32 %36, ptr %26, align 8, !tbaa !15
  %37 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %32, i64 %35), !nosanitize !16
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !16
  br i1 %38, label %39, label %40, !nosanitize !16

39:                                               ; preds = %46, %34, %73, %70
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !16
  unreachable, !nosanitize !16

40:                                               ; preds = %34
  %41 = extractvalue { i64, i1 } %37, 0, !nosanitize !16
  br label %42

42:                                               ; preds = %40, %29
  %43 = phi i64 [ %41, %40 ], [ %32, %29 ]
  %44 = load i32, ptr %16, align 8, !tbaa !13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = call i64 @llvm.umin.i64(i64 %31, i64 4294967295)
  %48 = trunc i64 %47 to i32
  store i32 %48, ptr %16, align 8, !tbaa !13
  %49 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %31, i64 %47), !nosanitize !16
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !16
  br i1 %50, label %39, label %51, !nosanitize !16

51:                                               ; preds = %46
  %52 = extractvalue { i64, i1 } %49, 0, !nosanitize !16
  br label %53

53:                                               ; preds = %51, %42
  %54 = phi i64 [ %52, %51 ], [ %31, %42 ]
  %55 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %27, label %57, !llvm.loop !17

57:                                               ; preds = %53
  %58 = load i32, ptr %16, align 8, !tbaa !13
  %59 = zext i32 %58 to i64
  %60 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %54, i64 %59), !nosanitize !16
  %61 = extractvalue { i64, i1 } %60, 0, !nosanitize !16
  %62 = extractvalue { i64, i1 } %60, 1, !nosanitize !16
  br i1 %62, label %63, label %64, !nosanitize !16

63:                                               ; preds = %64, %57
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !16
  unreachable, !nosanitize !16

64:                                               ; preds = %57
  %65 = load i32, ptr %26, align 8, !tbaa !15
  %66 = zext i32 %65 to i64
  %67 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %43, i64 %66), !nosanitize !16
  %68 = extractvalue { i64, i1 } %67, 0, !nosanitize !16
  %69 = extractvalue { i64, i1 } %67, 1, !nosanitize !16
  br i1 %69, label %63, label %70, !nosanitize !16

70:                                               ; preds = %64
  %71 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %7, i64 %61), !nosanitize !16
  %72 = extractvalue { i64, i1 } %71, 1, !nosanitize !16
  br i1 %72, label %39, label %73, !nosanitize !16

73:                                               ; preds = %70
  %74 = extractvalue { i64, i1 } %71, 0, !nosanitize !16
  %75 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %6, i64 %68), !nosanitize !16
  %76 = extractvalue { i64, i1 } %75, 1, !nosanitize !16
  br i1 %76, label %39, label %77, !nosanitize !16

77:                                               ; preds = %73
  %78 = extractvalue { i64, i1 } %75, 0, !nosanitize !16
  %79 = call i32 @inflateEnd(ptr noundef nonnull %5) #7
  switch i32 %55, label %80 [
    i32 1, label %86
    i32 2, label %85
  ]

80:                                               ; preds = %77
  %81 = icmp eq i32 %55, -5
  %82 = icmp eq i64 %61, 0
  %83 = select i1 %81, i1 %82, i1 false
  %84 = select i1 %83, i32 -3, i32 %55
  br label %86

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %4, %11, %15, %77, %80, %85
  %87 = phi i64 [ %6, %4 ], [ %6, %11 ], [ %78, %80 ], [ %78, %85 ], [ %78, %77 ], [ %6, %15 ]
  %88 = phi i64 [ %7, %4 ], [ %7, %11 ], [ %74, %80 ], [ %74, %85 ], [ %74, %77 ], [ %7, %15 ]
  %89 = phi i32 [ -2, %4 ], [ -2, %11 ], [ %84, %80 ], [ -3, %85 ], [ 0, %77 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #7
  store i64 %88, ptr %3, align 8, !tbaa !5
  store i64 %87, ptr %1, align 8, !tbaa !5
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define dso_local i32 @uncompress_z(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #7
  %6 = icmp ne i64 %3, 0
  %7 = icmp eq ptr %2, null
  %8 = and i1 %7, %6
  %9 = icmp eq ptr %1, null
  %10 = or i1 %9, %8
  br i1 %10, label %86, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr %1, align 8, !tbaa !5
  %13 = icmp ne i64 %12, 0
  %14 = icmp eq ptr %0, null
  %15 = and i1 %14, %13
  br i1 %15, label %86, label %16

16:                                               ; preds = %11
  store ptr %2, ptr %5, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 1
  store i32 0, ptr %17, align 8, !tbaa !13
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %19 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %86

21:                                               ; preds = %16
  %22 = icmp eq i64 %12, 0
  %23 = and i1 %14, %22
  %24 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 13
  %25 = select i1 %23, ptr %24, ptr %0
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 3
  store ptr %25, ptr %26, align 8, !tbaa !14
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 4
  store i32 0, ptr %27, align 8, !tbaa !15
  br label %30

28:                                               ; preds = %54
  %29 = load i32, ptr %27, align 8, !tbaa !15
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i32 [ %29, %28 ], [ 0, %21 ]
  %32 = phi i64 [ %55, %28 ], [ %3, %21 ]
  %33 = phi i64 [ %44, %28 ], [ %12, %21 ]
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = call i64 @llvm.umin.i64(i64 %33, i64 4294967295)
  %37 = trunc i64 %36 to i32
  store i32 %37, ptr %27, align 8, !tbaa !15
  %38 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %33, i64 %36), !nosanitize !16
  %39 = extractvalue { i64, i1 } %38, 1, !nosanitize !16
  br i1 %39, label %40, label %41, !nosanitize !16

40:                                               ; preds = %47, %35, %73, %71
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !16
  unreachable, !nosanitize !16

41:                                               ; preds = %35
  %42 = extractvalue { i64, i1 } %38, 0, !nosanitize !16
  br label %43

43:                                               ; preds = %41, %30
  %44 = phi i64 [ %42, %41 ], [ %33, %30 ]
  %45 = load i32, ptr %17, align 8, !tbaa !13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = call i64 @llvm.umin.i64(i64 %32, i64 4294967295)
  %49 = trunc i64 %48 to i32
  store i32 %49, ptr %17, align 8, !tbaa !13
  %50 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %32, i64 %48), !nosanitize !16
  %51 = extractvalue { i64, i1 } %50, 1, !nosanitize !16
  br i1 %51, label %40, label %52, !nosanitize !16

52:                                               ; preds = %47
  %53 = extractvalue { i64, i1 } %50, 0, !nosanitize !16
  br label %54

54:                                               ; preds = %52, %43
  %55 = phi i64 [ %53, %52 ], [ %32, %43 ]
  %56 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %28, label %58, !llvm.loop !17

58:                                               ; preds = %54
  %59 = load i32, ptr %17, align 8, !tbaa !13
  %60 = zext i32 %59 to i64
  %61 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %55, i64 %60), !nosanitize !16
  %62 = extractvalue { i64, i1 } %61, 0, !nosanitize !16
  %63 = extractvalue { i64, i1 } %61, 1, !nosanitize !16
  br i1 %63, label %64, label %65, !nosanitize !16

64:                                               ; preds = %65, %58
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !16
  unreachable, !nosanitize !16

65:                                               ; preds = %58
  %66 = load i32, ptr %27, align 8, !tbaa !15
  %67 = zext i32 %66 to i64
  %68 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %44, i64 %67), !nosanitize !16
  %69 = extractvalue { i64, i1 } %68, 0, !nosanitize !16
  %70 = extractvalue { i64, i1 } %68, 1, !nosanitize !16
  br i1 %70, label %64, label %71, !nosanitize !16

71:                                               ; preds = %65
  %72 = icmp ugt i64 %62, %3
  br i1 %72, label %40, label %73, !nosanitize !16

73:                                               ; preds = %71
  %74 = load i64, ptr %1, align 8, !tbaa !5
  %75 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %74, i64 %69), !nosanitize !16
  %76 = extractvalue { i64, i1 } %75, 1, !nosanitize !16
  br i1 %76, label %40, label %77, !nosanitize !16

77:                                               ; preds = %73
  %78 = extractvalue { i64, i1 } %75, 0, !nosanitize !16
  store i64 %78, ptr %1, align 8, !tbaa !5
  %79 = call i32 @inflateEnd(ptr noundef nonnull %5) #7
  switch i32 %56, label %80 [
    i32 1, label %86
    i32 2, label %85
  ]

80:                                               ; preds = %77
  %81 = icmp eq i32 %56, -5
  %82 = icmp eq i64 %62, 0
  %83 = select i1 %81, i1 %82, i1 false
  %84 = select i1 %83, i32 -3, i32 %56
  br label %86

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %4, %11, %16, %77, %80, %85
  %87 = phi i32 [ -2, %11 ], [ -2, %4 ], [ %19, %16 ], [ 0, %77 ], [ %84, %80 ], [ -3, %85 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #7
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define dso_local i32 @uncompress(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  %6 = load i64, ptr %1, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #7
  %7 = icmp ne i64 %3, 0
  %8 = icmp eq ptr %2, null
  %9 = and i1 %8, %7
  br i1 %9, label %83, label %10

10:                                               ; preds = %4
  %11 = icmp ne i64 %6, 0
  %12 = icmp eq ptr %0, null
  %13 = and i1 %12, %11
  br i1 %13, label %83, label %14

14:                                               ; preds = %10
  store ptr %2, ptr %5, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 1
  store i32 0, ptr %15, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %17 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %83

19:                                               ; preds = %14
  %20 = icmp eq i64 %6, 0
  %21 = and i1 %12, %20
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 13
  %23 = select i1 %21, ptr %22, ptr %0
  %24 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !14
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 4
  store i32 0, ptr %25, align 8, !tbaa !15
  br label %28

26:                                               ; preds = %52
  %27 = load i32, ptr %25, align 8, !tbaa !15
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %27, %26 ], [ 0, %19 ]
  %30 = phi i64 [ %53, %26 ], [ %3, %19 ]
  %31 = phi i64 [ %42, %26 ], [ %6, %19 ]
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = call i64 @llvm.umin.i64(i64 %31, i64 4294967295)
  %35 = trunc i64 %34 to i32
  store i32 %35, ptr %25, align 8, !tbaa !15
  %36 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %31, i64 %34), !nosanitize !16
  %37 = extractvalue { i64, i1 } %36, 1, !nosanitize !16
  br i1 %37, label %38, label %39, !nosanitize !16

38:                                               ; preds = %45, %33, %71, %69
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !16
  unreachable, !nosanitize !16

39:                                               ; preds = %33
  %40 = extractvalue { i64, i1 } %36, 0, !nosanitize !16
  br label %41

41:                                               ; preds = %39, %28
  %42 = phi i64 [ %40, %39 ], [ %31, %28 ]
  %43 = load i32, ptr %15, align 8, !tbaa !13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = call i64 @llvm.umin.i64(i64 %30, i64 4294967295)
  %47 = trunc i64 %46 to i32
  store i32 %47, ptr %15, align 8, !tbaa !13
  %48 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %30, i64 %46), !nosanitize !16
  %49 = extractvalue { i64, i1 } %48, 1, !nosanitize !16
  br i1 %49, label %38, label %50, !nosanitize !16

50:                                               ; preds = %45
  %51 = extractvalue { i64, i1 } %48, 0, !nosanitize !16
  br label %52

52:                                               ; preds = %50, %41
  %53 = phi i64 [ %51, %50 ], [ %30, %41 ]
  %54 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %26, label %56, !llvm.loop !17

56:                                               ; preds = %52
  %57 = load i32, ptr %15, align 8, !tbaa !13
  %58 = zext i32 %57 to i64
  %59 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %53, i64 %58), !nosanitize !16
  %60 = extractvalue { i64, i1 } %59, 0, !nosanitize !16
  %61 = extractvalue { i64, i1 } %59, 1, !nosanitize !16
  br i1 %61, label %62, label %63, !nosanitize !16

62:                                               ; preds = %63, %56
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !16
  unreachable, !nosanitize !16

63:                                               ; preds = %56
  %64 = load i32, ptr %25, align 8, !tbaa !15
  %65 = zext i32 %64 to i64
  %66 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %42, i64 %65), !nosanitize !16
  %67 = extractvalue { i64, i1 } %66, 0, !nosanitize !16
  %68 = extractvalue { i64, i1 } %66, 1, !nosanitize !16
  br i1 %68, label %62, label %69, !nosanitize !16

69:                                               ; preds = %63
  %70 = icmp ugt i64 %60, %3
  br i1 %70, label %38, label %71, !nosanitize !16

71:                                               ; preds = %69
  %72 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %6, i64 %67), !nosanitize !16
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !16
  br i1 %73, label %38, label %74, !nosanitize !16

74:                                               ; preds = %71
  %75 = extractvalue { i64, i1 } %72, 0, !nosanitize !16
  %76 = call i32 @inflateEnd(ptr noundef nonnull %5) #7
  switch i32 %54, label %77 [
    i32 1, label %83
    i32 2, label %82
  ]

77:                                               ; preds = %74
  %78 = icmp eq i32 %54, -5
  %79 = icmp eq i64 %60, 0
  %80 = select i1 %78, i1 %79, i1 false
  %81 = select i1 %80, i32 -3, i32 %54
  br label %83

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %4, %10, %14, %74, %77, %82
  %84 = phi i64 [ %6, %4 ], [ %6, %10 ], [ %75, %77 ], [ %75, %82 ], [ %75, %74 ], [ %6, %14 ]
  %85 = phi i32 [ -2, %4 ], [ -2, %10 ], [ %81, %77 ], [ -3, %82 ], [ 0, %74 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #7
  store i64 %84, ptr %1, align 8, !tbaa !5
  ret i32 %85
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"z_stream_s", !11, i64 0, !12, i64 8, !6, i64 16, !11, i64 24, !12, i64 32, !6, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !12, i64 88, !6, i64 96, !6, i64 104}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!10, !12, i64 8}
!14 = !{!10, !11, i64 24}
!15 = !{!10, !12, i64 32}
!16 = !{}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
