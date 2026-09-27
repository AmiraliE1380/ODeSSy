; ModuleID = 'results/static/guard_ablation_0927/Swift_sha256/irce.ll'
source_filename = "results/static/guard_ablation_0927/ir/sha256.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TSi = type <{ i64 }>
%TSa = type <{ %Ts22_ContiguousArrayBufferV }>
%Ts22_ContiguousArrayBufferV = type <{ ptr }>
%Ts23_ContiguousArrayStorageCys6UInt32VG_tailelems0c = type { [1 x i64], %Ts23_ContiguousArrayStorageCys6UInt32VG_tailelems0 }
%Ts23_ContiguousArrayStorageCys6UInt32VG_tailelems0 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V }>
%swift.refcounted = type { ptr, i64 }
%Ts10_ArrayBodyV = type <{ %TSo22_SwiftArrayBodyStorageV }>
%TSo22_SwiftArrayBodyStorageV = type <{ %TSi, %TSu }>
%TSu = type <{ i64 }>
%Ts6UInt32V = type <{ i32 }>
%swift.type_descriptor = type opaque
%swift.type = type { i64 }
%struct._SwiftEmptyArrayStorage = type { %struct.HeapObject, %struct._SwiftArrayBodyStorage }
%struct.HeapObject = type { ptr, %struct.InlineRefCountsPlaceholder }
%struct.InlineRefCountsPlaceholder = type { i64 }
%struct._SwiftArrayBodyStorage = type { i64, i64 }
%Ts6UInt64V = type <{ i64 }>
%Ts5UInt8V = type <{ i8 }>
%TSS = type <{ %Ts11_StringGutsV }>
%Ts11_StringGutsV = type <{ %Ts13_StringObjectV }>
%Ts13_StringObjectV = type <{ %Ts6UInt64V, ptr }>
%Ts16IndexingIteratorVySs8UTF8ViewVG = type <{ %TSs8UTF8ViewV, %TSS5IndexV }>
%TSs8UTF8ViewV = type <{ %Ts5SliceVySS8UTF8ViewVG }>
%Ts5SliceVySS8UTF8ViewVG = type <{ %TSS5IndexV, %TSS5IndexV, %TSS8UTF8ViewV }>
%TSS8UTF8ViewV = type <{ %Ts11_StringGutsV }>
%TSS5IndexV = type <{ %Ts6UInt64V }>
%T20FoundationEssentials4DataV8IteratorV = type <{ %T20FoundationEssentials4DataV, <{ %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V }>, %TSi, %TSi }>
%T20FoundationEssentials4DataV = type <{ %T20FoundationEssentials4DataV15_RepresentationO }>
%T20FoundationEssentials4DataV15_RepresentationO = type <{ [16 x i8] }>

@"$s6sha2565itersSivp" = hidden local_unnamed_addr global %TSi zeroinitializer, align 8
@".str.19.sha256/sha256.swift" = private unnamed_addr constant [20 x i8] c"sha256/sha256.swift\00"
@"$s6sha2564dataSays5UInt8VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$s6sha2561kSays6UInt32VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@mainTv_ = internal global %Ts23_ContiguousArrayStorageCys6UInt32VG_tailelems0c { [1 x i64] zeroinitializer, %Ts23_ContiguousArrayStorageCys6UInt32VG_tailelems0 <{ %swift.refcounted zeroinitializer, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 64 }>, %TSu <{ i64 128 }> }> }>, %Ts6UInt32V <{ i32 1116352408 }>, %Ts6UInt32V <{ i32 1899447441 }>, %Ts6UInt32V <{ i32 -1245643825 }>, %Ts6UInt32V <{ i32 -373957723 }>, %Ts6UInt32V <{ i32 961987163 }>, %Ts6UInt32V <{ i32 1508970993 }>, %Ts6UInt32V <{ i32 -1841331548 }>, %Ts6UInt32V <{ i32 -1424204075 }>, %Ts6UInt32V <{ i32 -670586216 }>, %Ts6UInt32V <{ i32 310598401 }>, %Ts6UInt32V <{ i32 607225278 }>, %Ts6UInt32V <{ i32 1426881987 }>, %Ts6UInt32V <{ i32 1925078388 }>, %Ts6UInt32V <{ i32 -2132889090 }>, %Ts6UInt32V <{ i32 -1680079193 }>, %Ts6UInt32V <{ i32 -1046744716 }>, %Ts6UInt32V <{ i32 -459576895 }>, %Ts6UInt32V <{ i32 -272742522 }>, %Ts6UInt32V <{ i32 264347078 }>, %Ts6UInt32V <{ i32 604807628 }>, %Ts6UInt32V <{ i32 770255983 }>, %Ts6UInt32V <{ i32 1249150122 }>, %Ts6UInt32V <{ i32 1555081692 }>, %Ts6UInt32V <{ i32 1996064986 }>, %Ts6UInt32V <{ i32 -1740746414 }>, %Ts6UInt32V <{ i32 -1473132947 }>, %Ts6UInt32V <{ i32 -1341970488 }>, %Ts6UInt32V <{ i32 -1084653625 }>, %Ts6UInt32V <{ i32 -958395405 }>, %Ts6UInt32V <{ i32 -710438585 }>, %Ts6UInt32V <{ i32 113926993 }>, %Ts6UInt32V <{ i32 338241895 }>, %Ts6UInt32V <{ i32 666307205 }>, %Ts6UInt32V <{ i32 773529912 }>, %Ts6UInt32V <{ i32 1294757372 }>, %Ts6UInt32V <{ i32 1396182291 }>, %Ts6UInt32V <{ i32 1695183700 }>, %Ts6UInt32V <{ i32 1986661051 }>, %Ts6UInt32V <{ i32 -2117940946 }>, %Ts6UInt32V <{ i32 -1838011259 }>, %Ts6UInt32V <{ i32 -1564481375 }>, %Ts6UInt32V <{ i32 -1474664885 }>, %Ts6UInt32V <{ i32 -1035236496 }>, %Ts6UInt32V <{ i32 -949202525 }>, %Ts6UInt32V <{ i32 -778901479 }>, %Ts6UInt32V <{ i32 -694614492 }>, %Ts6UInt32V <{ i32 -200395387 }>, %Ts6UInt32V <{ i32 275423344 }>, %Ts6UInt32V <{ i32 430227734 }>, %Ts6UInt32V <{ i32 506948616 }>, %Ts6UInt32V <{ i32 659060556 }>, %Ts6UInt32V <{ i32 883997877 }>, %Ts6UInt32V <{ i32 958139571 }>, %Ts6UInt32V <{ i32 1322822218 }>, %Ts6UInt32V <{ i32 1537002063 }>, %Ts6UInt32V <{ i32 1747873779 }>, %Ts6UInt32V <{ i32 1955562222 }>, %Ts6UInt32V <{ i32 2024104815 }>, %Ts6UInt32V <{ i32 -2067236844 }>, %Ts6UInt32V <{ i32 -1933114872 }>, %Ts6UInt32V <{ i32 -1866530822 }>, %Ts6UInt32V <{ i32 -1538233109 }>, %Ts6UInt32V <{ i32 -1090935817 }>, %Ts6UInt32V <{ i32 -965641998 }> }> }, align 8
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = linkonce_odr hidden constant ptr @"$ss23_ContiguousArrayStorageCMn"
@"$ss6UInt32VMn" = external global %swift.type_descriptor, align 4
@"got.$ss6UInt32VMn" = linkonce_odr hidden constant ptr @"$ss6UInt32VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss6UInt32VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys6UInt32VGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys6UInt32VGMD" to i64)) to i32), i32 -12 }, align 8
@"$s6sha2565finals6UInt32Vvp" = hidden local_unnamed_addr global %Ts6UInt32V zeroinitializer, align 4
@"$ss6UInt32VN" = external global %swift.type, align 8
@"symbolic _____yypG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____yypG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"yypG", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCyypGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____yypG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCyypGMD" to i64)) to i32), i32 -9 }, align 8
@"\01l_entry_point" = private constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @main to i64), i64 ptrtoint (ptr @"\01l_entry_point" to i64)) to i32), i32 0 }, section "swift5_entry", align 4
@"$ss5UInt8VMn" = external global %swift.type_descriptor, align 4
@"got.$ss5UInt8VMn" = linkonce_odr hidden constant ptr @"$ss5UInt8VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss5UInt8VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys5UInt8VGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys5UInt8VGMD" to i64)) to i32), i32 -12 }, align 8
@"$s20FoundationEssentials4DataV8IteratorVMn" = external global %swift.type_descriptor, align 4
@"got.$s20FoundationEssentials4DataV8IteratorVMn" = linkonce_odr hidden constant ptr @"$s20FoundationEssentials4DataV8IteratorVMn"
@"symbolic ______Sit 20FoundationEssentials4DataV8IteratorV" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$s20FoundationEssentials4DataV8IteratorVMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic ______Sit 20FoundationEssentials4DataV8IteratorV", i32 0, i32 1) to i64)) to i32), [4 x i8] c"_Sit", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$s20FoundationEssentials4DataV8IteratorV_SitMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic ______Sit 20FoundationEssentials4DataV8IteratorV" to i64), i64 ptrtoint (ptr @"$s20FoundationEssentials4DataV8IteratorV_SitMD" to i64)) to i32), i32 -9 }, align 8
@_swiftEmptyArrayStorage = external global %struct._SwiftEmptyArrayStorage, align 8
@"$sSSN" = external global %swift.type, align 8
@"$sSSs25LosslessStringConvertiblesWP" = external global ptr, align 8
@"$sSSSTsWP" = external global ptr, align 8
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@_swift1_autolink_entries = private constant [228 x i8] c"-lFoundation\00-lswiftCore\00-lswift_StringProcessing\00-lswift_RegexParser\00-lswift_Concurrency\00-lswiftGlibc\00-lm\00-lpthread\00-lutil\00-ldl\00-lFoundationInternationalization\00-lFoundationEssentials\00-lswiftDispatch\00-ldispatch\00-lBlocksRuntime\00", section ".swift1_autolink_entries", no_sanitize_address, align 8
@llvm.used = appending global [4 x ptr] [ptr @"\01l_entry_point", ptr @__swift_reflection_version, ptr @_swift1_autolink_entries, ptr @main], section "llvm.metadata"

define protected noundef i32 @main(i32 %0, ptr readnone captures(none) %1) #0 {
entry:
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  %reference.raw99 = alloca [64 x i8], align 8
  %2 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %3 = tail call swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"()
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = load i64, ptr %4, align 8, !range !9
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %odessy.chk, label %7, !prof !10

7:                                                ; preds = %entry
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %9 = load i64, ptr %8, align 8
  %._guts._object._object = getelementptr inbounds nuw i8, ptr %3, i64 56
  %10 = load ptr, ptr %._guts._object._object, align 8
  %11 = tail call ptr @swift_bridgeObjectRetain(ptr returned %10) #2
  tail call void @swift_release(ptr nonnull %3) #2
  %12 = ptrtoint ptr %10 to i64
  %13 = and i64 %12, 2305843009213693952
  %.not = icmp eq i64 %13, 0
  %14 = and i64 %9, 281474976710655
  %15 = lshr i64 %12, 56
  %16 = and i64 %15, 15
  %17 = select i1 %.not, i64 %14, i64 %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %7
  tail call void @swift_bridgeObjectRelease(ptr %10) #2
  call void asm sideeffect "", "n"(i32 1) #2
  call void @llvm.trap()
  unreachable

20:                                               ; preds = %7
  %21 = and i64 %12, 1152921504606846976
  %.not102 = icmp eq i64 %21, 0
  br i1 %.not102, label %22, label %.thread119, !prof !11

22:                                               ; preds = %20
  br i1 %.not, label %26, label %23

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(ptr %2)
  %.elt58 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %24 = and i64 %12, 72057594037927935
  store i64 %9, ptr %2, align 8
  store i64 %24, ptr %.elt58, align 8
  %25 = trunc i64 %9 to i8
  switch i8 %25, label %58 [
    i8 45, label %28
    i8 43, label %57
  ]

26:                                               ; preds = %22
  %27 = and i64 %9, 1152921504606846976
  %.not100 = icmp eq i64 %27, 0
  br i1 %.not100, label %102, label %99, !prof !10

28:                                               ; preds = %23
  switch i64 %16, label %29 [
    i64 0, label %314
    i64 1, label %.thread122
  ], !prof !12

29:                                               ; preds = %28
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %31 = getelementptr i8, ptr %2, i64 %16
  br label %40

.thread122:                                       ; preds = %58, %57, %28
  call void @llvm.lifetime.end.p0(ptr %2)
  br label %32

