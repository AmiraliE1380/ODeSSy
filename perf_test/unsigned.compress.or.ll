; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.compress.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @compress2_z(ptr noundef %0, ptr noundef captures(address_is_null) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.z_stream_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %7 = icmp ne i64 %3, 0
  %8 = icmp eq ptr %2, null
  %9 = and i1 %8, %7
  %10 = icmp eq ptr %1, null
  %11 = or i1 %10, %9
  br i1 %11, label %60, label %12

12:                                               ; preds = %5
  %13 = load i64, ptr %1, align 8, !tbaa !8
  %14 = icmp ne i64 %13, 0
  %15 = icmp eq ptr %0, null
  %16 = and i1 %15, %14
  br i1 %16, label %60, label %17

17:                                               ; preds = %12
  store i64 0, ptr %1, align 8, !tbaa !8
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %19 = call i32 @deflateInit_(ptr noundef nonnull %6, i32 noundef %4, ptr noundef nonnull @.str, i32 noundef 112) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %17
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %22, align 8, !tbaa !10
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 0, ptr %23, align 8, !tbaa !15
  store ptr %2, ptr %6, align 8, !tbaa !16
  %24 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %24, align 8, !tbaa !17
  br label %27

25:                                               ; preds = %46
  %26 = load i32, ptr %23, align 8, !tbaa !15
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %26, %25 ], [ 0, %21 ]
  %29 = phi i64 [ %47, %25 ], [ %3, %21 ]
  %30 = phi i64 [ %38, %25 ], [ %13, %21 ]
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = call i64 @llvm.umin.i64(i64 %30, i64 4294967295)
  %34 = trunc nuw i64 %33 to i32
  store i32 %34, ptr %23, align 8, !tbaa !15
  %35 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %30, i64 %33), !nosanitize !18
  %36 = extractvalue { i64, i1 } %35, 0, !nosanitize !18
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i64 [ %36, %32 ], [ %30, %27 ]
  %39 = load i32, ptr %24, align 8, !tbaa !17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = call i64 @llvm.umin.i64(i64 %29, i64 4294967295)
  %43 = trunc nuw i64 %42 to i32
  store i32 %43, ptr %24, align 8, !tbaa !17
  %44 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %29, i64 %42), !nosanitize !18
  %45 = extractvalue { i64, i1 } %44, 0, !nosanitize !18
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi i64 [ %45, %41 ], [ %29, %37 ]
  %48 = icmp eq i64 %47, 0
  %49 = select i1 %48, i32 4, i32 0
  %50 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef %49) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %25, label %52, !llvm.loop !19

52:                                               ; preds = %46
  %53 = load ptr, ptr %22, align 8, !tbaa !10
  %54 = ptrtoint ptr %53 to i64
  %55 = ptrtoint ptr %0 to i64
  %56 = sub i64 %54, %55
  store i64 %56, ptr %1, align 8, !tbaa !8
  %57 = call i32 @deflateEnd(ptr noundef nonnull %6) #7
  %58 = icmp eq i32 %50, 1
  %59 = select i1 %58, i32 0, i32 %50
  br label %60

