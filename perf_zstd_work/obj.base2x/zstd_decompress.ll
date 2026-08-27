; ModuleID = '<stdin>'
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

14:                                               ; preds = %3, %1
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

45:                                               ; preds = %32, %2
  %46 = phi ptr [ %0, %32 ], [ null, %2 ]
  ret ptr %46
}

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

56:                                               ; preds = %45, %15, %1
  %57 = phi ptr [ null, %1 ], [ %16, %45 ], [ null, %15 ]
  ret ptr %57
}

; Function Attrs: nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @ZSTD_createDCtx() local_unnamed_addr #4 {
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

39:                                               ; preds = %28, %0
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

23:                                               ; preds = %22, %21, %7
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

37:                                               ; preds = %36, %35
  store ptr null, ptr %24, align 8, !tbaa !33
  br label %38

38:                                               ; preds = %37, %23
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_copyDCtx(ptr noundef writeonly captures(none) initializes((0, 30240)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #6 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(30240) %0, ptr noundef nonnull align 8 dereferenceable(30240) %1, i64 30240, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ZSTD_isFrame(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
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
define dso_local range(i32 0, 2) i32 @ZSTD_isSkippableFrame(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
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
define dso_local i64 @ZSTD_frameHeaderSize(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
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
  %15 = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_did_fieldSize, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !50
  %17 = zext nneg i32 %9 to i64
  %18 = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_fcs_fieldSize, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !50
  %20 = icmp ult i8 %6, 64
  %21 = and i1 %20, %11
  %22 = zext i1 %21 to i64
  %23 = add i64 %16, 5
  %24 = add i64 %23, %19
  %25 = add i64 %24, %13
  %26 = add i64 %25, %22
  br label %27

27:                                               ; preds = %4, %2
  %28 = phi i64 [ %26, %4 ], [ -72, %2 ]
  ret i64 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_getFrameHeader_advanced(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %3, 0
  %7 = select i1 %6, i64 5, i64 1
  %8 = icmp ne i64 %2, 0
  %9 = icmp eq ptr %1, null
  %10 = and i1 %9, %8
  br i1 %10, label %148, label %11

11:                                               ; preds = %4
  %12 = icmp ult i64 %2, %7
  br i1 %12, label %13, label %23

13:                                               ; preds = %11
  %14 = icmp ne i32 %3, 1
  %15 = and i1 %8, %14
  br i1 %15, label %16, label %148

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 -47205080, ptr %5, align 4, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr align 1 %1, i64 %2, i1 false)
  %.0..0..0..0..0..0..0..0. = load i32, ptr %5, align 4, !tbaa !48
  %17 = icmp eq i32 %.0..0..0..0..0..0..0..0., -47205080
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  store i32 407710288, ptr %5, align 4, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr align 1 %1, i64 %2, i1 false)
  %.0..0..0..0..0..0..0..0.1 = load i32, ptr %5, align 4, !tbaa !48
  %19 = and i32 %.0..0..0..0..0..0..0..0.1, -16
  %20 = icmp eq i32 %19, 407710288
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %148

22:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %148

23:                                               ; preds = %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %24 = icmp eq i32 %3, 1
  br i1 %24, label %45, label %25

25:                                               ; preds = %23
  %26 = load i32, ptr %1, align 1, !tbaa !48
  %27 = icmp eq i32 %26, -47205080
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %1, i64 %7
  %30 = getelementptr i8, ptr %29, i64 -1
  br label %45

31:                                               ; preds = %25
  %32 = and i32 %26, -16
  %33 = icmp eq i32 %32, 407710288
  br i1 %33, label %34, label %148

34:                                               ; preds = %31
  %35 = icmp ult i64 %2, 8
  br i1 %35, label %148, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %37, align 4, !tbaa !51
  %38 = load i32, ptr %1, align 1, !tbaa !48
  %39 = add i32 %38, -407710288
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %39, ptr %40, align 4, !tbaa !52
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 8, ptr %41, align 8, !tbaa !53
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %43 = load i32, ptr %42, align 1, !tbaa !48
  %44 = zext i32 %43 to i64
  store i64 %44, ptr %0, align 8, !tbaa !54
  br label %148

45:                                               ; preds = %28, %23
  %46 = phi ptr [ %30, %28 ], [ %1, %23 ]
  %47 = phi i64 [ %7, %28 ], [ 1, %23 ]
  %48 = load i8, ptr %46, align 1, !tbaa !49
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 3
  %51 = lshr i32 %49, 6
  %52 = and i32 %49, 32
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i64
  %56 = zext nneg i32 %50 to i64
  %57 = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_did_fieldSize, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !50
  %59 = zext nneg i32 %51 to i64
  %60 = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_fcs_fieldSize, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !50
  %62 = icmp ult i8 %48, 64
  %63 = and i1 %62, %53
  %64 = zext i1 %63 to i64
  %65 = add i64 %58, %47
  %66 = add i64 %65, %61
  %67 = add i64 %66, %55
  %68 = add i64 %67, %64
  %69 = icmp ult i64 %2, %68
  br i1 %69, label %148, label %70

70:                                               ; preds = %45
  %71 = trunc i64 %68 to i32
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %71, ptr %72, align 8, !tbaa !53
  %73 = getelementptr i8, ptr %1, i64 %7
  %74 = getelementptr i8, ptr %73, i64 -1
  %75 = load i8, ptr %74, align 1, !tbaa !49
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 3
  %78 = lshr i32 %76, 2
  %79 = and i32 %78, 1
  %80 = lshr i32 %76, 6
  %81 = and i32 %76, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %148

83:                                               ; preds = %70
  %84 = and i32 %76, 32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load i8, ptr %73, align 1, !tbaa !49
  %88 = icmp ult i8 %87, -80
  br i1 %88, label %89, label %148

89:                                               ; preds = %86
  %90 = zext i8 %87 to i32
  %91 = lshr i32 %90, 3
  %92 = add nuw nsw i32 %91, 10
  %93 = add nuw nsw i64 %7, 1
  %94 = zext nneg i32 %92 to i64
  %95 = shl nuw nsw i64 1, %94
  %96 = lshr i64 %95, 3
  %97 = and i32 %90, 7
  %98 = zext nneg i32 %97 to i64
  %99 = mul nuw nsw i64 %96, %98
  %100 = add nuw nsw i64 %99, %95
  br label %101

101:                                              ; preds = %89, %83
  %102 = phi i64 [ %7, %83 ], [ %93, %89 ]
  %103 = phi i64 [ 0, %83 ], [ %100, %89 ]
  switch i32 %77, label %default.unreachable12 [
    i32 3, label %114
    i32 1, label %104
    i32 2, label %109
    i32 0, label %118
  ]

104:                                              ; preds = %101
  %105 = getelementptr inbounds nuw i8, ptr %1, i64 %102
  %106 = load i8, ptr %105, align 1, !tbaa !49
  %107 = zext i8 %106 to i32
  %108 = add nuw nsw i64 %102, 1
  br label %118

109:                                              ; preds = %101
  %110 = getelementptr inbounds nuw i8, ptr %1, i64 %102
  %111 = load i16, ptr %110, align 1, !tbaa !55
  %112 = zext i16 %111 to i32
  %113 = add nuw nsw i64 %102, 2
  br label %118

114:                                              ; preds = %101
  %115 = getelementptr inbounds nuw i8, ptr %1, i64 %102
  %116 = load i32, ptr %115, align 1, !tbaa !48
  %117 = add nuw nsw i64 %102, 4
  br label %118

default.unreachable12:                            ; preds = %118, %101
  unreachable

118:                                              ; preds = %114, %109, %104, %101
  %119 = phi i64 [ %102, %101 ], [ %117, %114 ], [ %108, %104 ], [ %113, %109 ]
  %120 = phi i32 [ %77, %101 ], [ %116, %114 ], [ %107, %104 ], [ %112, %109 ]
  switch i32 %80, label %default.unreachable12 [
    i32 3, label %135
    i32 1, label %126
    i32 2, label %131
    i32 0, label %121
  ]

121:                                              ; preds = %118
  br i1 %85, label %138, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds nuw i8, ptr %1, i64 %119
  %124 = load i8, ptr %123, align 1, !tbaa !49
  %125 = zext i8 %124 to i64
  br label %138

126:                                              ; preds = %118
  %127 = getelementptr inbounds nuw i8, ptr %1, i64 %119
  %128 = load i16, ptr %127, align 1, !tbaa !55
  %129 = zext i16 %128 to i64
  %130 = add nuw nsw i64 %129, 256
  br label %138

131:                                              ; preds = %118
  %132 = getelementptr inbounds nuw i8, ptr %1, i64 %119
  %133 = load i32, ptr %132, align 1, !tbaa !48
  %134 = zext i32 %133 to i64
  br label %138

135:                                              ; preds = %118
  %136 = getelementptr inbounds nuw i8, ptr %1, i64 %119
  %137 = load i64, ptr %136, align 1, !tbaa !50
  br label %138

138:                                              ; preds = %135, %131, %126, %122, %121
  %139 = phi i64 [ %125, %122 ], [ -1, %121 ], [ %137, %135 ], [ %130, %126 ], [ %134, %131 ]
  %140 = select i1 %85, i64 %103, i64 %139
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %141, align 4, !tbaa !51
  store i64 %139, ptr %0, align 8, !tbaa !54
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %140, ptr %142, align 8, !tbaa !57
  %143 = tail call i64 @llvm.umin.i64(i64 %140, i64 131072)
  %144 = trunc nuw nsw i64 %143 to i32
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %144, ptr %145, align 8, !tbaa !58
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %120, ptr %146, align 4, !tbaa !52
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %79, ptr %147, align 8, !tbaa !59
  br label %148

148:                                              ; preds = %138, %86, %70, %45, %36, %34, %31, %22, %21, %13, %4
  %149 = phi i64 [ -10, %22 ], [ 0, %36 ], [ -1, %4 ], [ %7, %21 ], [ %7, %13 ], [ 8, %34 ], [ -10, %31 ], [ %68, %45 ], [ 0, %138 ], [ -16, %86 ], [ -14, %70 ]
  ret i64 %149
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #9

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_getFrameHeader(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = tail call i64 @ZSTD_getFrameHeader_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret i64 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_getFrameContentSize(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = alloca %struct.ZSTD_FrameHeader, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %4 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef readonly %0, i64 noundef %1, i32 noundef 0)
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = load i64, ptr %3, align 8
  %10 = select i1 %8, i64 0, i64 %9
  %11 = select i1 %5, i64 %10, i64 -2
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -80, 4294967288) i64 @ZSTD_readSkippableFrame(ptr noundef writeonly captures(address_is_null) %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #6 {
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

34:                                               ; preds = %32, %30, %22, %20, %7, %5
  %35 = phi i64 [ -72, %5 ], [ -14, %7 ], [ -72, %20 ], [ -70, %22 ], [ %17, %32 ], [ %17, %30 ]
  ret i64 %35
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_findDecompressedSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_frameSizeInfo, align 8
  %4 = alloca %struct.ZSTD_FrameHeader, align 8
  %5 = icmp ult i64 %1, 5
  br i1 %5, label %.loopexit9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %9

9:                                                ; preds = %41, %6
  %10 = phi ptr [ %0, %6 ], [ %44, %41 ]
  %11 = phi i64 [ %1, %6 ], [ %45, %41 ]
  %12 = phi i64 [ 0, %6 ], [ %42, %41 ]
  %13 = load i32, ptr %10, align 1, !tbaa !48
  %14 = and i32 %13, -16
  %15 = icmp eq i32 %14, 407710288
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = icmp ult i64 %11, 8
  br i1 %17, label %.loopexit, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %20 = load i32, ptr %19, align 1, !tbaa !48
  %21 = icmp ugt i32 %20, -9
  %22 = zext i32 %20 to i64
  %23 = add nuw nsw i64 %22, 8
  %24 = icmp ugt i64 %23, %11
  %25 = select i1 %21, i1 true, i1 %24
  br i1 %25, label %.loopexit, label %41, !llvm.loop !60

26:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %27 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %4, ptr noundef nonnull readonly %10, i64 noundef %11, i32 noundef 0)
  %28 = icmp eq i64 %27, 0
  %29 = load i32, ptr %7, align 4
  %30 = icmp eq i32 %29, 1
  %31 = load i64, ptr %4, align 8
  %32 = select i1 %30, i64 0, i64 %31
  %33 = select i1 %28, i64 %32, i64 -2
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %34 = icmp ugt i64 %33, -3
  br i1 %34, label %.loopexit, label %35

35:                                               ; preds = %26
  %36 = add i64 %33, %12
  %37 = icmp ult i64 %36, %12
  br i1 %37, label %.loopexit, label %38

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %10, i64 noundef %11, i32 noundef 0)
  %39 = load i64, ptr %8, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %40 = icmp ult i64 %39, -119
  br i1 %40, label %41, label %.loopexit

41:                                               ; preds = %38, %18
  %42 = phi i64 [ %36, %38 ], [ %12, %18 ]
  %43 = phi i64 [ %39, %38 ], [ %23, %18 ]
  %44 = getelementptr inbounds nuw i8, ptr %10, i64 %43
  %45 = sub i64 %11, %43
  %46 = icmp ult i64 %45, 5
  br i1 %46, label %.loopexit9, label %9

.loopexit9:                                       ; preds = %41, %2
  %47 = phi i64 [ 0, %2 ], [ %42, %41 ]
  %48 = phi i64 [ %1, %2 ], [ %45, %41 ]
  %49 = icmp eq i64 %48, 0
  %50 = select i1 %49, i64 %47, i64 -2
  br label %.loopexit

.loopexit:                                        ; preds = %38, %35, %26, %18, %16, %.loopexit9
  %51 = phi i64 [ %50, %.loopexit9 ], [ %33, %26 ], [ -2, %18 ], [ -2, %16 ], [ -2, %35 ], [ -2, %38 ]
  ret i64 %51
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_findFrameCompressedSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_frameSizeInfo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, i64 noundef %1, i32 noundef 0)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_getDecompressedSize(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = alloca %struct.ZSTD_FrameHeader, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %4 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef readonly %0, i64 noundef %1, i32 noundef 0)
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = load i64, ptr %3, align 8
  %10 = select i1 %8, i64 0, i64 %9
  %11 = select i1 %5, i64 %10, i64 -2
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %9, i64 noundef %7, i32 noundef 0)
  %12 = load i64, ptr %4, align 8, !tbaa !62
  %13 = load i64, ptr %5, align 8, !tbaa !64
  %14 = icmp ult i64 %12, -119
  %15 = icmp ne i64 %13, -2
  %16 = select i1 %14, i1 %15, i1 false
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 %12
  %18 = sub i64 %7, %12
  %19 = add i64 %13, %8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %16, label %6, label %20, !llvm.loop !65

