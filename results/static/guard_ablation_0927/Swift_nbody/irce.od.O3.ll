; ModuleID = 'results/static/guard_ablation_0927/Swift_nbody/irce.od.ll'
source_filename = "results/static/guard_ablation_0927/ir/nbody.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TSi = type <{ i64 }>
%struct._SwiftEmptyArrayStorage = type { %struct.HeapObject, %struct._SwiftArrayBodyStorage }
%struct.HeapObject = type { ptr, %struct.InlineRefCountsPlaceholder }
%struct.InlineRefCountsPlaceholder = type { i64 }
%struct._SwiftArrayBodyStorage = type { i64, i64 }
%TSa = type <{ %Ts22_ContiguousArrayBufferV }>
%Ts22_ContiguousArrayBufferV = type <{ ptr }>
%TSd = type <{ double }>
%swift.type_descriptor = type opaque
%Ts23_ContiguousArrayStorageCySdG_tailelems0c = type { [1 x i64], %Ts23_ContiguousArrayStorageCySdG_tailelems0 }
%Ts23_ContiguousArrayStorageCySdG_tailelems0 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%swift.refcounted = type { ptr, i64 }
%Ts10_ArrayBodyV = type <{ %TSo22_SwiftArrayBodyStorageV }>
%TSo22_SwiftArrayBodyStorageV = type <{ %TSi, %TSu }>
%TSu = type <{ i64 }>
%Ts23_ContiguousArrayStorageCySdG_tailelems1c = type { [1 x i64], %Ts23_ContiguousArrayStorageCySdG_tailelems1 }
%Ts23_ContiguousArrayStorageCySdG_tailelems1 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%Ts23_ContiguousArrayStorageCySdG_tailelems2c = type { [1 x i64], %Ts23_ContiguousArrayStorageCySdG_tailelems2 }
%Ts23_ContiguousArrayStorageCySdG_tailelems2 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%Ts23_ContiguousArrayStorageCySdG_tailelems3c = type { [1 x i64], %Ts23_ContiguousArrayStorageCySdG_tailelems3 }
%Ts23_ContiguousArrayStorageCySdG_tailelems3 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%Ts23_ContiguousArrayStorageCySdG_tailelems4c = type { [1 x i64], %Ts23_ContiguousArrayStorageCySdG_tailelems4 }
%Ts23_ContiguousArrayStorageCySdG_tailelems4 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%swift.protocol = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%swift.type = type { i64 }
%Ts6UInt64V = type <{ i64 }>
%TSS = type <{ %Ts11_StringGutsV }>
%Ts11_StringGutsV = type <{ %Ts13_StringObjectV }>
%Ts13_StringObjectV = type <{ %Ts6UInt64V, ptr }>
%Ts16IndexingIteratorVySs8UTF8ViewVG = type <{ %TSs8UTF8ViewV, %TSS5IndexV }>
%TSs8UTF8ViewV = type <{ %Ts5SliceVySS8UTF8ViewVG }>
%Ts5SliceVySS8UTF8ViewVG = type <{ %TSS5IndexV, %TSS5IndexV, %TSS8UTF8ViewV }>
%TSS8UTF8ViewV = type <{ %Ts11_StringGutsV }>
%TSS5IndexV = type <{ %Ts6UInt64V }>

@"$s5nbody5stepsSivp" = hidden local_unnamed_addr global %TSi zeroinitializer, align 8
@"$s5nbody1nSivp" = hidden local_unnamed_addr global %TSi zeroinitializer, align 8
@_swiftEmptyArrayStorage = external global %struct._SwiftEmptyArrayStorage, align 8
@"$s5nbody2pxSaySdGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5nbody2pySaySdGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5nbody2pzSaySdGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5nbody2vxSaySdGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5nbody2vySaySdGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5nbody2vzSaySdGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5nbody4massSaySdGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5nbody2piSdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody5solarSdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody3dpySdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody6bodiesSaySaySdGGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = linkonce_odr hidden constant ptr @"$ss23_ContiguousArrayStorageCMn"
@"symbolic _____ySaySdGG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [8 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [8 x i8], i8 }>, ptr @"symbolic _____ySaySdGG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [8 x i8] c"ySaySdGG", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCySaySdGGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____ySaySdGG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCySaySdGGMD" to i64)) to i32), i32 -13 }, align 8
@mainTv_ = internal global %Ts23_ContiguousArrayStorageCySdG_tailelems0c { [1 x i64] zeroinitializer, %Ts23_ContiguousArrayStorageCySdG_tailelems0 <{ %swift.refcounted zeroinitializer, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd <{ double 1.000000e+00 }> }> }, align 8
@"symbolic _____ySdG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____ySdG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"ySdG", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCySdGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____ySdG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCySdGMD" to i64)) to i32), i32 -9 }, align 8
@mainTv0_ = internal global %Ts23_ContiguousArrayStorageCySdG_tailelems1c { [1 x i64] zeroinitializer, %Ts23_ContiguousArrayStorageCySdG_tailelems1 <{ %swift.refcounted zeroinitializer, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x40135DA0343CD92C }>, %TSd <{ double 0xBFF290ABC01FDB7C }>, %TSd <{ double 0xBFBA86F96C25EBF0 }>, %TSd <{ double 0x3F5B32DDB8EC9209 }>, %TSd <{ double 0x3F7F88FF93F670B6 }>, %TSd <{ double 0xBF12199946DEBD80 }>, %TSd <{ double 0x3F4F49601333C135 }> }> }, align 8
@mainTv1_ = internal global %Ts23_ContiguousArrayStorageCySdG_tailelems2c { [1 x i64] zeroinitializer, %Ts23_ContiguousArrayStorageCySdG_tailelems2 <{ %swift.refcounted zeroinitializer, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x4020AFCDC332CA67 }>, %TSd <{ double 0x40107FCB31DE01B0 }>, %TSd <{ double 0xBFD9D353E1EB467C }>, %TSd <{ double 0xBF66ABB60A8E1D76 }>, %TSd <{ double 0x3F747956257578B8 }>, %TSd <{ double 0x3EF829379CAD4AC0 }>, %TSd <{ double 0x3F32BC5EEFF5E6F8 }> }> }, align 8
@mainTv2_ = internal global %Ts23_ContiguousArrayStorageCySdG_tailelems3c { [1 x i64] zeroinitializer, %Ts23_ContiguousArrayStorageCySdG_tailelems3 <{ %swift.refcounted zeroinitializer, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x4029C9EACEA7D9CF }>, %TSd <{ double 0xC02E38E8D626667E }>, %TSd <{ double 0xBFCC9557BE257DA0 }>, %TSd <{ double 0x3F6849383E87D954 }>, %TSd <{ double 0x3F637C044AC0ACE1 }>, %TSd <{ double 0xBEFF1983FEDBFAA0 }>, %TSd <{ double 0x3F06E44607A13BD6 }> }> }, align 8
@mainTv3_ = internal global %Ts23_ContiguousArrayStorageCySdG_tailelems4c { [1 x i64] zeroinitializer, %Ts23_ContiguousArrayStorageCySdG_tailelems4 <{ %swift.refcounted zeroinitializer, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x402EC267A905572A }>, %TSd <{ double 0xC039EB5833C8A220 }>, %TSd <{ double 0x3FC6F1F393ABE540 }>, %TSd <{ double 0x3F65F5C9E51B4320 }>, %TSd <{ double 0x3F5AAD5736999D88 }>, %TSd <{ double 0xBF18F2070B7F9750 }>, %TSd <{ double 0x3F0B0213CA2D0EEC }> }> }, align 8
@"$s5nbody3mpxSdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody3mpySdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody3mpzSdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody2dtSdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody1eSdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"symbolic _____yypG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____yypG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"yypG", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCyypGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____yypG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCyypGMD" to i64)) to i32), i32 -9 }, align 8
@"$ss7CVarArgMp" = external global %swift.protocol, align 4
@"got.$ss7CVarArgMp" = linkonce_odr hidden constant ptr @"$ss7CVarArgMp"
@"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [3 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [3 x i8], i8 }>, ptr @"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss7CVarArgMp" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [3 x i8], i8 }>, ptr @"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP", i32 0, i32 4) to i64)) to i32), [3 x i8] c"_pG", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys7CVarArg_pGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys7CVarArg_pGMD" to i64)) to i32), i32 -14 }, align 8
@"$sSdN" = external global %swift.type, align 8
@"$sSds7CVarArgsWP" = external global ptr, align 8
@"symbolic ______p s7CVarArgP" = linkonce_odr hidden constant <{ i8, i32, [2 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss7CVarArgMp" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [2 x i8], i8 }>, ptr @"symbolic ______p s7CVarArgP", i32 0, i32 1) to i64)) to i32), [2 x i8] c"_p", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss7CVarArg_pMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic ______p s7CVarArgP" to i64), i64 ptrtoint (ptr @"$ss7CVarArg_pMD" to i64)) to i32), i32 -7 }, align 8
@"$sSSN" = external global %swift.type, align 8
@"\01l_entry_point" = private constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @main to i64), i64 ptrtoint (ptr @"\01l_entry_point" to i64)) to i32), i32 0 }, section "swift5_entry", align 4
@"$sSSs25LosslessStringConvertiblesWP" = external global ptr, align 8
@"$sSSSTsWP" = external global ptr, align 8
@"$ss5UInt8VMn" = external global %swift.type_descriptor, align 4
@"got.$ss5UInt8VMn" = linkonce_odr hidden constant ptr @"$ss5UInt8VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss5UInt8VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys5UInt8VGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys5UInt8VGMD" to i64)) to i32), i32 -12 }, align 8
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@_swift1_autolink_entries = private constant [228 x i8] c"-lFoundation\00-lswiftCore\00-lswift_StringProcessing\00-lswift_RegexParser\00-lswift_Concurrency\00-lswiftGlibc\00-lm\00-lpthread\00-lutil\00-ldl\00-lFoundationInternationalization\00-lFoundationEssentials\00-lswiftDispatch\00-ldispatch\00-lBlocksRuntime\00", section ".swift1_autolink_entries", no_sanitize_address, align 8
@llvm.used = appending global [4 x ptr] [ptr @"\01l_entry_point", ptr @__swift_reflection_version, ptr @_swift1_autolink_entries, ptr @main], section "llvm.metadata"

define protected noundef i32 @main(i32 %0, ptr readnone captures(none) %1) #0 {
entry:
  %access-scratch = alloca [24 x i8], align 8
  %access-scratch14 = alloca [24 x i8], align 8
  %access-scratch21 = alloca [24 x i8], align 8
  %access-scratch28 = alloca [24 x i8], align 8
  %access-scratch35 = alloca [24 x i8], align 8
  %access-scratch42 = alloca [24 x i8], align 8
  %access-scratch49 = alloca [24 x i8], align 8
  %access-scratch56 = alloca [24 x i8], align 8
  %access-scratch59 = alloca [24 x i8], align 8
  %access-scratch60 = alloca [24 x i8], align 8
  %access-scratch61 = alloca [24 x i8], align 8
  %access-scratch62 = alloca [24 x i8], align 8
  %access-scratch71 = alloca [24 x i8], align 8
  %access-scratch74 = alloca [24 x i8], align 8
  %access-scratch77 = alloca [24 x i8], align 8
  %access-scratch80 = alloca [24 x i8], align 8
  %access-scratch81 = alloca [24 x i8], align 8
  %access-scratch82 = alloca [24 x i8], align 8
  %access-scratch94 = alloca [24 x i8], align 8
  %access-scratch100 = alloca [24 x i8], align 8
  %access-scratch106 = alloca [24 x i8], align 8
  %access-scratch112 = alloca [24 x i8], align 8
  %access-scratch118 = alloca [24 x i8], align 8
  %access-scratch124 = alloca [24 x i8], align 8
  %access-scratch130 = alloca [24 x i8], align 8
  %access-scratch136 = alloca [24 x i8], align 8
  %access-scratch142 = alloca [24 x i8], align 8
  %access-scratch146 = alloca [24 x i8], align 8
  %access-scratch155 = alloca [24 x i8], align 8
  %access-scratch156 = alloca [24 x i8], align 8
  %reference.raw226 = alloca [72 x i8], align 8
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
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
  tail call void asm sideeffect "", "n"(i32 1) #2
  tail call void @llvm.trap()
  unreachable

20:                                               ; preds = %7
  %21 = and i64 %12, 1152921504606846976
  %.not229 = icmp eq i64 %21, 0
  br i1 %.not229, label %22, label %.thread290, !prof !11

22:                                               ; preds = %20
  br i1 %.not, label %26, label %23

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.elt177 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %24 = and i64 %12, 72057594037927935
  store i64 %9, ptr %2, align 8
  store i64 %24, ptr %.elt177, align 8
  %25 = trunc i64 %9 to i8
  switch i8 %25, label %58 [
    i8 45, label %28
    i8 43, label %57
  ]

26:                                               ; preds = %22
  %27 = and i64 %9, 1152921504606846976
  %.not227 = icmp eq i64 %27, 0
  br i1 %.not227, label %102, label %99, !prof !10

28:                                               ; preds = %23
  switch i64 %16, label %29 [
    i64 0, label %828
    i64 1, label %.thread293
  ], !prof !12

29:                                               ; preds = %28
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %31 = getelementptr i8, ptr %2, i64 %16
  br label %40

