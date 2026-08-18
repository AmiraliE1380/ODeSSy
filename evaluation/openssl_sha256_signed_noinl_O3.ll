; ModuleID = '../openssl/crypto/sha/sha256.c'
source_filename = "../openssl/crypto/sha/sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@K256 = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SHA224_Init(ptr noundef writeonly captures(none) initializes((0, 112)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %2, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, ptr %0, align 4, !tbaa !5
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, ptr %3, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 28, ptr %4, align 4, !tbaa !9
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SHA256_Init(ptr noundef writeonly captures(none) initializes((0, 112)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %2, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 4, !tbaa !5
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %3, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 32, ptr %4, align 4, !tbaa !9
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @ossl_sha256_192_init(ptr noundef writeonly captures(none) initializes((0, 112)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %2, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 4, !tbaa !5
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %3, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 24, ptr %4, align 4, !tbaa !9
  ret i32 1
}

; Function Attrs: cold minsize nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @SHA224_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %55, label %5, !prof !11

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = trunc i64 %2 to i32
  %9 = shl i32 %8, 3
  %10 = add i32 %7, %9
  %11 = icmp ult i32 %10, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %13 = load i32, ptr %12, align 4, !tbaa !13
  br i1 %11, label %14, label %16, !prof !11

14:                                               ; preds = %5
  %15 = add i32 %13, 1
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ %15, %14 ], [ %13, %5 ]
  %18 = lshr i64 %2, 29
  %19 = trunc i64 %18 to i32
  %20 = add i32 %17, %19
  store i32 %20, ptr %12, align 4, !tbaa !13
  store i32 %10, ptr %6, align 4, !tbaa !12
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %22 = load i32, ptr %21, align 4, !tbaa !14
  %23 = zext i32 %22 to i64
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %39, label %25, !prof !11

25:                                               ; preds = %16
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %27 = icmp ugt i64 %2, 63
  %28 = add nuw nsw i64 %2, %23
  %29 = icmp ugt i64 %28, 63
  %30 = select i1 %27, i1 true, i1 %29
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 %23
  br i1 %30, label %32, label %36

32:                                               ; preds = %25
  %33 = sub nsw i64 64, %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr align 1 %1, i64 %33, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %26, i64 noundef 1)
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 %33
  %35 = sub i64 %2, %33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %26, i8 0, i64 68, i1 false)
  br label %39

36:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr align 1 %1, i64 %2, i1 false)
  %37 = load i32, ptr %21, align 4, !tbaa !14
  %38 = add i32 %37, %8
  store i32 %38, ptr %21, align 4, !tbaa !14
  br label %55

39:                                               ; preds = %32, %16
  %40 = phi i64 [ %35, %32 ], [ %2, %16 ]
  %41 = phi ptr [ %34, %32 ], [ %1, %16 ]
  %42 = icmp ult i64 %40, 64
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = lshr i64 %40, 6
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %41, i64 noundef %44)
  %45 = and i64 %40, -64
  %46 = getelementptr inbounds nuw i8, ptr %41, i64 %45
  %47 = and i64 %40, 63
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i64 [ %47, %43 ], [ %40, %39 ]
  %50 = phi ptr [ %46, %43 ], [ %41, %39 ]
  %51 = icmp eq i64 %49, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %54 = trunc nuw nsw i64 %49 to i32
  store i32 %54, ptr %21, align 4, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %53, ptr align 1 %50, i64 %49, i1 false)
  br label %55

55:                                               ; preds = %3, %36, %48, %52
  ret i32 1
}

; Function Attrs: cold minsize nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @SHA256_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %55, label %5, !prof !11

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = trunc i64 %2 to i32
  %9 = shl i32 %8, 3
  %10 = add i32 %7, %9
  %11 = icmp ult i32 %10, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %13 = load i32, ptr %12, align 4, !tbaa !13
  br i1 %11, label %14, label %16, !prof !11

14:                                               ; preds = %5
  %15 = add i32 %13, 1
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ %15, %14 ], [ %13, %5 ]
  %18 = lshr i64 %2, 29
  %19 = trunc i64 %18 to i32
  %20 = add i32 %17, %19
  store i32 %20, ptr %12, align 4, !tbaa !13
  store i32 %10, ptr %6, align 4, !tbaa !12
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %22 = load i32, ptr %21, align 4, !tbaa !14
  %23 = zext i32 %22 to i64
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %39, label %25, !prof !11

25:                                               ; preds = %16
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %27 = icmp ugt i64 %2, 63
  %28 = add nuw nsw i64 %2, %23
  %29 = icmp ugt i64 %28, 63
  %30 = select i1 %27, i1 true, i1 %29
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 %23
  br i1 %30, label %32, label %36

32:                                               ; preds = %25
  %33 = sub nsw i64 64, %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr align 1 %1, i64 %33, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %26, i64 noundef 1)
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 %33
  %35 = sub i64 %2, %33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %26, i8 0, i64 68, i1 false)
  br label %39

36:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr align 1 %1, i64 %2, i1 false)
  %37 = load i32, ptr %21, align 4, !tbaa !14
  %38 = add i32 %37, %8
  store i32 %38, ptr %21, align 4, !tbaa !14
  br label %55

39:                                               ; preds = %32, %16
  %40 = phi i64 [ %35, %32 ], [ %2, %16 ]
  %41 = phi ptr [ %34, %32 ], [ %1, %16 ]
  %42 = icmp ult i64 %40, 64
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = lshr i64 %40, 6
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %41, i64 noundef %44)
  %45 = and i64 %40, -64
  %46 = getelementptr inbounds nuw i8, ptr %41, i64 %45
  %47 = and i64 %40, 63
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i64 [ %47, %43 ], [ %40, %39 ]
  %50 = phi ptr [ %46, %43 ], [ %41, %39 ]
  %51 = icmp eq i64 %49, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %54 = trunc nuw nsw i64 %49 to i32
  store i32 %54, ptr %21, align 4, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %53, ptr align 1 %50, i64 %49, i1 false)
  br label %55

55:                                               ; preds = %3, %36, %48, %52
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @SHA224_Final(ptr noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @SHA256_Final(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @SHA256_Final(ptr noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %5 = load i32, ptr %4, align 4, !tbaa !14
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 %6
  store i8 -128, ptr %7, align 1, !tbaa !15
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp ugt i32 %5, 55
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 %8
  %12 = sub nsw i64 63, %6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %11, i8 0, i64 %12, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef 1)
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i64 [ 0, %10 ], [ %8, %2 ]
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 %14
  %16 = sub nuw nsw i64 56, %14
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %15, i8 0, i64 %16, i1 false)
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %19 = load i32, ptr %18, align 4, !tbaa !13
  %20 = lshr i32 %19, 24
  %21 = trunc nuw i32 %20 to i8
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 97
  store i8 %21, ptr %17, align 1, !tbaa !15
  %23 = lshr i32 %19, 16
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 98
  store i8 %24, ptr %22, align 1, !tbaa !15
  %26 = lshr i32 %19, 8
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 99
  store i8 %27, ptr %25, align 1, !tbaa !15
  %29 = trunc i32 %19 to i8
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 %29, ptr %28, align 1, !tbaa !15
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %32 = load i32, ptr %31, align 4, !tbaa !12
  %33 = lshr i32 %32, 24
  %34 = trunc nuw i32 %33 to i8
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 101
  store i8 %34, ptr %30, align 1, !tbaa !15
  %36 = lshr i32 %32, 16
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 102
  store i8 %37, ptr %35, align 1, !tbaa !15
  %39 = lshr i32 %32, 8
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 103
  store i8 %40, ptr %38, align 1, !tbaa !15
  %42 = trunc i32 %32 to i8
  store i8 %42, ptr %41, align 1, !tbaa !15
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef 1)
  store i32 0, ptr %4, align 4, !tbaa !14
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %3, i64 noundef 64) #9
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 108
  %44 = load i32, ptr %43, align 4, !tbaa !9
  switch i32 %44, label %315 [
    i32 24, label %238
    i32 28, label %148
    i32 32, label %45
  ]

45:                                               ; preds = %13
  %46 = load i32, ptr %1, align 4, !tbaa !5
  %47 = lshr i32 %46, 24
  %48 = trunc nuw i32 %47 to i8
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %48, ptr %0, align 1, !tbaa !15
  %50 = lshr i32 %46, 16
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %51, ptr %49, align 1, !tbaa !15
  %53 = lshr i32 %46, 8
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %54, ptr %52, align 1, !tbaa !15
  %56 = trunc i32 %46 to i8
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %56, ptr %55, align 1, !tbaa !15
  %58 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %59 = load i32, ptr %58, align 4, !tbaa !5
  %60 = lshr i32 %59, 24
  %61 = trunc nuw i32 %60 to i8
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %61, ptr %57, align 1, !tbaa !15
  %63 = lshr i32 %59, 16
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %64, ptr %62, align 1, !tbaa !15
  %66 = lshr i32 %59, 8
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %67, ptr %65, align 1, !tbaa !15
  %69 = trunc i32 %59 to i8
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %69, ptr %68, align 1, !tbaa !15
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %72 = load i32, ptr %71, align 4, !tbaa !5
  %73 = lshr i32 %72, 24
  %74 = trunc nuw i32 %73 to i8
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %74, ptr %70, align 1, !tbaa !15
  %76 = lshr i32 %72, 16
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %77, ptr %75, align 1, !tbaa !15
  %79 = lshr i32 %72, 8
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %80, ptr %78, align 1, !tbaa !15
  %82 = trunc i32 %72 to i8
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %82, ptr %81, align 1, !tbaa !15
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %85 = load i32, ptr %84, align 4, !tbaa !5
  %86 = lshr i32 %85, 24
  %87 = trunc nuw i32 %86 to i8
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %87, ptr %83, align 1, !tbaa !15
  %89 = lshr i32 %85, 16
  %90 = trunc i32 %89 to i8
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %90, ptr %88, align 1, !tbaa !15
  %92 = lshr i32 %85, 8
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %93, ptr %91, align 1, !tbaa !15
  %95 = trunc i32 %85 to i8
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %95, ptr %94, align 1, !tbaa !15
  %97 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %98 = load i32, ptr %97, align 4, !tbaa !5
  %99 = lshr i32 %98, 24
  %100 = trunc nuw i32 %99 to i8
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %100, ptr %96, align 1, !tbaa !15
  %102 = lshr i32 %98, 16
  %103 = trunc i32 %102 to i8
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %103, ptr %101, align 1, !tbaa !15
  %105 = lshr i32 %98, 8
  %106 = trunc i32 %105 to i8
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %106, ptr %104, align 1, !tbaa !15
  %108 = trunc i32 %98 to i8
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %108, ptr %107, align 1, !tbaa !15
  %110 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %111 = load i32, ptr %110, align 4, !tbaa !5
  %112 = lshr i32 %111, 24
  %113 = trunc nuw i32 %112 to i8
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %113, ptr %109, align 1, !tbaa !15
  %115 = lshr i32 %111, 16
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %116, ptr %114, align 1, !tbaa !15
  %118 = lshr i32 %111, 8
  %119 = trunc i32 %118 to i8
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %119, ptr %117, align 1, !tbaa !15
  %121 = trunc i32 %111 to i8
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %121, ptr %120, align 1, !tbaa !15
  %123 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %124 = load i32, ptr %123, align 4, !tbaa !5
  %125 = lshr i32 %124, 24
  %126 = trunc nuw i32 %125 to i8
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %126, ptr %122, align 1, !tbaa !15
  %128 = lshr i32 %124, 16
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %129, ptr %127, align 1, !tbaa !15
  %131 = lshr i32 %124, 8
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %132, ptr %130, align 1, !tbaa !15
  %134 = trunc i32 %124 to i8
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %134, ptr %133, align 1, !tbaa !15
  %136 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %137 = load i32, ptr %136, align 4, !tbaa !5
  %138 = lshr i32 %137, 24
  %139 = trunc nuw i32 %138 to i8
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %139, ptr %135, align 1, !tbaa !15
  %141 = lshr i32 %137, 16
  %142 = trunc i32 %141 to i8
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %142, ptr %140, align 1, !tbaa !15
  %144 = lshr i32 %137, 8
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %145, ptr %143, align 1, !tbaa !15
  %147 = trunc i32 %137 to i8
  store i8 %147, ptr %146, align 1, !tbaa !15
  br label %340