.loopexit128:                                     ; preds = %63, %68, %71, %76, %40, %45, %48, %53, %82, %87, %90, %95
  %.sroa.17.0 = phi i8 [ 1, %40 ], [ 1, %82 ], [ 0, %95 ], [ 1, %90 ], [ 1, %87 ], [ 0, %53 ], [ 1, %48 ], [ 1, %45 ], [ 0, %76 ], [ 1, %71 ], [ 1, %68 ], [ 1, %63 ]
  %.sroa.0.0 = phi i64 [ 0, %40 ], [ 0, %82 ], [ %96, %95 ], [ 0, %90 ], [ 0, %87 ], [ %54, %53 ], [ 0, %48 ], [ 0, %45 ], [ %77, %76 ], [ 0, %71 ], [ 0, %68 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(ptr %2)
  br label %32

32:                                               ; preds = %.thread, %.loopexit128, %.thread122
  %.sroa.0.2118 = phi i64 [ %111, %.thread ], [ %.sroa.0.0, %.loopexit128 ], [ 0, %.thread122 ]
  %.sroa.17.2117 = phi i8 [ %110, %.thread ], [ %.sroa.17.0, %.loopexit128 ], [ 1, %.thread122 ]
  call void @swift_bridgeObjectRelease(ptr %10) #2
  br label %36

.thread119:                                       ; preds = %20
  %33 = tail call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSSSiADSSRszsAER_r0_lIetgyr_Tpq5Si_Tg5"(i64 %9, ptr %10, i64 10)
  tail call void @swift_bridgeObjectRelease(ptr %10) #2
  %34 = extractvalue { i64, i8 } %33, 0
  %35 = extractvalue { i64, i8 } %33, 1
  br label %36

36:                                               ; preds = %.thread119, %32
  %37 = phi i64 [ %34, %.thread119 ], [ %.sroa.0.2118, %32 ]
  %38 = phi i8 [ %35, %.thread119 ], [ %.sroa.17.2117, %32 ]
  %39 = icmp eq i8 %38, 1
  br i1 %39, label %odessy.chk1, label %112

40:                                               ; preds = %53, %29
  %41 = phi ptr [ %30, %29 ], [ %55, %53 ]
  %42 = phi i64 [ 0, %29 ], [ %54, %53 ]
  %43 = load i8, ptr %41, align 1
  %44 = add i8 %43, -48
  %or.cond = icmp ult i8 %44, 10
  br i1 %or.cond, label %45, label %.loopexit128, !prof !13

45:                                               ; preds = %40
  %46 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %42, i64 10)
  %47 = extractvalue { i64, i1 } %46, 1
  br i1 %47, label %.loopexit128, label %48

48:                                               ; preds = %45
  %49 = extractvalue { i64, i1 } %46, 0
  %50 = zext nneg i8 %44 to i64
  %51 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %49, i64 %50)
  %52 = extractvalue { i64, i1 } %51, 1
  br i1 %52, label %.loopexit128, label %53, !prof !10

53:                                               ; preds = %48
  %54 = extractvalue { i64, i1 } %51, 0
  %55 = getelementptr inbounds nuw i8, ptr %41, i64 1
  %56 = icmp eq ptr %55, %31
  br i1 %56, label %.loopexit128, label %40

57:                                               ; preds = %23
  switch i64 %16, label %60 [
    i64 0, label %313
    i64 1, label %.thread122
  ], !prof !12

58:                                               ; preds = %23
  %59 = icmp eq i64 %16, 0
  br i1 %59, label %.thread122, label %80, !prof !10

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %62 = getelementptr i8, ptr %2, i64 %16
  br label %63

63:                                               ; preds = %76, %60
  %64 = phi ptr [ %61, %60 ], [ %78, %76 ]
  %65 = phi i64 [ 0, %60 ], [ %77, %76 ]
  %66 = load i8, ptr %64, align 1
  %67 = add i8 %66, -48
  %or.cond63 = icmp ult i8 %67, 10
  br i1 %or.cond63, label %68, label %.loopexit128, !prof !13

68:                                               ; preds = %63
  %69 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %65, i64 10)
  %70 = extractvalue { i64, i1 } %69, 1
  br i1 %70, label %.loopexit128, label %71

71:                                               ; preds = %68
  %72 = extractvalue { i64, i1 } %69, 0
  %73 = zext nneg i8 %67 to i64
  %74 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %72, i64 %73)
  %75 = extractvalue { i64, i1 } %74, 1
  br i1 %75, label %.loopexit128, label %76, !prof !10

76:                                               ; preds = %71
  %77 = extractvalue { i64, i1 } %74, 0
  %78 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %79 = icmp eq ptr %78, %62
  br i1 %79, label %.loopexit128, label %63

80:                                               ; preds = %58
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 %16
  br label %82

82:                                               ; preds = %95, %80
  %83 = phi ptr [ %2, %80 ], [ %97, %95 ]
  %84 = phi i64 [ 0, %80 ], [ %96, %95 ]
  %85 = load i8, ptr %83, align 1
  %86 = add i8 %85, -48
  %or.cond64 = icmp ult i8 %86, 10
  br i1 %or.cond64, label %87, label %.loopexit128, !prof !13

87:                                               ; preds = %82
  %88 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %84, i64 10)
  %89 = extractvalue { i64, i1 } %88, 1
  br i1 %89, label %.loopexit128, label %90

90:                                               ; preds = %87
  %91 = extractvalue { i64, i1 } %88, 0
  %92 = zext nneg i8 %86 to i64
  %93 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %91, i64 %92)
  %94 = extractvalue { i64, i1 } %93, 1
  br i1 %94, label %.loopexit128, label %95, !prof !10

95:                                               ; preds = %90
  %96 = extractvalue { i64, i1 } %93, 0
  %97 = getelementptr inbounds nuw i8, ptr %83, i64 1
  %98 = icmp eq ptr %97, %81
  br i1 %98, label %.loopexit128, label %82

99:                                               ; preds = %26
  %100 = and i64 %12, 1152921504606846975
  %101 = add nuw nsw i64 %100, 32
  br label %.thread

102:                                              ; preds = %26
  %103 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %9, ptr %10)
  %104 = extractvalue { i64, i64 } %103, 0
  %105 = extractvalue { i64, i64 } %103, 1
  br label %.thread

.thread:                                          ; preds = %102, %99
  %106 = phi i64 [ %104, %102 ], [ %101, %99 ]
  %107 = phi i64 [ %105, %102 ], [ %14, %99 ]
  %108 = call swiftcc { i64, i8 } @"$ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5UInt8VGXEfU_AGSiADs5Error_psAARzSSRsd__r__lIetyyrzo_Tpq5Si_Tg5"(i64 %106, i64 %107, i64 10, ptr swiftself undef, ptr noalias nonnull swifterror captures(none) dereferenceable(8) %swifterror)
  %109 = load ptr, ptr %swifterror, align 8
  %.not101 = icmp eq ptr %109, null
  tail call void @llvm.assume(i1 %.not101)
  %110 = extractvalue { i64, i8 } %108, 1
  %111 = extractvalue { i64, i8 } %108, 0
  br label %32

112:                                              ; preds = %36
  store i64 %37, ptr @"$s6sha2565itersSivp", align 8
  %113 = call swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"()
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 16
  %115 = load i64, ptr %114, align 8, !range !9
  %116 = icmp samesign ult i64 %115, 3
  br i1 %116, label %odessy.chk2, label %117, !prof !10

117:                                              ; preds = %112
  %118 = getelementptr inbounds nuw i8, ptr %113, i64 64
  %119 = load i64, ptr %118, align 8
  %._guts2._object._object = getelementptr inbounds nuw i8, ptr %113, i64 72
  %120 = load ptr, ptr %._guts2._object._object, align 8
  %121 = call ptr @swift_bridgeObjectRetain(ptr returned %120) #2
  call void @swift_release(ptr nonnull %113) #2
  %122 = call swiftcc { ptr, i64 } @"$s20FoundationEssentials3URLV15fileURLWithPathACSSh_tcfC"(i64 %119, ptr %120)
  call void @swift_bridgeObjectRelease(ptr %120) #2
  %123 = extractvalue { ptr, i64 } %122, 0
  %124 = extractvalue { ptr, i64 } %122, 1
  %125 = call swiftcc { i64, i64 } @"$s20FoundationEssentials4DataV10contentsOf7optionsAcA3URLVh_AC14ReadingOptionsVtKcfC"(ptr %123, i64 %124, i64 0, ptr swiftself undef, ptr noalias nonnull swifterror captures(none) dereferenceable(8) %swifterror)
  %126 = load ptr, ptr %swifterror, align 8
  %.not103 = icmp eq ptr %126, null
  call void @swift_release(ptr %123) #2
  br i1 %.not103, label %127, label %311

127:                                              ; preds = %117
  %128 = extractvalue { i64, i64 } %125, 1
  %129 = extractvalue { i64, i64 } %125, 0
  %130 = inttoptr i64 %124 to ptr
  call void @swift_release(ptr %130) #2
  %131 = call swiftcc ptr @"$ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlF20FoundationEssentials4DataV_Tgq5"(i64 %129, i64 %128)
  call void @"$s20FoundationEssentials4DataV15_RepresentationOWOe"(i64 %129, i64 %128)
  store ptr %131, ptr @"$s6sha2564dataSays5UInt8VGvp", align 8
  %132 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys6UInt32VGMD") #15
  %staticref = call ptr @swift_initStaticObject(ptr %132, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv_, i64 8)) #16
  store ptr %staticref, ptr @"$s6sha2561kSays6UInt32VGvp", align 8
  store i32 0, ptr @"$s6sha2565finals6UInt32Vvp", align 4
  %133 = load i64, ptr @"$s6sha2565itersSivp", align 8
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %odessy.chk3, label %135, !prof !10

135:                                              ; preds = %127
  %136 = icmp eq i64 %133, 0
  br i1 %136, label %.loopexit127, label %.preheader126.preheader

.loopexit127.loopexit:                            ; preds = %.loopexit.thread
  %.pre166 = load i32, ptr @"$s6sha2565finals6UInt32Vvp", align 4
  br label %.loopexit127

.loopexit127:                                     ; preds = %.loopexit127.loopexit, %135
  %137 = phi i32 [ %.pre166, %.loopexit127.loopexit ], [ 0, %135 ]
  %138 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMD") #15
  %139 = call noalias ptr @swift_allocObject(ptr %138, i64 64, i64 7) #2
  %140 = getelementptr inbounds nuw i8, ptr %139, i64 16
  store i64 1, ptr %140, align 8
  %._storage55._capacityAndFlags = getelementptr inbounds nuw i8, ptr %139, i64 24
  store i64 2, ptr %._storage55._capacityAndFlags, align 8
  %141 = getelementptr inbounds nuw i8, ptr %139, i64 32
  %142 = getelementptr inbounds nuw i8, ptr %139, i64 56
  store ptr @"$ss6UInt32VN", ptr %142, align 8
  store i32 %137, ptr %141, align 4
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %139, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %139) #2
  ret i32 0

.preheader126.preheader:                          ; preds = %135, %.loopexit.thread
  %143 = phi i64 [ %155, %.loopexit.thread ], [ 0, %135 ]
  %reference.new = call ptr @swift_initStackObject(ptr %132, ptr nonnull %reference.raw99) #16
  %reference.new3 = getelementptr inbounds nuw i8, ptr %reference.new, i64 16
  store i64 8, ptr %reference.new3, align 8
  %reference.new3._storage._capacityAndFlags = getelementptr inbounds nuw i8, ptr %reference.new, i64 24
  store i64 16, ptr %reference.new3._storage._capacityAndFlags, align 8
  %144 = getelementptr inbounds nuw i8, ptr %reference.new, i64 32
  %145 = getelementptr inbounds nuw i8, ptr %reference.new, i64 36
  %146 = getelementptr inbounds nuw i8, ptr %reference.new, i64 40
  %147 = getelementptr inbounds nuw i8, ptr %reference.new, i64 44
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %144, align 8
  %148 = getelementptr inbounds nuw i8, ptr %reference.new, i64 48
  %149 = getelementptr inbounds nuw i8, ptr %reference.new, i64 52
  %150 = getelementptr inbounds nuw i8, ptr %reference.new, i64 56
  %151 = getelementptr inbounds nuw i8, ptr %reference.new, i64 60
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %148, align 8
  %152 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64 64, ptr nonnull @"$ss6UInt32VN")
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 16
  store i64 64, ptr %153, align 8
  %154 = getelementptr i8, ptr %152, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %154, i8 0, i64 256, i1 false)
  %155 = add nuw nsw i64 %143, 1
  %156 = load ptr, ptr @"$s6sha2564dataSays5UInt8VGvp", align 8
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 16
  %158 = load i64, ptr %157, align 8, !range !9
  %159 = lshr i64 %158, 6
  %160 = icmp samesign ult i64 %158, 64
  br i1 %160, label %.loopexit, label %161