.thread293:                                       ; preds = %58, %57, %28
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %32

.loopexit305:                                     ; preds = %76, %71, %68, %63, %53, %48, %45, %40, %95, %90, %87, %82
  %.sroa.0.0 = phi i64 [ 0, %40 ], [ 0, %82 ], [ 0, %87 ], [ 0, %90 ], [ %96, %95 ], [ 0, %45 ], [ 0, %48 ], [ %54, %53 ], [ 0, %63 ], [ 0, %68 ], [ 0, %71 ], [ %77, %76 ]
  %.sroa.17.0 = phi i8 [ 1, %40 ], [ 1, %82 ], [ 1, %87 ], [ 1, %90 ], [ 0, %95 ], [ 1, %45 ], [ 1, %48 ], [ 0, %53 ], [ 1, %63 ], [ 1, %68 ], [ 1, %71 ], [ 0, %76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %32

32:                                               ; preds = %.thread, %.loopexit305, %.thread293
  %.sroa.17.2289 = phi i8 [ %109, %.thread ], [ %.sroa.17.0, %.loopexit305 ], [ 1, %.thread293 ]
  %.sroa.0.2288 = phi i64 [ %110, %.thread ], [ %.sroa.0.0, %.loopexit305 ], [ 0, %.thread293 ]
  call void @swift_bridgeObjectRelease(ptr %10) #2
  br label %36

.thread290:                                       ; preds = %20
  %33 = tail call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSSSiADSSRszsAER_r0_lIetgyr_Tpq5Si_Tg5"(i64 %9, ptr %10, i64 10)
  tail call void @swift_bridgeObjectRelease(ptr %10) #2
  %34 = extractvalue { i64, i8 } %33, 0
  %35 = extractvalue { i64, i8 } %33, 1
  br label %36

36:                                               ; preds = %.thread290, %32
  %37 = phi i64 [ %34, %.thread290 ], [ %.sroa.0.2288, %32 ]
  %38 = phi i8 [ %35, %.thread290 ], [ %.sroa.17.2289, %32 ]
  %39 = icmp eq i8 %38, 1
  br i1 %39, label %odessy.chk1, label %111

40:                                               ; preds = %53, %29
  %41 = phi ptr [ %30, %29 ], [ %55, %53 ]
  %42 = phi i64 [ 0, %29 ], [ %54, %53 ]
  %43 = load i8, ptr %41, align 1
  %44 = add i8 %43, -48
  %or.cond = icmp ult i8 %44, 10
  br i1 %or.cond, label %45, label %.loopexit305, !prof !13

45:                                               ; preds = %40
  %46 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %42, i64 10)
  %47 = extractvalue { i64, i1 } %46, 1
  br i1 %47, label %.loopexit305, label %48

48:                                               ; preds = %45
  %49 = extractvalue { i64, i1 } %46, 0
  %50 = zext nneg i8 %44 to i64
  %51 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %49, i64 %50)
  %52 = extractvalue { i64, i1 } %51, 1
  br i1 %52, label %.loopexit305, label %53, !prof !10

53:                                               ; preds = %48
  %54 = extractvalue { i64, i1 } %51, 0
  %55 = getelementptr inbounds nuw i8, ptr %41, i64 1
  %56 = icmp eq ptr %55, %31
  br i1 %56, label %.loopexit305, label %40

57:                                               ; preds = %23
  switch i64 %16, label %60 [
    i64 0, label %827
    i64 1, label %.thread293
  ], !prof !12

58:                                               ; preds = %23
  %59 = icmp eq i64 %16, 0
  br i1 %59, label %.thread293, label %80, !prof !10

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %62 = getelementptr i8, ptr %2, i64 %16
  br label %63

63:                                               ; preds = %76, %60
  %64 = phi ptr [ %61, %60 ], [ %78, %76 ]
  %65 = phi i64 [ 0, %60 ], [ %77, %76 ]
  %66 = load i8, ptr %64, align 1
  %67 = add i8 %66, -48
  %or.cond182 = icmp ult i8 %67, 10
  br i1 %or.cond182, label %68, label %.loopexit305, !prof !13

68:                                               ; preds = %63
  %69 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %65, i64 10)
  %70 = extractvalue { i64, i1 } %69, 1
  br i1 %70, label %.loopexit305, label %71

71:                                               ; preds = %68
  %72 = extractvalue { i64, i1 } %69, 0
  %73 = zext nneg i8 %67 to i64
  %74 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %72, i64 %73)
  %75 = extractvalue { i64, i1 } %74, 1
  br i1 %75, label %.loopexit305, label %76, !prof !10

76:                                               ; preds = %71
  %77 = extractvalue { i64, i1 } %74, 0
  %78 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %79 = icmp eq ptr %78, %62
  br i1 %79, label %.loopexit305, label %63

80:                                               ; preds = %58
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 %16
  br label %82

82:                                               ; preds = %95, %80
  %83 = phi ptr [ %2, %80 ], [ %97, %95 ]
  %84 = phi i64 [ 0, %80 ], [ %96, %95 ]
  %85 = load i8, ptr %83, align 1
  %86 = add i8 %85, -48
  %or.cond183 = icmp ult i8 %86, 10
  br i1 %or.cond183, label %87, label %.loopexit305, !prof !13

87:                                               ; preds = %82
  %88 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %84, i64 10)
  %89 = extractvalue { i64, i1 } %88, 1
  br i1 %89, label %.loopexit305, label %90

90:                                               ; preds = %87
  %91 = extractvalue { i64, i1 } %88, 0
  %92 = zext nneg i8 %86 to i64
  %93 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %91, i64 %92)
  %94 = extractvalue { i64, i1 } %93, 1
  br i1 %94, label %.loopexit305, label %95, !prof !10

95:                                               ; preds = %90
  %96 = extractvalue { i64, i1 } %93, 0
  %97 = getelementptr inbounds nuw i8, ptr %83, i64 1
  %98 = icmp eq ptr %97, %81
  br i1 %98, label %.loopexit305, label %82

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
  %109 = extractvalue { i64, i8 } %108, 1
  %110 = extractvalue { i64, i8 } %108, 0
  br label %32

111:                                              ; preds = %36
  store i64 %37, ptr @"$s5nbody5stepsSivp", align 8
  store i64 5, ptr @"$s5nbody1nSivp", align 8
  %112 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64 5, ptr nonnull @"$sSdN")
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 16
  store i64 5, ptr %113, align 8
  %114 = getelementptr i8, ptr %112, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %114, i8 0, i64 40, i1 false)
  store ptr %112, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch, i64 0, ptr null) #2
  %115 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  store ptr %115, ptr @"$s5nbody2pySaySdGvp", align 8
  store ptr %115, ptr @"$s5nbody2pzSaySdGvp", align 8
  store ptr %115, ptr @"$s5nbody2vxSaySdGvp", align 8
  store ptr %115, ptr @"$s5nbody2vySaySdGvp", align 8
  store ptr %115, ptr @"$s5nbody2vzSaySdGvp", align 8
  store ptr %115, ptr @"$s5nbody4massSaySdGvp", align 8
  store double 0x400921FB54442D18, ptr @"$s5nbody2piSdvp", align 8
  store double 0x4043BD3CC9BE45DE, ptr @"$s5nbody5solarSdvp", align 8
  store double 3.652400e+02, ptr @"$s5nbody3dpySdvp", align 8
  %116 = call ptr @swift_retain_n(ptr %115, i32 2)
  %117 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCySaySdGGMD") #15
  %118 = call noalias ptr @swift_allocObject(ptr %117, i64 72, i64 7) #2
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 16
  store i64 5, ptr %119, align 8
  %._storage1._capacityAndFlags = getelementptr inbounds nuw i8, ptr %118, i64 24
  store i64 10, ptr %._storage1._capacityAndFlags, align 8
  %120 = getelementptr inbounds nuw i8, ptr %118, i64 32
  %121 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCySdGMD") #15
  %staticref = call ptr @swift_initStaticObject(ptr %121, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv_, i64 8)) #16
  store ptr %staticref, ptr %120, align 8
  %122 = getelementptr inbounds nuw i8, ptr %118, i64 40
  %staticref2 = call ptr @swift_initStaticObject(ptr %121, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv0_, i64 8)) #16
  store ptr %staticref2, ptr %122, align 8
  %123 = getelementptr inbounds nuw i8, ptr %118, i64 48
  %staticref4 = call ptr @swift_initStaticObject(ptr %121, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv1_, i64 8)) #16
  store ptr %staticref4, ptr %123, align 8
  %124 = getelementptr inbounds nuw i8, ptr %118, i64 56
  %staticref6 = call ptr @swift_initStaticObject(ptr %121, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv2_, i64 8)) #16
  store ptr %staticref6, ptr %124, align 8
  %125 = getelementptr inbounds nuw i8, ptr %118, i64 64
  %staticref8 = call ptr @swift_initStaticObject(ptr %121, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv3_, i64 8)) #16
  store ptr %staticref8, ptr %125, align 8
  store ptr %118, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %126 = load i64, ptr @"$s5nbody1nSivp", align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %odessy.chk2, label %128, !prof !10

128:                                              ; preds = %111
  %129 = icmp eq i64 %126, 0
  br i1 %129, label %.thread329, label %130

130:                                              ; preds = %128
  %131 = call ptr @swift_retain_n(ptr %115, i32 4)
  br label %164

.thread329:                                       ; preds = %128
  store double 0.000000e+00, ptr @"$s5nbody3mpxSdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpySdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpzSdvp", align 8
  %132 = call ptr @swift_retain_n(ptr %115, i32 4)
  br label %343

.loopexit304:                                     ; preds = %338
  %.pre = load i64, ptr @"$s5nbody1nSivp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpxSdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpySdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpzSdvp", align 8
  %133 = icmp slt i64 %.pre, 0
  br i1 %133, label %odessy.chk24, label %134, !prof !14

134:                                              ; preds = %.loopexit304
  %135 = icmp eq i64 %.pre, 0
  br i1 %135, label %343, label %136

136:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch59)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch59, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch60)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch60, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch61)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch61, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch62)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch62, i64 0, ptr null) #2
  %137 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %138 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %139 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %140 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %141 = getelementptr inbounds nuw i8, ptr %137, i64 16
  %142 = load i64, ptr %141, align 8, !range !9
  %143 = icmp samesign ugt i64 %.pre, %142
  br i1 %143, label %odessy.chk25, label %144, !prof !10

144:                                              ; preds = %136
  %145 = getelementptr inbounds nuw i8, ptr %138, i64 16
  %146 = load i64, ptr %145, align 8, !range !9
  %147 = icmp samesign ugt i64 %.pre, %146
  br i1 %147, label %odessy.chk26, label %148, !prof !10

148:                                              ; preds = %144
  %149 = getelementptr inbounds nuw i8, ptr %139, i64 16
  %150 = load i64, ptr %149, align 8, !range !9
  %151 = icmp samesign ugt i64 %.pre, %150
  br i1 %151, label %odessy.chk27, label %152, !prof !10

152:                                              ; preds = %148
  %153 = getelementptr inbounds nuw i8, ptr %140, i64 16
  %154 = load i64, ptr %153, align 8, !range !9
  %155 = icmp samesign ugt i64 %.pre, %154
  br i1 %155, label %odessy.chk28, label %156, !prof !10

156:                                              ; preds = %152
  %157 = getelementptr inbounds nuw i8, ptr %137, i64 32
  %158 = getelementptr inbounds nuw i8, ptr %138, i64 32
  %159 = getelementptr inbounds nuw i8, ptr %139, i64 32
  %160 = getelementptr inbounds nuw i8, ptr %140, i64 32
  %161 = load double, ptr @"$s5nbody3mpxSdvp", align 8
  %162 = load double, ptr @"$s5nbody3mpySdvp", align 8
  %xtraiter = and i64 %.pre, 1
  %163 = icmp eq i64 %.pre, 1
  br i1 %163, label %.epilog-lcssa, label %.new

.new:                                             ; preds = %156
  %unroll_iter = and i64 %.pre, 9223372036854775806
  br label %393

164:                                              ; preds = %338, %130
  %165 = phi i64 [ 0, %130 ], [ %166, %338 ]
  %166 = add nuw nsw i64 %165, 1
  %167 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 16
  %169 = load i64, ptr %168, align 8, !range !9
  %.not230 = icmp samesign ult i64 %165, %169
  br i1 %.not230, label %170, label %odessy.chk3, !prof !11

170:                                              ; preds = %164
  %171 = getelementptr inbounds nuw i8, ptr %167, i64 32
  %172 = getelementptr inbounds nuw [8 x i8], ptr %171, i64 %165
  %173 = load ptr, ptr %172, align 8
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 16
  %175 = load i64, ptr %174, align 8, !range !9
  %.not33 = icmp eq i64 %175, 0
  br i1 %.not33, label %odessy.chk4, label %176, !prof !10

176:                                              ; preds = %170
  %177 = getelementptr inbounds nuw i8, ptr %173, i64 32
  %178 = load double, ptr %177, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch14)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch14, i64 33, ptr null) #2
  %179 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %180 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %179) #16
  store ptr %179, ptr @"$s5nbody2pxSaySdGvp", align 8
  br i1 %180, label %183, label %181

181:                                              ; preds = %176
  %182 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %179)
  br label %183

