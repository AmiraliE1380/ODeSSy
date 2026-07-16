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
  br i1 %11, label %66, label %12

12:                                               ; preds = %5
  %13 = load i64, ptr %1, align 8, !tbaa !8
  %14 = icmp ne i64 %13, 0
  %15 = icmp eq ptr %0, null
  %16 = and i1 %15, %14
  br i1 %16, label %66, label %17

17:                                               ; preds = %12
  store i64 0, ptr %1, align 8, !tbaa !8
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %19 = call i32 @deflateInit_(ptr noundef nonnull %6, i32 noundef %4, ptr noundef nonnull @.str, i32 noundef 112) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %17
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %22, align 8, !tbaa !10
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 0, ptr %23, align 8, !tbaa !15
  store ptr %2, ptr %6, align 8, !tbaa !16
  %24 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %24, align 8, !tbaa !17
  br label %27

25:                                               ; preds = %52
  %26 = load i32, ptr %23, align 8, !tbaa !15
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %26, %25 ], [ 0, %21 ]
  %29 = phi i64 [ %53, %25 ], [ %3, %21 ]
  %30 = phi i64 [ %41, %25 ], [ %13, %21 ]
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = call i64 @llvm.umin.i64(i64 %30, i64 4294967295)
  %34 = trunc nuw i64 %33 to i32
  store i32 %34, ptr %23, align 8, !tbaa !15
  %35 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %30, i64 %33), !nosanitize !18
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !18
  br i1 %36, label %37, label %38, !prof !19, !nosanitize !18

37:                                               ; preds = %32
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !18
  unreachable, !nosanitize !18

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !18
  br label %40

40:                                               ; preds = %38, %27
  %41 = phi i64 [ %39, %38 ], [ %30, %27 ]
  %42 = load i32, ptr %24, align 8, !tbaa !17
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = call i64 @llvm.umin.i64(i64 %29, i64 4294967295)
  %46 = trunc nuw i64 %45 to i32
  store i32 %46, ptr %24, align 8, !tbaa !17
  %47 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %29, i64 %45), !nosanitize !18
  %48 = extractvalue { i64, i1 } %47, 1, !nosanitize !18
  br i1 %48, label %49, label %50, !prof !19, !nosanitize !18

49:                                               ; preds = %44
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !18
  unreachable, !nosanitize !18

50:                                               ; preds = %44
  %51 = extractvalue { i64, i1 } %47, 0, !nosanitize !18
  br label %52

52:                                               ; preds = %50, %40
  %53 = phi i64 [ %51, %50 ], [ %29, %40 ]
  %54 = icmp eq i64 %53, 0
  %55 = select i1 %54, i32 4, i32 0
  %56 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef %55) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %25, label %58, !llvm.loop !20

58:                                               ; preds = %52
  %59 = load ptr, ptr %22, align 8, !tbaa !10
  %60 = ptrtoint ptr %59 to i64
  %61 = ptrtoint ptr %0 to i64
  %62 = sub i64 %60, %61
  store i64 %62, ptr %1, align 8, !tbaa !8
  %63 = call i32 @deflateEnd(ptr noundef nonnull %6) #7
  %64 = icmp eq i32 %56, 1
  %65 = select i1 %64, i32 0, i32 %56
  br label %66

66:                                               ; preds = %58, %17, %12, %5
  %67 = phi i32 [ %65, %58 ], [ -2, %5 ], [ -2, %12 ], [ %19, %17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret i32 %67
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @deflateInit_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @compress2(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.z_stream_s, align 8
  %7 = load i64, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %8 = icmp ne i64 %3, 0
  %9 = icmp eq ptr %2, null
  %10 = and i1 %9, %8
  br i1 %10, label %64, label %11

11:                                               ; preds = %5
  %12 = icmp ne i64 %7, 0
  %13 = icmp eq ptr %0, null
  %14 = and i1 %13, %12
  br i1 %14, label %64, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %17 = call i32 @deflateInit_(ptr noundef nonnull %6, i32 noundef %4, ptr noundef nonnull @.str, i32 noundef 112) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %20, align 8, !tbaa !10
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 0, ptr %21, align 8, !tbaa !15
  store ptr %2, ptr %6, align 8, !tbaa !16
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %22, align 8, !tbaa !17
  br label %25

23:                                               ; preds = %50
  %24 = load i32, ptr %21, align 8, !tbaa !15
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %24, %23 ], [ 0, %19 ]
  %27 = phi i64 [ %51, %23 ], [ %3, %19 ]
  %28 = phi i64 [ %39, %23 ], [ %7, %19 ]
  %29 = icmp eq i32 %26, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = call i64 @llvm.umin.i64(i64 %28, i64 4294967295)
  %32 = trunc nuw i64 %31 to i32
  store i32 %32, ptr %21, align 8, !tbaa !15
  %33 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %28, i64 %31), !nosanitize !18
  %34 = extractvalue { i64, i1 } %33, 1, !nosanitize !18
  br i1 %34, label %35, label %36, !prof !19, !nosanitize !18