148:                                              ; preds = %13
  %149 = load i32, ptr %1, align 4, !tbaa !5
  %150 = lshr i32 %149, 24
  %151 = trunc nuw i32 %150 to i8
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %151, ptr %0, align 1, !tbaa !15
  %153 = lshr i32 %149, 16
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %154, ptr %152, align 1, !tbaa !15
  %156 = lshr i32 %149, 8
  %157 = trunc i32 %156 to i8
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %157, ptr %155, align 1, !tbaa !15
  %159 = trunc i32 %149 to i8
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %159, ptr %158, align 1, !tbaa !15
  %161 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %162 = load i32, ptr %161, align 4, !tbaa !5
  %163 = lshr i32 %162, 24
  %164 = trunc nuw i32 %163 to i8
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %164, ptr %160, align 1, !tbaa !15
  %166 = lshr i32 %162, 16
  %167 = trunc i32 %166 to i8
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %167, ptr %165, align 1, !tbaa !15
  %169 = lshr i32 %162, 8
  %170 = trunc i32 %169 to i8
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %170, ptr %168, align 1, !tbaa !15
  %172 = trunc i32 %162 to i8
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %172, ptr %171, align 1, !tbaa !15
  %174 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %175 = load i32, ptr %174, align 4, !tbaa !5
  %176 = lshr i32 %175, 24
  %177 = trunc nuw i32 %176 to i8
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %177, ptr %173, align 1, !tbaa !15
  %179 = lshr i32 %175, 16
  %180 = trunc i32 %179 to i8
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %180, ptr %178, align 1, !tbaa !15
  %182 = lshr i32 %175, 8
  %183 = trunc i32 %182 to i8
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %183, ptr %181, align 1, !tbaa !15
  %185 = trunc i32 %175 to i8
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %185, ptr %184, align 1, !tbaa !15
  %187 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %188 = load i32, ptr %187, align 4, !tbaa !5
  %189 = lshr i32 %188, 24
  %190 = trunc nuw i32 %189 to i8
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %190, ptr %186, align 1, !tbaa !15
  %192 = lshr i32 %188, 16
  %193 = trunc i32 %192 to i8
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %193, ptr %191, align 1, !tbaa !15
  %195 = lshr i32 %188, 8
  %196 = trunc i32 %195 to i8
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %196, ptr %194, align 1, !tbaa !15
  %198 = trunc i32 %188 to i8
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %198, ptr %197, align 1, !tbaa !15
  %200 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %201 = load i32, ptr %200, align 4, !tbaa !5
  %202 = lshr i32 %201, 24
  %203 = trunc nuw i32 %202 to i8
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %203, ptr %199, align 1, !tbaa !15
  %205 = lshr i32 %201, 16
  %206 = trunc i32 %205 to i8
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %206, ptr %204, align 1, !tbaa !15
  %208 = lshr i32 %201, 8
  %209 = trunc i32 %208 to i8
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %209, ptr %207, align 1, !tbaa !15
  %211 = trunc i32 %201 to i8
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %211, ptr %210, align 1, !tbaa !15
  %213 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %214 = load i32, ptr %213, align 4, !tbaa !5
  %215 = lshr i32 %214, 24
  %216 = trunc nuw i32 %215 to i8
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %216, ptr %212, align 1, !tbaa !15
  %218 = lshr i32 %214, 16
  %219 = trunc i32 %218 to i8
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %219, ptr %217, align 1, !tbaa !15
  %221 = lshr i32 %214, 8
  %222 = trunc i32 %221 to i8
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %222, ptr %220, align 1, !tbaa !15
  %224 = trunc i32 %214 to i8
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %224, ptr %223, align 1, !tbaa !15
  %226 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %227 = load i32, ptr %226, align 4, !tbaa !5
  %228 = lshr i32 %227, 24
  %229 = trunc nuw i32 %228 to i8
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %229, ptr %225, align 1, !tbaa !15
  %231 = lshr i32 %227, 16
  %232 = trunc i32 %231 to i8
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %232, ptr %230, align 1, !tbaa !15
  %234 = lshr i32 %227, 8
  %235 = trunc i32 %234 to i8
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %235, ptr %233, align 1, !tbaa !15
  %237 = trunc i32 %227 to i8
  store i8 %237, ptr %236, align 1, !tbaa !15
  br label %340

238:                                              ; preds = %13
  %239 = load i32, ptr %1, align 4, !tbaa !5
  %240 = lshr i32 %239, 24
  %241 = trunc nuw i32 %240 to i8
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %241, ptr %0, align 1, !tbaa !15
  %243 = lshr i32 %239, 16
  %244 = trunc i32 %243 to i8
  %245 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %244, ptr %242, align 1, !tbaa !15
  %246 = lshr i32 %239, 8
  %247 = trunc i32 %246 to i8
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %247, ptr %245, align 1, !tbaa !15
  %249 = trunc i32 %239 to i8
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %249, ptr %248, align 1, !tbaa !15
  %251 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %252 = load i32, ptr %251, align 4, !tbaa !5
  %253 = lshr i32 %252, 24
  %254 = trunc nuw i32 %253 to i8
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %254, ptr %250, align 1, !tbaa !15
  %256 = lshr i32 %252, 16
  %257 = trunc i32 %256 to i8
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %257, ptr %255, align 1, !tbaa !15
  %259 = lshr i32 %252, 8
  %260 = trunc i32 %259 to i8
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %260, ptr %258, align 1, !tbaa !15
  %262 = trunc i32 %252 to i8
  %263 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %262, ptr %261, align 1, !tbaa !15
  %264 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %265 = load i32, ptr %264, align 4, !tbaa !5
  %266 = lshr i32 %265, 24
  %267 = trunc nuw i32 %266 to i8
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %267, ptr %263, align 1, !tbaa !15
  %269 = lshr i32 %265, 16
  %270 = trunc i32 %269 to i8
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %270, ptr %268, align 1, !tbaa !15
  %272 = lshr i32 %265, 8
  %273 = trunc i32 %272 to i8
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %273, ptr %271, align 1, !tbaa !15
  %275 = trunc i32 %265 to i8
  %276 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %275, ptr %274, align 1, !tbaa !15
  %277 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %278 = load i32, ptr %277, align 4, !tbaa !5
  %279 = lshr i32 %278, 24
  %280 = trunc nuw i32 %279 to i8
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %280, ptr %276, align 1, !tbaa !15
  %282 = lshr i32 %278, 16
  %283 = trunc i32 %282 to i8
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %283, ptr %281, align 1, !tbaa !15
  %285 = lshr i32 %278, 8
  %286 = trunc i32 %285 to i8
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %286, ptr %284, align 1, !tbaa !15
  %288 = trunc i32 %278 to i8
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %288, ptr %287, align 1, !tbaa !15
  %290 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %291 = load i32, ptr %290, align 4, !tbaa !5
  %292 = lshr i32 %291, 24
  %293 = trunc nuw i32 %292 to i8
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %293, ptr %289, align 1, !tbaa !15
  %295 = lshr i32 %291, 16
  %296 = trunc i32 %295 to i8
  %297 = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %296, ptr %294, align 1, !tbaa !15
  %298 = lshr i32 %291, 8
  %299 = trunc i32 %298 to i8
  %300 = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %299, ptr %297, align 1, !tbaa !15
  %301 = trunc i32 %291 to i8
  %302 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %301, ptr %300, align 1, !tbaa !15
  %303 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %304 = load i32, ptr %303, align 4, !tbaa !5
  %305 = lshr i32 %304, 24
  %306 = trunc nuw i32 %305 to i8
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %306, ptr %302, align 1, !tbaa !15
  %308 = lshr i32 %304, 16
  %309 = trunc i32 %308 to i8
  %310 = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %309, ptr %307, align 1, !tbaa !15
  %311 = lshr i32 %304, 8
  %312 = trunc i32 %311 to i8
  %313 = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %312, ptr %310, align 1, !tbaa !15
  %314 = trunc i32 %304 to i8
  store i8 %314, ptr %313, align 1, !tbaa !15
  br label %340

315:                                              ; preds = %13
  %316 = icmp ugt i32 %44, 32
  br i1 %316, label %340, label %317

317:                                              ; preds = %315
  %318 = icmp samesign ult i32 %44, 4
  br i1 %318, label %340, label %319

319:                                              ; preds = %317, %319
  %320 = phi i64 [ %335, %319 ], [ 0, %317 ]
  %321 = phi ptr [ %334, %319 ], [ %0, %317 ]
  %322 = getelementptr inbounds nuw [8 x i32], ptr %1, i64 0, i64 %320
  %323 = load i32, ptr %322, align 4, !tbaa !5
  %324 = lshr i32 %323, 24
  %325 = trunc nuw i32 %324 to i8
  %326 = getelementptr inbounds nuw i8, ptr %321, i64 1
  store i8 %325, ptr %321, align 1, !tbaa !15
  %327 = lshr i32 %323, 16
  %328 = trunc i32 %327 to i8
  %329 = getelementptr inbounds nuw i8, ptr %321, i64 2
  store i8 %328, ptr %326, align 1, !tbaa !15
  %330 = lshr i32 %323, 8
  %331 = trunc i32 %330 to i8
  %332 = getelementptr inbounds nuw i8, ptr %321, i64 3
  store i8 %331, ptr %329, align 1, !tbaa !15
  %333 = trunc i32 %323 to i8
  %334 = getelementptr inbounds nuw i8, ptr %321, i64 4
  store i8 %333, ptr %332, align 1, !tbaa !15
  %335 = add nuw nsw i64 %320, 1
  %336 = load i32, ptr %43, align 4, !tbaa !9
  %337 = lshr i32 %336, 2
  %338 = zext nneg i32 %337 to i64
  %339 = icmp samesign ult i64 %335, %338
  br i1 %339, label %319, label %340, !llvm.loop !16