161:                                              ; preds = %.preheader126.preheader
  %162 = getelementptr inbounds nuw i8, ptr %156, i64 32
  %163 = load ptr, ptr @"$s6sha2561kSays6UInt32VGvp", align 8
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 32
  %165 = getelementptr inbounds nuw i8, ptr %163, i64 16
  %166 = load i64, ptr %165, align 8, !range !9
  %167 = icmp samesign ult i64 %166, 64
  br i1 %167, label %odessy.chk4, label %.preheader125.preheader, !prof !10

.preheader125.preheader:                          ; preds = %161
  %invariant.gep = getelementptr i8, ptr %152, i64 -32
  %invariant.gep181 = getelementptr i8, ptr %152, i64 4
  br label %.preheader125

.loopexit:                                        ; preds = %.preheader126.preheader
  %.pre = load i64, ptr %reference.new3, align 8, !range !9
  %168 = icmp eq i64 %.pre, 0
  br i1 %168, label %odessy.chk22, label %.loopexit.thread, !prof !14

.loopexit.thread:                                 ; preds = %260, %.loopexit
  %169 = load i32, ptr @"$s6sha2565finals6UInt32Vvp", align 4
  %170 = load i32, ptr %144, align 8
  %171 = add i32 %170, %169
  store i32 %171, ptr @"$s6sha2565finals6UInt32Vvp", align 4
  call void @swift_release(ptr nonnull %152) #2
  call void @swift_setDeallocating(ptr nonnull %reference.new) #2
  %172 = icmp eq i64 %155, %133
  br i1 %172, label %.loopexit127.loopexit, label %.preheader126.preheader

.preheader125:                                    ; preds = %260, %.preheader125.preheader
  %173 = phi i64 [ %174, %260 ], [ 0, %.preheader125.preheader ]
  %exitcond.not = icmp eq i64 %173, %159
  %174 = add nuw nsw i64 %173, 1
  %175 = shl i64 %173, 6
  br label %176

176:                                              ; preds = %185, %.preheader125
  %177 = phi i64 [ 0, %.preheader125 ], [ %178, %185 ]
  %178 = add nuw nsw i64 %177, 1
  %179 = shl nuw nsw i64 %177, 2
  %180 = add nuw nsw i64 %175, %179
  %.not106 = icmp ult i64 %180, %158
  %181 = or disjoint i64 %180, 1
  %.not107 = icmp samesign ult i64 %181, %158
  %182 = or disjoint i64 %180, 2
  %.not108 = icmp samesign ult i64 %182, %158
  %183 = or disjoint i64 %180, 3
  %.not147 = icmp samesign ult i64 %183, %158
  %184 = load i64, ptr %153, align 8, !range !9
  %.not109 = icmp samesign ult i64 %177, %184
  br i1 %.not109, label %185, label %odessy.chk10, !prof !11

185:                                              ; preds = %176
  %186 = getelementptr inbounds nuw %Ts5UInt8V, ptr %162, i64 %180
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  %189 = shl nuw i32 %188, 24
  %190 = getelementptr inbounds nuw %Ts5UInt8V, ptr %162, i64 %181
  %191 = load i8, ptr %190, align 1
  %192 = zext i8 %191 to i32
  %193 = shl nuw nsw i32 %192, 16
  %194 = or disjoint i32 %193, %189
  %195 = getelementptr inbounds nuw %Ts5UInt8V, ptr %162, i64 %182
  %196 = load i8, ptr %195, align 1
  %197 = zext i8 %196 to i32
  %198 = shl nuw nsw i32 %197, 8
  %199 = or disjoint i32 %194, %198
  %200 = getelementptr inbounds nuw %Ts5UInt8V, ptr %162, i64 %183
  %201 = load i8, ptr %200, align 1
  %202 = zext i8 %201 to i32
  %203 = or disjoint i32 %199, %202
  %204 = getelementptr inbounds nuw %Ts6UInt32V, ptr %154, i64 %177
  store i32 %203, ptr %204, align 4
  %205 = icmp eq i64 %178, 16
  br i1 %205, label %.preheader.preheader.preheader, label %176

.preheader.preheader.preheader:                   ; preds = %185
  %.lcssa16 = phi i64 [ %184, %185 ]
  %umin = call i64 @llvm.umin.i64(i64 %.lcssa16, i64 64)
  %exit.mainloop.at = call i64 @llvm.umax.i64(i64 %umin, i64 16)
  %206 = icmp ult i64 16, %exit.mainloop.at
  br i1 %206, label %.preheader.preheader, label %postloop

.loopexit17:                                      ; preds = %328, %main.exit.selector
  %207 = load i64, ptr %reference.new3, align 8, !range !9
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %odessy.chk14, label %209, !prof !10

209:                                              ; preds = %.loopexit17
  %210 = load i32, ptr %144, align 8
  %211 = icmp eq i64 %207, 1
  br i1 %211, label %odessy.chk15, label %212, !prof !10

212:                                              ; preds = %209
  %213 = load i32, ptr %145, align 4
  %214 = icmp samesign ult i64 %207, 3
  br i1 %214, label %odessy.chk16, label %215, !prof !10

215:                                              ; preds = %212
  %216 = load i32, ptr %146, align 8
  %217 = icmp eq i64 %207, 3
  br i1 %217, label %odessy.chk17, label %218, !prof !10

218:                                              ; preds = %215
  %219 = load i32, ptr %147, align 4
  %220 = icmp samesign ult i64 %207, 5
  br i1 %220, label %odessy.chk18, label %221, !prof !10

221:                                              ; preds = %218
  %222 = load i32, ptr %148, align 8
  %223 = icmp eq i64 %207, 5
  br i1 %223, label %odessy.chk19, label %224, !prof !10

224:                                              ; preds = %221
  %225 = load i32, ptr %149, align 4
  %226 = icmp samesign ult i64 %207, 7
  br i1 %226, label %odessy.chk20, label %227, !prof !10

227:                                              ; preds = %224
  %228 = load i32, ptr %150, align 8
  %229 = icmp eq i64 %207, 7
  br i1 %229, label %odessy.chk21, label %230, !prof !10

230:                                              ; preds = %227
  %231 = load i32, ptr %151, align 4
  br label %270

.preheader.preheader:                             ; preds = %.preheader.preheader.preheader, %.preheader.preheader
  %232 = phi i64 [ %233, %.preheader.preheader ], [ 16, %.preheader.preheader.preheader ]
  %233 = add nuw nsw i64 %232, 1
  %234 = add nsw i64 %232, -15
  %.not110 = icmp samesign ult i64 %234, %.lcssa16
  %235 = getelementptr inbounds nuw %Ts6UInt32V, ptr %154, i64 %234
  %236 = load i32, ptr %235, align 4
  %237 = call i32 @llvm.fshl.i32(i32 %236, i32 %236, i32 25)
  %238 = call i32 @llvm.fshl.i32(i32 %236, i32 %236, i32 14)
  %239 = xor i32 %237, %238
  %240 = lshr i32 %236, 3
  %241 = xor i32 %239, %240
  %242 = add nsw i64 %232, -2
  %.not111 = icmp ult i64 %242, %.lcssa16
  %.not114 = icmp samesign ult i64 %232, %.lcssa16
  %243 = getelementptr inbounds nuw %Ts6UInt32V, ptr %154, i64 %242
  %244 = load i32, ptr %243, align 4
  %245 = call i32 @llvm.fshl.i32(i32 %244, i32 %244, i32 15)
  %246 = call i32 @llvm.fshl.i32(i32 %244, i32 %244, i32 13)
  %247 = xor i32 %245, %246
  %248 = lshr i32 %244, 10
  %249 = xor i32 %247, %248
  %gep = getelementptr %Ts6UInt32V, ptr %invariant.gep, i64 %232
  %250 = load i32, ptr %gep, align 4
  %gep182 = getelementptr %Ts6UInt32V, ptr %invariant.gep181, i64 %232
  %251 = load i32, ptr %gep182, align 4
  %252 = add i32 %249, %241
  %253 = add i32 %252, %250
  %254 = add i32 %253, %251
  %255 = getelementptr inbounds nuw %Ts6UInt32V, ptr %154, i64 %232
  store i32 %254, ptr %255, align 4
  %256 = icmp eq i64 %233, 64
  %257 = icmp ult i64 %233, %exit.mainloop.at
  %258 = xor i1 %257, true
  br i1 %258, label %main.exit.selector, label %.preheader.preheader

main.exit.selector:                               ; preds = %.preheader.preheader
  %.lcssa18 = phi i64 [ %233, %.preheader.preheader ]
  %259 = icmp ult i64 %.lcssa18, 64
  br i1 %259, label %postloop, label %.loopexit17

260:                                              ; preds = %270
  %.lcssa8 = phi i32 [ %273, %270 ]
  %.lcssa7 = phi i32 [ %274, %270 ]
  %.lcssa6 = phi i32 [ %275, %270 ]
  %.lcssa5 = phi i32 [ %277, %270 ]
  %.lcssa4 = phi i32 [ %278, %270 ]
  %.lcssa3 = phi i32 [ %279, %270 ]
  %.lcssa2 = phi i32 [ %308, %270 ]
  %.lcssa = phi i32 [ %309, %270 ]
  %261 = add i32 %.lcssa, %210
  store i32 %261, ptr %144, align 8
  %262 = add i32 %.lcssa3, %213
  store i32 %262, ptr %145, align 4
  %263 = add i32 %.lcssa4, %216
  store i32 %263, ptr %146, align 8
  %264 = add i32 %.lcssa5, %219
  store i32 %264, ptr %147, align 4
  %265 = add i32 %.lcssa2, %222
  store i32 %265, ptr %148, align 8
  %266 = add i32 %.lcssa6, %225
  store i32 %266, ptr %149, align 4
  %267 = add i32 %.lcssa7, %228
  store i32 %267, ptr %150, align 8
  %268 = add i32 %.lcssa8, %231
  store i32 %268, ptr %151, align 4
  %269 = icmp eq i64 %174, %159
  br i1 %269, label %.loopexit.thread, label %.preheader125

270:                                              ; preds = %270, %230
  %271 = phi i64 [ 0, %230 ], [ %280, %270 ]
  %272 = phi i32 [ %231, %230 ], [ %273, %270 ]
  %273 = phi i32 [ %228, %230 ], [ %274, %270 ]
  %274 = phi i32 [ %225, %230 ], [ %275, %270 ]
  %275 = phi i32 [ %222, %230 ], [ %308, %270 ]
  %276 = phi i32 [ %219, %230 ], [ %277, %270 ]
  %277 = phi i32 [ %216, %230 ], [ %278, %270 ]
  %278 = phi i32 [ %213, %230 ], [ %279, %270 ]
  %279 = phi i32 [ %210, %230 ], [ %309, %270 ]
  %280 = add nuw nsw i64 %271, 1
  %281 = call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 26)
  %282 = call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 21)
  %283 = xor i32 %281, %282
  %284 = call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 7)
  %285 = xor i32 %283, %284
  %286 = and i32 %275, %274
  %287 = xor i32 %275, -1
  %288 = and i32 %273, %287
  %289 = or i32 %286, %288
  %290 = getelementptr inbounds nuw %Ts6UInt32V, ptr %164, i64 %271
  %291 = load i32, ptr %290, align 4
  %292 = getelementptr inbounds nuw %Ts6UInt32V, ptr %154, i64 %271
  %293 = load i32, ptr %292, align 4
  %294 = add i32 %289, %272
  %295 = add i32 %294, %285
  %296 = add i32 %295, %291
  %297 = add i32 %296, %293
  %298 = call i32 @llvm.fshl.i32(i32 %279, i32 %279, i32 30)
  %299 = call i32 @llvm.fshl.i32(i32 %279, i32 %279, i32 19)
  %300 = xor i32 %298, %299
  %301 = call i32 @llvm.fshl.i32(i32 %279, i32 %279, i32 10)
  %302 = xor i32 %300, %301
  %303 = xor i32 %278, %277
  %304 = and i32 %279, %303
  %305 = and i32 %278, %277
  %306 = xor i32 %304, %305
  %307 = add i32 %302, %306
  %308 = add i32 %297, %276
  %309 = add i32 %307, %297
  %310 = icmp eq i64 %280, 64
  br i1 %310, label %260, label %270

311:                                              ; preds = %117
  %312 = inttoptr i64 %124 to ptr
  call void @swift_release(ptr %312) #2
  call swiftcc void @swift_unexpectedError(ptr nonnull %126, ptr nonnull @".str.19.sha256/sha256.swift", i64 19, i1 true, i64 3)
  unreachable

313:                                              ; preds = %57
  tail call void asm sideeffect "", "n"(i32 37) #2
  tail call void @llvm.trap()
  unreachable

314:                                              ; preds = %28
  tail call void asm sideeffect "", "n"(i32 38) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %entry
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %36
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %112
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %127
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %161
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk10:                                     ; preds = %176
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %.preheader.preheader.postloop
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %318
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %327
  call void @odessy.chk(i32 13)
  unreachable

