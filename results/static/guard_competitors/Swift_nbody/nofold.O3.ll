; ModuleID = 'results/static/guard_competitors/Swift_nbody/nofold.ll'
source_filename = "/Users/ebrah/Project/compiler/ODeSSy/logs/swift_triage/nbody.ll"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx26.0.0"

%TSi = type <{ i64 }>
%TSa = type <{ %Ts12_ArrayBufferV }>
%Ts12_ArrayBufferV = type <{ %Ts14_BridgeStorageV }>
%Ts14_BridgeStorageV = type <{ ptr }>
%TSd = type <{ double }>
%struct._SwiftEmptyArrayStorage = type { %struct.HeapObject, %struct._SwiftArrayBodyStorage }
%struct.HeapObject = type { ptr, %struct.InlineRefCountsPlaceholder }
%struct.InlineRefCountsPlaceholder = type { i64 }
%struct._SwiftArrayBodyStorage = type { i64, i64 }
%swift.type = type { i64 }
%Ts23_ContiguousArrayStorageCySdG_tailelems1 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%swift.refcounted = type { ptr, i64 }
%Ts10_ArrayBodyV = type <{ %TSo22_SwiftArrayBodyStorageV }>
%TSo22_SwiftArrayBodyStorageV = type <{ %TSi, %TSu }>
%TSu = type <{ i64 }>
%Ts23_ContiguousArrayStorageCySdG_tailelems2 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%Ts23_ContiguousArrayStorageCySdG_tailelems3 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%Ts23_ContiguousArrayStorageCySdG_tailelems4 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%Ts23_ContiguousArrayStorageCySdG_tailelems5 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%Ts23_ContiguousArrayStorageCySaySdGG_tailelems0 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSa, %TSa, %TSa, %TSa, %TSa }>
%swift.type_descriptor = type opaque
%swift.protocol = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }
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
@"$s5nbody3mpxSdvp" = hidden global %TSd zeroinitializer, align 8
@"$s5nbody3mpySdvp" = hidden global %TSd zeroinitializer, align 8
@"$s5nbody3mpzSdvp" = hidden global %TSd zeroinitializer, align 8
@"$s5nbody2dtSdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody1eSdvp" = hidden global %TSd zeroinitializer, align 8
@_swiftEmptyArrayStorage = external global %struct._SwiftEmptyArrayStorage, align 8
@_swiftImmortalRefCount = external constant i8
@"$ss20__StaticArrayStorageCN" = external global %swift.type, align 8
@mainTv_r = internal constant %Ts23_ContiguousArrayStorageCySdG_tailelems1 <{ %swift.refcounted { ptr @"$ss20__StaticArrayStorageCN", i64 ptrtoint (ptr @_swiftImmortalRefCount to i64) }, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd <{ double 1.000000e+00 }> }>, align 8
@mainTv0_r = internal constant %Ts23_ContiguousArrayStorageCySdG_tailelems2 <{ %swift.refcounted { ptr @"$ss20__StaticArrayStorageCN", i64 ptrtoint (ptr @_swiftImmortalRefCount to i64) }, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x40135DA0343CD92C }>, %TSd <{ double 0xBFF290ABC01FDB7C }>, %TSd <{ double 0xBFBA86F96C25EBF0 }>, %TSd <{ double 0x3F5B32DDB8EC9209 }>, %TSd <{ double 0x3F7F88FF93F670B6 }>, %TSd <{ double 0xBF12199946DEBD80 }>, %TSd <{ double 0x3F4F49601333C135 }> }>, align 8
@mainTv1_r = internal constant %Ts23_ContiguousArrayStorageCySdG_tailelems3 <{ %swift.refcounted { ptr @"$ss20__StaticArrayStorageCN", i64 ptrtoint (ptr @_swiftImmortalRefCount to i64) }, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x4020AFCDC332CA67 }>, %TSd <{ double 0x40107FCB31DE01B0 }>, %TSd <{ double 0xBFD9D353E1EB467C }>, %TSd <{ double 0xBF66ABB60A8E1D76 }>, %TSd <{ double 0x3F747956257578B8 }>, %TSd <{ double 0x3EF829379CAD4AC0 }>, %TSd <{ double 0x3F32BC5EEFF5E6F8 }> }>, align 8
@mainTv2_r = internal constant %Ts23_ContiguousArrayStorageCySdG_tailelems4 <{ %swift.refcounted { ptr @"$ss20__StaticArrayStorageCN", i64 ptrtoint (ptr @_swiftImmortalRefCount to i64) }, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x4029C9EACEA7D9CF }>, %TSd <{ double 0xC02E38E8D626667E }>, %TSd <{ double 0xBFCC9557BE257DA0 }>, %TSd <{ double 0x3F6849383E87D954 }>, %TSd <{ double 0x3F637C044AC0ACE1 }>, %TSd <{ double 0xBEFF1983FEDBFAA0 }>, %TSd <{ double 0x3F06E44607A13BD6 }> }>, align 8
@mainTv3_r = internal constant %Ts23_ContiguousArrayStorageCySdG_tailelems5 <{ %swift.refcounted { ptr @"$ss20__StaticArrayStorageCN", i64 ptrtoint (ptr @_swiftImmortalRefCount to i64) }, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x402EC267A905572A }>, %TSd <{ double 0xC039EB5833C8A220 }>, %TSd <{ double 0x3FC6F1F393ABE540 }>, %TSd <{ double 0x3F65F5C9E51B4320 }>, %TSd <{ double 0x3F5AAD5736999D88 }>, %TSd <{ double 0xBF18F2070B7F9750 }>, %TSd <{ double 0x3F0B0213CA2D0EEC }> }>, align 8
@mainTv4_r = internal constant %Ts23_ContiguousArrayStorageCySaySdGG_tailelems0 <{ %swift.refcounted { ptr @"$ss20__StaticArrayStorageCN", i64 ptrtoint (ptr @_swiftImmortalRefCount to i64) }, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 5 }>, %TSu <{ i64 10 }> }> }>, %TSa <{ %Ts12_ArrayBufferV <{ %Ts14_BridgeStorageV <{ ptr @mainTv_r }> }> }>, %TSa <{ %Ts12_ArrayBufferV <{ %Ts14_BridgeStorageV <{ ptr @mainTv0_r }> }> }>, %TSa <{ %Ts12_ArrayBufferV <{ %Ts14_BridgeStorageV <{ ptr @mainTv1_r }> }> }>, %TSa <{ %Ts12_ArrayBufferV <{ %Ts14_BridgeStorageV <{ ptr @mainTv2_r }> }> }>, %TSa <{ %Ts12_ArrayBufferV <{ %Ts14_BridgeStorageV <{ ptr @mainTv3_r }> }> }> }>, align 8
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = private unnamed_addr constant ptr @"$ss23_ContiguousArrayStorageCMn"
@"symbolic _____yypG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____yypG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"yypG", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCyypGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCyypGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____yypG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCyypGMR" to i64)) to i32), i32 9 }, align 8
@"$ss7CVarArgMp" = external global %swift.protocol, align 4
@"got.$ss7CVarArgMp" = private unnamed_addr constant ptr @"$ss7CVarArgMp"
@"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [3 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [3 x i8], i8 }>, ptr @"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss7CVarArgMp" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [3 x i8], i8 }>, ptr @"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP", i32 0, i32 4) to i64)) to i32), [3 x i8] c"_pG", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys7CVarArg_pGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCys7CVarArg_pGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys7CVarArg_pGMR" to i64)) to i32), i32 14 }, align 8
@"$sSdN" = external global %swift.type, align 8
@"$sSds7CVarArgsWP" = external global ptr, align 8
@"$sSSN" = external global %swift.type, align 8
@"\01l_entry_point" = private constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @main to i64), i64 ptrtoint (ptr @"\01l_entry_point" to i64)) to i32), i32 0 }, section "__TEXT, __swift5_entry, regular, no_dead_strip", align 4
@"_swift_FORCE_LOAD_$_swiftFoundation_$_nbody" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftFoundation"
@"_swift_FORCE_LOAD_$_swift_Builtin_float_$_nbody" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swift_Builtin_float"
@"_swift_FORCE_LOAD_$_swiftObjectiveC_$_nbody" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftObjectiveC"
@"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_nbody" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftCoreFoundation"
@"_swift_FORCE_LOAD_$_swiftDispatch_$_nbody" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftDispatch"
@"_swift_FORCE_LOAD_$_swiftXPC_$_nbody" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftXPC"
@"_swift_FORCE_LOAD_$_swiftIOKit_$_nbody" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftIOKit"
@"symbolic _____ySdG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____ySdG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"ySdG", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCySdGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCySdGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____ySdG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCySdGMR" to i64)) to i32), i32 9 }, align 8
@"$sSSs25LosslessStringConvertiblesWP" = external global ptr, align 8
@"$sSSSTsWP" = external global ptr, align 8
@"$ss5UInt8VMn" = external global %swift.type_descriptor, align 4
@"got.$ss5UInt8VMn" = private unnamed_addr constant ptr @"$ss5UInt8VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss5UInt8VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys5UInt8VGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCys5UInt8VGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys5UInt8VGMR" to i64)) to i32), i32 12 }, align 8
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@llvm.used = appending global [10 x ptr] [ptr @"\01l_entry_point", ptr @__swift_reflection_version, ptr @"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_nbody", ptr @"_swift_FORCE_LOAD_$_swiftDispatch_$_nbody", ptr @"_swift_FORCE_LOAD_$_swiftFoundation_$_nbody", ptr @"_swift_FORCE_LOAD_$_swiftIOKit_$_nbody", ptr @"_swift_FORCE_LOAD_$_swiftObjectiveC_$_nbody", ptr @"_swift_FORCE_LOAD_$_swiftXPC_$_nbody", ptr @"_swift_FORCE_LOAD_$_swift_Builtin_float_$_nbody", ptr @main], section "llvm.metadata"

define noundef i32 @main(i32 %0, ptr readnone captures(none) %1) #0 {
entry:
  %access-scratch = alloca [24 x i8], align 8
  %access-scratch4 = alloca [24 x i8], align 8
  %access-scratch11 = alloca [24 x i8], align 8
  %access-scratch18 = alloca [24 x i8], align 8
  %access-scratch25 = alloca [24 x i8], align 8
  %access-scratch32 = alloca [24 x i8], align 8
  %access-scratch39 = alloca [24 x i8], align 8
  %access-scratch46 = alloca [24 x i8], align 8
  %access-scratch49 = alloca [24 x i8], align 8
  %access-scratch50 = alloca [24 x i8], align 8
  %access-scratch51 = alloca [24 x i8], align 8
  %access-scratch52 = alloca [24 x i8], align 8
  %access-scratch53 = alloca [24 x i8], align 8
  %access-scratch54 = alloca [24 x i8], align 8
  %access-scratch58 = alloca [24 x i8], align 8
  %access-scratch64 = alloca [24 x i8], align 8
  %access-scratch65 = alloca [24 x i8], align 8
  %access-scratch68 = alloca [24 x i8], align 8
  %access-scratch69 = alloca [24 x i8], align 8
  %access-scratch72 = alloca [24 x i8], align 8
  %access-scratch73 = alloca [24 x i8], align 8
  %access-scratch76 = alloca [24 x i8], align 8
  %access-scratch77 = alloca [24 x i8], align 8
  %access-scratch78 = alloca [24 x i8], align 8
  %access-scratch90 = alloca [24 x i8], align 8
  %access-scratch96 = alloca [24 x i8], align 8
  %access-scratch102 = alloca [24 x i8], align 8
  %access-scratch108 = alloca [24 x i8], align 8
  %access-scratch114 = alloca [24 x i8], align 8
  %access-scratch120 = alloca [24 x i8], align 8
  %access-scratch126 = alloca [24 x i8], align 8
  %access-scratch132 = alloca [24 x i8], align 8
  %access-scratch138 = alloca [24 x i8], align 8
  %access-scratch142 = alloca [24 x i8], align 8
  %access-scratch143 = alloca [24 x i8], align 8
  %access-scratch152 = alloca [24 x i8], align 8
  %access-scratch153 = alloca [24 x i8], align 8
  %2 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %3 = tail call swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"()
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = load i64, ptr %4, align 8, !range !41
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %odessy.chk, label %7, !prof !42

7:                                                ; preds = %entry
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %9 = load i64, ptr %8, align 8
  %._guts._object._object = getelementptr inbounds nuw i8, ptr %3, i64 56
  %10 = load ptr, ptr %._guts._object._object, align 8
  %11 = tail call ptr @swift_bridgeObjectRetain(ptr returned %10) #2
  tail call void @swift_bridgeObjectRelease(ptr nonnull %3) #2
  %12 = ptrtoint ptr %10 to i64
  %13 = and i64 %12, 2305843009213693952
  %.not = icmp eq i64 %13, 0
  %14 = and i64 %9, 281474976710655
  %15 = lshr i64 %12, 56
  %16 = and i64 %15, 15
  %17 = select i1 %.not, i64 %14, i64 %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20, !prof !42

19:                                               ; preds = %7
  tail call void @swift_bridgeObjectRelease(ptr %10) #2
  tail call void asm sideeffect "", "n"(i32 1) #2
  tail call void @llvm.trap()
  unreachable

20:                                               ; preds = %7
  %21 = and i64 %12, 1152921504606846976
  %.not245 = icmp eq i64 %21, 0
  br i1 %.not245, label %22, label %.thread, !prof !43

22:                                               ; preds = %20
  br i1 %.not, label %91, label %23

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.elt177 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %24 = and i64 %12, 72057594037927935
  store i64 %9, ptr %2, align 8
  store i64 %24, ptr %.elt177, align 8
  %25 = trunc i64 %9 to i8
  switch i8 %25, label %50 [
    i8 45, label %26
    i8 43, label %49
  ]

26:                                               ; preds = %23
  switch i64 %16, label %29 [
    i64 0, label %900
    i64 1, label %.loopexit326
  ], !prof !44

.loopexit326:                                     ; preds = %68, %63, %60, %55, %45, %40, %37, %32, %87, %82, %79, %74, %50, %49, %26
  %27 = phi i64 [ 0, %50 ], [ 0, %26 ], [ 0, %49 ], [ 0, %32 ], [ 0, %74 ], [ 0, %79 ], [ 0, %82 ], [ %88, %87 ], [ 0, %37 ], [ 0, %40 ], [ %46, %45 ], [ 0, %60 ], [ 0, %63 ], [ %69, %68 ], [ 0, %55 ]
  %28 = phi i8 [ 1, %50 ], [ 1, %26 ], [ 1, %49 ], [ 1, %32 ], [ 1, %74 ], [ 1, %79 ], [ 1, %82 ], [ 0, %87 ], [ 1, %37 ], [ 1, %40 ], [ 0, %45 ], [ 1, %60 ], [ 1, %63 ], [ 0, %68 ], [ 1, %55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread309

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %31 = getelementptr i8, ptr %2, i64 %16
  br label %32

32:                                               ; preds = %45, %29
  %33 = phi ptr [ %30, %29 ], [ %47, %45 ]
  %34 = phi i64 [ 0, %29 ], [ %46, %45 ]
  %35 = load i8, ptr %33, align 1
  %36 = add i8 %35, -48
  %or.cond = icmp ult i8 %36, 10
  br i1 %or.cond, label %37, label %.loopexit326, !prof !45

37:                                               ; preds = %32
  %38 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %34, i64 10)
  %39 = extractvalue { i64, i1 } %38, 1
  br i1 %39, label %.loopexit326, label %40

40:                                               ; preds = %37
  %41 = extractvalue { i64, i1 } %38, 0
  %42 = zext nneg i8 %36 to i64
  %43 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %41, i64 %42)
  %44 = extractvalue { i64, i1 } %43, 1
  br i1 %44, label %.loopexit326, label %45, !prof !42

