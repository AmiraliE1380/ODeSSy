; ModuleID = '/mydata/zstd/lib/decompress/zstd_decompress.c'
source_filename = "/mydata/zstd/lib/decompress/zstd_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_FrameHeader = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameSizeInfo = type { i64, i64, i64 }
%struct.blockProperties_t = type { i32, i32, i32 }
%struct.ZSTD_Trace = type { i32, i32, i32, i32, i64, i64, i64, ptr, ptr, ptr }
%struct.ZSTD_outBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_inBuffer_s = type { ptr, i64, i64 }

@OF_base = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 5, i32 13, i32 29, i32 61, i32 125, i32 253, i32 509, i32 1021, i32 2045, i32 4093, i32 8189, i32 16381, i32 32765, i32 65533, i32 131069, i32 262141, i32 524285, i32 1048573, i32 2097149, i32 4194301, i32 8388605, i32 16777213, i32 33554429, i32 67108861, i32 134217725, i32 268435453, i32 536870909, i32 1073741821, i32 2147483645], align 16
@OF_bits = internal constant [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@ML_base = internal constant [53 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 37, i32 39, i32 41, i32 43, i32 47, i32 51, i32 59, i32 67, i32 83, i32 99, i32 131, i32 259, i32 515, i32 1027, i32 2051, i32 4099, i32 8195, i32 16387, i32 32771, i32 65539], align 16
@ML_bits = internal constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@LL_base = internal constant [36 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 18, i32 20, i32 22, i32 24, i32 28, i32 32, i32 40, i32 48, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536], align 16
@LL_bits = internal constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@repStartValue = internal unnamed_addr constant [3 x i32] [i32 1, i32 4, i32 8], align 4
@ZSTD_did_fieldSize = internal unnamed_addr constant [4 x i64] [i64 0, i64 1, i64 2, i64 4], align 16
@ZSTD_fcs_fieldSize = internal unnamed_addr constant [4 x i64] [i64 0, i64 2, i64 4, i64 8], align 16
@switch.table.ZSTD_nextInputType = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 5], align 4

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_sizeof_DCtx(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call i64 @ZSTD_sizeof_DDict(ptr noundef %5) #17
  %7 = add i64 %6, 95976
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 30248
  %9 = load i64, ptr %8, align 8, !tbaa !21
  %10 = add i64 %7, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 30280
  %12 = load i64, ptr %11, align 8, !tbaa !22
  %13 = add i64 %10, %12
  br label %14

14:                                               ; preds = %1, %3
  %15 = phi i64 [ %13, %3 ], [ 0, %1 ]
  ret i64 %15
}

declare i64 @ZSTD_sizeof_DDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_estimateDCtxSize() local_unnamed_addr #2 {
  ret i64 95976
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @ZSTD_initStaticDCtx(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 0
  %6 = icmp ult i64 %1, 95976
  %7 = or i1 %6, %5
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr null, ptr %11, align 8, !tbaa !23
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 30204
  store i32 0, ptr %12, align 4, !tbaa !24
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %13, align 8, !tbaa !25
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 30280
  store i64 0, ptr %14, align 8, !tbaa !22
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30316
  store i32 0, ptr %16, align 4, !tbaa !26
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 95960
  store i64 0, ptr %17, align 8, !tbaa !27
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %15, i8 0, i64 20, i1 false)
  store i32 1, ptr %18, align 8, !tbaa !28
  %19 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #18, !srcloc !29
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %8
  %22 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #18, !srcloc !30
  %23 = icmp ugt i32 %19, 6
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #18, !srcloc !31
  %26 = extractvalue { i32, i32, i32 } %25, 1
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = lshr i32 %26, 8
  %31 = and i32 %30, 1
  br label %32

32:                                               ; preds = %8, %21, %24, %29
  %33 = phi i32 [ 0, %24 ], [ %31, %29 ], [ 0, %21 ], [ 0, %8 ]
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 30180
  store i32 %33, ptr %34, align 4, !tbaa !32
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 30216
  store ptr null, ptr %35, align 8, !tbaa !33
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  store i32 0, ptr %36, align 8, !tbaa !34
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 30264
  store i64 134217729, ptr %37, align 8, !tbaa !35
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 30320
  store i32 0, ptr %38, align 8, !tbaa !36
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 30108
  store i32 0, ptr %39, align 4, !tbaa !37
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 30224
  store i32 0, ptr %40, align 8, !tbaa !38
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 30228
  store i32 0, ptr %41, align 4, !tbaa !39
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 30232
  store i32 0, ptr %42, align 8, !tbaa !40
  store i64 %1, ptr %9, align 8, !tbaa !41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 95976
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 30240
  store ptr %43, ptr %44, align 8, !tbaa !42
  br label %45

45:                                               ; preds = %2, %32
  %46 = phi ptr [ %0, %32 ], [ null, %2 ]
  ret ptr %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createDCtx_advanced(ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %2, null
  %8 = icmp eq ptr %4, null
  %9 = xor i1 %7, %8
  br i1 %9, label %56, label %10

10:                                               ; preds = %1
  br i1 %7, label %13, label %11

11:                                               ; preds = %10
  %12 = tail call ptr %2(ptr noundef %6, i64 noundef 95976) #17
  br label %15

13:                                               ; preds = %10
  %14 = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #19
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 30128
  store ptr %2, ptr %19, align 8, !tbaa !43
  %20 = getelementptr inbounds nuw i8, ptr %16, i64 30136
  store ptr %4, ptr %20, align 8, !tbaa !43
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 30144
  store ptr %6, ptr %21, align 8, !tbaa !43
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 30168
  store i64 0, ptr %22, align 8, !tbaa !41
  %23 = getelementptr inbounds nuw i8, ptr %16, i64 30184
  %24 = getelementptr inbounds nuw i8, ptr %16, i64 29912
  store ptr null, ptr %24, align 8, !tbaa !23
  %25 = getelementptr inbounds nuw i8, ptr %16, i64 30204
  store i32 0, ptr %25, align 4, !tbaa !24
  %26 = getelementptr inbounds nuw i8, ptr %16, i64 30208
  store i32 0, ptr %26, align 8, !tbaa !25
  %27 = getelementptr inbounds nuw i8, ptr %16, i64 30280
  store i64 0, ptr %27, align 8, !tbaa !22
  %28 = getelementptr inbounds nuw i8, ptr %16, i64 30236
  %29 = getelementptr inbounds nuw i8, ptr %16, i64 30316
  store i32 0, ptr %29, align 4, !tbaa !26
  %30 = getelementptr inbounds nuw i8, ptr %16, i64 95960
  store i64 0, ptr %30, align 8, !tbaa !27
  %31 = getelementptr inbounds nuw i8, ptr %16, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %28, i8 0, i64 20, i1 false)
  store i32 1, ptr %31, align 8, !tbaa !28
  %32 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #18, !srcloc !29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %18
  %35 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #18, !srcloc !30
  %36 = icmp ugt i32 %32, 6
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #18, !srcloc !31
  %39 = extractvalue { i32, i32, i32 } %38, 1
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = lshr i32 %39, 8
  %44 = and i32 %43, 1
  br label %45

45:                                               ; preds = %42, %37, %34, %18
  %46 = phi i32 [ 0, %37 ], [ %44, %42 ], [ 0, %34 ], [ 0, %18 ]
  %47 = getelementptr inbounds nuw i8, ptr %16, i64 30180
  store i32 %46, ptr %47, align 4, !tbaa !32
  %48 = getelementptr inbounds nuw i8, ptr %16, i64 30216
  store ptr null, ptr %48, align 8, !tbaa !33
  %49 = getelementptr inbounds nuw i8, ptr %16, i64 30104
  store i32 0, ptr %49, align 8, !tbaa !34
  %50 = getelementptr inbounds nuw i8, ptr %16, i64 30264
  store i64 134217729, ptr %50, align 8, !tbaa !35
  %51 = getelementptr inbounds nuw i8, ptr %16, i64 30320
  store i32 0, ptr %51, align 8, !tbaa !36
  %52 = getelementptr inbounds nuw i8, ptr %16, i64 30108
  store i32 0, ptr %52, align 4, !tbaa !37
  %53 = getelementptr inbounds nuw i8, ptr %16, i64 30224
  store i32 0, ptr %53, align 8, !tbaa !38
  %54 = getelementptr inbounds nuw i8, ptr %16, i64 30228
  store i32 0, ptr %54, align 4, !tbaa !39
  %55 = getelementptr inbounds nuw i8, ptr %16, i64 30232
  store i32 0, ptr %55, align 8, !tbaa !40
  br label %56

56:                                               ; preds = %1, %15, %45
  %57 = phi ptr [ null, %1 ], [ %16, %45 ], [ null, %15 ]
  ret ptr %57
}

; Function Attrs: nounwind memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noundef ptr @ZSTD_createDCtx() local_unnamed_addr #5 {
  %1 = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #19
  %2 = icmp eq ptr %1, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 30128
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 30168
  store i64 0, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 30184
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 29912
  store ptr null, ptr %7, align 8, !tbaa !23
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 30204
  store i32 0, ptr %8, align 4, !tbaa !24
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 30208
  store i32 0, ptr %9, align 8, !tbaa !25
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 30280
  store i64 0, ptr %10, align 8, !tbaa !22
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 30236
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 30316
  store i32 0, ptr %12, align 4, !tbaa !26
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 95960
  store i64 0, ptr %13, align 8, !tbaa !27
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 1, ptr %14, align 8, !tbaa !28
  %15 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #18, !srcloc !29
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %3
  %18 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #18, !srcloc !30
  %19 = icmp ugt i32 %15, 6
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #18, !srcloc !31
  %22 = extractvalue { i32, i32, i32 } %21, 1
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = lshr i32 %22, 8
  %27 = and i32 %26, 1
  br label %28

28:                                               ; preds = %25, %20, %17, %3
  %29 = phi i32 [ 0, %20 ], [ %27, %25 ], [ 0, %17 ], [ 0, %3 ]
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 30180
  store i32 %29, ptr %30, align 4, !tbaa !32
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 30216
  store ptr null, ptr %31, align 8, !tbaa !33
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 30104
  store i32 0, ptr %32, align 8, !tbaa !34
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 30264
  store i64 134217729, ptr %33, align 8, !tbaa !35
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 30320
  store i32 0, ptr %34, align 8, !tbaa !36
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 30108
  store i32 0, ptr %35, align 4, !tbaa !37
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 30224
  store i32 0, ptr %36, align 8, !tbaa !38
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 30228
  store i32 0, ptr %37, align 4, !tbaa !39
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 30232
  store i32 0, ptr %38, align 8, !tbaa !40
  br label %39

39:                                               ; preds = %0, %28
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_freeDCtx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %42, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %5 = load i64, ptr %4, align 8, !tbaa !41
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 30136
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 30144
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = tail call i64 @ZSTD_freeDDict(ptr noundef %13) #17
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %15, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30240
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %7
  %20 = icmp eq ptr %9, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void %9(ptr noundef %11, ptr noundef nonnull %17) #17
  br label %23

22:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %17) #17
  br label %23

23:                                               ; preds = %7, %21, %22
  store ptr null, ptr %16, align 8, !tbaa !42
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 30216
  %25 = load ptr, ptr %24, align 8, !tbaa !33
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !44
  %29 = icmp eq ptr %28, null
  %30 = icmp eq ptr %9, null
  br i1 %29, label %34, label %31

31:                                               ; preds = %27
  br i1 %30, label %33, label %32

32:                                               ; preds = %31
  tail call void %9(ptr noundef %11, ptr noundef nonnull %28) #17
  br label %35

33:                                               ; preds = %31
  tail call void @free(ptr noundef nonnull %28) #17
  br label %36

34:                                               ; preds = %27
  br i1 %30, label %36, label %35

35:                                               ; preds = %34, %32
  tail call void %9(ptr noundef %11, ptr noundef nonnull %25) #17
  br label %37

36:                                               ; preds = %34, %33
  tail call void @free(ptr noundef nonnull %25) #17
  br label %37

37:                                               ; preds = %35, %36
  store ptr null, ptr %24, align 8, !tbaa !33
  br label %38

38:                                               ; preds = %23, %37
  %39 = icmp eq ptr %9, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void %9(ptr noundef %11, ptr noundef nonnull %0) #17
  br label %42

41:                                               ; preds = %38
  tail call void @free(ptr noundef nonnull %0) #17
  br label %42