183:                                              ; preds = %181, %176
  %184 = phi ptr [ %182, %181 ], [ %179, %176 ]
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 16
  %186 = load i64, ptr %185, align 8, !range !9
  %.not231 = icmp samesign ult i64 %165, %186
  br i1 %.not231, label %187, label %odessy.chk5, !prof !11

187:                                              ; preds = %183
  %188 = getelementptr inbounds nuw i8, ptr %184, i64 32
  %189 = getelementptr inbounds nuw [8 x i8], ptr %188, i64 %165
  store double %178, ptr %189, align 8
  store ptr %184, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch14) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch14)
  %190 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %191 = getelementptr inbounds nuw i8, ptr %190, i64 16
  %192 = load i64, ptr %191, align 8, !range !9
  %.not232 = icmp samesign ult i64 %165, %192
  br i1 %.not232, label %193, label %odessy.chk6, !prof !11

193:                                              ; preds = %187
  %194 = getelementptr inbounds nuw i8, ptr %190, i64 32
  %195 = getelementptr inbounds nuw [8 x i8], ptr %194, i64 %165
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 16
  %198 = load i64, ptr %197, align 8, !range !9
  %199 = icmp samesign ugt i64 %198, 1
  br i1 %199, label %200, label %odessy.chk7, !prof !11

200:                                              ; preds = %193
  %201 = getelementptr inbounds nuw i8, ptr %196, i64 40
  %202 = load double, ptr %201, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch21)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch21, i64 33, ptr null) #2
  %203 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %204 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %203) #16
  store ptr %203, ptr @"$s5nbody2pySaySdGvp", align 8
  br i1 %204, label %207, label %205

205:                                              ; preds = %200
  %206 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %203)
  br label %207

207:                                              ; preds = %205, %200
  %208 = phi ptr [ %206, %205 ], [ %203, %200 ]
  %209 = getelementptr inbounds nuw i8, ptr %208, i64 16
  %210 = load i64, ptr %209, align 8, !range !9
  %.not233 = icmp samesign ult i64 %165, %210
  br i1 %.not233, label %211, label %odessy.chk8, !prof !11

211:                                              ; preds = %207
  %212 = getelementptr inbounds nuw i8, ptr %208, i64 32
  %213 = getelementptr inbounds nuw [8 x i8], ptr %212, i64 %165
  store double %202, ptr %213, align 8
  store ptr %208, ptr @"$s5nbody2pySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch21) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch21)
  %214 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 16
  %216 = load i64, ptr %215, align 8, !range !9
  %.not234 = icmp samesign ult i64 %165, %216
  br i1 %.not234, label %217, label %odessy.chk9, !prof !11

217:                                              ; preds = %211
  %218 = getelementptr inbounds nuw i8, ptr %214, i64 32
  %219 = getelementptr inbounds nuw [8 x i8], ptr %218, i64 %165
  %220 = load ptr, ptr %219, align 8
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 16
  %222 = load i64, ptr %221, align 8, !range !9
  %223 = icmp samesign ugt i64 %222, 2
  br i1 %223, label %224, label %odessy.chk10, !prof !11

224:                                              ; preds = %217
  %225 = getelementptr inbounds nuw i8, ptr %220, i64 48
  %226 = load double, ptr %225, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch28)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch28, i64 33, ptr null) #2
  %227 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %228 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %227) #16
  store ptr %227, ptr @"$s5nbody2pzSaySdGvp", align 8
  br i1 %228, label %231, label %229

229:                                              ; preds = %224
  %230 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %227)
  br label %231

231:                                              ; preds = %229, %224
  %232 = phi ptr [ %230, %229 ], [ %227, %224 ]
  %233 = getelementptr inbounds nuw i8, ptr %232, i64 16
  %234 = load i64, ptr %233, align 8, !range !9
  %.not235 = icmp samesign ult i64 %165, %234
  br i1 %.not235, label %235, label %odessy.chk11, !prof !11

235:                                              ; preds = %231
  %236 = getelementptr inbounds nuw i8, ptr %232, i64 32
  %237 = getelementptr inbounds nuw [8 x i8], ptr %236, i64 %165
  store double %226, ptr %237, align 8
  store ptr %232, ptr @"$s5nbody2pzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch28) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch28)
  %238 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 16
  %240 = load i64, ptr %239, align 8, !range !9
  %.not236 = icmp samesign ult i64 %165, %240
  br i1 %.not236, label %241, label %odessy.chk12, !prof !11

241:                                              ; preds = %235
  %242 = getelementptr inbounds nuw i8, ptr %238, i64 32
  %243 = getelementptr inbounds nuw [8 x i8], ptr %242, i64 %165
  %244 = load ptr, ptr %243, align 8
  %245 = getelementptr inbounds nuw i8, ptr %244, i64 16
  %246 = load i64, ptr %245, align 8, !range !9
  %247 = icmp samesign ugt i64 %246, 3
  br i1 %247, label %248, label %odessy.chk13, !prof !11

248:                                              ; preds = %241
  %249 = getelementptr inbounds nuw i8, ptr %244, i64 56
  %250 = load double, ptr %249, align 8
  %251 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch35)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch35, i64 33, ptr null) #2
  %252 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %253 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %252) #16
  store ptr %252, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %253, label %256, label %254

254:                                              ; preds = %248
  %255 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %252)
  br label %256

256:                                              ; preds = %254, %248
  %257 = phi ptr [ %255, %254 ], [ %252, %248 ]
  %258 = getelementptr inbounds nuw i8, ptr %257, i64 16
  %259 = load i64, ptr %258, align 8, !range !9
  %.not237 = icmp samesign ult i64 %165, %259
  br i1 %.not237, label %260, label %odessy.chk14, !prof !11

260:                                              ; preds = %256
  %261 = fmul double %250, %251
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 32
  %263 = getelementptr inbounds nuw [8 x i8], ptr %262, i64 %165
  store double %261, ptr %263, align 8
  store ptr %257, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch35) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch35)
  %264 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 16
  %266 = load i64, ptr %265, align 8, !range !9
  %.not238 = icmp samesign ult i64 %165, %266
  br i1 %.not238, label %267, label %odessy.chk15, !prof !11

267:                                              ; preds = %260
  %268 = getelementptr inbounds nuw i8, ptr %264, i64 32
  %269 = getelementptr inbounds nuw [8 x i8], ptr %268, i64 %165
  %270 = load ptr, ptr %269, align 8
  %271 = getelementptr inbounds nuw i8, ptr %270, i64 16
  %272 = load i64, ptr %271, align 8, !range !9
  %273 = icmp samesign ugt i64 %272, 4
  br i1 %273, label %274, label %odessy.chk16, !prof !11

274:                                              ; preds = %267
  %275 = getelementptr inbounds nuw i8, ptr %270, i64 64
  %276 = load double, ptr %275, align 8
  %277 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch42)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch42, i64 33, ptr null) #2
  %278 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %279 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %278) #16
  store ptr %278, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %279, label %282, label %280

280:                                              ; preds = %274
  %281 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %278)
  br label %282

282:                                              ; preds = %280, %274
  %283 = phi ptr [ %281, %280 ], [ %278, %274 ]
  %284 = getelementptr inbounds nuw i8, ptr %283, i64 16
  %285 = load i64, ptr %284, align 8, !range !9
  %.not239 = icmp samesign ult i64 %165, %285
  br i1 %.not239, label %286, label %odessy.chk17, !prof !11

286:                                              ; preds = %282
  %287 = fmul double %276, %277
  %288 = getelementptr inbounds nuw i8, ptr %283, i64 32
  %289 = getelementptr inbounds nuw [8 x i8], ptr %288, i64 %165
  store double %287, ptr %289, align 8
  store ptr %283, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch42) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch42)
  %290 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 16
  %292 = load i64, ptr %291, align 8, !range !9
  %.not240 = icmp samesign ult i64 %165, %292
  br i1 %.not240, label %293, label %odessy.chk18, !prof !11

293:                                              ; preds = %286
  %294 = getelementptr inbounds nuw i8, ptr %290, i64 32
  %295 = getelementptr inbounds nuw [8 x i8], ptr %294, i64 %165
  %296 = load ptr, ptr %295, align 8
  %297 = getelementptr inbounds nuw i8, ptr %296, i64 16
  %298 = load i64, ptr %297, align 8, !range !9
  %299 = icmp samesign ugt i64 %298, 5
  br i1 %299, label %300, label %odessy.chk19, !prof !11

300:                                              ; preds = %293
  %301 = getelementptr inbounds nuw i8, ptr %296, i64 72
  %302 = load double, ptr %301, align 8
  %303 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch49)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch49, i64 33, ptr null) #2
  %304 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %305 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %304) #16
  store ptr %304, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %305, label %308, label %306

306:                                              ; preds = %300
  %307 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %304)
  br label %308

308:                                              ; preds = %306, %300
  %309 = phi ptr [ %307, %306 ], [ %304, %300 ]
  %310 = getelementptr inbounds nuw i8, ptr %309, i64 16
  %311 = load i64, ptr %310, align 8, !range !9
  %.not241 = icmp samesign ult i64 %165, %311
  br i1 %.not241, label %312, label %odessy.chk20, !prof !11

312:                                              ; preds = %308
  %313 = fmul double %302, %303
  %314 = getelementptr inbounds nuw i8, ptr %309, i64 32
  %315 = getelementptr inbounds nuw [8 x i8], ptr %314, i64 %165
  store double %313, ptr %315, align 8
  store ptr %309, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch49) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch49)
  %316 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 16
  %318 = load i64, ptr %317, align 8, !range !9
  %.not242 = icmp samesign ult i64 %165, %318
  br i1 %.not242, label %319, label %odessy.chk21, !prof !11

319:                                              ; preds = %312
  %320 = getelementptr inbounds nuw i8, ptr %316, i64 32
  %321 = getelementptr inbounds nuw [8 x i8], ptr %320, i64 %165
  %322 = load ptr, ptr %321, align 8
  %323 = getelementptr inbounds nuw i8, ptr %322, i64 16
  %324 = load i64, ptr %323, align 8, !range !9
  %325 = icmp samesign ugt i64 %324, 6
  br i1 %325, label %326, label %odessy.chk22, !prof !11

326:                                              ; preds = %319
  %327 = getelementptr inbounds nuw i8, ptr %322, i64 80
  %328 = load double, ptr %327, align 8
  %329 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch56)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch56, i64 33, ptr null) #2
  %330 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %331 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %330) #16
  store ptr %330, ptr @"$s5nbody4massSaySdGvp", align 8
  br i1 %331, label %334, label %332

332:                                              ; preds = %326
  %333 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %330)
  br label %334

334:                                              ; preds = %332, %326
  %335 = phi ptr [ %333, %332 ], [ %330, %326 ]
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 16
  %337 = load i64, ptr %336, align 8, !range !9
  %.not243 = icmp samesign ult i64 %165, %337
  br i1 %.not243, label %338, label %odessy.chk23, !prof !11

338:                                              ; preds = %334
  %339 = fmul double %328, %329
  %340 = getelementptr inbounds nuw i8, ptr %335, i64 32
  %341 = getelementptr inbounds nuw [8 x i8], ptr %340, i64 %165
  store double %339, ptr %341, align 8
  store ptr %335, ptr @"$s5nbody4massSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch56) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch56)
  %342 = icmp eq i64 %166, %126
  br i1 %342, label %.loopexit304, label %164

343:                                              ; preds = %442, %134, %.thread329
  %344 = phi double [ 0.000000e+00, %134 ], [ %.lcssa353, %442 ], [ 0.000000e+00, %.thread329 ]
  %345 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch71)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch71, i64 33, ptr null) #2
  %346 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %347 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %346) #16
  store ptr %346, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %347, label %350, label %348

348:                                              ; preds = %343
  %349 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %346)
  br label %350

350:                                              ; preds = %348, %343
  %351 = phi ptr [ %349, %348 ], [ %346, %343 ]
  %352 = getelementptr inbounds nuw i8, ptr %351, i64 16
  %353 = load i64, ptr %352, align 8, !range !9
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %odessy.chk29, label %355, !prof !10

355:                                              ; preds = %350
  %356 = fneg double %344
  %357 = fdiv double %356, %345
  %358 = getelementptr inbounds nuw i8, ptr %351, i64 32
  store double %357, ptr %358, align 8
  store ptr %351, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch71) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch71)
  %359 = load double, ptr @"$s5nbody3mpySdvp", align 8
  %360 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch74)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch74, i64 33, ptr null) #2
  %361 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %362 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %361) #16
  store ptr %361, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %362, label %365, label %363

363:                                              ; preds = %355
  %364 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %361)
  br label %365

365:                                              ; preds = %363, %355
  %366 = phi ptr [ %364, %363 ], [ %361, %355 ]
  %367 = getelementptr inbounds nuw i8, ptr %366, i64 16
  %368 = load i64, ptr %367, align 8, !range !9
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %odessy.chk30, label %370, !prof !10

370:                                              ; preds = %365
  %371 = fneg double %359
  %372 = fdiv double %371, %360
  %373 = getelementptr inbounds nuw i8, ptr %366, i64 32
  store double %372, ptr %373, align 8
  store ptr %366, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch74) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch74)
  %374 = load double, ptr @"$s5nbody3mpzSdvp", align 8
  %375 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch77)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch77, i64 33, ptr null) #2
  %376 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %377 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %376) #16
  store ptr %376, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %377, label %380, label %378