20:                                               ; preds = %11, %6
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
  br label %91

25:                                               ; preds = %10, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %26 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  %27 = icmp ult i64 %26, -119
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %26, ptr %29, align 8, !tbaa !62, !alias.scope !67
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %30, align 8, !tbaa !64, !alias.scope !67
  br label %90

31:                                               ; preds = %25
  %32 = icmp eq i64 %26, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -72, ptr %34, align 8, !tbaa !62, !alias.scope !70
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %35, align 8, !tbaa !64, !alias.scope !70
  br label %90

36:                                               ; preds = %31
  %37 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %38 = load i32, ptr %37, align 8, !tbaa !53
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 %39
  %41 = sub i64 %2, %39
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %42 = call i64 @ZSTD_getcBlockSize(ptr noundef %40, i64 noundef %41, ptr noundef nonnull %6) #17
  %43 = icmp ult i64 %42, -119
  br i1 %43, label %44, label %.loopexit

44:                                               ; preds = %36
  %45 = getelementptr inbounds nuw i8, ptr %6, i64 4
  br label %46

46:                                               ; preds = %62, %44
  %47 = phi i64 [ %42, %44 ], [ %63, %62 ]
  %48 = phi i64 [ 0, %44 ], [ %56, %62 ]
  %49 = phi i64 [ %41, %44 ], [ %55, %62 ]
  %50 = phi ptr [ %40, %44 ], [ %54, %62 ]
  %51 = add nuw i64 %47, 3
  %52 = icmp ugt i64 %51, %49
  br i1 %52, label %.loopexit, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds nuw i8, ptr %50, i64 %51
  %55 = sub nuw i64 %49, %51
  %56 = add i64 %48, 1
  %57 = load i32, ptr %45, align 4, !tbaa !73
  %58 = icmp eq i32 %57, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %58, label %62, label %65

.loopexit:                                        ; preds = %62, %46, %36
  %59 = phi i64 [ %42, %36 ], [ %63, %62 ], [ -72, %46 ]
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %59, ptr %60, align 8, !tbaa !62
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %61, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %90

62:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %63 = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %54, i64 noundef %55, ptr noundef nonnull %6) #17
  %64 = icmp ult i64 %63, -119
  br i1 %64, label %46, label %.loopexit

65:                                               ; preds = %53
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %67 = load i32, ptr %66, align 8, !tbaa !59
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = icmp ult i64 %55, 4
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -72, ptr %72, align 8, !tbaa !62, !alias.scope !75
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %73, align 8, !tbaa !64, !alias.scope !75
  br label %90

74:                                               ; preds = %69
  %75 = getelementptr inbounds nuw i8, ptr %54, i64 4
  br label %76

76:                                               ; preds = %74, %65
  %77 = phi ptr [ %75, %74 ], [ %54, %65 ]
  %78 = ptrtoint ptr %77 to i64
  %79 = ptrtoint ptr %1 to i64
  %80 = sub i64 %78, %79
  %81 = load i64, ptr %5, align 8, !tbaa !54
  %82 = icmp eq i64 %81, -1
  %83 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %84 = load i32, ptr %83, align 8
  %85 = zext i32 %84 to i64
  %86 = mul i64 %56, %85
  %87 = select i1 %82, i64 %86, i64 %81
  store i64 %56, ptr %0, align 8, !tbaa !50
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %80, ptr %88, align 8, !tbaa !50
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %87, ptr %89, align 8, !tbaa !66
  br label %90

90:                                               ; preds = %76, %71, %.loopexit, %33, %28
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %91

91:                                               ; preds = %90, %14
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

13:                                               ; preds = %46, %6
  %14 = phi ptr [ %0, %6 ], [ %49, %46 ]
  %15 = phi i64 [ %1, %6 ], [ %50, %46 ]
  %16 = phi i32 [ 0, %6 ], [ %48, %46 ]
  %17 = phi i64 [ 0, %6 ], [ %47, %46 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %14, i64 noundef %15, i32 noundef 0)
  %18 = load i64, ptr %7, align 8, !tbaa !62
  %19 = load i64, ptr %8, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
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

44:                                               ; preds = %22, %13
  %45 = phi i64 [ -20, %22 ], [ %20, %13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %55

46:                                               ; preds = %42, %29
  %47 = phi i64 [ %39, %29 ], [ %43, %42 ]
  %48 = phi i32 [ %41, %29 ], [ %16, %42 ]
  %49 = getelementptr inbounds nuw i8, ptr %14, i64 %18
  %50 = sub i64 %15, %18
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %13, !llvm.loop !79

52:                                               ; preds = %46
  %53 = zext i32 %48 to i64
  %54 = add i64 %47, %53
  br label %55

55:                                               ; preds = %52, %44, %2
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
  br i1 %22, label %.loopexit39, label %23

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
  %37 = getelementptr i8, ptr %0, <4 x i64> <i64 32, i64 6192, i64 4136, i64 10296>
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 30232
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %40 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 30112
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 30008
  %43 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 29928
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 29960
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 30108
  %47 = icmp ne ptr @ZSTD_trace_decompress_end, null
  %48 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %49 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %51 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %52 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %53 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %54 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %55 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 30000
  %58 = icmp ne ptr %17, null
  %59 = icmp ne i64 %16, 0
  %60 = and i1 %59, %58
  %61 = icmp ult i64 %16, 8
  %62 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %65 = getelementptr inbounds nuw i8, ptr %17, i64 %16
  br label %66

66:                                               ; preds = %305, %23
  %67 = phi i32 [ %19, %23 ], [ %308, %305 ]
  %68 = phi i64 [ %21, %23 ], [ %310, %305 ]
  %69 = phi i1 [ %20, %23 ], [ %309, %305 ]
  %70 = phi ptr [ %1, %23 ], [ %306, %305 ]
  %71 = phi i64 [ %2, %23 ], [ %307, %305 ]
  %72 = phi i1 [ false, %23 ], [ true, %305 ]
  %73 = phi i64 [ %4, %23 ], [ %298, %305 ]
  %74 = phi ptr [ %3, %23 ], [ %297, %305 ]
  %75 = freeze i1 %69
  br i1 %75, label %.preheader, label %.loopexit37

.preheader:                                       ; preds = %66, %95
  %76 = phi i64 [ %97, %95 ], [ %73, %66 ]
  %77 = phi ptr [ %96, %95 ], [ %74, %66 ]
  %78 = icmp ugt i64 %76, 3
  br i1 %78, label %79, label %.loopexit37

79:                                               ; preds = %.preheader
  %80 = load i32, ptr %77, align 1, !tbaa !48
  %81 = and i32 %80, -16
  %82 = icmp eq i32 %81, 407710288
  br i1 %82, label %83, label %.loopexit37

83:                                               ; preds = %79
  %84 = icmp ult i64 %76, 8
  br i1 %84, label %ZSTD_decompressBegin_usingDict.exit, label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds nuw i8, ptr %77, i64 4
  %87 = load i32, ptr %86, align 1, !tbaa !48
  %88 = icmp ugt i32 %87, -9
  br i1 %88, label %ZSTD_decompressBegin_usingDict.exit, label %89

89:                                               ; preds = %85
  %90 = zext i32 %87 to i64
  %91 = add nuw nsw i64 %90, 8
  %92 = icmp ugt i64 %91, %76
  %93 = select i1 %92, i64 -72, i64 %91
  %94 = icmp ult i64 %93, -119
  br i1 %94, label %95, label %ZSTD_decompressBegin_usingDict.exit

95:                                               ; preds = %89
  %96 = getelementptr inbounds nuw i8, ptr %77, i64 %93
  %97 = sub i64 %76, %93
  %98 = icmp ult i64 %97, %68
  br i1 %98, label %.loopexit39, label %.preheader

.loopexit37:                                      ; preds = %79, %.preheader, %66
  %99 = phi ptr [ %74, %66 ], [ %77, %.preheader ], [ %77, %79 ]
  %100 = phi i64 [ %73, %66 ], [ %76, %.preheader ], [ %76, %79 ]
  br i1 %11, label %115, label %101

101:                                              ; preds = %.loopexit37
  %102 = call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %7) #17
  %103 = call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %7) #17
  %104 = getelementptr inbounds nuw i8, ptr %102, i64 %103
  %105 = load ptr, ptr %24, align 8, !tbaa !23
  %106 = icmp ne ptr %105, %104
  %107 = zext i1 %106 to i32
  store i32 %107, ptr %25, align 4, !tbaa !24
  br i1 %26, label %110, label %108

108:                                              ; preds = %101
  %109 = call i64 @ZSTD_trace_decompress_begin(ptr noundef nonnull %0) #17
  br label %110

110:                                              ; preds = %108, %101
  %111 = phi i64 [ %109, %108 ], [ 0, %101 ]
  store i64 %111, ptr %27, align 8, !tbaa !81
  %112 = load i32, ptr %18, align 8, !tbaa !34
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i64 5, i64 1
  store i64 %114, ptr %28, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %32, align 8, !tbaa !48
  store i32 0, ptr %33, align 8, !tbaa !83
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %34, align 8, !tbaa !48
  store i32 1, ptr %35, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %36, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store <4 x ptr> %37, ptr %0, align 8, !tbaa !43
  call void @ZSTD_copyDDictParameters(ptr noundef nonnull %0, ptr noundef nonnull %7) #17
  br label %ZSTD_decompressBegin_usingDict.exit.thread

115:                                              ; preds = %.loopexit37
  br i1 %26, label %118, label %116

116:                                              ; preds = %115
  %117 = call i64 @ZSTD_trace_decompress_begin(ptr noundef nonnull %0) #17
  %.pre = load i32, ptr %18, align 8, !tbaa !34
  br label %118

118:                                              ; preds = %116, %115
  %119 = phi i32 [ %.pre, %116 ], [ %67, %115 ]
  %120 = phi i64 [ %117, %116 ], [ 0, %115 ]
  store i64 %120, ptr %27, align 8, !tbaa !81
  %121 = icmp eq i32 %119, 0
  %122 = select i1 %121, i64 5, i64 1
  store i64 %122, ptr %28, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %32, align 8, !tbaa !48
  store i32 0, ptr %33, align 8, !tbaa !83
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %34, align 8, !tbaa !48
  store i32 1, ptr %35, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %36, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store <4 x ptr> %37, ptr %0, align 8, !tbaa !43
  br i1 %60, label %123, label %ZSTD_decompressBegin_usingDict.exit.thread

123:                                              ; preds = %118
  br i1 %61, label %136, label %124

124:                                              ; preds = %123
  %125 = load i32, ptr %17, align 1, !tbaa !48
  %126 = icmp eq i32 %125, -332356553
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load i32, ptr %62, align 1, !tbaa !48
  store i32 %128, ptr %33, align 8, !tbaa !83
  %129 = call i64 @ZSTD_loadDEntropy(ptr noundef nonnull %31, ptr noundef nonnull %17, i64 noundef range(i64 1, 0) %16)
  %130 = icmp ult i64 %129, -119
  br i1 %130, label %131, label %ZSTD_decompressBegin_usingDict.exit

131:                                              ; preds = %127
  %132 = getelementptr inbounds nuw i8, ptr %17, i64 %129
  store i32 1, ptr %56, align 4, !tbaa !84
  store i32 1, ptr %57, align 8, !tbaa !85
  %133 = load ptr, ptr %30, align 8, !tbaa !80
  %134 = load ptr, ptr %63, align 8, !tbaa !86
  %135 = ptrtoint ptr %134 to i64
  br label %136

136:                                              ; preds = %131, %124, %123
  %137 = phi i64 [ %135, %131 ], [ 0, %123 ], [ 0, %124 ]
  %138 = phi ptr [ %133, %131 ], [ null, %123 ], [ null, %124 ]
  %139 = phi ptr [ %132, %131 ], [ %17, %123 ], [ %17, %124 ]
  store ptr %138, ptr %24, align 8, !tbaa !23
  %140 = ptrtoint ptr %138 to i64
  %141 = sub i64 %137, %140
  %142 = getelementptr inbounds i8, ptr %139, i64 %141
  store ptr %142, ptr %64, align 8, !tbaa !87
  store ptr %139, ptr %63, align 8, !tbaa !86
  store ptr %65, ptr %30, align 8, !tbaa !80
  br label %ZSTD_decompressBegin_usingDict.exit.thread