odessy.chk14:                                     ; preds = %.loopexit17
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk15:                                     ; preds = %209
  call void @odessy.chk(i32 15)
  unreachable

odessy.chk16:                                     ; preds = %212
  call void @odessy.chk(i32 16)
  unreachable

odessy.chk17:                                     ; preds = %215
  call void @odessy.chk(i32 17)
  unreachable

odessy.chk18:                                     ; preds = %218
  call void @odessy.chk(i32 18)
  unreachable

odessy.chk19:                                     ; preds = %221
  call void @odessy.chk(i32 19)
  unreachable

odessy.chk20:                                     ; preds = %224
  call void @odessy.chk(i32 20)
  unreachable

odessy.chk21:                                     ; preds = %227
  call void @odessy.chk(i32 21)
  unreachable

odessy.chk22:                                     ; preds = %.loopexit
  call void @odessy.chk(i32 22)
  unreachable

postloop:                                         ; preds = %.preheader.preheader.preheader, %main.exit.selector
  %.copy = phi i64 [ 16, %.preheader.preheader.preheader ], [ %.lcssa18, %main.exit.selector ]
  br label %.preheader.preheader.postloop

.preheader.preheader.postloop:                    ; preds = %328, %postloop
  %315 = phi i64 [ %316, %328 ], [ %.copy, %postloop ]
  %316 = add nuw nsw i64 %315, 1
  %317 = add nsw i64 %315, -15
  %.not110.postloop = icmp samesign ult i64 %317, %.lcssa16
  br i1 %.not110.postloop, label %318, label %odessy.chk11, !prof !11

318:                                              ; preds = %.preheader.preheader.postloop
  %319 = getelementptr inbounds nuw %Ts6UInt32V, ptr %154, i64 %317
  %320 = load i32, ptr %319, align 4
  %321 = call i32 @llvm.fshl.i32(i32 %320, i32 %320, i32 25)
  %322 = call i32 @llvm.fshl.i32(i32 %320, i32 %320, i32 14)
  %323 = xor i32 %321, %322
  %324 = lshr i32 %320, 3
  %325 = xor i32 %323, %324
  %326 = add nsw i64 %315, -2
  %.not111.postloop = icmp ult i64 %326, %.lcssa16
  br i1 %.not111.postloop, label %327, label %odessy.chk12, !prof !11

327:                                              ; preds = %318
  %.not114.postloop = icmp samesign ult i64 %315, %.lcssa16
  br i1 %.not114.postloop, label %328, label %odessy.chk13, !prof !11

328:                                              ; preds = %327
  %329 = getelementptr inbounds nuw %Ts6UInt32V, ptr %154, i64 %326
  %330 = load i32, ptr %329, align 4
  %331 = call i32 @llvm.fshl.i32(i32 %330, i32 %330, i32 15)
  %332 = call i32 @llvm.fshl.i32(i32 %330, i32 %330, i32 13)
  %333 = xor i32 %331, %332
  %334 = lshr i32 %330, 10
  %335 = xor i32 %333, %334
  %gep.postloop = getelementptr %Ts6UInt32V, ptr %invariant.gep, i64 %315
  %336 = load i32, ptr %gep.postloop, align 4
  %gep182.postloop = getelementptr %Ts6UInt32V, ptr %invariant.gep181, i64 %315
  %337 = load i32, ptr %gep182.postloop, align 4
  %338 = add i32 %335, %325
  %339 = add i32 %338, %336
  %340 = add i32 %339, %337
  %341 = getelementptr inbounds nuw %Ts6UInt32V, ptr %154, i64 %315
  store i32 %340, ptr %341, align 4
  %342 = icmp eq i64 %316, 64
  br i1 %342, label %.loopexit17, label %.preheader.preheader.postloop, !llvm.loop !15, !loop_constrainer.loop.clone !20
}

declare swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"() local_unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: nounwind
declare ptr @swift_bridgeObjectRetain(ptr returned) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @swift_release(ptr) local_unnamed_addr #2

define linkonce_odr hidden swiftcc { i64, i8 } @"$ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5UInt8VGXEfU_AGSiADs5Error_psAARzSSRsd__r__lIetyyrzo_Tpq5Si_Tg5"(i64 %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias swifterror captures(none) dereferenceable(8) %4) local_unnamed_addr #0 {
entry:
  %5 = inttoptr i64 %0 to ptr
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %58 [
    i8 45, label %7
    i8 43, label %53
  ]

7:                                                ; preds = %entry
  %8 = icmp slt i64 %1, 1
  br i1 %8, label %odessy.chk1, label %9, !prof !10

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %11 = icmp eq i64 %1, 1
  br i1 %11, label %.loopexit, label %12, !prof !10

12:                                               ; preds = %9
  %13 = icmp eq i64 %0, 0
  %14 = icmp slt i64 %2, 11
  %15 = trunc i64 %2 to i8
  %16 = add i8 %15, 55
  %17 = add i8 %15, 87
  %18 = add i8 %15, 48
  %19 = select i1 %14, i8 97, i8 %17
  %20 = select i1 %14, i8 65, i8 %16
  %21 = select i1 %14, i8 %18, i8 58
  br i1 %13, label %.loopexit, label %26

.loopexit:                                        ; preds = %78, %81, %87, %94, %34, %37, %43, %50, %113, %116, %122, %129, %60, %58, %55, %12, %9
  %22 = phi i64 [ 0, %9 ], [ 0, %12 ], [ 0, %55 ], [ 0, %60 ], [ 0, %58 ], [ 0, %50 ], [ 0, %129 ], [ 0, %113 ], [ 0, %116 ], [ %123, %122 ], [ 0, %34 ], [ 0, %37 ], [ %44, %43 ], [ 0, %78 ], [ 0, %81 ], [ %88, %87 ], [ 0, %94 ]
  %23 = phi i8 [ 1, %9 ], [ 0, %12 ], [ 1, %55 ], [ 0, %60 ], [ 1, %58 ], [ 1, %50 ], [ 1, %129 ], [ 1, %113 ], [ 1, %116 ], [ 0, %122 ], [ 1, %34 ], [ 1, %37 ], [ 0, %43 ], [ 1, %78 ], [ 1, %81 ], [ 0, %87 ], [ 1, %94 ]
  %24 = insertvalue { i64, i8 } undef, i64 %22, 0
  %25 = insertvalue { i64, i8 } %24, i8 %23, 1
  ret { i64, i8 } %25

26:                                               ; preds = %12
  %27 = getelementptr i8, ptr %5, i64 %1
  br label %28

28:                                               ; preds = %43, %26
  %29 = phi ptr [ %10, %26 ], [ %45, %43 ]
  %30 = phi i64 [ 0, %26 ], [ %44, %43 ]
  %31 = load i8, ptr %29, align 1
  %32 = icmp ugt i8 %31, 47
  %33 = icmp ult i8 %31, %21
  %or.cond = select i1 %32, i1 %33, i1 false
  br i1 %or.cond, label %34, label %47, !prof !13

34:                                               ; preds = %50, %47, %28
  %.sink = phi i8 [ -55, %47 ], [ -87, %50 ], [ -48, %28 ]
  %35 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %30, i64 %2)
  %36 = extractvalue { i64, i1 } %35, 1
  br i1 %36, label %.loopexit, label %37

37:                                               ; preds = %34
  %38 = add i8 %31, %.sink
  %39 = extractvalue { i64, i1 } %35, 0
  %40 = zext i8 %38 to i64
  %41 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %39, i64 %40)
  %42 = extractvalue { i64, i1 } %41, 1
  br i1 %42, label %.loopexit, label %43, !prof !10

43:                                               ; preds = %37
  %44 = extractvalue { i64, i1 } %41, 0
  %45 = getelementptr inbounds nuw i8, ptr %29, i64 1
  %46 = icmp eq ptr %45, %27
  br i1 %46, label %.loopexit, label %28

47:                                               ; preds = %28
  %48 = icmp ugt i8 %31, 64
  %49 = icmp ult i8 %31, %20
  %or.cond4 = select i1 %48, i1 %49, i1 false
  br i1 %or.cond4, label %34, label %50, !prof !13

50:                                               ; preds = %47
  %51 = icmp ugt i8 %31, 96
  %52 = icmp ult i8 %31, %19
  %or.cond5 = select i1 %51, i1 %52, i1 false
  br i1 %or.cond5, label %34, label %.loopexit, !prof !13

53:                                               ; preds = %entry
  %54 = icmp slt i64 %1, 1
  br i1 %54, label %odessy.chk, label %55, !prof !10

55:                                               ; preds = %53
  %56 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %57 = icmp eq i64 %1, 1
  br i1 %57, label %.loopexit, label %60, !prof !10

58:                                               ; preds = %entry
  %59 = icmp eq i64 %1, 0
  br i1 %59, label %.loopexit, label %97, !prof !10

60:                                               ; preds = %55
  %61 = icmp eq i64 %0, 0
  %62 = icmp slt i64 %2, 11
  %63 = trunc i64 %2 to i8
  %64 = add i8 %63, 55
  %65 = add i8 %63, 87
  %66 = add i8 %63, 48
  %67 = select i1 %62, i8 97, i8 %65
  %68 = select i1 %62, i8 65, i8 %64
  %69 = select i1 %62, i8 %66, i8 58
  br i1 %61, label %.loopexit, label %70

70:                                               ; preds = %60
  %71 = getelementptr i8, ptr %5, i64 %1
  br label %72

72:                                               ; preds = %87, %70
  %73 = phi ptr [ %56, %70 ], [ %89, %87 ]
  %74 = phi i64 [ 0, %70 ], [ %88, %87 ]
  %75 = load i8, ptr %73, align 1
  %76 = icmp ugt i8 %75, 47
  %77 = icmp ult i8 %75, %69
  %or.cond6 = select i1 %76, i1 %77, i1 false
  br i1 %or.cond6, label %78, label %91, !prof !13

78:                                               ; preds = %94, %91, %72
  %.sink55 = phi i8 [ -55, %91 ], [ -87, %94 ], [ -48, %72 ]
  %79 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %74, i64 %2)
  %80 = extractvalue { i64, i1 } %79, 1
  br i1 %80, label %.loopexit, label %81

81:                                               ; preds = %78
  %82 = add i8 %75, %.sink55
  %83 = extractvalue { i64, i1 } %79, 0
  %84 = zext i8 %82 to i64
  %85 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %83, i64 %84)
  %86 = extractvalue { i64, i1 } %85, 1
  br i1 %86, label %.loopexit, label %87, !prof !10

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %85, 0
  %89 = getelementptr inbounds nuw i8, ptr %73, i64 1
  %90 = icmp eq ptr %89, %71
  br i1 %90, label %.loopexit, label %72

91:                                               ; preds = %72
  %92 = icmp ugt i8 %75, 64
  %93 = icmp ult i8 %75, %68
  %or.cond7 = select i1 %92, i1 %93, i1 false
  br i1 %or.cond7, label %78, label %94, !prof !13

94:                                               ; preds = %91
  %95 = icmp ugt i8 %75, 96
  %96 = icmp ult i8 %75, %67
  %or.cond8 = select i1 %95, i1 %96, i1 false
  br i1 %or.cond8, label %78, label %.loopexit, !prof !13

97:                                               ; preds = %58
  %98 = icmp slt i64 %2, 11
  %99 = trunc i64 %2 to i8
  %100 = add i8 %99, 55
  %101 = add i8 %99, 87
  %102 = add i8 %99, 48
  %103 = select i1 %98, i8 97, i8 %101
  %104 = select i1 %98, i8 65, i8 %100
  %105 = select i1 %98, i8 %102, i8 58
  %106 = getelementptr inbounds i8, ptr %5, i64 %1
  br label %107

107:                                              ; preds = %122, %97
  %108 = phi ptr [ %5, %97 ], [ %124, %122 ]
  %109 = phi i64 [ 0, %97 ], [ %123, %122 ]
  %110 = load i8, ptr %108, align 1
  %111 = icmp ugt i8 %110, 47
  %112 = icmp ult i8 %110, %105
  %or.cond9 = select i1 %111, i1 %112, i1 false
  br i1 %or.cond9, label %113, label %126, !prof !13

113:                                              ; preds = %129, %126, %107
  %.sink56 = phi i8 [ -55, %126 ], [ -87, %129 ], [ -48, %107 ]
  %114 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %109, i64 %2)
  %115 = extractvalue { i64, i1 } %114, 1
  br i1 %115, label %.loopexit, label %116

116:                                              ; preds = %113
  %117 = add i8 %110, %.sink56
  %118 = extractvalue { i64, i1 } %114, 0
  %119 = zext i8 %117 to i64
  %120 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %118, i64 %119)
  %121 = extractvalue { i64, i1 } %120, 1
  br i1 %121, label %.loopexit, label %122, !prof !10