378:                                              ; preds = %370
  %379 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %376)
  br label %380

380:                                              ; preds = %378, %370
  %381 = phi ptr [ %379, %378 ], [ %376, %370 ]
  %382 = getelementptr inbounds nuw i8, ptr %381, i64 16
  %383 = load i64, ptr %382, align 8, !range !9
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %odessy.chk31, label %385, !prof !10

385:                                              ; preds = %380
  %386 = fneg double %374
  %387 = fdiv double %386, %375
  %388 = getelementptr inbounds nuw i8, ptr %381, i64 32
  store double %387, ptr %388, align 8
  store ptr %381, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch77) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch77)
  store double 1.000000e-02, ptr @"$s5nbody2dtSdvp", align 8
  %389 = load i64, ptr @"$s5nbody5stepsSivp", align 8
  %390 = icmp slt i64 %389, 0
  br i1 %390, label %odessy.chk32, label %391, !prof !10

391:                                              ; preds = %385
  %392 = icmp eq i64 %389, 0
  br i1 %392, label %.loopexit303, label %.preheader302.preheader

393:                                              ; preds = %393, %.new
  %394 = phi i64 [ 0, %.new ], [ %413, %393 ]
  %395 = phi double [ 0.000000e+00, %.new ], [ %427, %393 ]
  %396 = phi double [ %161, %.new ], [ %419, %393 ]
  %397 = phi double [ %162, %.new ], [ %423, %393 ]
  %398 = or disjoint i64 %394, 1
  %399 = getelementptr inbounds [8 x i8], ptr %157, i64 %394
  %400 = load double, ptr %399, align 8
  %401 = getelementptr inbounds [8 x i8], ptr %158, i64 %394
  %402 = load double, ptr %401, align 8
  %403 = fmul double %400, %402
  %404 = fadd double %396, %403
  %405 = getelementptr inbounds [8 x i8], ptr %159, i64 %394
  %406 = load double, ptr %405, align 8
  %407 = fmul double %402, %406
  %408 = fadd double %397, %407
  %409 = getelementptr inbounds [8 x i8], ptr %160, i64 %394
  %410 = load double, ptr %409, align 8
  %411 = fmul double %402, %410
  %412 = fadd double %395, %411
  %413 = add i64 %394, 2
  %414 = getelementptr inbounds [8 x i8], ptr %157, i64 %398
  %415 = load double, ptr %414, align 8
  %416 = getelementptr inbounds [8 x i8], ptr %158, i64 %398
  %417 = load double, ptr %416, align 8
  %418 = fmul double %415, %417
  %419 = fadd double %404, %418
  %420 = getelementptr inbounds [8 x i8], ptr %159, i64 %398
  %421 = load double, ptr %420, align 8
  %422 = fmul double %417, %421
  %423 = fadd double %408, %422
  %424 = getelementptr inbounds [8 x i8], ptr %160, i64 %398
  %425 = load double, ptr %424, align 8
  %426 = fmul double %417, %425
  %427 = fadd double %412, %426
  %niter.ncmp.1 = icmp eq i64 %413, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %393

.unr-lcssa:                                       ; preds = %393
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %442, label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %156, %.unr-lcssa
  %.unr36245 = phi double [ %423, %.unr-lcssa ], [ %162, %156 ]
  %.unr36144 = phi double [ %419, %.unr-lcssa ], [ %161, %156 ]
  %.unr36043 = phi double [ %427, %.unr-lcssa ], [ 0.000000e+00, %156 ]
  %.unr42 = phi i64 [ %unroll_iter, %.unr-lcssa ], [ 0, %156 ]
  %428 = getelementptr inbounds nuw [8 x i8], ptr %157, i64 %.unr42
  %429 = load double, ptr %428, align 8
  %430 = getelementptr inbounds nuw [8 x i8], ptr %158, i64 %.unr42
  %431 = load double, ptr %430, align 8
  %432 = fmul double %429, %431
  %433 = fadd double %.unr36144, %432
  %434 = getelementptr inbounds nuw [8 x i8], ptr %159, i64 %.unr42
  %435 = load double, ptr %434, align 8
  %436 = fmul double %431, %435
  %437 = fadd double %.unr36245, %436
  %438 = getelementptr inbounds nuw [8 x i8], ptr %160, i64 %.unr42
  %439 = load double, ptr %438, align 8
  %440 = fmul double %431, %439
  %441 = fadd double %.unr36043, %440
  br label %442

442:                                              ; preds = %.epilog-lcssa, %.unr-lcssa
  %.lcssa353 = phi double [ %419, %.unr-lcssa ], [ %433, %.epilog-lcssa ]
  %.lcssa352 = phi double [ %423, %.unr-lcssa ], [ %437, %.epilog-lcssa ]
  %.lcssa351 = phi double [ %427, %.unr-lcssa ], [ %441, %.epilog-lcssa ]
  store double %.lcssa351, ptr @"$s5nbody3mpzSdvp", align 8
  store double %.lcssa352, ptr @"$s5nbody3mpySdvp", align 8
  store double %.lcssa353, ptr @"$s5nbody3mpxSdvp", align 8
  br label %343

.preheader302.preheader:                          ; preds = %391, %.thread297
  %443 = phi i64 [ %444, %.thread297 ], [ 0, %391 ]
  %444 = add nuw nsw i64 %443, 1
  %445 = load i64, ptr @"$s5nbody1nSivp", align 8
  %446 = icmp slt i64 %445, 0
  br i1 %446, label %odessy.chk33, label %447, !prof !10

447:                                              ; preds = %.preheader302.preheader
  %448 = icmp eq i64 %445, 0
  br i1 %448, label %.thread297, label %.preheader301.preheader

.loopexit303:                                     ; preds = %.thread297, %391
  store double 0.000000e+00, ptr @"$s5nbody1eSdvp", align 8
  %449 = load i64, ptr @"$s5nbody1nSivp", align 8
  %450 = icmp slt i64 %449, 0
  br i1 %450, label %odessy.chk60, label %451, !prof !10

451:                                              ; preds = %.loopexit303
  %452 = icmp eq i64 %449, 0
  br i1 %452, label %.loopexit299, label %453

453:                                              ; preds = %451
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch146)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch146, i64 0, ptr null) #2
  %.pre68 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  br label %727

454:                                              ; preds = %.loopexit300
  %.pr = load i64, ptr @"$s5nbody1nSivp", align 8
  %455 = icmp slt i64 %.pr, 0
  br i1 %455, label %odessy.chk53, label %456, !prof !15

456:                                              ; preds = %454
  %457 = icmp eq i64 %.pr, 0
  br i1 %457, label %.thread297, label %.preheader

.preheader301.preheader:                          ; preds = %447, %.loopexit300
  %458 = phi i64 [ %459, %.loopexit300 ], [ 0, %447 ]
  %459 = add nuw nsw i64 %458, 1
  %460 = load i64, ptr @"$s5nbody1nSivp", align 8
  %.not327 = icmp sgt i64 %460, %458
  br i1 %.not327, label %461, label %odessy.chk34, !prof !11

461:                                              ; preds = %.preheader301.preheader
  %462 = icmp eq i64 %459, %460
  br i1 %462, label %.loopexit300, label %463

463:                                              ; preds = %461
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch80)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch80, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch81)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch81, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch82)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch82, i64 0, ptr null) #2
  br label %465

.loopexit300:                                     ; preds = %634, %461
  %464 = icmp eq i64 %459, %445
  br i1 %464, label %454, label %.preheader301.preheader

465:                                              ; preds = %634, %463
  %466 = phi i64 [ %459, %463 ], [ %467, %634 ]
  %467 = add nuw i64 %466, 1
  %468 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %469 = getelementptr inbounds nuw i8, ptr %468, i64 16
  %470 = load i64, ptr %469, align 8, !range !9
  %.not247 = icmp samesign ult i64 %458, %470
  br i1 %.not247, label %471, label %odessy.chk35, !prof !11

471:                                              ; preds = %465
  %.not248 = icmp samesign ult i64 %466, %470
  br i1 %.not248, label %472, label %odessy.chk36, !prof !11

472:                                              ; preds = %471
  %473 = getelementptr inbounds nuw i8, ptr %468, i64 32
  %474 = getelementptr inbounds nuw [8 x i8], ptr %473, i64 %458
  %475 = load double, ptr %474, align 8
  %476 = getelementptr inbounds nuw [8 x i8], ptr %473, i64 %466
  %477 = load double, ptr %476, align 8
  %478 = fsub double %475, %477
  %479 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 16
  %481 = load i64, ptr %480, align 8, !range !9
  %.not249 = icmp samesign ult i64 %458, %481
  br i1 %.not249, label %482, label %odessy.chk37, !prof !11

482:                                              ; preds = %472
  %.not250 = icmp samesign ult i64 %466, %481
  br i1 %.not250, label %483, label %odessy.chk38, !prof !11

483:                                              ; preds = %482
  %484 = getelementptr inbounds nuw i8, ptr %479, i64 32
  %485 = getelementptr inbounds nuw [8 x i8], ptr %484, i64 %458
  %486 = load double, ptr %485, align 8
  %487 = getelementptr inbounds nuw [8 x i8], ptr %484, i64 %466
  %488 = load double, ptr %487, align 8
  %489 = fsub double %486, %488
  %490 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 16
  %492 = load i64, ptr %491, align 8, !range !9
  %.not251 = icmp samesign ult i64 %458, %492
  br i1 %.not251, label %493, label %odessy.chk39, !prof !11

493:                                              ; preds = %483
  %.not252 = icmp samesign ult i64 %466, %492
  br i1 %.not252, label %494, label %odessy.chk40, !prof !11

494:                                              ; preds = %493
  %495 = getelementptr inbounds nuw i8, ptr %490, i64 32
  %496 = getelementptr inbounds nuw [8 x i8], ptr %495, i64 %458
  %497 = load double, ptr %496, align 8
  %498 = getelementptr inbounds nuw [8 x i8], ptr %495, i64 %466
  %499 = load double, ptr %498, align 8
  %500 = fsub double %497, %499
  %501 = fmul double %478, %478
  %502 = fmul double %489, %489
  %503 = fadd double %501, %502
  %504 = fmul double %500, %500
  %505 = fadd double %503, %504
  %506 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %sqrt = call double @llvm.sqrt.f64(double %505)
  %507 = fmul double %505, %sqrt
  %508 = fdiv double %506, %507
  %509 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %510 = getelementptr inbounds nuw i8, ptr %509, i64 16
  %511 = load i64, ptr %510, align 8, !range !9
  %.not253 = icmp samesign ult i64 %466, %511
  br i1 %.not253, label %512, label %odessy.chk41, !prof !11

512:                                              ; preds = %494
  %513 = getelementptr inbounds nuw i8, ptr %509, i64 32
  %514 = getelementptr inbounds nuw [8 x i8], ptr %513, i64 %466
  %515 = load double, ptr %514, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch94)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch94, i64 33, ptr null) #2
  %516 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %517 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %516) #16
  store ptr %516, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %517, label %520, label %518

518:                                              ; preds = %512
  %519 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %516)
  br label %520

520:                                              ; preds = %518, %512
  %521 = phi ptr [ %519, %518 ], [ %516, %512 ]
  %522 = getelementptr inbounds nuw i8, ptr %521, i64 16
  %523 = load i64, ptr %522, align 8, !range !9
  %.not254 = icmp samesign ult i64 %458, %523
  br i1 %.not254, label %524, label %odessy.chk42, !prof !11

524:                                              ; preds = %520
  %525 = fmul double %478, %515
  %526 = fmul double %508, %525
  %527 = getelementptr inbounds nuw i8, ptr %521, i64 32
  %528 = getelementptr inbounds nuw [8 x i8], ptr %527, i64 %458
  %529 = load double, ptr %528, align 8
  %530 = fsub double %529, %526
  store double %530, ptr %528, align 8
  store ptr %521, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch94) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch94)
  %531 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 16
  %533 = load i64, ptr %532, align 8, !range !9
  %.not255 = icmp samesign ult i64 %466, %533
  br i1 %.not255, label %534, label %odessy.chk43, !prof !11

534:                                              ; preds = %524
  %535 = getelementptr inbounds nuw i8, ptr %531, i64 32
  %536 = getelementptr inbounds nuw [8 x i8], ptr %535, i64 %466
  %537 = load double, ptr %536, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch100)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch100, i64 33, ptr null) #2
  %538 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %539 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %538) #16
  store ptr %538, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %539, label %542, label %540

540:                                              ; preds = %534
  %541 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %538)
  br label %542

542:                                              ; preds = %540, %534
  %543 = phi ptr [ %541, %540 ], [ %538, %534 ]
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 16
  %545 = load i64, ptr %544, align 8, !range !9
  %.not256 = icmp samesign ult i64 %458, %545
  br i1 %.not256, label %546, label %odessy.chk44, !prof !11