ZSTD_decompressBegin_usingDict.exit.thread:       ; preds = %136, %118, %110
  call void @ZSTD_checkContinuity(ptr noundef nonnull %0, ptr noundef %70, i64 noundef %71) #17
  %143 = getelementptr inbounds nuw i8, ptr %70, i64 %71
  %144 = load i32, ptr %18, align 8, !tbaa !34
  %145 = icmp eq i32 %144, 0
  %146 = select i1 %145, i64 9, i64 5
  %147 = icmp ult i64 %100, %146
  br i1 %147, label %296, label %148

148:                                              ; preds = %ZSTD_decompressBegin_usingDict.exit.thread
  %149 = select i1 %145, i64 5, i64 1
  %150 = getelementptr i8, ptr %99, i64 %149
  %151 = getelementptr i8, ptr %150, i64 -1
  %152 = load i8, ptr %151, align 1, !tbaa !49
  %153 = zext i8 %152 to i32
  %154 = and i32 %153, 3
  %155 = lshr i32 %153, 6
  %156 = and i32 %153, 32
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i64
  %160 = zext nneg i32 %154 to i64
  %161 = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_did_fieldSize, i64 %160
  %162 = load i64, ptr %161, align 8, !tbaa !50
  %163 = zext nneg i32 %155 to i64
  %164 = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_fcs_fieldSize, i64 %163
  %165 = load i64, ptr %164, align 8, !tbaa !50
  %166 = icmp ult i8 %152, 64
  %167 = and i1 %166, %157
  %168 = zext i1 %167 to i64
  %169 = add i64 %162, %149
  %170 = add i64 %169, %165
  %171 = add i64 %170, %159
  %172 = add i64 %171, %168
  %173 = icmp ult i64 %172, -119
  br i1 %173, label %174, label %296

174:                                              ; preds = %148
  %175 = add nuw i64 %172, 3
  %176 = icmp ult i64 %100, %175
  br i1 %176, label %296, label %177

177:                                              ; preds = %174
  %178 = call fastcc i64 @ZSTD_decodeFrameHeader(ptr noundef nonnull %0, ptr noundef nonnull %99, i64 noundef %172)
  %179 = icmp ult i64 %178, -119
  br i1 %179, label %180, label %296

180:                                              ; preds = %177
  %181 = getelementptr inbounds nuw i8, ptr %99, i64 %172
  %182 = sub i64 %100, %172
  %183 = load i32, ptr %38, align 8, !tbaa !40
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %180
  %186 = load i32, ptr %39, align 8, !tbaa !88
  %187 = call i32 @llvm.umin.i32(i32 %186, i32 %183)
  store i32 %187, ptr %39, align 8, !tbaa !88
  br label %188

188:                                              ; preds = %185, %180
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %189 = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %181, i64 noundef %182, ptr noundef nonnull %10) #17
  %190 = icmp ult i64 %189, -119
  br i1 %190, label %191, label %.loopexit

191:                                              ; preds = %188
  %192 = ptrtoint ptr %143 to i64
  br label %193

193:                                              ; preds = %249, %191
  %194 = phi i64 [ %189, %191 ], [ %250, %249 ]
  %195 = phi ptr [ %181, %191 ], [ %244, %249 ]
  %196 = phi ptr [ %70, %191 ], [ %243, %249 ]
  %197 = phi i64 [ %182, %191 ], [ %245, %249 ]
  %198 = getelementptr inbounds nuw i8, ptr %195, i64 3
  %199 = add i64 %197, -3
  %200 = icmp ugt i64 %194, %199
  br i1 %200, label %.loopexit, label %201

201:                                              ; preds = %193
  %202 = icmp uge ptr %198, %196
  %203 = icmp ult ptr %198, %143
  %204 = select i1 %202, i1 %203, i1 false
  %205 = ptrtoint ptr %198 to i64
  %206 = ptrtoint ptr %196 to i64
  %207 = sub i64 %205, %206
  %208 = getelementptr inbounds i8, ptr %196, i64 %207
  %209 = select i1 %204, ptr %208, ptr %143
  %210 = load i32, ptr %10, align 4, !tbaa !89
  switch i32 %210, label %.loopexit [
    i32 2, label %231
    i32 0, label %211
    i32 1, label %219
  ]

211:                                              ; preds = %201
  %212 = sub i64 %192, %206
  %213 = icmp ugt i64 %194, %212
  br i1 %213, label %.loopexit, label %214

214:                                              ; preds = %211
  %215 = icmp eq ptr %196, null
  br i1 %215, label %216, label %218

216:                                              ; preds = %214
  %217 = icmp eq i64 %194, 0
  br i1 %217, label %236, label %.loopexit

218:                                              ; preds = %214
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %196, ptr nonnull readonly align 1 %198, i64 %194, i1 false)
  br label %236

219:                                              ; preds = %201
  %220 = ptrtoint ptr %209 to i64
  %221 = sub i64 %220, %206
  %222 = load i8, ptr %198, align 1, !tbaa !49
  %223 = load i32, ptr %40, align 4, !tbaa !90
  %224 = zext i32 %223 to i64
  %225 = icmp ult i64 %221, %224
  br i1 %225, label %.loopexit, label %226

226:                                              ; preds = %219
  %227 = icmp eq ptr %196, null
  br i1 %227, label %228, label %230

228:                                              ; preds = %226
  %229 = icmp eq i32 %223, 0
  br i1 %229, label %236, label %.loopexit

230:                                              ; preds = %226
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %196, i8 %222, i64 %224, i1 false)
  br label %236

231:                                              ; preds = %201
  %232 = ptrtoint ptr %209 to i64
  %233 = sub i64 %232, %206
  %234 = call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %196, i64 noundef %233, ptr noundef nonnull %198, i64 noundef %194, i32 noundef 0) #17
  %235 = icmp ult i64 %234, -119
  br i1 %235, label %236, label %.loopexit

236:                                              ; preds = %231, %230, %228, %218, %216
  %237 = phi i64 [ %224, %230 ], [ %234, %231 ], [ %194, %218 ], [ 0, %216 ], [ 0, %228 ]
  %238 = load i32, ptr %41, align 8, !tbaa !91
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %236
  %241 = call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %42, ptr noundef captures(none) %196, i64 noundef %237) #17
  br label %242

242:                                              ; preds = %240, %236
  %243 = getelementptr inbounds nuw i8, ptr %196, i64 %237
  %244 = getelementptr inbounds nuw i8, ptr %198, i64 %194
  %245 = sub i64 %199, %194
  %246 = load i32, ptr %43, align 4, !tbaa !73
  %247 = icmp eq i32 %246, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %247, label %249, label %252

.loopexit:                                        ; preds = %249, %231, %228, %219, %216, %211, %201, %193, %188
  %248 = phi i64 [ %189, %188 ], [ -70, %219 ], [ -70, %211 ], [ -20, %201 ], [ -72, %193 ], [ %250, %249 ], [ %234, %231 ], [ -74, %216 ], [ -74, %228 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %296

249:                                              ; preds = %242
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %250 = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %244, i64 noundef %245, ptr noundef nonnull %10) #17
  %251 = icmp ult i64 %250, -119
  br i1 %251, label %193, label %.loopexit

252:                                              ; preds = %242
  %253 = load i64, ptr %44, align 8, !tbaa !92
  %254 = icmp eq i64 %253, -1
  %255 = ptrtoint ptr %243 to i64
  %256 = ptrtoint ptr %70 to i64
  %257 = sub i64 %255, %256
  %258 = icmp eq i64 %257, %253
  %259 = select i1 %254, i1 true, i1 %258
  br i1 %259, label %260, label %296

260:                                              ; preds = %252
  %261 = load i32, ptr %45, align 8, !tbaa !93
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %276, label %263

263:                                              ; preds = %260
  %264 = icmp ult i64 %245, 4
  br i1 %264, label %296, label %265

265:                                              ; preds = %263
  %266 = load i32, ptr %46, align 4, !tbaa !37
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %265
  %269 = call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(none) %42) #20
  %270 = trunc i64 %269 to i32
  %271 = load i32, ptr %244, align 1, !tbaa !48
  %272 = icmp eq i32 %271, %270
  br i1 %272, label %273, label %296

273:                                              ; preds = %268, %265
  %274 = getelementptr inbounds nuw i8, ptr %244, i64 4
  %275 = add i64 %245, -4
  br label %276

276:                                              ; preds = %273, %260
  %277 = phi i64 [ %275, %273 ], [ %245, %260 ]
  %278 = phi ptr [ %274, %273 ], [ %244, %260 ]
  %279 = ptrtoint ptr %278 to i64
  %280 = ptrtoint ptr %99 to i64
  %281 = sub i64 %279, %280
  %282 = load i64, ptr %27, align 8, !tbaa !81
  %283 = icmp ne i64 %282, 0
  %284 = and i1 %47, %283
  br i1 %284, label %285, label %296

285:                                              ; preds = %276
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %48, i8 0, i64 48, i1 false)
  store i32 10600, ptr %9, align 8, !tbaa !94
  store i32 0, ptr %49, align 4, !tbaa !99
  %286 = load ptr, ptr %50, align 8, !tbaa !100
  %287 = icmp eq ptr %286, null
  br i1 %287, label %294, label %288

288:                                              ; preds = %285
  %289 = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %286) #17
  store i32 %289, ptr %48, align 8, !tbaa !101
  %290 = load ptr, ptr %50, align 8, !tbaa !100
  %291 = call i64 @ZSTD_DDict_dictSize(ptr noundef %290) #17
  store i64 %291, ptr %51, align 8, !tbaa !102
  %292 = load i32, ptr %25, align 4, !tbaa !24
  store i32 %292, ptr %52, align 4, !tbaa !103
  %293 = load i64, ptr %27, align 8, !tbaa !81
  br label %294

294:                                              ; preds = %288, %285
  %295 = phi i64 [ %293, %288 ], [ %282, %285 ]
  store i64 %257, ptr %53, align 8, !tbaa !104
  store i64 %281, ptr %54, align 8, !tbaa !105
  store ptr %0, ptr %55, align 8, !tbaa !106
  call void @ZSTD_trace_decompress_end(i64 noundef %295, ptr noundef nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %296

296:                                              ; preds = %294, %276, %268, %263, %252, %.loopexit, %177, %174, %148, %ZSTD_decompressBegin_usingDict.exit.thread
  %297 = phi ptr [ %99, %ZSTD_decompressBegin_usingDict.exit.thread ], [ %99, %174 ], [ %99, %.loopexit ], [ %99, %263 ], [ %99, %268 ], [ %99, %252 ], [ %99, %177 ], [ %99, %148 ], [ %278, %294 ], [ %278, %276 ]
  %298 = phi i64 [ %100, %ZSTD_decompressBegin_usingDict.exit.thread ], [ %100, %174 ], [ %100, %.loopexit ], [ %100, %263 ], [ %100, %268 ], [ %100, %252 ], [ %100, %177 ], [ %100, %148 ], [ %277, %294 ], [ %277, %276 ]
  %299 = phi i64 [ -72, %ZSTD_decompressBegin_usingDict.exit.thread ], [ -72, %174 ], [ %248, %.loopexit ], [ -22, %263 ], [ -22, %268 ], [ -20, %252 ], [ %178, %177 ], [ %172, %148 ], [ %257, %294 ], [ %257, %276 ]
  %300 = call i32 @ZSTD_getErrorCode(i64 noundef %299) #17
  %301 = icmp eq i32 %300, 10
  %302 = and i1 %72, %301
  br i1 %302, label %ZSTD_decompressBegin_usingDict.exit, label %303

303:                                              ; preds = %296
  %304 = icmp ult i64 %299, -119
  br i1 %304, label %305, label %ZSTD_decompressBegin_usingDict.exit

305:                                              ; preds = %303
  %306 = getelementptr inbounds nuw i8, ptr %70, i64 %299
  %307 = sub i64 %71, %299
  %308 = load i32, ptr %18, align 8, !tbaa !34
  %309 = icmp eq i32 %308, 0
  %310 = select i1 %309, i64 5, i64 1
  %311 = icmp ult i64 %298, %310
  br i1 %311, label %.loopexit39, label %66, !llvm.loop !107

.loopexit39:                                      ; preds = %305, %95, %15
  %312 = phi ptr [ %1, %15 ], [ %70, %95 ], [ %306, %305 ]
  %313 = phi i64 [ %4, %15 ], [ %97, %95 ], [ %298, %305 ]
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %ZSTD_decompressBegin_usingDict.exit

315:                                              ; preds = %.loopexit39
  %316 = ptrtoint ptr %312 to i64
  %317 = ptrtoint ptr %1 to i64
  %318 = sub i64 %316, %317
  br label %ZSTD_decompressBegin_usingDict.exit

ZSTD_decompressBegin_usingDict.exit:              ; preds = %303, %296, %127, %89, %85, %83, %315, %.loopexit39
  %319 = phi i64 [ %318, %315 ], [ -72, %.loopexit39 ], [ %93, %89 ], [ -14, %85 ], [ -72, %83 ], [ -72, %296 ], [ %299, %303 ], [ -30, %127 ]
  ret i64 %319
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

18:                                               ; preds = %15, %12, %8
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

46:                                               ; preds = %32, %4
  %47 = phi i64 [ %44, %32 ], [ -64, %4 ]
  ret i64 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_nextSrcSizeToDecompress(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %3 = load i64, ptr %2, align 8, !tbaa !82
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 6) i32 @ZSTD_nextInputType(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 29996
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = add i32 %3, -2
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.ZSTD_nextInputType, i64 %7
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

24:                                               ; preds = %21, %15, %12
  %25 = phi i64 [ %14, %12 ], [ %23, %21 ], [ %20, %15 ]
  %26 = icmp eq i64 %4, %25
  br i1 %26, label %27, label %252

27:                                               ; preds = %24
  tail call void @ZSTD_checkContinuity(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #17
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %29 = load i64, ptr %28, align 8, !tbaa !110
  %30 = add i64 %29, %4
  store i64 %30, ptr %28, align 8, !tbaa !110
  %31 = load i32, ptr %8, align 4, !tbaa !108
  switch i32 %31, label %252 [
    i32 0, label %32
    i32 1, label %79
    i32 2, label %89
    i32 4, label %123
    i32 3, label %123
    i32 5, label %202
    i32 6, label %242
    i32 7, label %250
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
  br label %252

44:                                               ; preds = %36, %32
  %45 = phi i64 [ 5, %36 ], [ 1, %32 ]
  %46 = icmp ult i64 %4, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 30096
  store i64 -72, ptr %48, align 8, !tbaa !111
  br label %252

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
  %61 = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_did_fieldSize, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !50
  %63 = zext nneg i32 %55 to i64
  %64 = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_fcs_fieldSize, i64 %63
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
  br i1 %74, label %75, label %252

75:                                               ; preds = %49
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 95940
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %76, ptr nonnull align 1 %3, i64 %4, i1 false)
  %77 = sub i64 %72, %4
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %77, ptr %78, align 8, !tbaa !82
  store i32 1, ptr %8, align 4, !tbaa !108
  br label %252

79:                                               ; preds = %27
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 95940
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 30096
  %82 = load i64, ptr %81, align 8, !tbaa !111
  %83 = sub i64 %82, %4
  %84 = getelementptr inbounds nuw i8, ptr %80, i64 %83
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %84, ptr align 1 %3, i64 %4, i1 false)
  %85 = tail call fastcc i64 @ZSTD_decodeFrameHeader(ptr noundef nonnull %0, ptr noundef nonnull %80, i64 noundef %82)
  %86 = icmp ult i64 %85, -119
  br i1 %86, label %87, label %252

87:                                               ; preds = %79
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 3, ptr %88, align 8, !tbaa !82
  store i32 2, ptr %8, align 4, !tbaa !108
  br label %252

89:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
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

119:                                              ; preds = %118, %117, %116, %109
  %120 = phi i32 [ 2, %118 ], [ 0, %117 ], [ 5, %116 ], [ %110, %109 ]
  store i32 %120, ptr %8, align 4, !tbaa !108
  br label %121

121:                                              ; preds = %119, %92, %89
  %122 = phi i64 [ %90, %89 ], [ -20, %92 ], [ 0, %119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %252

123:                                              ; preds = %27, %27
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 29992
  %125 = load i32, ptr %124, align 8, !tbaa !109
  switch i32 %125, label %252 [
    i32 2, label %126
    i32 0, label %128
    i32 1, label %140
  ]

126:                                              ; preds = %123
  %127 = tail call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1) #17
  br label %152

128:                                              ; preds = %123
  %129 = icmp ugt i64 %4, %2
  br i1 %129, label %252, label %130

130:                                              ; preds = %128
  %131 = icmp eq ptr %1, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %130
  %133 = icmp eq i64 %4, 0
  br i1 %133, label %136, label %252

134:                                              ; preds = %130
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr readonly align 1 %3, i64 %4, i1 false)
  %135 = icmp ult i64 %4, -119
  br i1 %135, label %136, label %252

136:                                              ; preds = %134, %132
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %138 = load i64, ptr %137, align 8, !tbaa !82
  %139 = sub i64 %138, %4
  store i64 %139, ptr %137, align 8, !tbaa !82
  br label %156

140:                                              ; preds = %123
  %141 = load i8, ptr %3, align 1, !tbaa !49
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 30160
  %143 = load i64, ptr %142, align 8, !tbaa !112
  %144 = icmp ugt i64 %143, %2
  br i1 %144, label %.thread, label %145

145:                                              ; preds = %140
  %146 = icmp eq ptr %1, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %145
  %148 = icmp eq i64 %143, 0
  br i1 %148, label %.thread16, label %.thread

149:                                              ; preds = %145
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 %141, i64 %143, i1 false)
  br label %152