45:                                               ; preds = %40
  %46 = extractvalue { i64, i1 } %43, 0
  %47 = getelementptr inbounds nuw i8, ptr %33, i64 1
  %48 = icmp eq ptr %47, %31
  br i1 %48, label %.loopexit326, label %32

49:                                               ; preds = %23
  switch i64 %16, label %52 [
    i64 0, label %899
    i64 1, label %.loopexit326
  ], !prof !44

50:                                               ; preds = %23
  %51 = icmp eq i64 %16, 0
  br i1 %51, label %.loopexit326, label %72, !prof !42

52:                                               ; preds = %49
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %54 = getelementptr i8, ptr %2, i64 %16
  br label %55

55:                                               ; preds = %68, %52
  %56 = phi ptr [ %53, %52 ], [ %70, %68 ]
  %57 = phi i64 [ 0, %52 ], [ %69, %68 ]
  %58 = load i8, ptr %56, align 1
  %59 = add i8 %58, -48
  %or.cond182 = icmp ult i8 %59, 10
  br i1 %or.cond182, label %60, label %.loopexit326, !prof !45

60:                                               ; preds = %55
  %61 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %57, i64 10)
  %62 = extractvalue { i64, i1 } %61, 1
  br i1 %62, label %.loopexit326, label %63

63:                                               ; preds = %60
  %64 = extractvalue { i64, i1 } %61, 0
  %65 = zext nneg i8 %59 to i64
  %66 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %64, i64 %65)
  %67 = extractvalue { i64, i1 } %66, 1
  br i1 %67, label %.loopexit326, label %68, !prof !42

68:                                               ; preds = %63
  %69 = extractvalue { i64, i1 } %66, 0
  %70 = getelementptr inbounds nuw i8, ptr %56, i64 1
  %71 = icmp eq ptr %70, %54
  br i1 %71, label %.loopexit326, label %55

72:                                               ; preds = %50
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %16
  br label %74

74:                                               ; preds = %87, %72
  %75 = phi ptr [ %2, %72 ], [ %89, %87 ]
  %76 = phi i64 [ 0, %72 ], [ %88, %87 ]
  %77 = load i8, ptr %75, align 1
  %78 = add i8 %77, -48
  %or.cond183 = icmp ult i8 %78, 10
  br i1 %or.cond183, label %79, label %.loopexit326, !prof !45

79:                                               ; preds = %74
  %80 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %76, i64 10)
  %81 = extractvalue { i64, i1 } %80, 1
  br i1 %81, label %.loopexit326, label %82

82:                                               ; preds = %79
  %83 = extractvalue { i64, i1 } %80, 0
  %84 = zext nneg i8 %78 to i64
  %85 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %83, i64 %84)
  %86 = extractvalue { i64, i1 } %85, 1
  br i1 %86, label %.loopexit326, label %87, !prof !42

87:                                               ; preds = %82
  %88 = extractvalue { i64, i1 } %85, 0
  %89 = getelementptr inbounds nuw i8, ptr %75, i64 1
  %90 = icmp eq ptr %89, %73
  br i1 %90, label %.loopexit326, label %74

91:                                               ; preds = %22
  %92 = and i64 %9, 1152921504606846976
  %.not244 = icmp eq i64 %92, 0
  br i1 %.not244, label %103, label %100, !prof !42

.thread309:                                       ; preds = %158, %153, %150, %145, %132, %127, %124, %119, %179, %174, %171, %166, %162, %140, %138, %114, %.loopexit326
  %.sroa.6.1313 = phi i8 [ 0, %162 ], [ 1, %140 ], [ 1, %138 ], [ 1, %114 ], [ %28, %.loopexit326 ], [ 1, %119 ], [ 1, %166 ], [ 1, %171 ], [ 1, %174 ], [ 0, %179 ], [ 1, %124 ], [ 1, %127 ], [ 0, %132 ], [ 1, %150 ], [ 1, %153 ], [ 0, %158 ], [ 1, %145 ]
  %.sroa.0.1312 = phi i64 [ 0, %162 ], [ 0, %140 ], [ 0, %138 ], [ 0, %114 ], [ %27, %.loopexit326 ], [ 0, %119 ], [ 0, %166 ], [ 0, %171 ], [ 0, %174 ], [ %180, %179 ], [ 0, %124 ], [ 0, %127 ], [ %133, %132 ], [ 0, %150 ], [ 0, %153 ], [ %159, %158 ], [ 0, %145 ]
  call void @swift_bridgeObjectRelease(ptr %10) #2
  br label %96

.thread:                                          ; preds = %20
  %93 = tail call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSS_SiTg5"(i64 %9, ptr %10, i64 10)
  tail call void @swift_bridgeObjectRelease(ptr %10) #2
  %94 = extractvalue { i64, i8 } %93, 0
  %95 = extractvalue { i64, i8 } %93, 1
  br label %96

96:                                               ; preds = %.thread, %.thread309
  %97 = phi i64 [ %94, %.thread ], [ %.sroa.0.1312, %.thread309 ]
  %98 = phi i8 [ %95, %.thread ], [ %.sroa.6.1313, %.thread309 ]
  %99 = icmp eq i8 %98, 1
  br i1 %99, label %odessy.chk1, label %183

100:                                              ; preds = %91
  %101 = and i64 %12, 1152921504606846975
  %102 = add nuw nsw i64 %101, 32
  br label %107

103:                                              ; preds = %91
  %104 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %9, ptr %10)
  %105 = extractvalue { i64, i64 } %104, 0
  %106 = extractvalue { i64, i64 } %104, 1
  br label %107

107:                                              ; preds = %103, %100
  %108 = phi i64 [ %105, %103 ], [ %102, %100 ]
  %109 = phi i64 [ %106, %103 ], [ %14, %100 ]
  %110 = inttoptr i64 %108 to ptr
  %111 = load i8, ptr %110, align 1
  switch i8 %111, label %140 [
    i8 45, label %112
    i8 43, label %136
  ]

112:                                              ; preds = %107
  %113 = icmp slt i64 %109, 1
  br i1 %113, label %odessy.chk75, label %114, !prof !42

114:                                              ; preds = %112
  %115 = icmp eq i64 %109, 1
  br i1 %115, label %.thread309, label %116, !prof !42

116:                                              ; preds = %114
  %117 = getelementptr inbounds nuw i8, ptr %110, i64 1
  %118 = getelementptr i8, ptr %110, i64 %109
  br label %119

119:                                              ; preds = %132, %116
  %120 = phi ptr [ %117, %116 ], [ %134, %132 ]
  %121 = phi i64 [ 0, %116 ], [ %133, %132 ]
  %122 = load i8, ptr %120, align 1
  %123 = add i8 %122, -48
  %or.cond184 = icmp ult i8 %123, 10
  br i1 %or.cond184, label %124, label %.thread309, !prof !45

124:                                              ; preds = %119
  %125 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %121, i64 10)
  %126 = extractvalue { i64, i1 } %125, 1
  br i1 %126, label %.thread309, label %127

127:                                              ; preds = %124
  %128 = extractvalue { i64, i1 } %125, 0
  %129 = zext nneg i8 %123 to i64
  %130 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %128, i64 %129)
  %131 = extractvalue { i64, i1 } %130, 1
  br i1 %131, label %.thread309, label %132, !prof !42

132:                                              ; preds = %127
  %133 = extractvalue { i64, i1 } %130, 0
  %134 = getelementptr inbounds nuw i8, ptr %120, i64 1
  %135 = icmp eq ptr %134, %118
  br i1 %135, label %.thread309, label %119

136:                                              ; preds = %107
  %137 = icmp slt i64 %109, 1
  br i1 %137, label %odessy.chk74, label %138, !prof !42

138:                                              ; preds = %136
  %139 = icmp eq i64 %109, 1
  br i1 %139, label %.thread309, label %142, !prof !42

140:                                              ; preds = %107
  %141 = icmp eq i64 %109, 0
  br i1 %141, label %.thread309, label %162, !prof !42

142:                                              ; preds = %138
  %143 = getelementptr inbounds nuw i8, ptr %110, i64 1
  %144 = getelementptr i8, ptr %110, i64 %109
  br label %145

145:                                              ; preds = %158, %142
  %146 = phi ptr [ %143, %142 ], [ %160, %158 ]
  %147 = phi i64 [ 0, %142 ], [ %159, %158 ]
  %148 = load i8, ptr %146, align 1
  %149 = add i8 %148, -48
  %or.cond185 = icmp ult i8 %149, 10
  br i1 %or.cond185, label %150, label %.thread309, !prof !45

150:                                              ; preds = %145
  %151 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %147, i64 10)
  %152 = extractvalue { i64, i1 } %151, 1
  br i1 %152, label %.thread309, label %153

153:                                              ; preds = %150
  %154 = extractvalue { i64, i1 } %151, 0
  %155 = zext nneg i8 %149 to i64
  %156 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155)
  %157 = extractvalue { i64, i1 } %156, 1
  br i1 %157, label %.thread309, label %158, !prof !42

158:                                              ; preds = %153
  %159 = extractvalue { i64, i1 } %156, 0
  %160 = getelementptr inbounds nuw i8, ptr %146, i64 1
  %161 = icmp eq ptr %160, %144
  br i1 %161, label %.thread309, label %145

162:                                              ; preds = %140
  %163 = icmp eq i64 %108, 0
  br i1 %163, label %.thread309, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds i8, ptr %110, i64 %109
  br label %166

166:                                              ; preds = %179, %164
  %167 = phi ptr [ %110, %164 ], [ %181, %179 ]
  %168 = phi i64 [ 0, %164 ], [ %180, %179 ]
  %169 = load i8, ptr %167, align 1
  %170 = add i8 %169, -48
  %or.cond186 = icmp ult i8 %170, 10
  br i1 %or.cond186, label %171, label %.thread309, !prof !45

171:                                              ; preds = %166
  %172 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %168, i64 10)
  %173 = extractvalue { i64, i1 } %172, 1
  br i1 %173, label %.thread309, label %174

174:                                              ; preds = %171
  %175 = extractvalue { i64, i1 } %172, 0
  %176 = zext nneg i8 %170 to i64
  %177 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %175, i64 %176)
  %178 = extractvalue { i64, i1 } %177, 1
  br i1 %178, label %.thread309, label %179, !prof !42

179:                                              ; preds = %174
  %180 = extractvalue { i64, i1 } %177, 0
  %181 = getelementptr inbounds nuw i8, ptr %167, i64 1
  %182 = icmp eq ptr %181, %165
  br i1 %182, label %.thread309, label %166

183:                                              ; preds = %96
  store i64 %97, ptr @"$s5nbody5stepsSivp", align 8
  store i64 5, ptr @"$s5nbody1nSivp", align 8
  %184 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZ"(i64 5, ptr nonnull @"$sSdN")
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 16
  store i64 5, ptr %185, align 8
  %186 = getelementptr i8, ptr %184, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %186, i8 0, i64 40, i1 false)
  store ptr %184, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch, i64 0, ptr null) #2
  %187 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  store ptr %187, ptr @"$s5nbody2pySaySdGvp", align 8
  store ptr %187, ptr @"$s5nbody2pzSaySdGvp", align 8
  store ptr %187, ptr @"$s5nbody2vxSaySdGvp", align 8
  store ptr %187, ptr @"$s5nbody2vySaySdGvp", align 8
  store ptr %187, ptr @"$s5nbody2vzSaySdGvp", align 8
  store ptr %187, ptr @"$s5nbody4massSaySdGvp", align 8
  store double 0x400921FB54442D18, ptr @"$s5nbody2piSdvp", align 8
  store double 0x4043BD3CC9BE45DE, ptr @"$s5nbody5solarSdvp", align 8
  store double 3.652400e+02, ptr @"$s5nbody3dpySdvp", align 8
  store ptr @mainTv4_r, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %188 = load i64, ptr @"$s5nbody1nSivp", align 8
  %189 = icmp slt i64 %188, 0
  %190 = call ptr @swift_bridgeObjectRetain_n(ptr %187, i32 2)
  br i1 %189, label %odessy.chk2, label %191, !prof !42

191:                                              ; preds = %183
  %192 = icmp eq i64 %188, 0
  br i1 %192, label %.thread370, label %193

193:                                              ; preds = %191
  %194 = call ptr @swift_bridgeObjectRetain_n(ptr %187, i32 4)
  br label %263

.thread370:                                       ; preds = %191
  store double 0.000000e+00, ptr @"$s5nbody3mpxSdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpySdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpzSdvp", align 8
  %195 = call ptr @swift_bridgeObjectRetain_n(ptr %187, i32 4)
  br label %443

.loopexit319:                                     ; preds = %438
  %.pre = load i64, ptr @"$s5nbody1nSivp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpxSdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpySdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpzSdvp", align 8
  %196 = icmp slt i64 %.pre, 0
  br i1 %196, label %odessy.chk24, label %197, !prof !46

197:                                              ; preds = %.loopexit319
  %198 = icmp eq i64 %.pre, 0
  br i1 %198, label %443, label %199

199:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch49)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch49, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch50)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody3mpxSdvp", ptr nonnull %access-scratch50, i64 1, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch51)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch51, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch52)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody3mpySdvp", ptr nonnull %access-scratch52, i64 1, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch53)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch53, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch54)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody3mpzSdvp", ptr nonnull %access-scratch54, i64 1, ptr null) #2
  %200 = load double, ptr @"$s5nbody3mpxSdvp", align 8
  %201 = load double, ptr @"$s5nbody3mpySdvp", align 8
  %202 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %203 = getelementptr inbounds nuw i8, ptr %202, i64 32
  %204 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 32
  %206 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %207 = getelementptr inbounds nuw i8, ptr %206, i64 32
  %208 = getelementptr inbounds nuw i8, ptr %202, i64 16
  %209 = getelementptr inbounds nuw i8, ptr %204, i64 16
  %210 = getelementptr inbounds nuw i8, ptr %206, i64 16
  %211 = load i64, ptr %208, align 8, !range !41
  %212 = load i64, ptr %209, align 8, !range !41
  %213 = freeze i64 %212
  %214 = load i64, ptr %210, align 8, !range !41
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch58)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch58, i64 0, ptr null) #2
  %215 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %216 = getelementptr inbounds nuw i8, ptr %215, i64 32
  %217 = getelementptr inbounds nuw i8, ptr %215, i64 16
  %218 = load i64, ptr %217, align 8, !range !41
  %219 = freeze i64 %218
  %220 = add nsw i64 %.pre, -1
  %umin = call i64 @llvm.umin.i64(i64 %214, i64 %220)
  %221 = freeze i64 %umin
  %umin360 = call i64 @llvm.umin.i64(i64 %221, i64 %213)
  %umin361 = call i64 @llvm.umin.i64(i64 %umin360, i64 %219)
  %umin362 = call i64 @llvm.umin.i64(i64 %umin361, i64 %211)
  %.not364.not = icmp ugt i64 %211, %umin361
  %.not366 = icmp eq i64 %213, %umin362
  %.not367 = icmp eq i64 %214, %umin362
  br i1 %.not364.not, label %.split, label %odessy.chk25, !prof !43

.split:                                           ; preds = %199
  %.not365 = icmp eq i64 %219, %umin362
  br i1 %.not365, label %odessy.chk26, label %.split.split, !prof !42

.split.split:                                     ; preds = %.split
  br i1 %.not366, label %odessy.chk27, label %.split.split.split, !prof !42

.split.split.split:                               ; preds = %.split.split
  br i1 %.not367, label %odessy.chk28, label %.split.split.split.split.preheader, !prof !42

.split.split.split.split.preheader:               ; preds = %.split.split.split
  %min.iters.check = icmp samesign ult i64 %.pre, 8
  br i1 %min.iters.check, label %.split.split.split.split.preheader168, label %vector.ph