546:                                              ; preds = %542
  %547 = fmul double %489, %537
  %548 = fmul double %508, %547
  %549 = getelementptr inbounds nuw i8, ptr %543, i64 32
  %550 = getelementptr inbounds nuw [8 x i8], ptr %549, i64 %458
  %551 = load double, ptr %550, align 8
  %552 = fsub double %551, %548
  store double %552, ptr %550, align 8
  store ptr %543, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch100) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch100)
  %553 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %554 = getelementptr inbounds nuw i8, ptr %553, i64 16
  %555 = load i64, ptr %554, align 8, !range !9
  %.not257 = icmp samesign ult i64 %466, %555
  br i1 %.not257, label %556, label %odessy.chk45, !prof !11

556:                                              ; preds = %546
  %557 = getelementptr inbounds nuw i8, ptr %553, i64 32
  %558 = getelementptr inbounds nuw [8 x i8], ptr %557, i64 %466
  %559 = load double, ptr %558, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch106)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch106, i64 33, ptr null) #2
  %560 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %561 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %560) #16
  store ptr %560, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %561, label %564, label %562

562:                                              ; preds = %556
  %563 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %560)
  br label %564

564:                                              ; preds = %562, %556
  %565 = phi ptr [ %563, %562 ], [ %560, %556 ]
  %566 = getelementptr inbounds nuw i8, ptr %565, i64 16
  %567 = load i64, ptr %566, align 8, !range !9
  %.not258 = icmp samesign ult i64 %458, %567
  br i1 %.not258, label %568, label %odessy.chk46, !prof !11

568:                                              ; preds = %564
  %569 = fmul double %500, %559
  %570 = fmul double %508, %569
  %571 = getelementptr inbounds nuw i8, ptr %565, i64 32
  %572 = getelementptr inbounds nuw [8 x i8], ptr %571, i64 %458
  %573 = load double, ptr %572, align 8
  %574 = fsub double %573, %570
  store double %574, ptr %572, align 8
  store ptr %565, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch106) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch106)
  %575 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %576 = getelementptr inbounds nuw i8, ptr %575, i64 16
  %577 = load i64, ptr %576, align 8, !range !9
  %.not259 = icmp samesign ult i64 %458, %577
  br i1 %.not259, label %578, label %odessy.chk47, !prof !11

578:                                              ; preds = %568
  %579 = getelementptr inbounds nuw i8, ptr %575, i64 32
  %580 = getelementptr inbounds nuw [8 x i8], ptr %579, i64 %458
  %581 = load double, ptr %580, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch112)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch112, i64 33, ptr null) #2
  %582 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %583 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %582) #16
  store ptr %582, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %583, label %586, label %584

584:                                              ; preds = %578
  %585 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %582)
  br label %586

586:                                              ; preds = %584, %578
  %587 = phi ptr [ %585, %584 ], [ %582, %578 ]
  %588 = getelementptr inbounds nuw i8, ptr %587, i64 16
  %589 = load i64, ptr %588, align 8, !range !9
  %.not260 = icmp samesign ult i64 %466, %589
  br i1 %.not260, label %590, label %odessy.chk48, !prof !11

590:                                              ; preds = %586
  %591 = fmul double %478, %581
  %592 = fmul double %508, %591
  %593 = getelementptr inbounds nuw i8, ptr %587, i64 32
  %594 = getelementptr inbounds nuw [8 x i8], ptr %593, i64 %466
  %595 = load double, ptr %594, align 8
  %596 = fadd double %592, %595
  store double %596, ptr %594, align 8
  store ptr %587, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch112) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch112)
  %597 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %598 = getelementptr inbounds nuw i8, ptr %597, i64 16
  %599 = load i64, ptr %598, align 8, !range !9
  %.not261 = icmp samesign ult i64 %458, %599
  br i1 %.not261, label %600, label %odessy.chk49, !prof !11

600:                                              ; preds = %590
  %601 = getelementptr inbounds nuw i8, ptr %597, i64 32
  %602 = getelementptr inbounds nuw [8 x i8], ptr %601, i64 %458
  %603 = load double, ptr %602, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch118)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch118, i64 33, ptr null) #2
  %604 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %605 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %604) #16
  store ptr %604, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %605, label %608, label %606

606:                                              ; preds = %600
  %607 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %604)
  br label %608

608:                                              ; preds = %606, %600
  %609 = phi ptr [ %607, %606 ], [ %604, %600 ]
  %610 = getelementptr inbounds nuw i8, ptr %609, i64 16
  %611 = load i64, ptr %610, align 8, !range !9
  %.not262 = icmp samesign ult i64 %466, %611
  br i1 %.not262, label %612, label %odessy.chk50, !prof !11

612:                                              ; preds = %608
  %613 = fmul double %489, %603
  %614 = fmul double %508, %613
  %615 = getelementptr inbounds nuw i8, ptr %609, i64 32
  %616 = getelementptr inbounds nuw [8 x i8], ptr %615, i64 %466
  %617 = load double, ptr %616, align 8
  %618 = fadd double %614, %617
  store double %618, ptr %616, align 8
  store ptr %609, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch118) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch118)
  %619 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %620 = getelementptr inbounds nuw i8, ptr %619, i64 16
  %621 = load i64, ptr %620, align 8, !range !9
  %.not263 = icmp samesign ult i64 %458, %621
  br i1 %.not263, label %622, label %odessy.chk51, !prof !11

622:                                              ; preds = %612
  %623 = getelementptr inbounds nuw i8, ptr %619, i64 32
  %624 = getelementptr inbounds nuw [8 x i8], ptr %623, i64 %458
  %625 = load double, ptr %624, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch124)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch124, i64 33, ptr null) #2
  %626 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %627 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %626) #16
  store ptr %626, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %627, label %630, label %628

628:                                              ; preds = %622
  %629 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %626)
  br label %630

630:                                              ; preds = %628, %622
  %631 = phi ptr [ %629, %628 ], [ %626, %622 ]
  %632 = getelementptr inbounds nuw i8, ptr %631, i64 16
  %633 = load i64, ptr %632, align 8, !range !9
  %.not264 = icmp samesign ult i64 %466, %633
  br i1 %.not264, label %634, label %odessy.chk52, !prof !11

634:                                              ; preds = %630
  %635 = fmul double %500, %625
  %636 = fmul double %508, %635
  %637 = getelementptr inbounds nuw i8, ptr %631, i64 32
  %638 = getelementptr inbounds nuw [8 x i8], ptr %637, i64 %466
  %639 = load double, ptr %638, align 8
  %640 = fadd double %636, %639
  store double %640, ptr %638, align 8
  store ptr %631, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch124) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch124)
  %641 = icmp eq i64 %467, %460
  br i1 %641, label %.loopexit300, label %465

.thread297:                                       ; preds = %705, %456, %447
  %642 = icmp eq i64 %444, %389
  br i1 %642, label %.loopexit303, label %.preheader302.preheader

.preheader:                                       ; preds = %456, %705
  %643 = phi i64 [ %644, %705 ], [ 0, %456 ]
  %644 = add nuw nsw i64 %643, 1
  %645 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %646 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 16
  %648 = load i64, ptr %647, align 8, !range !9
  %.not265 = icmp samesign ult i64 %643, %648
  br i1 %.not265, label %649, label %odessy.chk54, !prof !11

649:                                              ; preds = %.preheader
  %650 = getelementptr inbounds nuw i8, ptr %646, i64 32
  %651 = getelementptr inbounds nuw [8 x i8], ptr %650, i64 %643
  %652 = load double, ptr %651, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch130)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch130, i64 33, ptr null) #2
  %653 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %654 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %653) #16
  store ptr %653, ptr @"$s5nbody2pxSaySdGvp", align 8
  br i1 %654, label %657, label %655

655:                                              ; preds = %649
  %656 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %653)
  br label %657

657:                                              ; preds = %655, %649
  %658 = phi ptr [ %656, %655 ], [ %653, %649 ]
  %659 = getelementptr inbounds nuw i8, ptr %658, i64 16
  %660 = load i64, ptr %659, align 8, !range !9
  %.not266 = icmp samesign ult i64 %643, %660
  br i1 %.not266, label %661, label %odessy.chk55, !prof !11

661:                                              ; preds = %657
  %662 = fmul double %645, %652
  %663 = getelementptr inbounds nuw i8, ptr %658, i64 32
  %664 = getelementptr inbounds nuw [8 x i8], ptr %663, i64 %643
  %665 = load double, ptr %664, align 8
  %666 = fadd double %662, %665
  store double %666, ptr %664, align 8
  store ptr %658, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch130) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch130)
  %667 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %668 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %669 = getelementptr inbounds nuw i8, ptr %668, i64 16
  %670 = load i64, ptr %669, align 8, !range !9
  %.not267 = icmp samesign ult i64 %643, %670
  br i1 %.not267, label %671, label %odessy.chk56, !prof !11

671:                                              ; preds = %661
  %672 = getelementptr inbounds nuw i8, ptr %668, i64 32
  %673 = getelementptr inbounds nuw [8 x i8], ptr %672, i64 %643
  %674 = load double, ptr %673, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch136)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch136, i64 33, ptr null) #2
  %675 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %676 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %675) #16
  store ptr %675, ptr @"$s5nbody2pySaySdGvp", align 8
  br i1 %676, label %679, label %677

677:                                              ; preds = %671
  %678 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %675)
  br label %679

679:                                              ; preds = %677, %671
  %680 = phi ptr [ %678, %677 ], [ %675, %671 ]
  %681 = getelementptr inbounds nuw i8, ptr %680, i64 16
  %682 = load i64, ptr %681, align 8, !range !9
  %.not268 = icmp samesign ult i64 %643, %682
  br i1 %.not268, label %683, label %odessy.chk57, !prof !11

683:                                              ; preds = %679
  %684 = fmul double %667, %674
  %685 = getelementptr inbounds nuw i8, ptr %680, i64 32
  %686 = getelementptr inbounds nuw [8 x i8], ptr %685, i64 %643
  %687 = load double, ptr %686, align 8
  %688 = fadd double %684, %687
  store double %688, ptr %686, align 8
  store ptr %680, ptr @"$s5nbody2pySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch136) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch136)
  %689 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %690 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %691 = getelementptr inbounds nuw i8, ptr %690, i64 16
  %692 = load i64, ptr %691, align 8, !range !9
  %.not269 = icmp samesign ult i64 %643, %692
  br i1 %.not269, label %693, label %odessy.chk58, !prof !11

693:                                              ; preds = %683
  %694 = getelementptr inbounds nuw i8, ptr %690, i64 32
  %695 = getelementptr inbounds nuw [8 x i8], ptr %694, i64 %643
  %696 = load double, ptr %695, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch142)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch142, i64 33, ptr null) #2
  %697 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %698 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %697) #16
  store ptr %697, ptr @"$s5nbody2pzSaySdGvp", align 8
  br i1 %698, label %701, label %699

699:                                              ; preds = %693
  %700 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %697)
  br label %701

701:                                              ; preds = %699, %693
  %702 = phi ptr [ %700, %699 ], [ %697, %693 ]
  %703 = getelementptr inbounds nuw i8, ptr %702, i64 16
  %704 = load i64, ptr %703, align 8, !range !9
  %.not270 = icmp samesign ult i64 %643, %704
  br i1 %.not270, label %705, label %odessy.chk59, !prof !11

705:                                              ; preds = %701
  %706 = fmul double %689, %696
  %707 = getelementptr inbounds nuw i8, ptr %702, i64 32
  %708 = getelementptr inbounds nuw [8 x i8], ptr %707, i64 %643
  %709 = load double, ptr %708, align 8
  %710 = fadd double %706, %709
  store double %710, ptr %708, align 8
  store ptr %702, ptr @"$s5nbody2pzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch142) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch142)
  %711 = icmp eq i64 %644, %.pr
  br i1 %711, label %.thread297, label %.preheader

.loopexit299:                                     ; preds = %.loopexit, %451
  %712 = phi double [ 0.000000e+00, %451 ], [ %788, %.loopexit ]
  %713 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMD") #15
  %714 = call noalias ptr @swift_allocObject(ptr %713, i64 64, i64 7) #2
  %715 = getelementptr inbounds nuw i8, ptr %714, i64 16
  store i64 1, ptr %715, align 8
  %._storage169._capacityAndFlags = getelementptr inbounds nuw i8, ptr %714, i64 24
  store i64 2, ptr %._storage169._capacityAndFlags, align 8
  %716 = getelementptr inbounds nuw i8, ptr %714, i64 32
  %717 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys7CVarArg_pGMD") #15
  %reference.new = call ptr @swift_initStackObject(ptr %717, ptr nonnull %reference.raw226) #16
  %reference.new171 = getelementptr inbounds nuw i8, ptr %reference.new, i64 16
  store i64 1, ptr %reference.new171, align 8
  %reference.new171._storage._capacityAndFlags = getelementptr inbounds nuw i8, ptr %reference.new, i64 24
  store i64 2, ptr %reference.new171._storage._capacityAndFlags, align 8
  %718 = getelementptr inbounds nuw i8, ptr %reference.new, i64 32
  %719 = getelementptr inbounds nuw i8, ptr %reference.new, i64 56
  store ptr @"$sSdN", ptr %719, align 8
  %720 = getelementptr inbounds nuw i8, ptr %reference.new, i64 64
  store ptr @"$sSds7CVarArgsWP", ptr %720, align 8
  store double %712, ptr %718, align 8
  %721 = call swiftcc { i64, ptr } @"$sSS10FoundationE6format6locale9argumentsS2Sh_0A10Essentials6LocaleVSghSays7CVarArg_pGhtcfC"(i64 1715023397, ptr nonnull inttoptr (i64 -2017612633061982208 to ptr), i64 0, i64 0, ptr %reference.new)
  %722 = extractvalue { i64, ptr } %721, 0
  %723 = extractvalue { i64, ptr } %721, 1
  call void @swift_setDeallocating(ptr %reference.new) #2
  %724 = load i64, ptr %reference.new171, align 8, !range !9
  %725 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss7CVarArg_pMD") #15
  call void @swift_arrayDestroy(ptr nonnull %718, i64 %724, ptr %725) #2
  %726 = getelementptr inbounds nuw i8, ptr %714, i64 56
  store ptr @"$sSSN", ptr %726, align 8
  store i64 %722, ptr %716, align 8
  %._guts174._object._object = getelementptr inbounds nuw i8, ptr %714, i64 40
  store ptr %723, ptr %._guts174._object._object, align 8
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %714, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %714) #2
  ret i32 0