42:                                               ; preds = %41, %40, %3, %1
  %43 = phi i64 [ 0, %1 ], [ -64, %3 ], [ 0, %40 ], [ 0, %41 ]
  ret i64 %43
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_copyDCtx(ptr noundef writeonly captures(none) initializes((0, 30240)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #7 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(30240) %0, ptr noundef nonnull align 8 dereferenceable(30240) %1, i64 30240, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ZSTD_isFrame(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ult i64 %1, 4
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 1, !tbaa !48
  %6 = freeze i32 %5
  %7 = icmp eq i32 %6, -47205080
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = and i32 %6, -16
  %10 = icmp eq i32 %9, 407710288
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %8, %4, %2
  %13 = phi i32 [ 0, %2 ], [ 1, %4 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ZSTD_isSkippableFrame(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ult i64 %1, 4
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 1, !tbaa !48
  %6 = and i32 %5, -16
  %7 = icmp eq i32 %6, 407710288
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_frameHeaderSize(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ult i64 %1, 5
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i64 4
  %6 = load i8, ptr %5, align 1, !tbaa !49
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 3
  %9 = lshr i32 %7, 6
  %10 = and i32 %7, 32
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i64
  %14 = zext nneg i32 %8 to i64
  %15 = getelementptr inbounds nuw [4 x i64], ptr @ZSTD_did_fieldSize, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !50
  %17 = zext nneg i32 %9 to i64
  %18 = getelementptr inbounds nuw [4 x i64], ptr @ZSTD_fcs_fieldSize, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !50
  %20 = icmp ult i8 %6, 64
  %21 = and i1 %20, %11
  %22 = zext i1 %21 to i64
  %23 = add i64 %16, 5
  %24 = add i64 %23, %19
  %25 = add i64 %24, %13
  %26 = add i64 %25, %22
  br label %27

27:                                               ; preds = %2, %4
  %28 = phi i64 [ %26, %4 ], [ -72, %2 ]
  ret i64 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_getFrameHeader_advanced(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %3, 0
  %7 = select i1 %6, i64 5, i64 1
  %8 = icmp ne i64 %2, 0
  %9 = icmp eq ptr %1, null
  %10 = and i1 %9, %8
  br i1 %10, label %151, label %11

11:                                               ; preds = %4
  %12 = icmp ult i64 %2, %7
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  %14 = icmp ne i32 %3, 1
  %15 = and i1 %8, %14
  br i1 %15, label %16, label %151

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 -47205080, ptr %5, align 4, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr align 1 %1, i64 %2, i1 false)
  %17 = load i32, ptr %5, align 4, !tbaa !48
  %18 = icmp eq i32 %17, -47205080
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  store i32 407710288, ptr %5, align 4, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr align 1 %1, i64 %2, i1 false)
  %20 = load i32, ptr %5, align 4, !tbaa !48
  %21 = and i32 %20, -16
  %22 = icmp eq i32 %21, 407710288
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %151

24:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %151

25:                                               ; preds = %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %26 = icmp eq i32 %3, 1
  br i1 %26, label %47, label %27

27:                                               ; preds = %25
  %28 = load i32, ptr %1, align 1, !tbaa !48
  %29 = icmp eq i32 %28, -47205080
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %1, i64 %7
  %32 = getelementptr i8, ptr %31, i64 -1
  br label %47

33:                                               ; preds = %27
  %34 = and i32 %28, -16
  %35 = icmp eq i32 %34, 407710288
  br i1 %35, label %36, label %151

36:                                               ; preds = %33
  %37 = icmp ult i64 %2, 8
  br i1 %37, label %151, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %39, align 4, !tbaa !51
  %40 = load i32, ptr %1, align 1, !tbaa !48
  %41 = add i32 %40, -407710288
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %41, ptr %42, align 4, !tbaa !52
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 8, ptr %43, align 8, !tbaa !53
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %45 = load i32, ptr %44, align 1, !tbaa !48
  %46 = zext i32 %45 to i64
  store i64 %46, ptr %0, align 8, !tbaa !54
  br label %151

47:                                               ; preds = %25, %30
  %48 = phi ptr [ %32, %30 ], [ %1, %25 ]
  %49 = phi i64 [ %7, %30 ], [ 1, %25 ]
  %50 = load i8, ptr %48, align 1, !tbaa !49
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 3
  %53 = lshr i32 %51, 6
  %54 = and i32 %51, 32
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i64
  %58 = zext nneg i32 %52 to i64
  %59 = getelementptr inbounds nuw [4 x i64], ptr @ZSTD_did_fieldSize, i64 0, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !50
  %61 = zext nneg i32 %53 to i64
  %62 = getelementptr inbounds nuw [4 x i64], ptr @ZSTD_fcs_fieldSize, i64 0, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !50
  %64 = icmp ult i8 %50, 64
  %65 = and i1 %64, %55
  %66 = zext i1 %65 to i64
  %67 = add i64 %60, %49
  %68 = add i64 %67, %63
  %69 = add i64 %68, %57
  %70 = add i64 %69, %66
  %71 = icmp ult i64 %2, %70
  br i1 %71, label %151, label %72

72:                                               ; preds = %47
  %73 = trunc i64 %70 to i32
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %73, ptr %74, align 8, !tbaa !53
  %75 = getelementptr i8, ptr %1, i64 %7
  %76 = getelementptr i8, ptr %75, i64 -1
  %77 = load i8, ptr %76, align 1, !tbaa !49
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 3
  %80 = lshr i32 %78, 2
  %81 = and i32 %80, 1
  %82 = lshr i32 %78, 6
  %83 = and i32 %78, 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %151

85:                                               ; preds = %72
  %86 = and i32 %78, 32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load i8, ptr %75, align 1, !tbaa !49
  %90 = icmp ult i8 %89, -80
  br i1 %90, label %91, label %151

91:                                               ; preds = %88
  %92 = zext i8 %89 to i32
  %93 = lshr i32 %92, 3
  %94 = add nuw nsw i32 %93, 10
  %95 = add nuw nsw i64 %7, 1
  %96 = zext nneg i32 %94 to i64
  %97 = shl nuw nsw i64 1, %96
  %98 = lshr i64 %97, 3
  %99 = and i32 %92, 7
  %100 = zext nneg i32 %99 to i64
  %101 = mul nuw nsw i64 %98, %100
  %102 = add nuw nsw i64 %101, %97
  br label %103

103:                                              ; preds = %91, %85
  %104 = phi i64 [ %7, %85 ], [ %95, %91 ]
  %105 = phi i64 [ 0, %85 ], [ %102, %91 ]
  switch i32 %79, label %120 [
    i32 3, label %116
    i32 1, label %106
    i32 2, label %111
    i32 0, label %121
  ]

106:                                              ; preds = %103
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 %104
  %108 = load i8, ptr %107, align 1, !tbaa !49
  %109 = zext i8 %108 to i32
  %110 = add nuw nsw i64 %104, 1
  br label %121

111:                                              ; preds = %103
  %112 = getelementptr inbounds nuw i8, ptr %1, i64 %104
  %113 = load i16, ptr %112, align 1, !tbaa !55
  %114 = zext i16 %113 to i32
  %115 = add nuw nsw i64 %104, 2
  br label %121

116:                                              ; preds = %103
  %117 = getelementptr inbounds nuw i8, ptr %1, i64 %104
  %118 = load i32, ptr %117, align 1, !tbaa !48
  %119 = add nuw nsw i64 %104, 4
  br label %121

120:                                              ; preds = %121, %103
  unreachable

121:                                              ; preds = %103, %116, %111, %106
  %122 = phi i64 [ %104, %103 ], [ %119, %116 ], [ %110, %106 ], [ %115, %111 ]
  %123 = phi i32 [ %79, %103 ], [ %118, %116 ], [ %109, %106 ], [ %114, %111 ]
  switch i32 %82, label %120 [
    i32 3, label %138
    i32 1, label %129
    i32 2, label %134
    i32 0, label %124
  ]

124:                                              ; preds = %121
  br i1 %87, label %141, label %125

125:                                              ; preds = %124
  %126 = getelementptr inbounds nuw i8, ptr %1, i64 %122
  %127 = load i8, ptr %126, align 1, !tbaa !49
  %128 = zext i8 %127 to i64
  br label %141

129:                                              ; preds = %121
  %130 = getelementptr inbounds nuw i8, ptr %1, i64 %122
  %131 = load i16, ptr %130, align 1, !tbaa !55
  %132 = zext i16 %131 to i64
  %133 = add nuw nsw i64 %132, 256
  br label %141

134:                                              ; preds = %121
  %135 = getelementptr inbounds nuw i8, ptr %1, i64 %122
  %136 = load i32, ptr %135, align 1, !tbaa !48
  %137 = zext i32 %136 to i64
  br label %141

138:                                              ; preds = %121
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 %122
  %140 = load i64, ptr %139, align 1, !tbaa !50
  br label %141

141:                                              ; preds = %124, %125, %138, %134, %129
  %142 = phi i64 [ %128, %125 ], [ -1, %124 ], [ %140, %138 ], [ %133, %129 ], [ %137, %134 ]
  %143 = select i1 %87, i64 %105, i64 %142
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %144, align 4, !tbaa !51
  store i64 %142, ptr %0, align 8, !tbaa !54
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %143, ptr %145, align 8, !tbaa !57
  %146 = tail call i64 @llvm.umin.i64(i64 %143, i64 131072)
  %147 = trunc nuw nsw i64 %146 to i32
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %147, ptr %148, align 8, !tbaa !58
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %123, ptr %149, align 4, !tbaa !52
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %81, ptr %150, align 8, !tbaa !59
  br label %151

151:                                              ; preds = %88, %72, %141, %47, %33, %36, %13, %23, %24, %4, %38
  %152 = phi i64 [ -10, %24 ], [ 0, %38 ], [ -1, %4 ], [ %7, %23 ], [ %7, %13 ], [ 8, %36 ], [ -10, %33 ], [ %70, %47 ], [ 0, %141 ], [ -16, %88 ], [ -14, %72 ]
  ret i64 %152
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #10

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_getFrameHeader(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #7 {
  %4 = tail call i64 @ZSTD_getFrameHeader_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret i64 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_getFrameContentSize(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = alloca %struct.ZSTD_FrameHeader, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #17
  %4 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef readonly %0, i64 noundef %1, i32 noundef 0)
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = load i64, ptr %3, align 8
  %10 = select i1 %8, i64 0, i64 %9
  %11 = select i1 %5, i64 %10, i64 -2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #17
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -80, 4294967288) i64 @ZSTD_readSkippableFrame(ptr noundef writeonly captures(address_is_null) %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #7 {
  %6 = icmp ult i64 %4, 8
  br i1 %6, label %34, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %3, align 1, !tbaa !48
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %10 = load i32, ptr %9, align 1, !tbaa !48
  %11 = icmp ugt i32 %10, -9
  %12 = zext i32 %10 to i64
  %13 = add nuw nsw i64 %12, 8
  %14 = icmp ugt i64 %13, %4
  %15 = select i1 %14, i64 -72, i64 %13
  %16 = select i1 %11, i64 -14, i64 %15
  %17 = add nsw i64 %16, -8
  %18 = and i32 %8, -16
  %19 = icmp eq i32 %18, 407710288
  br i1 %19, label %20, label %34

20:                                               ; preds = %7
  %21 = icmp ugt i64 %16, %4
  br i1 %21, label %34, label %22

22:                                               ; preds = %20
  %23 = icmp ugt i64 %17, %1
  br i1 %23, label %34, label %24

24:                                               ; preds = %22
  %25 = icmp ne i64 %17, 0
  %26 = icmp ne ptr %0, null
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %29, i64 %17, i1 false)
  br label %30

30:                                               ; preds = %28, %24
  %31 = icmp eq ptr %2, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = add nsw i32 %8, -407710288
  store i32 %33, ptr %2, align 4, !tbaa !48
  br label %34

34:                                               ; preds = %7, %20, %22, %32, %30, %5
  %35 = phi i64 [ -72, %5 ], [ -14, %7 ], [ -72, %20 ], [ -70, %22 ], [ %17, %32 ], [ %17, %30 ]
  ret i64 %35
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_findDecompressedSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_frameSizeInfo, align 8
  %4 = alloca %struct.ZSTD_FrameHeader, align 8
  %5 = icmp ult i64 %1, 5
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %9

9:                                                ; preds = %6, %41
  %10 = phi ptr [ %0, %6 ], [ %44, %41 ]
  %11 = phi i64 [ %1, %6 ], [ %45, %41 ]
  %12 = phi i64 [ 0, %6 ], [ %42, %41 ]
  %13 = load i32, ptr %10, align 1, !tbaa !48
  %14 = and i32 %13, -16
  %15 = icmp eq i32 %14, 407710288
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = icmp ult i64 %11, 8
  br i1 %17, label %52, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %20 = load i32, ptr %19, align 1, !tbaa !48
  %21 = icmp ugt i32 %20, -9
  %22 = zext i32 %20 to i64
  %23 = add nuw nsw i64 %22, 8
  %24 = icmp ugt i64 %23, %11
  %25 = select i1 %21, i1 true, i1 %24
  br i1 %25, label %52, label %41, !llvm.loop !60

26:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #17
  %27 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %4, ptr noundef nonnull readonly %10, i64 noundef %11, i32 noundef 0)
  %28 = icmp eq i64 %27, 0
  %29 = load i32, ptr %7, align 4
  %30 = icmp eq i32 %29, 1
  %31 = load i64, ptr %4, align 8
  %32 = select i1 %30, i64 0, i64 %31
  %33 = select i1 %28, i64 %32, i64 -2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #17
  %34 = icmp ugt i64 %33, -3
  br i1 %34, label %52, label %35

35:                                               ; preds = %26
  %36 = add i64 %33, %12
  %37 = icmp ult i64 %36, %12
  br i1 %37, label %52, label %38

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %10, i64 noundef %11, i32 noundef 0)
  %39 = load i64, ptr %8, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  %40 = icmp ult i64 %39, -119
  br i1 %40, label %41, label %52

41:                                               ; preds = %18, %38
  %42 = phi i64 [ %36, %38 ], [ %12, %18 ]
  %43 = phi i64 [ %39, %38 ], [ %23, %18 ]
  %44 = getelementptr inbounds nuw i8, ptr %10, i64 %43
  %45 = sub i64 %11, %43
  %46 = icmp ult i64 %45, 5
  br i1 %46, label %47, label %9

47:                                               ; preds = %41, %2
  %48 = phi i64 [ 0, %2 ], [ %42, %41 ]
  %49 = phi i64 [ %1, %2 ], [ %45, %41 ]
  %50 = icmp eq i64 %49, 0
  %51 = select i1 %50, i64 %48, i64 -2
  br label %52

52:                                               ; preds = %26, %18, %16, %38, %35, %47
  %53 = phi i64 [ %51, %47 ], [ %33, %26 ], [ -2, %18 ], [ -2, %16 ], [ -2, %35 ], [ -2, %38 ]
  ret i64 %53
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_findFrameCompressedSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_frameSizeInfo, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, i64 noundef %1, i32 noundef 0)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_getDecompressedSize(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = alloca %struct.ZSTD_FrameHeader, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #17
  %4 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef readonly %0, i64 noundef %1, i32 noundef 0)
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = load i64, ptr %3, align 8
  %10 = select i1 %8, i64 0, i64 %9
  %11 = select i1 %5, i64 %10, i64 -2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #17
  %12 = icmp ugt i64 %11, -3
  %13 = select i1 %12, i64 0, i64 %11
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressBound(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_frameSizeInfo, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i64 [ %1, %2 ], [ %18, %11 ]
  %8 = phi i64 [ 0, %2 ], [ %19, %11 ]
  %9 = phi ptr [ %0, %2 ], [ %17, %11 ]
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %9, i64 noundef %7, i32 noundef 0)
  %12 = load i64, ptr %4, align 8, !tbaa !62
  %13 = load i64, ptr %5, align 8, !tbaa !64
  %14 = icmp ult i64 %12, -119
  %15 = icmp ne i64 %13, -2
  %16 = select i1 %14, i1 %15, i1 false
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 %12
  %18 = sub i64 %7, %12
  %19 = add i64 %13, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br i1 %16, label %6, label %20, !llvm.loop !65

20:                                               ; preds = %6, %11
  %21 = phi i64 [ -2, %11 ], [ %8, %6 ]
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ZSTD_FrameHeader, align 8
  %6 = alloca %struct.blockProperties_t, align 4
  %7 = icmp eq i32 %3, 0
  %8 = icmp ugt i64 %2, 7
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %25

10:                                               ; preds = %4
  %11 = load i32, ptr %1, align 1, !tbaa !48
  %12 = and i32 %11, -16
  %13 = icmp eq i32 %12, 407710288
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %16 = load i32, ptr %15, align 1, !tbaa !48
  %17 = icmp ugt i32 %16, -9
  %18 = zext i32 %16 to i64
  %19 = add nuw nsw i64 %18, 8
  %20 = icmp ugt i64 %19, %2
  %21 = select i1 %20, i64 -72, i64 %19
  %22 = select i1 %17, i64 -14, i64 %21
  store i64 0, ptr %0, align 8, !tbaa !50
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %22, ptr %23, align 8, !tbaa !50
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %24, align 8, !tbaa !66
  br label %92

25:                                               ; preds = %10, %4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #17
  %26 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  %27 = icmp ult i64 %26, -119
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %26, ptr %29, align 8, !tbaa !62, !alias.scope !67
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %30, align 8, !tbaa !64, !alias.scope !67
  br label %91

31:                                               ; preds = %25
  %32 = icmp eq i64 %26, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -72, ptr %34, align 8, !tbaa !62, !alias.scope !70
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %35, align 8, !tbaa !64, !alias.scope !70
  br label %91

36:                                               ; preds = %31
  %37 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %38 = load i32, ptr %37, align 8, !tbaa !53
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 %39
  %41 = sub i64 %2, %39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %42 = call i64 @ZSTD_getcBlockSize(ptr noundef %40, i64 noundef %41, ptr noundef nonnull %6) #17
  %43 = icmp ult i64 %42, -119
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = getelementptr inbounds nuw i8, ptr %6, i64 4
  br label %46

46:                                               ; preds = %44, %63
  %47 = phi i64 [ %42, %44 ], [ %64, %63 ]
  %48 = phi i64 [ 0, %44 ], [ %56, %63 ]
  %49 = phi i64 [ %41, %44 ], [ %55, %63 ]
  %50 = phi ptr [ %40, %44 ], [ %54, %63 ]
  %51 = add nuw i64 %47, 3
  %52 = icmp ugt i64 %51, %49
  br i1 %52, label %59, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds nuw i8, ptr %50, i64 %51
  %55 = sub nuw i64 %49, %51
  %56 = add i64 %48, 1
  %57 = load i32, ptr %45, align 4, !tbaa !73
  %58 = icmp eq i32 %57, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  br i1 %58, label %63, label %66

59:                                               ; preds = %46, %63, %36
  %60 = phi i64 [ %42, %36 ], [ %64, %63 ], [ -72, %46 ]
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %60, ptr %61, align 8, !tbaa !62
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %62, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  br label %91

63:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %64 = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %54, i64 noundef %55, ptr noundef nonnull %6) #17
  %65 = icmp ult i64 %64, -119
  br i1 %65, label %46, label %59

66:                                               ; preds = %53
  %67 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %68 = load i32, ptr %67, align 8, !tbaa !59
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = icmp ult i64 %55, 4
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -72, ptr %73, align 8, !tbaa !62, !alias.scope !75
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %74, align 8, !tbaa !64, !alias.scope !75
  br label %91

75:                                               ; preds = %70
  %76 = getelementptr inbounds nuw i8, ptr %54, i64 4
  br label %77

77:                                               ; preds = %75, %66
  %78 = phi ptr [ %76, %75 ], [ %54, %66 ]
  %79 = ptrtoint ptr %78 to i64
  %80 = ptrtoint ptr %1 to i64
  %81 = sub i64 %79, %80
  %82 = load i64, ptr %5, align 8, !tbaa !54
  %83 = icmp eq i64 %82, -1
  %84 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %85 = load i32, ptr %84, align 8
  %86 = zext i32 %85 to i64
  %87 = mul i64 %56, %86
  %88 = select i1 %83, i64 %87, i64 %82
  store i64 %56, ptr %0, align 8, !tbaa !50
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %81, ptr %89, align 8, !tbaa !50
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %88, ptr %90, align 8, !tbaa !66
  br label %91

91:                                               ; preds = %59, %28, %33, %77, %72
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #17
  br label %92

92:                                               ; preds = %91, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressionMargin(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_frameSizeInfo, align 8
  %4 = alloca %struct.ZSTD_FrameHeader, align 8
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %55, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %13

13:                                               ; preds = %6, %46
  %14 = phi ptr [ %0, %6 ], [ %49, %46 ]
  %15 = phi i64 [ %1, %6 ], [ %50, %46 ]
  %16 = phi i32 [ 0, %6 ], [ %48, %46 ]
  %17 = phi i64 [ 0, %6 ], [ %47, %46 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %14, i64 noundef %15, i32 noundef 0)
  %18 = load i64, ptr %7, align 8, !tbaa !62
  %19 = load i64, ptr %8, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #17
  %20 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %4, ptr noundef readonly %14, i64 noundef %15, i32 noundef 0)
  %21 = icmp ult i64 %20, -119
  br i1 %21, label %22, label %44

22:                                               ; preds = %13
  %23 = icmp ugt i64 %18, -120
  %24 = icmp eq i64 %19, -2
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %44, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %9, align 4, !tbaa !51
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32, ptr %10, align 8, !tbaa !53
  %31 = zext i32 %30 to i64
  %32 = add i64 %17, %31
  %33 = load i32, ptr %11, align 8, !tbaa !59
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i64 0, i64 4
  %36 = add i64 %32, %35
  %37 = load i64, ptr %3, align 8, !tbaa !78
  %38 = mul i64 %37, 3
  %39 = add i64 %36, %38
  %40 = load i32, ptr %12, align 8, !tbaa !58
  %41 = tail call i32 @llvm.umax.i32(i32 %16, i32 %40)
  br label %46

42:                                               ; preds = %26
  %43 = add i64 %18, %17
  br label %46

44:                                               ; preds = %13, %22
  %45 = phi i64 [ -20, %22 ], [ %20, %13 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %55

46:                                               ; preds = %29, %42
  %47 = phi i64 [ %39, %29 ], [ %43, %42 ]
  %48 = phi i32 [ %41, %29 ], [ %16, %42 ]
  %49 = getelementptr inbounds nuw i8, ptr %14, i64 %18
  %50 = sub i64 %15, %18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %13, !llvm.loop !79

52:                                               ; preds = %46
  %53 = zext i32 %48 to i64
  %54 = add i64 %47, %53
  br label %55

55:                                               ; preds = %2, %52, %44
  %56 = phi i64 [ %45, %44 ], [ 0, %2 ], [ %54, %52 ]
  ret i64 %56
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_insertBlock(ptr noundef %0, ptr noundef %1, i64 noundef returned %2) local_unnamed_addr #0 {
  tail call void @ZSTD_checkContinuity(ptr noundef %0, ptr noundef %1, i64 noundef %2) #17
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 29888
  store ptr %4, ptr %5, align 8, !tbaa !80
  ret i64 %2
}

declare void @ZSTD_checkContinuity(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompress_usingDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef null)
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca %struct.ZSTD_Trace, align 8
  %10 = alloca %struct.blockProperties_t, align 4
  %11 = icmp eq ptr %7, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %7) #17
  %14 = tail call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %7) #17
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %14, %12 ], [ %6, %8 ]
  %17 = phi ptr [ %13, %12 ], [ %5, %8 ]
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %19 = load i32, ptr %18, align 8, !tbaa !34
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i64 5, i64 1
  %22 = icmp ult i64 %4, %21
  br i1 %22, label %284, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %26 = icmp eq ptr @ZSTD_trace_decompress_begin, null
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 95968
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 30200
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 29992
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 30232
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %44 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 30112
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 30008
  %47 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 29928
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 29960
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 30108
  %51 = icmp ne ptr @ZSTD_trace_decompress_end, null
  %52 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %53 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %55 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %56 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %57 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %58 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %59 = getelementptr inbounds nuw i8, ptr %9, i64 56
  br label %60

60:                                               ; preds = %23, %277
  %61 = phi i64 [ %21, %23 ], [ %282, %277 ]
  %62 = phi i1 [ %20, %23 ], [ %281, %277 ]
  %63 = phi ptr [ %1, %23 ], [ %278, %277 ]
  %64 = phi i64 [ %2, %23 ], [ %279, %277 ]
  %65 = phi i1 [ false, %23 ], [ true, %277 ]
  %66 = phi i64 [ %4, %23 ], [ %270, %277 ]
  %67 = phi ptr [ %3, %23 ], [ %269, %277 ]
  %68 = freeze i1 %62
  br i1 %68, label %69, label %93

69:                                               ; preds = %60, %89
  %70 = phi i64 [ %91, %89 ], [ %66, %60 ]
  %71 = phi ptr [ %90, %89 ], [ %67, %60 ]
  %72 = icmp ugt i64 %70, 3
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  %74 = load i32, ptr %71, align 1, !tbaa !48
  %75 = and i32 %74, -16
  %76 = icmp eq i32 %75, 407710288
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = icmp ult i64 %70, 8
  br i1 %78, label %292, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %81 = load i32, ptr %80, align 1, !tbaa !48
  %82 = icmp ugt i32 %81, -9
  br i1 %82, label %292, label %83

83:                                               ; preds = %79
  %84 = zext i32 %81 to i64
  %85 = add nuw nsw i64 %84, 8
  %86 = icmp ugt i64 %85, %70
  %87 = select i1 %86, i64 -72, i64 %85
  %88 = icmp ult i64 %87, -119
  br i1 %88, label %89, label %292

89:                                               ; preds = %83
  %90 = getelementptr inbounds nuw i8, ptr %71, i64 %87
  %91 = sub i64 %70, %87
  %92 = icmp ult i64 %91, %61
  br i1 %92, label %284, label %69

93:                                               ; preds = %69, %73, %60
  %94 = phi ptr [ %67, %60 ], [ %71, %73 ], [ %71, %69 ]
  %95 = phi i64 [ %66, %60 ], [ %70, %73 ], [ %70, %69 ]
  br i1 %11, label %110, label %96

96:                                               ; preds = %93
  %97 = call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %7) #17
  %98 = call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %7) #17
  %99 = getelementptr inbounds nuw i8, ptr %97, i64 %98
  %100 = load ptr, ptr %24, align 8, !tbaa !23
  %101 = icmp ne ptr %100, %99
  %102 = zext i1 %101 to i32
  store i32 %102, ptr %25, align 4, !tbaa !24
  br i1 %26, label %105, label %103

103:                                              ; preds = %96
  %104 = call i64 @ZSTD_trace_decompress_begin(ptr noundef nonnull %0) #17
  br label %105

105:                                              ; preds = %103, %96
  %106 = phi i64 [ %104, %103 ], [ 0, %96 ]
  store i64 %106, ptr %27, align 8, !tbaa !81
  %107 = load i32, ptr %18, align 8, !tbaa !34
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, i64 5, i64 1
  store i64 %109, ptr %28, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %32, align 8, !tbaa !48
  store i32 0, ptr %33, align 8, !tbaa !83
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %34, align 8, !tbaa !48
  store i32 1, ptr %35, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %36, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store ptr %31, ptr %0, align 8, !tbaa !84
  store ptr %37, ptr %38, align 8, !tbaa !85
  store ptr %39, ptr %40, align 8, !tbaa !86
  store ptr %32, ptr %41, align 8, !tbaa !87
  call void @ZSTD_copyDDictParameters(ptr noundef nonnull %0, ptr noundef nonnull %7) #17
  br label %113

110:                                              ; preds = %93
  %111 = call i64 @ZSTD_decompressBegin_usingDict(ptr noundef nonnull %0, ptr noundef %17, i64 noundef %16)
  %112 = icmp ult i64 %111, -119
  br i1 %112, label %113, label %292

113:                                              ; preds = %105, %110
  call void @ZSTD_checkContinuity(ptr noundef nonnull %0, ptr noundef %63, i64 noundef %64) #17
  %114 = getelementptr inbounds nuw i8, ptr %63, i64 %64
  %115 = load i32, ptr %18, align 8, !tbaa !34
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i64 9, i64 5
  %118 = icmp ult i64 %95, %117
  br i1 %118, label %268, label %119