.thread16:                                        ; preds = %147
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 0, ptr %150, align 8, !tbaa !82
  br label %163

.thread:                                          ; preds = %147, %140
  %.ph = phi i64 [ -74, %147 ], [ -70, %140 ]
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 0, ptr %151, align 8, !tbaa !82
  br label %252

152:                                              ; preds = %149, %126
  %153 = phi i64 [ %127, %126 ], [ %143, %149 ]
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 0, ptr %154, align 8, !tbaa !82
  %155 = icmp ult i64 %153, -119
  br i1 %155, label %156, label %252

156:                                              ; preds = %152, %136
  %157 = phi i64 [ %4, %136 ], [ %153, %152 ]
  %158 = phi i64 [ %139, %136 ], [ 0, %152 ]
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %160 = load i32, ptr %159, align 8, !tbaa !88
  %161 = zext i32 %160 to i64
  %162 = icmp ugt i64 %157, %161
  br i1 %162, label %252, label %163

163:                                              ; preds = %156, %.thread16
  %164 = phi i64 [ 0, %.thread16 ], [ %158, %156 ]
  %165 = phi i64 [ 0, %.thread16 ], [ %157, %156 ]
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 29928
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 29984
  %168 = load i64, ptr %167, align 8, !tbaa !113
  %169 = add i64 %168, %165
  store i64 %169, ptr %167, align 8, !tbaa !113
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 30112
  %171 = load i32, ptr %170, align 8, !tbaa !91
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %163
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 30008
  %175 = tail call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %174, ptr noundef captures(none) %1, i64 noundef %165) #17
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %177 = load i64, ptr %176, align 8, !tbaa !82
  br label %178

178:                                              ; preds = %173, %163
  %179 = phi i64 [ %177, %173 ], [ %164, %163 ]
  %180 = getelementptr inbounds nuw i8, ptr %1, i64 %165
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 29888
  store ptr %180, ptr %181, align 8, !tbaa !80
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %183 = icmp eq i64 %179, 0
  br i1 %183, label %184, label %252

184:                                              ; preds = %178
  %185 = load i32, ptr %8, align 4, !tbaa !108
  %186 = icmp eq i32 %185, 4
  br i1 %186, label %187, label %201

187:                                              ; preds = %184
  %188 = load i64, ptr %166, align 8, !tbaa !92
  %189 = icmp eq i64 %188, -1
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = load i64, ptr %167, align 8, !tbaa !113
  %192 = icmp eq i64 %191, %188
  br i1 %192, label %193, label %252

193:                                              ; preds = %190, %187
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 29960
  %195 = load i32, ptr %194, align 8, !tbaa !93
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  store i64 4, ptr %182, align 8, !tbaa !82
  store i32 5, ptr %8, align 4, !tbaa !108
  br label %252

198:                                              ; preds = %193
  %199 = load i64, ptr %167, align 8, !tbaa !113
  %200 = load i64, ptr %28, align 8, !tbaa !110
  tail call fastcc void @ZSTD_DCtx_trace_end(ptr noundef nonnull %0, i64 noundef %199, i64 noundef %200)
  store i64 0, ptr %182, align 8, !tbaa !82
  store i32 0, ptr %8, align 4, !tbaa !108
  br label %252

201:                                              ; preds = %184
  store i32 2, ptr %8, align 4, !tbaa !108
  store i64 3, ptr %182, align 8, !tbaa !82
  br label %252

202:                                              ; preds = %27
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 30112
  %204 = load i32, ptr %203, align 8, !tbaa !91
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 30008
  %208 = tail call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(none) %207) #20
  %209 = trunc i64 %208 to i32
  %210 = load i32, ptr %3, align 1, !tbaa !48
  %211 = icmp eq i32 %210, %209
  br i1 %211, label %212, label %252

212:                                              ; preds = %206, %202
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 29984
  %214 = load i64, ptr %213, align 8, !tbaa !113
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 95968
  %216 = load i64, ptr %215, align 8, !tbaa !81
  %217 = icmp ne i64 %216, 0
  %218 = icmp ne ptr @ZSTD_trace_decompress_end, null
  %219 = and i1 %218, %217
  br i1 %219, label %220, label %240

220:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %221 = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %221, i8 0, i64 48, i1 false)
  store i32 10600, ptr %6, align 8, !tbaa !94
  %222 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 1, ptr %222, align 4, !tbaa !99
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %224 = load ptr, ptr %223, align 8, !tbaa !100
  %225 = icmp eq ptr %224, null
  br i1 %225, label %235, label %226

226:                                              ; preds = %220
  %227 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %224) #17
  store i32 %227, ptr %221, align 8, !tbaa !101
  %228 = load ptr, ptr %223, align 8, !tbaa !100
  %229 = tail call i64 @ZSTD_DDict_dictSize(ptr noundef %228) #17
  %230 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %229, ptr %230, align 8, !tbaa !102
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %232 = load i32, ptr %231, align 4, !tbaa !24
  %233 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %232, ptr %233, align 4, !tbaa !103
  %234 = load i64, ptr %215, align 8, !tbaa !81
  br label %235

235:                                              ; preds = %226, %220
  %236 = phi i64 [ %234, %226 ], [ %216, %220 ]
  %237 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %214, ptr %237, align 8, !tbaa !104
  %238 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %30, ptr %238, align 8, !tbaa !105
  %239 = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %239, align 8, !tbaa !106
  call void @ZSTD_trace_decompress_end(i64 noundef %236, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %240

240:                                              ; preds = %235, %212
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 0, ptr %241, align 8, !tbaa !82
  store i32 0, ptr %8, align 4, !tbaa !108
  br label %252

242:                                              ; preds = %27
  %243 = getelementptr inbounds nuw i8, ptr %0, i64 95940
  %244 = sub i64 8, %4
  %245 = getelementptr inbounds nuw i8, ptr %243, i64 %244
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %245, ptr align 1 %3, i64 %4, i1 false)
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 95944
  %247 = load i32, ptr %246, align 1, !tbaa !48
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %248, ptr %249, align 8, !tbaa !82
  store i32 7, ptr %8, align 4, !tbaa !108
  br label %252

250:                                              ; preds = %27
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 0, ptr %251, align 8, !tbaa !82
  store i32 0, ptr %8, align 4, !tbaa !108
  br label %252

252:                                              ; preds = %250, %242, %240, %206, %201, %198, %197, %190, %178, %156, %152, %.thread, %134, %132, %128, %123, %121, %87, %79, %75, %49, %47, %40, %27, %24
  %253 = phi i64 [ 0, %40 ], [ 0, %75 ], [ 0, %87 ], [ %85, %79 ], [ %122, %121 ], [ 0, %240 ], [ -22, %206 ], [ 0, %242 ], [ 0, %250 ], [ -72, %24 ], [ %153, %152 ], [ %4, %134 ], [ -20, %123 ], [ -20, %156 ], [ %165, %178 ], [ -20, %190 ], [ %165, %197 ], [ %165, %198 ], [ %165, %201 ], [ -1, %27 ], [ -72, %47 ], [ %72, %49 ], [ -70, %128 ], [ -74, %132 ], [ %.ph, %.thread ]
  ret i64 %253
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 %26, ptr %4, align 4, !tbaa !48
  %29 = call i64 @ZSTD_XXH64(ptr noundef nonnull captures(none) %4, i64 noundef 4, i64 noundef 0) #20
  %30 = add i64 %28, -1
  %31 = and i64 %29, %30
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %32

32:                                               ; preds = %32, %24
  %33 = phi i64 [ %31, %24 ], [ %42, %32 ]
  %34 = load ptr, ptr %18, align 8, !tbaa !44
  %35 = getelementptr inbounds nuw [8 x i8], ptr %34, i64 %33
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
  %45 = getelementptr inbounds nuw [8 x i8], ptr %44, i64 %33
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

55:                                               ; preds = %48, %43, %20, %16, %12
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

82:                                               ; preds = %78, %59, %10, %3
  %83 = phi i64 [ 0, %78 ], [ %8, %3 ], [ -72, %10 ], [ -32, %59 ]
  ret i64 %83
}