60:                                               ; preds = %52, %17, %12, %5
  %61 = phi i32 [ %59, %52 ], [ -2, %5 ], [ -2, %12 ], [ %19, %17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret i32 %61
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @deflateInit_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @compress2(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.z_stream_s, align 8
  %7 = load i64, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %8 = icmp ne i64 %3, 0
  %9 = icmp eq ptr %2, null
  %10 = and i1 %9, %8
  br i1 %10, label %58, label %11

11:                                               ; preds = %5
  %12 = icmp ne i64 %7, 0
  %13 = icmp eq ptr %0, null
  %14 = and i1 %13, %12
  br i1 %14, label %58, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %17 = call i32 @deflateInit_(ptr noundef nonnull %6, i32 noundef %4, ptr noundef nonnull @.str, i32 noundef 112) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %20, align 8, !tbaa !10
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 0, ptr %21, align 8, !tbaa !15
  store ptr %2, ptr %6, align 8, !tbaa !16
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %22, align 8, !tbaa !17
  br label %25

23:                                               ; preds = %44
  %24 = load i32, ptr %21, align 8, !tbaa !15
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %24, %23 ], [ 0, %19 ]
  %27 = phi i64 [ %45, %23 ], [ %3, %19 ]
  %28 = phi i64 [ %36, %23 ], [ %7, %19 ]
  %29 = icmp eq i32 %26, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = call i64 @llvm.umin.i64(i64 %28, i64 4294967295)
  %32 = trunc nuw i64 %31 to i32
  store i32 %32, ptr %21, align 8, !tbaa !15
  %33 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %28, i64 %31), !nosanitize !18
  %34 = extractvalue { i64, i1 } %33, 0, !nosanitize !18
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i64 [ %34, %30 ], [ %28, %25 ]
  %37 = load i32, ptr %22, align 8, !tbaa !17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = call i64 @llvm.umin.i64(i64 %27, i64 4294967295)
  %41 = trunc nuw i64 %40 to i32
  store i32 %41, ptr %22, align 8, !tbaa !17
  %42 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %27, i64 %40), !nosanitize !18
  %43 = extractvalue { i64, i1 } %42, 0, !nosanitize !18
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i64 [ %43, %39 ], [ %27, %35 ]
  %46 = icmp eq i64 %45, 0
  %47 = select i1 %46, i32 4, i32 0
  %48 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef %47) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %23, label %50, !llvm.loop !19

50:                                               ; preds = %44
  %51 = load ptr, ptr %20, align 8, !tbaa !10
  %52 = ptrtoint ptr %51 to i64
  %53 = ptrtoint ptr %0 to i64
  %54 = sub i64 %52, %53
  %55 = call i32 @deflateEnd(ptr noundef nonnull %6) #7
  %56 = icmp eq i32 %48, 1
  %57 = select i1 %56, i32 0, i32 %48
  br label %58

58:                                               ; preds = %50, %15, %11, %5
  %59 = phi i64 [ %7, %5 ], [ %7, %11 ], [ %54, %50 ], [ 0, %15 ]
  %60 = phi i32 [ -2, %5 ], [ -2, %11 ], [ %57, %50 ], [ %17, %15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  store i64 %59, ptr %1, align 8, !tbaa !8
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define dso_local i32 @compress_z(ptr noundef %0, ptr noundef captures(address_is_null) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %6 = icmp ne i64 %3, 0
  %7 = icmp eq ptr %2, null
  %8 = and i1 %7, %6
  %9 = icmp eq ptr %1, null
  %10 = or i1 %9, %8
  br i1 %10, label %59, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr %1, align 8, !tbaa !8
  %13 = icmp ne i64 %12, 0
  %14 = icmp eq ptr %0, null
  %15 = and i1 %14, %13
  br i1 %15, label %59, label %16

16:                                               ; preds = %11
  store i64 0, ptr %1, align 8, !tbaa !8
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %18 = call i32 @deflateInit_(ptr noundef nonnull %5, i32 noundef -1, ptr noundef nonnull @.str, i32 noundef 112) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %21, align 8, !tbaa !10
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %22, align 8, !tbaa !15
  store ptr %2, ptr %5, align 8, !tbaa !16
  %23 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %23, align 8, !tbaa !17
  br label %26

24:                                               ; preds = %45
  %25 = load i32, ptr %22, align 8, !tbaa !15
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %25, %24 ], [ 0, %20 ]
  %28 = phi i64 [ %46, %24 ], [ %3, %20 ]
  %29 = phi i64 [ %37, %24 ], [ %12, %20 ]
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = call i64 @llvm.umin.i64(i64 %29, i64 4294967295)
  %33 = trunc nuw i64 %32 to i32
  store i32 %33, ptr %22, align 8, !tbaa !15
  %34 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %29, i64 %32), !nosanitize !18
  %35 = extractvalue { i64, i1 } %34, 0, !nosanitize !18
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i64 [ %35, %31 ], [ %29, %26 ]
  %38 = load i32, ptr %23, align 8, !tbaa !17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = call i64 @llvm.umin.i64(i64 %28, i64 4294967295)
  %42 = trunc nuw i64 %41 to i32
  store i32 %42, ptr %23, align 8, !tbaa !17
  %43 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %28, i64 %41), !nosanitize !18
  %44 = extractvalue { i64, i1 } %43, 0, !nosanitize !18
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i64 [ %44, %40 ], [ %28, %36 ]
  %47 = icmp eq i64 %46, 0
  %48 = select i1 %47, i32 4, i32 0
  %49 = call i32 @deflate(ptr noundef nonnull %5, i32 noundef %48) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %24, label %51, !llvm.loop !19