.split.split.split.split.preheader168:            ; preds = %middle.block, %.split.split.split.split.preheader
  %.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.split.split.split.split.preheader ]
  %.ph169 = phi double [ %253, %middle.block ], [ %200, %.split.split.split.split.preheader ]
  %.ph170 = phi double [ %257, %middle.block ], [ %201, %.split.split.split.split.preheader ]
  %.ph171 = phi double [ %261, %middle.block ], [ 0.000000e+00, %.split.split.split.split.preheader ]
  br label %.split.split.split.split

vector.ph:                                        ; preds = %.split.split.split.split.preheader
  %n.vec = and i64 %.pre, 9223372036854775800
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi double [ %200, %vector.ph ], [ %253, %vector.body ]
  %vec.phi405 = phi double [ %201, %vector.ph ], [ %257, %vector.body ]
  %vec.phi406 = phi double [ 0.000000e+00, %vector.ph ], [ %261, %vector.body ]
  %222 = getelementptr inbounds nuw [8 x i8], ptr %203, i64 %index
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 16
  %224 = getelementptr inbounds nuw i8, ptr %222, i64 32
  %225 = getelementptr inbounds nuw i8, ptr %222, i64 48
  %wide.load = load <2 x double>, ptr %222, align 8
  %wide.load407 = load <2 x double>, ptr %223, align 8
  %wide.load408 = load <2 x double>, ptr %224, align 8
  %wide.load409 = load <2 x double>, ptr %225, align 8
  %226 = getelementptr inbounds nuw [8 x i8], ptr %216, i64 %index
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 16
  %228 = getelementptr inbounds nuw i8, ptr %226, i64 32
  %229 = getelementptr inbounds nuw i8, ptr %226, i64 48
  %wide.load410 = load <2 x double>, ptr %226, align 8
  %wide.load411 = load <2 x double>, ptr %227, align 8
  %wide.load412 = load <2 x double>, ptr %228, align 8
  %wide.load413 = load <2 x double>, ptr %229, align 8
  %230 = fmul <2 x double> %wide.load, %wide.load410
  %231 = fmul <2 x double> %wide.load407, %wide.load411
  %232 = fmul <2 x double> %wide.load408, %wide.load412
  %233 = fmul <2 x double> %wide.load409, %wide.load413
  %234 = getelementptr inbounds nuw [8 x i8], ptr %205, i64 %index
  %235 = getelementptr inbounds nuw i8, ptr %234, i64 16
  %236 = getelementptr inbounds nuw i8, ptr %234, i64 32
  %237 = getelementptr inbounds nuw i8, ptr %234, i64 48
  %wide.load414 = load <2 x double>, ptr %234, align 8
  %wide.load415 = load <2 x double>, ptr %235, align 8
  %wide.load416 = load <2 x double>, ptr %236, align 8
  %wide.load417 = load <2 x double>, ptr %237, align 8
  %238 = fmul <2 x double> %wide.load410, %wide.load414
  %239 = fmul <2 x double> %wide.load411, %wide.load415
  %240 = fmul <2 x double> %wide.load412, %wide.load416
  %241 = fmul <2 x double> %wide.load413, %wide.load417
  %242 = getelementptr inbounds nuw [8 x i8], ptr %207, i64 %index
  %243 = getelementptr inbounds nuw i8, ptr %242, i64 16
  %244 = getelementptr inbounds nuw i8, ptr %242, i64 32
  %245 = getelementptr inbounds nuw i8, ptr %242, i64 48
  %wide.load418 = load <2 x double>, ptr %242, align 8
  %wide.load419 = load <2 x double>, ptr %243, align 8
  %wide.load420 = load <2 x double>, ptr %244, align 8
  %wide.load421 = load <2 x double>, ptr %245, align 8
  %246 = fmul <2 x double> %wide.load410, %wide.load418
  %247 = fmul <2 x double> %wide.load411, %wide.load419
  %248 = fmul <2 x double> %wide.load412, %wide.load420
  %249 = fmul <2 x double> %wide.load413, %wide.load421
  %250 = call double @llvm.vector.reduce.fadd.v2f64(double %vec.phi, <2 x double> %230)
  %251 = call double @llvm.vector.reduce.fadd.v2f64(double %250, <2 x double> %231)
  %252 = call double @llvm.vector.reduce.fadd.v2f64(double %251, <2 x double> %232)
  %253 = call double @llvm.vector.reduce.fadd.v2f64(double %252, <2 x double> %233)
  %254 = call double @llvm.vector.reduce.fadd.v2f64(double %vec.phi405, <2 x double> %238)
  %255 = call double @llvm.vector.reduce.fadd.v2f64(double %254, <2 x double> %239)
  %256 = call double @llvm.vector.reduce.fadd.v2f64(double %255, <2 x double> %240)
  %257 = call double @llvm.vector.reduce.fadd.v2f64(double %256, <2 x double> %241)
  %258 = call double @llvm.vector.reduce.fadd.v2f64(double %vec.phi406, <2 x double> %246)
  %259 = call double @llvm.vector.reduce.fadd.v2f64(double %258, <2 x double> %247)
  %260 = call double @llvm.vector.reduce.fadd.v2f64(double %259, <2 x double> %248)
  %261 = call double @llvm.vector.reduce.fadd.v2f64(double %260, <2 x double> %249)
  %index.next = add nuw nsw i64 %index, 8
  %262 = icmp eq i64 %index.next, %n.vec
  br i1 %262, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre, %n.vec
  br i1 %cmp.n, label %.loopexit424, label %.split.split.split.split.preheader168

263:                                              ; preds = %438, %193
  %264 = phi i64 [ 0, %193 ], [ %265, %438 ]
  %265 = add nuw nsw i64 %264, 1
  %266 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %267 = getelementptr inbounds nuw i8, ptr %266, i64 16
  %268 = load i64, ptr %267, align 8, !range !41
  %.not246 = icmp samesign ult i64 %264, %268
  br i1 %.not246, label %269, label %odessy.chk3, !prof !43

269:                                              ; preds = %263
  %270 = getelementptr inbounds nuw i8, ptr %266, i64 32
  %271 = getelementptr inbounds nuw [8 x i8], ptr %270, i64 %264
  %272 = load ptr, ptr %271, align 8
  %273 = getelementptr inbounds nuw i8, ptr %272, i64 16
  %274 = load i64, ptr %273, align 8, !range !41
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %odessy.chk4, label %276, !prof !42

276:                                              ; preds = %269
  %277 = getelementptr inbounds nuw i8, ptr %272, i64 32
  %278 = load double, ptr %277, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch4)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch4, i64 33, ptr null) #2
  %279 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %280 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %279) #15
  store ptr %279, ptr @"$s5nbody2pxSaySdGvp", align 8
  br i1 %280, label %283, label %281, !prof !43

281:                                              ; preds = %276
  %282 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %279)
  br label %283

283:                                              ; preds = %281, %276
  %284 = phi ptr [ %282, %281 ], [ %279, %276 ]
  %285 = getelementptr inbounds nuw i8, ptr %284, i64 16
  %286 = load i64, ptr %285, align 8, !range !41
  %.not247 = icmp samesign ult i64 %264, %286
  br i1 %.not247, label %287, label %odessy.chk5, !prof !43

287:                                              ; preds = %283
  %288 = getelementptr inbounds nuw i8, ptr %284, i64 32
  %289 = getelementptr inbounds nuw [8 x i8], ptr %288, i64 %264
  store double %278, ptr %289, align 8
  store ptr %284, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch4) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch4)
  %290 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 16
  %292 = load i64, ptr %291, align 8, !range !41
  %.not248 = icmp samesign ult i64 %264, %292
  br i1 %.not248, label %293, label %odessy.chk6, !prof !43

293:                                              ; preds = %287
  %294 = getelementptr inbounds nuw i8, ptr %290, i64 32
  %295 = getelementptr inbounds nuw [8 x i8], ptr %294, i64 %264
  %296 = load ptr, ptr %295, align 8
  %297 = getelementptr inbounds nuw i8, ptr %296, i64 16
  %298 = load i64, ptr %297, align 8, !range !41
  %299 = icmp samesign ult i64 %298, 2
  br i1 %299, label %odessy.chk7, label %300, !prof !42

300:                                              ; preds = %293
  %301 = getelementptr inbounds nuw i8, ptr %296, i64 40
  %302 = load double, ptr %301, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch11)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch11, i64 33, ptr null) #2
  %303 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %304 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %303) #15
  store ptr %303, ptr @"$s5nbody2pySaySdGvp", align 8
  br i1 %304, label %307, label %305, !prof !43

305:                                              ; preds = %300
  %306 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %303)
  br label %307

307:                                              ; preds = %305, %300
  %308 = phi ptr [ %306, %305 ], [ %303, %300 ]
  %309 = getelementptr inbounds nuw i8, ptr %308, i64 16
  %310 = load i64, ptr %309, align 8, !range !41
  %.not249 = icmp samesign ult i64 %264, %310
  br i1 %.not249, label %311, label %odessy.chk8, !prof !43

311:                                              ; preds = %307
  %312 = getelementptr inbounds nuw i8, ptr %308, i64 32
  %313 = getelementptr inbounds nuw [8 x i8], ptr %312, i64 %264
  store double %302, ptr %313, align 8
  store ptr %308, ptr @"$s5nbody2pySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch11) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch11)
  %314 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 16
  %316 = load i64, ptr %315, align 8, !range !41
  %.not250 = icmp samesign ult i64 %264, %316
  br i1 %.not250, label %317, label %odessy.chk9, !prof !43

317:                                              ; preds = %311
  %318 = getelementptr inbounds nuw i8, ptr %314, i64 32
  %319 = getelementptr inbounds nuw [8 x i8], ptr %318, i64 %264
  %320 = load ptr, ptr %319, align 8
  %321 = getelementptr inbounds nuw i8, ptr %320, i64 16
  %322 = load i64, ptr %321, align 8, !range !41
  %323 = icmp samesign ult i64 %322, 3
  br i1 %323, label %odessy.chk10, label %324, !prof !42

324:                                              ; preds = %317
  %325 = getelementptr inbounds nuw i8, ptr %320, i64 48
  %326 = load double, ptr %325, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch18)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch18, i64 33, ptr null) #2
  %327 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %328 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %327) #15
  store ptr %327, ptr @"$s5nbody2pzSaySdGvp", align 8
  br i1 %328, label %331, label %329, !prof !43

329:                                              ; preds = %324
  %330 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %327)
  br label %331

331:                                              ; preds = %329, %324
  %332 = phi ptr [ %330, %329 ], [ %327, %324 ]
  %333 = getelementptr inbounds nuw i8, ptr %332, i64 16
  %334 = load i64, ptr %333, align 8, !range !41
  %.not251 = icmp samesign ult i64 %264, %334
  br i1 %.not251, label %335, label %odessy.chk11, !prof !43

335:                                              ; preds = %331
  %336 = getelementptr inbounds nuw i8, ptr %332, i64 32
  %337 = getelementptr inbounds nuw [8 x i8], ptr %336, i64 %264
  store double %326, ptr %337, align 8
  store ptr %332, ptr @"$s5nbody2pzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch18) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch18)
  %338 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 16
  %340 = load i64, ptr %339, align 8, !range !41
  %.not252 = icmp samesign ult i64 %264, %340
  br i1 %.not252, label %341, label %odessy.chk12, !prof !43

341:                                              ; preds = %335
  %342 = getelementptr inbounds nuw i8, ptr %338, i64 32
  %343 = getelementptr inbounds nuw [8 x i8], ptr %342, i64 %264
  %344 = load ptr, ptr %343, align 8
  %345 = getelementptr inbounds nuw i8, ptr %344, i64 16
  %346 = load i64, ptr %345, align 8, !range !41
  %347 = icmp samesign ult i64 %346, 4
  br i1 %347, label %odessy.chk13, label %348, !prof !42

348:                                              ; preds = %341
  %349 = getelementptr inbounds nuw i8, ptr %344, i64 56
  %350 = load double, ptr %349, align 8
  %351 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch25)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch25, i64 33, ptr null) #2
  %352 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %353 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %352) #15
  store ptr %352, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %353, label %356, label %354, !prof !43

354:                                              ; preds = %348
  %355 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %352)
  br label %356

356:                                              ; preds = %354, %348
  %357 = phi ptr [ %355, %354 ], [ %352, %348 ]
  %358 = getelementptr inbounds nuw i8, ptr %357, i64 16
  %359 = load i64, ptr %358, align 8, !range !41
  %.not253 = icmp samesign ult i64 %264, %359
  br i1 %.not253, label %360, label %odessy.chk14, !prof !43

360:                                              ; preds = %356
  %361 = fmul double %350, %351
  %362 = getelementptr inbounds nuw i8, ptr %357, i64 32
  %363 = getelementptr inbounds nuw [8 x i8], ptr %362, i64 %264
  store double %361, ptr %363, align 8
  store ptr %357, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch25) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch25)
  %364 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %365 = getelementptr inbounds nuw i8, ptr %364, i64 16
  %366 = load i64, ptr %365, align 8, !range !41
  %.not254 = icmp samesign ult i64 %264, %366
  br i1 %.not254, label %367, label %odessy.chk15, !prof !43

367:                                              ; preds = %360
  %368 = getelementptr inbounds nuw i8, ptr %364, i64 32
  %369 = getelementptr inbounds nuw [8 x i8], ptr %368, i64 %264
  %370 = load ptr, ptr %369, align 8
  %371 = getelementptr inbounds nuw i8, ptr %370, i64 16
  %372 = load i64, ptr %371, align 8, !range !41
  %373 = icmp samesign ult i64 %372, 5
  br i1 %373, label %odessy.chk16, label %374, !prof !42

374:                                              ; preds = %367
  %375 = getelementptr inbounds nuw i8, ptr %370, i64 64
  %376 = load double, ptr %375, align 8
  %377 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch32)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch32, i64 33, ptr null) #2
  %378 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %379 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %378) #15
  store ptr %378, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %379, label %382, label %380, !prof !43

380:                                              ; preds = %374
  %381 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %378)
  br label %382

382:                                              ; preds = %380, %374
  %383 = phi ptr [ %381, %380 ], [ %378, %374 ]
  %384 = getelementptr inbounds nuw i8, ptr %383, i64 16
  %385 = load i64, ptr %384, align 8, !range !41
  %.not255 = icmp samesign ult i64 %264, %385
  br i1 %.not255, label %386, label %odessy.chk17, !prof !43

386:                                              ; preds = %382
  %387 = fmul double %376, %377
  %388 = getelementptr inbounds nuw i8, ptr %383, i64 32
  %389 = getelementptr inbounds nuw [8 x i8], ptr %388, i64 %264
  store double %387, ptr %389, align 8
  store ptr %383, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch32) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch32)
  %390 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 16
  %392 = load i64, ptr %391, align 8, !range !41
  %.not256 = icmp samesign ult i64 %264, %392
  br i1 %.not256, label %393, label %odessy.chk18, !prof !43

393:                                              ; preds = %386
  %394 = getelementptr inbounds nuw i8, ptr %390, i64 32
  %395 = getelementptr inbounds nuw [8 x i8], ptr %394, i64 %264
  %396 = load ptr, ptr %395, align 8
  %397 = getelementptr inbounds nuw i8, ptr %396, i64 16
  %398 = load i64, ptr %397, align 8, !range !41
  %399 = icmp samesign ult i64 %398, 6
  br i1 %399, label %odessy.chk19, label %400, !prof !42

400:                                              ; preds = %393
  %401 = getelementptr inbounds nuw i8, ptr %396, i64 72
  %402 = load double, ptr %401, align 8
  %403 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch39)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch39, i64 33, ptr null) #2
  %404 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %405 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %404) #15
  store ptr %404, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %405, label %408, label %406, !prof !43

406:                                              ; preds = %400
  %407 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %404)
  br label %408

408:                                              ; preds = %406, %400
  %409 = phi ptr [ %407, %406 ], [ %404, %400 ]
  %410 = getelementptr inbounds nuw i8, ptr %409, i64 16
  %411 = load i64, ptr %410, align 8, !range !41
  %.not257 = icmp samesign ult i64 %264, %411
  br i1 %.not257, label %412, label %odessy.chk20, !prof !43