declare i64 @ZSTD_getcBlockSize(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @ZSTD_decompressBlock_internal(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ZSTD_XXH64_update(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_DCtx_trace_end(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ZSTD_Trace, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 95968
  %6 = load i64, ptr %5, align 8, !tbaa !81
  %7 = icmp ne i64 %6, 0
  %8 = icmp ne ptr @ZSTD_trace_decompress_end, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %30

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  store i32 10600, ptr %4, align 8, !tbaa !94
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %12, align 4, !tbaa !99
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %14) #17
  store i32 %17, ptr %11, align 8, !tbaa !101
  %18 = load ptr, ptr %13, align 8, !tbaa !100
  %19 = tail call i64 @ZSTD_DDict_dictSize(ptr noundef %18) #17
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %19, ptr %20, align 8, !tbaa !102
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %22 = load i32, ptr %21, align 4, !tbaa !24
  %23 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %22, ptr %23, align 4, !tbaa !103
  %24 = load i64, ptr %5, align 8, !tbaa !81
  br label %25

25:                                               ; preds = %16, %10
  %26 = phi i64 [ %24, %16 ], [ %6, %10 ]
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %1, ptr %27, align 8, !tbaa !104
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %2, ptr %28, align 8, !tbaa !105
  %29 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %0, ptr %29, align 8, !tbaa !106
  call void @ZSTD_trace_decompress_end(i64 noundef %26, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %30

30:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr noundef captures(none)) local_unnamed_addr #11

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
  br i1 %14, label %96, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 10264
  %18 = add i64 %2, -8
  %19 = tail call i64 @HUF_readDTableX2_wksp(ptr noundef nonnull %17, ptr noundef nonnull %16, i64 noundef %18, ptr noundef %0, i64 noundef 10264, i32 noundef 0) #17
  %20 = icmp ult i64 %19, -119
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 %19
  br i1 %20, label %22, label %96

22:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 31, ptr %5, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
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

32:                                               ; preds = %29, %26, %22
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %96

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 26664
  call void @ZSTD_buildFSETable(ptr noundef nonnull %34, ptr noundef nonnull %4, i32 noundef %27, ptr noundef nonnull @OF_base, ptr noundef nonnull @OF_bits, i32 noundef %30, ptr noundef nonnull %35, i64 noundef 628, i32 noundef 0) #17
  %36 = getelementptr inbounds nuw i8, ptr %21, i64 %24
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 52, ptr %8, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %37 = add i64 %24, %19
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

47:                                               ; preds = %44, %41, %33
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %96

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 6160
  call void @ZSTD_buildFSETable(ptr noundef nonnull %49, ptr noundef nonnull %7, i32 noundef %42, ptr noundef nonnull @ML_base, ptr noundef nonnull @ML_bits, i32 noundef %45, ptr noundef nonnull %35, i64 noundef 628, i32 noundef 0) #17
  %50 = getelementptr inbounds nuw i8, ptr %36, i64 %39
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i32 35, ptr %11, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %51 = add i64 %39, %37
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

61:                                               ; preds = %58, %55, %48
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %96

62:                                               ; preds = %58
  call void @ZSTD_buildFSETable(ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef %56, ptr noundef nonnull @LL_base, ptr noundef nonnull @LL_bits, i32 noundef %59, ptr noundef nonnull %35, i64 noundef 628, i32 noundef 0) #17
  %63 = getelementptr inbounds nuw i8, ptr %50, i64 %53
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 12
  %65 = icmp ugt ptr %64, %13
  br i1 %65, label %96, label %66

66:                                               ; preds = %62
  %.neg17 = add i64 %2, -20
  %67 = add i64 %51, %53
  %68 = sub i64 %.neg17, %67
  %69 = load i32, ptr %63, align 1, !tbaa !48
  %70 = icmp eq i32 %69, 0
  %71 = zext i32 %69 to i64
  %72 = icmp ult i64 %68, %71
  %73 = or i1 %70, %72
  br i1 %73, label %96, label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 26652
  %76 = getelementptr inbounds nuw i8, ptr %63, i64 4
  store i32 %69, ptr %75, align 4, !tbaa !48
  %77 = load i32, ptr %76, align 1, !tbaa !48
  %78 = icmp eq i32 %77, 0
  %79 = zext i32 %77 to i64
  %80 = icmp ult i64 %68, %79
  %81 = or i1 %78, %80
  br i1 %81, label %96, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store i32 %77, ptr %84, align 4, !tbaa !48
  %85 = load i32, ptr %83, align 1, !tbaa !48
  %86 = icmp eq i32 %85, 0
  %87 = zext i32 %85 to i64
  %88 = icmp ult i64 %68, %87
  %89 = or i1 %86, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %82
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 26660
  store i32 %85, ptr %91, align 4, !tbaa !48
  %92 = add nuw i64 %19, 20
  %93 = add i64 %92, %24
  %94 = add i64 %93, %39
  %95 = add i64 %94, %53
  br label %96

96:                                               ; preds = %90, %82, %74, %66, %62, %61, %47, %32, %15, %3
  %97 = phi i64 [ %95, %90 ], [ -30, %15 ], [ -30, %3 ], [ -30, %62 ], [ -30, %32 ], [ -30, %47 ], [ -30, %61 ], [ -30, %82 ], [ -30, %74 ], [ -30, %66 ]
  ret i64 %97
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

5:                                                ; preds = %3, %1
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
  store ptr %15, ptr %0, align 8, !tbaa !117
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %21, ptr %22, align 8, !tbaa !118
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %23, ptr %24, align 8, !tbaa !119
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %16, ptr %25, align 8, !tbaa !120
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
  store ptr %17, ptr %0, align 8, !tbaa !117
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %25, ptr %26, align 8, !tbaa !118
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %27, ptr %28, align 8, !tbaa !119
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %18, ptr %29, align 8, !tbaa !120
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
  store i32 1, ptr %19, align 4, !tbaa !84
  store i32 1, ptr %20, align 8, !tbaa !85
  %45 = load ptr, ptr %16, align 8, !tbaa !80
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %47 = load ptr, ptr %46, align 8, !tbaa !86
  %48 = ptrtoint ptr %47 to i64
  br label %49

49:                                               ; preds = %43, %35, %33
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
  store ptr %57, ptr %58, align 8, !tbaa !87
  store ptr %52, ptr %54, align 8, !tbaa !86
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %59, ptr %16, align 8, !tbaa !80
  br label %60

60:                                               ; preds = %49, %38, %7
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

13:                                               ; preds = %4, %2
  %14 = icmp eq ptr @ZSTD_trace_decompress_begin, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = tail call i64 @ZSTD_trace_decompress_begin(ptr noundef %0) #17
  br label %17

17:                                               ; preds = %15, %13
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
  store ptr %27, ptr %0, align 8, !tbaa !117
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %33, ptr %34, align 8, !tbaa !118
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %35, ptr %36, align 8, !tbaa !119
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %28, ptr %37, align 8, !tbaa !120
  br i1 %3, label %39, label %38

38:                                               ; preds = %17
  tail call void @ZSTD_copyDDictParameters(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  br label %39

39:                                               ; preds = %38, %17
  ret i64 0
}

declare ptr @ZSTD_DDict_dictContent(ptr noundef) local_unnamed_addr #1

declare i64 @ZSTD_DDict_dictSize(ptr noundef) local_unnamed_addr #1

declare void @ZSTD_copyDDictParameters(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZSTD_getDictID_fromDict(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
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

10:                                               ; preds = %7, %4, %2
  %11 = phi i32 [ %9, %7 ], [ 0, %2 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @ZSTD_getDictID_fromFrame(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = alloca %struct.ZSTD_FrameHeader, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %4 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef readonly %0, i64 noundef %1, i32 noundef 0)
  %5 = icmp ult i64 %4, -119
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %7 = load i32, ptr %6, align 4
  %8 = select i1 %5, i32 %7, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %8
}

; Function Attrs: nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @ZSTD_createDStream() local_unnamed_addr #4 {
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

39:                                               ; preds = %28, %0
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

45:                                               ; preds = %32, %2
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

56:                                               ; preds = %45, %15, %1
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

23:                                               ; preds = %21, %17, %9, %5
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

21:                                               ; preds = %19, %15, %7, %3
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

21:                                               ; preds = %19, %15, %7, %3
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

23:                                               ; preds = %22, %16, %4
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

22:                                               ; preds = %21, %15, %3
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

25:                                               ; preds = %20, %14
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

9:                                                ; preds = %5, %2
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

28:                                               ; preds = %16, %12, %9
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
  br i1 %7, label %8, label %.loopexit

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call i64 @ZSTD_freeDDict(ptr noundef %10) #17
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %12, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %13 = icmp eq ptr %1, null
  br i1 %13, label %.loopexit, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 30192
  store ptr %1, ptr %15, align 8, !tbaa !100
  store i32 -1, ptr %12, align 8, !tbaa !25
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30224
  %17 = load i32, ptr %16, align 8, !tbaa !38
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %.loopexit

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 30216
  %21 = load ptr, ptr %20, align 8, !tbaa !33
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %55

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

50:                                               ; preds = %49, %48, %34, %31
  store ptr null, ptr %20, align 8, !tbaa !33
  br label %.loopexit

51:                                               ; preds = %42, %41
  %52 = phi ptr [ %35, %41 ], [ %32, %42 ]
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i64 64, ptr %53, align 8, !tbaa !115
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i64 0, ptr %54, align 8, !tbaa !122
  store ptr %52, ptr %20, align 8, !tbaa !33
  br label %132

55:                                               ; preds = %19
  %56 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %57 = load i64, ptr %56, align 8, !tbaa !122
  %58 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %59 = load i64, ptr %58, align 8, !tbaa !115
  %60 = shl i64 %57, 2
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 30136
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 30144
  %66 = load ptr, ptr %65, align 8
  %67 = icmp ugt i64 %59, %60
  br i1 %67, label %132, label %68

68:                                               ; preds = %55
  %69 = shl i64 %59, 4
  %70 = icmp eq ptr %62, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = tail call ptr %62(ptr noundef %66, i64 noundef %69) #17
  %73 = icmp eq ptr %72, null
  br i1 %73, label %.loopexit, label %74

74:                                               ; preds = %71
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %72, i8 0, i64 %69, i1 false)
  %75 = load i64, ptr %58, align 8, !tbaa !115
  br label %79

76:                                               ; preds = %68
  %77 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %69) #21
  %78 = icmp eq ptr %77, null
  br i1 %78, label %.loopexit, label %79

79:                                               ; preds = %76, %74
  %80 = phi i64 [ %75, %74 ], [ %59, %76 ]
  %81 = phi ptr [ %72, %74 ], [ %77, %76 ]
  %82 = load ptr, ptr %21, align 8, !tbaa !44
  %83 = shl i64 %59, 1
  store ptr %81, ptr %21, align 8, !tbaa !44
  store i64 %83, ptr %58, align 8, !tbaa !115
  store i64 0, ptr %56, align 8, !tbaa !122
  %84 = icmp eq i64 %80, 0
  br i1 %84, label %.loopexit23, label %.preheader22

.preheader22:                                     ; preds = %79, %124
  %85 = phi i64 [ %125, %124 ], [ 0, %79 ]
  %86 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !116
  %88 = icmp eq ptr %87, null
  br i1 %88, label %124, label %89

89:                                               ; preds = %.preheader22
  %90 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %87) #17
  %91 = load i64, ptr %58, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 %90, ptr %4, align 4, !tbaa !48
  %92 = call i64 @ZSTD_XXH64(ptr noundef nonnull captures(none) %4, i64 noundef 4, i64 noundef 0) #20
  %93 = add i64 %91, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %94 = load i64, ptr %56, align 8, !tbaa !122
  %95 = icmp eq i64 %94, %91
  br i1 %95, label %.loopexit, label %96

96:                                               ; preds = %89
  %97 = and i64 %92, %93
  %98 = load ptr, ptr %21, align 8, !tbaa !44
  %99 = getelementptr inbounds nuw [8 x i8], ptr %98, i64 %97
  %100 = load ptr, ptr %99, align 8, !tbaa !116
  %101 = icmp eq ptr %100, null
  br i1 %101, label %118, label %.preheader21

.preheader21:                                     ; preds = %96, %109
  %102 = phi ptr [ %114, %109 ], [ %100, %96 ]
  %103 = phi i64 [ %111, %109 ], [ %97, %96 ]
  %104 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %102) #17
  %105 = icmp eq i32 %104, %90
  br i1 %105, label %106, label %109

106:                                              ; preds = %.preheader21
  %107 = load ptr, ptr %21, align 8, !tbaa !44
  %108 = getelementptr inbounds nuw [8 x i8], ptr %107, i64 %103
  store ptr %87, ptr %108, align 8, !tbaa !116
  br label %124

109:                                              ; preds = %.preheader21
  %110 = and i64 %103, %93
  %111 = add i64 %110, 1
  %112 = load ptr, ptr %21, align 8, !tbaa !44
  %113 = getelementptr inbounds nuw [8 x i8], ptr %112, i64 %111
  %114 = load ptr, ptr %113, align 8, !tbaa !116
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %.preheader21, !llvm.loop !123

116:                                              ; preds = %109
  %117 = load i64, ptr %56, align 8, !tbaa !122
  br label %118

118:                                              ; preds = %116, %96
  %119 = phi i64 [ %94, %96 ], [ %117, %116 ]
  %120 = phi i64 [ %97, %96 ], [ %111, %116 ]
  %121 = phi ptr [ %98, %96 ], [ %112, %116 ]
  %122 = getelementptr inbounds nuw [8 x i8], ptr %121, i64 %120
  store ptr %87, ptr %122, align 8, !tbaa !116
  %123 = add i64 %119, 1
  store i64 %123, ptr %56, align 8, !tbaa !122
  br label %124

124:                                              ; preds = %118, %106, %.preheader22
  %125 = add nuw i64 %85, 1
  %126 = icmp eq i64 %125, %80
  br i1 %126, label %.loopexit23, label %.preheader22, !llvm.loop !124

.loopexit23:                                      ; preds = %124, %79
  %127 = icmp eq ptr %82, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %.loopexit23
  %129 = icmp eq ptr %64, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %128
  tail call void %64(ptr noundef %66, ptr noundef nonnull %82) #17
  br label %132

131:                                              ; preds = %128
  tail call void @free(ptr noundef nonnull %82) #17
  br label %132

132:                                              ; preds = %131, %130, %.loopexit23, %55, %51
  %133 = phi ptr [ %53, %51 ], [ %58, %131 ], [ %58, %130 ], [ %58, %.loopexit23 ], [ %58, %55 ]
  %134 = phi ptr [ %54, %51 ], [ %56, %131 ], [ %56, %130 ], [ %56, %.loopexit23 ], [ %56, %55 ]
  %135 = phi ptr [ %52, %51 ], [ %21, %131 ], [ %21, %130 ], [ %21, %.loopexit23 ], [ %21, %55 ]
  %136 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %1) #17
  %137 = load i64, ptr %133, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 %136, ptr %3, align 4, !tbaa !48
  %138 = call i64 @ZSTD_XXH64(ptr noundef nonnull captures(none) %3, i64 noundef 4, i64 noundef 0) #20
  %139 = add i64 %137, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %140 = load i64, ptr %134, align 8, !tbaa !122
  %141 = icmp eq i64 %140, %137
  br i1 %141, label %.loopexit, label %142