727:                                              ; preds = %.loopexit, %453
  %728 = phi ptr [ %.pre68, %453 ], [ %787, %.loopexit ]
  %729 = phi i64 [ 0, %453 ], [ %731, %.loopexit ]
  %730 = phi double [ 0.000000e+00, %453 ], [ %788, %.loopexit ]
  %731 = add nuw nsw i64 %729, 1
  %732 = getelementptr inbounds nuw i8, ptr %728, i64 16
  %733 = load i64, ptr %732, align 8, !range !9
  %.not272 = icmp samesign ult i64 %729, %733
  br i1 %.not272, label %734, label %odessy.chk61, !prof !11

734:                                              ; preds = %727
  %735 = getelementptr inbounds nuw i8, ptr %728, i64 32
  %736 = getelementptr inbounds nuw [8 x i8], ptr %735, i64 %729
  %737 = load double, ptr %736, align 8
  %738 = fmul double %737, 5.000000e-01
  %739 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %740 = getelementptr inbounds nuw i8, ptr %739, i64 16
  %741 = load i64, ptr %740, align 8, !range !9
  %.not273 = icmp samesign ult i64 %729, %741
  br i1 %.not273, label %742, label %odessy.chk62, !prof !11

742:                                              ; preds = %734
  %743 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %744 = getelementptr inbounds nuw i8, ptr %743, i64 16
  %745 = load i64, ptr %744, align 8, !range !9
  %.not274 = icmp samesign ult i64 %729, %745
  br i1 %.not274, label %746, label %odessy.chk63, !prof !11

746:                                              ; preds = %742
  %747 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %748 = getelementptr inbounds nuw i8, ptr %747, i64 16
  %749 = load i64, ptr %748, align 8, !range !9
  %.not275 = icmp samesign ult i64 %729, %749
  br i1 %.not275, label %750, label %odessy.chk64, !prof !11

750:                                              ; preds = %746
  %751 = getelementptr inbounds nuw i8, ptr %739, i64 32
  %752 = getelementptr inbounds nuw [8 x i8], ptr %751, i64 %729
  %753 = load double, ptr %752, align 8
  %754 = fmul double %753, %753
  %755 = getelementptr inbounds nuw i8, ptr %743, i64 32
  %756 = getelementptr inbounds nuw [8 x i8], ptr %755, i64 %729
  %757 = load double, ptr %756, align 8
  %758 = fmul double %757, %757
  %759 = fadd double %754, %758
  %760 = getelementptr inbounds nuw i8, ptr %747, i64 32
  %761 = getelementptr inbounds nuw [8 x i8], ptr %760, i64 %729
  %762 = load double, ptr %761, align 8
  %763 = fmul double %762, %762
  %764 = fadd double %759, %763
  %765 = fmul double %738, %764
  %766 = fadd double %730, %765
  store double %766, ptr @"$s5nbody1eSdvp", align 8
  %767 = load i64, ptr @"$s5nbody1nSivp", align 8
  %.not328 = icmp sgt i64 %767, %729
  br i1 %.not328, label %768, label %odessy.chk65, !prof !11

768:                                              ; preds = %750
  %769 = icmp eq i64 %731, %767
  br i1 %769, label %.loopexit, label %770

770:                                              ; preds = %768
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch155)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch155, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch156)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch156, i64 0, ptr null) #2
  %771 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %772 = getelementptr inbounds nuw i8, ptr %771, i64 16
  %773 = getelementptr inbounds nuw i8, ptr %771, i64 32
  %774 = getelementptr inbounds nuw [8 x i8], ptr %773, i64 %729
  %775 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %776 = getelementptr inbounds nuw i8, ptr %775, i64 16
  %777 = getelementptr inbounds nuw i8, ptr %775, i64 32
  %778 = getelementptr inbounds nuw [8 x i8], ptr %777, i64 %729
  %779 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %780 = getelementptr inbounds nuw i8, ptr %779, i64 16
  %781 = getelementptr inbounds nuw i8, ptr %779, i64 32
  %782 = getelementptr inbounds nuw [8 x i8], ptr %781, i64 %729
  %783 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %784 = getelementptr inbounds nuw i8, ptr %783, i64 16
  %785 = getelementptr inbounds nuw i8, ptr %783, i64 32
  %786 = getelementptr inbounds nuw [8 x i8], ptr %785, i64 %729
  %.pre326 = load i64, ptr %772, align 8, !range !9
  %.not277 = icmp samesign ult i64 %729, %.pre326
  br i1 %.not277, label %.split.preheader, label %odessy.chk66, !prof !11

.split.preheader:                                 ; preds = %770
  %"$s5nbody1eSdvp.promoted" = load double, ptr @"$s5nbody1eSdvp", align 8
  br label %.split

.loopexit:                                        ; preds = %814, %768
  %787 = phi ptr [ %728, %768 ], [ %783, %814 ]
  %788 = phi double [ %766, %768 ], [ %825, %814 ]
  %789 = icmp eq i64 %731, %449
  br i1 %789, label %.loopexit299, label %727

.split:                                           ; preds = %.split.preheader, %814
  %790 = phi double [ %825, %814 ], [ %"$s5nbody1eSdvp.promoted", %.split.preheader ]
  %791 = phi i64 [ %792, %814 ], [ %731, %.split.preheader ]
  %792 = add nuw i64 %791, 1
  %exitcond.not = icmp eq i64 %791, %.pre326
  br i1 %exitcond.not, label %odessy.chk67, label %793, !prof !10

793:                                              ; preds = %.split
  %794 = load double, ptr %774, align 8
  %795 = getelementptr inbounds nuw [8 x i8], ptr %773, i64 %791
  %796 = load double, ptr %795, align 8
  %797 = fsub double %794, %796
  %798 = load i64, ptr %776, align 8, !range !9
  %.not279 = icmp samesign ult i64 %729, %798
  br i1 %.not279, label %799, label %odessy.chk68, !prof !11

799:                                              ; preds = %793
  %.not280 = icmp samesign ult i64 %791, %798
  br i1 %.not280, label %800, label %odessy.chk69, !prof !11

800:                                              ; preds = %799
  %801 = load double, ptr %778, align 8
  %802 = getelementptr inbounds nuw [8 x i8], ptr %777, i64 %791
  %803 = load double, ptr %802, align 8
  %804 = fsub double %801, %803
  %805 = load i64, ptr %780, align 8, !range !9
  %.not281 = icmp samesign ult i64 %729, %805
  br i1 %.not281, label %806, label %odessy.chk70, !prof !11

806:                                              ; preds = %800
  %.not282 = icmp samesign ult i64 %791, %805
  br i1 %.not282, label %807, label %odessy.chk71, !prof !11

807:                                              ; preds = %806
  %808 = load double, ptr %782, align 8
  %809 = getelementptr inbounds nuw [8 x i8], ptr %781, i64 %791
  %810 = load double, ptr %809, align 8
  %811 = fsub double %808, %810
  %812 = load i64, ptr %784, align 8, !range !9
  %.not283 = icmp samesign ult i64 %729, %812
  br i1 %.not283, label %813, label %odessy.chk72, !prof !11

813:                                              ; preds = %807
  %.not284 = icmp samesign ult i64 %791, %812
  br i1 %.not284, label %814, label %odessy.chk73, !prof !11

814:                                              ; preds = %813
  %815 = load double, ptr %786, align 8
  %816 = getelementptr inbounds nuw [8 x i8], ptr %785, i64 %791
  %817 = load double, ptr %816, align 8
  %818 = fmul double %815, %817
  %819 = fmul double %797, %797
  %820 = fmul double %804, %804
  %821 = fadd double %819, %820
  %822 = fmul double %811, %811
  %823 = fadd double %821, %822
  %sqrt298 = call double @llvm.sqrt.f64(double %823)
  %824 = fdiv double %818, %sqrt298
  %825 = fsub double %790, %824
  store double %825, ptr @"$s5nbody1eSdvp", align 8
  %826 = icmp eq i64 %792, %767
  br i1 %826, label %.loopexit, label %.split

827:                                              ; preds = %57
  tail call void asm sideeffect "", "n"(i32 89) #2
  tail call void @llvm.trap()
  unreachable

828:                                              ; preds = %28
  tail call void asm sideeffect "", "n"(i32 90) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %entry
  tail call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %36
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %111
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %164
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %170
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %183
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %187
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %193
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %207
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %211
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %217
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %231
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %235
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %241
  call void @odessy.chk(i32 13)
  unreachable

odessy.chk14:                                     ; preds = %256
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk15:                                     ; preds = %260
  call void @odessy.chk(i32 15)
  unreachable

odessy.chk16:                                     ; preds = %267
  call void @odessy.chk(i32 16)
  unreachable

odessy.chk17:                                     ; preds = %282
  call void @odessy.chk(i32 17)
  unreachable

odessy.chk18:                                     ; preds = %286
  call void @odessy.chk(i32 18)
  unreachable

odessy.chk19:                                     ; preds = %293
  call void @odessy.chk(i32 19)
  unreachable

odessy.chk20:                                     ; preds = %308
  call void @odessy.chk(i32 20)
  unreachable

odessy.chk21:                                     ; preds = %312
  call void @odessy.chk(i32 21)
  unreachable

odessy.chk22:                                     ; preds = %319
  call void @odessy.chk(i32 22)
  unreachable

odessy.chk23:                                     ; preds = %334
  call void @odessy.chk(i32 23)
  unreachable

odessy.chk24:                                     ; preds = %.loopexit304
  call void @odessy.chk(i32 24)
  unreachable

odessy.chk25:                                     ; preds = %136
  call void @odessy.chk(i32 25)
  unreachable

odessy.chk26:                                     ; preds = %144
  call void @odessy.chk(i32 26)
  unreachable

odessy.chk27:                                     ; preds = %148
  call void @odessy.chk(i32 27)
  unreachable

odessy.chk28:                                     ; preds = %152
  call void @odessy.chk(i32 28)
  unreachable

odessy.chk29:                                     ; preds = %350
  call void @odessy.chk(i32 29)
  unreachable

odessy.chk30:                                     ; preds = %365
  call void @odessy.chk(i32 30)
  unreachable

odessy.chk31:                                     ; preds = %380
  call void @odessy.chk(i32 31)
  unreachable

odessy.chk32:                                     ; preds = %385
  call void @odessy.chk(i32 32)
  unreachable

odessy.chk33:                                     ; preds = %.preheader302.preheader
  call void @odessy.chk(i32 33)
  unreachable

odessy.chk34:                                     ; preds = %.preheader301.preheader
  call void @odessy.chk(i32 34)
  unreachable

odessy.chk35:                                     ; preds = %465
  call void @odessy.chk(i32 35)
  unreachable

odessy.chk36:                                     ; preds = %471
  call void @odessy.chk(i32 36)
  unreachable

odessy.chk37:                                     ; preds = %472
  call void @odessy.chk(i32 37)
  unreachable

odessy.chk38:                                     ; preds = %482
  call void @odessy.chk(i32 38)
  unreachable

odessy.chk39:                                     ; preds = %483
  call void @odessy.chk(i32 39)
  unreachable

odessy.chk40:                                     ; preds = %493
  call void @odessy.chk(i32 40)
  unreachable

odessy.chk41:                                     ; preds = %494
  call void @odessy.chk(i32 41)
  unreachable

odessy.chk42:                                     ; preds = %520
  call void @odessy.chk(i32 42)
  unreachable

odessy.chk43:                                     ; preds = %524
  call void @odessy.chk(i32 43)
  unreachable

odessy.chk44:                                     ; preds = %542
  call void @odessy.chk(i32 44)
  unreachable

odessy.chk45:                                     ; preds = %546
  call void @odessy.chk(i32 45)
  unreachable

odessy.chk46:                                     ; preds = %564
  call void @odessy.chk(i32 46)
  unreachable

odessy.chk47:                                     ; preds = %568
  call void @odessy.chk(i32 47)
  unreachable

odessy.chk48:                                     ; preds = %586
  call void @odessy.chk(i32 48)
  unreachable

odessy.chk49:                                     ; preds = %590
  call void @odessy.chk(i32 49)
  unreachable

odessy.chk50:                                     ; preds = %608
  call void @odessy.chk(i32 50)
  unreachable

odessy.chk51:                                     ; preds = %612
  call void @odessy.chk(i32 51)
  unreachable

odessy.chk52:                                     ; preds = %630
  call void @odessy.chk(i32 52)
  unreachable