340:                                              ; preds = %319, %45, %148, %238, %317, %315
  %341 = phi i32 [ 0, %315 ], [ 1, %317 ], [ 1, %238 ], [ 1, %148 ], [ 1, %45 ], [ 1, %319 ]
  ret i32 %341
}

; Function Attrs: cold minsize nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @SHA256_Update_thunk(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %56, label %5, !prof !11

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = trunc i64 %2 to i32
  %9 = shl i32 %8, 3
  %10 = add i32 %7, %9
  %11 = icmp ult i32 %10, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %13 = load i32, ptr %12, align 4, !tbaa !13
  br i1 %11, label %14, label %16, !prof !11

14:                                               ; preds = %5
  %15 = add i32 %13, 1
  br label %16

16:                                               ; preds = %5, %14
  %17 = phi i32 [ %15, %14 ], [ %13, %5 ]
  %18 = lshr i64 %2, 29
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %21 = add i32 %17, %19
  store i32 %21, ptr %20, align 4, !tbaa !13
  store i32 %10, ptr %6, align 4, !tbaa !12
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %23 = load i32, ptr %22, align 4, !tbaa !14
  %24 = zext i32 %23 to i64
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %40, label %26, !prof !11

26:                                               ; preds = %16
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %28 = icmp ugt i64 %2, 63
  %29 = add nuw nsw i64 %2, %24
  %30 = icmp ugt i64 %29, 63
  %31 = select i1 %28, i1 true, i1 %30
  %32 = getelementptr inbounds nuw i8, ptr %27, i64 %24
  br i1 %31, label %33, label %37

33:                                               ; preds = %26
  %34 = sub nsw i64 64, %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr align 1 %1, i64 %34, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %27, i64 noundef 1)
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 %34
  %36 = sub i64 %2, %34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %27, i8 0, i64 68, i1 false)
  br label %40

37:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr align 1 %1, i64 %2, i1 false)
  %38 = load i32, ptr %22, align 4, !tbaa !14
  %39 = add i32 %38, %8
  store i32 %39, ptr %22, align 4, !tbaa !14
  br label %56

40:                                               ; preds = %33, %16
  %41 = phi i64 [ %36, %33 ], [ %2, %16 ]
  %42 = phi ptr [ %35, %33 ], [ %1, %16 ]
  %43 = icmp ult i64 %41, 64
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = lshr i64 %41, 6
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %42, i64 noundef %45)
  %46 = and i64 %41, -64
  %47 = getelementptr inbounds nuw i8, ptr %42, i64 %46
  %48 = and i64 %41, 63
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i64 [ %48, %44 ], [ %41, %40 ]
  %51 = phi ptr [ %47, %44 ], [ %42, %40 ]
  %52 = icmp eq i64 %50, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %55 = trunc nuw nsw i64 %50 to i32
  store i32 %55, ptr %22, align 4, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %54, ptr align 1 %51, i64 %50, i1 false)
  br label %56

56:                                               ; preds = %49, %53, %3, %37
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha256_block_data_order(ptr noundef captures(none) %0, ptr noundef readonly %1, i64 noundef range(i64 1, 288230376151711744) %2) unnamed_addr #6 {
  %4 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 36
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 44
  %23 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 52
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 60
  %27 = load i32, ptr %0, align 4, !tbaa !5
  %28 = load i32, ptr %5, align 4, !tbaa !5
  %29 = load i32, ptr %6, align 4, !tbaa !5
  %30 = load i32, ptr %7, align 4, !tbaa !5
  %31 = load i32, ptr %8, align 4, !tbaa !5
  %32 = load i32, ptr %9, align 4, !tbaa !5
  %33 = load i32, ptr %10, align 4, !tbaa !5
  %34 = load i32, ptr %11, align 4, !tbaa !5
  br label %35