142:                                              ; preds = %132
  %143 = and i64 %138, %139
  %144 = load ptr, ptr %135, align 8, !tbaa !44
  %145 = getelementptr inbounds nuw [8 x i8], ptr %144, i64 %143
  %146 = load ptr, ptr %145, align 8, !tbaa !116
  %147 = icmp eq ptr %146, null
  br i1 %147, label %164, label %.preheader

.preheader:                                       ; preds = %142, %155
  %148 = phi ptr [ %160, %155 ], [ %146, %142 ]
  %149 = phi i64 [ %157, %155 ], [ %143, %142 ]
  %150 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %148) #17
  %151 = icmp eq i32 %150, %136
  br i1 %151, label %152, label %155

152:                                              ; preds = %.preheader
  %153 = load ptr, ptr %135, align 8, !tbaa !44
  %154 = getelementptr inbounds nuw [8 x i8], ptr %153, i64 %149
  store ptr %1, ptr %154, align 8, !tbaa !116
  br label %.loopexit

155:                                              ; preds = %.preheader
  %156 = and i64 %149, %139
  %157 = add i64 %156, 1
  %158 = load ptr, ptr %135, align 8, !tbaa !44
  %159 = getelementptr inbounds nuw [8 x i8], ptr %158, i64 %157
  %160 = load ptr, ptr %159, align 8, !tbaa !116
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %.preheader, !llvm.loop !123

162:                                              ; preds = %155
  %163 = load i64, ptr %134, align 8, !tbaa !122
  br label %164

164:                                              ; preds = %162, %142
  %165 = phi i64 [ %140, %142 ], [ %163, %162 ]
  %166 = phi i64 [ %143, %142 ], [ %157, %162 ]
  %167 = phi ptr [ %144, %142 ], [ %158, %162 ]
  %168 = getelementptr inbounds nuw [8 x i8], ptr %167, i64 %166
  store ptr %1, ptr %168, align 8, !tbaa !116
  %169 = add i64 %165, 1
  store i64 %169, ptr %134, align 8, !tbaa !122
  br label %.loopexit

.loopexit:                                        ; preds = %89, %164, %152, %132, %76, %71, %50, %14, %8, %2
  %170 = phi i64 [ -60, %2 ], [ -64, %50 ], [ 0, %14 ], [ 0, %8 ], [ -1, %132 ], [ -64, %71 ], [ -64, %76 ], [ 0, %152 ], [ 0, %164 ], [ -1, %89 ]
  ret i64 %170
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

13:                                               ; preds = %8, %2
  %14 = phi i64 [ %12, %8 ], [ %6, %2 ]
  ret i64 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 1, 6) i64 @ZSTD_resetDStream(ptr noundef captures(none) initializes((30176, 30180), (30236, 30240), (30316, 30320)) %0) local_unnamed_addr #6 {
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
define dso_local range(i64 -60, 1) i64 @ZSTD_DCtx_setMaxWindowSize(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
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

11:                                               ; preds = %9, %6, %2
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

5:                                                ; preds = %4, %3, %2, %1
  %6 = phi i64 [ 0, %4 ], [ 4294967296, %2 ], [ 562949953422336, %3 ], [ 133143986186, %1 ]
  %7 = phi i64 [ -40, %4 ], [ 0, %2 ], [ 0, %3 ], [ 0, %1 ]
  %8 = insertvalue { i64, i64 } poison, i64 %7, 0
  %9 = insertvalue { i64, i64 } %8, i64 %6, 1
  ret { i64, i64 } %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_DCtx_setFormat(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
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

10:                                               ; preds = %8, %6, %2
  %11 = phi i64 [ 0, %8 ], [ -60, %2 ], [ -42, %6 ]
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_DCtx_setParameter(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
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

48:                                               ; preds = %46, %41, %39, %37, %35, %31, %29, %27, %25, %23, %21, %19, %17, %13, %8, %7, %3
  %49 = phi i64 [ 0, %13 ], [ 0, %19 ], [ 0, %23 ], [ 0, %27 ], [ 0, %35 ], [ 0, %39 ], [ 0, %46 ], [ -60, %3 ], [ -42, %8 ], [ -42, %17 ], [ -42, %21 ], [ -42, %25 ], [ -42, %29 ], [ -40, %31 ], [ -42, %37 ], [ -40, %7 ], [ -42, %41 ]
  ret i64 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -40, 1) i64 @ZSTD_DCtx_getParameter(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #6 {
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

14:                                               ; preds = %3, %1
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
define dso_local range(i64 -119, 2147972905) i64 @ZSTD_estimateDStreamSize_fromFrame(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = alloca %struct.ZSTD_FrameHeader, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
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

18:                                               ; preds = %12, %8, %6, %2
  %19 = phi i64 [ %17, %12 ], [ %4, %2 ], [ -72, %6 ], [ -16, %8 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
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
  br i1 %20, label %.loopexit, label %21

21:                                               ; preds = %3
  %22 = icmp ugt i64 %15, %18
  br i1 %22, label %.loopexit, label %23

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
  br i1 %42, label %43, label %.loopexit

43:                                               ; preds = %37, %33, %23
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
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 29992
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %80 = getelementptr i8, ptr %0, <4 x i64> <i64 32, i64 6192, i64 4136, i64 10296>
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 95944
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 29936
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 30264
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 30232
  %85 = getelementptr i8, ptr %0, i64 30248
  %86 = getelementptr i8, ptr %0, i64 95960
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 30240
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %90 = getelementptr i8, ptr %0, i64 30136
  %91 = getelementptr i8, ptr %0, i64 30144
  br label %.peel.begin.outer

.peel.begin.outer:                                ; preds = %.peel.begin.outer.backedge, %43
  %.ph165 = phi ptr [ %9, %43 ], [ %.ph165.be, %.peel.begin.outer.backedge ]
  %.ph166 = phi ptr [ %16, %43 ], [ %.ph166.be, %.peel.begin.outer.backedge ]
  br label %.peel.begin

.peel.begin:                                      ; preds = %.peel.begin.outer, %195
  %92 = phi ptr [ %197, %195 ], [ %.ph165, %.peel.begin.outer ]
  %.pre = load i32, ptr %44, align 4, !tbaa !121
  switch i32 %.pre, label %.loopexit [
    i32 0, label %127
    i32 1, label %125
    i32 2, label %.loopexit44
    i32 3, label %122
    i32 4, label %93
  ]

93:                                               ; preds = %.peel.begin
  %94 = load i64, ptr %45, align 8, !tbaa !132
  %95 = load i64, ptr %46, align 8, !tbaa !133
  %96 = sub i64 %94, %95
  %97 = ptrtoint ptr %.ph166 to i64
  %98 = sub i64 %47, %97
  %99 = tail call i64 @llvm.umin.i64(i64 %98, i64 %96)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %93
  %102 = load ptr, ptr %48, align 8, !tbaa !134
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 %95
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.ph166, ptr readonly align 1 %103, i64 %99, i1 false)
  %104 = load i64, ptr %46, align 8, !tbaa !133
  br label %105

105:                                              ; preds = %101, %93
  %106 = phi i64 [ %95, %93 ], [ %104, %101 ]
  %107 = icmp eq ptr %.ph166, null
  %108 = getelementptr inbounds nuw i8, ptr %.ph166, i64 %99
  %109 = select i1 %107, ptr null, ptr %108
  %110 = add i64 %106, %99
  store i64 %110, ptr %46, align 8, !tbaa !133
  %111 = icmp ugt i64 %96, %98
  br i1 %111, label %.loopexit45, label %112

112:                                              ; preds = %105
  store i32 2, ptr %44, align 4, !tbaa !121
  %113 = load i64, ptr %49, align 8, !tbaa !22
  %114 = load i64, ptr %50, align 8, !tbaa !92
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %.loopexit44

116:                                              ; preds = %112
  %117 = load i32, ptr %51, align 8, !tbaa !88
  %118 = zext i32 %117 to i64
  %119 = add i64 %110, %118
  %120 = icmp ugt i64 %119, %113
  br i1 %120, label %121, label %.loopexit44

121:                                              ; preds = %116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  br label %.loopexit44

122:                                              ; preds = %.peel.begin
  %123 = load i64, ptr %68, align 8, !tbaa !82
  %124 = load i32, ptr %73, align 4, !tbaa !108
  br label %415

125:                                              ; preds = %.peel.begin
  %126 = load i64, ptr %53, align 8, !tbaa !135
  br label %128

127:                                              ; preds = %.peel.begin
  store i32 1, ptr %44, align 4, !tbaa !121
  store i64 0, ptr %52, align 8, !tbaa !136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %46, i8 0, i64 28, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !137
  br label %128

128:                                              ; preds = %127, %125
  %129 = phi i64 [ %126, %125 ], [ 0, %127 ]
  %130 = load i32, ptr %56, align 8, !tbaa !34
  %131 = tail call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %50, ptr noundef nonnull %55, i64 noundef %129, i32 noundef %130)
  %132 = load i32, ptr %57, align 8, !tbaa !38
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %167, label %134

134:                                              ; preds = %128
  %135 = load ptr, ptr %58, align 8, !tbaa !33
  %136 = icmp eq ptr %135, null
  br i1 %136, label %167, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %59, align 8, !tbaa !100
  %139 = icmp eq ptr %138, null
  br i1 %139, label %167, label %140

140:                                              ; preds = %137
  %141 = load i32, ptr %60, align 4, !tbaa !114
  %142 = getelementptr i8, ptr %135, i64 8
  %143 = load i64, ptr %142, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %141, ptr %5, align 4, !tbaa !48
  %144 = call i64 @ZSTD_XXH64(ptr noundef nonnull captures(none) %5, i64 noundef 4, i64 noundef 0) #20
  %145 = add i64 %143, -1
  %146 = and i64 %144, %145
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %147

147:                                              ; preds = %147, %140
  %148 = phi i64 [ %146, %140 ], [ %157, %147 ]
  %149 = load ptr, ptr %135, align 8, !tbaa !44
  %150 = getelementptr inbounds nuw [8 x i8], ptr %149, i64 %148
  %151 = load ptr, ptr %150, align 8, !tbaa !116
  %152 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef %151) #17
  %153 = icmp eq i32 %152, %141
  %154 = icmp eq i32 %152, 0
  %155 = or i1 %153, %154
  %156 = and i64 %148, %145
  %157 = add i64 %156, 1
  br i1 %155, label %158, label %147

158:                                              ; preds = %147
  %159 = load ptr, ptr %135, align 8, !tbaa !44
  %160 = getelementptr inbounds nuw [8 x i8], ptr %159, i64 %148
  %161 = load ptr, ptr %160, align 8, !tbaa !116
  %162 = icmp eq ptr %161, null
  br i1 %162, label %167, label %163

163:                                              ; preds = %158
  %164 = load ptr, ptr %61, align 8, !tbaa !5
  %165 = tail call i64 @ZSTD_freeDDict(ptr noundef %164) #17
  store i64 0, ptr %61, align 8
  %166 = load i32, ptr %60, align 4, !tbaa !114
  store i32 %166, ptr %63, align 8, !tbaa !83
  store ptr %161, ptr %59, align 8, !tbaa !100
  store i32 -1, ptr %62, align 8, !tbaa !25
  br label %167

167:                                              ; preds = %163, %158, %137, %134, %128
  %168 = icmp ult i64 %131, -119
  br i1 %168, label %169, label %.loopexit

169:                                              ; preds = %167
  %170 = icmp eq i64 %131, 0
  br i1 %170, label %198, label %171

171:                                              ; preds = %169
  %172 = load i64, ptr %53, align 8, !tbaa !135
  %173 = sub i64 %131, %172
  %174 = ptrtoint ptr %92 to i64
  %175 = sub i64 %64, %174
  %176 = icmp ugt i64 %173, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %171
  %178 = icmp eq ptr %12, %92
  br i1 %178, label %182, label %179

179:                                              ; preds = %177
  %180 = getelementptr inbounds nuw i8, ptr %55, i64 %172
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %180, ptr align 1 %92, i64 %175, i1 false)
  %181 = add i64 %172, %175
  store i64 %181, ptr %53, align 8, !tbaa !135
  br label %182

182:                                              ; preds = %179, %177
  %183 = phi i64 [ %181, %179 ], [ %172, %177 ]
  %184 = load i64, ptr %10, align 8, !tbaa !128
  store i64 %184, ptr %7, align 8, !tbaa !127
  %185 = load i32, ptr %56, align 8, !tbaa !34
  %186 = tail call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %50, ptr noundef nonnull %55, i64 noundef %183, i32 noundef %185)
  %187 = icmp ult i64 %186, -119
  br i1 %187, label %188, label %.loopexit

188:                                              ; preds = %182
  %189 = load i32, ptr %56, align 8, !tbaa !34
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, i64 6, i64 2
  %192 = tail call i64 @llvm.umax.i64(i64 %191, i64 %131)
  %193 = load i64, ptr %53, align 8, !tbaa !135
  %reass.sub63 = sub i64 %192, %193
  %194 = add i64 %reass.sub63, 3
  br label %.loopexit

195:                                              ; preds = %171
  %196 = getelementptr inbounds nuw i8, ptr %55, i64 %172
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %196, ptr align 1 %92, i64 %173, i1 false)
  store i64 %131, ptr %53, align 8, !tbaa !135
  %197 = getelementptr inbounds nuw i8, ptr %92, i64 %173
  br label %.peel.begin, !llvm.loop !138

198:                                              ; preds = %169
  %199 = load i64, ptr %50, align 8, !tbaa !92
  %200 = icmp eq i64 %199, -1
  br i1 %200, label %221, label %201

201:                                              ; preds = %198
  %202 = load i32, ptr %65, align 4, !tbaa !139
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %221, label %204