122:                                              ; preds = %116
  %123 = extractvalue { i64, i1 } %120, 0
  %124 = getelementptr inbounds nuw i8, ptr %108, i64 1
  %125 = icmp eq ptr %124, %106
  br i1 %125, label %.loopexit, label %107

126:                                              ; preds = %107
  %127 = icmp ugt i8 %110, 64
  %128 = icmp ult i8 %110, %104
  %or.cond10 = select i1 %127, i1 %128, i1 false
  br i1 %or.cond10, label %113, label %129, !prof !13

129:                                              ; preds = %126
  %130 = icmp ugt i8 %110, 96
  %131 = icmp ult i8 %110, %103
  %or.cond11 = select i1 %130, i1 %131, i1 false
  br i1 %or.cond11, label %113, label %.loopexit, !prof !13

odessy.chk:                                       ; preds = %53
  call void @odessy.chk(i32 23)
  unreachable

odessy.chk1:                                      ; preds = %7
  call void @odessy.chk(i32 24)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSSSiADSSRszsAER_r0_lIetgyr_Tpq5Si_Tg5"(i64 %0, ptr %1, i64 %2) local_unnamed_addr #3 {
entry:
  %3 = alloca %TSS, align 8
  %4 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  call void @llvm.lifetime.start.p0(ptr %3)
  store i64 %0, ptr %3, align 8
  %._guts._object._object = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %._guts._object._object, align 8
  %5 = tail call ptr @swift_bridgeObjectRetain(ptr returned %1) #2
  %6 = call swiftcc { i64, ptr } @"$sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufC"(ptr noalias nonnull %3, ptr nonnull @"$sSSN", ptr nonnull @"$sSSs25LosslessStringConvertiblesWP", ptr nonnull @"$sSSSTsWP")
  %7 = extractvalue { i64, ptr } %6, 0
  %8 = extractvalue { i64, ptr } %6, 1
  call void @llvm.lifetime.end.p0(ptr %3)
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 1152921504606846976
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %12, !prof !11

12:                                               ; preds = %entry
  %13 = call swiftcc { i64, ptr } @"$sSS8_copyingyS2SFZ"(i64 %7, ptr nonnull %8)
  call void @swift_bridgeObjectRelease(ptr nonnull %8) #2
  %14 = extractvalue { i64, ptr } %13, 0
  %15 = extractvalue { i64, ptr } %13, 1
  %.pre = ptrtoint ptr %15 to i64
  br label %16

16:                                               ; preds = %12, %entry
  %.pre-phi = phi i64 [ %9, %entry ], [ %.pre, %12 ]
  %17 = phi i64 [ %7, %entry ], [ %14, %12 ]
  %18 = phi ptr [ %8, %entry ], [ %15, %12 ]
  %19 = and i64 %.pre-phi, 2305843009213693952
  %.not = icmp eq i64 %19, 0
  br i1 %.not, label %25, label %20

20:                                               ; preds = %16
  %21 = lshr i64 %.pre-phi, 56
  %22 = and i64 %21, 15
  call void @llvm.lifetime.start.p0(ptr %4)
  %.elt5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %23 = and i64 %.pre-phi, 72057594037927935
  store i64 %17, ptr %4, align 8
  store i64 %23, ptr %.elt5, align 8
  %24 = trunc i64 %17 to i8
  switch i8 %24, label %72 [
    i8 45, label %27
    i8 43, label %71
  ]

25:                                               ; preds = %16
  %26 = and i64 %17, 1152921504606846976
  %.not68 = icmp eq i64 %26, 0
  br i1 %.not68, label %149, label %145, !prof !10

27:                                               ; preds = %20
  switch i64 %22, label %28 [
    i64 0, label %282
    i64 1, label %.loopexit81
  ], !prof !12

28:                                               ; preds = %27
  %29 = icmp slt i64 %2, 11
  %30 = trunc i64 %2 to i8
  %31 = add i8 %30, 55
  %32 = add i8 %30, 87
  %33 = add i8 %30, 48
  %34 = select i1 %29, i8 97, i8 %32
  %35 = select i1 %29, i8 65, i8 %31
  %36 = select i1 %29, i8 %33, i8 58
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %38 = getelementptr i8, ptr %4, i64 %22
  br label %46

.loopexit81:                                      ; preds = %91, %94, %100, %107, %52, %55, %61, %68, %126, %129, %135, %142, %72, %71, %27
  %39 = phi i64 [ 0, %72 ], [ 0, %27 ], [ 0, %71 ], [ 0, %68 ], [ 0, %142 ], [ 0, %126 ], [ 0, %129 ], [ %136, %135 ], [ 0, %52 ], [ 0, %55 ], [ %62, %61 ], [ 0, %91 ], [ 0, %94 ], [ %101, %100 ], [ 0, %107 ]
  %40 = phi i8 [ 1, %72 ], [ 1, %27 ], [ 1, %71 ], [ 1, %68 ], [ 1, %142 ], [ 1, %126 ], [ 1, %129 ], [ 0, %135 ], [ 1, %52 ], [ 1, %55 ], [ 0, %61 ], [ 1, %91 ], [ 1, %94 ], [ 0, %100 ], [ 1, %107 ]
  call void @swift_bridgeObjectRelease(ptr %18) #2
  call void @llvm.lifetime.end.p0(ptr %4)
  br label %41

41:                                               ; preds = %.loopexit, %.loopexit81
  %42 = phi i64 [ %173, %.loopexit ], [ %39, %.loopexit81 ]
  %43 = phi i8 [ %174, %.loopexit ], [ %40, %.loopexit81 ]
  %44 = insertvalue { i64, i8 } undef, i64 %42, 0
  %45 = insertvalue { i64, i8 } %44, i8 %43, 1
  ret { i64, i8 } %45

46:                                               ; preds = %61, %28
  %47 = phi ptr [ %37, %28 ], [ %63, %61 ]
  %48 = phi i64 [ 0, %28 ], [ %62, %61 ]
  %49 = load i8, ptr %47, align 1
  %50 = icmp ugt i8 %49, 47
  %51 = icmp ult i8 %49, %36
  %or.cond = select i1 %50, i1 %51, i1 false
  br i1 %or.cond, label %52, label %65, !prof !13

52:                                               ; preds = %68, %65, %46
  %.sink = phi i8 [ -55, %65 ], [ -87, %68 ], [ -48, %46 ]
  %53 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %48, i64 %2)
  %54 = extractvalue { i64, i1 } %53, 1
  br i1 %54, label %.loopexit81, label %55

55:                                               ; preds = %52
  %56 = add i8 %49, %.sink
  %57 = extractvalue { i64, i1 } %53, 0
  %58 = zext i8 %56 to i64
  %59 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %57, i64 %58)
  %60 = extractvalue { i64, i1 } %59, 1
  br i1 %60, label %.loopexit81, label %61, !prof !10

61:                                               ; preds = %55
  %62 = extractvalue { i64, i1 } %59, 0
  %63 = getelementptr inbounds nuw i8, ptr %47, i64 1
  %64 = icmp eq ptr %63, %38
  br i1 %64, label %.loopexit81, label %46

65:                                               ; preds = %46
  %66 = icmp ugt i8 %49, 64
  %67 = icmp ult i8 %49, %35
  %or.cond10 = select i1 %66, i1 %67, i1 false
  br i1 %or.cond10, label %52, label %68, !prof !13

68:                                               ; preds = %65
  %69 = icmp ugt i8 %49, 96
  %70 = icmp ult i8 %49, %34
  %or.cond11 = select i1 %69, i1 %70, i1 false
  br i1 %or.cond11, label %52, label %.loopexit81, !prof !13

71:                                               ; preds = %20
  switch i64 %22, label %74 [
    i64 0, label %281
    i64 1, label %.loopexit81
  ], !prof !12

72:                                               ; preds = %20
  %73 = icmp eq i64 %22, 0
  br i1 %73, label %.loopexit81, label %110, !prof !10

74:                                               ; preds = %71
  %75 = icmp slt i64 %2, 11
  %76 = trunc i64 %2 to i8
  %77 = add i8 %76, 55
  %78 = add i8 %76, 87
  %79 = add i8 %76, 48
  %80 = select i1 %75, i8 97, i8 %78
  %81 = select i1 %75, i8 65, i8 %77
  %82 = select i1 %75, i8 %79, i8 58
  %83 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %84 = getelementptr i8, ptr %4, i64 %22
  br label %85

85:                                               ; preds = %100, %74
  %86 = phi ptr [ %83, %74 ], [ %102, %100 ]
  %87 = phi i64 [ 0, %74 ], [ %101, %100 ]
  %88 = load i8, ptr %86, align 1
  %89 = icmp ugt i8 %88, 47
  %90 = icmp ult i8 %88, %82
  %or.cond12 = select i1 %89, i1 %90, i1 false
  br i1 %or.cond12, label %91, label %104, !prof !13

91:                                               ; preds = %107, %104, %85
  %.sink120 = phi i8 [ -55, %104 ], [ -87, %107 ], [ -48, %85 ]
  %92 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %87, i64 %2)
  %93 = extractvalue { i64, i1 } %92, 1
  br i1 %93, label %.loopexit81, label %94

94:                                               ; preds = %91
  %95 = add i8 %88, %.sink120
  %96 = extractvalue { i64, i1 } %92, 0
  %97 = zext i8 %95 to i64
  %98 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %96, i64 %97)
  %99 = extractvalue { i64, i1 } %98, 1
  br i1 %99, label %.loopexit81, label %100, !prof !10

100:                                              ; preds = %94
  %101 = extractvalue { i64, i1 } %98, 0
  %102 = getelementptr inbounds nuw i8, ptr %86, i64 1
  %103 = icmp eq ptr %102, %84
  br i1 %103, label %.loopexit81, label %85

104:                                              ; preds = %85
  %105 = icmp ugt i8 %88, 64
  %106 = icmp ult i8 %88, %81
  %or.cond13 = select i1 %105, i1 %106, i1 false
  br i1 %or.cond13, label %91, label %107, !prof !13

107:                                              ; preds = %104
  %108 = icmp ugt i8 %88, 96
  %109 = icmp ult i8 %88, %80
  %or.cond14 = select i1 %108, i1 %109, i1 false
  br i1 %or.cond14, label %91, label %.loopexit81, !prof !13

110:                                              ; preds = %72
  %111 = icmp slt i64 %2, 11
  %112 = trunc i64 %2 to i8
  %113 = add i8 %112, 55
  %114 = add i8 %112, 87
  %115 = add i8 %112, 48
  %116 = select i1 %111, i8 97, i8 %114
  %117 = select i1 %111, i8 65, i8 %113
  %118 = select i1 %111, i8 %115, i8 58
  %119 = getelementptr inbounds nuw i8, ptr %4, i64 %22
  br label %120

120:                                              ; preds = %135, %110
  %121 = phi ptr [ %4, %110 ], [ %137, %135 ]
  %122 = phi i64 [ 0, %110 ], [ %136, %135 ]
  %123 = load i8, ptr %121, align 1
  %124 = icmp ugt i8 %123, 47
  %125 = icmp ult i8 %123, %118
  %or.cond15 = select i1 %124, i1 %125, i1 false
  br i1 %or.cond15, label %126, label %139, !prof !13

126:                                              ; preds = %142, %139, %120
  %.sink121 = phi i8 [ -55, %139 ], [ -87, %142 ], [ -48, %120 ]
  %127 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %122, i64 %2)
  %128 = extractvalue { i64, i1 } %127, 1
  br i1 %128, label %.loopexit81, label %129

129:                                              ; preds = %126
  %130 = add i8 %123, %.sink121
  %131 = extractvalue { i64, i1 } %127, 0
  %132 = zext i8 %130 to i64
  %133 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %131, i64 %132)
  %134 = extractvalue { i64, i1 } %133, 1
  br i1 %134, label %.loopexit81, label %135, !prof !10

135:                                              ; preds = %129
  %136 = extractvalue { i64, i1 } %133, 0
  %137 = getelementptr inbounds nuw i8, ptr %121, i64 1
  %138 = icmp eq ptr %137, %119
  br i1 %138, label %.loopexit81, label %120

139:                                              ; preds = %120
  %140 = icmp ugt i8 %123, 64
  %141 = icmp ult i8 %123, %117
  %or.cond16 = select i1 %140, i1 %141, i1 false
  br i1 %or.cond16, label %126, label %142, !prof !13

142:                                              ; preds = %139
  %143 = icmp ugt i8 %123, 96
  %144 = icmp ult i8 %123, %116
  %or.cond17 = select i1 %143, i1 %144, i1 false
  br i1 %or.cond17, label %126, label %.loopexit81, !prof !13