35:                                               ; preds = %3, %1128
  %36 = phi i64 [ %2, %3 ], [ %1129, %1128 ]
  %37 = phi ptr [ %1, %3 ], [ %1130, %1128 ]
  %38 = phi i32 [ %27, %3 ], [ %1131, %1128 ]
  %39 = phi i32 [ %28, %3 ], [ %1132, %1128 ]
  %40 = phi i32 [ %29, %3 ], [ %1133, %1128 ]
  %41 = phi i32 [ %30, %3 ], [ %1134, %1128 ]
  %42 = phi i32 [ %31, %3 ], [ %1135, %1128 ]
  %43 = phi i32 [ %32, %3 ], [ %1136, %1128 ]
  %44 = phi i32 [ %33, %3 ], [ %1137, %1128 ]
  %45 = phi i32 [ %34, %3 ], [ %1138, %1128 ]
  %46 = getelementptr inbounds nuw i8, ptr %37, i64 1
  %47 = load i8, ptr %37, align 1, !tbaa !15
  %48 = zext i8 %47 to i32
  %49 = shl nuw i32 %48, 24
  %50 = getelementptr inbounds nuw i8, ptr %37, i64 2
  %51 = load i8, ptr %46, align 1, !tbaa !15
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 16
  %54 = or disjoint i32 %53, %49
  %55 = getelementptr inbounds nuw i8, ptr %37, i64 3
  %56 = load i8, ptr %50, align 1, !tbaa !15
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = or disjoint i32 %54, %58
  %60 = getelementptr inbounds nuw i8, ptr %37, i64 4
  %61 = load i8, ptr %55, align 1, !tbaa !15
  %62 = zext i8 %61 to i32
  %63 = or disjoint i32 %59, %62
  store i32 %63, ptr %4, align 16, !tbaa !5
  %64 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 26)
  %65 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 21)
  %66 = xor i32 %64, %65
  %67 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 7)
  %68 = xor i32 %66, %67
  %69 = and i32 %43, %42
  %70 = xor i32 %42, -1
  %71 = and i32 %44, %70
  %72 = or i32 %71, %69
  %73 = add i32 %68, 1116352408
  %74 = add i32 %73, %45
  %75 = add i32 %74, %72
  %76 = add i32 %75, %63
  %77 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 30)
  %78 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 19)
  %79 = xor i32 %77, %78
  %80 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 10)
  %81 = xor i32 %79, %80
  %82 = and i32 %39, %38
  %83 = xor i32 %40, %39
  %84 = and i32 %83, %38
  %85 = and i32 %40, %39
  %86 = xor i32 %84, %85
  %87 = add i32 %86, %81
  %88 = add i32 %76, %41
  %89 = add i32 %87, %76
  %90 = getelementptr inbounds nuw i8, ptr %37, i64 5
  %91 = load i8, ptr %60, align 1, !tbaa !15
  %92 = zext i8 %91 to i32
  %93 = shl nuw i32 %92, 24
  %94 = getelementptr inbounds nuw i8, ptr %37, i64 6
  %95 = load i8, ptr %90, align 1, !tbaa !15
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 16
  %98 = or disjoint i32 %97, %93
  %99 = getelementptr inbounds nuw i8, ptr %37, i64 7
  %100 = load i8, ptr %94, align 1, !tbaa !15
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 8
  %103 = or disjoint i32 %98, %102
  %104 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %105 = load i8, ptr %99, align 1, !tbaa !15
  %106 = zext i8 %105 to i32
  %107 = or disjoint i32 %103, %106
  store i32 %107, ptr %12, align 4, !tbaa !5
  %108 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 26)
  %109 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 21)
  %110 = xor i32 %108, %109
  %111 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 7)
  %112 = xor i32 %110, %111
  %113 = and i32 %88, %42
  %114 = xor i32 %88, -1
  %115 = and i32 %43, %114
  %116 = or i32 %113, %115
  %117 = add i32 %44, 1899447441
  %118 = add i32 %117, %116
  %119 = add i32 %118, %112
  %120 = add i32 %119, %107
  %121 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 30)
  %122 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 19)
  %123 = xor i32 %121, %122
  %124 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 10)
  %125 = xor i32 %123, %124
  %126 = and i32 %89, %38
  %127 = xor i32 %39, %38
  %128 = and i32 %89, %127
  %129 = xor i32 %128, %82
  %130 = add i32 %125, %129
  %131 = add i32 %120, %40
  %132 = add i32 %130, %120
  %133 = getelementptr inbounds nuw i8, ptr %37, i64 9
  %134 = load i8, ptr %104, align 1, !tbaa !15
  %135 = zext i8 %134 to i32
  %136 = shl nuw i32 %135, 24
  %137 = getelementptr inbounds nuw i8, ptr %37, i64 10
  %138 = load i8, ptr %133, align 1, !tbaa !15
  %139 = zext i8 %138 to i32
  %140 = shl nuw nsw i32 %139, 16
  %141 = or disjoint i32 %140, %136
  %142 = getelementptr inbounds nuw i8, ptr %37, i64 11
  %143 = load i8, ptr %137, align 1, !tbaa !15
  %144 = zext i8 %143 to i32
  %145 = shl nuw nsw i32 %144, 8
  %146 = or disjoint i32 %141, %145
  %147 = getelementptr inbounds nuw i8, ptr %37, i64 12
  %148 = load i8, ptr %142, align 1, !tbaa !15
  %149 = zext i8 %148 to i32
  %150 = or disjoint i32 %146, %149
  store i32 %150, ptr %13, align 8, !tbaa !5
  %151 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 26)
  %152 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 21)
  %153 = xor i32 %151, %152
  %154 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 7)
  %155 = xor i32 %153, %154
  %156 = and i32 %131, %88
  %157 = xor i32 %131, -1
  %158 = and i32 %42, %157
  %159 = or i32 %156, %158
  %160 = add i32 %43, -1245643825
  %161 = add i32 %160, %150
  %162 = add i32 %161, %159
  %163 = add i32 %162, %155
  %164 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 30)
  %165 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 19)
  %166 = xor i32 %164, %165
  %167 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 10)
  %168 = xor i32 %166, %167
  %169 = and i32 %132, %89
  %170 = xor i32 %89, %38
  %171 = and i32 %132, %170
  %172 = xor i32 %171, %126
  %173 = add i32 %168, %172
  %174 = add i32 %163, %39
  %175 = add i32 %173, %163
  %176 = getelementptr inbounds nuw i8, ptr %37, i64 13
  %177 = load i8, ptr %147, align 1, !tbaa !15
  %178 = zext i8 %177 to i32
  %179 = shl nuw i32 %178, 24
  %180 = getelementptr inbounds nuw i8, ptr %37, i64 14
  %181 = load i8, ptr %176, align 1, !tbaa !15
  %182 = zext i8 %181 to i32
  %183 = shl nuw nsw i32 %182, 16
  %184 = or disjoint i32 %183, %179
  %185 = getelementptr inbounds nuw i8, ptr %37, i64 15
  %186 = load i8, ptr %180, align 1, !tbaa !15
  %187 = zext i8 %186 to i32
  %188 = shl nuw nsw i32 %187, 8
  %189 = or disjoint i32 %184, %188
  %190 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %191 = load i8, ptr %185, align 1, !tbaa !15
  %192 = zext i8 %191 to i32
  %193 = or disjoint i32 %189, %192
  store i32 %193, ptr %14, align 4, !tbaa !5
  %194 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 26)
  %195 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 21)
  %196 = xor i32 %194, %195
  %197 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 7)
  %198 = xor i32 %196, %197
  %199 = and i32 %174, %131
  %200 = xor i32 %174, -1
  %201 = and i32 %88, %200
  %202 = or i32 %199, %201
  %203 = add i32 %42, -373957723
  %204 = add i32 %203, %193
  %205 = add i32 %204, %202
  %206 = add i32 %205, %198
  %207 = tail call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 30)
  %208 = tail call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 19)
  %209 = xor i32 %207, %208
  %210 = tail call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 10)
  %211 = xor i32 %209, %210
  %212 = and i32 %175, %132
  %213 = xor i32 %132, %89
  %214 = and i32 %175, %213
  %215 = xor i32 %214, %169
  %216 = add i32 %211, %215
  %217 = add i32 %206, %38
  %218 = add i32 %216, %206
  %219 = getelementptr inbounds nuw i8, ptr %37, i64 17
  %220 = load i8, ptr %190, align 1, !tbaa !15
  %221 = zext i8 %220 to i32
  %222 = shl nuw i32 %221, 24
  %223 = getelementptr inbounds nuw i8, ptr %37, i64 18
  %224 = load i8, ptr %219, align 1, !tbaa !15
  %225 = zext i8 %224 to i32
  %226 = shl nuw nsw i32 %225, 16
  %227 = or disjoint i32 %226, %222
  %228 = getelementptr inbounds nuw i8, ptr %37, i64 19
  %229 = load i8, ptr %223, align 1, !tbaa !15
  %230 = zext i8 %229 to i32
  %231 = shl nuw nsw i32 %230, 8
  %232 = or disjoint i32 %227, %231
  %233 = getelementptr inbounds nuw i8, ptr %37, i64 20
  %234 = load i8, ptr %228, align 1, !tbaa !15
  %235 = zext i8 %234 to i32
  %236 = or disjoint i32 %232, %235
  store i32 %236, ptr %15, align 16, !tbaa !5
  %237 = tail call i32 @llvm.fshl.i32(i32 %217, i32 %217, i32 26)
  %238 = tail call i32 @llvm.fshl.i32(i32 %217, i32 %217, i32 21)
  %239 = xor i32 %237, %238
  %240 = tail call i32 @llvm.fshl.i32(i32 %217, i32 %217, i32 7)
  %241 = xor i32 %239, %240
  %242 = and i32 %217, %174
  %243 = xor i32 %217, -1
  %244 = and i32 %131, %243
  %245 = or i32 %242, %244
  %246 = add i32 %88, 961987163
  %247 = add i32 %246, %236
  %248 = add i32 %247, %245
  %249 = add i32 %248, %241
  %250 = tail call i32 @llvm.fshl.i32(i32 %218, i32 %218, i32 30)
  %251 = tail call i32 @llvm.fshl.i32(i32 %218, i32 %218, i32 19)
  %252 = xor i32 %250, %251
  %253 = tail call i32 @llvm.fshl.i32(i32 %218, i32 %218, i32 10)
  %254 = xor i32 %252, %253
  %255 = and i32 %218, %175
  %256 = xor i32 %175, %132
  %257 = and i32 %218, %256
  %258 = xor i32 %257, %212
  %259 = add i32 %254, %258
  %260 = add i32 %249, %89
  %261 = add i32 %259, %249
  %262 = getelementptr inbounds nuw i8, ptr %37, i64 21
  %263 = load i8, ptr %233, align 1, !tbaa !15
  %264 = zext i8 %263 to i32
  %265 = shl nuw i32 %264, 24
  %266 = getelementptr inbounds nuw i8, ptr %37, i64 22
  %267 = load i8, ptr %262, align 1, !tbaa !15
  %268 = zext i8 %267 to i32
  %269 = shl nuw nsw i32 %268, 16
  %270 = or disjoint i32 %269, %265
  %271 = getelementptr inbounds nuw i8, ptr %37, i64 23
  %272 = load i8, ptr %266, align 1, !tbaa !15
  %273 = zext i8 %272 to i32
  %274 = shl nuw nsw i32 %273, 8
  %275 = or disjoint i32 %270, %274
  %276 = getelementptr inbounds nuw i8, ptr %37, i64 24
  %277 = load i8, ptr %271, align 1, !tbaa !15
  %278 = zext i8 %277 to i32
  %279 = or disjoint i32 %275, %278
  store i32 %279, ptr %16, align 4, !tbaa !5
  %280 = tail call i32 @llvm.fshl.i32(i32 %260, i32 %260, i32 26)
  %281 = tail call i32 @llvm.fshl.i32(i32 %260, i32 %260, i32 21)
  %282 = xor i32 %280, %281
  %283 = tail call i32 @llvm.fshl.i32(i32 %260, i32 %260, i32 7)
  %284 = xor i32 %282, %283
  %285 = and i32 %260, %217
  %286 = xor i32 %260, -1
  %287 = and i32 %174, %286
  %288 = or i32 %285, %287
  %289 = add i32 %131, 1508970993
  %290 = add i32 %289, %279
  %291 = add i32 %290, %288
  %292 = add i32 %291, %284
  %293 = tail call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 30)
  %294 = tail call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 19)
  %295 = xor i32 %293, %294
  %296 = tail call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 10)
  %297 = xor i32 %295, %296
  %298 = and i32 %261, %218
  %299 = xor i32 %218, %175
  %300 = and i32 %261, %299
  %301 = xor i32 %300, %255
  %302 = add i32 %297, %301
  %303 = add i32 %292, %132
  %304 = add i32 %302, %292
  %305 = getelementptr inbounds nuw i8, ptr %37, i64 25
  %306 = load i8, ptr %276, align 1, !tbaa !15
  %307 = zext i8 %306 to i32
  %308 = shl nuw i32 %307, 24
  %309 = getelementptr inbounds nuw i8, ptr %37, i64 26
  %310 = load i8, ptr %305, align 1, !tbaa !15
  %311 = zext i8 %310 to i32
  %312 = shl nuw nsw i32 %311, 16
  %313 = or disjoint i32 %312, %308
  %314 = getelementptr inbounds nuw i8, ptr %37, i64 27
  %315 = load i8, ptr %309, align 1, !tbaa !15
  %316 = zext i8 %315 to i32
  %317 = shl nuw nsw i32 %316, 8
  %318 = or disjoint i32 %313, %317
  %319 = getelementptr inbounds nuw i8, ptr %37, i64 28
  %320 = load i8, ptr %314, align 1, !tbaa !15
  %321 = zext i8 %320 to i32
  %322 = or disjoint i32 %318, %321
  store i32 %322, ptr %17, align 8, !tbaa !5
  %323 = tail call i32 @llvm.fshl.i32(i32 %303, i32 %303, i32 26)
  %324 = tail call i32 @llvm.fshl.i32(i32 %303, i32 %303, i32 21)
  %325 = xor i32 %323, %324
  %326 = tail call i32 @llvm.fshl.i32(i32 %303, i32 %303, i32 7)
  %327 = xor i32 %325, %326
  %328 = and i32 %303, %260
  %329 = xor i32 %303, -1
  %330 = and i32 %217, %329
  %331 = or i32 %328, %330
  %332 = add i32 %174, -1841331548
  %333 = add i32 %332, %322
  %334 = add i32 %333, %331
  %335 = add i32 %334, %327
  %336 = tail call i32 @llvm.fshl.i32(i32 %304, i32 %304, i32 30)
  %337 = tail call i32 @llvm.fshl.i32(i32 %304, i32 %304, i32 19)
  %338 = xor i32 %336, %337
  %339 = tail call i32 @llvm.fshl.i32(i32 %304, i32 %304, i32 10)
  %340 = xor i32 %338, %339
  %341 = and i32 %304, %261
  %342 = xor i32 %261, %218
  %343 = and i32 %304, %342
  %344 = xor i32 %343, %298
  %345 = add i32 %340, %344
  %346 = add i32 %335, %175
  %347 = add i32 %345, %335
  %348 = getelementptr inbounds nuw i8, ptr %37, i64 29
  %349 = load i8, ptr %319, align 1, !tbaa !15
  %350 = zext i8 %349 to i32
  %351 = shl nuw i32 %350, 24
  %352 = getelementptr inbounds nuw i8, ptr %37, i64 30
  %353 = load i8, ptr %348, align 1, !tbaa !15
  %354 = zext i8 %353 to i32
  %355 = shl nuw nsw i32 %354, 16
  %356 = or disjoint i32 %355, %351
  %357 = getelementptr inbounds nuw i8, ptr %37, i64 31
  %358 = load i8, ptr %352, align 1, !tbaa !15
  %359 = zext i8 %358 to i32
  %360 = shl nuw nsw i32 %359, 8
  %361 = or disjoint i32 %356, %360
  %362 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %363 = load i8, ptr %357, align 1, !tbaa !15
  %364 = zext i8 %363 to i32
  %365 = or disjoint i32 %361, %364
  store i32 %365, ptr %18, align 4, !tbaa !5
  %366 = tail call i32 @llvm.fshl.i32(i32 %346, i32 %346, i32 26)
  %367 = tail call i32 @llvm.fshl.i32(i32 %346, i32 %346, i32 21)
  %368 = xor i32 %366, %367
  %369 = tail call i32 @llvm.fshl.i32(i32 %346, i32 %346, i32 7)
  %370 = xor i32 %368, %369
  %371 = and i32 %346, %303
  %372 = xor i32 %346, -1
  %373 = and i32 %260, %372
  %374 = or i32 %371, %373
  %375 = add i32 %217, -1424204075
  %376 = add i32 %375, %365
  %377 = add i32 %376, %374
  %378 = add i32 %377, %370
  %379 = tail call i32 @llvm.fshl.i32(i32 %347, i32 %347, i32 30)
  %380 = tail call i32 @llvm.fshl.i32(i32 %347, i32 %347, i32 19)
  %381 = xor i32 %379, %380
  %382 = tail call i32 @llvm.fshl.i32(i32 %347, i32 %347, i32 10)
  %383 = xor i32 %381, %382
  %384 = and i32 %347, %304
  %385 = xor i32 %304, %261
  %386 = and i32 %347, %385
  %387 = xor i32 %386, %341
  %388 = add i32 %383, %387
  %389 = add i32 %378, %218
  %390 = add i32 %388, %378
  %391 = getelementptr inbounds nuw i8, ptr %37, i64 33
  %392 = load i8, ptr %362, align 1, !tbaa !15
  %393 = zext i8 %392 to i32
  %394 = shl nuw i32 %393, 24
  %395 = getelementptr inbounds nuw i8, ptr %37, i64 34
  %396 = load i8, ptr %391, align 1, !tbaa !15
  %397 = zext i8 %396 to i32
  %398 = shl nuw nsw i32 %397, 16
  %399 = or disjoint i32 %398, %394
  %400 = getelementptr inbounds nuw i8, ptr %37, i64 35
  %401 = load i8, ptr %395, align 1, !tbaa !15
  %402 = zext i8 %401 to i32
  %403 = shl nuw nsw i32 %402, 8
  %404 = or disjoint i32 %399, %403
  %405 = getelementptr inbounds nuw i8, ptr %37, i64 36
  %406 = load i8, ptr %400, align 1, !tbaa !15
  %407 = zext i8 %406 to i32
  %408 = or disjoint i32 %404, %407
  store i32 %408, ptr %19, align 16, !tbaa !5
  %409 = tail call i32 @llvm.fshl.i32(i32 %389, i32 %389, i32 26)
  %410 = tail call i32 @llvm.fshl.i32(i32 %389, i32 %389, i32 21)
  %411 = xor i32 %409, %410
  %412 = tail call i32 @llvm.fshl.i32(i32 %389, i32 %389, i32 7)
  %413 = xor i32 %411, %412
  %414 = and i32 %389, %346
  %415 = xor i32 %389, -1
  %416 = and i32 %303, %415
  %417 = or i32 %414, %416
  %418 = add i32 %260, -670586216
  %419 = add i32 %418, %408
  %420 = add i32 %419, %417
  %421 = add i32 %420, %413
  %422 = tail call i32 @llvm.fshl.i32(i32 %390, i32 %390, i32 30)
  %423 = tail call i32 @llvm.fshl.i32(i32 %390, i32 %390, i32 19)
  %424 = xor i32 %422, %423
  %425 = tail call i32 @llvm.fshl.i32(i32 %390, i32 %390, i32 10)
  %426 = xor i32 %424, %425
  %427 = and i32 %390, %347
  %428 = xor i32 %347, %304
  %429 = and i32 %390, %428
  %430 = xor i32 %429, %384
  %431 = add i32 %426, %430
  %432 = add i32 %421, %261
  %433 = add i32 %431, %421
  %434 = getelementptr inbounds nuw i8, ptr %37, i64 37
  %435 = load i8, ptr %405, align 1, !tbaa !15
  %436 = zext i8 %435 to i32
  %437 = shl nuw i32 %436, 24
  %438 = getelementptr inbounds nuw i8, ptr %37, i64 38
  %439 = load i8, ptr %434, align 1, !tbaa !15
  %440 = zext i8 %439 to i32
  %441 = shl nuw nsw i32 %440, 16
  %442 = or disjoint i32 %441, %437
  %443 = getelementptr inbounds nuw i8, ptr %37, i64 39
  %444 = load i8, ptr %438, align 1, !tbaa !15
  %445 = zext i8 %444 to i32
  %446 = shl nuw nsw i32 %445, 8
  %447 = or disjoint i32 %442, %446
  %448 = getelementptr inbounds nuw i8, ptr %37, i64 40
  %449 = load i8, ptr %443, align 1, !tbaa !15
  %450 = zext i8 %449 to i32
  %451 = or disjoint i32 %447, %450
  store i32 %451, ptr %20, align 4, !tbaa !5
  %452 = tail call i32 @llvm.fshl.i32(i32 %432, i32 %432, i32 26)
  %453 = tail call i32 @llvm.fshl.i32(i32 %432, i32 %432, i32 21)
  %454 = xor i32 %452, %453
  %455 = tail call i32 @llvm.fshl.i32(i32 %432, i32 %432, i32 7)
  %456 = xor i32 %454, %455
  %457 = and i32 %432, %389
  %458 = xor i32 %432, -1
  %459 = and i32 %346, %458
  %460 = or i32 %457, %459
  %461 = add i32 %303, 310598401
  %462 = add i32 %461, %451
  %463 = add i32 %462, %460
  %464 = add i32 %463, %456
  %465 = tail call i32 @llvm.fshl.i32(i32 %433, i32 %433, i32 30)
  %466 = tail call i32 @llvm.fshl.i32(i32 %433, i32 %433, i32 19)
  %467 = xor i32 %465, %466
  %468 = tail call i32 @llvm.fshl.i32(i32 %433, i32 %433, i32 10)
  %469 = xor i32 %467, %468
  %470 = and i32 %433, %390
  %471 = xor i32 %390, %347
  %472 = and i32 %433, %471
  %473 = xor i32 %472, %427
  %474 = add i32 %469, %473
  %475 = add i32 %464, %304
  %476 = add i32 %474, %464
  %477 = getelementptr inbounds nuw i8, ptr %37, i64 41
  %478 = load i8, ptr %448, align 1, !tbaa !15
  %479 = zext i8 %478 to i32
  %480 = shl nuw i32 %479, 24
  %481 = getelementptr inbounds nuw i8, ptr %37, i64 42
  %482 = load i8, ptr %477, align 1, !tbaa !15
  %483 = zext i8 %482 to i32
  %484 = shl nuw nsw i32 %483, 16
  %485 = or disjoint i32 %484, %480
  %486 = getelementptr inbounds nuw i8, ptr %37, i64 43
  %487 = load i8, ptr %481, align 1, !tbaa !15
  %488 = zext i8 %487 to i32
  %489 = shl nuw nsw i32 %488, 8
  %490 = or disjoint i32 %485, %489
  %491 = getelementptr inbounds nuw i8, ptr %37, i64 44
  %492 = load i8, ptr %486, align 1, !tbaa !15
  %493 = zext i8 %492 to i32
  %494 = or disjoint i32 %490, %493
  store i32 %494, ptr %21, align 8, !tbaa !5
  %495 = tail call i32 @llvm.fshl.i32(i32 %475, i32 %475, i32 26)
  %496 = tail call i32 @llvm.fshl.i32(i32 %475, i32 %475, i32 21)
  %497 = xor i32 %495, %496
  %498 = tail call i32 @llvm.fshl.i32(i32 %475, i32 %475, i32 7)
  %499 = xor i32 %497, %498
  %500 = and i32 %475, %432
  %501 = xor i32 %475, -1
  %502 = and i32 %389, %501
  %503 = or i32 %500, %502
  %504 = add i32 %346, 607225278
  %505 = add i32 %504, %494
  %506 = add i32 %505, %503
  %507 = add i32 %506, %499
  %508 = tail call i32 @llvm.fshl.i32(i32 %476, i32 %476, i32 30)
  %509 = tail call i32 @llvm.fshl.i32(i32 %476, i32 %476, i32 19)
  %510 = xor i32 %508, %509
  %511 = tail call i32 @llvm.fshl.i32(i32 %476, i32 %476, i32 10)
  %512 = xor i32 %510, %511
  %513 = and i32 %476, %433
  %514 = xor i32 %433, %390
  %515 = and i32 %476, %514
  %516 = xor i32 %515, %470
  %517 = add i32 %512, %516
  %518 = add i32 %507, %347
  %519 = add i32 %517, %507
  %520 = getelementptr inbounds nuw i8, ptr %37, i64 45
  %521 = load i8, ptr %491, align 1, !tbaa !15
  %522 = zext i8 %521 to i32
  %523 = shl nuw i32 %522, 24
  %524 = getelementptr inbounds nuw i8, ptr %37, i64 46
  %525 = load i8, ptr %520, align 1, !tbaa !15
  %526 = zext i8 %525 to i32
  %527 = shl nuw nsw i32 %526, 16
  %528 = or disjoint i32 %527, %523
  %529 = getelementptr inbounds nuw i8, ptr %37, i64 47
  %530 = load i8, ptr %524, align 1, !tbaa !15
  %531 = zext i8 %530 to i32
  %532 = shl nuw nsw i32 %531, 8
  %533 = or disjoint i32 %528, %532
  %534 = getelementptr inbounds nuw i8, ptr %37, i64 48
  %535 = load i8, ptr %529, align 1, !tbaa !15
  %536 = zext i8 %535 to i32
  %537 = or disjoint i32 %533, %536
  store i32 %537, ptr %22, align 4, !tbaa !5
  %538 = tail call i32 @llvm.fshl.i32(i32 %518, i32 %518, i32 26)
  %539 = tail call i32 @llvm.fshl.i32(i32 %518, i32 %518, i32 21)
  %540 = xor i32 %538, %539
  %541 = tail call i32 @llvm.fshl.i32(i32 %518, i32 %518, i32 7)
  %542 = xor i32 %540, %541
  %543 = and i32 %518, %475
  %544 = xor i32 %518, -1
  %545 = and i32 %432, %544
  %546 = or i32 %543, %545
  %547 = add i32 %537, 1426881987
  %548 = add i32 %547, %389
  %549 = add i32 %548, %546
  %550 = add i32 %549, %542
  %551 = tail call i32 @llvm.fshl.i32(i32 %519, i32 %519, i32 30)
  %552 = tail call i32 @llvm.fshl.i32(i32 %519, i32 %519, i32 19)
  %553 = xor i32 %551, %552
  %554 = tail call i32 @llvm.fshl.i32(i32 %519, i32 %519, i32 10)
  %555 = xor i32 %553, %554
  %556 = and i32 %519, %476
  %557 = xor i32 %476, %433
  %558 = and i32 %519, %557
  %559 = xor i32 %558, %513
  %560 = add i32 %555, %559
  %561 = add i32 %550, %390
  %562 = add i32 %560, %550
  %563 = getelementptr inbounds nuw i8, ptr %37, i64 49
  %564 = load i8, ptr %534, align 1, !tbaa !15
  %565 = zext i8 %564 to i32
  %566 = shl nuw i32 %565, 24
  %567 = getelementptr inbounds nuw i8, ptr %37, i64 50
  %568 = load i8, ptr %563, align 1, !tbaa !15
  %569 = zext i8 %568 to i32
  %570 = shl nuw nsw i32 %569, 16
  %571 = or disjoint i32 %570, %566
  %572 = getelementptr inbounds nuw i8, ptr %37, i64 51
  %573 = load i8, ptr %567, align 1, !tbaa !15
  %574 = zext i8 %573 to i32
  %575 = shl nuw nsw i32 %574, 8
  %576 = or disjoint i32 %571, %575
  %577 = getelementptr inbounds nuw i8, ptr %37, i64 52
  %578 = load i8, ptr %572, align 1, !tbaa !15
  %579 = zext i8 %578 to i32
  %580 = or disjoint i32 %576, %579
  store i32 %580, ptr %23, align 16, !tbaa !5
  %581 = tail call i32 @llvm.fshl.i32(i32 %561, i32 %561, i32 26)
  %582 = tail call i32 @llvm.fshl.i32(i32 %561, i32 %561, i32 21)
  %583 = xor i32 %581, %582
  %584 = tail call i32 @llvm.fshl.i32(i32 %561, i32 %561, i32 7)
  %585 = xor i32 %583, %584
  %586 = and i32 %561, %518
  %587 = xor i32 %561, -1
  %588 = and i32 %475, %587
  %589 = or i32 %586, %588
  %590 = add i32 %580, 1925078388
  %591 = add i32 %590, %432
  %592 = add i32 %591, %589
  %593 = add i32 %592, %585
  %594 = tail call i32 @llvm.fshl.i32(i32 %562, i32 %562, i32 30)
  %595 = tail call i32 @llvm.fshl.i32(i32 %562, i32 %562, i32 19)
  %596 = xor i32 %594, %595
  %597 = tail call i32 @llvm.fshl.i32(i32 %562, i32 %562, i32 10)
  %598 = xor i32 %596, %597
  %599 = and i32 %562, %519
  %600 = xor i32 %519, %476
  %601 = and i32 %562, %600
  %602 = xor i32 %601, %556
  %603 = add i32 %598, %602
  %604 = add i32 %593, %433
  %605 = add i32 %603, %593
  %606 = getelementptr inbounds nuw i8, ptr %37, i64 53
  %607 = load i8, ptr %577, align 1, !tbaa !15
  %608 = zext i8 %607 to i32
  %609 = shl nuw i32 %608, 24
  %610 = getelementptr inbounds nuw i8, ptr %37, i64 54
  %611 = load i8, ptr %606, align 1, !tbaa !15
  %612 = zext i8 %611 to i32
  %613 = shl nuw nsw i32 %612, 16
  %614 = or disjoint i32 %613, %609
  %615 = getelementptr inbounds nuw i8, ptr %37, i64 55
  %616 = load i8, ptr %610, align 1, !tbaa !15
  %617 = zext i8 %616 to i32
  %618 = shl nuw nsw i32 %617, 8
  %619 = or disjoint i32 %614, %618
  %620 = getelementptr inbounds nuw i8, ptr %37, i64 56
  %621 = load i8, ptr %615, align 1, !tbaa !15
  %622 = zext i8 %621 to i32
  %623 = or disjoint i32 %619, %622
  store i32 %623, ptr %24, align 4, !tbaa !5
  %624 = tail call i32 @llvm.fshl.i32(i32 %604, i32 %604, i32 26)
  %625 = tail call i32 @llvm.fshl.i32(i32 %604, i32 %604, i32 21)
  %626 = xor i32 %624, %625
  %627 = tail call i32 @llvm.fshl.i32(i32 %604, i32 %604, i32 7)
  %628 = xor i32 %626, %627
  %629 = and i32 %604, %561
  %630 = xor i32 %604, -1
  %631 = and i32 %518, %630
  %632 = or i32 %629, %631
  %633 = add i32 %623, -2132889090
  %634 = add i32 %633, %475
  %635 = add i32 %634, %632
  %636 = add i32 %635, %628
  %637 = tail call i32 @llvm.fshl.i32(i32 %605, i32 %605, i32 30)
  %638 = tail call i32 @llvm.fshl.i32(i32 %605, i32 %605, i32 19)
  %639 = xor i32 %637, %638
  %640 = tail call i32 @llvm.fshl.i32(i32 %605, i32 %605, i32 10)
  %641 = xor i32 %639, %640
  %642 = and i32 %605, %562
  %643 = xor i32 %562, %519
  %644 = and i32 %605, %643
  %645 = xor i32 %644, %599
  %646 = add i32 %641, %645
  %647 = add i32 %636, %476
  %648 = add i32 %646, %636
  %649 = getelementptr inbounds nuw i8, ptr %37, i64 57
  %650 = load i8, ptr %620, align 1, !tbaa !15
  %651 = zext i8 %650 to i32
  %652 = shl nuw i32 %651, 24
  %653 = getelementptr inbounds nuw i8, ptr %37, i64 58
  %654 = load i8, ptr %649, align 1, !tbaa !15
  %655 = zext i8 %654 to i32
  %656 = shl nuw nsw i32 %655, 16
  %657 = or disjoint i32 %656, %652
  %658 = getelementptr inbounds nuw i8, ptr %37, i64 59
  %659 = load i8, ptr %653, align 1, !tbaa !15
  %660 = zext i8 %659 to i32
  %661 = shl nuw nsw i32 %660, 8
  %662 = or disjoint i32 %657, %661
  %663 = getelementptr inbounds nuw i8, ptr %37, i64 60
  %664 = load i8, ptr %658, align 1, !tbaa !15
  %665 = zext i8 %664 to i32
  %666 = or disjoint i32 %662, %665
  store i32 %666, ptr %25, align 8, !tbaa !5
  %667 = tail call i32 @llvm.fshl.i32(i32 %647, i32 %647, i32 26)
  %668 = tail call i32 @llvm.fshl.i32(i32 %647, i32 %647, i32 21)
  %669 = xor i32 %667, %668
  %670 = tail call i32 @llvm.fshl.i32(i32 %647, i32 %647, i32 7)
  %671 = xor i32 %669, %670
  %672 = and i32 %647, %604
  %673 = xor i32 %647, -1
  %674 = and i32 %561, %673
  %675 = or i32 %672, %674
  %676 = add i32 %666, -1680079193
  %677 = add i32 %676, %518
  %678 = add i32 %677, %675
  %679 = add i32 %678, %671
  %680 = tail call i32 @llvm.fshl.i32(i32 %648, i32 %648, i32 30)
  %681 = tail call i32 @llvm.fshl.i32(i32 %648, i32 %648, i32 19)
  %682 = xor i32 %680, %681
  %683 = tail call i32 @llvm.fshl.i32(i32 %648, i32 %648, i32 10)
  %684 = xor i32 %682, %683
  %685 = and i32 %648, %605
  %686 = xor i32 %605, %562
  %687 = and i32 %648, %686
  %688 = xor i32 %687, %642
  %689 = add i32 %684, %688
  %690 = add i32 %679, %519
  %691 = add i32 %689, %679
  %692 = getelementptr inbounds nuw i8, ptr %37, i64 61
  %693 = load i8, ptr %663, align 1, !tbaa !15
  %694 = zext i8 %693 to i32
  %695 = shl nuw i32 %694, 24
  %696 = getelementptr inbounds nuw i8, ptr %37, i64 62
  %697 = load i8, ptr %692, align 1, !tbaa !15
  %698 = zext i8 %697 to i32
  %699 = shl nuw nsw i32 %698, 16
  %700 = or disjoint i32 %699, %695
  %701 = getelementptr inbounds nuw i8, ptr %37, i64 63
  %702 = load i8, ptr %696, align 1, !tbaa !15
  %703 = zext i8 %702 to i32
  %704 = shl nuw nsw i32 %703, 8
  %705 = or disjoint i32 %700, %704
  %706 = load i8, ptr %701, align 1, !tbaa !15
  %707 = zext i8 %706 to i32
  %708 = or disjoint i32 %705, %707
  store i32 %708, ptr %26, align 4, !tbaa !5
  %709 = tail call i32 @llvm.fshl.i32(i32 %690, i32 %690, i32 26)
  %710 = tail call i32 @llvm.fshl.i32(i32 %690, i32 %690, i32 21)
  %711 = xor i32 %709, %710
  %712 = tail call i32 @llvm.fshl.i32(i32 %690, i32 %690, i32 7)
  %713 = xor i32 %711, %712
  %714 = and i32 %690, %647
  %715 = xor i32 %690, -1
  %716 = and i32 %604, %715
  %717 = or i32 %714, %716
  %718 = add i32 %708, -1046744716
  %719 = add i32 %718, %561
  %720 = add i32 %719, %717
  %721 = add i32 %720, %713
  %722 = tail call i32 @llvm.fshl.i32(i32 %691, i32 %691, i32 30)
  %723 = tail call i32 @llvm.fshl.i32(i32 %691, i32 %691, i32 19)
  %724 = xor i32 %722, %723
  %725 = tail call i32 @llvm.fshl.i32(i32 %691, i32 %691, i32 10)
  %726 = xor i32 %724, %725
  %727 = xor i32 %648, %605
  %728 = and i32 %691, %727
  %729 = xor i32 %728, %685
  %730 = add i32 %726, %729
  %731 = add i32 %721, %562
  %732 = add i32 %730, %721
  br label %733