119:                                              ; preds = %113
  %120 = select i1 %116, i64 5, i64 1
  %121 = getelementptr i8, ptr %94, i64 %120
  %122 = getelementptr i8, ptr %121, i64 -1
  %123 = load i8, ptr %122, align 1, !tbaa !49
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 3
  %126 = lshr i32 %124, 6
  %127 = and i32 %124, 32
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i64
  %131 = zext nneg i32 %125 to i64
  %132 = getelementptr inbounds nuw [4 x i64], ptr @ZSTD_did_fieldSize, i64 0, i64 %131
  %133 = load i64, ptr %132, align 8, !tbaa !50
  %134 = zext nneg i32 %126 to i64
  %135 = getelementptr inbounds nuw [4 x i64], ptr @ZSTD_fcs_fieldSize, i64 0, i64 %134
  %136 = load i64, ptr %135, align 8, !tbaa !50
  %137 = icmp ult i8 %123, 64
  %138 = and i1 %137, %128
  %139 = zext i1 %138 to i64
  %140 = add i64 %133, %120
  %141 = add i64 %140, %136
  %142 = add i64 %141, %130
  %143 = add i64 %142, %139
  %144 = icmp ult i64 %143, -119
  br i1 %144, label %145, label %268

145:                                              ; preds = %119
  %146 = add nuw i64 %143, 3
  %147 = icmp ult i64 %95, %146
  br i1 %147, label %268, label %148

148:                                              ; preds = %145
  %149 = call fastcc i64 @ZSTD_decodeFrameHeader(ptr noundef nonnull %0, ptr noundef nonnull %94, i64 noundef %143)
  %150 = icmp ult i64 %149, -119
  br i1 %150, label %151, label %268

151:                                              ; preds = %148
  %152 = getelementptr inbounds nuw i8, ptr %94, i64 %143
  %153 = sub i64 %95, %143
  %154 = load i32, ptr %42, align 8, !tbaa !40
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %151
  %157 = load i32, ptr %43, align 8, !tbaa !88
  %158 = call i32 @llvm.umin.i32(i32 %157, i32 %154)
  store i32 %158, ptr %43, align 8, !tbaa !88
  br label %159

159:                                              ; preds = %156, %151
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  %160 = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %152, i64 noundef %153, ptr noundef nonnull %10) #17
  %161 = icmp ult i64 %160, -119
  br i1 %161, label %162, label %219

162:                                              ; preds = %159
  %163 = ptrtoint ptr %114 to i64
  br label %164

164:                                              ; preds = %221, %162
  %165 = phi i64 [ %160, %162 ], [ %222, %221 ]
  %166 = phi ptr [ %152, %162 ], [ %215, %221 ]
  %167 = phi ptr [ %63, %162 ], [ %214, %221 ]
  %168 = phi i64 [ %153, %162 ], [ %216, %221 ]
  %169 = getelementptr inbounds nuw i8, ptr %166, i64 3
  %170 = add i64 %168, -3
  %171 = icmp ugt i64 %165, %170
  br i1 %171, label %219, label %172

172:                                              ; preds = %164
  %173 = icmp uge ptr %169, %167
  %174 = icmp ult ptr %169, %114
  %175 = select i1 %173, i1 %174, i1 false
  %176 = ptrtoint ptr %169 to i64
  %177 = ptrtoint ptr %167 to i64
  %178 = sub i64 %176, %177
  %179 = getelementptr inbounds i8, ptr %167, i64 %178
  %180 = select i1 %175, ptr %179, ptr %114
  %181 = load i32, ptr %10, align 4, !tbaa !89
  switch i32 %181, label %219 [
    i32 2, label %202
    i32 0, label %182
    i32 1, label %190
  ]

182:                                              ; preds = %172
  %183 = sub i64 %163, %177
  %184 = icmp ugt i64 %165, %183
  br i1 %184, label %219, label %185

185:                                              ; preds = %182
  %186 = icmp eq ptr %167, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %185
  %188 = icmp eq i64 %165, 0
  br i1 %188, label %207, label %219

189:                                              ; preds = %185
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %167, ptr nonnull readonly align 1 %169, i64 %165, i1 false)
  br label %207

190:                                              ; preds = %172
  %191 = ptrtoint ptr %180 to i64
  %192 = sub i64 %191, %177
  %193 = load i8, ptr %169, align 1, !tbaa !49
  %194 = load i32, ptr %44, align 4, !tbaa !90
  %195 = zext i32 %194 to i64
  %196 = icmp ult i64 %192, %195
  br i1 %196, label %219, label %197

197:                                              ; preds = %190
  %198 = icmp eq ptr %167, null
  br i1 %198, label %199, label %201

199:                                              ; preds = %197
  %200 = icmp eq i32 %194, 0
  br i1 %200, label %207, label %219

201:                                              ; preds = %197
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %167, i8 %193, i64 %195, i1 false)
  br label %207

202:                                              ; preds = %172
  %203 = ptrtoint ptr %180 to i64
  %204 = sub i64 %203, %177
  %205 = call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %167, i64 noundef %204, ptr noundef nonnull %169, i64 noundef %165, i32 noundef 0) #17
  %206 = icmp ult i64 %205, -119
  br i1 %206, label %207, label %219

207:                                              ; preds = %202, %201, %199, %189, %187
  %208 = phi i64 [ %195, %201 ], [ %205, %202 ], [ %165, %189 ], [ 0, %187 ], [ 0, %199 ]
  %209 = load i32, ptr %45, align 8, !tbaa !91
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %207
  %212 = call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %46, ptr noundef captures(none) %167, i64 noundef %208) #17
  br label %213

213:                                              ; preds = %211, %207
  %214 = getelementptr inbounds nuw i8, ptr %167, i64 %208
  %215 = getelementptr inbounds nuw i8, ptr %169, i64 %165
  %216 = sub i64 %170, %165
  %217 = load i32, ptr %47, align 4, !tbaa !73
  %218 = icmp eq i32 %217, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  br i1 %218, label %221, label %224

219:                                              ; preds = %221, %202, %199, %190, %187, %182, %172, %164, %159
  %220 = phi i64 [ %160, %159 ], [ -70, %190 ], [ -70, %182 ], [ -20, %172 ], [ -72, %164 ], [ %222, %221 ], [ %205, %202 ], [ -74, %187 ], [ -74, %199 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  br label %268

221:                                              ; preds = %213
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  %222 = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %215, i64 noundef %216, ptr noundef nonnull %10) #17
  %223 = icmp ult i64 %222, -119
  br i1 %223, label %164, label %219

224:                                              ; preds = %213
  %225 = load i64, ptr %48, align 8, !tbaa !92
  %226 = icmp eq i64 %225, -1
  %227 = ptrtoint ptr %214 to i64
  %228 = ptrtoint ptr %63 to i64
  %229 = sub i64 %227, %228
  %230 = icmp eq i64 %229, %225
  %231 = select i1 %226, i1 true, i1 %230
  br i1 %231, label %232, label %268

232:                                              ; preds = %224
  %233 = load i32, ptr %49, align 8, !tbaa !93
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %248, label %235

235:                                              ; preds = %232
  %236 = icmp ult i64 %216, 4
  br i1 %236, label %268, label %237

237:                                              ; preds = %235
  %238 = load i32, ptr %50, align 4, !tbaa !37
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(none) %46) #20
  %242 = trunc i64 %241 to i32
  %243 = load i32, ptr %215, align 1, !tbaa !48
  %244 = icmp eq i32 %243, %242
  br i1 %244, label %245, label %268

245:                                              ; preds = %240, %237
  %246 = getelementptr inbounds nuw i8, ptr %215, i64 4
  %247 = add i64 %216, -4
  br label %248

248:                                              ; preds = %245, %232
  %249 = phi i64 [ %247, %245 ], [ %216, %232 ]
  %250 = phi ptr [ %246, %245 ], [ %215, %232 ]
  %251 = ptrtoint ptr %250 to i64
  %252 = ptrtoint ptr %94 to i64
  %253 = sub i64 %251, %252
  %254 = load i64, ptr %27, align 8, !tbaa !81
  %255 = icmp ne i64 %254, 0
  %256 = and i1 %51, %255
  br i1 %256, label %257, label %268

257:                                              ; preds = %248
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %52, i8 0, i64 48, i1 false)
  store i32 10600, ptr %9, align 8, !tbaa !94
  store i32 0, ptr %53, align 4, !tbaa !99
  %258 = load ptr, ptr %54, align 8, !tbaa !100
  %259 = icmp eq ptr %258, null
  br i1 %259, label %266, label %260

260:                                              ; preds = %257
  %261 = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %258) #17
  store i32 %261, ptr %52, align 8, !tbaa !101
  %262 = load ptr, ptr %54, align 8, !tbaa !100
  %263 = call i64 @ZSTD_DDict_dictSize(ptr noundef %262) #17
  store i64 %263, ptr %55, align 8, !tbaa !102
  %264 = load i32, ptr %25, align 4, !tbaa !24
  store i32 %264, ptr %56, align 4, !tbaa !103
  %265 = load i64, ptr %27, align 8, !tbaa !81
  br label %266

266:                                              ; preds = %260, %257
  %267 = phi i64 [ %265, %260 ], [ %254, %257 ]
  store i64 %229, ptr %57, align 8, !tbaa !104
  store i64 %253, ptr %58, align 8, !tbaa !105
  store ptr %0, ptr %59, align 8, !tbaa !106
  call void @ZSTD_trace_decompress_end(i64 noundef %267, ptr noundef nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #17
  br label %268

268:                                              ; preds = %248, %266, %113, %119, %145, %148, %219, %224, %235, %240
  %269 = phi ptr [ %94, %113 ], [ %94, %145 ], [ %94, %219 ], [ %94, %235 ], [ %94, %240 ], [ %94, %224 ], [ %94, %148 ], [ %94, %119 ], [ %250, %266 ], [ %250, %248 ]
  %270 = phi i64 [ %95, %113 ], [ %95, %145 ], [ %95, %219 ], [ %95, %235 ], [ %95, %240 ], [ %95, %224 ], [ %95, %148 ], [ %95, %119 ], [ %249, %266 ], [ %249, %248 ]
  %271 = phi i64 [ -72, %113 ], [ -72, %145 ], [ %220, %219 ], [ -22, %235 ], [ -22, %240 ], [ -20, %224 ], [ %149, %148 ], [ %143, %119 ], [ %229, %266 ], [ %229, %248 ]
  %272 = call i32 @ZSTD_getErrorCode(i64 noundef %271) #17
  %273 = icmp eq i32 %272, 10
  %274 = and i1 %65, %273
  br i1 %274, label %292, label %275

275:                                              ; preds = %268
  %276 = icmp ult i64 %271, -119
  br i1 %276, label %277, label %292

277:                                              ; preds = %275
  %278 = getelementptr inbounds nuw i8, ptr %63, i64 %271
  %279 = sub i64 %64, %271
  %280 = load i32, ptr %18, align 8, !tbaa !34
  %281 = icmp eq i32 %280, 0
  %282 = select i1 %281, i64 5, i64 1
  %283 = icmp ult i64 %270, %282
  br i1 %283, label %284, label %60, !llvm.loop !107

284:                                              ; preds = %277, %89, %15
  %285 = phi ptr [ %1, %15 ], [ %63, %89 ], [ %278, %277 ]
  %286 = phi i64 [ %4, %15 ], [ %91, %89 ], [ %270, %277 ]
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = ptrtoint ptr %285 to i64
  %290 = ptrtoint ptr %1 to i64
  %291 = sub i64 %289, %290
  br label %292

292:                                              ; preds = %275, %268, %110, %79, %77, %83, %284, %288
  %293 = phi i64 [ %291, %288 ], [ -72, %284 ], [ %87, %83 ], [ -14, %79 ], [ -72, %77 ], [ %111, %110 ], [ %271, %275 ], [ -72, %268 ]
  ret i64 %293
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressDCtx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  %7 = load i32, ptr %6, align 8, !tbaa !25
  switch i32 %7, label %8 [
    i32 1, label %15
    i32 -1, label %12
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call i64 @ZSTD_freeDDict(ptr noundef %10) #17
  store i32 0, ptr %6, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %18

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  br label %18

15:                                               ; preds = %5
  store i32 0, ptr %6, align 8, !tbaa !25
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  br label %18

18:                                               ; preds = %8, %12, %15
  %19 = phi ptr [ null, %8 ], [ %17, %15 ], [ %14, %12 ]
  %20 = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, i64 noundef 0, ptr noundef %19)
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompress_usingDDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, i64 noundef 0, ptr noundef %5)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ZSTD_getDDict(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  %3 = load i32, ptr %2, align 8, !tbaa !25
  switch i32 %3, label %4 [
    i32 1, label %11
    i32 -1, label %8
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call i64 @ZSTD_freeDDict(ptr noundef %6) #17
  store i32 0, ptr %2, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  br label %14

11:                                               ; preds = %1
  store i32 0, ptr %2, align 8, !tbaa !25
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  br label %14

14:                                               ; preds = %11, %8, %4
  %15 = phi ptr [ null, %4 ], [ %13, %11 ], [ %10, %8 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 30128
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 30168
  store i64 0, ptr %9, align 8, !tbaa !41
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 30184
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 29912
  store ptr null, ptr %11, align 8, !tbaa !23
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 30204
  store i32 0, ptr %12, align 4, !tbaa !24
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 30208
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 30280
  store i64 0, ptr %14, align 8, !tbaa !22
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 30236
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 30316
  store i32 0, ptr %16, align 4, !tbaa !26
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 95960
  store i64 0, ptr %17, align 8, !tbaa !27
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %15, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store i32 1, ptr %18, align 8, !tbaa !28
  %19 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #18, !srcloc !29
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %7
  %22 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #18, !srcloc !30
  %23 = icmp ugt i32 %19, 6
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #18, !srcloc !31
  %26 = extractvalue { i32, i32, i32 } %25, 1
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = lshr i32 %26, 8
  %31 = and i32 %30, 1
  br label %32

32:                                               ; preds = %29, %24, %21, %7
  %33 = phi i32 [ 0, %24 ], [ %31, %29 ], [ 0, %21 ], [ 0, %7 ]
  %34 = getelementptr inbounds nuw i8, ptr %5, i64 30180
  store i32 %33, ptr %34, align 4, !tbaa !32
  %35 = getelementptr inbounds nuw i8, ptr %5, i64 30216
  store ptr null, ptr %35, align 8, !tbaa !33
  %36 = getelementptr inbounds nuw i8, ptr %5, i64 30104
  store i32 0, ptr %36, align 8, !tbaa !34
  %37 = getelementptr inbounds nuw i8, ptr %5, i64 30264
  store i64 134217729, ptr %37, align 8, !tbaa !35
  %38 = getelementptr inbounds nuw i8, ptr %5, i64 30320
  store i32 0, ptr %38, align 8, !tbaa !36
  %39 = getelementptr inbounds nuw i8, ptr %5, i64 30108
  store i32 0, ptr %39, align 4, !tbaa !37
  %40 = getelementptr inbounds nuw i8, ptr %5, i64 30224
  store i32 0, ptr %40, align 8, !tbaa !38
  %41 = getelementptr inbounds nuw i8, ptr %5, i64 30228
  store i32 0, ptr %41, align 4, !tbaa !39
  %42 = getelementptr inbounds nuw i8, ptr %5, i64 30232
  store i32 0, ptr %42, align 8, !tbaa !40
  %43 = tail call i64 @ZSTD_freeDDict(ptr noundef null) #17
  store i32 0, ptr %13, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %44 = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef nonnull %5, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef null, i64 noundef 0, ptr noundef null)
  %45 = tail call i64 @ZSTD_freeDCtx(ptr noundef nonnull %5)
  br label %46

46:                                               ; preds = %4, %32
  %47 = phi i64 [ %44, %32 ], [ -64, %4 ]
  ret i64 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_nextSrcSizeToDecompress(ptr noundef readonly captures(none) %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %3 = load i64, ptr %2, align 8, !tbaa !82
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 6) i32 @ZSTD_nextInputType(ptr noundef readonly captures(none) %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 29996
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = add i32 %3, -2
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [6 x i32], ptr @switch.table.ZSTD_nextInputType, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 4294967296) i64 @ZSTD_decompressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ZSTD_Trace, align 8
  %7 = alloca %struct.blockProperties_t, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 29996
  %9 = load i32, ptr %8, align 4, !tbaa !108
  %10 = add i32 %9, -3
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %14 = load i64, ptr %13, align 8, !tbaa !82
  br label %24

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 29992
  %17 = load i32, ptr %16, align 8, !tbaa !109
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %20 = load i64, ptr %19, align 8, !tbaa !82
  br i1 %18, label %21, label %24

21:                                               ; preds = %15
  %22 = tail call i64 @llvm.umin.i64(i64 %4, i64 %20)
  %23 = tail call i64 @llvm.umax.i64(i64 %22, i64 1)
  br label %24

24:                                               ; preds = %12, %15, %21
  %25 = phi i64 [ %14, %12 ], [ %23, %21 ], [ %20, %15 ]
  %26 = icmp eq i64 %4, %25
  br i1 %26, label %27, label %249

27:                                               ; preds = %24
  tail call void @ZSTD_checkContinuity(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #17
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %29 = load i64, ptr %28, align 8, !tbaa !110
  %30 = add i64 %29, %4
  store i64 %30, ptr %28, align 8, !tbaa !110
  %31 = load i32, ptr %8, align 4, !tbaa !108
  switch i32 %31, label %249 [
    i32 0, label %32
    i32 1, label %79
    i32 2, label %89
    i32 4, label %123
    i32 3, label %123
    i32 5, label %199
    i32 6, label %239
    i32 7, label %247
  ]

32:                                               ; preds = %27
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %34 = load i32, ptr %33, align 8, !tbaa !34
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, ptr %3, align 1, !tbaa !48
  %38 = and i32 %37, -16
  %39 = icmp eq i32 %38, 407710288
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 95940
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %41, ptr nonnull align 1 %3, i64 %4, i1 false)
  %42 = sub i64 8, %4
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %42, ptr %43, align 8, !tbaa !82
  store i32 6, ptr %8, align 4, !tbaa !108
  br label %249

44:                                               ; preds = %36, %32
  %45 = phi i64 [ 5, %36 ], [ 1, %32 ]
  %46 = icmp ult i64 %4, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 30096
  store i64 -72, ptr %48, align 8, !tbaa !111
  br label %249

49:                                               ; preds = %44
  %50 = getelementptr i8, ptr %3, i64 %45
  %51 = getelementptr i8, ptr %50, i64 -1
  %52 = load i8, ptr %51, align 1, !tbaa !49
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 3
  %55 = lshr i32 %53, 6
  %56 = and i32 %53, 32
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i64
  %60 = zext nneg i32 %54 to i64
  %61 = getelementptr inbounds nuw [4 x i64], ptr @ZSTD_did_fieldSize, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !50
  %63 = zext nneg i32 %55 to i64
  %64 = getelementptr inbounds nuw [4 x i64], ptr @ZSTD_fcs_fieldSize, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !50
  %66 = icmp ult i8 %52, 64
  %67 = and i1 %66, %57
  %68 = zext i1 %67 to i64
  %69 = add i64 %62, %45
  %70 = add i64 %69, %65
  %71 = add i64 %70, %59
  %72 = add i64 %71, %68
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 30096
  store i64 %72, ptr %73, align 8, !tbaa !111
  %74 = icmp ult i64 %72, -119
  br i1 %74, label %75, label %249

75:                                               ; preds = %49
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 95940
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %76, ptr nonnull align 1 %3, i64 %4, i1 false)
  %77 = sub i64 %72, %4
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %77, ptr %78, align 8, !tbaa !82
  store i32 1, ptr %8, align 4, !tbaa !108
  br label %249

79:                                               ; preds = %27
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 95940
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 30096
  %82 = load i64, ptr %81, align 8, !tbaa !111
  %83 = sub i64 %82, %4
  %84 = getelementptr inbounds nuw i8, ptr %80, i64 %83
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %84, ptr align 1 %3, i64 %4, i1 false)
  %85 = tail call fastcc i64 @ZSTD_decodeFrameHeader(ptr noundef nonnull %0, ptr noundef nonnull %80, i64 noundef %82)
  %86 = icmp ult i64 %85, -119
  br i1 %86, label %87, label %249

87:                                               ; preds = %79
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 3, ptr %88, align 8, !tbaa !82
  store i32 2, ptr %8, align 4, !tbaa !108
  br label %249

89:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  %90 = call i64 @ZSTD_getcBlockSize(ptr noundef %3, i64 noundef 3, ptr noundef nonnull %7) #17
  %91 = icmp ult i64 %90, -119
  br i1 %91, label %92, label %121

92:                                               ; preds = %89
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %94 = load i32, ptr %93, align 8, !tbaa !88
  %95 = zext i32 %94 to i64
  %96 = icmp ugt i64 %90, %95
  br i1 %96, label %121, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %90, ptr %98, align 8, !tbaa !82
  %99 = load i32, ptr %7, align 4, !tbaa !89
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 29992
  store i32 %99, ptr %100, align 8, !tbaa !109
  %101 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %102 = load i32, ptr %101, align 4, !tbaa !90
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 30160
  store i64 %103, ptr %104, align 8, !tbaa !112
  %105 = icmp eq i64 %90, 0
  %106 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %107 = load i32, ptr %106, align 4, !tbaa !73
  %108 = icmp eq i32 %107, 0
  br i1 %105, label %111, label %109