412:                                              ; preds = %408
  %413 = fmul double %402, %403
  %414 = getelementptr inbounds nuw i8, ptr %409, i64 32
  %415 = getelementptr inbounds nuw [8 x i8], ptr %414, i64 %264
  store double %413, ptr %415, align 8
  store ptr %409, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch39) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch39)
  %416 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 16
  %418 = load i64, ptr %417, align 8, !range !41
  %.not258 = icmp samesign ult i64 %264, %418
  br i1 %.not258, label %419, label %odessy.chk21, !prof !43

419:                                              ; preds = %412
  %420 = getelementptr inbounds nuw i8, ptr %416, i64 32
  %421 = getelementptr inbounds nuw [8 x i8], ptr %420, i64 %264
  %422 = load ptr, ptr %421, align 8
  %423 = getelementptr inbounds nuw i8, ptr %422, i64 16
  %424 = load i64, ptr %423, align 8, !range !41
  %425 = icmp samesign ult i64 %424, 7
  br i1 %425, label %odessy.chk22, label %426, !prof !42

426:                                              ; preds = %419
  %427 = getelementptr inbounds nuw i8, ptr %422, i64 80
  %428 = load double, ptr %427, align 8
  %429 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch46)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch46, i64 33, ptr null) #2
  %430 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %431 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %430) #15
  store ptr %430, ptr @"$s5nbody4massSaySdGvp", align 8
  br i1 %431, label %434, label %432, !prof !43

432:                                              ; preds = %426
  %433 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %430)
  br label %434

434:                                              ; preds = %432, %426
  %435 = phi ptr [ %433, %432 ], [ %430, %426 ]
  %436 = getelementptr inbounds nuw i8, ptr %435, i64 16
  %437 = load i64, ptr %436, align 8, !range !41
  %.not259 = icmp samesign ult i64 %264, %437
  br i1 %.not259, label %438, label %odessy.chk23, !prof !43

438:                                              ; preds = %434
  %439 = fmul double %428, %429
  %440 = getelementptr inbounds nuw i8, ptr %435, i64 32
  %441 = getelementptr inbounds nuw [8 x i8], ptr %440, i64 %264
  store double %439, ptr %441, align 8
  store ptr %435, ptr @"$s5nbody4massSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch46) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch46)
  %442 = icmp eq i64 %265, %188
  br i1 %442, label %.loopexit319, label %263

443:                                              ; preds = %.loopexit424, %197, %.thread370
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch64)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody3mpxSdvp", ptr nonnull %access-scratch64, i64 0, ptr null) #2
  %444 = load double, ptr @"$s5nbody3mpxSdvp", align 8
  %445 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch65)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch65, i64 33, ptr null) #2
  %446 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %447 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %446) #15
  store ptr %446, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %447, label %450, label %448, !prof !43

448:                                              ; preds = %443
  %449 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %446)
  br label %450

450:                                              ; preds = %448, %443
  %451 = phi ptr [ %449, %448 ], [ %446, %443 ]
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 16
  %453 = load i64, ptr %452, align 8, !range !41
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %odessy.chk29, label %455, !prof !42

455:                                              ; preds = %450
  %456 = fneg double %444
  %457 = fdiv double %456, %445
  %458 = getelementptr inbounds nuw i8, ptr %451, i64 32
  store double %457, ptr %458, align 8
  store ptr %451, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch65) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch65)
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch68)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody3mpySdvp", ptr nonnull %access-scratch68, i64 0, ptr null) #2
  %459 = load double, ptr @"$s5nbody3mpySdvp", align 8
  %460 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch69)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch69, i64 33, ptr null) #2
  %461 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %462 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %461) #15
  store ptr %461, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %462, label %465, label %463, !prof !43

463:                                              ; preds = %455
  %464 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %461)
  br label %465

465:                                              ; preds = %463, %455
  %466 = phi ptr [ %464, %463 ], [ %461, %455 ]
  %467 = getelementptr inbounds nuw i8, ptr %466, i64 16
  %468 = load i64, ptr %467, align 8, !range !41
  %469 = icmp eq i64 %468, 0
  br i1 %469, label %odessy.chk30, label %470, !prof !42

470:                                              ; preds = %465
  %471 = fneg double %459
  %472 = fdiv double %471, %460
  %473 = getelementptr inbounds nuw i8, ptr %466, i64 32
  store double %472, ptr %473, align 8
  store ptr %466, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch69) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch69)
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch72)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody3mpzSdvp", ptr nonnull %access-scratch72, i64 0, ptr null) #2
  %474 = load double, ptr @"$s5nbody3mpzSdvp", align 8
  %475 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch73)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch73, i64 33, ptr null) #2
  %476 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %477 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %476) #15
  store ptr %476, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %477, label %480, label %478, !prof !43

478:                                              ; preds = %470
  %479 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %476)
  br label %480

480:                                              ; preds = %478, %470
  %481 = phi ptr [ %479, %478 ], [ %476, %470 ]
  %482 = getelementptr inbounds nuw i8, ptr %481, i64 16
  %483 = load i64, ptr %482, align 8, !range !41
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %odessy.chk31, label %485, !prof !42

485:                                              ; preds = %480
  %486 = fneg double %474
  %487 = fdiv double %486, %475
  %488 = getelementptr inbounds nuw i8, ptr %481, i64 32
  store double %487, ptr %488, align 8
  store ptr %481, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch73) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch73)
  store double 1.000000e-02, ptr @"$s5nbody2dtSdvp", align 8
  %489 = load i64, ptr @"$s5nbody5stepsSivp", align 8
  %490 = icmp slt i64 %489, 0
  br i1 %490, label %odessy.chk32, label %491, !prof !42

491:                                              ; preds = %485
  %492 = icmp eq i64 %489, 0
  br i1 %492, label %.loopexit318, label %.preheader317.preheader

.split.split.split.split:                         ; preds = %.split.split.split.split.preheader168, %.split.split.split.split
  %493 = phi i64 [ %497, %.split.split.split.split ], [ %.ph, %.split.split.split.split.preheader168 ]
  %494 = phi double [ %503, %.split.split.split.split ], [ %.ph169, %.split.split.split.split.preheader168 ]
  %495 = phi double [ %507, %.split.split.split.split ], [ %.ph170, %.split.split.split.split.preheader168 ]
  %496 = phi double [ %511, %.split.split.split.split ], [ %.ph171, %.split.split.split.split.preheader168 ]
  %497 = add nuw nsw i64 %493, 1
  %498 = getelementptr inbounds nuw [8 x i8], ptr %203, i64 %493
  %499 = load double, ptr %498, align 8
  %500 = getelementptr inbounds nuw [8 x i8], ptr %216, i64 %493
  %501 = load double, ptr %500, align 8
  %502 = fmul double %499, %501
  %503 = fadd double %494, %502
  %504 = getelementptr inbounds nuw [8 x i8], ptr %205, i64 %493
  %505 = load double, ptr %504, align 8
  %506 = fmul double %501, %505
  %507 = fadd double %495, %506
  %508 = getelementptr inbounds nuw [8 x i8], ptr %207, i64 %493
  %509 = load double, ptr %508, align 8
  %510 = fmul double %501, %509
  %511 = fadd double %496, %510
  %512 = icmp eq i64 %497, %.pre
  br i1 %512, label %.loopexit424, label %.split.split.split.split, !llvm.loop !50

.loopexit424:                                     ; preds = %.split.split.split.split, %middle.block
  %.lcssa404 = phi double [ %253, %middle.block ], [ %503, %.split.split.split.split ]
  %.lcssa403 = phi double [ %257, %middle.block ], [ %507, %.split.split.split.split ]
  %.lcssa402 = phi double [ %261, %middle.block ], [ %511, %.split.split.split.split ]
  store double %.lcssa402, ptr @"$s5nbody3mpzSdvp", align 8
  store double %.lcssa403, ptr @"$s5nbody3mpySdvp", align 8
  store double %.lcssa404, ptr @"$s5nbody3mpxSdvp", align 8
  br label %443

.preheader317.preheader:                          ; preds = %491, %.thread308
  %513 = phi i64 [ %514, %.thread308 ], [ 0, %491 ]
  %514 = add nuw nsw i64 %513, 1
  %515 = load i64, ptr @"$s5nbody1nSivp", align 8
  %516 = icmp slt i64 %515, 0
  br i1 %516, label %odessy.chk33, label %517, !prof !42

517:                                              ; preds = %.preheader317.preheader
  %518 = icmp eq i64 %515, 0
  br i1 %518, label %.thread308, label %.preheader316.preheader

.loopexit318:                                     ; preds = %.thread308, %491
  store double 0.000000e+00, ptr @"$s5nbody1eSdvp", align 8
  %519 = load i64, ptr @"$s5nbody1nSivp", align 8
  %520 = icmp slt i64 %519, 0
  br i1 %520, label %odessy.chk60, label %521, !prof !42

521:                                              ; preds = %.loopexit318
  %522 = icmp eq i64 %519, 0
  br i1 %522, label %.loopexit314, label %523

523:                                              ; preds = %521
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch142)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch142, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch143)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody1eSdvp", ptr nonnull %access-scratch143, i64 1, ptr null) #2
  %.pre84 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  br label %798

524:                                              ; preds = %.loopexit315
  %.pr = load i64, ptr @"$s5nbody1nSivp", align 8
  %525 = icmp slt i64 %.pr, 0
  br i1 %525, label %odessy.chk53, label %526, !prof !51

526:                                              ; preds = %524
  %527 = icmp eq i64 %.pr, 0
  br i1 %527, label %.thread308, label %.preheader

.preheader316.preheader:                          ; preds = %517, %.loopexit315
  %528 = phi i64 [ %529, %.loopexit315 ], [ 0, %517 ]
  %529 = add nuw nsw i64 %528, 1
  %530 = load i64, ptr @"$s5nbody1nSivp", align 8
  %.not368 = icmp sgt i64 %530, %528
  br i1 %.not368, label %531, label %odessy.chk34, !prof !43

531:                                              ; preds = %.preheader316.preheader
  %532 = icmp eq i64 %529, %530
  br i1 %532, label %.loopexit315, label %533

533:                                              ; preds = %531
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch76)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch76, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch77)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch77, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch78)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch78, i64 0, ptr null) #2
  br label %535

.loopexit315:                                     ; preds = %705, %531
  %534 = icmp eq i64 %529, %515
  br i1 %534, label %524, label %.preheader316.preheader

535:                                              ; preds = %705, %533
  %536 = phi i64 [ %529, %533 ], [ %537, %705 ]
  %537 = add nuw i64 %536, 1
  %538 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %539 = getelementptr inbounds nuw i8, ptr %538, i64 16
  %540 = load i64, ptr %539, align 8, !range !41
  %.not267 = icmp samesign ult i64 %528, %540
  br i1 %.not267, label %541, label %odessy.chk35, !prof !43

541:                                              ; preds = %535
  %.not268 = icmp samesign ult i64 %536, %540
  br i1 %.not268, label %542, label %odessy.chk36, !prof !43

542:                                              ; preds = %541
  %543 = getelementptr inbounds nuw i8, ptr %538, i64 32
  %544 = getelementptr inbounds nuw [8 x i8], ptr %543, i64 %528
  %545 = load double, ptr %544, align 8
  %546 = getelementptr inbounds nuw [8 x i8], ptr %543, i64 %536
  %547 = load double, ptr %546, align 8
  %548 = fsub double %545, %547
  %549 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %550 = getelementptr inbounds nuw i8, ptr %549, i64 16
  %551 = load i64, ptr %550, align 8, !range !41
  %.not269 = icmp samesign ult i64 %528, %551
  br i1 %.not269, label %552, label %odessy.chk37, !prof !43

552:                                              ; preds = %542
  %.not270 = icmp samesign ult i64 %536, %551
  br i1 %.not270, label %553, label %odessy.chk38, !prof !43

553:                                              ; preds = %552
  %554 = getelementptr inbounds nuw i8, ptr %549, i64 32
  %555 = getelementptr inbounds nuw [8 x i8], ptr %554, i64 %528
  %556 = load double, ptr %555, align 8
  %557 = getelementptr inbounds nuw [8 x i8], ptr %554, i64 %536
  %558 = load double, ptr %557, align 8
  %559 = fsub double %556, %558
  %560 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 16
  %562 = load i64, ptr %561, align 8, !range !41
  %.not271 = icmp samesign ult i64 %528, %562
  br i1 %.not271, label %563, label %odessy.chk39, !prof !43

563:                                              ; preds = %553
  %.not272 = icmp samesign ult i64 %536, %562
  br i1 %.not272, label %564, label %odessy.chk40, !prof !43

564:                                              ; preds = %563
  %565 = getelementptr inbounds nuw i8, ptr %560, i64 32
  %566 = getelementptr inbounds nuw [8 x i8], ptr %565, i64 %528
  %567 = load double, ptr %566, align 8
  %568 = getelementptr inbounds nuw [8 x i8], ptr %565, i64 %536
  %569 = load double, ptr %568, align 8
  %570 = fsub double %567, %569
  %571 = fmul double %548, %548
  %572 = fmul double %559, %559
  %573 = fadd double %571, %572
  %574 = fmul double %570, %570
  %575 = fadd double %573, %574
  %576 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %577 = call double @llvm.sqrt.f64(double %575)
  %578 = fmul double %575, %577
  %579 = fdiv double %576, %578
  %580 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %581 = getelementptr inbounds nuw i8, ptr %580, i64 16
  %582 = load i64, ptr %581, align 8, !range !41
  %.not273 = icmp samesign ult i64 %536, %582
  br i1 %.not273, label %583, label %odessy.chk41, !prof !43

583:                                              ; preds = %564
  %584 = getelementptr inbounds nuw i8, ptr %580, i64 32
  %585 = getelementptr inbounds nuw [8 x i8], ptr %584, i64 %536
  %586 = load double, ptr %585, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch90)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch90, i64 33, ptr null) #2
  %587 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %588 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %587) #15
  store ptr %587, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %588, label %591, label %589, !prof !43

589:                                              ; preds = %583
  %590 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %587)
  br label %591

591:                                              ; preds = %589, %583
  %592 = phi ptr [ %590, %589 ], [ %587, %583 ]
  %593 = getelementptr inbounds nuw i8, ptr %592, i64 16
  %594 = load i64, ptr %593, align 8, !range !41
  %.not274 = icmp samesign ult i64 %528, %594
  br i1 %.not274, label %595, label %odessy.chk42, !prof !43

595:                                              ; preds = %591
  %596 = fmul double %548, %586
  %597 = fmul double %579, %596
  %598 = getelementptr inbounds nuw i8, ptr %592, i64 32
  %599 = getelementptr inbounds nuw [8 x i8], ptr %598, i64 %528
  %600 = load double, ptr %599, align 8
  %601 = fsub double %600, %597
  store double %601, ptr %599, align 8
  store ptr %592, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch90) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch90)
  %602 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %603 = getelementptr inbounds nuw i8, ptr %602, i64 16
  %604 = load i64, ptr %603, align 8, !range !41
  %.not275 = icmp samesign ult i64 %536, %604
  br i1 %.not275, label %605, label %odessy.chk43, !prof !43

605:                                              ; preds = %595
  %606 = getelementptr inbounds nuw i8, ptr %602, i64 32
  %607 = getelementptr inbounds nuw [8 x i8], ptr %606, i64 %536
  %608 = load double, ptr %607, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch96)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch96, i64 33, ptr null) #2
  %609 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %610 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %609) #15
  store ptr %609, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %610, label %613, label %611, !prof !43

611:                                              ; preds = %605
  %612 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %609)
  br label %613