35:                                               ; preds = %30
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !18
  unreachable, !nosanitize !18

36:                                               ; preds = %30
  %37 = extractvalue { i64, i1 } %33, 0, !nosanitize !18
  br label %38

38:                                               ; preds = %36, %25
  %39 = phi i64 [ %37, %36 ], [ %28, %25 ]
  %40 = load i32, ptr %22, align 8, !tbaa !17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = call i64 @llvm.umin.i64(i64 %27, i64 4294967295)
  %44 = trunc nuw i64 %43 to i32
  store i32 %44, ptr %22, align 8, !tbaa !17
  %45 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %27, i64 %43), !nosanitize !18
  %46 = extractvalue { i64, i1 } %45, 1, !nosanitize !18
  br i1 %46, label %47, label %48, !prof !19, !nosanitize !18

47:                                               ; preds = %42
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !18
  unreachable, !nosanitize !18

48:                                               ; preds = %42
  %49 = extractvalue { i64, i1 } %45, 0, !nosanitize !18
  br label %50

50:                                               ; preds = %48, %38
  %51 = phi i64 [ %49, %48 ], [ %27, %38 ]
  %52 = icmp eq i64 %51, 0
  %53 = select i1 %52, i32 4, i32 0
  %54 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef %53) #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %23, label %56, !llvm.loop !20

56:                                               ; preds = %50
  %57 = load ptr, ptr %20, align 8, !tbaa !10
  %58 = ptrtoint ptr %57 to i64
  %59 = ptrtoint ptr %0 to i64
  %60 = sub i64 %58, %59
  %61 = call i32 @deflateEnd(ptr noundef nonnull %6) #7
  %62 = icmp eq i32 %54, 1
  %63 = select i1 %62, i32 0, i32 %54
  br label %64

64:                                               ; preds = %56, %15, %11, %5
  %65 = phi i64 [ %7, %5 ], [ %7, %11 ], [ %60, %56 ], [ 0, %15 ]
  %66 = phi i32 [ -2, %5 ], [ -2, %11 ], [ %63, %56 ], [ %17, %15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  store i64 %65, ptr %1, align 8, !tbaa !8
  ret i32 %66
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
  br i1 %10, label %65, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr %1, align 8, !tbaa !8
  %13 = icmp ne i64 %12, 0
  %14 = icmp eq ptr %0, null
  %15 = and i1 %14, %13
  br i1 %15, label %65, label %16

16:                                               ; preds = %11
  store i64 0, ptr %1, align 8, !tbaa !8
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %18 = call i32 @deflateInit_(ptr noundef nonnull %5, i32 noundef -1, ptr noundef nonnull @.str, i32 noundef 112) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %21, align 8, !tbaa !10
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %22, align 8, !tbaa !15
  store ptr %2, ptr %5, align 8, !tbaa !16
  %23 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %23, align 8, !tbaa !17
  br label %26

24:                                               ; preds = %51
  %25 = load i32, ptr %22, align 8, !tbaa !15
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %25, %24 ], [ 0, %20 ]
  %28 = phi i64 [ %52, %24 ], [ %3, %20 ]
  %29 = phi i64 [ %40, %24 ], [ %12, %20 ]
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = call i64 @llvm.umin.i64(i64 %29, i64 4294967295)
  %33 = trunc nuw i64 %32 to i32
  store i32 %33, ptr %22, align 8, !tbaa !15
  %34 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %29, i64 %32), !nosanitize !18
  %35 = extractvalue { i64, i1 } %34, 1, !nosanitize !18
  br i1 %35, label %36, label %37, !prof !19, !nosanitize !18

36:                                               ; preds = %31
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !18
  unreachable, !nosanitize !18

37:                                               ; preds = %31
  %38 = extractvalue { i64, i1 } %34, 0, !nosanitize !18
  br label %39