109:                                              ; preds = %97
  %110 = select i1 %108, i32 3, i32 4
  br label %119

111:                                              ; preds = %97
  br i1 %108, label %118, label %112

112:                                              ; preds = %111
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 29960
  %114 = load i32, ptr %113, align 8, !tbaa !93
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  store i64 4, ptr %98, align 8, !tbaa !82
  br label %119

117:                                              ; preds = %112
  store i64 0, ptr %98, align 8, !tbaa !82
  br label %119

118:                                              ; preds = %111
  store i64 3, ptr %98, align 8, !tbaa !82
  br label %119

119:                                              ; preds = %109, %116, %117, %118
  %120 = phi i32 [ 2, %118 ], [ 0, %117 ], [ 5, %116 ], [ %110, %109 ]
  store i32 %120, ptr %8, align 4, !tbaa !108
  br label %121

121:                                              ; preds = %119, %92, %89
  %122 = phi i64 [ %90, %89 ], [ -20, %92 ], [ 0, %119 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  br label %249

123:                                              ; preds = %27, %27
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 29992
  %125 = load i32, ptr %124, align 8, !tbaa !109
  switch i32 %125, label %249 [
    i32 2, label %126
    i32 0, label %128
    i32 1, label %140
  ]

126:                                              ; preds = %123
  %127 = tail call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1) #17
  br label %151

128:                                              ; preds = %123
  %129 = icmp ugt i64 %4, %2
  br i1 %129, label %249, label %130

130:                                              ; preds = %128
  %131 = icmp eq ptr %1, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %130
  %133 = icmp eq i64 %4, 0
  br i1 %133, label %136, label %249

134:                                              ; preds = %130
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr readonly align 1 %3, i64 %4, i1 false)
  %135 = icmp ult i64 %4, -119
  br i1 %135, label %136, label %249

136:                                              ; preds = %134, %132
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %138 = load i64, ptr %137, align 8, !tbaa !82
  %139 = sub i64 %138, %4
  store i64 %139, ptr %137, align 8, !tbaa !82
  br label %155

140:                                              ; preds = %123
  %141 = load i8, ptr %3, align 1, !tbaa !49
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 30160
  %143 = load i64, ptr %142, align 8, !tbaa !112
  %144 = icmp ugt i64 %143, %2
  br i1 %144, label %151, label %145

145:                                              ; preds = %140
  %146 = icmp eq ptr %1, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = icmp eq i64 %143, 0
  %149 = select i1 %148, i64 0, i64 -74
  br label %151

150:                                              ; preds = %145
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 %141, i64 %143, i1 false)
  br label %151

151:                                              ; preds = %150, %147, %140, %126
  %152 = phi i64 [ %127, %126 ], [ %143, %150 ], [ -70, %140 ], [ %149, %147 ]
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 0, ptr %153, align 8, !tbaa !82
  %154 = icmp ult i64 %152, -119
  br i1 %154, label %155, label %249

155:                                              ; preds = %136, %151
  %156 = phi i64 [ %4, %136 ], [ %152, %151 ]
  %157 = phi i64 [ %139, %136 ], [ 0, %151 ]
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 29928
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %160 = load i32, ptr %159, align 8, !tbaa !88
  %161 = zext i32 %160 to i64
  %162 = icmp ugt i64 %156, %161
  br i1 %162, label %249, label %163

163:                                              ; preds = %155
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 29984
  %165 = load i64, ptr %164, align 8, !tbaa !113
  %166 = add i64 %165, %156
  store i64 %166, ptr %164, align 8, !tbaa !113
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 30112
  %168 = load i32, ptr %167, align 8, !tbaa !91
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %163
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 30008
  %172 = tail call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %171, ptr noundef captures(none) %1, i64 noundef %156) #17
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %174 = load i64, ptr %173, align 8, !tbaa !82
  br label %175

175:                                              ; preds = %170, %163
  %176 = phi i64 [ %174, %170 ], [ %157, %163 ]
  %177 = getelementptr inbounds nuw i8, ptr %1, i64 %156
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 29888
  store ptr %177, ptr %178, align 8, !tbaa !80
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %180 = icmp eq i64 %176, 0
  br i1 %180, label %181, label %249

181:                                              ; preds = %175
  %182 = load i32, ptr %8, align 4, !tbaa !108
  %183 = icmp eq i32 %182, 4
  br i1 %183, label %184, label %198

184:                                              ; preds = %181
  %185 = load i64, ptr %158, align 8, !tbaa !92
  %186 = icmp eq i64 %185, -1
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = load i64, ptr %164, align 8, !tbaa !113
  %189 = icmp eq i64 %188, %185
  br i1 %189, label %190, label %249

190:                                              ; preds = %187, %184
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 29960
  %192 = load i32, ptr %191, align 8, !tbaa !93
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  store i64 4, ptr %179, align 8, !tbaa !82
  store i32 5, ptr %8, align 4, !tbaa !108
  br label %249

195:                                              ; preds = %190
  %196 = load i64, ptr %164, align 8, !tbaa !113
  %197 = load i64, ptr %28, align 8, !tbaa !110
  tail call fastcc void @ZSTD_DCtx_trace_end(ptr noundef nonnull %0, i64 noundef %196, i64 noundef %197, i32 noundef 1)
  store i64 0, ptr %179, align 8, !tbaa !82
  store i32 0, ptr %8, align 4, !tbaa !108
  br label %249

198:                                              ; preds = %181
  store i32 2, ptr %8, align 4, !tbaa !108
  store i64 3, ptr %179, align 8, !tbaa !82
  br label %249

199:                                              ; preds = %27
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 30112
  %201 = load i32, ptr %200, align 8, !tbaa !91
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 30008
  %205 = tail call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(none) %204) #20
  %206 = trunc i64 %205 to i32
  %207 = load i32, ptr %3, align 1, !tbaa !48
  %208 = icmp eq i32 %207, %206
  br i1 %208, label %209, label %249

209:                                              ; preds = %203, %199
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 29984
  %211 = load i64, ptr %210, align 8, !tbaa !113
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 95968
  %213 = load i64, ptr %212, align 8, !tbaa !81
  %214 = icmp ne i64 %213, 0
  %215 = icmp ne ptr @ZSTD_trace_decompress_end, null
  %216 = and i1 %215, %214
  br i1 %216, label %217, label %237

217:                                              ; preds = %209
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  %218 = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %218, i8 0, i64 48, i1 false)
  store i32 10600, ptr %6, align 8, !tbaa !94
  %219 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 1, ptr %219, align 4, !tbaa !99
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %221 = load ptr, ptr %220, align 8, !tbaa !100
  %222 = icmp eq ptr %221, null
  br i1 %222, label %232, label %223

223:                                              ; preds = %217
  %224 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %221) #17
  store i32 %224, ptr %218, align 8, !tbaa !101
  %225 = load ptr, ptr %220, align 8, !tbaa !100
  %226 = tail call i64 @ZSTD_DDict_dictSize(ptr noundef %225) #17
  %227 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %226, ptr %227, align 8, !tbaa !102
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %229 = load i32, ptr %228, align 4, !tbaa !24
  %230 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %229, ptr %230, align 4, !tbaa !103
  %231 = load i64, ptr %212, align 8, !tbaa !81
  br label %232

232:                                              ; preds = %223, %217
  %233 = phi i64 [ %231, %223 ], [ %213, %217 ]
  %234 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %211, ptr %234, align 8, !tbaa !104
  %235 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %30, ptr %235, align 8, !tbaa !105
  %236 = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %236, align 8, !tbaa !106
  call void @ZSTD_trace_decompress_end(i64 noundef %233, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  br label %237

237:                                              ; preds = %209, %232
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 0, ptr %238, align 8, !tbaa !82
  store i32 0, ptr %8, align 4, !tbaa !108
  br label %249

239:                                              ; preds = %27
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 95940
  %241 = sub i64 8, %4
  %242 = getelementptr inbounds nuw i8, ptr %240, i64 %241
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %242, ptr align 1 %3, i64 %4, i1 false)
  %243 = getelementptr inbounds nuw i8, ptr %0, i64 95944
  %244 = load i32, ptr %243, align 1, !tbaa !48
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %245, ptr %246, align 8, !tbaa !82
  store i32 7, ptr %8, align 4, !tbaa !108
  br label %249

247:                                              ; preds = %27
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 0, ptr %248, align 8, !tbaa !82
  store i32 0, ptr %8, align 4, !tbaa !108
  br label %249

249:                                              ; preds = %132, %128, %49, %47, %203, %79, %27, %151, %134, %123, %155, %175, %187, %194, %195, %198, %24, %40, %75, %87, %121, %237, %239, %247
  %250 = phi i64 [ 0, %40 ], [ 0, %75 ], [ 0, %87 ], [ %85, %79 ], [ %122, %121 ], [ 0, %237 ], [ -22, %203 ], [ 0, %239 ], [ 0, %247 ], [ -72, %24 ], [ %152, %151 ], [ %4, %134 ], [ -20, %123 ], [ -20, %155 ], [ %156, %175 ], [ -20, %187 ], [ %156, %194 ], [ %156, %195 ], [ %156, %198 ], [ -1, %27 ], [ -72, %47 ], [ %72, %49 ], [ -70, %128 ], [ -74, %132 ]
  ret i64 %250
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_decodeFrameHeader(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 29928
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = tail call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2, i32 noundef %7)
  %9 = icmp ult i64 %8, -119
  br i1 %9, label %10, label %82

10:                                               ; preds = %3
  %11 = icmp eq i64 %8, 0
  br i1 %11, label %12, label %82

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 30224
  %14 = load i32, ptr %13, align 8, !tbaa !38
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 30216
  %18 = load ptr, ptr %17, align 8, !tbaa !33
  %19 = icmp eq ptr %18, null
  br i1 %19, label %55, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %22 = load ptr, ptr %21, align 8, !tbaa !100
  %23 = icmp eq ptr %22, null
  br i1 %23, label %55, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 29956
  %26 = load i32, ptr %25, align 4, !tbaa !114
  %27 = getelementptr i8, ptr %18, i64 8
  %28 = load i64, ptr %27, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %26, ptr %4, align 4, !tbaa !48
  %29 = call i64 @ZSTD_XXH64(ptr noundef nonnull captures(none) %4, i64 noundef 4, i64 noundef 0) #20
  %30 = add i64 %28, -1
  %31 = and i64 %29, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %32

32:                                               ; preds = %32, %24
  %33 = phi i64 [ %31, %24 ], [ %42, %32 ]
  %34 = load ptr, ptr %18, align 8, !tbaa !44
  %35 = getelementptr inbounds nuw ptr, ptr %34, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !116
  %37 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef %36) #17
  %38 = icmp eq i32 %37, %26
  %39 = icmp eq i32 %37, 0
  %40 = or i1 %38, %39
  %41 = and i64 %33, %30
  %42 = add i64 %41, 1
  br i1 %40, label %43, label %32

43:                                               ; preds = %32
  %44 = load ptr, ptr %18, align 8, !tbaa !44
  %45 = getelementptr inbounds nuw ptr, ptr %44, i64 %33
  %46 = load ptr, ptr %45, align 8, !tbaa !116
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = tail call i64 @ZSTD_freeDDict(ptr noundef %50) #17
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i64 0, ptr %49, align 8
  %53 = load i32, ptr %25, align 4, !tbaa !114
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 30200
  store i32 %53, ptr %54, align 8, !tbaa !83
  store ptr %46, ptr %21, align 8, !tbaa !100
  store i32 -1, ptr %52, align 8, !tbaa !25
  br label %55

55:                                               ; preds = %48, %43, %20, %12, %16
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 29956
  %57 = load i32, ptr %56, align 4, !tbaa !114
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 30200
  %61 = load i32, ptr %60, align 8, !tbaa !83
  %62 = icmp eq i32 %61, %57
  br i1 %62, label %63, label %82

63:                                               ; preds = %59, %55
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 29960
  %65 = load i32, ptr %64, align 8, !tbaa !93
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 30108
  %69 = load i32, ptr %68, align 4, !tbaa !37
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 30112
  store i32 %71, ptr %72, align 8, !tbaa !91
  br i1 %70, label %73, label %78

73:                                               ; preds = %67
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 30008
  %75 = tail call i32 @ZSTD_XXH64_reset(ptr noundef nonnull captures(none) %74, i64 noundef 0) #17
  br label %78

76:                                               ; preds = %63
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 30112
  store i32 0, ptr %77, align 8, !tbaa !91
  br label %78

78:                                               ; preds = %76, %73, %67
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %80 = load i64, ptr %79, align 8, !tbaa !110
  %81 = add i64 %80, %2
  store i64 %81, ptr %79, align 8, !tbaa !110
  br label %82

82:                                               ; preds = %59, %10, %3, %78
  %83 = phi i64 [ 0, %78 ], [ %8, %3 ], [ -72, %10 ], [ -32, %59 ]
  ret i64 %83
}

declare i64 @ZSTD_getcBlockSize(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @ZSTD_decompressBlock_internal(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ZSTD_XXH64_update(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_DCtx_trace_end(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
  %5 = alloca %struct.ZSTD_Trace, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 95968
  %7 = load i64, ptr %6, align 8, !tbaa !81
  %8 = icmp ne i64 %7, 0
  %9 = icmp ne ptr @ZSTD_trace_decompress_end, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %32

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %12, i8 0, i64 48, i1 false)
  store i32 10600, ptr %5, align 8, !tbaa !94
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %3, ptr %13, align 4, !tbaa !99
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %15 = load ptr, ptr %14, align 8, !tbaa !100
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %15) #17
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %18, ptr %19, align 8, !tbaa !101
  %20 = load ptr, ptr %14, align 8, !tbaa !100
  %21 = tail call i64 @ZSTD_DDict_dictSize(ptr noundef %20) #17
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %21, ptr %22, align 8, !tbaa !102
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %24 = load i32, ptr %23, align 4, !tbaa !24
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %24, ptr %25, align 4, !tbaa !103
  %26 = load i64, ptr %6, align 8, !tbaa !81
  br label %27

27:                                               ; preds = %17, %11
  %28 = phi i64 [ %26, %17 ], [ %7, %11 ]
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %1, ptr %29, align 8, !tbaa !104
  %30 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %2, ptr %30, align 8, !tbaa !105
  %31 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %0, ptr %31, align 8, !tbaa !106
  call void @ZSTD_trace_decompress_end(i64 noundef %28, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  br label %32

32:                                               ; preds = %27, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local range(i64 20, 0) i64 @ZSTD_loadDEntropy(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i16], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [53 x i16], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [36 x i16], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %14 = icmp ult i64 %2, 9
  br i1 %14, label %97, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 10264
  %18 = add i64 %2, -8
  %19 = tail call i64 @HUF_readDTableX2_wksp(ptr noundef nonnull %17, ptr noundef nonnull %16, i64 noundef %18, ptr noundef %0, i64 noundef 10264, i32 noundef 0) #17
  %20 = icmp ult i64 %19, -119
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 %19
  br i1 %20, label %22, label %97

22:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 31, ptr %5, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %23 = sub i64 %18, %19
  %24 = call i64 @FSE_readNCount(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %21, i64 noundef %23) #17
  %25 = icmp ult i64 %24, -119
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, ptr %5, align 4, !tbaa !48
  %28 = icmp ugt i32 %27, 31
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %6, align 4, !tbaa !48
  %31 = icmp ugt i32 %30, 8
  br i1 %31, label %32, label %33

32:                                               ; preds = %22, %26, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  br label %97

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 26664
  call void @ZSTD_buildFSETable(ptr noundef nonnull %34, ptr noundef nonnull %4, i32 noundef %27, ptr noundef nonnull @OF_base, ptr noundef nonnull @OF_bits, i32 noundef %30, ptr noundef nonnull %35, i64 noundef 628, i32 noundef 0) #17
  %36 = getelementptr inbounds nuw i8, ptr %21, i64 %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  store i32 52, ptr %8, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  %37 = add i64 %19, %24
  %38 = sub i64 %18, %37
  %39 = call i64 @FSE_readNCount(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %36, i64 noundef %38) #17
  %40 = icmp ult i64 %39, -119
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i32, ptr %8, align 4, !tbaa !48
  %43 = icmp ugt i32 %42, 52
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %9, align 4, !tbaa !48
  %46 = icmp ugt i32 %45, 9
  br i1 %46, label %47, label %48

47:                                               ; preds = %33, %41, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %7) #17
  br label %97

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 6160
  call void @ZSTD_buildFSETable(ptr noundef nonnull %49, ptr noundef nonnull %7, i32 noundef %42, ptr noundef nonnull @ML_base, ptr noundef nonnull @ML_bits, i32 noundef %45, ptr noundef nonnull %35, i64 noundef 628, i32 noundef 0) #17
  %50 = getelementptr inbounds nuw i8, ptr %36, i64 %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  store i32 35, ptr %11, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #17
  %51 = add i64 %37, %39
  %52 = sub i64 %18, %51
  %53 = call i64 @FSE_readNCount(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %50, i64 noundef %52) #17
  %54 = icmp ult i64 %53, -119
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, ptr %11, align 4, !tbaa !48
  %57 = icmp ugt i32 %56, 35
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %12, align 4, !tbaa !48
  %60 = icmp ugt i32 %59, 9
  br i1 %60, label %61, label %62

61:                                               ; preds = %48, %55, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %10) #17
  br label %97

62:                                               ; preds = %58
  call void @ZSTD_buildFSETable(ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef %56, ptr noundef nonnull @LL_base, ptr noundef nonnull @LL_bits, i32 noundef %59, ptr noundef nonnull %35, i64 noundef 628, i32 noundef 0) #17
  %63 = getelementptr inbounds nuw i8, ptr %50, i64 %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %10) #17
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 12
  %65 = icmp ugt ptr %64, %13
  br i1 %65, label %97, label %66

66:                                               ; preds = %62
  %67 = add i64 %2, -20
  %68 = add i64 %51, %53
  %69 = sub i64 %67, %68
  %70 = load i32, ptr %63, align 1, !tbaa !48
  %71 = icmp eq i32 %70, 0
  %72 = zext i32 %70 to i64
  %73 = icmp ult i64 %69, %72
  %74 = or i1 %71, %73
  br i1 %74, label %97, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 26652
  %77 = getelementptr inbounds nuw i8, ptr %63, i64 4
  store i32 %70, ptr %76, align 4, !tbaa !48
  %78 = load i32, ptr %77, align 1, !tbaa !48
  %79 = icmp eq i32 %78, 0
  %80 = zext i32 %78 to i64
  %81 = icmp ult i64 %69, %80
  %82 = or i1 %79, %81
  br i1 %82, label %97, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store i32 %78, ptr %85, align 4, !tbaa !48
  %86 = load i32, ptr %84, align 1, !tbaa !48
  %87 = icmp eq i32 %86, 0
  %88 = zext i32 %86 to i64
  %89 = icmp ult i64 %69, %88
  %90 = or i1 %87, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 26660
  store i32 %86, ptr %92, align 4, !tbaa !48
  %93 = add i64 %53, 20
  %94 = add i64 %39, %24
  %95 = add i64 %93, %94
  %96 = add i64 %95, %19
  br label %97

97:                                               ; preds = %66, %75, %83, %61, %47, %32, %62, %3, %15, %91
  %98 = phi i64 [ %96, %91 ], [ -30, %15 ], [ -30, %3 ], [ -30, %62 ], [ -30, %32 ], [ -30, %47 ], [ -30, %61 ], [ -30, %83 ], [ -30, %75 ], [ -30, %66 ]
  ret i64 %98
}