613:                                              ; preds = %611, %605
  %614 = phi ptr [ %612, %611 ], [ %609, %605 ]
  %615 = getelementptr inbounds nuw i8, ptr %614, i64 16
  %616 = load i64, ptr %615, align 8, !range !41
  %.not276 = icmp samesign ult i64 %528, %616
  br i1 %.not276, label %617, label %odessy.chk44, !prof !43

617:                                              ; preds = %613
  %618 = fmul double %559, %608
  %619 = fmul double %579, %618
  %620 = getelementptr inbounds nuw i8, ptr %614, i64 32
  %621 = getelementptr inbounds nuw [8 x i8], ptr %620, i64 %528
  %622 = load double, ptr %621, align 8
  %623 = fsub double %622, %619
  store double %623, ptr %621, align 8
  store ptr %614, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch96) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch96)
  %624 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %625 = getelementptr inbounds nuw i8, ptr %624, i64 16
  %626 = load i64, ptr %625, align 8, !range !41
  %.not277 = icmp samesign ult i64 %536, %626
  br i1 %.not277, label %627, label %odessy.chk45, !prof !43

627:                                              ; preds = %617
  %628 = getelementptr inbounds nuw i8, ptr %624, i64 32
  %629 = getelementptr inbounds nuw [8 x i8], ptr %628, i64 %536
  %630 = load double, ptr %629, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch102)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch102, i64 33, ptr null) #2
  %631 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %632 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %631) #15
  store ptr %631, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %632, label %635, label %633, !prof !43

633:                                              ; preds = %627
  %634 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %631)
  br label %635

635:                                              ; preds = %633, %627
  %636 = phi ptr [ %634, %633 ], [ %631, %627 ]
  %637 = getelementptr inbounds nuw i8, ptr %636, i64 16
  %638 = load i64, ptr %637, align 8, !range !41
  %.not278 = icmp samesign ult i64 %528, %638
  br i1 %.not278, label %639, label %odessy.chk46, !prof !43

639:                                              ; preds = %635
  %640 = fmul double %570, %630
  %641 = fmul double %579, %640
  %642 = getelementptr inbounds nuw i8, ptr %636, i64 32
  %643 = getelementptr inbounds nuw [8 x i8], ptr %642, i64 %528
  %644 = load double, ptr %643, align 8
  %645 = fsub double %644, %641
  store double %645, ptr %643, align 8
  store ptr %636, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch102) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch102)
  %646 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 16
  %648 = load i64, ptr %647, align 8, !range !41
  %.not279 = icmp samesign ult i64 %528, %648
  br i1 %.not279, label %649, label %odessy.chk47, !prof !43

649:                                              ; preds = %639
  %650 = getelementptr inbounds nuw i8, ptr %646, i64 32
  %651 = getelementptr inbounds nuw [8 x i8], ptr %650, i64 %528
  %652 = load double, ptr %651, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch108)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch108, i64 33, ptr null) #2
  %653 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %654 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %653) #15
  store ptr %653, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %654, label %657, label %655, !prof !43

655:                                              ; preds = %649
  %656 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %653)
  br label %657

657:                                              ; preds = %655, %649
  %658 = phi ptr [ %656, %655 ], [ %653, %649 ]
  %659 = getelementptr inbounds nuw i8, ptr %658, i64 16
  %660 = load i64, ptr %659, align 8, !range !41
  %.not280 = icmp samesign ult i64 %536, %660
  br i1 %.not280, label %661, label %odessy.chk48, !prof !43

661:                                              ; preds = %657
  %662 = fmul double %548, %652
  %663 = fmul double %579, %662
  %664 = getelementptr inbounds nuw i8, ptr %658, i64 32
  %665 = getelementptr inbounds nuw [8 x i8], ptr %664, i64 %536
  %666 = load double, ptr %665, align 8
  %667 = fadd double %663, %666
  store double %667, ptr %665, align 8
  store ptr %658, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch108) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch108)
  %668 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %669 = getelementptr inbounds nuw i8, ptr %668, i64 16
  %670 = load i64, ptr %669, align 8, !range !41
  %.not281 = icmp samesign ult i64 %528, %670
  br i1 %.not281, label %671, label %odessy.chk49, !prof !43

671:                                              ; preds = %661
  %672 = getelementptr inbounds nuw i8, ptr %668, i64 32
  %673 = getelementptr inbounds nuw [8 x i8], ptr %672, i64 %528
  %674 = load double, ptr %673, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch114)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch114, i64 33, ptr null) #2
  %675 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %676 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %675) #15
  store ptr %675, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %676, label %679, label %677, !prof !43

677:                                              ; preds = %671
  %678 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %675)
  br label %679

679:                                              ; preds = %677, %671
  %680 = phi ptr [ %678, %677 ], [ %675, %671 ]
  %681 = getelementptr inbounds nuw i8, ptr %680, i64 16
  %682 = load i64, ptr %681, align 8, !range !41
  %.not282 = icmp samesign ult i64 %536, %682
  br i1 %.not282, label %683, label %odessy.chk50, !prof !43

683:                                              ; preds = %679
  %684 = fmul double %559, %674
  %685 = fmul double %579, %684
  %686 = getelementptr inbounds nuw i8, ptr %680, i64 32
  %687 = getelementptr inbounds nuw [8 x i8], ptr %686, i64 %536
  %688 = load double, ptr %687, align 8
  %689 = fadd double %685, %688
  store double %689, ptr %687, align 8
  store ptr %680, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch114) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch114)
  %690 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %691 = getelementptr inbounds nuw i8, ptr %690, i64 16
  %692 = load i64, ptr %691, align 8, !range !41
  %.not283 = icmp samesign ult i64 %528, %692
  br i1 %.not283, label %693, label %odessy.chk51, !prof !43

693:                                              ; preds = %683
  %694 = getelementptr inbounds nuw i8, ptr %690, i64 32
  %695 = getelementptr inbounds nuw [8 x i8], ptr %694, i64 %528
  %696 = load double, ptr %695, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch120)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch120, i64 33, ptr null) #2
  %697 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %698 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %697) #15
  store ptr %697, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %698, label %701, label %699, !prof !43

699:                                              ; preds = %693
  %700 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %697)
  br label %701

701:                                              ; preds = %699, %693
  %702 = phi ptr [ %700, %699 ], [ %697, %693 ]
  %703 = getelementptr inbounds nuw i8, ptr %702, i64 16
  %704 = load i64, ptr %703, align 8, !range !41
  %.not284 = icmp samesign ult i64 %536, %704
  br i1 %.not284, label %705, label %odessy.chk52, !prof !43

705:                                              ; preds = %701
  %706 = fmul double %570, %696
  %707 = fmul double %579, %706
  %708 = getelementptr inbounds nuw i8, ptr %702, i64 32
  %709 = getelementptr inbounds nuw [8 x i8], ptr %708, i64 %536
  %710 = load double, ptr %709, align 8
  %711 = fadd double %707, %710
  store double %711, ptr %709, align 8
  store ptr %702, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch120) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch120)
  %712 = icmp eq i64 %537, %530
  br i1 %712, label %.loopexit315, label %535

.thread308:                                       ; preds = %776, %526, %517
  %713 = icmp eq i64 %514, %489
  br i1 %713, label %.loopexit318, label %.preheader317.preheader

.preheader:                                       ; preds = %526, %776
  %714 = phi i64 [ %715, %776 ], [ 0, %526 ]
  %715 = add nuw nsw i64 %714, 1
  %716 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %717 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %718 = getelementptr inbounds nuw i8, ptr %717, i64 16
  %719 = load i64, ptr %718, align 8, !range !41
  %.not285 = icmp samesign ult i64 %714, %719
  br i1 %.not285, label %720, label %odessy.chk54, !prof !43

720:                                              ; preds = %.preheader
  %721 = getelementptr inbounds nuw i8, ptr %717, i64 32
  %722 = getelementptr inbounds nuw [8 x i8], ptr %721, i64 %714
  %723 = load double, ptr %722, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch126)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch126, i64 33, ptr null) #2
  %724 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %725 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %724) #15
  store ptr %724, ptr @"$s5nbody2pxSaySdGvp", align 8
  br i1 %725, label %728, label %726, !prof !43

726:                                              ; preds = %720
  %727 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %724)
  br label %728

728:                                              ; preds = %726, %720
  %729 = phi ptr [ %727, %726 ], [ %724, %720 ]
  %730 = getelementptr inbounds nuw i8, ptr %729, i64 16
  %731 = load i64, ptr %730, align 8, !range !41
  %.not286 = icmp samesign ult i64 %714, %731
  br i1 %.not286, label %732, label %odessy.chk55, !prof !43

732:                                              ; preds = %728
  %733 = fmul double %716, %723
  %734 = getelementptr inbounds nuw i8, ptr %729, i64 32
  %735 = getelementptr inbounds nuw [8 x i8], ptr %734, i64 %714
  %736 = load double, ptr %735, align 8
  %737 = fadd double %733, %736
  store double %737, ptr %735, align 8
  store ptr %729, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch126) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch126)
  %738 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %739 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %740 = getelementptr inbounds nuw i8, ptr %739, i64 16
  %741 = load i64, ptr %740, align 8, !range !41
  %.not287 = icmp samesign ult i64 %714, %741
  br i1 %.not287, label %742, label %odessy.chk56, !prof !43

742:                                              ; preds = %732
  %743 = getelementptr inbounds nuw i8, ptr %739, i64 32
  %744 = getelementptr inbounds nuw [8 x i8], ptr %743, i64 %714
  %745 = load double, ptr %744, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch132)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch132, i64 33, ptr null) #2
  %746 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %747 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %746) #15
  store ptr %746, ptr @"$s5nbody2pySaySdGvp", align 8
  br i1 %747, label %750, label %748, !prof !43

748:                                              ; preds = %742
  %749 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %746)
  br label %750

750:                                              ; preds = %748, %742
  %751 = phi ptr [ %749, %748 ], [ %746, %742 ]
  %752 = getelementptr inbounds nuw i8, ptr %751, i64 16
  %753 = load i64, ptr %752, align 8, !range !41
  %.not288 = icmp samesign ult i64 %714, %753
  br i1 %.not288, label %754, label %odessy.chk57, !prof !43

754:                                              ; preds = %750
  %755 = fmul double %738, %745
  %756 = getelementptr inbounds nuw i8, ptr %751, i64 32
  %757 = getelementptr inbounds nuw [8 x i8], ptr %756, i64 %714
  %758 = load double, ptr %757, align 8
  %759 = fadd double %755, %758
  store double %759, ptr %757, align 8
  store ptr %751, ptr @"$s5nbody2pySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch132) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch132)
  %760 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %761 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %762 = getelementptr inbounds nuw i8, ptr %761, i64 16
  %763 = load i64, ptr %762, align 8, !range !41
  %.not289 = icmp samesign ult i64 %714, %763
  br i1 %.not289, label %764, label %odessy.chk58, !prof !43

764:                                              ; preds = %754
  %765 = getelementptr inbounds nuw i8, ptr %761, i64 32
  %766 = getelementptr inbounds nuw [8 x i8], ptr %765, i64 %714
  %767 = load double, ptr %766, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch138)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch138, i64 33, ptr null) #2
  %768 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %769 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %768) #15
  store ptr %768, ptr @"$s5nbody2pzSaySdGvp", align 8
  br i1 %769, label %772, label %770, !prof !43

770:                                              ; preds = %764
  %771 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %768)
  br label %772

772:                                              ; preds = %770, %764
  %773 = phi ptr [ %771, %770 ], [ %768, %764 ]
  %774 = getelementptr inbounds nuw i8, ptr %773, i64 16
  %775 = load i64, ptr %774, align 8, !range !41
  %.not290 = icmp samesign ult i64 %714, %775
  br i1 %.not290, label %776, label %odessy.chk59, !prof !43

776:                                              ; preds = %772
  %777 = fmul double %760, %767
  %778 = getelementptr inbounds nuw i8, ptr %773, i64 32
  %779 = getelementptr inbounds nuw [8 x i8], ptr %778, i64 %714
  %780 = load double, ptr %779, align 8
  %781 = fadd double %777, %780
  store double %781, ptr %779, align 8
  store ptr %773, ptr @"$s5nbody2pzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch138) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch138)
  %782 = icmp eq i64 %715, %.pr
  br i1 %782, label %.thread308, label %.preheader

.loopexit314:                                     ; preds = %.loopexit, %521
  %783 = phi double [ 0.000000e+00, %521 ], [ %859, %.loopexit ]
  %784 = call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMR") #16
  %785 = call noalias ptr @swift_allocObject(ptr %784, i64 64, i64 7) #2
  %786 = getelementptr inbounds nuw i8, ptr %785, i64 16
  store <2 x i64> <i64 1, i64 2>, ptr %786, align 8
  %787 = getelementptr inbounds nuw i8, ptr %785, i64 32
  %788 = call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCys7CVarArg_pGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCys7CVarArg_pGMR") #16
  %789 = call noalias ptr @swift_allocObject(ptr %788, i64 72, i64 7) #2
  %790 = getelementptr inbounds nuw i8, ptr %789, i64 16
  store <2 x i64> <i64 1, i64 2>, ptr %790, align 8
  %791 = getelementptr inbounds nuw i8, ptr %789, i64 32
  %792 = getelementptr inbounds nuw i8, ptr %789, i64 56
  store ptr @"$sSdN", ptr %792, align 8
  %793 = getelementptr inbounds nuw i8, ptr %789, i64 64
  store ptr @"$sSds7CVarArgsWP", ptr %793, align 8
  store double %783, ptr %791, align 8
  %794 = call swiftcc { i64, ptr } @"$sSS10FoundationE6format_S2Sh_s7CVarArg_pdtcfC"(i64 1715023397, ptr nonnull inttoptr (i64 -2017612633061982208 to ptr), ptr %789)
  %795 = extractvalue { i64, ptr } %794, 0
  %796 = extractvalue { i64, ptr } %794, 1
  %797 = getelementptr inbounds nuw i8, ptr %785, i64 56
  store ptr @"$sSSN", ptr %797, align 8
  store i64 %795, ptr %787, align 8
  %._guts170._object._object = getelementptr inbounds nuw i8, ptr %785, i64 40
  store ptr %796, ptr %._guts170._object._object, align 8
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %785, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %785) #2
  ret i32 0

798:                                              ; preds = %.loopexit, %523
  %799 = phi ptr [ %.pre84, %523 ], [ %858, %.loopexit ]
  %800 = phi i64 [ 0, %523 ], [ %802, %.loopexit ]
  %801 = phi double [ 0.000000e+00, %523 ], [ %859, %.loopexit ]
  %802 = add nuw nsw i64 %800, 1
  %803 = getelementptr inbounds nuw i8, ptr %799, i64 16
  %804 = load i64, ptr %803, align 8, !range !41
  %.not292 = icmp samesign ult i64 %800, %804
  br i1 %.not292, label %805, label %odessy.chk61, !prof !43

805:                                              ; preds = %798
  %806 = getelementptr inbounds nuw i8, ptr %799, i64 32
  %807 = getelementptr inbounds nuw [8 x i8], ptr %806, i64 %800
  %808 = load double, ptr %807, align 8
  %809 = fmul double %808, 5.000000e-01
  %810 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %811 = getelementptr inbounds nuw i8, ptr %810, i64 16
  %812 = load i64, ptr %811, align 8, !range !41
  %.not293 = icmp samesign ult i64 %800, %812
  br i1 %.not293, label %813, label %odessy.chk62, !prof !43

813:                                              ; preds = %805
  %814 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %815 = getelementptr inbounds nuw i8, ptr %814, i64 16
  %816 = load i64, ptr %815, align 8, !range !41
  %.not294 = icmp samesign ult i64 %800, %816
  br i1 %.not294, label %817, label %odessy.chk63, !prof !43

817:                                              ; preds = %813
  %818 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %819 = getelementptr inbounds nuw i8, ptr %818, i64 16
  %820 = load i64, ptr %819, align 8, !range !41
  %.not295 = icmp samesign ult i64 %800, %820
  br i1 %.not295, label %821, label %odessy.chk64, !prof !43