733:                                              ; preds = %35, %733
  %734 = phi i64 [ 16, %35 ], [ %1100, %733 ]
  %735 = phi i32 [ %732, %35 ], [ %1125, %733 ]
  %736 = phi i32 [ %604, %35 ], [ %994, %733 ]
  %737 = phi i32 [ %647, %35 ], [ %1038, %733 ]
  %738 = phi i32 [ %690, %35 ], [ %1082, %733 ]
  %739 = phi i32 [ %731, %35 ], [ %1126, %733 ]
  %740 = phi i32 [ %605, %35 ], [ %995, %733 ]
  %741 = phi i32 [ %648, %35 ], [ %1039, %733 ]
  %742 = phi i32 [ %691, %35 ], [ %1083, %733 ]
  %743 = or disjoint i64 %734, 1
  %744 = and i64 %743, 9
  %745 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %744
  %746 = load i32, ptr %745, align 4, !tbaa !5
  %747 = tail call i32 @llvm.fshl.i32(i32 %746, i32 %746, i32 25)
  %748 = tail call i32 @llvm.fshl.i32(i32 %746, i32 %746, i32 14)
  %749 = xor i32 %747, %748
  %750 = lshr i32 %746, 3
  %751 = xor i32 %749, %750
  %752 = add nuw nsw i64 %734, 14
  %753 = and i64 %752, 14
  %754 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %753
  %755 = load i32, ptr %754, align 8, !tbaa !5
  %756 = tail call i32 @llvm.fshl.i32(i32 %755, i32 %755, i32 15)
  %757 = tail call i32 @llvm.fshl.i32(i32 %755, i32 %755, i32 13)
  %758 = xor i32 %756, %757
  %759 = lshr i32 %755, 10
  %760 = xor i32 %758, %759
  %761 = add nuw nsw i64 %734, 9
  %762 = and i64 %761, 9
  %763 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %762
  %764 = load i32, ptr %763, align 4, !tbaa !5
  %765 = and i64 %734, 8
  %766 = and i64 %734, 8
  %767 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %766
  %768 = load i32, ptr %767, align 16, !tbaa !5
  %769 = add i32 %751, %764
  %770 = add i32 %769, %768
  %771 = add i32 %770, %760
  store i32 %771, ptr %767, align 16, !tbaa !5
  %772 = tail call i32 @llvm.fshl.i32(i32 %739, i32 %739, i32 26)
  %773 = tail call i32 @llvm.fshl.i32(i32 %739, i32 %739, i32 21)
  %774 = xor i32 %772, %773
  %775 = tail call i32 @llvm.fshl.i32(i32 %739, i32 %739, i32 7)
  %776 = xor i32 %774, %775
  %777 = add i32 %736, %776
  %778 = and i32 %738, %739
  %779 = xor i32 %739, -1
  %780 = and i32 %737, %779
  %781 = or i32 %780, %778
  %782 = add i32 %777, %781
  %783 = getelementptr inbounds nuw [64 x i32], ptr @K256, i64 0, i64 %734
  %784 = load i32, ptr %783, align 16, !tbaa !5
  %785 = add i32 %782, %784
  %786 = add i32 %785, %771
  %787 = tail call i32 @llvm.fshl.i32(i32 %735, i32 %735, i32 30)
  %788 = tail call i32 @llvm.fshl.i32(i32 %735, i32 %735, i32 19)
  %789 = xor i32 %787, %788
  %790 = tail call i32 @llvm.fshl.i32(i32 %735, i32 %735, i32 10)
  %791 = xor i32 %789, %790
  %792 = and i32 %735, %742
  %793 = xor i32 %741, %742
  %794 = and i32 %735, %793
  %795 = and i32 %741, %742
  %796 = xor i32 %794, %795
  %797 = add i32 %791, %796
  %798 = add i32 %786, %740
  %799 = add i32 %797, %786
  %800 = or disjoint i64 %734, 2
  %801 = and i64 %800, 10
  %802 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %801
  %803 = load i32, ptr %802, align 8, !tbaa !5
  %804 = tail call i32 @llvm.fshl.i32(i32 %803, i32 %803, i32 25)
  %805 = tail call i32 @llvm.fshl.i32(i32 %803, i32 %803, i32 14)
  %806 = xor i32 %804, %805
  %807 = lshr i32 %803, 3
  %808 = xor i32 %806, %807
  %809 = add nuw nsw i64 %734, 15
  %810 = and i64 %809, 15
  %811 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %810
  %812 = load i32, ptr %811, align 4, !tbaa !5
  %813 = tail call i32 @llvm.fshl.i32(i32 %812, i32 %812, i32 15)
  %814 = tail call i32 @llvm.fshl.i32(i32 %812, i32 %812, i32 13)
  %815 = xor i32 %813, %814
  %816 = lshr i32 %812, 10
  %817 = xor i32 %815, %816
  %818 = add nuw nsw i64 %734, 10
  %819 = and i64 %818, 10
  %820 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %819
  %821 = load i32, ptr %820, align 8, !tbaa !5
  %822 = add i32 %821, %746
  %823 = add i32 %822, %808
  %824 = add i32 %823, %817
  store i32 %824, ptr %745, align 4, !tbaa !5
  %825 = tail call i32 @llvm.fshl.i32(i32 %798, i32 %798, i32 26)
  %826 = tail call i32 @llvm.fshl.i32(i32 %798, i32 %798, i32 21)
  %827 = xor i32 %825, %826
  %828 = tail call i32 @llvm.fshl.i32(i32 %798, i32 %798, i32 7)
  %829 = xor i32 %827, %828
  %830 = and i32 %798, %739
  %831 = xor i32 %798, -1
  %832 = and i32 %738, %831
  %833 = or i32 %830, %832
  %834 = getelementptr inbounds nuw [64 x i32], ptr @K256, i64 0, i64 %743
  %835 = load i32, ptr %834, align 4, !tbaa !5
  %836 = add i32 %835, %737
  %837 = add i32 %836, %833
  %838 = add i32 %837, %829
  %839 = add i32 %838, %824
  %840 = tail call i32 @llvm.fshl.i32(i32 %799, i32 %799, i32 30)
  %841 = tail call i32 @llvm.fshl.i32(i32 %799, i32 %799, i32 19)
  %842 = xor i32 %840, %841
  %843 = tail call i32 @llvm.fshl.i32(i32 %799, i32 %799, i32 10)
  %844 = xor i32 %842, %843
  %845 = and i32 %799, %735
  %846 = xor i32 %735, %742
  %847 = and i32 %799, %846
  %848 = xor i32 %847, %792
  %849 = add i32 %844, %848
  %850 = add i32 %839, %741
  %851 = add i32 %849, %839
  %852 = or disjoint i64 %734, 3
  %853 = and i64 %852, 11
  %854 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %853
  %855 = load i32, ptr %854, align 4, !tbaa !5
  %856 = tail call i32 @llvm.fshl.i32(i32 %855, i32 %855, i32 25)
  %857 = tail call i32 @llvm.fshl.i32(i32 %855, i32 %855, i32 14)
  %858 = xor i32 %856, %857
  %859 = lshr i32 %855, 3
  %860 = xor i32 %858, %859
  %861 = tail call i32 @llvm.fshl.i32(i32 %771, i32 %771, i32 15)
  %862 = tail call i32 @llvm.fshl.i32(i32 %771, i32 %771, i32 13)
  %863 = xor i32 %861, %862
  %864 = lshr i32 %771, 10
  %865 = xor i32 %863, %864
  %866 = add nuw nsw i64 %734, 11
  %867 = and i64 %866, 11
  %868 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %867
  %869 = load i32, ptr %868, align 4, !tbaa !5
  %870 = add i32 %865, %803
  %871 = add i32 %870, %869
  %872 = add i32 %871, %860
  store i32 %872, ptr %802, align 8, !tbaa !5
  %873 = tail call i32 @llvm.fshl.i32(i32 %850, i32 %850, i32 26)
  %874 = tail call i32 @llvm.fshl.i32(i32 %850, i32 %850, i32 21)
  %875 = xor i32 %873, %874
  %876 = tail call i32 @llvm.fshl.i32(i32 %850, i32 %850, i32 7)
  %877 = xor i32 %875, %876
  %878 = and i32 %850, %798
  %879 = xor i32 %850, -1
  %880 = and i32 %739, %879
  %881 = or i32 %878, %880
  %882 = getelementptr inbounds nuw [64 x i32], ptr @K256, i64 0, i64 %800
  %883 = load i32, ptr %882, align 8, !tbaa !5
  %884 = add i32 %883, %738
  %885 = add i32 %884, %872
  %886 = add i32 %885, %881
  %887 = add i32 %886, %877
  %888 = tail call i32 @llvm.fshl.i32(i32 %851, i32 %851, i32 30)
  %889 = tail call i32 @llvm.fshl.i32(i32 %851, i32 %851, i32 19)
  %890 = xor i32 %888, %889
  %891 = tail call i32 @llvm.fshl.i32(i32 %851, i32 %851, i32 10)
  %892 = xor i32 %890, %891
  %893 = and i32 %851, %799
  %894 = xor i32 %799, %735
  %895 = and i32 %851, %894
  %896 = xor i32 %895, %845
  %897 = add i32 %892, %896
  %898 = add i32 %887, %742
  %899 = add i32 %897, %887
  %900 = or disjoint i64 %734, 4
  %901 = and i64 %900, 12
  %902 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %901
  %903 = load i32, ptr %902, align 16, !tbaa !5
  %904 = tail call i32 @llvm.fshl.i32(i32 %903, i32 %903, i32 25)
  %905 = tail call i32 @llvm.fshl.i32(i32 %903, i32 %903, i32 14)
  %906 = xor i32 %904, %905
  %907 = lshr i32 %903, 3
  %908 = xor i32 %906, %907
  %909 = tail call i32 @llvm.fshl.i32(i32 %824, i32 %824, i32 15)
  %910 = tail call i32 @llvm.fshl.i32(i32 %824, i32 %824, i32 13)
  %911 = xor i32 %909, %910
  %912 = lshr i32 %824, 10
  %913 = xor i32 %911, %912
  %914 = add nuw nsw i64 %734, 12
  %915 = and i64 %914, 12
  %916 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %915
  %917 = load i32, ptr %916, align 16, !tbaa !5
  %918 = add i32 %913, %855
  %919 = add i32 %918, %917
  %920 = add i32 %919, %908
  store i32 %920, ptr %854, align 4, !tbaa !5
  %921 = tail call i32 @llvm.fshl.i32(i32 %898, i32 %898, i32 26)
  %922 = tail call i32 @llvm.fshl.i32(i32 %898, i32 %898, i32 21)
  %923 = xor i32 %921, %922
  %924 = tail call i32 @llvm.fshl.i32(i32 %898, i32 %898, i32 7)
  %925 = xor i32 %923, %924
  %926 = and i32 %898, %850
  %927 = xor i32 %898, -1
  %928 = and i32 %798, %927
  %929 = or i32 %926, %928
  %930 = getelementptr inbounds nuw [64 x i32], ptr @K256, i64 0, i64 %852
  %931 = load i32, ptr %930, align 4, !tbaa !5
  %932 = add i32 %931, %739
  %933 = add i32 %932, %920
  %934 = add i32 %933, %929
  %935 = add i32 %934, %925
  %936 = tail call i32 @llvm.fshl.i32(i32 %899, i32 %899, i32 30)
  %937 = tail call i32 @llvm.fshl.i32(i32 %899, i32 %899, i32 19)
  %938 = xor i32 %936, %937
  %939 = tail call i32 @llvm.fshl.i32(i32 %899, i32 %899, i32 10)
  %940 = xor i32 %938, %939
  %941 = and i32 %899, %851
  %942 = xor i32 %851, %799
  %943 = and i32 %899, %942
  %944 = xor i32 %943, %893
  %945 = add i32 %940, %944
  %946 = add i32 %935, %735
  %947 = add i32 %945, %935
  %948 = or disjoint i64 %734, 5
  %949 = and i64 %948, 13
  %950 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %949
  %951 = load i32, ptr %950, align 4, !tbaa !5
  %952 = tail call i32 @llvm.fshl.i32(i32 %951, i32 %951, i32 25)
  %953 = tail call i32 @llvm.fshl.i32(i32 %951, i32 %951, i32 14)
  %954 = xor i32 %952, %953
  %955 = lshr i32 %951, 3
  %956 = xor i32 %954, %955
  %957 = tail call i32 @llvm.fshl.i32(i32 %872, i32 %872, i32 15)
  %958 = tail call i32 @llvm.fshl.i32(i32 %872, i32 %872, i32 13)
  %959 = xor i32 %957, %958
  %960 = lshr i32 %872, 10
  %961 = xor i32 %959, %960
  %962 = add nuw nsw i64 %734, 13
  %963 = and i64 %962, 13
  %964 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %963
  %965 = load i32, ptr %964, align 4, !tbaa !5
  %966 = add i32 %961, %903
  %967 = add i32 %966, %965
  %968 = add i32 %967, %956
  store i32 %968, ptr %902, align 16, !tbaa !5
  %969 = tail call i32 @llvm.fshl.i32(i32 %946, i32 %946, i32 26)
  %970 = tail call i32 @llvm.fshl.i32(i32 %946, i32 %946, i32 21)
  %971 = xor i32 %969, %970
  %972 = tail call i32 @llvm.fshl.i32(i32 %946, i32 %946, i32 7)
  %973 = xor i32 %971, %972
  %974 = and i32 %946, %898
  %975 = xor i32 %946, -1
  %976 = and i32 %850, %975
  %977 = or i32 %974, %976
  %978 = getelementptr inbounds nuw [64 x i32], ptr @K256, i64 0, i64 %900
  %979 = load i32, ptr %978, align 16, !tbaa !5
  %980 = add i32 %979, %798
  %981 = add i32 %980, %968
  %982 = add i32 %981, %977
  %983 = add i32 %982, %973
  %984 = tail call i32 @llvm.fshl.i32(i32 %947, i32 %947, i32 30)
  %985 = tail call i32 @llvm.fshl.i32(i32 %947, i32 %947, i32 19)
  %986 = xor i32 %984, %985
  %987 = tail call i32 @llvm.fshl.i32(i32 %947, i32 %947, i32 10)
  %988 = xor i32 %986, %987
  %989 = and i32 %947, %899
  %990 = xor i32 %899, %851
  %991 = and i32 %947, %990
  %992 = xor i32 %991, %941
  %993 = add i32 %988, %992
  %994 = add i32 %983, %799
  %995 = add i32 %993, %983
  %996 = or disjoint i64 %734, 6
  %997 = and i64 %996, 14
  %998 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %997
  %999 = load i32, ptr %998, align 8, !tbaa !5
  %1000 = tail call i32 @llvm.fshl.i32(i32 %999, i32 %999, i32 25)
  %1001 = tail call i32 @llvm.fshl.i32(i32 %999, i32 %999, i32 14)
  %1002 = xor i32 %1000, %1001
  %1003 = lshr i32 %999, 3
  %1004 = xor i32 %1002, %1003
  %1005 = tail call i32 @llvm.fshl.i32(i32 %920, i32 %920, i32 15)
  %1006 = tail call i32 @llvm.fshl.i32(i32 %920, i32 %920, i32 13)
  %1007 = xor i32 %1005, %1006
  %1008 = lshr i32 %920, 10
  %1009 = xor i32 %1007, %1008
  %1010 = add i32 %951, %755
  %1011 = add i32 %1010, %1009
  %1012 = add i32 %1011, %1004
  store i32 %1012, ptr %950, align 4, !tbaa !5
  %1013 = tail call i32 @llvm.fshl.i32(i32 %994, i32 %994, i32 26)
  %1014 = tail call i32 @llvm.fshl.i32(i32 %994, i32 %994, i32 21)
  %1015 = xor i32 %1013, %1014
  %1016 = tail call i32 @llvm.fshl.i32(i32 %994, i32 %994, i32 7)
  %1017 = xor i32 %1015, %1016
  %1018 = and i32 %994, %946
  %1019 = xor i32 %994, -1
  %1020 = and i32 %898, %1019
  %1021 = or i32 %1018, %1020
  %1022 = getelementptr inbounds nuw [64 x i32], ptr @K256, i64 0, i64 %948
  %1023 = load i32, ptr %1022, align 4, !tbaa !5
  %1024 = add i32 %1023, %850
  %1025 = add i32 %1024, %1012
  %1026 = add i32 %1025, %1021
  %1027 = add i32 %1026, %1017
  %1028 = tail call i32 @llvm.fshl.i32(i32 %995, i32 %995, i32 30)
  %1029 = tail call i32 @llvm.fshl.i32(i32 %995, i32 %995, i32 19)
  %1030 = xor i32 %1028, %1029
  %1031 = tail call i32 @llvm.fshl.i32(i32 %995, i32 %995, i32 10)
  %1032 = xor i32 %1030, %1031
  %1033 = and i32 %995, %947
  %1034 = xor i32 %947, %899
  %1035 = and i32 %995, %1034
  %1036 = xor i32 %1035, %989
  %1037 = add i32 %1032, %1036
  %1038 = add i32 %1027, %851
  %1039 = add i32 %1037, %1027
  %1040 = or disjoint i64 %734, 7
  %1041 = and i64 %1040, 15
  %1042 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %1041
  %1043 = load i32, ptr %1042, align 4, !tbaa !5
  %1044 = tail call i32 @llvm.fshl.i32(i32 %1043, i32 %1043, i32 25)
  %1045 = tail call i32 @llvm.fshl.i32(i32 %1043, i32 %1043, i32 14)
  %1046 = xor i32 %1044, %1045
  %1047 = lshr i32 %1043, 3
  %1048 = xor i32 %1046, %1047
  %1049 = tail call i32 @llvm.fshl.i32(i32 %968, i32 %968, i32 15)
  %1050 = tail call i32 @llvm.fshl.i32(i32 %968, i32 %968, i32 13)
  %1051 = xor i32 %1049, %1050
  %1052 = lshr i32 %968, 10
  %1053 = xor i32 %1051, %1052
  %1054 = add i32 %999, %812
  %1055 = add i32 %1054, %1053
  %1056 = add i32 %1055, %1048
  store i32 %1056, ptr %998, align 8, !tbaa !5
  %1057 = tail call i32 @llvm.fshl.i32(i32 %1038, i32 %1038, i32 26)
  %1058 = tail call i32 @llvm.fshl.i32(i32 %1038, i32 %1038, i32 21)
  %1059 = xor i32 %1057, %1058
  %1060 = tail call i32 @llvm.fshl.i32(i32 %1038, i32 %1038, i32 7)
  %1061 = xor i32 %1059, %1060
  %1062 = and i32 %1038, %994
  %1063 = xor i32 %1038, -1
  %1064 = and i32 %946, %1063
  %1065 = or i32 %1062, %1064
  %1066 = getelementptr inbounds nuw [64 x i32], ptr @K256, i64 0, i64 %996
  %1067 = load i32, ptr %1066, align 8, !tbaa !5
  %1068 = add i32 %1067, %898
  %1069 = add i32 %1068, %1056
  %1070 = add i32 %1069, %1065
  %1071 = add i32 %1070, %1061
  %1072 = tail call i32 @llvm.fshl.i32(i32 %1039, i32 %1039, i32 30)
  %1073 = tail call i32 @llvm.fshl.i32(i32 %1039, i32 %1039, i32 19)
  %1074 = xor i32 %1072, %1073
  %1075 = tail call i32 @llvm.fshl.i32(i32 %1039, i32 %1039, i32 10)
  %1076 = xor i32 %1074, %1075
  %1077 = and i32 %1039, %995
  %1078 = xor i32 %995, %947
  %1079 = and i32 %1039, %1078
  %1080 = xor i32 %1079, %1033
  %1081 = add i32 %1076, %1080
  %1082 = add i32 %1071, %899
  %1083 = add i32 %1081, %1071
  %1084 = xor i64 %765, 8
  %1085 = getelementptr inbounds nuw [16 x i32], ptr %4, i64 0, i64 %1084
  %1086 = load i32, ptr %1085, align 16, !tbaa !5
  %1087 = tail call i32 @llvm.fshl.i32(i32 %1086, i32 %1086, i32 25)
  %1088 = tail call i32 @llvm.fshl.i32(i32 %1086, i32 %1086, i32 14)
  %1089 = xor i32 %1087, %1088
  %1090 = lshr i32 %1086, 3
  %1091 = xor i32 %1089, %1090
  %1092 = tail call i32 @llvm.fshl.i32(i32 %1012, i32 %1012, i32 15)
  %1093 = tail call i32 @llvm.fshl.i32(i32 %1012, i32 %1012, i32 13)
  %1094 = xor i32 %1092, %1093
  %1095 = lshr i32 %1012, 10
  %1096 = xor i32 %1094, %1095
  %1097 = add i32 %1043, %771
  %1098 = add i32 %1097, %1096
  %1099 = add i32 %1098, %1091
  store i32 %1099, ptr %1042, align 4, !tbaa !5
  %1100 = add nuw nsw i64 %734, 8
  %1101 = tail call i32 @llvm.fshl.i32(i32 %1083, i32 %1083, i32 30)
  %1102 = tail call i32 @llvm.fshl.i32(i32 %1083, i32 %1083, i32 19)
  %1103 = xor i32 %1101, %1102
  %1104 = tail call i32 @llvm.fshl.i32(i32 %1083, i32 %1083, i32 10)
  %1105 = xor i32 %1103, %1104
  %1106 = xor i32 %1039, %995
  %1107 = and i32 %1083, %1106
  %1108 = xor i32 %1107, %1077
  %1109 = add i32 %1105, %1108
  %1110 = tail call i32 @llvm.fshl.i32(i32 %1082, i32 %1082, i32 26)
  %1111 = tail call i32 @llvm.fshl.i32(i32 %1082, i32 %1082, i32 21)
  %1112 = xor i32 %1110, %1111
  %1113 = tail call i32 @llvm.fshl.i32(i32 %1082, i32 %1082, i32 7)
  %1114 = xor i32 %1112, %1113
  %1115 = and i32 %1082, %1038
  %1116 = xor i32 %1082, -1
  %1117 = and i32 %994, %1116
  %1118 = or i32 %1115, %1117
  %1119 = getelementptr inbounds nuw [64 x i32], ptr @K256, i64 0, i64 %1040
  %1120 = load i32, ptr %1119, align 4, !tbaa !5
  %1121 = add i32 %946, %1120
  %1122 = add i32 %1121, %1099
  %1123 = add i32 %1122, %1118
  %1124 = add i32 %1123, %1114
  %1125 = add i32 %1109, %1124
  %1126 = add i32 %1124, %947
  %1127 = icmp samesign ult i64 %734, 56
  br i1 %1127, label %733, label %1128, !llvm.loop !18