145:                                              ; preds = %25
  %146 = and i64 %.pre-phi, 1152921504606846975
  %147 = add nuw nsw i64 %146, 32
  %148 = and i64 %17, 281474976710655
  br label %153

149:                                              ; preds = %25
  %150 = call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %17, ptr %18)
  %151 = extractvalue { i64, i64 } %150, 0
  %152 = extractvalue { i64, i64 } %150, 1
  br label %153

153:                                              ; preds = %149, %145
  %154 = phi i64 [ %151, %149 ], [ %147, %145 ]
  %155 = phi i64 [ %152, %149 ], [ %148, %145 ]
  %156 = inttoptr i64 %154 to ptr
  %157 = load i8, ptr %156, align 1
  switch i8 %157, label %207 [
    i8 45, label %158
    i8 43, label %202
  ]

158:                                              ; preds = %153
  %159 = icmp slt i64 %155, 1
  br i1 %159, label %odessy.chk1, label %160, !prof !10

160:                                              ; preds = %158
  %161 = getelementptr inbounds nuw i8, ptr %156, i64 1
  %162 = icmp eq i64 %155, 1
  br i1 %162, label %.loopexit, label %163, !prof !10

163:                                              ; preds = %160
  %164 = icmp eq i64 %154, 0
  %165 = icmp slt i64 %2, 11
  %166 = trunc i64 %2 to i8
  %167 = add i8 %166, 55
  %168 = add i8 %166, 87
  %169 = add i8 %166, 48
  %170 = select i1 %165, i8 97, i8 %168
  %171 = select i1 %165, i8 65, i8 %167
  %172 = select i1 %165, i8 %169, i8 58
  br i1 %164, label %.loopexit, label %175

.loopexit:                                        ; preds = %227, %230, %236, %243, %183, %186, %192, %199, %262, %265, %271, %278, %209, %207, %204, %163, %160
  %173 = phi i64 [ 0, %160 ], [ 0, %163 ], [ 0, %204 ], [ 0, %209 ], [ 0, %207 ], [ 0, %199 ], [ 0, %278 ], [ 0, %262 ], [ 0, %265 ], [ %272, %271 ], [ 0, %183 ], [ 0, %186 ], [ %193, %192 ], [ 0, %227 ], [ 0, %230 ], [ %237, %236 ], [ 0, %243 ]
  %174 = phi i8 [ 1, %160 ], [ 0, %163 ], [ 1, %204 ], [ 0, %209 ], [ 1, %207 ], [ 1, %199 ], [ 1, %278 ], [ 1, %262 ], [ 1, %265 ], [ 0, %271 ], [ 1, %183 ], [ 1, %186 ], [ 0, %192 ], [ 1, %227 ], [ 1, %230 ], [ 0, %236 ], [ 1, %243 ]
  call void @swift_bridgeObjectRelease(ptr %18) #2
  br label %41

175:                                              ; preds = %163
  %176 = getelementptr i8, ptr %156, i64 %155
  br label %177

177:                                              ; preds = %192, %175
  %178 = phi ptr [ %161, %175 ], [ %194, %192 ]
  %179 = phi i64 [ 0, %175 ], [ %193, %192 ]
  %180 = load i8, ptr %178, align 1
  %181 = icmp ugt i8 %180, 47
  %182 = icmp ult i8 %180, %172
  %or.cond18 = select i1 %181, i1 %182, i1 false
  br i1 %or.cond18, label %183, label %196, !prof !13

183:                                              ; preds = %199, %196, %177
  %.sink122 = phi i8 [ -55, %196 ], [ -87, %199 ], [ -48, %177 ]
  %184 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %179, i64 %2)
  %185 = extractvalue { i64, i1 } %184, 1
  br i1 %185, label %.loopexit, label %186

186:                                              ; preds = %183
  %187 = add i8 %180, %.sink122
  %188 = extractvalue { i64, i1 } %184, 0
  %189 = zext i8 %187 to i64
  %190 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %188, i64 %189)
  %191 = extractvalue { i64, i1 } %190, 1
  br i1 %191, label %.loopexit, label %192, !prof !10

192:                                              ; preds = %186
  %193 = extractvalue { i64, i1 } %190, 0
  %194 = getelementptr inbounds nuw i8, ptr %178, i64 1
  %195 = icmp eq ptr %194, %176
  br i1 %195, label %.loopexit, label %177

196:                                              ; preds = %177
  %197 = icmp ugt i8 %180, 64
  %198 = icmp ult i8 %180, %171
  %or.cond19 = select i1 %197, i1 %198, i1 false
  br i1 %or.cond19, label %183, label %199, !prof !13

199:                                              ; preds = %196
  %200 = icmp ugt i8 %180, 96
  %201 = icmp ult i8 %180, %170
  %or.cond20 = select i1 %200, i1 %201, i1 false
  br i1 %or.cond20, label %183, label %.loopexit, !prof !13

202:                                              ; preds = %153
  %203 = icmp slt i64 %155, 1
  br i1 %203, label %odessy.chk, label %204, !prof !10

204:                                              ; preds = %202
  %205 = getelementptr inbounds nuw i8, ptr %156, i64 1
  %206 = icmp eq i64 %155, 1
  br i1 %206, label %.loopexit, label %209, !prof !10

207:                                              ; preds = %153
  %208 = icmp eq i64 %155, 0
  br i1 %208, label %.loopexit, label %246, !prof !10

209:                                              ; preds = %204
  %210 = icmp eq i64 %154, 0
  %211 = icmp slt i64 %2, 11
  %212 = trunc i64 %2 to i8
  %213 = add i8 %212, 55
  %214 = add i8 %212, 87
  %215 = add i8 %212, 48
  %216 = select i1 %211, i8 97, i8 %214
  %217 = select i1 %211, i8 65, i8 %213
  %218 = select i1 %211, i8 %215, i8 58
  br i1 %210, label %.loopexit, label %219

219:                                              ; preds = %209
  %220 = getelementptr i8, ptr %156, i64 %155
  br label %221

221:                                              ; preds = %236, %219
  %222 = phi ptr [ %205, %219 ], [ %238, %236 ]
  %223 = phi i64 [ 0, %219 ], [ %237, %236 ]
  %224 = load i8, ptr %222, align 1
  %225 = icmp ugt i8 %224, 47
  %226 = icmp ult i8 %224, %218
  %or.cond21 = select i1 %225, i1 %226, i1 false
  br i1 %or.cond21, label %227, label %240, !prof !13

227:                                              ; preds = %243, %240, %221
  %.sink123 = phi i8 [ -55, %240 ], [ -87, %243 ], [ -48, %221 ]
  %228 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %223, i64 %2)
  %229 = extractvalue { i64, i1 } %228, 1
  br i1 %229, label %.loopexit, label %230

230:                                              ; preds = %227
  %231 = add i8 %224, %.sink123
  %232 = extractvalue { i64, i1 } %228, 0
  %233 = zext i8 %231 to i64
  %234 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %232, i64 %233)
  %235 = extractvalue { i64, i1 } %234, 1
  br i1 %235, label %.loopexit, label %236, !prof !10

236:                                              ; preds = %230
  %237 = extractvalue { i64, i1 } %234, 0
  %238 = getelementptr inbounds nuw i8, ptr %222, i64 1
  %239 = icmp eq ptr %238, %220
  br i1 %239, label %.loopexit, label %221

240:                                              ; preds = %221
  %241 = icmp ugt i8 %224, 64
  %242 = icmp ult i8 %224, %217
  %or.cond22 = select i1 %241, i1 %242, i1 false
  br i1 %or.cond22, label %227, label %243, !prof !13

243:                                              ; preds = %240
  %244 = icmp ugt i8 %224, 96
  %245 = icmp ult i8 %224, %216
  %or.cond23 = select i1 %244, i1 %245, i1 false
  br i1 %or.cond23, label %227, label %.loopexit, !prof !13

246:                                              ; preds = %207
  %247 = icmp slt i64 %2, 11
  %248 = trunc i64 %2 to i8
  %249 = add i8 %248, 55
  %250 = add i8 %248, 87
  %251 = add i8 %248, 48
  %252 = select i1 %247, i8 97, i8 %250
  %253 = select i1 %247, i8 65, i8 %249
  %254 = select i1 %247, i8 %251, i8 58
  %255 = getelementptr inbounds i8, ptr %156, i64 %155
  br label %256

256:                                              ; preds = %271, %246
  %257 = phi ptr [ %156, %246 ], [ %273, %271 ]
  %258 = phi i64 [ 0, %246 ], [ %272, %271 ]
  %259 = load i8, ptr %257, align 1
  %260 = icmp ugt i8 %259, 47
  %261 = icmp ult i8 %259, %254
  %or.cond24 = select i1 %260, i1 %261, i1 false
  br i1 %or.cond24, label %262, label %275, !prof !13

262:                                              ; preds = %278, %275, %256
  %.sink124 = phi i8 [ -55, %275 ], [ -87, %278 ], [ -48, %256 ]
  %263 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %258, i64 %2)
  %264 = extractvalue { i64, i1 } %263, 1
  br i1 %264, label %.loopexit, label %265

265:                                              ; preds = %262
  %266 = add i8 %259, %.sink124
  %267 = extractvalue { i64, i1 } %263, 0
  %268 = zext i8 %266 to i64
  %269 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %267, i64 %268)
  %270 = extractvalue { i64, i1 } %269, 1
  br i1 %270, label %.loopexit, label %271, !prof !10

271:                                              ; preds = %265
  %272 = extractvalue { i64, i1 } %269, 0
  %273 = getelementptr inbounds nuw i8, ptr %257, i64 1
  %274 = icmp eq ptr %273, %255
  br i1 %274, label %.loopexit, label %256

275:                                              ; preds = %256
  %276 = icmp ugt i8 %259, 64
  %277 = icmp ult i8 %259, %253
  %or.cond25 = select i1 %276, i1 %277, i1 false
  br i1 %or.cond25, label %262, label %278, !prof !13

278:                                              ; preds = %275
  %279 = icmp ugt i8 %259, 96
  %280 = icmp ult i8 %259, %252
  %or.cond26 = select i1 %279, i1 %280, i1 false
  br i1 %or.cond26, label %262, label %.loopexit, !prof !13

281:                                              ; preds = %71
  call void asm sideeffect "", "n"(i32 2) #2
  call void @llvm.trap()
  unreachable

282:                                              ; preds = %27
  call void asm sideeffect "", "n"(i32 3) #2
  call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %202
  call void @odessy.chk(i32 25)
  unreachable

odessy.chk1:                                      ; preds = %158
  call void @odessy.chk(i32 26)
  unreachable
}

; Function Attrs: nounwind
declare void @swift_bridgeObjectRelease(ptr) local_unnamed_addr #2

declare swiftcc { ptr, i64 } @"$s20FoundationEssentials3URLV15fileURLWithPathACSSh_tcfC"(i64, ptr) local_unnamed_addr #0

declare swiftcc { i64, i64 } @"$s20FoundationEssentials4DataV10contentsOf7optionsAcA3URLVh_AC14ReadingOptionsVtKcfC"(ptr, i64, i64, ptr swiftself, ptr noalias swifterror captures(none) dereferenceable(8)) local_unnamed_addr #0

declare swiftcc void @swift_unexpectedError(ptr, ptr, i64, i1, i64) local_unnamed_addr #0

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingyS2SFZ"(i64 %0, ptr %1) local_unnamed_addr #3 {
entry:
  %2 = ptrtoint ptr %1 to i64
  %3 = and i64 %2, 2305843009213693952
  %.not = icmp eq i64 %3, 0
  %4 = and i64 %0, 281474976710655
  %5 = lshr i64 %2, 56
  %6 = and i64 %5, 15
  %7 = select i1 %.not, i64 %4, i64 %6
  %8 = shl nuw i64 %7, 16
  %9 = and i64 %2, 1152921504606846976
  %10 = icmp eq i64 %9, 0
  %11 = and i64 %0, 576460752303423488
  %12 = icmp ne i64 %11, 0
  %or.cond = select i1 %10, i1 true, i1 %12
  %.v = select i1 %or.cond, i64 7, i64 11
  %13 = or disjoint i64 %8, %.v
  %14 = tail call swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64 15, i64 %13, i64 %0, ptr %1)
  %15 = extractvalue { i64, i64, i64, ptr } %14, 0
  %16 = extractvalue { i64, i64, i64, ptr } %14, 1
  %17 = extractvalue { i64, i64, i64, ptr } %14, 2
  %18 = extractvalue { i64, i64, i64, ptr } %14, 3
  %19 = tail call swiftcc { i64, ptr } @"$sSS8_copyingySSSsFZ"(i64 %15, i64 %16, i64 %17, ptr %18)
  tail call void @swift_bridgeObjectRelease(ptr %18) #2
  ret { i64, ptr } %19
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingySSSsFZ"(i64 %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #3 {
entry:
  %4 = alloca %Ts16IndexingIteratorVySs8UTF8ViewVG, align 8
  %5 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = and i64 %6, 1152921504606846976
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %26, label %9, !prof !11