declare i64 @HUF_readDTableX2_wksp(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ZSTD_buildFSETable(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_decompressBegin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr @ZSTD_trace_decompress_begin, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i64 @ZSTD_trace_decompress_begin(ptr noundef %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 95968
  store i64 %6, ptr %7, align 8, !tbaa !81
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i64 5, i64 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %11, ptr %12, align 8, !tbaa !82
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 10296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %16, align 8, !tbaa !48
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 30200
  store i32 0, ptr %17, align 8, !tbaa !83
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 29992
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %18, align 8, !tbaa !48
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 1, ptr %19, align 8, !tbaa !28
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %20, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store ptr %15, ptr %0, align 8, !tbaa !84
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %21, ptr %22, align 8, !tbaa !85
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %23, ptr %24, align 8, !tbaa !86
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %16, ptr %25, align 8, !tbaa !87
  ret i64 0
}

declare extern_weak i64 @ZSTD_trace_decompress_begin(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local range(i64 -30, 1) i64 @ZSTD_decompressBegin_usingDict(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr @ZSTD_trace_decompress_begin, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i64 @ZSTD_trace_decompress_begin(ptr noundef %0) #17
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i64 [ %6, %5 ], [ 0, %3 ]
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 95968
  store i64 %8, ptr %9, align 8, !tbaa !81
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i64 5, i64 1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %13, ptr %14, align 8, !tbaa !82
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 10296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %18, align 8, !tbaa !48
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 30000
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 30200
  store i32 0, ptr %21, align 8, !tbaa !83
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 29992
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %22, align 8, !tbaa !48
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 1, ptr %23, align 8, !tbaa !28
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %24, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store ptr %17, ptr %0, align 8, !tbaa !84
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %25, ptr %26, align 8, !tbaa !85
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %27, ptr %28, align 8, !tbaa !86
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %18, ptr %29, align 8, !tbaa !87
  %30 = icmp ne ptr %1, null
  %31 = icmp ne i64 %2, 0
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %7
  %34 = icmp ult i64 %2, 8
  br i1 %34, label %49, label %35

35:                                               ; preds = %33
  %36 = load i32, ptr %1, align 1, !tbaa !48
  %37 = icmp eq i32 %36, -332356553
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %40 = load i32, ptr %39, align 1, !tbaa !48
  store i32 %40, ptr %21, align 8, !tbaa !83
  %41 = tail call i64 @ZSTD_loadDEntropy(ptr noundef nonnull %17, ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %2)
  %42 = icmp ult i64 %41, -119
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 %41
  store i32 1, ptr %19, align 4, !tbaa !117
  store i32 1, ptr %20, align 8, !tbaa !118
  %45 = load ptr, ptr %16, align 8, !tbaa !80
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %47 = load ptr, ptr %46, align 8, !tbaa !119
  %48 = ptrtoint ptr %47 to i64
  br label %49

49:                                               ; preds = %33, %35, %43
  %50 = phi i64 [ %48, %43 ], [ 0, %33 ], [ 0, %35 ]
  %51 = phi ptr [ %45, %43 ], [ null, %33 ], [ null, %35 ]
  %52 = phi ptr [ %44, %43 ], [ %1, %33 ], [ %1, %35 ]
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr %51, ptr %53, align 8, !tbaa !23
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %55 = ptrtoint ptr %51 to i64
  %56 = sub i64 %50, %55
  %57 = getelementptr inbounds i8, ptr %52, i64 %56
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  store ptr %57, ptr %58, align 8, !tbaa !120
  store ptr %52, ptr %54, align 8, !tbaa !119
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %59, ptr %16, align 8, !tbaa !80
  br label %60

60:                                               ; preds = %38, %7, %49
  %61 = phi i64 [ 0, %49 ], [ 0, %7 ], [ -30, %38 ]
  ret i64 %61
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_decompressBegin_usingDDict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %1) #17
  %6 = tail call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %1) #17
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = icmp ne ptr %9, %7
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 30204
  store i32 %11, ptr %12, align 4, !tbaa !24
  br label %13

13:                                               ; preds = %2, %4
  %14 = icmp eq ptr @ZSTD_trace_decompress_begin, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = tail call i64 @ZSTD_trace_decompress_begin(ptr noundef %0) #17
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i64 [ %16, %15 ], [ 0, %13 ]
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 95968
  store i64 %18, ptr %19, align 8, !tbaa !81
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %21 = load i32, ptr %20, align 8, !tbaa !34
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i64 5, i64 1
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %23, ptr %24, align 8, !tbaa !82
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 10296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %28, align 8, !tbaa !48
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 30200
  store i32 0, ptr %29, align 8, !tbaa !83
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 29992
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %30, align 8, !tbaa !48
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 1, ptr %31, align 8, !tbaa !28
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %32, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store ptr %27, ptr %0, align 8, !tbaa !84
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %33, ptr %34, align 8, !tbaa !85
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %35, ptr %36, align 8, !tbaa !86
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %28, ptr %37, align 8, !tbaa !87
  br i1 %3, label %39, label %38

38:                                               ; preds = %17
  tail call void @ZSTD_copyDDictParameters(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  br label %39

39:                                               ; preds = %17, %38
  ret i64 0
}

declare ptr @ZSTD_DDict_dictContent(ptr noundef) local_unnamed_addr #1

declare i64 @ZSTD_DDict_dictSize(ptr noundef) local_unnamed_addr #1

declare void @ZSTD_copyDDictParameters(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZSTD_getDictID_fromDict(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ult i64 %1, 8
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 1, !tbaa !48
  %6 = icmp eq i32 %5, -332356553
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %9 = load i32, ptr %8, align 1, !tbaa !48
  br label %10

10:                                               ; preds = %4, %2, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %2 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @ZSTD_getDictID_fromFrame(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = alloca %struct.ZSTD_FrameHeader, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %4 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef readonly %0, i64 noundef %1, i32 noundef 0)
  %5 = icmp ult i64 %4, -119
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %7 = load i32, ptr %6, align 4
  %8 = select i1 %5, i32 %7, i32 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #17
  ret i32 %8
}

; Function Attrs: nounwind memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noundef ptr @ZSTD_createDStream() local_unnamed_addr #5 {
  %1 = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #19
  %2 = icmp eq ptr %1, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 30128
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 30168
  store i64 0, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 30184
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 29912
  store ptr null, ptr %7, align 8, !tbaa !23
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 30204
  store i32 0, ptr %8, align 4, !tbaa !24
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 30208
  store i32 0, ptr %9, align 8, !tbaa !25
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 30280
  store i64 0, ptr %10, align 8, !tbaa !22
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 30236
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 30316
  store i32 0, ptr %12, align 4, !tbaa !26
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 95960
  store i64 0, ptr %13, align 8, !tbaa !27
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 1, ptr %14, align 8, !tbaa !28
  %15 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #18, !srcloc !29
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %3
  %18 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #18, !srcloc !30
  %19 = icmp ugt i32 %15, 6
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #18, !srcloc !31
  %22 = extractvalue { i32, i32, i32 } %21, 1
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = lshr i32 %22, 8
  %27 = and i32 %26, 1
  br label %28

28:                                               ; preds = %25, %20, %17, %3
  %29 = phi i32 [ 0, %20 ], [ %27, %25 ], [ 0, %17 ], [ 0, %3 ]
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 30180
  store i32 %29, ptr %30, align 4, !tbaa !32
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 30216
  store ptr null, ptr %31, align 8, !tbaa !33
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 30104
  store i32 0, ptr %32, align 8, !tbaa !34
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 30264
  store i64 134217729, ptr %33, align 8, !tbaa !35
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 30320
  store i32 0, ptr %34, align 8, !tbaa !36
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 30108
  store i32 0, ptr %35, align 4, !tbaa !37
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 30224
  store i32 0, ptr %36, align 8, !tbaa !38
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 30228
  store i32 0, ptr %37, align 4, !tbaa !39
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 30232
  store i32 0, ptr %38, align 8, !tbaa !40
  br label %39

39:                                               ; preds = %0, %28
  ret ptr %1
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @ZSTD_initStaticDStream(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 0
  %6 = icmp ult i64 %1, 95976
  %7 = or i1 %6, %5
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr null, ptr %11, align 8, !tbaa !23
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 30204
  store i32 0, ptr %12, align 4, !tbaa !24
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %13, align 8, !tbaa !25
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 30280
  store i64 0, ptr %14, align 8, !tbaa !22
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30316
  store i32 0, ptr %16, align 4, !tbaa !26
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 95960
  store i64 0, ptr %17, align 8, !tbaa !27
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %15, i8 0, i64 20, i1 false)
  store i32 1, ptr %18, align 8, !tbaa !28
  %19 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #18, !srcloc !29
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %8
  %22 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #18, !srcloc !30
  %23 = icmp ugt i32 %19, 6
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #18, !srcloc !31
  %26 = extractvalue { i32, i32, i32 } %25, 1
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = lshr i32 %26, 8
  %31 = and i32 %30, 1
  br label %32

32:                                               ; preds = %29, %24, %21, %8
  %33 = phi i32 [ 0, %24 ], [ %31, %29 ], [ 0, %21 ], [ 0, %8 ]
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 30180
  store i32 %33, ptr %34, align 4, !tbaa !32
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 30216
  store ptr null, ptr %35, align 8, !tbaa !33
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  store i32 0, ptr %36, align 8, !tbaa !34
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 30264
  store i64 134217729, ptr %37, align 8, !tbaa !35
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 30320
  store i32 0, ptr %38, align 8, !tbaa !36
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 30108
  store i32 0, ptr %39, align 4, !tbaa !37
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 30224
  store i32 0, ptr %40, align 8, !tbaa !38
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 30228
  store i32 0, ptr %41, align 4, !tbaa !39
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 30232
  store i32 0, ptr %42, align 8, !tbaa !40
  store i64 %1, ptr %9, align 8, !tbaa !41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 95976
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 30240
  store ptr %43, ptr %44, align 8, !tbaa !42
  br label %45

45:                                               ; preds = %2, %32
  %46 = phi ptr [ %0, %32 ], [ null, %2 ]
  ret ptr %46
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createDStream_advanced(ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %2, null
  %8 = icmp eq ptr %4, null
  %9 = xor i1 %7, %8
  br i1 %9, label %56, label %10

10:                                               ; preds = %1
  br i1 %7, label %13, label %11

11:                                               ; preds = %10
  %12 = tail call ptr %2(ptr noundef %6, i64 noundef 95976) #17
  br label %15

13:                                               ; preds = %10
  %14 = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #19
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 30128
  store ptr %2, ptr %19, align 8, !tbaa !43
  %20 = getelementptr inbounds nuw i8, ptr %16, i64 30136
  store ptr %4, ptr %20, align 8, !tbaa !43
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 30144
  store ptr %6, ptr %21, align 8, !tbaa !43
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 30168
  store i64 0, ptr %22, align 8, !tbaa !41
  %23 = getelementptr inbounds nuw i8, ptr %16, i64 30184
  %24 = getelementptr inbounds nuw i8, ptr %16, i64 29912
  store ptr null, ptr %24, align 8, !tbaa !23
  %25 = getelementptr inbounds nuw i8, ptr %16, i64 30204
  store i32 0, ptr %25, align 4, !tbaa !24
  %26 = getelementptr inbounds nuw i8, ptr %16, i64 30208
  store i32 0, ptr %26, align 8, !tbaa !25
  %27 = getelementptr inbounds nuw i8, ptr %16, i64 30280
  store i64 0, ptr %27, align 8, !tbaa !22
  %28 = getelementptr inbounds nuw i8, ptr %16, i64 30236
  %29 = getelementptr inbounds nuw i8, ptr %16, i64 30316
  store i32 0, ptr %29, align 4, !tbaa !26
  %30 = getelementptr inbounds nuw i8, ptr %16, i64 95960
  store i64 0, ptr %30, align 8, !tbaa !27
  %31 = getelementptr inbounds nuw i8, ptr %16, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %28, i8 0, i64 20, i1 false)
  store i32 1, ptr %31, align 8, !tbaa !28
  %32 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #18, !srcloc !29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %18
  %35 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #18, !srcloc !30
  %36 = icmp ugt i32 %32, 6
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #18, !srcloc !31
  %39 = extractvalue { i32, i32, i32 } %38, 1
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = lshr i32 %39, 8
  %44 = and i32 %43, 1
  br label %45

45:                                               ; preds = %42, %37, %34, %18
  %46 = phi i32 [ 0, %37 ], [ %44, %42 ], [ 0, %34 ], [ 0, %18 ]
  %47 = getelementptr inbounds nuw i8, ptr %16, i64 30180
  store i32 %46, ptr %47, align 4, !tbaa !32
  %48 = getelementptr inbounds nuw i8, ptr %16, i64 30216
  store ptr null, ptr %48, align 8, !tbaa !33
  %49 = getelementptr inbounds nuw i8, ptr %16, i64 30104
  store i32 0, ptr %49, align 8, !tbaa !34
  %50 = getelementptr inbounds nuw i8, ptr %16, i64 30264
  store i64 134217729, ptr %50, align 8, !tbaa !35
  %51 = getelementptr inbounds nuw i8, ptr %16, i64 30320
  store i32 0, ptr %51, align 8, !tbaa !36
  %52 = getelementptr inbounds nuw i8, ptr %16, i64 30108
  store i32 0, ptr %52, align 4, !tbaa !37
  %53 = getelementptr inbounds nuw i8, ptr %16, i64 30224
  store i32 0, ptr %53, align 8, !tbaa !38
  %54 = getelementptr inbounds nuw i8, ptr %16, i64 30228
  store i32 0, ptr %54, align 4, !tbaa !39
  %55 = getelementptr inbounds nuw i8, ptr %16, i64 30232
  store i32 0, ptr %55, align 8, !tbaa !40
  br label %56

56:                                               ; preds = %1, %15, %45
  %57 = phi ptr [ null, %1 ], [ %16, %45 ], [ null, %15 ]
  ret ptr %57
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_freeDStream(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @ZSTD_freeDCtx(ptr noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_DStreamInSize() local_unnamed_addr #2 {
  ret i64 131075
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_DStreamOutSize() local_unnamed_addr #2 {
  ret i64 131072
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_DCtx_loadDictionary_advanced(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %7 = load i32, ptr %6, align 4, !tbaa !121
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call i64 @ZSTD_freeDDict(ptr noundef %11) #17
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %13, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %14 = icmp ne ptr %1, null
  %15 = icmp ne i64 %2, 0
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %19 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %18) #17
  store ptr %19, ptr %10, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  store ptr %19, ptr %22, align 8, !tbaa !100
  store i32 -1, ptr %13, align 8, !tbaa !25
  br label %23

23:                                               ; preds = %9, %21, %17, %5
  %24 = phi i64 [ -60, %5 ], [ -64, %17 ], [ 0, %21 ], [ 0, %9 ]
  ret i64 %24
}

declare ptr @ZSTD_createDDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_DCtx_loadDictionary_byReference(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %5 = load i32, ptr %4, align 4, !tbaa !121
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call i64 @ZSTD_freeDDict(ptr noundef %9) #17
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %11, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %12 = icmp ne ptr %1, null
  %13 = icmp ne i64 %2, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %17 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %16) #17
  store ptr %17, ptr %8, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  store ptr %17, ptr %20, align 8, !tbaa !100
  store i32 -1, ptr %11, align 8, !tbaa !25
  br label %21

21:                                               ; preds = %3, %7, %15, %19
  %22 = phi i64 [ -60, %3 ], [ -64, %15 ], [ 0, %19 ], [ 0, %7 ]
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_DCtx_loadDictionary(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %5 = load i32, ptr %4, align 4, !tbaa !121
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call i64 @ZSTD_freeDDict(ptr noundef %9) #17
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %11, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %12 = icmp ne ptr %1, null
  %13 = icmp ne i64 %2, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %17 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %16) #17
  store ptr %17, ptr %8, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  store ptr %17, ptr %20, align 8, !tbaa !100
  store i32 -1, ptr %11, align 8, !tbaa !25
  br label %21

21:                                               ; preds = %3, %7, %15, %19
  %22 = phi i64 [ -60, %3 ], [ -64, %15 ], [ 0, %19 ], [ 0, %7 ]
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_DCtx_refPrefix_advanced(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %6 = load i32, ptr %5, align 4, !tbaa !121
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call i64 @ZSTD_freeDDict(ptr noundef %10) #17
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %12, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %13 = icmp ne ptr %1, null
  %14 = icmp ne i64 %2, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %18 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 1, i32 noundef %3, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %17) #17
  store ptr %18, ptr %9, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  store ptr %18, ptr %21, align 8, !tbaa !100
  br label %22

22:                                               ; preds = %20, %8
  store i32 1, ptr %12, align 8, !tbaa !25
  br label %23

23:                                               ; preds = %16, %4, %22
  %24 = phi i64 [ 0, %22 ], [ -60, %4 ], [ -64, %16 ]
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_DCtx_refPrefix(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %5 = load i32, ptr %4, align 4, !tbaa !121
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call i64 @ZSTD_freeDDict(ptr noundef %9) #17
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %11, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %12 = icmp ne ptr %1, null
  %13 = icmp ne i64 %2, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %17 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 1, i32 noundef 1, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %16) #17
  store ptr %17, ptr %8, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  store ptr %17, ptr %20, align 8, !tbaa !100
  br label %21

21:                                               ; preds = %19, %7
  store i32 1, ptr %11, align 8, !tbaa !25
  br label %22

22:                                               ; preds = %3, %15, %21
  %23 = phi i64 [ 0, %21 ], [ -60, %3 ], [ -64, %15 ]
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 6) i64 @ZSTD_initDStream_usingDict(ptr noundef captures(none) initializes((30176, 30180), (30192, 30200), (30208, 30212), (30236, 30240), (30316, 30320)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  store i32 0, ptr %4, align 4, !tbaa !121
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 30316
  store i32 0, ptr %5, align 4, !tbaa !26
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 1, ptr %6, align 8, !tbaa !28
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = tail call i64 @ZSTD_freeDDict(ptr noundef %8) #17
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %10, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %11 = icmp ne ptr %1, null
  %12 = icmp ne i64 %2, 0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %16 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %15) #17
  store ptr %16, ptr %7, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  store ptr %16, ptr %19, align 8, !tbaa !100
  store i32 -1, ptr %10, align 8, !tbaa !25
  br label %20

20:                                               ; preds = %18, %3
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %22 = load i32, ptr %21, align 8, !tbaa !34
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i64 5, i64 1
  br label %25

25:                                               ; preds = %14, %20
  %26 = phi i64 [ %24, %20 ], [ -64, %14 ]
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_DCtx_reset(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, -3
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  store i32 0, ptr %6, align 4, !tbaa !121
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 30316
  store i32 0, ptr %7, align 4, !tbaa !26
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 1, ptr %8, align 8, !tbaa !28
  br label %9

9:                                                ; preds = %2, %5
  %10 = and i32 %1, -2
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %14 = load i32, ptr %13, align 4, !tbaa !121
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = tail call i64 @ZSTD_freeDDict(ptr noundef %18) #17
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %20, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  store i32 0, ptr %21, align 8, !tbaa !34
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 30264
  store i64 134217729, ptr %22, align 8, !tbaa !35
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 30320
  store i32 0, ptr %23, align 8, !tbaa !36
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 30108
  store i32 0, ptr %24, align 4, !tbaa !37
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 30224
  store i32 0, ptr %25, align 8, !tbaa !38
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 30228
  store i32 0, ptr %26, align 4, !tbaa !39
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 30232
  store i32 0, ptr %27, align 8, !tbaa !40
  br label %28

28:                                               ; preds = %16, %9, %12
  %29 = phi i64 [ -60, %12 ], [ 0, %9 ], [ 0, %16 ]
  ret i64 %29
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 1, 6) i64 @ZSTD_initDStream(ptr noundef captures(none) initializes((30176, 30180), (30192, 30200), (30208, 30212), (30236, 30240), (30316, 30320)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  store i32 0, ptr %2, align 4, !tbaa !121
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 30316
  store i32 0, ptr %3, align 4, !tbaa !26
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 1, ptr %4, align 8, !tbaa !28
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call i64 @ZSTD_freeDDict(ptr noundef %6) #17
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %8, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i64 5, i64 1
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_DCtx_refDDict(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %6 = load i32, ptr %5, align 4, !tbaa !121
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %178

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call i64 @ZSTD_freeDDict(ptr noundef %10) #17
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %12, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %13 = icmp eq ptr %1, null
  br i1 %13, label %178, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  store ptr %1, ptr %15, align 8, !tbaa !100
  store i32 -1, ptr %12, align 8, !tbaa !25
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30224
  %17 = load i32, ptr %16, align 8, !tbaa !38
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %178

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 30216
  %21 = load ptr, ptr %20, align 8, !tbaa !33
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 30136
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 30144
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %25, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %42

34:                                               ; preds = %23
  %35 = tail call ptr %25(ptr noundef %29, i64 noundef 24) #17
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = tail call ptr %25(ptr noundef %29, i64 noundef 512) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store ptr null, ptr %35, align 8, !tbaa !44
  br label %45

41:                                               ; preds = %37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %38, i8 0, i64 512, i1 false)
  store ptr %38, ptr %35, align 8, !tbaa !44
  br label %51

42:                                               ; preds = %31
  %43 = tail call noalias dereferenceable_or_null(512) ptr @calloc(i64 noundef 1, i64 noundef 512) #21
  store ptr %43, ptr %32, align 8, !tbaa !44
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42, %40
  %46 = phi ptr [ %35, %40 ], [ %32, %42 ]
  %47 = icmp eq ptr %27, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void %27(ptr noundef %29, ptr noundef nonnull %46) #17
  br label %50

49:                                               ; preds = %45
  tail call void @free(ptr noundef nonnull %46) #17
  br label %50

50:                                               ; preds = %31, %34, %48, %49
  store ptr null, ptr %20, align 8, !tbaa !33
  br label %178

51:                                               ; preds = %42, %41
  %52 = phi ptr [ %35, %41 ], [ %32, %42 ]
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i64 64, ptr %53, align 8, !tbaa !115
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i64 0, ptr %54, align 8, !tbaa !122
  store ptr %52, ptr %20, align 8, !tbaa !33
  %55 = getelementptr inbounds nuw i8, ptr %52, i64 16
  %56 = getelementptr inbounds nuw i8, ptr %52, i64 8
  br label %139

57:                                               ; preds = %19
  %58 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %59 = load i64, ptr %58, align 8, !tbaa !122
  %60 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %61 = load i64, ptr %60, align 8, !tbaa !115
  %62 = shl i64 %59, 2
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 30136
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 30144
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %70 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %71 = icmp ugt i64 %61, %62
  br i1 %71, label %139, label %72

72:                                               ; preds = %57
  %73 = shl i64 %61, 4
  %74 = icmp eq ptr %64, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = tail call ptr %64(ptr noundef %68, i64 noundef %73) #17
  %77 = icmp eq ptr %76, null
  br i1 %77, label %178, label %78

78:                                               ; preds = %75
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %76, i8 0, i64 %73, i1 false)
  %79 = load i64, ptr %70, align 8, !tbaa !115
  br label %83

80:                                               ; preds = %72
  %81 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %73) #21
  %82 = icmp eq ptr %81, null
  br i1 %82, label %178, label %83

83:                                               ; preds = %80, %78
  %84 = phi i64 [ %79, %78 ], [ %61, %80 ]
  %85 = phi ptr [ %76, %78 ], [ %81, %80 ]
  %86 = load ptr, ptr %21, align 8, !tbaa !44
  %87 = shl i64 %61, 1
  store ptr %85, ptr %21, align 8, !tbaa !44
  store i64 %87, ptr %70, align 8, !tbaa !115
  store i64 0, ptr %69, align 8, !tbaa !122
  %88 = icmp eq i64 %84, 0
  br i1 %88, label %133, label %89

89:                                               ; preds = %83, %130
  %90 = phi i64 [ %131, %130 ], [ 0, %83 ]
  %91 = getelementptr inbounds nuw ptr, ptr %86, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !116
  %93 = icmp eq ptr %92, null
  br i1 %93, label %130, label %94

94:                                               ; preds = %89
  %95 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %92) #17
  %96 = load i64, ptr %70, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %95, ptr %4, align 4, !tbaa !48
  %97 = call i64 @ZSTD_XXH64(ptr noundef nonnull captures(none) %4, i64 noundef 4, i64 noundef 0) #20
  %98 = add i64 %96, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %99 = load i64, ptr %69, align 8, !tbaa !122
  %100 = icmp eq i64 %99, %96
  br i1 %100, label %178, label %101

101:                                              ; preds = %94
  %102 = and i64 %97, %98
  %103 = load ptr, ptr %21, align 8, !tbaa !44
  %104 = getelementptr inbounds nuw ptr, ptr %103, i64 %102
  %105 = load ptr, ptr %104, align 8, !tbaa !116
  %106 = icmp eq ptr %105, null
  br i1 %106, label %124, label %107

107:                                              ; preds = %101, %115
  %108 = phi ptr [ %120, %115 ], [ %105, %101 ]
  %109 = phi i64 [ %117, %115 ], [ %102, %101 ]
  %110 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %108) #17
  %111 = icmp eq i32 %110, %95
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load ptr, ptr %21, align 8, !tbaa !44
  %114 = getelementptr inbounds nuw ptr, ptr %113, i64 %109
  store ptr %92, ptr %114, align 8, !tbaa !116
  br label %130

115:                                              ; preds = %107
  %116 = and i64 %109, %98
  %117 = add i64 %116, 1
  %118 = load ptr, ptr %21, align 8, !tbaa !44
  %119 = getelementptr inbounds nuw ptr, ptr %118, i64 %117
  %120 = load ptr, ptr %119, align 8, !tbaa !116
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %107, !llvm.loop !123

122:                                              ; preds = %115
  %123 = load i64, ptr %69, align 8, !tbaa !122
  br label %124

124:                                              ; preds = %122, %101
  %125 = phi i64 [ %99, %101 ], [ %123, %122 ]
  %126 = phi i64 [ %102, %101 ], [ %117, %122 ]
  %127 = phi ptr [ %103, %101 ], [ %118, %122 ]
  %128 = getelementptr inbounds nuw ptr, ptr %127, i64 %126
  store ptr %92, ptr %128, align 8, !tbaa !116
  %129 = add i64 %125, 1
  store i64 %129, ptr %69, align 8, !tbaa !122
  br label %130

130:                                              ; preds = %124, %112, %89
  %131 = add nuw i64 %90, 1
  %132 = icmp eq i64 %131, %84
  br i1 %132, label %133, label %89, !llvm.loop !124

133:                                              ; preds = %130, %83
  %134 = icmp eq ptr %86, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %133
  %136 = icmp eq ptr %66, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %135
  tail call void %66(ptr noundef %68, ptr noundef nonnull %86) #17
  br label %139

138:                                              ; preds = %135
  tail call void @free(ptr noundef nonnull %86) #17
  br label %139

139:                                              ; preds = %51, %138, %137, %133, %57
  %140 = phi ptr [ %56, %51 ], [ %70, %138 ], [ %70, %137 ], [ %70, %133 ], [ %70, %57 ]
  %141 = phi ptr [ %55, %51 ], [ %69, %138 ], [ %69, %137 ], [ %69, %133 ], [ %69, %57 ]
  %142 = phi ptr [ %52, %51 ], [ %21, %138 ], [ %21, %137 ], [ %21, %133 ], [ %21, %57 ]
  %143 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %1) #17
  %144 = load i64, ptr %140, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %143, ptr %3, align 4, !tbaa !48
  %145 = call i64 @ZSTD_XXH64(ptr noundef nonnull captures(none) %3, i64 noundef 4, i64 noundef 0) #20
  %146 = add i64 %144, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %147 = load i64, ptr %141, align 8, !tbaa !122
  %148 = icmp eq i64 %147, %144
  br i1 %148, label %178, label %149

149:                                              ; preds = %139
  %150 = and i64 %145, %146
  %151 = load ptr, ptr %142, align 8, !tbaa !44
  %152 = getelementptr inbounds nuw ptr, ptr %151, i64 %150
  %153 = load ptr, ptr %152, align 8, !tbaa !116
  %154 = icmp eq ptr %153, null
  br i1 %154, label %172, label %155

155:                                              ; preds = %149, %163
  %156 = phi ptr [ %168, %163 ], [ %153, %149 ]
  %157 = phi i64 [ %165, %163 ], [ %150, %149 ]
  %158 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %156) #17
  %159 = icmp eq i32 %158, %143
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load ptr, ptr %142, align 8, !tbaa !44
  %162 = getelementptr inbounds nuw ptr, ptr %161, i64 %157
  store ptr %1, ptr %162, align 8, !tbaa !116
  br label %178