39:                                               ; preds = %37, %26
  %40 = phi i64 [ %38, %37 ], [ %29, %26 ]
  %41 = load i32, ptr %23, align 8, !tbaa !17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = call i64 @llvm.umin.i64(i64 %28, i64 4294967295)
  %45 = trunc nuw i64 %44 to i32
  store i32 %45, ptr %23, align 8, !tbaa !17
  %46 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %28, i64 %44), !nosanitize !18
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !18
  br i1 %47, label %48, label %49, !prof !19, !nosanitize !18

48:                                               ; preds = %43
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !18
  unreachable, !nosanitize !18

49:                                               ; preds = %43
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !18
  br label %51

51:                                               ; preds = %49, %39
  %52 = phi i64 [ %50, %49 ], [ %28, %39 ]
  %53 = icmp eq i64 %52, 0
  %54 = select i1 %53, i32 4, i32 0
  %55 = call i32 @deflate(ptr noundef nonnull %5, i32 noundef %54) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %24, label %57, !llvm.loop !20

57:                                               ; preds = %51
  %58 = load ptr, ptr %21, align 8, !tbaa !10
  %59 = ptrtoint ptr %58 to i64
  %60 = ptrtoint ptr %0 to i64
  %61 = sub i64 %59, %60
  store i64 %61, ptr %1, align 8, !tbaa !8
  %62 = call i32 @deflateEnd(ptr noundef nonnull %5) #7
  %63 = icmp eq i32 %55, 1
  %64 = select i1 %63, i32 0, i32 %55
  br label %65

65:                                               ; preds = %57, %16, %11, %4
  %66 = phi i32 [ %64, %57 ], [ -2, %4 ], [ -2, %11 ], [ %18, %16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local i32 @compress(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  %6 = load i64, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %7 = icmp ne i64 %3, 0
  %8 = icmp eq ptr %2, null
  %9 = and i1 %8, %7
  br i1 %9, label %63, label %10

10:                                               ; preds = %4
  %11 = icmp ne i64 %6, 0
  %12 = icmp eq ptr %0, null
  %13 = and i1 %12, %11
  br i1 %13, label %63, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %16 = call i32 @deflateInit_(ptr noundef nonnull %5, i32 noundef -1, ptr noundef nonnull @.str, i32 noundef 112) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %19, align 8, !tbaa !10
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %20, align 8, !tbaa !15
  store ptr %2, ptr %5, align 8, !tbaa !16
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %21, align 8, !tbaa !17
  br label %24

22:                                               ; preds = %49
  %23 = load i32, ptr %20, align 8, !tbaa !15
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %23, %22 ], [ 0, %18 ]
  %26 = phi i64 [ %50, %22 ], [ %3, %18 ]
  %27 = phi i64 [ %38, %22 ], [ %6, %18 ]
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = call i64 @llvm.umin.i64(i64 %27, i64 4294967295)
  %31 = trunc nuw i64 %30 to i32
  store i32 %31, ptr %20, align 8, !tbaa !15
  %32 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %27, i64 %30), !nosanitize !18
  %33 = extractvalue { i64, i1 } %32, 1, !nosanitize !18
  br i1 %33, label %34, label %35, !prof !19, !nosanitize !18

34:                                               ; preds = %29
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !18
  unreachable, !nosanitize !18

35:                                               ; preds = %29
  %36 = extractvalue { i64, i1 } %32, 0, !nosanitize !18
  br label %37

37:                                               ; preds = %35, %24
  %38 = phi i64 [ %36, %35 ], [ %27, %24 ]
  %39 = load i32, ptr %21, align 8, !tbaa !17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = call i64 @llvm.umin.i64(i64 %26, i64 4294967295)
  %43 = trunc nuw i64 %42 to i32
  store i32 %43, ptr %21, align 8, !tbaa !17
  %44 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %26, i64 %42), !nosanitize !18
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !18
  br i1 %45, label %46, label %47, !prof !19, !nosanitize !18

46:                                               ; preds = %41
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !18
  unreachable, !nosanitize !18

47:                                               ; preds = %41
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !18
  br label %49

49:                                               ; preds = %47, %37
  %50 = phi i64 [ %48, %47 ], [ %26, %37 ]
  %51 = icmp eq i64 %50, 0
  %52 = select i1 %51, i32 4, i32 0
  %53 = call i32 @deflate(ptr noundef nonnull %5, i32 noundef %52) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %22, label %55, !llvm.loop !20