821:                                              ; preds = %817
  %822 = getelementptr inbounds nuw i8, ptr %810, i64 32
  %823 = getelementptr inbounds nuw [8 x i8], ptr %822, i64 %800
  %824 = load double, ptr %823, align 8
  %825 = fmul double %824, %824
  %826 = getelementptr inbounds nuw i8, ptr %814, i64 32
  %827 = getelementptr inbounds nuw [8 x i8], ptr %826, i64 %800
  %828 = load double, ptr %827, align 8
  %829 = fmul double %828, %828
  %830 = fadd double %825, %829
  %831 = getelementptr inbounds nuw i8, ptr %818, i64 32
  %832 = getelementptr inbounds nuw [8 x i8], ptr %831, i64 %800
  %833 = load double, ptr %832, align 8
  %834 = fmul double %833, %833
  %835 = fadd double %830, %834
  %836 = fmul double %809, %835
  %837 = fadd double %801, %836
  store double %837, ptr @"$s5nbody1eSdvp", align 8
  %838 = load i64, ptr @"$s5nbody1nSivp", align 8
  %.not369 = icmp sgt i64 %838, %800
  br i1 %.not369, label %839, label %odessy.chk65, !prof !43

839:                                              ; preds = %821
  %840 = icmp eq i64 %802, %838
  br i1 %840, label %.loopexit, label %841

841:                                              ; preds = %839
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch152)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch152, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch153)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch153, i64 0, ptr null) #2
  %842 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %843 = getelementptr inbounds nuw i8, ptr %842, i64 16
  %844 = getelementptr inbounds nuw i8, ptr %842, i64 32
  %845 = getelementptr inbounds nuw [8 x i8], ptr %844, i64 %800
  %846 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %847 = getelementptr inbounds nuw i8, ptr %846, i64 16
  %848 = getelementptr inbounds nuw i8, ptr %846, i64 32
  %849 = getelementptr inbounds nuw [8 x i8], ptr %848, i64 %800
  %850 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %851 = getelementptr inbounds nuw i8, ptr %850, i64 16
  %852 = getelementptr inbounds nuw i8, ptr %850, i64 32
  %853 = getelementptr inbounds nuw [8 x i8], ptr %852, i64 %800
  %854 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %855 = getelementptr inbounds nuw i8, ptr %854, i64 16
  %856 = getelementptr inbounds nuw i8, ptr %854, i64 32
  %857 = getelementptr inbounds nuw [8 x i8], ptr %856, i64 %800
  %.pre363 = load i64, ptr %843, align 8, !range !41
  %.not297 = icmp samesign ult i64 %800, %.pre363
  br i1 %.not297, label %.split62.preheader, label %odessy.chk66, !prof !43

.split62.preheader:                               ; preds = %841
  %"$s5nbody1eSdvp.promoted" = load double, ptr @"$s5nbody1eSdvp", align 8
  br label %.split62

.loopexit:                                        ; preds = %885, %839
  %858 = phi ptr [ %799, %839 ], [ %854, %885 ]
  %859 = phi double [ %837, %839 ], [ %897, %885 ]
  %860 = icmp eq i64 %802, %519
  br i1 %860, label %.loopexit314, label %798

.split62:                                         ; preds = %.split62.preheader, %885
  %861 = phi double [ %897, %885 ], [ %"$s5nbody1eSdvp.promoted", %.split62.preheader ]
  %862 = phi i64 [ %863, %885 ], [ %802, %.split62.preheader ]
  %863 = add nuw i64 %862, 1
  %exitcond.not = icmp eq i64 %862, %.pre363
  br i1 %exitcond.not, label %odessy.chk67, label %864, !prof !42

864:                                              ; preds = %.split62
  %865 = load double, ptr %845, align 8
  %866 = getelementptr inbounds nuw [8 x i8], ptr %844, i64 %862
  %867 = load double, ptr %866, align 8
  %868 = fsub double %865, %867
  %869 = load i64, ptr %847, align 8, !range !41
  %.not299 = icmp samesign ult i64 %800, %869
  br i1 %.not299, label %870, label %odessy.chk68, !prof !43

870:                                              ; preds = %864
  %.not300 = icmp samesign ult i64 %862, %869
  br i1 %.not300, label %871, label %odessy.chk69, !prof !43

871:                                              ; preds = %870
  %872 = load double, ptr %849, align 8
  %873 = getelementptr inbounds nuw [8 x i8], ptr %848, i64 %862
  %874 = load double, ptr %873, align 8
  %875 = fsub double %872, %874
  %876 = load i64, ptr %851, align 8, !range !41
  %.not301 = icmp samesign ult i64 %800, %876
  br i1 %.not301, label %877, label %odessy.chk70, !prof !43

877:                                              ; preds = %871
  %.not302 = icmp samesign ult i64 %862, %876
  br i1 %.not302, label %878, label %odessy.chk71, !prof !43

878:                                              ; preds = %877
  %879 = load double, ptr %853, align 8
  %880 = getelementptr inbounds nuw [8 x i8], ptr %852, i64 %862
  %881 = load double, ptr %880, align 8
  %882 = fsub double %879, %881
  %883 = load i64, ptr %855, align 8, !range !41
  %.not303 = icmp samesign ult i64 %800, %883
  br i1 %.not303, label %884, label %odessy.chk72, !prof !43

884:                                              ; preds = %878
  %.not304 = icmp samesign ult i64 %862, %883
  br i1 %.not304, label %885, label %odessy.chk73, !prof !43

885:                                              ; preds = %884
  %886 = load double, ptr %857, align 8
  %887 = getelementptr inbounds nuw [8 x i8], ptr %856, i64 %862
  %888 = load double, ptr %887, align 8
  %889 = fmul double %886, %888
  %890 = fmul double %868, %868
  %891 = fmul double %875, %875
  %892 = fadd double %890, %891
  %893 = fmul double %882, %882
  %894 = fadd double %892, %893
  %895 = call double @llvm.sqrt.f64(double %894)
  %896 = fdiv double %889, %895
  %897 = fsub double %861, %896
  store double %897, ptr @"$s5nbody1eSdvp", align 8
  %898 = icmp eq i64 %863, %838
  br i1 %898, label %.loopexit, label %.split62

899:                                              ; preds = %49
  tail call void asm sideeffect "", "n"(i32 91) #2
  tail call void @llvm.trap()
  unreachable

900:                                              ; preds = %26
  tail call void asm sideeffect "", "n"(i32 92) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %entry
  tail call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %96
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %183
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %263
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %269
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %283
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %287
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %293
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %307
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %311
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %317
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %331
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %335
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %341
  call void @odessy.chk(i32 13)
  unreachable

odessy.chk14:                                     ; preds = %356
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk15:                                     ; preds = %360
  call void @odessy.chk(i32 15)
  unreachable

odessy.chk16:                                     ; preds = %367
  call void @odessy.chk(i32 16)
  unreachable

odessy.chk17:                                     ; preds = %382
  call void @odessy.chk(i32 17)
  unreachable

odessy.chk18:                                     ; preds = %386
  call void @odessy.chk(i32 18)
  unreachable

odessy.chk19:                                     ; preds = %393
  call void @odessy.chk(i32 19)
  unreachable

odessy.chk20:                                     ; preds = %408
  call void @odessy.chk(i32 20)
  unreachable

odessy.chk21:                                     ; preds = %412
  call void @odessy.chk(i32 21)
  unreachable

odessy.chk22:                                     ; preds = %419
  call void @odessy.chk(i32 22)
  unreachable

odessy.chk23:                                     ; preds = %434
  call void @odessy.chk(i32 23)
  unreachable

odessy.chk24:                                     ; preds = %.loopexit319
  call void @odessy.chk(i32 24)
  unreachable

odessy.chk25:                                     ; preds = %199
  call void @odessy.chk(i32 25)
  unreachable

odessy.chk26:                                     ; preds = %.split
  call void @odessy.chk(i32 26)
  unreachable

odessy.chk27:                                     ; preds = %.split.split
  call void @odessy.chk(i32 27)
  unreachable

odessy.chk28:                                     ; preds = %.split.split.split
  call void @odessy.chk(i32 28)
  unreachable

odessy.chk29:                                     ; preds = %450
  call void @odessy.chk(i32 29)
  unreachable

odessy.chk30:                                     ; preds = %465
  call void @odessy.chk(i32 30)
  unreachable

odessy.chk31:                                     ; preds = %480
  call void @odessy.chk(i32 31)
  unreachable

odessy.chk32:                                     ; preds = %485
  call void @odessy.chk(i32 32)
  unreachable

odessy.chk33:                                     ; preds = %.preheader317.preheader
  call void @odessy.chk(i32 33)
  unreachable

odessy.chk34:                                     ; preds = %.preheader316.preheader
  call void @odessy.chk(i32 34)
  unreachable

odessy.chk35:                                     ; preds = %535
  call void @odessy.chk(i32 35)
  unreachable

odessy.chk36:                                     ; preds = %541
  call void @odessy.chk(i32 36)
  unreachable

odessy.chk37:                                     ; preds = %542
  call void @odessy.chk(i32 37)
  unreachable

odessy.chk38:                                     ; preds = %552
  call void @odessy.chk(i32 38)
  unreachable

odessy.chk39:                                     ; preds = %553
  call void @odessy.chk(i32 39)
  unreachable

odessy.chk40:                                     ; preds = %563
  call void @odessy.chk(i32 40)
  unreachable

odessy.chk41:                                     ; preds = %564
  call void @odessy.chk(i32 41)
  unreachable

odessy.chk42:                                     ; preds = %591
  call void @odessy.chk(i32 42)
  unreachable

odessy.chk43:                                     ; preds = %595
  call void @odessy.chk(i32 43)
  unreachable

odessy.chk44:                                     ; preds = %613
  call void @odessy.chk(i32 44)
  unreachable

odessy.chk45:                                     ; preds = %617
  call void @odessy.chk(i32 45)
  unreachable

odessy.chk46:                                     ; preds = %635
  call void @odessy.chk(i32 46)
  unreachable

odessy.chk47:                                     ; preds = %639
  call void @odessy.chk(i32 47)
  unreachable

odessy.chk48:                                     ; preds = %657
  call void @odessy.chk(i32 48)
  unreachable

odessy.chk49:                                     ; preds = %661
  call void @odessy.chk(i32 49)
  unreachable

odessy.chk50:                                     ; preds = %679
  call void @odessy.chk(i32 50)
  unreachable

odessy.chk51:                                     ; preds = %683
  call void @odessy.chk(i32 51)
  unreachable

odessy.chk52:                                     ; preds = %701
  call void @odessy.chk(i32 52)
  unreachable

odessy.chk53:                                     ; preds = %524
  call void @odessy.chk(i32 53)
  unreachable

odessy.chk54:                                     ; preds = %.preheader
  call void @odessy.chk(i32 54)
  unreachable

odessy.chk55:                                     ; preds = %728
  call void @odessy.chk(i32 55)
  unreachable

odessy.chk56:                                     ; preds = %732
  call void @odessy.chk(i32 56)
  unreachable

odessy.chk57:                                     ; preds = %750
  call void @odessy.chk(i32 57)
  unreachable

odessy.chk58:                                     ; preds = %754
  call void @odessy.chk(i32 58)
  unreachable

odessy.chk59:                                     ; preds = %772
  call void @odessy.chk(i32 59)
  unreachable

odessy.chk60:                                     ; preds = %.loopexit318
  call void @odessy.chk(i32 60)
  unreachable

odessy.chk61:                                     ; preds = %798
  call void @odessy.chk(i32 61)
  unreachable

odessy.chk62:                                     ; preds = %805
  call void @odessy.chk(i32 62)
  unreachable

odessy.chk63:                                     ; preds = %813
  call void @odessy.chk(i32 63)
  unreachable

odessy.chk64:                                     ; preds = %817
  call void @odessy.chk(i32 64)
  unreachable

odessy.chk65:                                     ; preds = %821
  call void @odessy.chk(i32 65)
  unreachable

odessy.chk66:                                     ; preds = %841
  call void @odessy.chk(i32 66)
  unreachable

odessy.chk67:                                     ; preds = %.split62
  call void @odessy.chk(i32 67)
  unreachable

odessy.chk68:                                     ; preds = %864
  call void @odessy.chk(i32 68)
  unreachable

odessy.chk69:                                     ; preds = %870
  call void @odessy.chk(i32 69)
  unreachable

odessy.chk70:                                     ; preds = %871
  call void @odessy.chk(i32 70)
  unreachable

odessy.chk71:                                     ; preds = %877
  call void @odessy.chk(i32 71)
  unreachable

odessy.chk72:                                     ; preds = %878
  call void @odessy.chk(i32 72)
  unreachable

odessy.chk73:                                     ; preds = %884
  call void @odessy.chk(i32 73)
  unreachable

odessy.chk74:                                     ; preds = %136
  tail call void @odessy.chk(i32 74)
  unreachable

odessy.chk75:                                     ; preds = %112
  tail call void @odessy.chk(i32 75)
  unreachable
}

declare swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"() local_unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: nounwind
declare ptr @swift_bridgeObjectRetain(ptr returned) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @swift_bridgeObjectRelease(ptr) local_unnamed_addr #2

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSS_SiTg5"(i64 %0, ptr %1, i64 %2) local_unnamed_addr #3 {
entry:
  %3 = alloca %TSS, align 8
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
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
  br i1 %11, label %16, label %12, !prof !43

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
  br i1 %.not, label %29, label %20

20:                                               ; preds = %16
  %21 = lshr i64 %.pre-phi, 56
  %22 = and i64 %21, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.elt2 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %23 = and i64 %.pre-phi, 72057594037927935
  store i64 %17, ptr %4, align 8
  store i64 %23, ptr %.elt2, align 8
  %24 = ptrtoint ptr %4 to i64
  %25 = call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFADSRys5UInt8VGXEfU_SS_SiTg5"(i64 %24, i64 %22, i64 %2, ptr swiftself undef, ptr noalias nonnull swifterror captures(none) dereferenceable(8) %swifterror)
  %26 = load ptr, ptr %swifterror, align 8
  %.not5 = icmp eq ptr %26, null
  br i1 %.not5, label %27, label %28

27:                                               ; preds = %20
  call void @swift_bridgeObjectRelease(ptr %18) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %31

28:                                               ; preds = %20
  call void @swift_errorRelease(ptr nonnull %26) #2
  unreachable

29:                                               ; preds = %16
  %30 = and i64 %17, 1152921504606846976
  %.not3 = icmp eq i64 %30, 0
  br i1 %.not3, label %36, label %32, !prof !42

31:                                               ; preds = %40, %27
  %.pn = phi { i64, i8 } [ %43, %40 ], [ %25, %27 ]
  ret { i64, i8 } %.pn

32:                                               ; preds = %29
  %33 = and i64 %.pre-phi, 1152921504606846975
  %34 = add nuw nsw i64 %33, 32
  %35 = and i64 %17, 281474976710655
  br label %40

36:                                               ; preds = %29
  %37 = call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %17, ptr %18)
  %38 = extractvalue { i64, i64 } %37, 0
  %39 = extractvalue { i64, i64 } %37, 1
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i64 [ %38, %36 ], [ %34, %32 ]
  %42 = phi i64 [ %39, %36 ], [ %35, %32 ]
  %43 = call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFADSRys5UInt8VGXEfU_SS_SiTg5"(i64 %41, i64 %42, i64 %2, ptr swiftself undef, ptr noalias nonnull swifterror captures(none) dereferenceable(8) %swifterror)
  call void @swift_bridgeObjectRelease(ptr %18) #2
  br label %31
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @swift_beginAccess(ptr, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn
declare zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr) local_unnamed_addr #5