163:                                              ; preds = %155
  %164 = and i64 %157, %146
  %165 = add i64 %164, 1
  %166 = load ptr, ptr %142, align 8, !tbaa !44
  %167 = getelementptr inbounds nuw ptr, ptr %166, i64 %165
  %168 = load ptr, ptr %167, align 8, !tbaa !116
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %155, !llvm.loop !123

170:                                              ; preds = %163
  %171 = load i64, ptr %141, align 8, !tbaa !122
  br label %172

172:                                              ; preds = %170, %149
  %173 = phi i64 [ %147, %149 ], [ %171, %170 ]
  %174 = phi i64 [ %150, %149 ], [ %165, %170 ]
  %175 = phi ptr [ %151, %149 ], [ %166, %170 ]
  %176 = getelementptr inbounds nuw ptr, ptr %175, i64 %174
  store ptr %1, ptr %176, align 8, !tbaa !116
  %177 = add i64 %173, 1
  store i64 %177, ptr %141, align 8, !tbaa !122
  br label %178

178:                                              ; preds = %94, %172, %160, %139, %75, %80, %8, %14, %50, %2
  %179 = phi i64 [ -60, %2 ], [ -64, %50 ], [ 0, %14 ], [ 0, %8 ], [ -1, %139 ], [ -64, %75 ], [ -64, %80 ], [ 0, %160 ], [ 0, %172 ], [ -1, %94 ]
  ret i64 %179
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 6) i64 @ZSTD_initDStream_usingDDict(ptr noundef captures(none) initializes((30176, 30180), (30236, 30240), (30316, 30320)) %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  store i32 0, ptr %3, align 4, !tbaa !121
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 30316
  store i32 0, ptr %4, align 4, !tbaa !26
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 1, ptr %5, align 8, !tbaa !28
  %6 = tail call i64 @ZSTD_DCtx_refDDict(ptr noundef %0, ptr noundef %1)
  %7 = icmp ult i64 %6, -119
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i64 5, i64 1
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi i64 [ %12, %8 ], [ %6, %2 ]
  ret i64 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 1, 6) i64 @ZSTD_resetDStream(ptr noundef captures(none) initializes((30176, 30180), (30236, 30240), (30316, 30320)) %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  store i32 0, ptr %2, align 4, !tbaa !121
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 30316
  store i32 0, ptr %3, align 4, !tbaa !26
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 1, ptr %4, align 8, !tbaa !28
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i64 5, i64 1
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_DCtx_setMaxWindowSize(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %4 = load i32, ptr %3, align 4, !tbaa !121
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = add i64 %1, -2147483649
  %8 = icmp ult i64 %7, -2147482625
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 30264
  store i64 %1, ptr %10, align 8, !tbaa !35
  br label %11

11:                                               ; preds = %6, %2, %9
  %12 = phi i64 [ 0, %9 ], [ -60, %2 ], [ -42, %6 ]
  ret i64 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @ZSTD_dParam_getBounds(i32 noundef %0) local_unnamed_addr #2 {
  switch i32 %0, label %4 [
    i32 100, label %5
    i32 1000, label %2
    i32 1001, label %2
    i32 1002, label %2
    i32 1003, label %2
    i32 1004, label %2
    i32 1005, label %3
  ]

2:                                                ; preds = %1, %1, %1, %1, %1
  br label %5

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %4, %3, %2
  %6 = phi i64 [ 0, %4 ], [ 4294967296, %2 ], [ 562949953422336, %3 ], [ 133143986186, %1 ]
  %7 = phi i64 [ -40, %4 ], [ 0, %2 ], [ 0, %3 ], [ 0, %1 ]
  %8 = insertvalue { i64, i64 } poison, i64 %7, 0
  %9 = insertvalue { i64, i64 } %8, i64 %6, 1
  ret { i64, i64 } %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_DCtx_setFormat(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %4 = load i32, ptr %3, align 4, !tbaa !121
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = icmp ugt i32 %1, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  store i32 %1, ptr %9, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %2, %6, %8
  %11 = phi i64 [ 0, %8 ], [ -60, %2 ], [ -42, %6 ]
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_DCtx_setParameter(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %5 = load i32, ptr %4, align 4, !tbaa !121
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %3
  switch i32 %1, label %48 [
    i32 100, label %8
    i32 1000, label %17
    i32 1001, label %21
    i32 1002, label %25
    i32 1003, label %29
    i32 1004, label %37
    i32 1005, label %41
  ]

8:                                                ; preds = %7
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i32 27, i32 %2
  %11 = add i32 %10, -32
  %12 = icmp ult i32 %11, -22
  br i1 %12, label %48, label %13

13:                                               ; preds = %8
  %14 = zext nneg i32 %10 to i64
  %15 = shl nuw nsw i64 1, %14
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30264
  store i64 %15, ptr %16, align 8, !tbaa !35
  br label %48

17:                                               ; preds = %7
  %18 = icmp ugt i32 %2, 1
  br i1 %18, label %48, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  store i32 %2, ptr %20, align 8, !tbaa !34
  br label %48

21:                                               ; preds = %7
  %22 = icmp ugt i32 %2, 1
  br i1 %22, label %48, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 30320
  store i32 %2, ptr %24, align 8, !tbaa !36
  br label %48

25:                                               ; preds = %7
  %26 = icmp ugt i32 %2, 1
  br i1 %26, label %48, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 30108
  store i32 %2, ptr %28, align 4, !tbaa !37
  br label %48

29:                                               ; preds = %7
  %30 = icmp ugt i32 %2, 1
  br i1 %30, label %48, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %33 = load i64, ptr %32, align 8, !tbaa !41
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 30224
  store i32 %2, ptr %36, align 8, !tbaa !38
  br label %48

37:                                               ; preds = %7
  %38 = icmp ugt i32 %2, 1
  br i1 %38, label %48, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 30228
  store i32 %2, ptr %40, align 4, !tbaa !39
  br label %48

41:                                               ; preds = %7
  %42 = icmp ne i32 %2, 0
  %43 = add i32 %2, -131073
  %44 = icmp ult i32 %43, -130049
  %45 = and i1 %42, %44
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 30232
  store i32 %2, ptr %47, align 8, !tbaa !40
  br label %48

48:                                               ; preds = %41, %7, %37, %31, %29, %25, %21, %17, %8, %3, %13, %19, %23, %27, %35, %39, %46
  %49 = phi i64 [ 0, %13 ], [ 0, %19 ], [ 0, %23 ], [ 0, %27 ], [ 0, %35 ], [ 0, %39 ], [ 0, %46 ], [ -60, %3 ], [ -42, %8 ], [ -42, %17 ], [ -42, %21 ], [ -42, %25 ], [ -42, %29 ], [ -40, %31 ], [ -42, %37 ], [ -40, %7 ], [ -42, %41 ]
  ret i64 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -40, 1) i64 @ZSTD_DCtx_getParameter(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #7 {
  switch i32 %1, label %30 [
    i32 100, label %4
    i32 1000, label %10
    i32 1001, label %13
    i32 1002, label %16
    i32 1003, label %19
    i32 1004, label %22
    i32 1005, label %25
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 30264
  %6 = load i64, ptr %5, align 8, !tbaa !35
  %7 = trunc i64 %6 to i32
  %8 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %7, i1 true)
  %9 = xor i32 %8, 31
  br label %28

10:                                               ; preds = %3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %12 = load i32, ptr %11, align 8, !tbaa !34
  br label %28

13:                                               ; preds = %3
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 30320
  %15 = load i32, ptr %14, align 8, !tbaa !36
  br label %28

16:                                               ; preds = %3
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 30108
  %18 = load i32, ptr %17, align 4, !tbaa !37
  br label %28

19:                                               ; preds = %3
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 30224
  %21 = load i32, ptr %20, align 8, !tbaa !38
  br label %28

22:                                               ; preds = %3
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 30228
  %24 = load i32, ptr %23, align 4, !tbaa !39
  br label %28

25:                                               ; preds = %3
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 30232
  %27 = load i32, ptr %26, align 8, !tbaa !40
  br label %28

28:                                               ; preds = %25, %22, %19, %16, %13, %10, %4
  %29 = phi i32 [ %9, %4 ], [ %12, %10 ], [ %15, %13 ], [ %18, %16 ], [ %21, %19 ], [ %24, %22 ], [ %27, %25 ]
  store i32 %29, ptr %2, align 4, !tbaa !48
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi i64 [ -40, %3 ], [ 0, %28 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_sizeof_DStream(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call i64 @ZSTD_sizeof_DDict(ptr noundef %5) #17
  %7 = add i64 %6, 95976
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 30248
  %9 = load i64, ptr %8, align 8, !tbaa !21
  %10 = add i64 %7, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 30280
  %12 = load i64, ptr %11, align 8, !tbaa !22
  %13 = add i64 %10, %12
  br label %14

14:                                               ; preds = %1, %3
  %15 = phi i64 [ %13, %3 ], [ 0, %1 ]
  ret i64 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @ZSTD_decodingBufferSize_min(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = tail call i64 @llvm.umin.i64(i64 %0, i64 131072)
  %4 = shl nuw nsw i64 %3, 1
  %5 = add i64 %0, 64
  %6 = add i64 %5, %4
  %7 = tail call i64 @llvm.umin.i64(i64 %1, i64 %6)
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @ZSTD_estimateDStreamSize(i64 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i64 @llvm.umin.i64(i64 %0, i64 131072)
  %3 = shl nuw nsw i64 %2, 1
  %4 = add i64 %0, 96040
  %5 = add i64 %4, %2
  %6 = add i64 %5, %3
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -119, 2147972905) i64 @ZSTD_estimateDStreamSize_fromFrame(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = alloca %struct.ZSTD_FrameHeader, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #17
  %4 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef readonly %0, i64 noundef %1, i32 noundef 0)
  %5 = icmp ult i64 %4, -119
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %6
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !57
  %11 = icmp ugt i64 %10, 2147483648
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = tail call i64 @llvm.umin.i64(i64 %10, i64 131072)
  %14 = shl nuw nsw i64 %13, 1
  %15 = add nuw nsw i64 %10, 96040
  %16 = add nuw nsw i64 %15, %13
  %17 = add nuw nsw i64 %16, %14
  br label %18

18:                                               ; preds = %8, %6, %2, %12
  %19 = phi i64 [ %17, %12 ], [ %4, %2 ], [ -72, %6 ], [ -16, %8 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #17
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressStream(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ZSTD_frameSizeInfo, align 8
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %2, align 8, !tbaa !125
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %8 = load i64, ptr %7, align 8, !tbaa !127
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %11 = load i64, ptr %10, align 8, !tbaa !128
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 %11
  %13 = load ptr, ptr %1, align 8, !tbaa !129
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %15 = load i64, ptr %14, align 8, !tbaa !130
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %18 = load i64, ptr %17, align 8, !tbaa !131
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 %18
  %20 = icmp ugt i64 %8, %11
  br i1 %20, label %559, label %21

21:                                               ; preds = %3
  %22 = icmp ugt i64 %15, %18
  br i1 %22, label %559, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 30328
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 30336
  %27 = load i64, ptr %26, align 8, !tbaa !50
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 30344
  %29 = load i64, ptr %28, align 8, !tbaa !50
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 30320
  %31 = load i32, ptr %30, align 8, !tbaa !36
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %23
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %35 = load i32, ptr %34, align 4, !tbaa !121
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = icmp eq ptr %25, %13
  %39 = icmp eq i64 %29, %15
  %40 = select i1 %38, i1 %39, i1 false
  %41 = icmp eq i64 %27, %18
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %559

43:                                               ; preds = %37, %23, %33
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 30296
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 30288
  %47 = ptrtoint ptr %19 to i64
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 30272
  %49 = getelementptr i8, ptr %0, i64 30280
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 29928
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 30256
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 30304
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 30312
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 95940
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 30224
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 30216
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 29956
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 30200
  %64 = ptrtoint ptr %12 to i64
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 29948
  %66 = sub nsw i64 %11, %8
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %71 = icmp eq ptr @ZSTD_trace_decompress_begin, null
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 95968
  %73 = getelementptr i8, ptr %0, i64 29996
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 29992
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 95944
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 29936
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 30264
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 30232
  %90 = getelementptr i8, ptr %0, i64 30248
  %91 = getelementptr i8, ptr %0, i64 95960
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 30240
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %95 = getelementptr i8, ptr %0, i64 30136
  %96 = getelementptr i8, ptr %0, i64 30144
  br label %97

97:                                               ; preds = %467, %43
  %98 = phi ptr [ %9, %43 ], [ %468, %467 ]
  %99 = phi ptr [ %16, %43 ], [ %469, %467 ]
  br label %100

100:                                              ; preds = %493, %97
  %101 = phi ptr [ %99, %97 ], [ %486, %493 ]
  %102 = load i32, ptr %44, align 4, !tbaa !121
  switch i32 %102, label %559 [
    i32 0, label %108
    i32 1, label %106
    i32 2, label %336
    i32 3, label %103
    i32 4, label %470
  ]

103:                                              ; preds = %100
  %104 = load i64, ptr %68, align 8, !tbaa !82
  %105 = load i32, ptr %73, align 4, !tbaa !108
  br label %397

106:                                              ; preds = %100
  %107 = load i64, ptr %53, align 8, !tbaa !132
  br label %109

108:                                              ; preds = %100
  store i32 1, ptr %44, align 4, !tbaa !121
  store i64 0, ptr %52, align 8, !tbaa !133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %46, i8 0, i64 28, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !134
  br label %109

109:                                              ; preds = %106, %108
  %110 = phi i64 [ %107, %106 ], [ 0, %108 ]
  %111 = load i32, ptr %56, align 8, !tbaa !34
  %112 = tail call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %50, ptr noundef nonnull %55, i64 noundef %110, i32 noundef %111)
  %113 = load i32, ptr %57, align 8, !tbaa !38
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %148, label %115

115:                                              ; preds = %109
  %116 = load ptr, ptr %58, align 8, !tbaa !33
  %117 = icmp eq ptr %116, null
  br i1 %117, label %148, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %59, align 8, !tbaa !100
  %120 = icmp eq ptr %119, null
  br i1 %120, label %148, label %121

121:                                              ; preds = %118
  %122 = load i32, ptr %60, align 4, !tbaa !114
  %123 = getelementptr i8, ptr %116, i64 8
  %124 = load i64, ptr %123, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 %122, ptr %5, align 4, !tbaa !48
  %125 = call i64 @ZSTD_XXH64(ptr noundef nonnull captures(none) %5, i64 noundef 4, i64 noundef 0) #20
  %126 = add i64 %124, -1
  %127 = and i64 %125, %126
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %128

128:                                              ; preds = %128, %121
  %129 = phi i64 [ %127, %121 ], [ %138, %128 ]
  %130 = load ptr, ptr %116, align 8, !tbaa !44
  %131 = getelementptr inbounds nuw ptr, ptr %130, i64 %129
  %132 = load ptr, ptr %131, align 8, !tbaa !116
  %133 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef %132) #17
  %134 = icmp eq i32 %133, %122
  %135 = icmp eq i32 %133, 0
  %136 = or i1 %134, %135
  %137 = and i64 %129, %126
  %138 = add i64 %137, 1
  br i1 %136, label %139, label %128

139:                                              ; preds = %128
  %140 = load ptr, ptr %116, align 8, !tbaa !44
  %141 = getelementptr inbounds nuw ptr, ptr %140, i64 %129
  %142 = load ptr, ptr %141, align 8, !tbaa !116
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = load ptr, ptr %61, align 8, !tbaa !5
  %146 = tail call i64 @ZSTD_freeDDict(ptr noundef %145) #17
  store i64 0, ptr %61, align 8
  %147 = load i32, ptr %60, align 4, !tbaa !114
  store i32 %147, ptr %63, align 8, !tbaa !83
  store ptr %142, ptr %59, align 8, !tbaa !100
  store i32 -1, ptr %62, align 8, !tbaa !25
  br label %148

148:                                              ; preds = %144, %139, %118, %115, %109
  %149 = icmp ult i64 %112, -119
  br i1 %149, label %150, label %559

150:                                              ; preds = %148
  %151 = icmp eq i64 %112, 0
  br i1 %151, label %180, label %152

152:                                              ; preds = %150
  %153 = load i64, ptr %53, align 8, !tbaa !132
  %154 = sub i64 %112, %153
  %155 = ptrtoint ptr %98 to i64
  %156 = sub i64 %64, %155
  %157 = icmp ugt i64 %154, %156
  br i1 %157, label %158, label %177

158:                                              ; preds = %152
  %159 = icmp eq ptr %12, %98
  br i1 %159, label %163, label %160

160:                                              ; preds = %158
  %161 = getelementptr inbounds nuw i8, ptr %55, i64 %153
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %161, ptr align 1 %98, i64 %156, i1 false)
  %162 = add i64 %153, %156
  store i64 %162, ptr %53, align 8, !tbaa !132
  br label %163

163:                                              ; preds = %160, %158
  %164 = phi i64 [ %162, %160 ], [ %153, %158 ]
  %165 = load i64, ptr %10, align 8, !tbaa !128
  store i64 %165, ptr %7, align 8, !tbaa !127
  %166 = load i32, ptr %56, align 8, !tbaa !34
  %167 = tail call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %50, ptr noundef nonnull %55, i64 noundef %164, i32 noundef %166)
  %168 = icmp ult i64 %167, -119
  br i1 %168, label %169, label %559

169:                                              ; preds = %163
  %170 = load i32, ptr %56, align 8, !tbaa !34
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %171, i64 6, i64 2
  %173 = tail call i64 @llvm.umax.i64(i64 %172, i64 %112)
  %174 = load i64, ptr %53, align 8, !tbaa !132
  %175 = sub i64 %173, %174
  %176 = add i64 %175, 3
  br label %559

177:                                              ; preds = %152
  %178 = getelementptr inbounds nuw i8, ptr %55, i64 %153
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %178, ptr align 1 %98, i64 %154, i1 false)
  store i64 %112, ptr %53, align 8, !tbaa !132
  %179 = getelementptr inbounds nuw i8, ptr %98, i64 %154
  br label %467

180:                                              ; preds = %150
  %181 = load i64, ptr %50, align 8, !tbaa !92
  %182 = icmp eq i64 %181, -1
  br i1 %182, label %203, label %183

183:                                              ; preds = %180
  %184 = load i32, ptr %65, align 4, !tbaa !135
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %203, label %186

186:                                              ; preds = %183
  %187 = ptrtoint ptr %101 to i64
  %188 = sub i64 %47, %187
  %189 = icmp ult i64 %188, %181
  br i1 %189, label %203, label %190

190:                                              ; preds = %186
  %191 = load i32, ptr %56, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %9, i64 noundef %66, i32 noundef %191)
  %192 = load i64, ptr %67, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  %193 = icmp ugt i64 %192, %66
  br i1 %193, label %203, label %194

194:                                              ; preds = %190
  %195 = tail call fastcc ptr @ZSTD_getDDict(ptr noundef nonnull %0)
  %196 = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef nonnull %0, ptr noundef %101, i64 noundef %188, ptr noundef %9, i64 noundef %192, ptr noundef null, i64 noundef 0, ptr noundef %195)
  %197 = icmp ult i64 %196, -119
  br i1 %197, label %198, label %559

198:                                              ; preds = %194
  %199 = getelementptr inbounds nuw i8, ptr %9, i64 %192
  %200 = icmp eq ptr %101, null
  %201 = getelementptr inbounds nuw i8, ptr %101, i64 %196
  %202 = select i1 %200, ptr null, ptr %201
  store i64 0, ptr %68, align 8, !tbaa !82
  br label %500

203:                                              ; preds = %190, %186, %183, %180
  %204 = load i32, ptr %30, align 8, !tbaa !36
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %216

206:                                              ; preds = %203
  %207 = load i32, ptr %65, align 4, !tbaa !135
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %216, label %209

209:                                              ; preds = %206
  %210 = load i64, ptr %50, align 8, !tbaa !92
  %211 = icmp ne i64 %210, -1
  %212 = ptrtoint ptr %101 to i64
  %213 = sub i64 %47, %212
  %214 = icmp ult i64 %213, %210
  %215 = select i1 %211, i1 %214, i1 false
  br i1 %215, label %559, label %216

216:                                              ; preds = %209, %206, %203
  %217 = load i32, ptr %62, align 8, !tbaa !25
  switch i32 %217, label %218 [
    i32 1, label %221
    i32 -1, label %222
  ]

218:                                              ; preds = %216
  %219 = load ptr, ptr %61, align 8, !tbaa !5
  %220 = tail call i64 @ZSTD_freeDDict(ptr noundef %219) #17
  store i32 0, ptr %62, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, i8 0, i64 16, i1 false)
  br label %232

221:                                              ; preds = %216
  store i32 0, ptr %62, align 8, !tbaa !25
  br label %222

222:                                              ; preds = %216, %221
  %223 = load ptr, ptr %59, align 8, !tbaa !100
  %224 = icmp eq ptr %223, null
  br i1 %224, label %232, label %225

225:                                              ; preds = %222
  %226 = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %223) #17
  %227 = tail call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %223) #17
  %228 = getelementptr inbounds nuw i8, ptr %226, i64 %227
  %229 = load ptr, ptr %69, align 8, !tbaa !23
  %230 = icmp ne ptr %229, %228
  %231 = zext i1 %230 to i32
  store i32 %231, ptr %70, align 4, !tbaa !24
  br label %232