9:                                                ; preds = %entry
  %10 = tail call swiftcc i64 @"$sSlsE5countSivgSs8UTF8ViewV_Tgq5"(i64 %0, i64 %1, i64 %2, ptr %3)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %._crit_edge, label %12

12:                                               ; preds = %9
  %13 = tail call swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %10, i64 0)
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %15 = ptrtoint ptr %14 to i64
  call void @llvm.lifetime.start.p0(ptr %4)
  %16 = call swiftcc i64 @"$sSTsE21_copySequenceContents12initializing8IteratorQz_SitSry7ElementQzG_tFSs8UTF8ViewV_Tgq5"(ptr noalias nonnull captures(none) %4, i64 %15, i64 %10, i64 %0, i64 %1, i64 %2, ptr %3)
  %._elements._slice._base._guts._object._object = getelementptr inbounds nuw i8, ptr %4, i64 24
  %17 = load ptr, ptr %._elements._slice._base._guts._object._object, align 8
  %18 = tail call ptr @swift_bridgeObjectRetain(ptr returned %3) #2
  tail call void @swift_bridgeObjectRelease(ptr %17) #2
  %.not = icmp eq i64 %16, %10
  br i1 %.not, label %19, label %odessy.chk, !prof !11

19:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(ptr %4)
  br label %._crit_edge

._crit_edge:                                      ; preds = %19, %9
  %20 = phi ptr [ %13, %19 ], [ @_swiftEmptyArrayStorage, %9 ]
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %22 = ptrtoint ptr %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %24 = load i64, ptr %23, align 8, !range !9
  %25 = tail call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %22, i64 %24), !noalias !21
  tail call void @swift_release(ptr %20) #2
  br label %53

26:                                               ; preds = %entry
  %27 = lshr i64 %0, 16
  %28 = lshr i64 %1, 16
  %29 = and i64 %6, 2305843009213693952
  %.not4 = icmp eq i64 %29, 0
  br i1 %.not4, label %30, label %46

30:                                               ; preds = %26
  %31 = and i64 %2, 1152921504606846976
  %.not5 = icmp eq i64 %31, 0
  br i1 %.not5, label %32, label %36, !prof !10

32:                                               ; preds = %30
  %33 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %2, ptr %3)
  %34 = extractvalue { i64, i64 } %33, 0
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %41, label %39

36:                                               ; preds = %30
  %37 = and i64 %6, 1152921504606846975
  %38 = add nuw nsw i64 %37, 32
  br label %39

39:                                               ; preds = %36, %32
  %.in = phi i64 [ %38, %36 ], [ %34, %32 ]
  %40 = add nuw i64 %.in, %27
  br label %41

41:                                               ; preds = %39, %32
  %42 = phi i64 [ %40, %39 ], [ 0, %32 ]
  %43 = sub nsw i64 %28, %27
  %44 = icmp sgt i64 %43, -1
  tail call void @llvm.assume(i1 %44)
  %45 = tail call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %42, i64 %43)
  br label %53

46:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(ptr %5)
  %.elt1 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %47 = and i64 %6, 72057594037927935
  store i64 %2, ptr %5, align 8
  store i64 %47, ptr %.elt1, align 8
  %48 = getelementptr inbounds nuw %Ts5UInt8V, ptr %5, i64 %27
  %49 = ptrtoint ptr %48 to i64
  %50 = sub nsw i64 %28, %27
  %51 = icmp sgt i64 %50, -1
  call void @llvm.assume(i1 %51)
  %52 = call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %49, i64 %50)
  call void @llvm.lifetime.end.p0(ptr %5)
  br label %53

53:                                               ; preds = %46, %41, %._crit_edge
  %.merged = phi { i64, ptr } [ %25, %._crit_edge ], [ %45, %41 ], [ %52, %46 ]
  ret { i64, ptr } %.merged

odessy.chk:                                       ; preds = %12
  call void @odessy.chk(i32 27)
  unreachable
}

define linkonce_odr hidden swiftcc i64 @"$sSlsE5countSivgSs8UTF8ViewV_Tgq5"(i64 %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #0 {
entry:
  %4 = ptrtoint ptr %3 to i64
  %5 = and i64 %4, 1152921504606846976
  %6 = icmp eq i64 %5, 0
  %7 = and i64 %2, 576460752303423488
  %8 = icmp ne i64 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  %10 = and i64 %0, 12
  %11 = zext i1 %9 to i64
  %12 = shl nuw nsw i64 4, %11
  %.not = icmp eq i64 %10, %12
  br i1 %.not, label %13, label %15, !prof !10

13:                                               ; preds = %entry
  %14 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %0, i64 %2, ptr %3)
  br label %15

15:                                               ; preds = %13, %entry
  %16 = phi i64 [ %14, %13 ], [ %0, %entry ]
  %17 = and i64 %1, 12
  %.not1 = icmp eq i64 %17, %12
  br i1 %.not1, label %18, label %20, !prof !10

18:                                               ; preds = %15
  %19 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %1, i64 %2, ptr %3)
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i64 [ %19, %18 ], [ %1, %15 ]
  br i1 %6, label %35, label %22, !prof !11

22:                                               ; preds = %20
  %23 = and i64 %4, 2305843009213693952
  %.not2 = icmp eq i64 %23, 0
  %24 = and i64 %2, 281474976710655
  %25 = lshr i64 %4, 56
  %26 = and i64 %25, 15
  %27 = select i1 %.not2, i64 %24, i64 %26
  %28 = lshr i64 %16, 16
  %29 = icmp samesign ult i64 %27, %28
  br i1 %29, label %odessy.chk, label %30, !prof !10

30:                                               ; preds = %22
  %31 = lshr i64 %21, 16
  %32 = icmp samesign ult i64 %27, %31
  br i1 %32, label %odessy.chk1, label %33, !prof !10

33:                                               ; preds = %30
  %34 = tail call swiftcc i64 @"$sSS8UTF8ViewV16_foreignDistance4from2toSiSS5IndexV_AGtF"(i64 %16, i64 %21, i64 %2, ptr %3)
  br label %39

35:                                               ; preds = %20
  %36 = lshr i64 %21, 16
  %37 = lshr i64 %16, 16
  %38 = sub nsw i64 %36, %37
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i64 [ %34, %33 ], [ %38, %35 ]
  ret i64 %40

odessy.chk:                                       ; preds = %22
  call void @odessy.chk(i32 28)
  unreachable

odessy.chk1:                                      ; preds = %30
  call void @odessy.chk(i32 29)
  unreachable
}

define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %. = tail call i64 @llvm.smax.i64(i64 %1, i64 %0)
  %2 = icmp eq i64 %., 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %entry
  %4 = tail call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMD") #15
  %5 = add i64 %., 32
  %6 = tail call noalias ptr @swift_allocObject(ptr %4, i64 %5, i64 7) #2
  %call.i = tail call i64 @malloc_usable_size(ptr noundef %6) #17
  %gepdiff = shl i64 %call.i, 1
  %7 = add i64 %gepdiff, -64
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %0, ptr %8, align 8
  %._storage1._capacityAndFlags = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %7, ptr %._storage1._capacityAndFlags, align 8
  br label %9

9:                                                ; preds = %3, %entry
  %10 = phi ptr [ %6, %3 ], [ @_swiftEmptyArrayStorage, %entry ]
  ret ptr %10
}

define linkonce_odr hidden swiftcc i64 @"$sSTsE21_copySequenceContents12initializing8IteratorQz_SitSry7ElementQzG_tFSs8UTF8ViewV_Tgq5"(ptr noalias captures(none) %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr %6) local_unnamed_addr #0 {
entry:
  %7 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %.loopexit17, label %9

9:                                                ; preds = %entry
  %10 = inttoptr i64 %1 to ptr
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %.loopexit17, label %12

12:                                               ; preds = %9
  %13 = icmp slt i64 %2, 0
  %14 = lshr i64 %4, 14
  br i1 %13, label %odessy.chk, label %15, !prof !10

15:                                               ; preds = %12
  %16 = lshr i64 %3, 14
  %17 = icmp eq i64 %16, %14
  br i1 %17, label %.loopexit17, label %18

18:                                               ; preds = %15
  %19 = ptrtoint ptr %6 to i64
  %20 = and i64 %19, 1152921504606846976
  %21 = icmp eq i64 %20, 0
  %22 = and i64 %5, 576460752303423488
  %23 = icmp ne i64 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  %25 = zext i1 %24 to i64
  %26 = shl nuw nsw i64 4, %25
  %27 = and i64 %19, 2305843009213693952
  %.not12 = icmp eq i64 %27, 0
  %.elt6 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %28 = and i64 %19, 72057594037927935
  %29 = and i64 %5, 1152921504606846976
  %.not13 = icmp eq i64 %29, 0
  %30 = and i64 %19, 1152921504606846975
  %31 = add nuw nsw i64 %30, 32
  %32 = and i64 %5, 281474976710655
  %33 = lshr i64 %19, 56
  %34 = and i64 %33, 15
  %35 = select i1 %.not12, i64 %32, i64 %34
  br label %36

36:                                               ; preds = %86, %18
  %37 = phi ptr [ %10, %18 ], [ %88, %86 ]
  %38 = phi i64 [ %3, %18 ], [ %81, %86 ]
  %39 = phi i64 [ 1, %18 ], [ %87, %86 ]
  %40 = and i64 %38, 12
  %.not = icmp eq i64 %40, %26
  br i1 %.not, label %41, label %43, !prof !10

41:                                               ; preds = %36
  %42 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %38, i64 %5, ptr %6)
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi i64 [ %42, %41 ], [ %38, %36 ]
  %45 = lshr i64 %44, 14
  %46 = icmp samesign ult i64 %45, %16
  %47 = icmp samesign uge i64 %45, %14
  %48 = or i1 %46, %47
  %.not1 = xor i1 %48, true
  br i1 %.not1, label %49, label %odessy.chk1, !prof !11

49:                                               ; preds = %43
  br i1 %21, label %52, label %50

50:                                               ; preds = %49
  %51 = tail call swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64 %44, i64 %5, ptr %6)
  br label %67

52:                                               ; preds = %49
  br i1 %.not12, label %53, label %63

53:                                               ; preds = %52
  br i1 %.not13, label %54, label %57, !prof !10

54:                                               ; preds = %53
  %55 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %5, ptr %6)
  %56 = extractvalue { i64, i64 } %55, 0
  br label %57

57:                                               ; preds = %54, %53
  %58 = phi i64 [ %56, %54 ], [ %31, %53 ]
  %59 = lshr i64 %44, 16
  %60 = inttoptr i64 %58 to ptr
  %61 = getelementptr inbounds nuw %Ts5UInt8V, ptr %60, i64 %59
  %62 = load i8, ptr %61, align 1
  br label %67

63:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(ptr %7)
  store i64 %5, ptr %7, align 8
  store i64 %28, ptr %.elt6, align 8
  %64 = lshr i64 %44, 16
  %65 = getelementptr inbounds nuw %Ts5UInt8V, ptr %7, i64 %64
  %66 = load i8, ptr %65, align 1
  call void @llvm.lifetime.end.p0(ptr %7)
  br label %67

67:                                               ; preds = %63, %57, %50
  %68 = phi i8 [ %51, %50 ], [ %62, %57 ], [ %66, %63 ]
  br i1 %.not, label %69, label %71, !prof !10

69:                                               ; preds = %67
  %70 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %38, i64 %5, ptr %6)
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i64 [ %70, %69 ], [ %38, %67 ]
  br i1 %21, label %77, label %73

73:                                               ; preds = %71
  %74 = lshr i64 %72, 16
  %.not15 = icmp samesign ult i64 %74, %35
  br i1 %.not15, label %75, label %odessy.chk2, !prof !11

75:                                               ; preds = %73
  %76 = tail call swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64 %72, i64 %5, ptr %6)
  br label %80

77:                                               ; preds = %71
  %78 = and i64 %72, -65536
  %79 = add i64 %78, 65540
  br label %80

80:                                               ; preds = %77, %75
  %81 = phi i64 [ %76, %75 ], [ %79, %77 ]
  store i8 %68, ptr %37, align 1
  %82 = icmp ne i64 %39, %2
  br i1 %82, label %83, label %.loopexit17

83:                                               ; preds = %80
  %84 = lshr i64 %81, 14
  %85 = icmp ne i64 %84, %14
  br i1 %85, label %86, label %.loopexit17

86:                                               ; preds = %83
  %87 = add nuw i64 %39, 1
  %88 = getelementptr inbounds nuw i8, ptr %37, i64 1
  br label %36