; Function Attrs: noinline
define linkonce_odr hidden swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %0) local_unnamed_addr #3 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = load i64, ptr %1, align 8, !range !41
  %3 = tail call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSd_Tg5"(i1 false, i64 %2, i1 false, ptr %0)
  ret ptr %3
}

; Function Attrs: nounwind
declare void @swift_endAccess(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read)
define linkonce_odr hidden ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr %0, ptr %1) local_unnamed_addr #6 {
entry:
  %2 = load atomic ptr, ptr %0 monotonic, align 8
  %3 = icmp eq ptr %2, null
  %4 = ptrtoint ptr %2 to i64
  %5 = trunc i64 %4 to i1
  %6 = or i1 %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %9, %entry
  %8 = phi ptr [ %2, %entry ], [ %16, %9 ]
  ret ptr %8

9:                                                ; preds = %entry
  %10 = load i64, ptr %1, align 8
  %11 = ashr i64 %10, 32
  %sext = shl i64 %10, 32
  %12 = ashr exact i64 %sext, 32
  %13 = ptrtoint ptr %1 to i64
  %14 = add i64 %12, %13
  %15 = inttoptr i64 %14 to ptr
  %16 = tail call swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr %15, i64 %11, ptr null, ptr null) #17
  store atomic ptr %16, ptr %0 monotonic, align 8
  br label %7
}

; Function Attrs: nounwind memory(argmem: readwrite)
declare swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr, i64, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @swift_allocObject(ptr, i64, i64) local_unnamed_addr #2

declare swiftcc { i64, ptr } @"$sSS10FoundationE6format_S2Sh_s7CVarArg_pdtcfC"(i64, ptr, ptr) local_unnamed_addr #0

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @swift_release(ptr) local_unnamed_addr #2

; Function Attrs: noinline
declare swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZ"(i64, ptr) local_unnamed_addr #3

; Function Attrs: noinline
declare swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swift_Builtin_float"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftObjectiveC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCoreFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftDispatch"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftXPC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftIOKit"()

; Function Attrs: noinline
define linkonce_odr hidden swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSd_Tg5"(i1 %0, i64 %1, i1 %2, ptr %3) local_unnamed_addr #3 {
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
  br i1 %10, label %odessy.chk, label %11, !prof !42

11:                                               ; preds = %9
  %12 = and i64 %6, 9223372036854775806
  %13 = tail call i64 @llvm.umax.i64(i64 %12, i64 %1)
  br label %14

14:                                               ; preds = %11, %5, %entry
  %15 = phi i64 [ %1, %entry ], [ %13, %11 ], [ %7, %5 ]
  %16 = load i64, ptr %4, align 8, !range !41
  %.4 = tail call i64 @llvm.smax.i64(i64 %15, i64 %16)
  %17 = icmp eq i64 %.4, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCySdGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCySdGMR") #16
  %20 = shl i64 %.4, 3
  %21 = add i64 %20, 32
  %22 = tail call noalias ptr @swift_allocObject(ptr %19, i64 %21, i64 7) #2
  %call.i = tail call i64 @malloc_size(ptr noundef %22) #18, !clang.arc.no_objc_arc_exceptions !52
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
  tail call void @swift_bridgeObjectRelease(ptr nonnull %3) #2
  ret ptr %27

odessy.chk:                                       ; preds = %9
  tail call void @odessy.chk(i32 76)
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

declare swiftcc { i64, ptr } @"$sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufC"(ptr noalias, ptr, ptr, ptr) local_unnamed_addr #0

define linkonce_odr hidden swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFADSRys5UInt8VGXEfU_SS_SiTg5"(i64 %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias swifterror captures(none) dereferenceable(8) %4) local_unnamed_addr #0 {
entry:
  %5 = inttoptr i64 %0 to ptr
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %51 [
    i8 45, label %7
    i8 43, label %90
  ]

7:                                                ; preds = %entry
  %8 = icmp slt i64 %1, 1
  br i1 %8, label %odessy.chk1, label %9, !prof !42

9:                                                ; preds = %7
  %10 = icmp eq i64 %1, 1
  br i1 %10, label %.loopexit, label %11, !prof !42

11:                                               ; preds = %9
  %12 = icmp slt i64 %2, 11
  %13 = trunc i64 %2 to i8
  %14 = add i8 %13, 55
  %15 = add i8 %13, 87
  %16 = add i8 %13, 48
  %17 = select i1 %12, i8 97, i8 %15
  %18 = select i1 %12, i8 65, i8 %14
  %19 = select i1 %12, i8 %16, i8 58
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %21 = getelementptr i8, ptr %5, i64 %1
  br label %22

22:                                               ; preds = %37, %11
  %23 = phi ptr [ %20, %11 ], [ %39, %37 ]
  %24 = phi i64 [ 0, %11 ], [ %38, %37 ]
  %25 = load i8, ptr %23, align 1
  %26 = icmp ugt i8 %25, 47
  %27 = icmp ult i8 %25, %19
  %or.cond = select i1 %26, i1 %27, i1 false
  br i1 %or.cond, label %28, label %41, !prof !45

28:                                               ; preds = %44, %41, %22
  %.sink = phi i8 [ -55, %41 ], [ -87, %44 ], [ -48, %22 ]
  %29 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %24, i64 %2)
  %30 = extractvalue { i64, i1 } %29, 1
  br i1 %30, label %.loopexit, label %31

31:                                               ; preds = %28
  %32 = add i8 %.sink, %25
  %33 = extractvalue { i64, i1 } %29, 0
  %34 = zext i8 %32 to i64
  %35 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %33, i64 %34)
  %36 = extractvalue { i64, i1 } %35, 1
  br i1 %36, label %.loopexit, label %37, !prof !42

37:                                               ; preds = %31
  %38 = extractvalue { i64, i1 } %35, 0
  %39 = getelementptr inbounds nuw i8, ptr %23, i64 1
  %40 = icmp eq ptr %39, %21
  br i1 %40, label %.loopexit, label %22

41:                                               ; preds = %22
  %42 = icmp ugt i8 %25, 64
  %43 = icmp ult i8 %25, %18
  %or.cond4 = select i1 %42, i1 %43, i1 false
  br i1 %or.cond4, label %28, label %44, !prof !45

44:                                               ; preds = %41
  %45 = icmp ugt i8 %25, 96
  %46 = icmp ult i8 %25, %17
  %or.cond5 = select i1 %45, i1 %46, i1 false
  br i1 %or.cond5, label %28, label %.loopexit, !prof !45

.loopexit:                                        ; preds = %127, %120, %114, %111, %44, %37, %31, %28, %87, %80, %74, %71, %92, %53, %51, %9
  %47 = phi i64 [ 0, %9 ], [ 0, %51 ], [ 0, %53 ], [ 0, %92 ], [ 0, %44 ], [ 0, %87 ], [ 0, %71 ], [ 0, %74 ], [ %81, %80 ], [ 0, %28 ], [ 0, %31 ], [ %38, %37 ], [ 0, %111 ], [ 0, %114 ], [ %121, %120 ], [ 0, %127 ]
  %48 = phi i8 [ 1, %9 ], [ 1, %51 ], [ 0, %53 ], [ 1, %92 ], [ 1, %44 ], [ 1, %87 ], [ 1, %71 ], [ 1, %74 ], [ 0, %80 ], [ 1, %28 ], [ 1, %31 ], [ 0, %37 ], [ 1, %111 ], [ 1, %114 ], [ 0, %120 ], [ 1, %127 ]
  %49 = insertvalue { i64, i8 } undef, i64 %47, 0
  %50 = insertvalue { i64, i8 } %49, i8 %48, 1
  ret { i64, i8 } %50

51:                                               ; preds = %entry
  %52 = icmp eq i64 %1, 0
  br i1 %52, label %.loopexit, label %53, !prof !42

53:                                               ; preds = %51
  %54 = icmp slt i64 %2, 11
  %55 = trunc i64 %2 to i8
  %56 = add i8 %55, 55
  %57 = add i8 %55, 87
  %58 = add i8 %55, 48
  %59 = select i1 %54, i8 97, i8 %57
  %60 = select i1 %54, i8 65, i8 %56
  %61 = select i1 %54, i8 %58, i8 58
  %62 = icmp eq i64 %0, 0
  br i1 %62, label %.loopexit, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds i8, ptr %5, i64 %1
  br label %65

65:                                               ; preds = %80, %63
  %66 = phi ptr [ %5, %63 ], [ %82, %80 ]
  %67 = phi i64 [ 0, %63 ], [ %81, %80 ]
  %68 = load i8, ptr %66, align 1
  %69 = icmp ugt i8 %68, 47
  %70 = icmp ult i8 %68, %61
  %or.cond6 = select i1 %69, i1 %70, i1 false
  br i1 %or.cond6, label %71, label %84, !prof !45

71:                                               ; preds = %87, %84, %65
  %.sink55 = phi i8 [ -55, %84 ], [ -87, %87 ], [ -48, %65 ]
  %72 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %67, i64 %2)
  %73 = extractvalue { i64, i1 } %72, 1
  br i1 %73, label %.loopexit, label %74

74:                                               ; preds = %71
  %75 = add i8 %.sink55, %68
  %76 = extractvalue { i64, i1 } %72, 0
  %77 = zext i8 %75 to i64
  %78 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %76, i64 %77)
  %79 = extractvalue { i64, i1 } %78, 1
  br i1 %79, label %.loopexit, label %80, !prof !42

80:                                               ; preds = %74
  %81 = extractvalue { i64, i1 } %78, 0
  %82 = getelementptr inbounds nuw i8, ptr %66, i64 1
  %83 = icmp eq ptr %82, %64
  br i1 %83, label %.loopexit, label %65

84:                                               ; preds = %65
  %85 = icmp ugt i8 %68, 64
  %86 = icmp ult i8 %68, %60
  %or.cond7 = select i1 %85, i1 %86, i1 false
  br i1 %or.cond7, label %71, label %87, !prof !45

87:                                               ; preds = %84
  %88 = icmp ugt i8 %68, 96
  %89 = icmp ult i8 %68, %59
  %or.cond8 = select i1 %88, i1 %89, i1 false
  br i1 %or.cond8, label %71, label %.loopexit, !prof !45

90:                                               ; preds = %entry
  %91 = icmp slt i64 %1, 1
  br i1 %91, label %odessy.chk, label %92, !prof !42

92:                                               ; preds = %90
  %93 = icmp eq i64 %1, 1
  br i1 %93, label %.loopexit, label %94, !prof !42

94:                                               ; preds = %92
  %95 = icmp slt i64 %2, 11
  %96 = trunc i64 %2 to i8
  %97 = add i8 %96, 55
  %98 = add i8 %96, 87
  %99 = add i8 %96, 48
  %100 = select i1 %95, i8 97, i8 %98
  %101 = select i1 %95, i8 65, i8 %97
  %102 = select i1 %95, i8 %99, i8 58
  %103 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %104 = getelementptr i8, ptr %5, i64 %1
  br label %105

105:                                              ; preds = %120, %94
  %106 = phi ptr [ %103, %94 ], [ %122, %120 ]
  %107 = phi i64 [ 0, %94 ], [ %121, %120 ]
  %108 = load i8, ptr %106, align 1
  %109 = icmp ugt i8 %108, 47
  %110 = icmp ult i8 %108, %102
  %or.cond9 = select i1 %109, i1 %110, i1 false
  br i1 %or.cond9, label %111, label %124, !prof !45

111:                                              ; preds = %127, %124, %105
  %.sink56 = phi i8 [ -55, %124 ], [ -87, %127 ], [ -48, %105 ]
  %112 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %107, i64 %2)
  %113 = extractvalue { i64, i1 } %112, 1
  br i1 %113, label %.loopexit, label %114

114:                                              ; preds = %111
  %115 = add i8 %.sink56, %108
  %116 = extractvalue { i64, i1 } %112, 0
  %117 = zext i8 %115 to i64
  %118 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %116, i64 %117)
  %119 = extractvalue { i64, i1 } %118, 1
  br i1 %119, label %.loopexit, label %120, !prof !42

120:                                              ; preds = %114
  %121 = extractvalue { i64, i1 } %118, 0
  %122 = getelementptr inbounds nuw i8, ptr %106, i64 1
  %123 = icmp eq ptr %122, %104
  br i1 %123, label %.loopexit, label %105

124:                                              ; preds = %105
  %125 = icmp ugt i8 %108, 64
  %126 = icmp ult i8 %108, %101
  %or.cond10 = select i1 %125, i1 %126, i1 false
  br i1 %or.cond10, label %111, label %127, !prof !45

127:                                              ; preds = %124
  %128 = icmp ugt i8 %108, 96
  %129 = icmp ult i8 %108, %100
  %or.cond11 = select i1 %128, i1 %129, i1 false
  br i1 %or.cond11, label %111, label %.loopexit, !prof !45

odessy.chk:                                       ; preds = %90
  tail call void @odessy.chk(i32 77)
  unreachable

odessy.chk1:                                      ; preds = %7
  tail call void @odessy.chk(i32 78)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingyS2SFZ"(i64 %0, ptr %1) local_unnamed_addr #3 {
entry:
  %2 = ptrtoint ptr %1 to i64
  %3 = and i64 %2, 2305843009213693952
  %.not.i = icmp eq i64 %3, 0
  %4 = and i64 %0, 281474976710655
  %5 = lshr i64 %2, 56
  %6 = and i64 %5, 15
  %7 = select i1 %.not.i, i64 %4, i64 %6
  %8 = shl nuw i64 %7, 16
  %9 = and i64 %2, 1152921504606846976
  %10 = icmp eq i64 %9, 0
  %11 = and i64 %0, 576460752303423488
  %12 = icmp ne i64 %11, 0
  %or.cond.i = select i1 %10, i1 true, i1 %12
  %.v.i = select i1 %or.cond.i, i64 7, i64 11
  %13 = or disjoint i64 %8, %.v.i
  %14 = tail call swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64 15, i64 %13, i64 %0, ptr %1)
  %15 = extractvalue { i64, i64, i64, ptr } %14, 0
  %16 = extractvalue { i64, i64, i64, ptr } %14, 1
  %17 = extractvalue { i64, i64, i64, ptr } %14, 2
  %18 = extractvalue { i64, i64, i64, ptr } %14, 3
  %19 = tail call swiftcc { i64, ptr } @"$sSS8_copyingySSSsFZ"(i64 %15, i64 %16, i64 %17, ptr %18)
  tail call void @swift_bridgeObjectRelease(ptr %18) #2
  ret { i64, ptr } %19
}

; Function Attrs: nounwind
declare void @swift_errorRelease(ptr) local_unnamed_addr #2

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingySSSsFZ"(i64 %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #3 {
entry:
  %4 = alloca %Ts16IndexingIteratorVySs8UTF8ViewVG, align 8
  %5 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = and i64 %6, 1152921504606846976
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %26, label %9, !prof !43

9:                                                ; preds = %entry
  %10 = tail call swiftcc i64 @"$sSs8UTF8ViewV8distance4from2toSiSS5IndexV_AGtF"(i64 %0, i64 %1, i64 %0, i64 %1, i64 %2, ptr %3)
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
  br i1 %.not, label %19, label %odessy.chk, !prof !43

19:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %._crit_edge

._crit_edge:                                      ; preds = %9, %19
  %20 = phi ptr [ %13, %19 ], [ @_swiftEmptyArrayStorage, %9 ]
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %22 = ptrtoint ptr %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %24 = load i64, ptr %23, align 8, !range !41
  %25 = tail call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %22, i64 %24), !noalias !53
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
  br i1 %.not5, label %32, label %36, !prof !42

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
  tail call void @odessy.chk(i32 80)
  unreachable
}

declare swiftcc i64 @"$sSs8UTF8ViewV8distance4from2toSiSS5IndexV_AGtF"(i64, i64, i64, i64, i64, ptr) local_unnamed_addr #0