232:                                              ; preds = %218, %225, %222
  %233 = phi i1 [ true, %218 ], [ false, %225 ], [ true, %222 ]
  %234 = phi ptr [ null, %218 ], [ %223, %225 ], [ null, %222 ]
  br i1 %71, label %237, label %235

235:                                              ; preds = %232
  %236 = tail call i64 @ZSTD_trace_decompress_begin(ptr noundef nonnull %0) #17
  br label %237

237:                                              ; preds = %235, %232
  %238 = phi i64 [ %236, %235 ], [ 0, %232 ]
  store i64 %238, ptr %72, align 8, !tbaa !81
  %239 = load i32, ptr %56, align 8, !tbaa !34
  %240 = icmp eq i32 %239, 0
  %241 = select i1 %240, i64 5, i64 1
  store i64 %241, ptr %68, align 8, !tbaa !82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %75, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %74, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %77, align 8, !tbaa !48
  store i32 0, ptr %63, align 8, !tbaa !83
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %78, align 8, !tbaa !48
  store i32 1, ptr %79, align 8, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %80, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store ptr %76, ptr %0, align 8, !tbaa !84
  store ptr %81, ptr %82, align 8, !tbaa !85
  store ptr %83, ptr %84, align 8, !tbaa !86
  store ptr %77, ptr %85, align 8, !tbaa !87
  br i1 %233, label %244, label %242

242:                                              ; preds = %237
  tail call void @ZSTD_copyDDictParameters(ptr noundef nonnull %0, ptr noundef nonnull %234) #17
  %243 = load i32, ptr %56, align 8, !tbaa !34
  br label %244

244:                                              ; preds = %242, %237
  %245 = phi i32 [ %243, %242 ], [ %239, %237 ]
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %244
  %248 = load i32, ptr %55, align 1, !tbaa !48
  %249 = and i32 %248, -16
  %250 = icmp eq i32 %249, 407710288
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = load i32, ptr %86, align 1, !tbaa !48
  %253 = zext i32 %252 to i64
  br label %258

254:                                              ; preds = %244, %247
  %255 = load i64, ptr %53, align 8, !tbaa !132
  %256 = tail call fastcc i64 @ZSTD_decodeFrameHeader(ptr noundef nonnull %0, ptr noundef nonnull %55, i64 noundef %255)
  %257 = icmp ult i64 %256, -119
  br i1 %257, label %258, label %559

258:                                              ; preds = %254, %251
  %259 = phi i64 [ %253, %251 ], [ 3, %254 ]
  %260 = phi i32 [ 7, %251 ], [ 2, %254 ]
  store i64 %259, ptr %68, align 8, !tbaa !82
  store i32 %260, ptr %73, align 4, !tbaa !108
  %261 = load i64, ptr %87, align 8, !tbaa !136
  %262 = tail call i64 @llvm.umax.i64(i64 %261, i64 1024)
  store i64 %262, ptr %87, align 8, !tbaa !136
  %263 = load i64, ptr %88, align 8, !tbaa !35
  %264 = icmp ugt i64 %262, %263
  br i1 %264, label %559, label %265

265:                                              ; preds = %258
  %266 = load i32, ptr %89, align 8, !tbaa !40
  %267 = icmp eq i32 %266, 0
  %268 = load i32, ptr %51, align 8, !tbaa !88
  br i1 %267, label %271, label %269

269:                                              ; preds = %265
  %270 = tail call i32 @llvm.umin.i32(i32 %268, i32 %266)
  store i32 %270, ptr %51, align 8, !tbaa !88
  br label %271

271:                                              ; preds = %269, %265
  %272 = phi i32 [ %270, %269 ], [ %268, %265 ]
  %273 = tail call i32 @llvm.umax.i32(i32 %272, i32 4)
  %274 = zext i32 %273 to i64
  %275 = load i32, ptr %30, align 8, !tbaa !36
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %271
  %278 = zext i32 %272 to i64
  %279 = load i64, ptr %50, align 8, !tbaa !92
  %280 = tail call i64 @llvm.umin.i64(i64 %262, i64 range(i64 0, 4294967296) %278)
  %281 = tail call i64 @llvm.umin.i64(i64 %280, i64 131072)
  %282 = shl nuw nsw i64 %281, 1
  %283 = add i64 %262, 64
  %284 = add i64 %283, %282
  %285 = tail call i64 @llvm.umin.i64(i64 %279, i64 %284)
  br label %286

286:                                              ; preds = %271, %277
  %287 = phi i64 [ %285, %277 ], [ 0, %271 ]
  %288 = load i64, ptr %90, align 8, !tbaa !21
  %289 = load i64, ptr %49, align 8, !tbaa !22
  %290 = add i64 %289, %288
  %291 = add i64 %287, %274
  %292 = mul i64 %291, 3
  %293 = icmp ult i64 %290, %292
  br i1 %293, label %297, label %294

294:                                              ; preds = %286
  %295 = load i64, ptr %91, align 8, !tbaa !27
  %296 = add i64 %295, 1
  br label %297

297:                                              ; preds = %286, %294
  %298 = phi i64 [ %296, %294 ], [ 0, %286 ]
  store i64 %298, ptr %91, align 8, !tbaa !27
  %299 = icmp ult i64 %288, %274
  br i1 %299, label %304, label %300

300:                                              ; preds = %297
  %301 = icmp ult i64 %289, %287
  %302 = icmp ugt i64 %298, 127
  %303 = select i1 %301, i1 true, i1 %302
  br i1 %303, label %304, label %335

304:                                              ; preds = %297, %300
  %305 = load i64, ptr %92, align 8, !tbaa !41
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %304
  %308 = add i64 %305, -95976
  %309 = icmp ugt i64 %291, %308
  br i1 %309, label %559, label %310

310:                                              ; preds = %307
  %311 = load ptr, ptr %93, align 8, !tbaa !42
  br label %332

312:                                              ; preds = %304
  %313 = load ptr, ptr %93, align 8, !tbaa !42
  %314 = load ptr, ptr %95, align 8
  %315 = load ptr, ptr %96, align 8
  %316 = icmp eq ptr %313, null
  br i1 %316, label %321, label %317

317:                                              ; preds = %312
  %318 = icmp eq ptr %314, null
  br i1 %318, label %320, label %319

319:                                              ; preds = %317
  tail call void %314(ptr noundef %315, ptr noundef nonnull %313) #17
  br label %321

320:                                              ; preds = %317
  tail call void @free(ptr noundef nonnull %313) #17
  br label %321

321:                                              ; preds = %312, %319, %320
  store i64 0, ptr %90, align 8, !tbaa !21
  store i64 0, ptr %49, align 8, !tbaa !22
  %322 = load ptr, ptr %94, align 8, !tbaa !137
  %323 = icmp eq ptr %322, null
  br i1 %323, label %327, label %324

324:                                              ; preds = %321
  %325 = load ptr, ptr %96, align 8
  %326 = tail call ptr %322(ptr noundef %325, i64 noundef %291) #17
  br label %329

327:                                              ; preds = %321
  %328 = tail call noalias ptr @malloc(i64 noundef %291) #19
  br label %329

329:                                              ; preds = %324, %327
  %330 = phi ptr [ %326, %324 ], [ %328, %327 ]
  store ptr %330, ptr %93, align 8, !tbaa !42
  %331 = icmp eq ptr %330, null
  br i1 %331, label %559, label %332

332:                                              ; preds = %310, %329
  %333 = phi ptr [ %311, %310 ], [ %330, %329 ]
  store i64 %274, ptr %90, align 8, !tbaa !21
  %334 = getelementptr inbounds nuw i8, ptr %333, i64 %274
  store ptr %334, ptr %48, align 8, !tbaa !138
  store i64 %287, ptr %49, align 8, !tbaa !22
  br label %335

335:                                              ; preds = %300, %332
  store i32 2, ptr %44, align 4, !tbaa !121
  br label %336

336:                                              ; preds = %100, %335
  %337 = ptrtoint ptr %98 to i64
  %338 = sub i64 %64, %337
  %339 = load i32, ptr %73, align 4, !tbaa !108
  %340 = add i32 %339, -3
  %341 = icmp ult i32 %340, 2
  br i1 %341, label %344, label %342

342:                                              ; preds = %336
  %343 = load i64, ptr %68, align 8, !tbaa !82
  br label %351

344:                                              ; preds = %336
  %345 = load i32, ptr %78, align 8, !tbaa !109
  %346 = icmp eq i32 %345, 0
  %347 = load i64, ptr %68, align 8, !tbaa !82
  br i1 %346, label %348, label %351

348:                                              ; preds = %344
  %349 = tail call i64 @llvm.umin.i64(i64 %338, i64 %347)
  %350 = tail call i64 @llvm.umax.i64(i64 %349, i64 1)
  br label %354

351:                                              ; preds = %342, %344
  %352 = phi i64 [ %343, %342 ], [ %347, %344 ]
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %500, label %354

354:                                              ; preds = %348, %351
  %355 = phi i64 [ %347, %348 ], [ %352, %351 ]
  %356 = phi i64 [ %350, %348 ], [ %352, %351 ]
  %357 = icmp ult i64 %338, %356
  br i1 %357, label %394, label %358

358:                                              ; preds = %354
  %359 = icmp eq i32 %339, 7
  %360 = load i32, ptr %30, align 8, !tbaa !36
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %382

362:                                              ; preds = %358
  br i1 %359, label %363, label %365

363:                                              ; preds = %362
  %364 = load i64, ptr %46, align 8, !tbaa !139
  br label %369

365:                                              ; preds = %362
  %366 = load i64, ptr %49, align 8, !tbaa !22
  %367 = load i64, ptr %46, align 8, !tbaa !139
  %368 = sub i64 %366, %367
  br label %369

369:                                              ; preds = %365, %363
  %370 = phi i64 [ %367, %365 ], [ %364, %363 ]
  %371 = phi i64 [ %368, %365 ], [ 0, %363 ]
  %372 = load ptr, ptr %48, align 8, !tbaa !138
  %373 = getelementptr inbounds nuw i8, ptr %372, i64 %370
  %374 = tail call i64 @ZSTD_decompressContinue(ptr noundef nonnull %0, ptr noundef %373, i64 noundef %371, ptr noundef %98, i64 noundef %356)
  %375 = icmp ult i64 %374, -119
  br i1 %375, label %376, label %559

376:                                              ; preds = %369
  %377 = icmp ne i64 %374, 0
  %378 = or i1 %359, %377
  br i1 %378, label %379, label %390

379:                                              ; preds = %376
  %380 = load i64, ptr %46, align 8, !tbaa !139
  %381 = add i64 %380, %374
  store i64 %381, ptr %45, align 8, !tbaa !140
  br label %390

382:                                              ; preds = %358
  %383 = ptrtoint ptr %101 to i64
  %384 = sub i64 %47, %383
  %385 = select i1 %359, i64 0, i64 %384
  %386 = tail call i64 @ZSTD_decompressContinue(ptr noundef nonnull %0, ptr noundef %101, i64 noundef %385, ptr noundef %98, i64 noundef %356)
  %387 = icmp ult i64 %386, -119
  br i1 %387, label %388, label %559

388:                                              ; preds = %382
  %389 = getelementptr inbounds nuw i8, ptr %101, i64 %386
  br label %390

390:                                              ; preds = %388, %379, %376
  %391 = phi ptr [ %101, %379 ], [ %101, %376 ], [ %389, %388 ]
  %392 = phi i32 [ 4, %379 ], [ 2, %376 ], [ 2, %388 ]
  store i32 %392, ptr %44, align 4, !tbaa !121
  %393 = getelementptr inbounds nuw i8, ptr %98, i64 %356
  br label %467

394:                                              ; preds = %354
  %395 = icmp eq ptr %98, %12
  br i1 %395, label %503, label %396

396:                                              ; preds = %394
  store i32 3, ptr %44, align 4, !tbaa !121
  br label %397

397:                                              ; preds = %103, %396
  %398 = phi i32 [ %105, %103 ], [ %339, %396 ]
  %399 = phi i64 [ %104, %103 ], [ %355, %396 ]
  %400 = load i64, ptr %52, align 8, !tbaa !133
  %401 = sub i64 %399, %400
  %402 = icmp eq i32 %398, 7
  br i1 %402, label %416, label %403

403:                                              ; preds = %397
  %404 = load i64, ptr %90, align 8, !tbaa !21
  %405 = sub i64 %404, %400
  %406 = icmp ugt i64 %401, %405
  br i1 %406, label %559, label %407

407:                                              ; preds = %403
  %408 = ptrtoint ptr %98 to i64
  %409 = sub i64 %64, %408
  %410 = tail call i64 @llvm.umin.i64(i64 %401, i64 %409)
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %426, label %412