204:                                              ; preds = %201
  %205 = ptrtoint ptr %.ph166 to i64
  %206 = sub i64 %47, %205
  %207 = icmp ult i64 %206, %199
  br i1 %207, label %221, label %208

208:                                              ; preds = %204
  %209 = load i32, ptr %56, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %9, i64 noundef %66, i32 noundef %209)
  %210 = load i64, ptr %67, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %211 = icmp ugt i64 %210, %66
  br i1 %211, label %221, label %212

212:                                              ; preds = %208
  %213 = tail call fastcc ptr @ZSTD_getDDict(ptr noundef nonnull %0)
  %214 = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef nonnull %0, ptr noundef %.ph166, i64 noundef %206, ptr noundef %9, i64 noundef %210, ptr noundef null, i64 noundef 0, ptr noundef %213)
  %215 = icmp ult i64 %214, -119
  br i1 %215, label %216, label %.loopexit

216:                                              ; preds = %212
  %217 = getelementptr inbounds nuw i8, ptr %9, i64 %210
  %218 = icmp eq ptr %.ph166, null
  %219 = getelementptr inbounds nuw i8, ptr %.ph166, i64 %214
  %220 = select i1 %218, ptr null, ptr %219
  store i64 0, ptr %68, align 8, !tbaa !82
  br label %.loopexit47

221:                                              ; preds = %208, %204, %201, %198
  %222 = load i32, ptr %30, align 8, !tbaa !36
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %234

224:                                              ; preds = %221
  %225 = load i32, ptr %65, align 4, !tbaa !139
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %234, label %227

227:                                              ; preds = %224
  %228 = load i64, ptr %50, align 8, !tbaa !92
  %229 = icmp ne i64 %228, -1
  %230 = ptrtoint ptr %.ph166 to i64
  %231 = sub i64 %47, %230
  %232 = icmp ult i64 %231, %228
  %233 = select i1 %229, i1 %232, i1 false
  br i1 %233, label %.loopexit, label %234

234:                                              ; preds = %227, %224, %221
  %235 = load i32, ptr %62, align 8, !tbaa !25
  switch i32 %235, label %236 [
    i32 1, label %239
    i32 -1, label %240
  ]

236:                                              ; preds = %234
  %237 = load ptr, ptr %61, align 8, !tbaa !5
  %238 = tail call i64 @ZSTD_freeDDict(ptr noundef %237) #17
  store i32 0, ptr %62, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, i8 0, i64 16, i1 false)
  br label %250

239:                                              ; preds = %234
  store i32 0, ptr %62, align 8, !tbaa !25
  br label %240

240:                                              ; preds = %239, %234
  %241 = load ptr, ptr %59, align 8, !tbaa !100
  %242 = icmp eq ptr %241, null
  br i1 %242, label %250, label %243

243:                                              ; preds = %240
  %244 = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %241) #17
  %245 = tail call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %241) #17
  %246 = getelementptr inbounds nuw i8, ptr %244, i64 %245
  %247 = load ptr, ptr %69, align 8, !tbaa !23
  %248 = icmp ne ptr %247, %246
  %249 = zext i1 %248 to i32
  store i32 %249, ptr %70, align 4, !tbaa !24
  br label %250

250:                                              ; preds = %243, %240, %236
  %251 = phi i1 [ true, %236 ], [ false, %243 ], [ true, %240 ]
  %252 = phi ptr [ null, %236 ], [ %241, %243 ], [ null, %240 ]
  br i1 %71, label %255, label %253

253:                                              ; preds = %250
  %254 = tail call i64 @ZSTD_trace_decompress_begin(ptr noundef nonnull %0) #17
  br label %255

255:                                              ; preds = %253, %250
  %256 = phi i64 [ %254, %253 ], [ 0, %250 ]
  store i64 %256, ptr %72, align 8, !tbaa !81
  %257 = load i32, ptr %56, align 8, !tbaa !34
  %258 = icmp eq i32 %257, 0
  %259 = select i1 %258, i64 5, i64 1
  store i64 %259, ptr %68, align 8, !tbaa !82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %75, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %74, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %76, align 8, !tbaa !48
  store i32 0, ptr %63, align 8, !tbaa !83
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %77, align 8, !tbaa !48
  store i32 1, ptr %78, align 8, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %79, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store <4 x ptr> %80, ptr %0, align 8, !tbaa !43
  br i1 %251, label %262, label %260

260:                                              ; preds = %255
  tail call void @ZSTD_copyDDictParameters(ptr noundef nonnull %0, ptr noundef nonnull %252) #17
  %261 = load i32, ptr %56, align 8, !tbaa !34
  br label %262

262:                                              ; preds = %260, %255
  %263 = phi i32 [ %261, %260 ], [ %257, %255 ]
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %262
  %266 = load i32, ptr %55, align 1, !tbaa !48
  %267 = and i32 %266, -16
  %268 = icmp eq i32 %267, 407710288
  br i1 %268, label %269, label %272

269:                                              ; preds = %265
  %270 = load i32, ptr %81, align 1, !tbaa !48
  %271 = zext i32 %270 to i64
  br label %276

272:                                              ; preds = %265, %262
  %273 = load i64, ptr %53, align 8, !tbaa !135
  %274 = tail call fastcc i64 @ZSTD_decodeFrameHeader(ptr noundef nonnull %0, ptr noundef nonnull %55, i64 noundef %273)
  %275 = icmp ult i64 %274, -119
  br i1 %275, label %276, label %.loopexit

276:                                              ; preds = %272, %269
  %277 = phi i64 [ %271, %269 ], [ 3, %272 ]
  %278 = phi i32 [ 7, %269 ], [ 2, %272 ]
  store i64 %277, ptr %68, align 8, !tbaa !82
  store i32 %278, ptr %73, align 4, !tbaa !108
  %279 = load i64, ptr %82, align 8, !tbaa !140
  %280 = tail call i64 @llvm.umax.i64(i64 %279, i64 1024)
  store i64 %280, ptr %82, align 8, !tbaa !140
  %281 = load i64, ptr %83, align 8, !tbaa !35
  %282 = icmp ugt i64 %280, %281
  br i1 %282, label %.loopexit, label %283

283:                                              ; preds = %276
  %284 = load i32, ptr %84, align 8, !tbaa !40
  %285 = icmp eq i32 %284, 0
  %286 = load i32, ptr %51, align 8, !tbaa !88
  br i1 %285, label %289, label %287

287:                                              ; preds = %283
  %288 = tail call i32 @llvm.umin.i32(i32 %286, i32 %284)
  store i32 %288, ptr %51, align 8, !tbaa !88
  br label %289

289:                                              ; preds = %287, %283
  %290 = phi i32 [ %288, %287 ], [ %286, %283 ]
  %291 = tail call i32 @llvm.umax.i32(i32 %290, i32 4)
  %292 = zext i32 %291 to i64
  %293 = load i32, ptr %30, align 8, !tbaa !36
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %289
  %296 = zext i32 %290 to i64
  %297 = load i64, ptr %50, align 8, !tbaa !92
  %298 = tail call i64 @llvm.umin.i64(i64 %280, i64 range(i64 0, 4294967296) %296)
  %299 = tail call i64 @llvm.umin.i64(i64 %298, i64 131072)
  %300 = shl nuw nsw i64 %299, 1
  %301 = add i64 %280, 64
  %302 = add i64 %301, %300
  %303 = tail call i64 @llvm.umin.i64(i64 %297, i64 %302)
  br label %304

304:                                              ; preds = %295, %289
  %305 = phi i64 [ %303, %295 ], [ 0, %289 ]
  %306 = load i64, ptr %85, align 8, !tbaa !21
  %307 = load i64, ptr %49, align 8, !tbaa !22
  %308 = add i64 %307, %306
  %309 = add i64 %305, %292
  %310 = mul i64 %309, 3
  %311 = icmp ult i64 %308, %310
  br i1 %311, label %315, label %312

312:                                              ; preds = %304
  %313 = load i64, ptr %86, align 8, !tbaa !27
  %314 = add i64 %313, 1
  br label %315

315:                                              ; preds = %312, %304
  %316 = phi i64 [ %314, %312 ], [ 0, %304 ]
  store i64 %316, ptr %86, align 8, !tbaa !27
  %317 = icmp ult i64 %306, %292
  br i1 %317, label %322, label %318

318:                                              ; preds = %315
  %319 = icmp ult i64 %307, %305
  %320 = icmp ugt i64 %316, 127
  %321 = select i1 %319, i1 true, i1 %320
  br i1 %321, label %322, label %353

322:                                              ; preds = %318, %315
  %323 = load i64, ptr %87, align 8, !tbaa !41
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %330, label %325

325:                                              ; preds = %322
  %326 = add i64 %323, -95976
  %327 = icmp ugt i64 %309, %326
  br i1 %327, label %.loopexit, label %328

328:                                              ; preds = %325
  %329 = load ptr, ptr %88, align 8, !tbaa !42
  br label %350

330:                                              ; preds = %322
  %331 = load ptr, ptr %88, align 8, !tbaa !42
  %332 = load ptr, ptr %90, align 8
  %333 = load ptr, ptr %91, align 8
  %334 = icmp eq ptr %331, null
  br i1 %334, label %339, label %335

335:                                              ; preds = %330
  %336 = icmp eq ptr %332, null
  br i1 %336, label %338, label %337

337:                                              ; preds = %335
  tail call void %332(ptr noundef %333, ptr noundef nonnull %331) #17
  br label %339

338:                                              ; preds = %335
  tail call void @free(ptr noundef nonnull %331) #17
  br label %339

339:                                              ; preds = %338, %337, %330
  store i64 0, ptr %85, align 8, !tbaa !21
  store i64 0, ptr %49, align 8, !tbaa !22
  %340 = load ptr, ptr %89, align 8, !tbaa !141
  %341 = icmp eq ptr %340, null
  br i1 %341, label %345, label %342

342:                                              ; preds = %339
  %343 = load ptr, ptr %91, align 8
  %344 = tail call ptr %340(ptr noundef %343, i64 noundef %309) #17
  br label %347

345:                                              ; preds = %339
  %346 = tail call noalias ptr @malloc(i64 noundef %309) #19
  br label %347

347:                                              ; preds = %345, %342
  %348 = phi ptr [ %344, %342 ], [ %346, %345 ]
  store ptr %348, ptr %88, align 8, !tbaa !42
  %349 = icmp eq ptr %348, null
  br i1 %349, label %.loopexit, label %350

350:                                              ; preds = %347, %328
  %351 = phi ptr [ %329, %328 ], [ %348, %347 ]
  store i64 %292, ptr %85, align 8, !tbaa !21
  %352 = getelementptr inbounds nuw i8, ptr %351, i64 %292
  store ptr %352, ptr %48, align 8, !tbaa !134
  store i64 %305, ptr %49, align 8, !tbaa !22
  br label %353

353:                                              ; preds = %350, %318
  store i32 2, ptr %44, align 4, !tbaa !121
  br label %.loopexit44

.loopexit44:                                      ; preds = %.peel.begin, %353, %121, %116, %112
  %354 = phi ptr [ %.ph166, %353 ], [ %109, %121 ], [ %109, %112 ], [ %109, %116 ], [ %.ph166, %.peel.begin ]
  %355 = ptrtoint ptr %92 to i64
  %356 = sub i64 %64, %355
  %357 = load i32, ptr %73, align 4, !tbaa !108
  %358 = add i32 %357, -3
  %359 = icmp ult i32 %358, 2
  br i1 %359, label %362, label %360

360:                                              ; preds = %.loopexit44
  %361 = load i64, ptr %68, align 8, !tbaa !82
  br label %369

362:                                              ; preds = %.loopexit44
  %363 = load i32, ptr %77, align 8, !tbaa !109
  %364 = icmp eq i32 %363, 0
  %365 = load i64, ptr %68, align 8, !tbaa !82
  br i1 %364, label %366, label %369

366:                                              ; preds = %362
  %367 = tail call i64 @llvm.umin.i64(i64 %356, i64 %365)
  %368 = tail call i64 @llvm.umax.i64(i64 %367, i64 1)
  br label %372

369:                                              ; preds = %362, %360
  %370 = phi i64 [ %361, %360 ], [ %365, %362 ]
  %371 = icmp eq i64 %370, 0
  br i1 %371, label %.loopexit47, label %372

372:                                              ; preds = %369, %366
  %373 = phi i64 [ %365, %366 ], [ %370, %369 ]
  %374 = phi i64 [ %368, %366 ], [ %370, %369 ]
  %375 = icmp ult i64 %356, %374
  br i1 %375, label %412, label %376

376:                                              ; preds = %372
  %377 = icmp eq i32 %357, 7
  %378 = load i32, ptr %30, align 8, !tbaa !36
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %400

380:                                              ; preds = %376
  br i1 %377, label %381, label %383

381:                                              ; preds = %380
  %382 = load i64, ptr %46, align 8, !tbaa !133
  br label %387

383:                                              ; preds = %380
  %384 = load i64, ptr %49, align 8, !tbaa !22
  %385 = load i64, ptr %46, align 8, !tbaa !133
  %386 = sub i64 %384, %385
  br label %387

387:                                              ; preds = %383, %381
  %388 = phi i64 [ %385, %383 ], [ %382, %381 ]
  %389 = phi i64 [ %386, %383 ], [ 0, %381 ]
  %390 = load ptr, ptr %48, align 8, !tbaa !134
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 %388
  %392 = tail call i64 @ZSTD_decompressContinue(ptr noundef nonnull %0, ptr noundef %391, i64 noundef %389, ptr noundef %92, i64 noundef %374)
  %393 = icmp ult i64 %392, -119
  br i1 %393, label %394, label %.loopexit

394:                                              ; preds = %387
  %395 = icmp ne i64 %392, 0
  %396 = or i1 %377, %395
  br i1 %396, label %397, label %408