.loopexit17:                                      ; preds = %80, %83, %15, %9, %entry
  %.sink = phi i64 [ %3, %entry ], [ %3, %15 ], [ %3, %9 ], [ %81, %80 ], [ %81, %83 ]
  %89 = phi i64 [ 0, %entry ], [ 0, %15 ], [ %2, %9 ], [ %39, %83 ], [ %2, %80 ]
  store i64 %3, ptr %0, align 8
  %._elements3._slice._endIndex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %._elements3._slice._endIndex, align 8
  %._elements3._slice._base = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %._elements3._slice._base, align 8
  %._elements3._slice._base._guts._object._object = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %6, ptr %._elements3._slice._base._guts._object._object, align 8
  %._position4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %._position4, align 8
  ret i64 %89

odessy.chk:                                       ; preds = %12
  call void @odessy.chk(i32 30)
  unreachable

odessy.chk1:                                      ; preds = %43
  call void @odessy.chk(i32 31)
  unreachable

odessy.chk2:                                      ; preds = %73
  call void @odessy.chk(i32 32)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %0, i64 %1, ptr %2) local_unnamed_addr #3 {
entry:
  %3 = ptrtoint ptr %2 to i64
  %4 = and i64 %3, 1152921504606846976
  %5 = icmp eq i64 %4, 0
  %6 = and i64 %1, 576460752303423488
  %7 = icmp ne i64 %6, 0
  %or.cond = select i1 %5, i1 true, i1 %7
  %8 = lshr i64 %0, 16
  %9 = lshr i64 %0, 14
  %10 = and i64 %9, 3
  %.not3 = icmp eq i64 %10, 0
  br i1 %or.cond, label %24, label %11

11:                                               ; preds = %entry
  %12 = tail call swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex_8offsetBySS0D0VAF_SitF"(i64 15, i64 %8, i64 %1, ptr %2)
  br i1 %.not3, label %13, label %17

13:                                               ; preds = %11
  %14 = and i64 %12, -4
  %15 = and i64 %0, 3
  %16 = or disjoint i64 %14, %15
  br label %21

17:                                               ; preds = %11
  %18 = shl nuw nsw i64 %10, 16
  %19 = add i64 %12, %18
  %20 = and i64 %19, -65536
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i64 [ %16, %13 ], [ %20, %17 ]
  %23 = or i64 %22, 8
  br label %37

24:                                               ; preds = %entry
  %25 = tail call swiftcc i64 @"$sSS9UTF16ViewV5index_8offsetBySS5IndexVAF_SitF"(i64 15, i64 %8, i64 %1, ptr %2)
  br i1 %.not3, label %26, label %30

26:                                               ; preds = %24
  %27 = and i64 %25, -4
  %28 = and i64 %0, 3
  %29 = or disjoint i64 %27, %28
  br label %34

30:                                               ; preds = %24
  %31 = shl nuw nsw i64 %10, 16
  %32 = add i64 %25, %31
  %33 = and i64 %32, -65536
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i64 [ %29, %26 ], [ %33, %30 ]
  %36 = or i64 %35, 4
  br label %37

37:                                               ; preds = %34, %21
  %38 = phi i64 [ %23, %21 ], [ %36, %34 ]
  ret i64 %38
}

define linkonce_odr hidden swiftcc ptr @"$ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlF20FoundationEssentials4DataV_Tgq5"(i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %access-scratch = alloca [24 x i8], align 8
  %2 = alloca <{ %T20FoundationEssentials4DataV8IteratorV, %TSi }>, align 8
  %3 = lshr i64 %1, 62
  %4 = trunc nuw nsw i64 %3 to i8
  switch i8 %4, label %default.unreachable34 [
    i8 0, label %5
    i8 1, label %8
    i8 2, label %14
    i8 3, label %44
  ]

default.unreachable34:                            ; preds = %entry
  unreachable

5:                                                ; preds = %entry
  %6 = lshr i64 %1, 48
  %7 = and i64 %6, 255
  br label %25

8:                                                ; preds = %entry
  %9 = trunc i64 %0 to i32
  %10 = lshr i64 %0, 32
  %11 = trunc nuw i64 %10 to i32
  %12 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %11, i32 %9)
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %odessy.chk2, label %22, !prof !10

14:                                               ; preds = %entry
  %15 = inttoptr i64 %0 to ptr
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.lifetime.start.p0(ptr %access-scratch)
  call void @swift_beginAccess(ptr nonnull %16, ptr nonnull %access-scratch, i64 0, ptr null) #2
  %.upperBound = getelementptr inbounds nuw i8, ptr %15, i64 24
  %17 = load i64, ptr %.upperBound, align 8
  %18 = load i64, ptr %16, align 8
  %19 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %17, i64 %18)
  %20 = extractvalue { i64, i1 } %19, 0
  %21 = extractvalue { i64, i1 } %19, 1
  br i1 %21, label %odessy.chk, label %25, !prof !10

22:                                               ; preds = %8
  %23 = extractvalue { i32, i1 } %12, 0
  %24 = sext i32 %23 to i64
  br label %25

25:                                               ; preds = %22, %14, %5
  %26 = phi i64 [ %24, %22 ], [ %7, %5 ], [ %20, %14 ]
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %25
  %29 = icmp slt i64 %26, 1
  br i1 %29, label %36, label %30

30:                                               ; preds = %28
  %31 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMD") #15
  %32 = add nuw i64 %26, 32
  %33 = call noalias ptr @swift_allocObject(ptr %31, i64 %32, i64 7) #2
  %call.i = call i64 @malloc_usable_size(ptr noundef %33) #17
  %gepdiff = shl i64 %call.i, 1
  %34 = add i64 %gepdiff, -64
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i64 %26, ptr %35, align 8
  %._storage33._capacityAndFlags = getelementptr inbounds nuw i8, ptr %33, i64 24
  store i64 %34, ptr %._storage33._capacityAndFlags, align 8
  br label %36

36:                                               ; preds = %30, %28
  %37 = phi ptr [ %33, %30 ], [ @_swiftEmptyArrayStorage, %28 ]
  call void @llvm.lifetime.start.p0(ptr %2)
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %39 = ptrtoint ptr %38 to i64
  %40 = icmp sgt i64 %26, -1
  call void @llvm.assume(i1 %40)
  call swiftcc void @"$s20FoundationEssentials4DataV13_copyContents12initializingAC8IteratorV_SitSrys5UInt8VG_tF"(ptr noalias nonnull sret(<{ %T20FoundationEssentials4DataV8IteratorV, %TSi }>) captures(none) %2, i64 %39, i64 %26, i64 %0, i64 %1)
  %41 = call ptr @"$s20FoundationEssentials4DataV8IteratorV_SitWOh"(ptr nonnull %2)
  %.elt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %42 = load i64, ptr %.elt, align 8
  %.not = icmp eq i64 %42, %26
  br i1 %.not, label %43, label %odessy.chk1, !prof !11

43:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(ptr %2)
  br label %44

44:                                               ; preds = %43, %25, %entry
  %45 = phi ptr [ %37, %43 ], [ @_swiftEmptyArrayStorage, %entry ], [ @_swiftEmptyArrayStorage, %25 ]
  ret ptr %45

odessy.chk:                                       ; preds = %14
  call void @odessy.chk(i32 33)
  unreachable

odessy.chk1:                                      ; preds = %36
  call void @odessy.chk(i32 34)
  unreachable

odessy.chk2:                                      ; preds = %8
  call void @odessy.chk(i32 35)
  unreachable
}

; Function Attrs: noinline nounwind
define linkonce_odr hidden void @"$s20FoundationEssentials4DataV15_RepresentationOWOe"(i64 %0, i64 %1) local_unnamed_addr #4 {
entry:
  %2 = lshr i64 %1, 62
  %3 = trunc nuw nsw i64 %2 to i8
  switch i8 %3, label %7 [
    i8 1, label %.sink.split
    i8 2, label %4
  ]

4:                                                ; preds = %entry
  %5 = inttoptr i64 %0 to ptr
  tail call void @swift_release(ptr %5) #2
  br label %.sink.split

.sink.split:                                      ; preds = %4, %entry
  %.sink1 = and i64 %1, 4611686018427387903
  %6 = inttoptr i64 %.sink1 to ptr
  tail call void @swift_release(ptr %6) #2
  br label %7

7:                                                ; preds = %.sink.split, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read)
define linkonce_odr hidden ptr @__swift_instantiateConcreteTypeFromMangledName(ptr %0) local_unnamed_addr #5 {
entry:
  %1 = load atomic i64, ptr %0 monotonic, align 8
  %2 = icmp slt i64 %1, 0
  br i1 %2, label %6, label %3, !prof !10

3:                                                ; preds = %6, %entry
  %4 = phi i64 [ %1, %entry ], [ %14, %6 ]
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5

6:                                                ; preds = %entry
  %7 = ashr i64 %1, 32
  %8 = sub nsw i64 0, %7
  %sext = shl i64 %1, 32
  %9 = ashr exact i64 %sext, 32
  %10 = ptrtoint ptr %0 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  %13 = tail call swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr %12, i64 %8, ptr null, ptr null) #18
  %14 = ptrtoint ptr %13 to i64
  store atomic i64 %14, ptr %0 monotonic, align 8
  br label %3
}

; Function Attrs: nounwind memory(argmem: readwrite)
declare swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr, i64, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn
declare ptr @swift_initStaticObject(ptr, ptr) local_unnamed_addr #7

; Function Attrs: noinline
declare swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #8

; Function Attrs: mustprogress nounwind willreturn
declare ptr @swift_initStackObject(ptr, ptr) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #8

; Function Attrs: mustprogress nounwind willreturn
declare void @swift_setDeallocating(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @swift_allocObject(ptr, i64, i64) local_unnamed_addr #2

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: noinline
declare swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nounwind
declare void @swift_beginAccess(ptr, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: sspreq
declare swiftcc void @"$s20FoundationEssentials4DataV13_copyContents12initializingAC8IteratorV_SitSrys5UInt8VG_tF"(ptr noalias sret(<{ %T20FoundationEssentials4DataV8IteratorV, %TSi }>) captures(none), i64, i64, i64, i64) local_unnamed_addr #10

; Function Attrs: noinline nounwind
define linkonce_odr hidden ptr @"$s20FoundationEssentials4DataV8IteratorV_SitWOh"(ptr %0) local_unnamed_addr #4 {
entry:
  %1 = tail call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$s20FoundationEssentials4DataV8IteratorV_SitMD") #15
  %2 = getelementptr inbounds i8, ptr %1, i64 -8
  %.valueWitnesses = load ptr, ptr %2, align 8, !invariant.load !20, !dereferenceable !24
  %3 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy = load ptr, ptr %3, align 8, !invariant.load !20
  tail call void %Destroy(ptr noalias %0, ptr %1) #2
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #8

declare swiftcc { i64, ptr } @"$sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufC"(ptr noalias, ptr, ptr, ptr) local_unnamed_addr #0

declare swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64, i64, i64, ptr) local_unnamed_addr #0

declare swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64, i64) local_unnamed_addr #0

; Function Attrs: noinline
declare swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64, i64, ptr) local_unnamed_addr #3

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64, i64, ptr) local_unnamed_addr #3

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex_8offsetBySS0D0VAF_SitF"(i64, i64, i64, ptr) local_unnamed_addr #3

declare swiftcc i64 @"$sSS9UTF16ViewV5index_8offsetBySS5IndexVAF_SitF"(i64, i64, i64, ptr) local_unnamed_addr #0

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV16_foreignDistance4from2toSiSS5IndexV_AGtF"(i64, i64, i64, ptr) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @malloc_usable_size(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

declare void @llvm.lifetime.end.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind }
attributes #3 = { noinline "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(argmem: readwrite) }
attributes #7 = { mustprogress nounwind willreturn }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { sspreq "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind memory(read) }
attributes #16 = { nounwind willreturn }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind memory(argmem: read) }

!swift.module.flags = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.linker.options = !{}

!0 = !{!"standard-library", i1 false}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"Objective-C Garbage Collection", i8 0}
!5 = !{i32 1, !"Swift Version", i32 7}
!6 = !{i32 1, !"Swift ABI Version", i32 7}
!7 = !{i32 1, !"Swift Major Version", i8 6}
!8 = !{i32 1, !"Swift Minor Version", i8 3}
!9 = !{i64 0, i64 9223372036854775807}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 2002}
!14 = !{!"branch_weights", !"expected", i32 1271702, i32 2146211946}
!15 = distinct !{!15, !16, !17, !18, !19}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!"llvm.loop.vectorize.enable", i1 false}
!18 = !{!"llvm.loop.licm_versioning.disable"}
!19 = !{!"llvm.loop.distribute.enable", i1 false}
!20 = !{}
!21 = !{!22}
!22 = distinct !{!22, !23, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_: argument 0"}
!23 = distinct !{!23, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_"}
!24 = !{i64 96}