1128:                                             ; preds = %733
  %1129 = add nsw i64 %36, -1
  %1130 = getelementptr inbounds nuw i8, ptr %37, i64 64
  %1131 = add i32 %1125, %38
  store i32 %1131, ptr %0, align 4, !tbaa !5
  %1132 = add i32 %1083, %39
  store i32 %1132, ptr %5, align 4, !tbaa !5
  %1133 = add i32 %1039, %40
  store i32 %1133, ptr %6, align 4, !tbaa !5
  %1134 = add i32 %995, %41
  store i32 %1134, ptr %7, align 4, !tbaa !5
  %1135 = add i32 %1126, %42
  store i32 %1135, ptr %8, align 4, !tbaa !5
  %1136 = add i32 %1082, %43
  store i32 %1136, ptr %9, align 4, !tbaa !5
  %1137 = add i32 %1038, %44
  store i32 %1137, ptr %10, align 4, !tbaa !5
  %1138 = add i32 %994, %45
  store i32 %1138, ptr %11, align 4, !tbaa !5
  %1139 = icmp eq i64 %1129, 0
  br i1 %1139, label %1140, label %35, !llvm.loop !19

1140:                                             ; preds = %1128
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @SHA256_Transform(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #6 {
  tail call fastcc void @sha256_block_data_order(ptr noundef %0, ptr noundef %1, i64 noundef 1)
  ret void
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { cold minsize nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 108}
!10 = !{!"SHA256state_st", !7, i64 0, !6, i64 32, !6, i64 36, !7, i64 40, !6, i64 104, !6, i64 108}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!10, !6, i64 32}
!13 = !{!10, !6, i64 36}
!14 = !{!10, !6, i64 104}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