397:                                              ; preds = %394
  %398 = load i64, ptr %46, align 8, !tbaa !133
  %399 = add i64 %398, %392
  store i64 %399, ptr %45, align 8, !tbaa !132
  br label %408

400:                                              ; preds = %376
  %401 = ptrtoint ptr %354 to i64
  %402 = sub i64 %47, %401
  %403 = select i1 %377, i64 0, i64 %402
  %404 = tail call i64 @ZSTD_decompressContinue(ptr noundef nonnull %0, ptr noundef %354, i64 noundef %403, ptr noundef %92, i64 noundef %374)
  %405 = icmp ult i64 %404, -119
  br i1 %405, label %406, label %.loopexit

406:                                              ; preds = %400
  %407 = getelementptr inbounds nuw i8, ptr %354, i64 %404
  br label %408

408:                                              ; preds = %406, %397, %394
  %409 = phi ptr [ %354, %397 ], [ %354, %394 ], [ %407, %406 ]
  %410 = phi i32 [ 4, %397 ], [ 2, %394 ], [ 2, %406 ]
  store i32 %410, ptr %44, align 4, !tbaa !121
  %411 = getelementptr inbounds nuw i8, ptr %92, i64 %374
  br label %.peel.begin.outer.backedge

.peel.begin.outer.backedge:                       ; preds = %408, %483
  %.ph165.be = phi ptr [ %447, %483 ], [ %411, %408 ]
  %.ph166.be = phi ptr [ %484, %483 ], [ %409, %408 ]
  br label %.peel.begin.outer, !llvm.loop !138

412:                                              ; preds = %372
  %413 = icmp eq ptr %92, %12
  br i1 %413, label %.loopexit45, label %414

414:                                              ; preds = %412
  store i32 3, ptr %44, align 4, !tbaa !121
  br label %415

415:                                              ; preds = %414, %122
  %416 = phi ptr [ %.ph166, %122 ], [ %354, %414 ]
  %417 = phi i32 [ %124, %122 ], [ %357, %414 ]
  %418 = phi i64 [ %123, %122 ], [ %373, %414 ]
  %419 = load i64, ptr %52, align 8, !tbaa !136
  %420 = sub i64 %418, %419
  %421 = icmp eq i32 %417, 7
  br i1 %421, label %435, label %422

422:                                              ; preds = %415
  %423 = load i64, ptr %85, align 8, !tbaa !21
  %424 = sub i64 %423, %419
  %425 = icmp ugt i64 %420, %424
  br i1 %425, label %.loopexit, label %426

426:                                              ; preds = %422
  %427 = ptrtoint ptr %92 to i64
  %428 = sub i64 %64, %427
  %429 = tail call i64 @llvm.umin.i64(i64 %420, i64 %428)
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %445, label %431

431:                                              ; preds = %426
  %432 = load ptr, ptr %88, align 8, !tbaa !42
  %433 = getelementptr inbounds nuw i8, ptr %432, i64 %419
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %433, ptr readonly align 1 %92, i64 %429, i1 false)
  %434 = load i64, ptr %52, align 8, !tbaa !136
  br label %440

435:                                              ; preds = %415
  %436 = ptrtoint ptr %92 to i64
  %437 = sub i64 %64, %436
  %438 = tail call i64 @llvm.umin.i64(i64 %420, i64 %437)
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %445, label %440

440:                                              ; preds = %435, %431
  %441 = phi i64 [ %434, %431 ], [ %419, %435 ]
  %442 = phi i64 [ %429, %431 ], [ %438, %435 ]
  %443 = getelementptr inbounds nuw i8, ptr %92, i64 %442
  %444 = add i64 %442, %441
  store i64 %444, ptr %52, align 8, !tbaa !136
  br label %445

445:                                              ; preds = %440, %435, %426
  %446 = phi i64 [ %442, %440 ], [ 0, %435 ], [ 0, %426 ]
  %447 = phi ptr [ %443, %440 ], [ %92, %435 ], [ %92, %426 ]
  %448 = icmp ult i64 %446, %420
  br i1 %448, label %.loopexit45, label %449

449:                                              ; preds = %445
  store i64 0, ptr %52, align 8, !tbaa !136
  %450 = load ptr, ptr %88, align 8, !tbaa !42
  %451 = load i32, ptr %73, align 4, !tbaa !108
  %452 = icmp eq i32 %451, 7
  %453 = load i32, ptr %30, align 8, !tbaa !36
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %475

455:                                              ; preds = %449
  br i1 %452, label %456, label %458

456:                                              ; preds = %455
  %457 = load i64, ptr %46, align 8, !tbaa !133
  br label %462

458:                                              ; preds = %455
  %459 = load i64, ptr %49, align 8, !tbaa !22
  %460 = load i64, ptr %46, align 8, !tbaa !133
  %461 = sub i64 %459, %460
  br label %462

462:                                              ; preds = %458, %456
  %463 = phi i64 [ %460, %458 ], [ %457, %456 ]
  %464 = phi i64 [ %461, %458 ], [ 0, %456 ]
  %465 = load ptr, ptr %48, align 8, !tbaa !134
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 %463
  %467 = tail call i64 @ZSTD_decompressContinue(ptr noundef nonnull %0, ptr noundef %466, i64 noundef %464, ptr noundef %450, i64 noundef %418)
  %468 = icmp ult i64 %467, -119
  br i1 %468, label %469, label %.loopexit

469:                                              ; preds = %462
  %470 = icmp ne i64 %467, 0
  %471 = or i1 %452, %470
  br i1 %471, label %472, label %483

472:                                              ; preds = %469
  %473 = load i64, ptr %46, align 8, !tbaa !133
  %474 = add i64 %473, %467
  store i64 %474, ptr %45, align 8, !tbaa !132
  br label %483

475:                                              ; preds = %449
  %476 = ptrtoint ptr %416 to i64
  %477 = sub i64 %47, %476
  %478 = select i1 %452, i64 0, i64 %477
  %479 = tail call i64 @ZSTD_decompressContinue(ptr noundef nonnull %0, ptr noundef %416, i64 noundef %478, ptr noundef %450, i64 noundef %418)
  %480 = icmp ult i64 %479, -119
  br i1 %480, label %481, label %.loopexit

481:                                              ; preds = %475
  %482 = getelementptr inbounds nuw i8, ptr %416, i64 %479
  br label %483

483:                                              ; preds = %481, %472, %469
  %484 = phi ptr [ %416, %472 ], [ %416, %469 ], [ %482, %481 ]
  %485 = phi i32 [ 4, %472 ], [ 2, %469 ], [ 2, %481 ]
  store i32 %485, ptr %44, align 4, !tbaa !121
  br label %.peel.begin.outer.backedge

.loopexit47:                                      ; preds = %369, %216
  %486 = phi ptr [ %220, %216 ], [ %354, %369 ]
  %487 = phi ptr [ %217, %216 ], [ %92, %369 ]
  store i32 0, ptr %44, align 4, !tbaa !121
  br label %.loopexit45

.loopexit45:                                      ; preds = %445, %412, %105, %.loopexit47
  %488 = phi ptr [ %486, %.loopexit47 ], [ %416, %445 ], [ %354, %412 ], [ %109, %105 ]
  %489 = phi ptr [ %487, %.loopexit47 ], [ %447, %445 ], [ %12, %412 ], [ %92, %105 ]
  %490 = load ptr, ptr %2, align 8, !tbaa !125
  %491 = ptrtoint ptr %489 to i64
  %492 = ptrtoint ptr %490 to i64
  %493 = sub i64 %491, %492
  store i64 %493, ptr %7, align 8, !tbaa !127
  %494 = load ptr, ptr %1, align 8, !tbaa !129
  %495 = ptrtoint ptr %488 to i64
  %496 = ptrtoint ptr %494 to i64
  %497 = sub i64 %495, %496
  store i64 %497, ptr %14, align 8, !tbaa !130
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !137
  %498 = icmp eq ptr %489, %9
  %499 = icmp eq ptr %488, %16
  %500 = select i1 %498, i1 %499, i1 false
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 30316
  br i1 %500, label %502, label %514

502:                                              ; preds = %.loopexit45
  %503 = load i32, ptr %501, align 4, !tbaa !26
  %504 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %503, i32 1), !nosanitize !142
  %505 = extractvalue { i32, i1 } %504, 1, !nosanitize !142
  br i1 %505, label %506, label %507, !prof !143, !nosanitize !142

506:                                              ; preds = %502
  tail call void @llvm.ubsantrap(i8 0) #22, !nosanitize !142
  unreachable, !nosanitize !142

507:                                              ; preds = %502
  %508 = extractvalue { i32, i1 } %504, 0, !nosanitize !142
  store i32 %508, ptr %501, align 4, !tbaa !26
  %509 = icmp sgt i32 %508, 15
  br i1 %509, label %510, label %515

510:                                              ; preds = %507
  %511 = icmp samesign eq i64 %15, %18
  br i1 %511, label %.loopexit, label %512

512:                                              ; preds = %510
  %513 = icmp samesign eq i64 %8, %11
  br i1 %513, label %.loopexit, label %515

514:                                              ; preds = %.loopexit45
  store i32 0, ptr %501, align 4, !tbaa !26
  br label %515

515:                                              ; preds = %514, %512, %507
  %516 = load i64, ptr %68, align 8, !tbaa !82
  %517 = icmp eq i64 %516, 0
  br i1 %517, label %518, label %536

518:                                              ; preds = %515
  %519 = load i64, ptr %45, align 8, !tbaa !132
  %520 = load i64, ptr %46, align 8, !tbaa !133
  %521 = icmp eq i64 %519, %520
  %522 = load i32, ptr %54, align 8, !tbaa !144
  %523 = icmp eq i32 %522, 0
  br i1 %521, label %524, label %532

524:                                              ; preds = %518
  br i1 %523, label %.loopexit, label %525

525:                                              ; preds = %524
  %526 = load i64, ptr %7, align 8, !tbaa !127
  %527 = load i64, ptr %10, align 8, !tbaa !128
  %528 = icmp ult i64 %526, %527
  br i1 %528, label %530, label %529

529:                                              ; preds = %525
  store i32 2, ptr %44, align 4, !tbaa !121
  br label %.loopexit

530:                                              ; preds = %525
  %531 = add nuw i64 %526, 1
  store i64 %531, ptr %7, align 8, !tbaa !127
  br label %.loopexit

532:                                              ; preds = %518
  br i1 %523, label %533, label %.loopexit

533:                                              ; preds = %532
  %534 = load i64, ptr %7, align 8, !tbaa !127
  %535 = add i64 %534, -1
  store i64 %535, ptr %7, align 8, !tbaa !127
  store i32 1, ptr %54, align 8, !tbaa !144
  br label %.loopexit

536:                                              ; preds = %515
  %537 = load i32, ptr %73, align 4, !tbaa !108
  %538 = icmp eq i32 %537, 3
  %539 = select i1 %538, i64 3, i64 0
  %540 = load i64, ptr %52, align 8, !tbaa !136
  %541 = sub i64 %516, %540
  %542 = add i64 %541, %539
  br label %.loopexit

.loopexit:                                        ; preds = %167, %.peel.begin, %475, %462, %422, %400, %387, %347, %325, %276, %272, %227, %536, %533, %532, %530, %529, %524, %512, %510, %212, %188, %182, %37, %21, %3
  %543 = phi i64 [ -72, %3 ], [ -70, %21 ], [ -80, %510 ], [ -82, %512 ], [ %542, %536 ], [ 1, %529 ], [ 0, %530 ], [ 0, %524 ], [ 1, %533 ], [ 1, %532 ], [ -104, %37 ], [ %186, %182 ], [ %194, %188 ], [ %214, %212 ], [ %131, %167 ], [ -1, %.peel.begin ], [ %392, %387 ], [ %404, %400 ], [ -70, %227 ], [ -20, %422 ], [ %479, %475 ], [ -64, %347 ], [ -64, %325 ], [ -16, %276 ], [ %274, %272 ], [ %467, %462 ]
  ret i64 %543
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressStream_simpleArgs(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef captures(none) %3, ptr noundef %4, i64 noundef %5, ptr noundef captures(none) %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ZSTD_outBuffer_s, align 8
  %9 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret i64 %16
}

declare i64 @ZSTD_freeDDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

declare i32 @ZSTD_getErrorCode(i64 noundef) local_unnamed_addr #1

declare i32 @ZSTD_XXH64_reset(ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

declare extern_weak void @ZSTD_trace_decompress_end(i64 noundef, ptr noundef) #1

declare i32 @ZSTD_getDictID_fromDDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64(ptr noundef captures(none), i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!84 = !{!6, !15, i64 30004}
!85 = !{!6, !15, i64 30000}
!86 = !{!6, !7, i64 29896}
!87 = !{!6, !7, i64 29904}
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
!117 = !{!6, !7, i64 0}
!118 = !{!6, !7, i64 8}
!119 = !{!6, !7, i64 16}
!120 = !{!6, !10, i64 24}
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
!132 = !{!6, !12, i64 30296}
!133 = !{!6, !12, i64 30288}
!134 = !{!6, !17, i64 30272}
!135 = !{!6, !12, i64 30304}
!136 = !{!6, !12, i64 30256}
!137 = !{i64 0, i64 8, !43, i64 8, i64 8, !50, i64 16, i64 8, !50}
!138 = distinct !{!138, !61}
!139 = !{!6, !15, i64 29948}
!140 = !{!6, !14, i64 29936}
!141 = !{!18, !7, i64 0}
!142 = !{}
!143 = !{!"branch_weights", i32 1, i32 1048575}
!144 = !{!6, !15, i64 30312}