51:                                               ; preds = %45
  %52 = load ptr, ptr %21, align 8, !tbaa !10
  %53 = ptrtoint ptr %52 to i64
  %54 = ptrtoint ptr %0 to i64
  %55 = sub i64 %53, %54
  store i64 %55, ptr %1, align 8, !tbaa !8
  %56 = call i32 @deflateEnd(ptr noundef nonnull %5) #7
  %57 = icmp eq i32 %49, 1
  %58 = select i1 %57, i32 0, i32 %49
  br label %59

59:                                               ; preds = %51, %16, %11, %4
  %60 = phi i32 [ %58, %51 ], [ -2, %4 ], [ -2, %11 ], [ %18, %16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define dso_local i32 @compress(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  %6 = load i64, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %7 = icmp ne i64 %3, 0
  %8 = icmp eq ptr %2, null
  %9 = and i1 %8, %7
  br i1 %9, label %57, label %10

10:                                               ; preds = %4
  %11 = icmp ne i64 %6, 0
  %12 = icmp eq ptr %0, null
  %13 = and i1 %12, %11
  br i1 %13, label %57, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %16 = call i32 @deflateInit_(ptr noundef nonnull %5, i32 noundef -1, ptr noundef nonnull @.str, i32 noundef 112) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %19, align 8, !tbaa !10
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %20, align 8, !tbaa !15
  store ptr %2, ptr %5, align 8, !tbaa !16
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %21, align 8, !tbaa !17
  br label %24

22:                                               ; preds = %43
  %23 = load i32, ptr %20, align 8, !tbaa !15
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %23, %22 ], [ 0, %18 ]
  %26 = phi i64 [ %44, %22 ], [ %3, %18 ]
  %27 = phi i64 [ %35, %22 ], [ %6, %18 ]
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = call i64 @llvm.umin.i64(i64 %27, i64 4294967295)
  %31 = trunc nuw i64 %30 to i32
  store i32 %31, ptr %20, align 8, !tbaa !15
  %32 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %27, i64 %30), !nosanitize !18
  %33 = extractvalue { i64, i1 } %32, 0, !nosanitize !18
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i64 [ %33, %29 ], [ %27, %24 ]
  %36 = load i32, ptr %21, align 8, !tbaa !17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = call i64 @llvm.umin.i64(i64 %26, i64 4294967295)
  %40 = trunc nuw i64 %39 to i32
  store i32 %40, ptr %21, align 8, !tbaa !17
  %41 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %26, i64 %39), !nosanitize !18
  %42 = extractvalue { i64, i1 } %41, 0, !nosanitize !18
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i64 [ %42, %38 ], [ %26, %34 ]
  %45 = icmp eq i64 %44, 0
  %46 = select i1 %45, i32 4, i32 0
  %47 = call i32 @deflate(ptr noundef nonnull %5, i32 noundef %46) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %22, label %49, !llvm.loop !19

49:                                               ; preds = %43
  %50 = load ptr, ptr %19, align 8, !tbaa !10
  %51 = ptrtoint ptr %50 to i64
  %52 = ptrtoint ptr %0 to i64
  %53 = sub i64 %51, %52
  %54 = call i32 @deflateEnd(ptr noundef nonnull %5) #7
  %55 = icmp eq i32 %47, 1
  %56 = select i1 %55, i32 0, i32 %47
  br label %57

57:                                               ; preds = %49, %14, %10, %4
  %58 = phi i64 [ %6, %4 ], [ %6, %10 ], [ %53, %49 ], [ 0, %14 ]
  %59 = phi i32 [ -2, %4 ], [ -2, %10 ], [ %56, %49 ], [ %16, %14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  store i64 %58, ptr %1, align 8, !tbaa !8
  ret i32 %59
}