412:                                              ; preds = %407
  %413 = load ptr, ptr %93, align 8, !tbaa !42
  %414 = getelementptr inbounds nuw i8, ptr %413, i64 %400
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %414, ptr readonly align 1 %98, i64 %410, i1 false)
  %415 = load i64, ptr %52, align 8, !tbaa !133
  br label %421

416:                                              ; preds = %397
  %417 = ptrtoint ptr %98 to i64
  %418 = sub i64 %64, %417
  %419 = tail call i64 @llvm.umin.i64(i64 %401, i64 %418)
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %426, label %421

421:                                              ; preds = %412, %416
  %422 = phi i64 [ %415, %412 ], [ %400, %416 ]
  %423 = phi i64 [ %410, %412 ], [ %419, %416 ]
  %424 = getelementptr inbounds nuw i8, ptr %98, i64 %423
  %425 = add i64 %422, %423
  store i64 %425, ptr %52, align 8, !tbaa !133
  br label %426

426:                                              ; preds = %407, %421, %416
  %427 = phi i64 [ %423, %421 ], [ 0, %416 ], [ 0, %407 ]
  %428 = phi ptr [ %424, %421 ], [ %98, %416 ], [ %98, %407 ]
  %429 = icmp ult i64 %427, %401
  br i1 %429, label %503, label %430

430:                                              ; preds = %426
  store i64 0, ptr %52, align 8, !tbaa !133
  %431 = load ptr, ptr %93, align 8, !tbaa !42
  %432 = load i32, ptr %73, align 4, !tbaa !108
  %433 = icmp eq i32 %432, 7
  %434 = load i32, ptr %30, align 8, !tbaa !36
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %456

436:                                              ; preds = %430
  br i1 %433, label %437, label %439

437:                                              ; preds = %436
  %438 = load i64, ptr %46, align 8, !tbaa !139
  br label %443

439:                                              ; preds = %436
  %440 = load i64, ptr %49, align 8, !tbaa !22
  %441 = load i64, ptr %46, align 8, !tbaa !139
  %442 = sub i64 %440, %441
  br label %443

443:                                              ; preds = %439, %437
  %444 = phi i64 [ %441, %439 ], [ %438, %437 ]
  %445 = phi i64 [ %442, %439 ], [ 0, %437 ]
  %446 = load ptr, ptr %48, align 8, !tbaa !138
  %447 = getelementptr inbounds nuw i8, ptr %446, i64 %444
  %448 = tail call i64 @ZSTD_decompressContinue(ptr noundef nonnull %0, ptr noundef %447, i64 noundef %445, ptr noundef %431, i64 noundef %399)
  %449 = icmp ult i64 %448, -119
  br i1 %449, label %450, label %559

450:                                              ; preds = %443
  %451 = icmp ne i64 %448, 0
  %452 = or i1 %433, %451
  br i1 %452, label %453, label %464

453:                                              ; preds = %450
  %454 = load i64, ptr %46, align 8, !tbaa !139
  %455 = add i64 %454, %448
  store i64 %455, ptr %45, align 8, !tbaa !140
  br label %464

456:                                              ; preds = %430
  %457 = ptrtoint ptr %101 to i64
  %458 = sub i64 %47, %457
  %459 = select i1 %433, i64 0, i64 %458
  %460 = tail call i64 @ZSTD_decompressContinue(ptr noundef nonnull %0, ptr noundef %101, i64 noundef %459, ptr noundef %431, i64 noundef %399)
  %461 = icmp ult i64 %460, -119
  br i1 %461, label %462, label %559

462:                                              ; preds = %456
  %463 = getelementptr inbounds nuw i8, ptr %101, i64 %460
  br label %464

464:                                              ; preds = %450, %453, %462
  %465 = phi ptr [ %101, %453 ], [ %101, %450 ], [ %463, %462 ]
  %466 = phi i32 [ 4, %453 ], [ 2, %450 ], [ 2, %462 ]
  store i32 %466, ptr %44, align 4, !tbaa !121
  br label %467

467:                                              ; preds = %464, %177, %390
  %468 = phi ptr [ %393, %390 ], [ %179, %177 ], [ %428, %464 ]
  %469 = phi ptr [ %391, %390 ], [ %101, %177 ], [ %465, %464 ]
  br label %97, !llvm.loop !141

470:                                              ; preds = %100
  %471 = load i64, ptr %45, align 8, !tbaa !140
  %472 = load i64, ptr %46, align 8, !tbaa !139
  %473 = sub i64 %471, %472
  %474 = ptrtoint ptr %101 to i64
  %475 = sub i64 %47, %474
  %476 = tail call i64 @llvm.umin.i64(i64 %475, i64 %473)
  %477 = icmp eq i64 %476, 0
  br i1 %477, label %482, label %478

478:                                              ; preds = %470
  %479 = load ptr, ptr %48, align 8, !tbaa !138
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 %472
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %101, ptr readonly align 1 %480, i64 %476, i1 false)
  %481 = load i64, ptr %46, align 8, !tbaa !139
  br label %482

482:                                              ; preds = %470, %478
  %483 = phi i64 [ %472, %470 ], [ %481, %478 ]
  %484 = icmp eq ptr %101, null
  %485 = getelementptr inbounds nuw i8, ptr %101, i64 %476
  %486 = select i1 %484, ptr null, ptr %485
  %487 = add i64 %483, %476
  store i64 %487, ptr %46, align 8, !tbaa !139
  %488 = icmp ugt i64 %473, %475
  br i1 %488, label %503, label %489

489:                                              ; preds = %482
  store i32 2, ptr %44, align 4, !tbaa !121
  %490 = load i64, ptr %49, align 8, !tbaa !22
  %491 = load i64, ptr %50, align 8, !tbaa !92
  %492 = icmp ult i64 %490, %491
  br i1 %492, label %494, label %493

493:                                              ; preds = %489, %494, %499
  br label %100, !llvm.loop !141

494:                                              ; preds = %489
  %495 = load i32, ptr %51, align 8, !tbaa !88
  %496 = zext i32 %495 to i64
  %497 = add i64 %487, %496
  %498 = icmp ugt i64 %497, %490
  br i1 %498, label %499, label %493

499:                                              ; preds = %494
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  br label %493

500:                                              ; preds = %351, %198
  %501 = phi ptr [ %202, %198 ], [ %101, %351 ]
  %502 = phi ptr [ %199, %198 ], [ %98, %351 ]
  store i32 0, ptr %44, align 4, !tbaa !121
  br label %503

503:                                              ; preds = %482, %394, %426, %500
  %504 = phi ptr [ %501, %500 ], [ %486, %482 ], [ %101, %394 ], [ %101, %426 ]
  %505 = phi ptr [ %502, %500 ], [ %98, %482 ], [ %428, %426 ], [ %12, %394 ]
  %506 = load ptr, ptr %2, align 8, !tbaa !125
  %507 = ptrtoint ptr %505 to i64
  %508 = ptrtoint ptr %506 to i64
  %509 = sub i64 %507, %508
  store i64 %509, ptr %7, align 8, !tbaa !127
  %510 = load ptr, ptr %1, align 8, !tbaa !129
  %511 = ptrtoint ptr %504 to i64
  %512 = ptrtoint ptr %510 to i64
  %513 = sub i64 %511, %512
  store i64 %513, ptr %14, align 8, !tbaa !130
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !134
  %514 = icmp eq ptr %505, %9
  %515 = icmp eq ptr %504, %16
  %516 = select i1 %514, i1 %515, i1 false
  %517 = getelementptr inbounds nuw i8, ptr %0, i64 30316
  br i1 %516, label %518, label %530

518:                                              ; preds = %503
  %519 = load i32, ptr %517, align 4, !tbaa !26
  %520 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %519, i32 1), !nosanitize !142
  %521 = extractvalue { i32, i1 } %520, 1, !nosanitize !142
  br i1 %521, label %522, label %523, !prof !143, !nosanitize !142

522:                                              ; preds = %518
  tail call void @llvm.ubsantrap(i8 0) #22, !nosanitize !142
  unreachable, !nosanitize !142

523:                                              ; preds = %518
  %524 = extractvalue { i32, i1 } %520, 0, !nosanitize !142
  store i32 %524, ptr %517, align 4, !tbaa !26
  %525 = icmp sgt i32 %524, 15
  br i1 %525, label %526, label %531

526:                                              ; preds = %523
  %527 = icmp samesign eq i64 %15, %18
  br i1 %527, label %559, label %528

528:                                              ; preds = %526
  %529 = icmp samesign eq i64 %8, %11
  br i1 %529, label %559, label %531

530:                                              ; preds = %503
  store i32 0, ptr %517, align 4, !tbaa !26
  br label %531

531:                                              ; preds = %523, %528, %530
  %532 = load i64, ptr %68, align 8, !tbaa !82
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %534, label %552

534:                                              ; preds = %531
  %535 = load i64, ptr %45, align 8, !tbaa !140
  %536 = load i64, ptr %46, align 8, !tbaa !139
  %537 = icmp eq i64 %535, %536
  %538 = load i32, ptr %54, align 8, !tbaa !144
  %539 = icmp eq i32 %538, 0
  br i1 %537, label %540, label %548

540:                                              ; preds = %534
  br i1 %539, label %559, label %541

541:                                              ; preds = %540
  %542 = load i64, ptr %7, align 8, !tbaa !127
  %543 = load i64, ptr %10, align 8, !tbaa !128
  %544 = icmp ult i64 %542, %543
  br i1 %544, label %546, label %545

545:                                              ; preds = %541
  store i32 2, ptr %44, align 4, !tbaa !121
  br label %559

546:                                              ; preds = %541
  %547 = add nuw i64 %542, 1
  store i64 %547, ptr %7, align 8, !tbaa !127
  br label %559

548:                                              ; preds = %534
  br i1 %539, label %549, label %559

549:                                              ; preds = %548
  %550 = load i64, ptr %7, align 8, !tbaa !127
  %551 = add i64 %550, -1
  store i64 %551, ptr %7, align 8, !tbaa !127
  store i32 1, ptr %54, align 8, !tbaa !144
  br label %559

552:                                              ; preds = %531
  %553 = load i32, ptr %73, align 4, !tbaa !108
  %554 = icmp eq i32 %553, 3
  %555 = select i1 %554, i64 3, i64 0
  %556 = load i64, ptr %52, align 8, !tbaa !133
  %557 = sub i64 %532, %556
  %558 = add i64 %557, %555
  br label %559

559:                                              ; preds = %100, %456, %443, %382, %369, %209, %403, %148, %329, %307, %258, %254, %194, %163, %169, %37, %545, %552, %546, %540, %549, %548, %528, %526, %21, %3
  %560 = phi i64 [ -72, %3 ], [ -70, %21 ], [ -80, %526 ], [ -82, %528 ], [ %558, %552 ], [ 1, %545 ], [ 0, %546 ], [ 0, %540 ], [ 1, %549 ], [ 1, %548 ], [ -104, %37 ], [ %167, %163 ], [ %176, %169 ], [ %196, %194 ], [ -1, %100 ], [ %256, %254 ], [ -16, %258 ], [ -64, %307 ], [ -64, %329 ], [ %112, %148 ], [ -20, %403 ], [ -70, %209 ], [ %386, %382 ], [ %374, %369 ], [ %460, %456 ], [ %448, %443 ]
  ret i64 %560
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressStream_simpleArgs(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef captures(none) %3, ptr noundef %4, i64 noundef %5, ptr noundef captures(none) %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ZSTD_outBuffer_s, align 8
  %9 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #17
  store ptr %1, ptr %8, align 8, !tbaa !129
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %2, ptr %10, align 8, !tbaa !131
  %11 = load i64, ptr %3, align 8, !tbaa !50
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %11, ptr %12, align 8, !tbaa !130
  store ptr %4, ptr %9, align 8, !tbaa !125
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %5, ptr %13, align 8, !tbaa !128
  %14 = load i64, ptr %6, align 8, !tbaa !50
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %14, ptr %15, align 8, !tbaa !127
  %16 = call i64 @ZSTD_decompressStream(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %17 = load i64, ptr %12, align 8, !tbaa !130
  store i64 %17, ptr %3, align 8, !tbaa !50
  %18 = load i64, ptr %15, align 8, !tbaa !127
  store i64 %18, ptr %6, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #17
  ret i64 %16
}

declare i64 @ZSTD_freeDDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

declare i32 @ZSTD_getErrorCode(i64 noundef) local_unnamed_addr #1

declare i32 @ZSTD_XXH64_reset(ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

declare extern_weak void @ZSTD_trace_decompress_end(i64 noundef, ptr noundef) #1

declare i32 @ZSTD_getDictID_fromDDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64(ptr noundef captures(none), i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind memory(none) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !19, i64 30184}
!6 = !{!"ZSTD_DCtx_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !11, i64 32, !8, i64 27324, !7, i64 29888, !7, i64 29896, !7, i64 29904, !7, i64 29912, !12, i64 29920, !13, i64 29928, !12, i64 29976, !12, i64 29984, !15, i64 29992, !15, i64 29996, !15, i64 30000, !15, i64 30004, !16, i64 30008, !12, i64 30096, !15, i64 30104, !15, i64 30108, !15, i64 30112, !17, i64 30120, !18, i64 30128, !12, i64 30152, !12, i64 30160, !12, i64 30168, !15, i64 30176, !15, i64 30180, !19, i64 30184, !19, i64 30192, !15, i64 30200, !15, i64 30204, !15, i64 30208, !7, i64 30216, !15, i64 30224, !15, i64 30228, !15, i64 30232, !15, i64 30236, !17, i64 30240, !12, i64 30248, !12, i64 30256, !12, i64 30264, !17, i64 30272, !12, i64 30280, !12, i64 30288, !12, i64 30296, !12, i64 30304, !15, i64 30312, !15, i64 30316, !15, i64 30320, !20, i64 30328, !17, i64 30352, !17, i64 30360, !15, i64 30368, !8, i64 30372, !8, i64 95940, !12, i64 95960, !14, i64 95968}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"p1 int", !7, i64 0}
!11 = !{!"", !8, i64 0, !8, i64 4104, !8, i64 6160, !8, i64 10264, !8, i64 26652, !8, i64 26664}
!12 = !{!"long", !8, i64 0}
!13 = !{!"", !14, i64 0, !14, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40}
!14 = !{!"long long", !8, i64 0}
!15 = !{!"int", !8, i64 0}
!16 = !{!"XXH64_state_s", !12, i64 0, !8, i64 8, !8, i64 40, !15, i64 72, !15, i64 76, !12, i64 80}
!17 = !{!"p1 omnipotent char", !7, i64 0}
!18 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!19 = !{!"p1 _ZTS12ZSTD_DDict_s", !7, i64 0}
!20 = !{!"ZSTD_outBuffer_s", !7, i64 0, !12, i64 8, !12, i64 16}
!21 = !{!6, !12, i64 30248}
!22 = !{!6, !12, i64 30280}
!23 = !{!6, !7, i64 29912}
!24 = !{!6, !15, i64 30204}
!25 = !{!6, !15, i64 30208}
!26 = !{!6, !15, i64 30316}
!27 = !{!6, !12, i64 95960}
!28 = !{!6, !15, i64 30176}
!29 = !{i64 1370634}
!30 = !{i64 1370732}
!31 = !{i64 1370846}
!32 = !{!6, !15, i64 30180}
!33 = !{!6, !7, i64 30216}
!34 = !{!6, !15, i64 30104}
!35 = !{!6, !12, i64 30264}
!36 = !{!6, !15, i64 30320}
!37 = !{!6, !15, i64 30108}
!38 = !{!6, !15, i64 30224}
!39 = !{!6, !15, i64 30228}
!40 = !{!6, !15, i64 30232}
!41 = !{!6, !12, i64 30168}
!42 = !{!6, !17, i64 30240}
!43 = !{!7, !7, i64 0}
!44 = !{!45, !46, i64 0}
!45 = !{!"", !46, i64 0, !12, i64 8, !12, i64 16}
!46 = !{!"p2 _ZTS12ZSTD_DDict_s", !47, i64 0}
!47 = !{!"any p2 pointer", !7, i64 0}
!48 = !{!15, !15, i64 0}
!49 = !{!8, !8, i64 0}
!50 = !{!12, !12, i64 0}
!51 = !{!13, !15, i64 20}
!52 = !{!13, !15, i64 28}
!53 = !{!13, !15, i64 24}
!54 = !{!13, !14, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"short", !8, i64 0}
!57 = !{!13, !14, i64 8}
!58 = !{!13, !15, i64 16}
!59 = !{!13, !15, i64 32}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!63, !12, i64 8}
!63 = !{!"", !12, i64 0, !12, i64 8, !14, i64 16}
!64 = !{!63, !14, i64 16}
!65 = distinct !{!65, !61}
!66 = !{!14, !14, i64 0}
!67 = !{!68}
!68 = distinct !{!68, !69, !"ZSTD_errorFrameSizeInfo: argument 0"}
!69 = distinct !{!69, !"ZSTD_errorFrameSizeInfo"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"ZSTD_errorFrameSizeInfo: argument 0"}
!72 = distinct !{!72, !"ZSTD_errorFrameSizeInfo"}
!73 = !{!74, !15, i64 4}
!74 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8}
!75 = !{!76}
!76 = distinct !{!76, !77, !"ZSTD_errorFrameSizeInfo: argument 0"}
!77 = distinct !{!77, !"ZSTD_errorFrameSizeInfo"}
!78 = !{!63, !12, i64 0}
!79 = distinct !{!79, !61}
!80 = !{!6, !7, i64 29888}
!81 = !{!6, !14, i64 95968}
!82 = !{!6, !12, i64 29920}
!83 = !{!6, !15, i64 30200}
!84 = !{!6, !7, i64 0}
!85 = !{!6, !7, i64 8}
!86 = !{!6, !7, i64 16}
!87 = !{!6, !10, i64 24}
!88 = !{!6, !15, i64 29944}
!89 = !{!74, !15, i64 0}
!90 = !{!74, !15, i64 8}
!91 = !{!6, !15, i64 30112}
!92 = !{!6, !14, i64 29928}
!93 = !{!6, !15, i64 29960}
!94 = !{!95, !15, i64 0}
!95 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !12, i64 16, !12, i64 24, !12, i64 32, !96, i64 40, !97, i64 48, !98, i64 56}
!96 = !{!"p1 _ZTS18ZSTD_CCtx_params_s", !7, i64 0}
!97 = !{!"p1 _ZTS11ZSTD_CCtx_s", !7, i64 0}
!98 = !{!"p1 _ZTS11ZSTD_DCtx_s", !7, i64 0}
!99 = !{!95, !15, i64 4}
!100 = !{!6, !19, i64 30192}
!101 = !{!95, !15, i64 8}
!102 = !{!95, !12, i64 16}
!103 = !{!95, !15, i64 12}
!104 = !{!95, !12, i64 24}
!105 = !{!95, !12, i64 32}
!106 = !{!95, !98, i64 56}
!107 = distinct !{!107, !61}
!108 = !{!6, !15, i64 29996}
!109 = !{!6, !15, i64 29992}
!110 = !{!6, !12, i64 29976}
!111 = !{!6, !12, i64 30096}
!112 = !{!6, !12, i64 30160}
!113 = !{!6, !12, i64 29984}
!114 = !{!6, !15, i64 29956}
!115 = !{!45, !12, i64 8}
!116 = !{!19, !19, i64 0}
!117 = !{!6, !15, i64 30004}
!118 = !{!6, !15, i64 30000}
!119 = !{!6, !7, i64 29896}
!120 = !{!6, !7, i64 29904}
!121 = !{!6, !15, i64 30236}
!122 = !{!45, !12, i64 16}
!123 = distinct !{!123, !61}
!124 = distinct !{!124, !61}
!125 = !{!126, !7, i64 0}
!126 = !{!"ZSTD_inBuffer_s", !7, i64 0, !12, i64 8, !12, i64 16}
!127 = !{!126, !12, i64 16}
!128 = !{!126, !12, i64 8}
!129 = !{!20, !7, i64 0}
!130 = !{!20, !12, i64 16}
!131 = !{!20, !12, i64 8}
!132 = !{!6, !12, i64 30304}
!133 = !{!6, !12, i64 30256}
!134 = !{i64 0, i64 8, !43, i64 8, i64 8, !50, i64 16, i64 8, !50}
!135 = !{!6, !15, i64 29948}
!136 = !{!6, !14, i64 29936}
!137 = !{!18, !7, i64 0}
!138 = !{!6, !17, i64 30272}
!139 = !{!6, !12, i64 30288}
!140 = !{!6, !12, i64 30296}
!141 = distinct !{!141, !61}
!142 = !{}
!143 = !{!"branch_weights", i32 1, i32 1048575}
!144 = !{!6, !15, i64 30312}