odessy.chk53:                                     ; preds = %454
  call void @odessy.chk(i32 53)
  unreachable

odessy.chk54:                                     ; preds = %.preheader
  call void @odessy.chk(i32 54)
  unreachable

odessy.chk55:                                     ; preds = %657
  call void @odessy.chk(i32 55)
  unreachable

odessy.chk56:                                     ; preds = %661
  call void @odessy.chk(i32 56)
  unreachable

odessy.chk57:                                     ; preds = %679
  call void @odessy.chk(i32 57)
  unreachable

odessy.chk58:                                     ; preds = %683
  call void @odessy.chk(i32 58)
  unreachable

odessy.chk59:                                     ; preds = %701
  call void @odessy.chk(i32 59)
  unreachable

odessy.chk60:                                     ; preds = %.loopexit303
  call void @odessy.chk(i32 60)
  unreachable

odessy.chk61:                                     ; preds = %727
  call void @odessy.chk(i32 61)
  unreachable

odessy.chk62:                                     ; preds = %734
  call void @odessy.chk(i32 62)
  unreachable

odessy.chk63:                                     ; preds = %742
  call void @odessy.chk(i32 63)
  unreachable

odessy.chk64:                                     ; preds = %746
  call void @odessy.chk(i32 64)
  unreachable

odessy.chk65:                                     ; preds = %750
  call void @odessy.chk(i32 65)
  unreachable

odessy.chk66:                                     ; preds = %770
  call void @odessy.chk(i32 66)
  unreachable

odessy.chk67:                                     ; preds = %.split
  call void @odessy.chk(i32 67)
  unreachable

odessy.chk68:                                     ; preds = %793
  call void @odessy.chk(i32 68)
  unreachable

odessy.chk69:                                     ; preds = %799
  call void @odessy.chk(i32 69)
  unreachable

odessy.chk70:                                     ; preds = %800
  call void @odessy.chk(i32 70)
  unreachable

odessy.chk71:                                     ; preds = %806
  call void @odessy.chk(i32 71)
  unreachable

odessy.chk72:                                     ; preds = %807
  call void @odessy.chk(i32 72)
  unreachable

odessy.chk73:                                     ; preds = %813
  call void @odessy.chk(i32 73)
  unreachable
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

.loopexit:                                        ; preds = %94, %87, %81, %78, %50, %43, %37, %34, %129, %122, %116, %113, %60, %58, %55, %12, %9
  %22 = phi i64 [ 0, %9 ], [ 0, %12 ], [ 0, %55 ], [ 0, %60 ], [ 0, %58 ], [ 0, %50 ], [ 0, %129 ], [ %123, %122 ], [ 0, %116 ], [ 0, %113 ], [ %44, %43 ], [ 0, %37 ], [ 0, %34 ], [ 0, %94 ], [ %88, %87 ], [ 0, %81 ], [ 0, %78 ]
  %23 = phi i8 [ 1, %9 ], [ 0, %12 ], [ 1, %55 ], [ 0, %60 ], [ 1, %58 ], [ 1, %50 ], [ 1, %129 ], [ 0, %122 ], [ 1, %116 ], [ 1, %113 ], [ 0, %43 ], [ 1, %37 ], [ 1, %34 ], [ 1, %94 ], [ 0, %87 ], [ 1, %81 ], [ 1, %78 ]
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
  %38 = add i8 %.sink, %31
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
  %82 = add i8 %.sink55, %75
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
  %117 = add i8 %.sink56, %110
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
  tail call void @odessy.chk(i32 74)
  unreachable

odessy.chk1:                                      ; preds = %7
  tail call void @odessy.chk(i32 75)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSSSiADSSRszsAER_r0_lIetgyr_Tpq5Si_Tg5"(i64 %0, ptr %1, i64 %2) local_unnamed_addr #3 {
entry:
  %3 = alloca %TSS, align 8
  %4 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %0, ptr %3, align 8
  %._guts._object._object = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %._guts._object._object, align 8
  %5 = tail call ptr @swift_bridgeObjectRetain(ptr returned %1) #2
  %6 = call swiftcc { i64, ptr } @"$sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufC"(ptr noalias nonnull %3, ptr nonnull @"$sSSN", ptr nonnull @"$sSSs25LosslessStringConvertiblesWP", ptr nonnull @"$sSSSTsWP")
  %7 = extractvalue { i64, ptr } %6, 0
  %8 = extractvalue { i64, ptr } %6, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
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

.loopexit81:                                      ; preds = %107, %100, %94, %91, %68, %61, %55, %52, %142, %135, %129, %126, %72, %71, %27
  %39 = phi i64 [ 0, %72 ], [ 0, %27 ], [ 0, %71 ], [ 0, %68 ], [ 0, %142 ], [ %136, %135 ], [ 0, %129 ], [ 0, %126 ], [ %62, %61 ], [ 0, %55 ], [ 0, %52 ], [ 0, %107 ], [ %101, %100 ], [ 0, %94 ], [ 0, %91 ]
  %40 = phi i8 [ 1, %72 ], [ 1, %27 ], [ 1, %71 ], [ 1, %68 ], [ 1, %142 ], [ 0, %135 ], [ 1, %129 ], [ 1, %126 ], [ 0, %61 ], [ 1, %55 ], [ 1, %52 ], [ 1, %107 ], [ 0, %100 ], [ 1, %94 ], [ 1, %91 ]
  call void @swift_bridgeObjectRelease(ptr %18) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
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
  %56 = add i8 %.sink, %49
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
  %95 = add i8 %.sink120, %88
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
  %130 = add i8 %.sink121, %123
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

.loopexit:                                        ; preds = %243, %236, %230, %227, %199, %192, %186, %183, %278, %271, %265, %262, %209, %207, %204, %163, %160
  %173 = phi i64 [ 0, %160 ], [ 0, %163 ], [ 0, %204 ], [ 0, %209 ], [ 0, %207 ], [ 0, %199 ], [ 0, %278 ], [ %272, %271 ], [ 0, %265 ], [ 0, %262 ], [ %193, %192 ], [ 0, %186 ], [ 0, %183 ], [ 0, %243 ], [ %237, %236 ], [ 0, %230 ], [ 0, %227 ]
  %174 = phi i8 [ 1, %160 ], [ 0, %163 ], [ 1, %204 ], [ 0, %209 ], [ 1, %207 ], [ 1, %199 ], [ 1, %278 ], [ 0, %271 ], [ 1, %265 ], [ 1, %262 ], [ 0, %192 ], [ 1, %186 ], [ 1, %183 ], [ 1, %243 ], [ 0, %236 ], [ 1, %230 ], [ 1, %227 ]
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
  %187 = add i8 %.sink122, %180
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
  %231 = add i8 %.sink123, %224
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
  %266 = add i8 %.sink124, %259
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
  call void @odessy.chk(i32 76)
  unreachable

odessy.chk1:                                      ; preds = %158
  call void @odessy.chk(i32 77)
  unreachable
}

; Function Attrs: nounwind
declare void @swift_bridgeObjectRelease(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @swift_beginAccess(ptr, ptr, i64, ptr) local_unnamed_addr #2

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
  %13 = tail call swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr %12, i64 %8, ptr null, ptr null) #17
  %14 = ptrtoint ptr %13 to i64
  store atomic i64 %14, ptr %0 monotonic, align 8
  br label %3
}

; Function Attrs: nounwind memory(argmem: readwrite)
declare swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr, i64, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @swift_allocObject(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn
declare ptr @swift_initStaticObject(ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn
declare zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr) local_unnamed_addr #7

; Function Attrs: noinline
define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %0) local_unnamed_addr #3 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = load i64, ptr %1, align 8, !range !9
  %3 = tail call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSd_Tg5"(i1 false, i64 %2, i1 false, ptr %0)
  ret ptr %3
}

; Function Attrs: nounwind
declare void @swift_endAccess(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nounwind willreturn
declare ptr @swift_initStackObject(ptr, ptr) local_unnamed_addr #7

declare swiftcc { i64, ptr } @"$sSS10FoundationE6format6locale9argumentsS2Sh_0A10Essentials6LocaleVSghSays7CVarArg_pGhtcfC"(i64, ptr, i64, i64, ptr) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind willreturn
declare void @swift_setDeallocating(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @swift_arrayDestroy(ptr, i64, ptr) local_unnamed_addr #2

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: noinline
declare swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64, ptr) local_unnamed_addr #3

; Function Attrs: noinline
declare swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noinline
define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSd_Tg5"(i1 %0, i64 %1, i1 %2, ptr %3) local_unnamed_addr #3 {
entry:
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br i1 %2, label %5, label %14

5:                                                ; preds = %entry
  %._storage._capacityAndFlags = getelementptr inbounds nuw i8, ptr %3, i64 24
  %6 = load i64, ptr %._storage._capacityAndFlags, align 8
  %7 = lshr i64 %6, 1
  %8 = icmp slt i64 %7, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = icmp slt i64 %6, 0
  br i1 %10, label %odessy.chk, label %11, !prof !10

11:                                               ; preds = %9
  %12 = and i64 %6, 9223372036854775806
  %13 = tail call i64 @llvm.umax.i64(i64 %12, i64 %1)
  br label %14

14:                                               ; preds = %11, %5, %entry
  %15 = phi i64 [ %1, %entry ], [ %13, %11 ], [ %7, %5 ]
  %16 = load i64, ptr %4, align 8, !range !9
  %.4 = tail call i64 @llvm.smax.i64(i64 %15, i64 %16)
  %17 = icmp eq i64 %.4, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCySdGMD") #15
  %20 = shl i64 %.4, 3
  %21 = add i64 %20, 32
  %22 = tail call noalias ptr @swift_allocObject(ptr %19, i64 %21, i64 7) #2
  %call.i = tail call i64 @malloc_usable_size(ptr noundef %22) #18
  %gepdiff = add nsw i64 %call.i, -32
  %23 = sdiv i64 %gepdiff, 8
  %24 = shl nsw i64 %23, 1
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 %16, ptr %25, align 8
  %._storage3._capacityAndFlags = getelementptr inbounds nuw i8, ptr %22, i64 24
  store i64 %24, ptr %._storage3._capacityAndFlags, align 8
  br label %26

26:                                               ; preds = %18, %14
  %27 = phi ptr [ %22, %18 ], [ @_swiftEmptyArrayStorage, %14 ]
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 32
  br i1 %0, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %16
  %32 = icmp ult ptr %28, %31
  %.not = icmp eq ptr %27, %3
  %or.cond9 = select i1 %.not, i1 %32, i1 false
  br i1 %or.cond9, label %34, label %.sink.split

.sink.split:                                      ; preds = %30
  %33 = shl nuw i64 %16, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %28, ptr nonnull align 8 %29, i64 %33, i1 false)
  br label %34

34:                                               ; preds = %.sink.split, %30
  store i64 0, ptr %4, align 8
  br label %37

35:                                               ; preds = %26
  %36 = shl nuw i64 %16, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %28, ptr nonnull align 8 %29, i64 %36, i1 false)
  br label %37

37:                                               ; preds = %35, %34
  tail call void @swift_release(ptr nonnull %3) #2
  ret ptr %27

odessy.chk:                                       ; preds = %9
  tail call void @odessy.chk(i32 78)
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

declare swiftcc { i64, ptr } @"$sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufC"(ptr noalias, ptr, ptr, ptr) local_unnamed_addr #0

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

declare swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64, i64, i64, ptr) local_unnamed_addr #0

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
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %16 = call swiftcc i64 @"$sSTsE21_copySequenceContents12initializing8IteratorQz_SitSry7ElementQzG_tFSs8UTF8ViewV_Tgq5"(ptr noalias nonnull captures(none) %4, i64 %15, i64 %10, i64 %0, i64 %1, i64 %2, ptr %3)
  %._elements._slice._base._guts._object._object = getelementptr inbounds nuw i8, ptr %4, i64 24
  %17 = load ptr, ptr %._elements._slice._base._guts._object._object, align 8
  %18 = tail call ptr @swift_bridgeObjectRetain(ptr returned %3) #2
  tail call void @swift_bridgeObjectRelease(ptr %17) #2
  %.not = icmp eq i64 %16, %10
  br i1 %.not, label %19, label %odessy.chk, !prof !11

19:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %._crit_edge

._crit_edge:                                      ; preds = %9, %19
  %20 = phi ptr [ %13, %19 ], [ @_swiftEmptyArrayStorage, %9 ]
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %22 = ptrtoint ptr %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %24 = load i64, ptr %23, align 8, !range !9
  %25 = tail call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %22, i64 %24), !noalias !16
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.elt1 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %47 = and i64 %6, 72057594037927935
  store i64 %2, ptr %5, align 8
  store i64 %47, ptr %.elt1, align 8
  %48 = getelementptr inbounds nuw i8, ptr %5, i64 %27
  %49 = ptrtoint ptr %48 to i64
  %50 = sub nsw i64 %28, %27
  %51 = icmp sgt i64 %50, -1
  call void @llvm.assume(i1 %51)
  %52 = call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %49, i64 %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %53

53:                                               ; preds = %46, %41, %._crit_edge
  %.merged = phi { i64, ptr } [ %25, %._crit_edge ], [ %45, %41 ], [ %52, %46 ]
  ret { i64, ptr } %.merged