define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %. = tail call i64 @llvm.smax.i64(i64 %1, i64 %0)
  %2 = icmp eq i64 %., 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %entry
  %4 = tail call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMR") #16
  %5 = add i64 %., 32
  %6 = tail call noalias ptr @swift_allocObject(ptr %4, i64 %5, i64 7) #2
  %call.i = tail call i64 @malloc_size(ptr noundef %6) #18, !clang.arc.no_objc_arc_exceptions !52
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
  %.fr12 = freeze i64 %5
  %.fr11 = freeze ptr %6
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %.loopexit17, label %9

9:                                                ; preds = %entry
  %10 = inttoptr i64 %1 to ptr
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %.loopexit17, label %12

12:                                               ; preds = %9
  %13 = icmp slt i64 %2, 0
  %14 = lshr i64 %4, 14
  br i1 %13, label %odessy.chk, label %15, !prof !42

15:                                               ; preds = %12
  %16 = lshr i64 %3, 14
  %17 = icmp eq i64 %16, %14
  br i1 %17, label %.loopexit17, label %18

18:                                               ; preds = %15
  %19 = ptrtoint ptr %.fr11 to i64
  %20 = and i64 %19, 1152921504606846976
  %21 = icmp eq i64 %20, 0
  %22 = and i64 %.fr12, 576460752303423488
  %23 = icmp ne i64 %22, 0
  %24 = or i1 %21, %23
  %25 = zext i1 %24 to i64
  %26 = shl nuw nsw i64 4, %25
  %27 = and i64 %19, 2305843009213693952
  %.not12 = icmp eq i64 %27, 0
  %.elt6 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %28 = and i64 %19, 72057594037927935
  %29 = and i64 %.fr12, 1152921504606846976
  %.not13 = icmp eq i64 %29, 0
  %30 = and i64 %19, 1152921504606846975
  %31 = add nuw nsw i64 %30, 32
  %32 = and i64 %.fr12, 281474976710655
  %33 = lshr i64 %19, 56
  %34 = and i64 %33, 15
  %35 = select i1 %.not12, i64 %32, i64 %34
  br i1 %21, label %.split.us.split, label %.split

.split.us.split:                                  ; preds = %18
  br i1 %.not12, label %.split.us.split.split.us, label %.split.us.split.split

.split.us.split.split.us:                         ; preds = %.split.us.split
  br i1 %.not13, label %.split.us.split.split.us.split.us, label %.split.us.split.split.us.split, !prof !42

.split.us.split.split.us.split.us:                ; preds = %.split.us.split.split.us, %65
  %36 = phi ptr [ %67, %65 ], [ %10, %.split.us.split.split.us ]
  %37 = phi i64 [ %60, %65 ], [ %3, %.split.us.split.split.us ]
  %38 = phi i64 [ %66, %65 ], [ 1, %.split.us.split.split.us ]
  %39 = and i64 %37, 12
  %.not.us.us.us = icmp eq i64 %39, %26
  br i1 %.not.us.us.us, label %40, label %42, !prof !42

40:                                               ; preds = %.split.us.split.split.us.split.us
  %41 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %37, i64 %.fr12, ptr %.fr11)
  br label %42

42:                                               ; preds = %40, %.split.us.split.split.us.split.us
  %43 = phi i64 [ %41, %40 ], [ %37, %.split.us.split.split.us.split.us ]
  %44 = lshr i64 %43, 14
  %45 = icmp samesign ult i64 %44, %16
  %46 = icmp samesign uge i64 %44, %14
  %47 = or i1 %45, %46
  br i1 %47, label %odessy.chk1, label %48, !prof !42

48:                                               ; preds = %42
  %49 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %.fr12, ptr %.fr11)
  %50 = extractvalue { i64, i64 } %49, 0
  %51 = lshr i64 %43, 16
  %52 = inttoptr i64 %50 to ptr
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %51
  %54 = load i8, ptr %53, align 1
  br i1 %.not.us.us.us, label %55, label %57, !prof !42

55:                                               ; preds = %48
  %56 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %37, i64 %.fr12, ptr %.fr11)
  br label %57

57:                                               ; preds = %55, %48
  %58 = phi i64 [ %56, %55 ], [ %37, %48 ]
  %59 = and i64 %58, -65536
  %60 = add i64 %59, 65540
  store i8 %54, ptr %36, align 1
  %61 = icmp eq i64 %38, %2
  br i1 %61, label %.loopexit17, label %62

62:                                               ; preds = %57
  %63 = lshr i64 %60, 14
  %64 = icmp eq i64 %63, %14
  br i1 %64, label %.loopexit17, label %65

65:                                               ; preds = %62
  %66 = add nuw i64 %38, 1
  %67 = getelementptr inbounds nuw i8, ptr %36, i64 1
  br label %.split.us.split.split.us.split.us

.split.us.split.split.us.split:                   ; preds = %.split.us.split.split.us
  %68 = inttoptr i64 %31 to ptr
  br label %69

69:                                               ; preds = %101, %.split.us.split.split.us.split
  %70 = phi ptr [ %10, %.split.us.split.split.us.split ], [ %103, %101 ]
  %71 = phi i64 [ %3, %.split.us.split.split.us.split ], [ %96, %101 ]
  %72 = phi i64 [ 1, %.split.us.split.split.us.split ], [ %102, %101 ]
  %73 = and i64 %71, 12
  %.not.us.us = icmp eq i64 %73, %26
  br i1 %.not.us.us, label %74, label %.thread, !prof !42

74:                                               ; preds = %69
  %75 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %71, i64 %.fr12, ptr %.fr11)
  %76 = lshr i64 %75, 14
  %77 = icmp samesign ult i64 %76, %16
  %78 = icmp samesign uge i64 %76, %14
  %79 = or i1 %77, %78
  br i1 %79, label %odessy.chk1, label %87, !prof !42

.thread:                                          ; preds = %69
  %80 = lshr i64 %71, 14
  %81 = icmp samesign ult i64 %80, %16
  %82 = icmp samesign uge i64 %80, %14
  %83 = or i1 %81, %82
  br i1 %83, label %odessy.chk1, label %.thread32, !prof !42

.thread32:                                        ; preds = %.thread
  %84 = lshr i64 %71, 16
  %85 = getelementptr inbounds nuw i8, ptr %68, i64 %84
  %86 = load i8, ptr %85, align 1
  br label %92

87:                                               ; preds = %74
  %88 = lshr i64 %75, 16
  %89 = getelementptr inbounds nuw i8, ptr %68, i64 %88
  %90 = load i8, ptr %89, align 1
  %91 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %71, i64 %.fr12, ptr %.fr11)
  br label %92

92:                                               ; preds = %.thread32, %87
  %93 = phi i8 [ %90, %87 ], [ %86, %.thread32 ]
  %94 = phi i64 [ %91, %87 ], [ %71, %.thread32 ]
  %95 = and i64 %94, -65536
  %96 = add i64 %95, 65540
  store i8 %93, ptr %70, align 1
  %97 = icmp eq i64 %72, %2
  br i1 %97, label %.loopexit17, label %98

98:                                               ; preds = %92
  %99 = lshr i64 %96, 14
  %100 = icmp eq i64 %99, %14
  br i1 %100, label %.loopexit17, label %101

101:                                              ; preds = %98
  %102 = add nuw i64 %72, 1
  %103 = getelementptr inbounds nuw i8, ptr %70, i64 1
  br label %69

.split.us.split.split:                            ; preds = %.split.us.split, %130
  %104 = phi ptr [ %132, %130 ], [ %10, %.split.us.split ]
  %105 = phi i64 [ %125, %130 ], [ %3, %.split.us.split ]
  %106 = phi i64 [ %131, %130 ], [ 1, %.split.us.split ]
  %107 = and i64 %105, 12
  %.not.us = icmp eq i64 %107, %26
  br i1 %.not.us, label %108, label %110, !prof !42

108:                                              ; preds = %.split.us.split.split
  %109 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %105, i64 %.fr12, ptr %.fr11)
  br label %110

110:                                              ; preds = %108, %.split.us.split.split
  %111 = phi i64 [ %109, %108 ], [ %105, %.split.us.split.split ]
  %112 = lshr i64 %111, 14
  %113 = icmp samesign ult i64 %112, %16
  %114 = icmp samesign uge i64 %112, %14
  %115 = or i1 %113, %114
  br i1 %115, label %odessy.chk1, label %116, !prof !42

116:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.fr12, ptr %7, align 8
  store i64 %28, ptr %.elt6, align 8
  %117 = lshr i64 %111, 16
  %118 = getelementptr inbounds nuw i8, ptr %7, i64 %117
  %119 = load i8, ptr %118, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %.not.us, label %120, label %122, !prof !42

120:                                              ; preds = %116
  %121 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %105, i64 %.fr12, ptr %.fr11)
  br label %122

122:                                              ; preds = %120, %116
  %123 = phi i64 [ %121, %120 ], [ %105, %116 ]
  %124 = and i64 %123, -65536
  %125 = add i64 %124, 65540
  store i8 %119, ptr %104, align 1
  %126 = icmp eq i64 %106, %2
  br i1 %126, label %.loopexit17, label %127

127:                                              ; preds = %122
  %128 = lshr i64 %125, 14
  %129 = icmp eq i64 %128, %14
  br i1 %129, label %.loopexit17, label %130

130:                                              ; preds = %127
  %131 = add nuw i64 %106, 1
  %132 = getelementptr inbounds nuw i8, ptr %104, i64 1
  br label %.split.us.split.split

.split:                                           ; preds = %18, %158
  %133 = phi ptr [ %160, %158 ], [ %10, %18 ]
  %134 = phi i64 [ %153, %158 ], [ %3, %18 ]
  %135 = phi i64 [ %159, %158 ], [ 1, %18 ]
  %136 = and i64 %134, 12
  %.not = icmp eq i64 %136, %26
  br i1 %.not, label %137, label %139, !prof !42

137:                                              ; preds = %.split
  %138 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %134, i64 %.fr12, ptr %.fr11)
  br label %139

139:                                              ; preds = %137, %.split
  %140 = phi i64 [ %138, %137 ], [ %134, %.split ]
  %141 = lshr i64 %140, 14
  %142 = icmp samesign ult i64 %141, %16
  %143 = icmp samesign uge i64 %141, %14
  %144 = or i1 %142, %143
  br i1 %144, label %odessy.chk1, label %145, !prof !42

145:                                              ; preds = %139
  %146 = tail call swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64 %140, i64 %.fr12, ptr %.fr11)
  br i1 %.not, label %147, label %149, !prof !42

147:                                              ; preds = %145
  %148 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %134, i64 %.fr12, ptr %.fr11)
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i64 [ %148, %147 ], [ %134, %145 ]
  %151 = lshr i64 %150, 16
  %.not15 = icmp samesign ult i64 %151, %35
  br i1 %.not15, label %152, label %odessy.chk2, !prof !43

152:                                              ; preds = %149
  %153 = tail call swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64 %150, i64 %.fr12, ptr %.fr11)
  store i8 %146, ptr %133, align 1
  %154 = icmp eq i64 %135, %2
  br i1 %154, label %.loopexit17, label %155

155:                                              ; preds = %152
  %156 = lshr i64 %153, 14
  %157 = icmp eq i64 %156, %14
  br i1 %157, label %.loopexit17, label %158

158:                                              ; preds = %155
  %159 = add nuw i64 %135, 1
  %160 = getelementptr inbounds nuw i8, ptr %133, i64 1
  br label %.split

.loopexit17:                                      ; preds = %152, %155, %122, %127, %98, %92, %62, %57, %15, %9, %entry
  %.sink = phi i64 [ %3, %entry ], [ %3, %15 ], [ %3, %9 ], [ %125, %122 ], [ %96, %98 ], [ %60, %62 ], [ %60, %57 ], [ %96, %92 ], [ %125, %127 ], [ %153, %155 ], [ %153, %152 ]
  %161 = phi i64 [ 0, %entry ], [ 0, %15 ], [ 0, %9 ], [ %2, %122 ], [ %72, %98 ], [ %38, %62 ], [ %2, %57 ], [ %2, %92 ], [ %106, %127 ], [ %2, %152 ], [ %135, %155 ]
  store i64 %3, ptr %0, align 8
  %._elements3._slice._endIndex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %._elements3._slice._endIndex, align 8
  %._elements3._slice._base = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.fr12, ptr %._elements3._slice._base, align 8
  %._elements3._slice._base._guts._object._object = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.fr11, ptr %._elements3._slice._base._guts._object._object, align 8
  %._position4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %._position4, align 8
  ret i64 %161

odessy.chk:                                       ; preds = %12
  tail call void @odessy.chk(i32 81)
  unreachable

odessy.chk1:                                      ; preds = %139, %110, %74, %.thread, %42
  tail call void @odessy.chk(i32 82)
  unreachable

odessy.chk2:                                      ; preds = %149
  tail call void @odessy.chk(i32 83)
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

declare swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64, i64, i64, ptr) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: optsize
declare i64 @malloc_size(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #4

; Function Attrs: nounwind
declare ptr @swift_bridgeObjectRetain_n(ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind }
attributes #3 = { noinline "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn }
attributes #6 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #7 = { nounwind memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { optsize "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind willreturn }
attributes #16 = { nounwind memory(read) }
attributes #17 = { nounwind memory(argmem: read) }
attributes #18 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14}
!swift.module.flags = !{!15}
!llvm.linker.options = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 5]}
!1 = !{i32 1, !"Objective-C Version", i32 2}
!2 = !{i32 1, !"Objective-C Image Info Version", i32 0}
!3 = !{i32 1, !"Objective-C Image Info Section", !"__DATA,__objc_imageinfo,regular,no_dead_strip"}
!4 = !{i32 1, !"Objective-C Garbage Collection", i8 0}
!5 = !{i32 1, !"Objective-C Class Properties", i32 64}
!6 = !{i32 1, !"Objective-C Enforce ClassRO Pointer Signing", i8 0}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 1}
!11 = !{i32 1, !"Swift Version", i32 7}
!12 = !{i32 1, !"Swift ABI Version", i32 7}
!13 = !{i32 1, !"Swift Major Version", i8 6}
!14 = !{i32 1, !"Swift Minor Version", i8 3}
!15 = !{!"standard-library", i1 false}
!16 = !{!"-lswiftFoundation"}
!17 = !{!"-framework", !"Foundation"}
!18 = !{!"-lswiftCore"}
!19 = !{!"-lswift_DarwinFoundation3"}
!20 = !{!"-lswift_DarwinFoundation1"}
!21 = !{!"-lswift_DarwinFoundation2"}
!22 = !{!"-lswift_StringProcessing"}
!23 = !{!"-lswift_Concurrency"}
!24 = !{!"-lswiftSystem"}
!25 = !{!"-lswiftDarwin"}
!26 = !{!"-lswift_Builtin_float"}
!27 = !{!"-lswiftObservation"}
!28 = !{!"-lswiftObjectiveC"}
!29 = !{!"-lswiftCoreFoundation"}
!30 = !{!"-framework", !"CoreFoundation"}
!31 = !{!"-lswiftDispatch"}
!32 = !{!"-framework", !"Combine"}
!33 = !{!"-framework", !"CoreServices"}
!34 = !{!"-framework", !"Security"}
!35 = !{!"-lswiftXPC"}
!36 = !{!"-framework", !"CFNetwork"}
!37 = !{!"-framework", !"DiskArbitration"}
!38 = !{!"-lswiftIOKit"}
!39 = !{!"-framework", !"IOKit"}
!40 = !{!"-lobjc"}
!41 = !{i64 0, i64 9223372036854775807}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!44 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!45 = !{!"branch_weights", i32 2000, i32 2002}
!46 = !{!"branch_weights", !"expected", i32 1934571, i32 2145549077}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = distinct !{!50, !49, !48}
!51 = !{!"branch_weights", !"expected", i32 4348775, i32 2143134873}
!52 = !{}
!53 = !{!54}
!54 = distinct !{!54, !55, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_: argument 0"}
!55 = distinct !{!55, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_"}