55:                                               ; preds = %49
  %56 = load ptr, ptr %19, align 8, !tbaa !10
  %57 = ptrtoint ptr %56 to i64
  %58 = ptrtoint ptr %0 to i64
  %59 = sub i64 %57, %58
  %60 = call i32 @deflateEnd(ptr noundef nonnull %5) #7
  %61 = icmp eq i32 %53, 1
  %62 = select i1 %61, i32 0, i32 %53
  br label %63

63:                                               ; preds = %55, %14, %10, %4
  %64 = phi i64 [ %6, %4 ], [ %6, %10 ], [ %59, %55 ], [ 0, %14 ]
  %65 = phi i32 [ -2, %4 ], [ -2, %10 ], [ %62, %55 ], [ %16, %14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  store i64 %64, ptr %1, align 8, !tbaa !8
  ret i32 %65
}

; Function Attrs: nounwind memory(inaccessiblemem: write) uwtable
define dso_local range(i64 13, 0) i64 @compressBound_z(i64 noundef %0) local_unnamed_addr #5 {
  %2 = lshr i64 %0, 12
  %3 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %2), !nosanitize !18
  %4 = extractvalue { i64, i1 } %3, 1, !nosanitize !18
  br i1 %4, label %5, label %6, !prof !19, !nosanitize !18

5:                                                ; preds = %1
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

6:                                                ; preds = %1
  %7 = extractvalue { i64, i1 } %3, 0, !nosanitize !18
  %8 = lshr i64 %0, 14
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %8), !nosanitize !18
  %10 = extractvalue { i64, i1 } %9, 1, !nosanitize !18
  br i1 %10, label %11, label %12, !prof !19, !nosanitize !18

11:                                               ; preds = %6
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

12:                                               ; preds = %6
  %13 = extractvalue { i64, i1 } %9, 0, !nosanitize !18
  %14 = lshr i64 %0, 25
  %15 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %14), !nosanitize !18
  %16 = extractvalue { i64, i1 } %15, 1, !nosanitize !18
  br i1 %16, label %17, label %18, !prof !19, !nosanitize !18

17:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

18:                                               ; preds = %12
  %19 = extractvalue { i64, i1 } %15, 0, !nosanitize !18
  %20 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 13), !nosanitize !18
  %21 = extractvalue { i64, i1 } %20, 1, !nosanitize !18
  br i1 %21, label %22, label %23, !prof !19, !nosanitize !18

22:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %20, 0, !nosanitize !18
  %25 = icmp ult i64 %24, %0
  %26 = select i1 %25, i64 -1, i64 %24
  ret i64 %26
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind memory(inaccessiblemem: write) uwtable
define dso_local range(i64 13, 0) i64 @compressBound(i64 noundef %0) local_unnamed_addr #5 {
  %2 = lshr i64 %0, 12
  %3 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %2), !nosanitize !18
  %4 = extractvalue { i64, i1 } %3, 1, !nosanitize !18
  br i1 %4, label %5, label %6, !prof !19, !nosanitize !18

5:                                                ; preds = %1
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

6:                                                ; preds = %1
  %7 = extractvalue { i64, i1 } %3, 0, !nosanitize !18
  %8 = lshr i64 %0, 14
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %8), !nosanitize !18
  %10 = extractvalue { i64, i1 } %9, 1, !nosanitize !18
  br i1 %10, label %11, label %12, !prof !19, !nosanitize !18

11:                                               ; preds = %6
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

12:                                               ; preds = %6
  %13 = extractvalue { i64, i1 } %9, 0, !nosanitize !18
  %14 = lshr i64 %0, 25
  %15 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %14), !nosanitize !18
  %16 = extractvalue { i64, i1 } %15, 1, !nosanitize !18
  br i1 %16, label %17, label %18, !prof !19, !nosanitize !18

17:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

18:                                               ; preds = %12
  %19 = extractvalue { i64, i1 } %15, 0, !nosanitize !18
  %20 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 13), !nosanitize !18
  %21 = extractvalue { i64, i1 } %20, 1, !nosanitize !18
  br i1 %21, label %22, label %23, !prof !19, !nosanitize !18

22:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !18
  unreachable, !nosanitize !18

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %20, 0, !nosanitize !18
  %25 = icmp ult i64 %24, %0
  %26 = select i1 %25, i64 -1, i64 %24
  ret i64 %26
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!19 = !{!"branch_weights", i32 1, i32 1048575}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