; Function Attrs: nounwind memory(inaccessiblemem: write) uwtable
define dso_local range(i64 13, 0) i64 @compressBound_z(i64 noundef %0) local_unnamed_addr #5 {
  %2 = lshr i64 %0, 12
  %3 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %2), !nosanitize !18
  %4 = extractvalue { i64, i1 } %3, 1, !nosanitize !18
  br i1 %4, label %5, label %6, !prof !21, !nosanitize !18

5:                                                ; preds = %1
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

6:                                                ; preds = %1
  %7 = extractvalue { i64, i1 } %3, 0, !nosanitize !18
  %8 = lshr i64 %0, 14
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %8), !nosanitize !18
  %10 = extractvalue { i64, i1 } %9, 1, !nosanitize !18
  br i1 %10, label %11, label %12, !prof !21, !nosanitize !18

11:                                               ; preds = %6
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

12:                                               ; preds = %6
  %13 = extractvalue { i64, i1 } %9, 0, !nosanitize !18
  %14 = lshr i64 %0, 25
  %15 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %14), !nosanitize !18
  %16 = extractvalue { i64, i1 } %15, 1, !nosanitize !18
  br i1 %16, label %17, label %18, !prof !21, !nosanitize !18

17:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

18:                                               ; preds = %12
  %19 = extractvalue { i64, i1 } %15, 0, !nosanitize !18
  %20 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 13), !nosanitize !18
  %21 = extractvalue { i64, i1 } %20, 1, !nosanitize !18
  br i1 %21, label %22, label %23, !prof !21, !nosanitize !18

22:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %20, 0, !nosanitize !18
  %25 = icmp ult i64 %24, %0
  %26 = select i1 %25, i64 -1, i64 %24
  ret i64 %26
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind memory(inaccessiblemem: write) uwtable
define dso_local range(i64 13, 0) i64 @compressBound(i64 noundef %0) local_unnamed_addr #5 {
  %2 = lshr i64 %0, 12
  %3 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %2), !nosanitize !18
  %4 = extractvalue { i64, i1 } %3, 1, !nosanitize !18
  br i1 %4, label %5, label %6, !prof !21, !nosanitize !18

5:                                                ; preds = %1
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

6:                                                ; preds = %1
  %7 = extractvalue { i64, i1 } %3, 0, !nosanitize !18
  %8 = lshr i64 %0, 14
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %8), !nosanitize !18
  %10 = extractvalue { i64, i1 } %9, 1, !nosanitize !18
  br i1 %10, label %11, label %12, !prof !21, !nosanitize !18

11:                                               ; preds = %6
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

12:                                               ; preds = %6
  %13 = extractvalue { i64, i1 } %9, 0, !nosanitize !18
  %14 = lshr i64 %0, 25
  %15 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %14), !nosanitize !18
  %16 = extractvalue { i64, i1 } %15, 1, !nosanitize !18
  br i1 %16, label %17, label %18, !prof !21, !nosanitize !18

17:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

18:                                               ; preds = %12
  %19 = extractvalue { i64, i1 } %15, 0, !nosanitize !18
  %20 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 13), !nosanitize !18
  %21 = extractvalue { i64, i1 } %20, 1, !nosanitize !18
  br i1 %21, label %22, label %23, !prof !21, !nosanitize !18

22:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %20, 0, !nosanitize !18
  %25 = icmp ult i64 %24, %0
  %26 = select i1 %25, i64 -1, i64 %24
  ret i64 %26
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nomerge noreturn nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !12, i64 24}
!11 = !{!"z_stream_s", !12, i64 0, !5, i64 8, !9, i64 16, !12, i64 24, !5, i64 32, !9, i64 40, !12, i64 48, !14, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !5, i64 88, !9, i64 96, !9, i64 104}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 _ZTS14internal_state", !13, i64 0}
!15 = !{!11, !5, i64 32}
!16 = !{!11, !12, i64 0}
!17 = !{!11, !5, i64 8}
!18 = !{}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"branch_weights", i32 1, i32 1048575}