odessy.chk:                                       ; preds = %12
  tail call void @odessy.chk(i32 79)
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
  tail call void @odessy.chk(i32 80)
  unreachable

odessy.chk1:                                      ; preds = %30
  tail call void @odessy.chk(i32 81)
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
  %call.i = tail call i64 @malloc_usable_size(ptr noundef %6) #18
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
  %.fr17 = freeze i64 %5
  %.fr16 = freeze ptr %6
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
  %19 = ptrtoint ptr %.fr16 to i64
  %20 = and i64 %19, 1152921504606846976
  %21 = icmp eq i64 %20, 0
  %22 = and i64 %.fr17, 576460752303423488
  %23 = icmp ne i64 %22, 0
  %24 = or i1 %21, %23
  %25 = zext i1 %24 to i64
  %26 = shl nuw nsw i64 4, %25
  %27 = and i64 %19, 2305843009213693952
  %.not12 = icmp eq i64 %27, 0
  %.elt6 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %28 = and i64 %19, 72057594037927935
  %29 = and i64 %.fr17, 1152921504606846976
  %.not13 = icmp eq i64 %29, 0
  %30 = and i64 %19, 1152921504606846975
  %31 = add nuw nsw i64 %30, 32
  %32 = and i64 %.fr17, 281474976710655
  %33 = lshr i64 %19, 56
  %34 = and i64 %33, 15
  %35 = select i1 %.not12, i64 %32, i64 %34
  br i1 %21, label %.split.us.split, label %.split

.split.us.split:                                  ; preds = %18
  br i1 %.not12, label %.split.us.split.split.us, label %.split.us.split.split

.split.us.split.split.us:                         ; preds = %.split.us.split
  br i1 %.not13, label %.split.us.split.split.us.split.us, label %.split.us.split.split.us.split, !prof !10

.split.us.split.split.us.split.us:                ; preds = %.split.us.split.split.us, %62
  %36 = phi ptr [ %64, %62 ], [ %10, %.split.us.split.split.us ]
  %37 = phi i64 [ %59, %62 ], [ %3, %.split.us.split.split.us ]
  %38 = phi i64 [ %63, %62 ], [ 1, %.split.us.split.split.us ]
  %39 = and i64 %37, 12
  %.not.us.us.us = icmp eq i64 %39, %26
  br i1 %.not.us.us.us, label %40, label %42, !prof !10

40:                                               ; preds = %.split.us.split.split.us.split.us
  %41 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %37, i64 %.fr17, ptr %.fr16)
  br label %42

42:                                               ; preds = %40, %.split.us.split.split.us.split.us
  %43 = phi i64 [ %41, %40 ], [ %37, %.split.us.split.split.us.split.us ]
  %44 = lshr i64 %43, 14
  %45 = icmp samesign uge i64 %44, %16
  %46 = icmp samesign ult i64 %44, %14
  %.not7.us.us.us = and i1 %45, %46
  br i1 %.not7.us.us.us, label %47, label %odessy.chk1, !prof !11

47:                                               ; preds = %42
  %48 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %.fr17, ptr %.fr16)
  %49 = extractvalue { i64, i64 } %48, 0
  %50 = lshr i64 %43, 16
  %51 = inttoptr i64 %49 to ptr
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 %50
  %53 = load i8, ptr %52, align 1
  br i1 %.not.us.us.us, label %54, label %56, !prof !10

54:                                               ; preds = %47
  %55 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %37, i64 %.fr17, ptr %.fr16)
  br label %56

56:                                               ; preds = %54, %47
  %57 = phi i64 [ %55, %54 ], [ %37, %47 ]
  %58 = and i64 %57, -65536
  %59 = add i64 %58, 65540
  store i8 %53, ptr %36, align 1
  %.not8.us.us.us = icmp eq i64 %38, %2
  br i1 %.not8.us.us.us, label %.loopexit17, label %60

60:                                               ; preds = %56
  %61 = lshr i64 %59, 14
  %.not9.us.us.us = icmp eq i64 %61, %14
  br i1 %.not9.us.us.us, label %.loopexit17, label %62

62:                                               ; preds = %60
  %63 = add nuw i64 %38, 1
  %64 = getelementptr inbounds nuw i8, ptr %36, i64 1
  br label %.split.us.split.split.us.split.us

.split.us.split.split.us.split:                   ; preds = %.split.us.split.split.us
  %65 = inttoptr i64 %31 to ptr
  br label %66

66:                                               ; preds = %94, %.split.us.split.split.us.split
  %67 = phi ptr [ %10, %.split.us.split.split.us.split ], [ %96, %94 ]
  %68 = phi i64 [ %3, %.split.us.split.split.us.split ], [ %91, %94 ]
  %69 = phi i64 [ 1, %.split.us.split.split.us.split ], [ %95, %94 ]
  %70 = and i64 %68, 12
  %.not.us.us = icmp eq i64 %70, %26
  br i1 %.not.us.us, label %71, label %.thread, !prof !10

71:                                               ; preds = %66
  %72 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %68, i64 %.fr17, ptr %.fr16)
  %73 = lshr i64 %72, 14
  %74 = icmp samesign uge i64 %73, %16
  %75 = icmp samesign ult i64 %73, %14
  %.not7.us.us = and i1 %74, %75
  br i1 %.not7.us.us, label %82, label %odessy.chk1, !prof !11

.thread:                                          ; preds = %66
  %76 = lshr i64 %68, 14
  %77 = icmp samesign uge i64 %76, %16
  %78 = icmp samesign ult i64 %76, %14
  %.not7.us.us37 = and i1 %77, %78
  br i1 %.not7.us.us37, label %.thread38, label %odessy.chk1, !prof !11

.thread38:                                        ; preds = %.thread
  %79 = lshr i64 %68, 16
  %80 = getelementptr inbounds nuw i8, ptr %65, i64 %79
  %81 = load i8, ptr %80, align 1
  br label %87

82:                                               ; preds = %71
  %83 = lshr i64 %72, 16
  %84 = getelementptr inbounds nuw i8, ptr %65, i64 %83
  %85 = load i8, ptr %84, align 1
  %86 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %68, i64 %.fr17, ptr %.fr16)
  br label %87

87:                                               ; preds = %.thread38, %82
  %88 = phi i8 [ %85, %82 ], [ %81, %.thread38 ]
  %89 = phi i64 [ %86, %82 ], [ %68, %.thread38 ]
  %90 = and i64 %89, -65536
  %91 = add i64 %90, 65540
  store i8 %88, ptr %67, align 1
  %.not8.us.us = icmp eq i64 %69, %2
  br i1 %.not8.us.us, label %.loopexit17, label %92

92:                                               ; preds = %87
  %93 = lshr i64 %91, 14
  %.not9.us.us = icmp eq i64 %93, %14
  br i1 %.not9.us.us, label %.loopexit17, label %94

94:                                               ; preds = %92
  %95 = add nuw i64 %69, 1
  %96 = getelementptr inbounds nuw i8, ptr %67, i64 1
  br label %66

.split.us.split.split:                            ; preds = %.split.us.split, %120
  %97 = phi ptr [ %122, %120 ], [ %10, %.split.us.split ]
  %98 = phi i64 [ %117, %120 ], [ %3, %.split.us.split ]
  %99 = phi i64 [ %121, %120 ], [ 1, %.split.us.split ]
  %100 = and i64 %98, 12
  %.not.us = icmp eq i64 %100, %26
  br i1 %.not.us, label %101, label %103, !prof !10

101:                                              ; preds = %.split.us.split.split
  %102 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %98, i64 %.fr17, ptr %.fr16)
  br label %103

103:                                              ; preds = %101, %.split.us.split.split
  %104 = phi i64 [ %102, %101 ], [ %98, %.split.us.split.split ]
  %105 = lshr i64 %104, 14
  %106 = icmp samesign uge i64 %105, %16
  %107 = icmp samesign ult i64 %105, %14
  %.not7.us = and i1 %106, %107
  br i1 %.not7.us, label %108, label %odessy.chk1, !prof !11

108:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.fr17, ptr %7, align 8
  store i64 %28, ptr %.elt6, align 8
  %109 = lshr i64 %104, 16
  %110 = getelementptr inbounds nuw i8, ptr %7, i64 %109
  %111 = load i8, ptr %110, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %.not.us, label %112, label %114, !prof !10

112:                                              ; preds = %108
  %113 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %98, i64 %.fr17, ptr %.fr16)
  br label %114

114:                                              ; preds = %112, %108
  %115 = phi i64 [ %113, %112 ], [ %98, %108 ]
  %116 = and i64 %115, -65536
  %117 = add i64 %116, 65540
  store i8 %111, ptr %97, align 1
  %.not8.us = icmp eq i64 %99, %2
  br i1 %.not8.us, label %.loopexit17, label %118

118:                                              ; preds = %114
  %119 = lshr i64 %117, 14
  %.not9.us = icmp eq i64 %119, %14
  br i1 %.not9.us, label %.loopexit17, label %120

120:                                              ; preds = %118
  %121 = add nuw i64 %99, 1
  %122 = getelementptr inbounds nuw i8, ptr %97, i64 1
  br label %.split.us.split.split

.split:                                           ; preds = %18, %145
  %123 = phi ptr [ %147, %145 ], [ %10, %18 ]
  %124 = phi i64 [ %142, %145 ], [ %3, %18 ]
  %125 = phi i64 [ %146, %145 ], [ 1, %18 ]
  %126 = and i64 %124, 12
  %.not = icmp eq i64 %126, %26
  br i1 %.not, label %127, label %129, !prof !10

127:                                              ; preds = %.split
  %128 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %124, i64 %.fr17, ptr %.fr16)
  br label %129

129:                                              ; preds = %127, %.split
  %130 = phi i64 [ %128, %127 ], [ %124, %.split ]
  %131 = lshr i64 %130, 14
  %132 = icmp samesign uge i64 %131, %16
  %133 = icmp samesign ult i64 %131, %14
  %.not7 = and i1 %132, %133
  br i1 %.not7, label %134, label %odessy.chk1, !prof !11

134:                                              ; preds = %129
  %135 = tail call swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64 %130, i64 %.fr17, ptr %.fr16)
  br i1 %.not, label %136, label %138, !prof !10

136:                                              ; preds = %134
  %137 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %124, i64 %.fr17, ptr %.fr16)
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i64 [ %137, %136 ], [ %124, %134 ]
  %140 = lshr i64 %139, 16
  %.not15 = icmp samesign ult i64 %140, %35
  br i1 %.not15, label %141, label %odessy.chk2, !prof !11

141:                                              ; preds = %138
  %142 = tail call swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64 %139, i64 %.fr17, ptr %.fr16)
  store i8 %135, ptr %123, align 1
  %.not8 = icmp eq i64 %125, %2
  br i1 %.not8, label %.loopexit17, label %143

143:                                              ; preds = %141
  %144 = lshr i64 %142, 14
  %.not9 = icmp eq i64 %144, %14
  br i1 %.not9, label %.loopexit17, label %145

145:                                              ; preds = %143
  %146 = add nuw i64 %125, 1
  %147 = getelementptr inbounds nuw i8, ptr %123, i64 1
  br label %.split

.loopexit17:                                      ; preds = %141, %143, %114, %118, %92, %87, %60, %56, %15, %9, %entry
  %.sink = phi i64 [ %3, %entry ], [ %3, %15 ], [ %3, %9 ], [ %117, %114 ], [ %91, %92 ], [ %59, %60 ], [ %59, %56 ], [ %91, %87 ], [ %117, %118 ], [ %142, %143 ], [ %142, %141 ]
  %148 = phi i64 [ 0, %entry ], [ 0, %15 ], [ 0, %9 ], [ %2, %114 ], [ %69, %92 ], [ %38, %60 ], [ %2, %56 ], [ %2, %87 ], [ %99, %118 ], [ %2, %141 ], [ %125, %143 ]
  store i64 %3, ptr %0, align 8
  %._elements3._slice._endIndex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %._elements3._slice._endIndex, align 8
  %._elements3._slice._base = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.fr17, ptr %._elements3._slice._base, align 8
  %._elements3._slice._base._guts._object._object = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.fr16, ptr %._elements3._slice._base._guts._object._object, align 8
  %._position4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %._position4, align 8
  ret i64 %148

odessy.chk:                                       ; preds = %12
  tail call void @odessy.chk(i32 82)
  unreachable

odessy.chk1:                                      ; preds = %129, %103, %71, %.thread, %42
  tail call void @odessy.chk(i32 83)
  unreachable

odessy.chk2:                                      ; preds = %138
  tail call void @odessy.chk(i32 84)
  unreachable
}

declare swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64, i64) local_unnamed_addr #0

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
declare i64 @malloc_usable_size(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind
declare ptr @swift_retain_n(ptr returned, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind }
attributes #3 = { noinline "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(argmem: readwrite) }
attributes #7 = { mustprogress nounwind willreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind memory(read) }
attributes #16 = { nounwind willreturn }
attributes #17 = { nounwind memory(argmem: read) }
attributes #18 = { nounwind optsize }

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
!14 = !{!"branch_weights", !"expected", i32 1934571, i32 2145549077}
!15 = !{!"branch_weights", !"expected", i32 4348775, i32 2143134873}
!16 = !{!17}
!17 = distinct !{!17, !18, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_: argument 0"}
!18 = distinct !{!18, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_"}
