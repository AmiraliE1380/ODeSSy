; ModuleID = 'results/static/guard_competitors/Swift_sha256/irce.ll'
source_filename = "/Users/ebrah/Project/compiler/ODeSSy/logs/swift_triage/sha256.ll"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx26.0.0"

%TSi = type <{ i64 }>
%TSa = type <{ %Ts12_ArrayBufferV }>
%Ts12_ArrayBufferV = type <{ %Ts14_BridgeStorageV }>
%Ts14_BridgeStorageV = type <{ ptr }>
%Ts6UInt32V = type <{ i32 }>
%swift.type = type { i64 }
%Ts23_ContiguousArrayStorageCys6UInt32VG_tailelems0 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V }>
%swift.refcounted = type { ptr, i64 }
%Ts10_ArrayBodyV = type <{ %TSo22_SwiftArrayBodyStorageV }>
%TSo22_SwiftArrayBodyStorageV = type <{ %TSi, %TSu }>
%TSu = type <{ i64 }>
%swift.type_descriptor = type opaque
%struct._SwiftEmptyArrayStorage = type { %struct.HeapObject, %struct._SwiftArrayBodyStorage }
%struct.HeapObject = type { ptr, %struct.InlineRefCountsPlaceholder }
%struct.InlineRefCountsPlaceholder = type { i64 }
%struct._SwiftArrayBodyStorage = type { i64, i64 }
%Ts6UInt64V = type <{ i64 }>
%swift.metadata_response = type { ptr, i64 }
%swift.opaque = type opaque
%TSS = type <{ %Ts11_StringGutsV }>
%Ts11_StringGutsV = type <{ %Ts13_StringObjectV }>
%Ts13_StringObjectV = type <{ %Ts6UInt64V, ptr }>
%Ts16IndexingIteratorVySs8UTF8ViewVG = type <{ %TSs8UTF8ViewV, %TSS5IndexV }>
%TSs8UTF8ViewV = type <{ %Ts5SliceVySS8UTF8ViewVG }>
%Ts5SliceVySS8UTF8ViewVG = type <{ %TSS5IndexV, %TSS5IndexV, %TSS8UTF8ViewV }>
%TSS8UTF8ViewV = type <{ %Ts11_StringGutsV }>
%TSS5IndexV = type <{ %Ts6UInt64V }>

@"$s6sha2565itersSivp" = hidden local_unnamed_addr global %TSi zeroinitializer, align 8
@"$s6sha2564dataSays5UInt8VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$s6sha2561kSays6UInt32VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$s6sha2565finals6UInt32Vvp" = hidden global %Ts6UInt32V zeroinitializer, align 4
@".str.19.sha256/sha256.swift" = private unnamed_addr constant [20 x i8] c"sha256/sha256.swift\00"
@_swiftImmortalRefCount = external constant i8
@"$ss20__StaticArrayStorageCN" = external global %swift.type, align 8
@mainTv_r = internal constant %Ts23_ContiguousArrayStorageCys6UInt32VG_tailelems0 <{ %swift.refcounted { ptr @"$ss20__StaticArrayStorageCN", i64 ptrtoint (ptr @_swiftImmortalRefCount to i64) }, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 64 }>, %TSu <{ i64 128 }> }> }>, %Ts6UInt32V <{ i32 1116352408 }>, %Ts6UInt32V <{ i32 1899447441 }>, %Ts6UInt32V <{ i32 -1245643825 }>, %Ts6UInt32V <{ i32 -373957723 }>, %Ts6UInt32V <{ i32 961987163 }>, %Ts6UInt32V <{ i32 1508970993 }>, %Ts6UInt32V <{ i32 -1841331548 }>, %Ts6UInt32V <{ i32 -1424204075 }>, %Ts6UInt32V <{ i32 -670586216 }>, %Ts6UInt32V <{ i32 310598401 }>, %Ts6UInt32V <{ i32 607225278 }>, %Ts6UInt32V <{ i32 1426881987 }>, %Ts6UInt32V <{ i32 1925078388 }>, %Ts6UInt32V <{ i32 -2132889090 }>, %Ts6UInt32V <{ i32 -1680079193 }>, %Ts6UInt32V <{ i32 -1046744716 }>, %Ts6UInt32V <{ i32 -459576895 }>, %Ts6UInt32V <{ i32 -272742522 }>, %Ts6UInt32V <{ i32 264347078 }>, %Ts6UInt32V <{ i32 604807628 }>, %Ts6UInt32V <{ i32 770255983 }>, %Ts6UInt32V <{ i32 1249150122 }>, %Ts6UInt32V <{ i32 1555081692 }>, %Ts6UInt32V <{ i32 1996064986 }>, %Ts6UInt32V <{ i32 -1740746414 }>, %Ts6UInt32V <{ i32 -1473132947 }>, %Ts6UInt32V <{ i32 -1341970488 }>, %Ts6UInt32V <{ i32 -1084653625 }>, %Ts6UInt32V <{ i32 -958395405 }>, %Ts6UInt32V <{ i32 -710438585 }>, %Ts6UInt32V <{ i32 113926993 }>, %Ts6UInt32V <{ i32 338241895 }>, %Ts6UInt32V <{ i32 666307205 }>, %Ts6UInt32V <{ i32 773529912 }>, %Ts6UInt32V <{ i32 1294757372 }>, %Ts6UInt32V <{ i32 1396182291 }>, %Ts6UInt32V <{ i32 1695183700 }>, %Ts6UInt32V <{ i32 1986661051 }>, %Ts6UInt32V <{ i32 -2117940946 }>, %Ts6UInt32V <{ i32 -1838011259 }>, %Ts6UInt32V <{ i32 -1564481375 }>, %Ts6UInt32V <{ i32 -1474664885 }>, %Ts6UInt32V <{ i32 -1035236496 }>, %Ts6UInt32V <{ i32 -949202525 }>, %Ts6UInt32V <{ i32 -778901479 }>, %Ts6UInt32V <{ i32 -694614492 }>, %Ts6UInt32V <{ i32 -200395387 }>, %Ts6UInt32V <{ i32 275423344 }>, %Ts6UInt32V <{ i32 430227734 }>, %Ts6UInt32V <{ i32 506948616 }>, %Ts6UInt32V <{ i32 659060556 }>, %Ts6UInt32V <{ i32 883997877 }>, %Ts6UInt32V <{ i32 958139571 }>, %Ts6UInt32V <{ i32 1322822218 }>, %Ts6UInt32V <{ i32 1537002063 }>, %Ts6UInt32V <{ i32 1747873779 }>, %Ts6UInt32V <{ i32 1955562222 }>, %Ts6UInt32V <{ i32 2024104815 }>, %Ts6UInt32V <{ i32 -2067236844 }>, %Ts6UInt32V <{ i32 -1933114872 }>, %Ts6UInt32V <{ i32 -1866530822 }>, %Ts6UInt32V <{ i32 -1538233109 }>, %Ts6UInt32V <{ i32 -1090935817 }>, %Ts6UInt32V <{ i32 -965641998 }> }>, align 8
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = private unnamed_addr constant ptr @"$ss23_ContiguousArrayStorageCMn"
@"$ss6UInt32VMn" = external global %swift.type_descriptor, align 4
@"got.$ss6UInt32VMn" = private unnamed_addr constant ptr @"$ss6UInt32VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss6UInt32VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys6UInt32VGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCys6UInt32VGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys6UInt32VGMR" to i64)) to i32), i32 12 }, align 8
@"$ss6UInt32VN" = external global %swift.type, align 8
@"symbolic _____yypG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____yypG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"yypG", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCyypGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCyypGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____yypG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCyypGMR" to i64)) to i32), i32 9 }, align 8
@"\01l_entry_point" = private constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @main to i64), i64 ptrtoint (ptr @"\01l_entry_point" to i64)) to i32), i32 0 }, section "__TEXT, __swift5_entry, regular, no_dead_strip", align 4
@"_swift_FORCE_LOAD_$_swiftFoundation_$_sha256" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftFoundation"
@"_swift_FORCE_LOAD_$_swift_Builtin_float_$_sha256" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swift_Builtin_float"
@"_swift_FORCE_LOAD_$_swiftObjectiveC_$_sha256" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftObjectiveC"
@"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_sha256" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftCoreFoundation"
@"_swift_FORCE_LOAD_$_swiftDispatch_$_sha256" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftDispatch"
@"_swift_FORCE_LOAD_$_swiftXPC_$_sha256" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftXPC"
@"_swift_FORCE_LOAD_$_swiftIOKit_$_sha256" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftIOKit"
@_swiftEmptyArrayStorage = external global %struct._SwiftEmptyArrayStorage, align 8
@"$ss5UInt8VMn" = external global %swift.type_descriptor, align 4
@"got.$ss5UInt8VMn" = private unnamed_addr constant ptr @"$ss5UInt8VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss5UInt8VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys5UInt8VGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCys5UInt8VGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys5UInt8VGMR" to i64)) to i32), i32 12 }, align 8
@"$sSSN" = external global %swift.type, align 8
@"$sSSs25LosslessStringConvertiblesWP" = external global ptr, align 8
@"$sSSSTsWP" = external global ptr, align 8
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@llvm.used = appending global [10 x ptr] [ptr @"\01l_entry_point", ptr @__swift_reflection_version, ptr @"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_sha256", ptr @"_swift_FORCE_LOAD_$_swiftDispatch_$_sha256", ptr @"_swift_FORCE_LOAD_$_swiftFoundation_$_sha256", ptr @"_swift_FORCE_LOAD_$_swiftIOKit_$_sha256", ptr @"_swift_FORCE_LOAD_$_swiftObjectiveC_$_sha256", ptr @"_swift_FORCE_LOAD_$_swiftXPC_$_sha256", ptr @"_swift_FORCE_LOAD_$_swift_Builtin_float_$_sha256", ptr @main], section "llvm.metadata"

define noundef i32 @main(i32 %0, ptr readnone captures(none) %1) #0 {
entry:
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  %access-scratch = alloca [24 x i8], align 8
  %reference.raw124 = alloca [64 x i8], align 8
  %access-scratch57 = alloca [24 x i8], align 8
  %2 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %3 = tail call swiftcc %swift.metadata_response @"$s10Foundation3URLVMa"(i64 0) #17
  %4 = extractvalue %swift.metadata_response %3, 0
  %5 = getelementptr inbounds i8, ptr %4, i64 -8
  %.valueWitnesses = load ptr, ptr %5, align 8, !invariant.load !41, !dereferenceable !42
  %6 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 64
  %size = load i64, ptr %6, align 8, !invariant.load !41
  %7 = alloca i8, i64 %size, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %8 = tail call swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"()
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %10 = load i64, ptr %9, align 8, !range !43
  %11 = icmp samesign ult i64 %10, 2
  br i1 %11, label %odessy.chk, label %12, !prof !44

12:                                               ; preds = %entry
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %14 = load i64, ptr %13, align 8
  %._guts._object._object = getelementptr inbounds nuw i8, ptr %8, i64 56
  %15 = load ptr, ptr %._guts._object._object, align 8
  %16 = tail call ptr @swift_bridgeObjectRetain(ptr returned %15) #2
  tail call void @swift_bridgeObjectRelease(ptr nonnull %8) #2
  %17 = ptrtoint ptr %15 to i64
  %18 = and i64 %17, 2305843009213693952
  %.not = icmp eq i64 %18, 0
  %19 = and i64 %14, 281474976710655
  %20 = lshr i64 %17, 56
  %21 = and i64 %20, 15
  %22 = select i1 %.not, i64 %19, i64 %21
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25, !prof !44

24:                                               ; preds = %12
  tail call void @swift_bridgeObjectRelease(ptr %15) #2
  tail call void asm sideeffect "", "n"(i32 1) #2
  tail call void @llvm.trap()
  unreachable

25:                                               ; preds = %12
  %26 = and i64 %17, 1152921504606846976
  %.not126 = icmp eq i64 %26, 0
  br i1 %.not126, label %27, label %.thread, !prof !45

27:                                               ; preds = %25
  br i1 %.not, label %96, label %28

28:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.elt64 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %29 = and i64 %17, 72057594037927935
  store i64 %14, ptr %2, align 8
  store i64 %29, ptr %.elt64, align 8
  %30 = trunc i64 %14 to i8
  switch i8 %30, label %55 [
    i8 45, label %31
    i8 43, label %54
  ]

31:                                               ; preds = %28
  switch i64 %21, label %34 [
    i64 0, label %372
    i64 1, label %.loopexit154
  ], !prof !46

.loopexit154:                                     ; preds = %60, %65, %68, %73, %37, %42, %45, %50, %79, %84, %87, %92, %55, %54, %31
  %32 = phi i64 [ 0, %55 ], [ 0, %31 ], [ 0, %54 ], [ 0, %37 ], [ 0, %79 ], [ %93, %92 ], [ 0, %87 ], [ 0, %84 ], [ %51, %50 ], [ 0, %45 ], [ 0, %42 ], [ 0, %60 ], [ %74, %73 ], [ 0, %68 ], [ 0, %65 ]
  %33 = phi i8 [ 1, %55 ], [ 1, %31 ], [ 1, %54 ], [ 1, %37 ], [ 1, %79 ], [ 0, %92 ], [ 1, %87 ], [ 1, %84 ], [ 0, %50 ], [ 1, %45 ], [ 1, %42 ], [ 1, %60 ], [ 0, %73 ], [ 1, %68 ], [ 1, %65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread142

34:                                               ; preds = %31
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %36 = getelementptr i8, ptr %2, i64 %21
  br label %37

37:                                               ; preds = %50, %34
  %38 = phi ptr [ %35, %34 ], [ %52, %50 ]
  %39 = phi i64 [ 0, %34 ], [ %51, %50 ]
  %40 = load i8, ptr %38, align 1
  %41 = add i8 %40, -48
  %or.cond = icmp ult i8 %41, 10
  br i1 %or.cond, label %42, label %.loopexit154, !prof !47

42:                                               ; preds = %37
  %43 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 10)
  %44 = extractvalue { i64, i1 } %43, 1
  br i1 %44, label %.loopexit154, label %45

45:                                               ; preds = %42
  %46 = extractvalue { i64, i1 } %43, 0
  %47 = zext nneg i8 %41 to i64
  %48 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %46, i64 %47)
  %49 = extractvalue { i64, i1 } %48, 1
  br i1 %49, label %.loopexit154, label %50, !prof !44

50:                                               ; preds = %45
  %51 = extractvalue { i64, i1 } %48, 0
  %52 = getelementptr inbounds nuw i8, ptr %38, i64 1
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %.loopexit154, label %37

54:                                               ; preds = %28
  switch i64 %21, label %57 [
    i64 0, label %371
    i64 1, label %.loopexit154
  ], !prof !46

55:                                               ; preds = %28
  %56 = icmp eq i64 %21, 0
  br i1 %56, label %.loopexit154, label %77, !prof !44

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %59 = getelementptr i8, ptr %2, i64 %21
  br label %60

60:                                               ; preds = %73, %57
  %61 = phi ptr [ %58, %57 ], [ %75, %73 ]
  %62 = phi i64 [ 0, %57 ], [ %74, %73 ]
  %63 = load i8, ptr %61, align 1
  %64 = add i8 %63, -48
  %or.cond69 = icmp ult i8 %64, 10
  br i1 %or.cond69, label %65, label %.loopexit154, !prof !47

65:                                               ; preds = %60
  %66 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %62, i64 10)
  %67 = extractvalue { i64, i1 } %66, 1
  br i1 %67, label %.loopexit154, label %68

68:                                               ; preds = %65
  %69 = extractvalue { i64, i1 } %66, 0
  %70 = zext nneg i8 %64 to i64
  %71 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %69, i64 %70)
  %72 = extractvalue { i64, i1 } %71, 1
  br i1 %72, label %.loopexit154, label %73, !prof !44

73:                                               ; preds = %68
  %74 = extractvalue { i64, i1 } %71, 0
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 1
  %76 = icmp eq ptr %75, %59
  br i1 %76, label %.loopexit154, label %60

77:                                               ; preds = %55
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %21
  br label %79

79:                                               ; preds = %92, %77
  %80 = phi ptr [ %2, %77 ], [ %94, %92 ]
  %81 = phi i64 [ 0, %77 ], [ %93, %92 ]
  %82 = load i8, ptr %80, align 1
  %83 = add i8 %82, -48
  %or.cond70 = icmp ult i8 %83, 10
  br i1 %or.cond70, label %84, label %.loopexit154, !prof !47

84:                                               ; preds = %79
  %85 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %81, i64 10)
  %86 = extractvalue { i64, i1 } %85, 1
  br i1 %86, label %.loopexit154, label %87

87:                                               ; preds = %84
  %88 = extractvalue { i64, i1 } %85, 0
  %89 = zext nneg i8 %83 to i64
  %90 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %88, i64 %89)
  %91 = extractvalue { i64, i1 } %90, 1
  br i1 %91, label %.loopexit154, label %92, !prof !44

92:                                               ; preds = %87
  %93 = extractvalue { i64, i1 } %90, 0
  %94 = getelementptr inbounds nuw i8, ptr %80, i64 1
  %95 = icmp eq ptr %94, %78
  br i1 %95, label %.loopexit154, label %79

96:                                               ; preds = %27
  %97 = and i64 %14, 1152921504606846976
  %.not125 = icmp eq i64 %97, 0
  br i1 %.not125, label %108, label %105, !prof !44

.thread142:                                       ; preds = %150, %155, %158, %163, %124, %129, %132, %137, %171, %176, %179, %184, %167, %145, %143, %119, %.loopexit154
  %.sroa.0.1146 = phi i64 [ 0, %119 ], [ 0, %143 ], [ 0, %145 ], [ 0, %167 ], [ %32, %.loopexit154 ], [ 0, %124 ], [ 0, %171 ], [ %185, %184 ], [ 0, %179 ], [ 0, %176 ], [ %138, %137 ], [ 0, %132 ], [ 0, %129 ], [ 0, %150 ], [ %164, %163 ], [ 0, %158 ], [ 0, %155 ]
  %.sroa.6.1145 = phi i8 [ 1, %119 ], [ 1, %143 ], [ 1, %145 ], [ 0, %167 ], [ %33, %.loopexit154 ], [ 1, %124 ], [ 1, %171 ], [ 0, %184 ], [ 1, %179 ], [ 1, %176 ], [ 0, %137 ], [ 1, %132 ], [ 1, %129 ], [ 1, %150 ], [ 0, %163 ], [ 1, %158 ], [ 1, %155 ]
  call void @swift_bridgeObjectRelease(ptr %15) #2
  br label %101

.thread:                                          ; preds = %25
  %98 = tail call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSS_SiTg5"(i64 %14, ptr %15, i64 10)
  tail call void @swift_bridgeObjectRelease(ptr %15) #2
  %99 = extractvalue { i64, i8 } %98, 0
  %100 = extractvalue { i64, i8 } %98, 1
  br label %101

101:                                              ; preds = %.thread, %.thread142
  %102 = phi i64 [ %99, %.thread ], [ %.sroa.0.1146, %.thread142 ]
  %103 = phi i8 [ %100, %.thread ], [ %.sroa.6.1145, %.thread142 ]
  %104 = icmp eq i8 %103, 1
  br i1 %104, label %odessy.chk1, label %188

105:                                              ; preds = %96
  %106 = and i64 %17, 1152921504606846975
  %107 = add nuw nsw i64 %106, 32
  br label %112

108:                                              ; preds = %96
  %109 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %14, ptr %15)
  %110 = extractvalue { i64, i64 } %109, 0
  %111 = extractvalue { i64, i64 } %109, 1
  br label %112

112:                                              ; preds = %108, %105
  %113 = phi i64 [ %110, %108 ], [ %107, %105 ]
  %114 = phi i64 [ %111, %108 ], [ %19, %105 ]
  %115 = inttoptr i64 %113 to ptr
  %116 = load i8, ptr %115, align 1
  switch i8 %116, label %145 [
    i8 45, label %117
    i8 43, label %141
  ]

117:                                              ; preds = %112
  %118 = icmp slt i64 %114, 1
  br i1 %118, label %odessy.chk24, label %119, !prof !44

119:                                              ; preds = %117
  %120 = icmp eq i64 %114, 1
  br i1 %120, label %.thread142, label %121, !prof !44

121:                                              ; preds = %119
  %122 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %123 = getelementptr i8, ptr %115, i64 %114
  br label %124

124:                                              ; preds = %137, %121
  %125 = phi ptr [ %122, %121 ], [ %139, %137 ]
  %126 = phi i64 [ 0, %121 ], [ %138, %137 ]
  %127 = load i8, ptr %125, align 1
  %128 = add i8 %127, -48
  %or.cond71 = icmp ult i8 %128, 10
  br i1 %or.cond71, label %129, label %.thread142, !prof !47

129:                                              ; preds = %124
  %130 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %126, i64 10)
  %131 = extractvalue { i64, i1 } %130, 1
  br i1 %131, label %.thread142, label %132

132:                                              ; preds = %129
  %133 = extractvalue { i64, i1 } %130, 0
  %134 = zext nneg i8 %128 to i64
  %135 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %133, i64 %134)
  %136 = extractvalue { i64, i1 } %135, 1
  br i1 %136, label %.thread142, label %137, !prof !44

137:                                              ; preds = %132
  %138 = extractvalue { i64, i1 } %135, 0
  %139 = getelementptr inbounds nuw i8, ptr %125, i64 1
  %140 = icmp eq ptr %139, %123
  br i1 %140, label %.thread142, label %124

141:                                              ; preds = %112
  %142 = icmp slt i64 %114, 1
  br i1 %142, label %odessy.chk23, label %143, !prof !44

143:                                              ; preds = %141
  %144 = icmp eq i64 %114, 1
  br i1 %144, label %.thread142, label %147, !prof !44

145:                                              ; preds = %112
  %146 = icmp eq i64 %114, 0
  br i1 %146, label %.thread142, label %167, !prof !44

147:                                              ; preds = %143
  %148 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %149 = getelementptr i8, ptr %115, i64 %114
  br label %150

150:                                              ; preds = %163, %147
  %151 = phi ptr [ %148, %147 ], [ %165, %163 ]
  %152 = phi i64 [ 0, %147 ], [ %164, %163 ]
  %153 = load i8, ptr %151, align 1
  %154 = add i8 %153, -48
  %or.cond72 = icmp ult i8 %154, 10
  br i1 %or.cond72, label %155, label %.thread142, !prof !47

155:                                              ; preds = %150
  %156 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %152, i64 10)
  %157 = extractvalue { i64, i1 } %156, 1
  br i1 %157, label %.thread142, label %158

158:                                              ; preds = %155
  %159 = extractvalue { i64, i1 } %156, 0
  %160 = zext nneg i8 %154 to i64
  %161 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %159, i64 %160)
  %162 = extractvalue { i64, i1 } %161, 1
  br i1 %162, label %.thread142, label %163, !prof !44

163:                                              ; preds = %158
  %164 = extractvalue { i64, i1 } %161, 0
  %165 = getelementptr inbounds nuw i8, ptr %151, i64 1
  %166 = icmp eq ptr %165, %149
  br i1 %166, label %.thread142, label %150

167:                                              ; preds = %145
  %168 = icmp eq i64 %113, 0
  br i1 %168, label %.thread142, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds i8, ptr %115, i64 %114
  br label %171

171:                                              ; preds = %184, %169
  %172 = phi ptr [ %115, %169 ], [ %186, %184 ]
  %173 = phi i64 [ 0, %169 ], [ %185, %184 ]
  %174 = load i8, ptr %172, align 1
  %175 = add i8 %174, -48
  %or.cond73 = icmp ult i8 %175, 10
  br i1 %or.cond73, label %176, label %.thread142, !prof !47

176:                                              ; preds = %171
  %177 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %173, i64 10)
  %178 = extractvalue { i64, i1 } %177, 1
  br i1 %178, label %.thread142, label %179

179:                                              ; preds = %176
  %180 = extractvalue { i64, i1 } %177, 0
  %181 = zext nneg i8 %175 to i64
  %182 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %180, i64 %181)
  %183 = extractvalue { i64, i1 } %182, 1
  br i1 %183, label %.thread142, label %184, !prof !44

184:                                              ; preds = %179
  %185 = extractvalue { i64, i1 } %182, 0
  %186 = getelementptr inbounds nuw i8, ptr %172, i64 1
  %187 = icmp eq ptr %186, %170
  br i1 %187, label %.thread142, label %171

188:                                              ; preds = %101
  store i64 %102, ptr @"$s6sha2565itersSivp", align 8
  %189 = call swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"()
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 16
  %191 = load i64, ptr %190, align 8, !range !43
  %192 = icmp samesign ult i64 %191, 3
  br i1 %192, label %odessy.chk2, label %193, !prof !44

193:                                              ; preds = %188
  %194 = getelementptr inbounds nuw i8, ptr %189, i64 64
  %195 = load i64, ptr %194, align 8
  %._guts2._object._object = getelementptr inbounds nuw i8, ptr %189, i64 72
  %196 = load ptr, ptr %._guts2._object._object, align 8
  %197 = call ptr @swift_bridgeObjectRetain(ptr returned %196) #2
  call void @swift_bridgeObjectRelease(ptr nonnull %189) #2
  call swiftcc void @"$s10Foundation3URLV15fileURLWithPathACSSh_tcfC"(ptr noalias nonnull sret(%swift.opaque) %7, i64 %195, ptr %196)
  call void @swift_bridgeObjectRelease(ptr %196) #2
  %198 = call swiftcc { i64, i64 } @"$s10Foundation4DataV10contentsOf7optionsAcA3URLVh_So20NSDataReadingOptionsVtKcfC"(ptr noalias nonnull %7, i64 0, ptr swiftself undef, ptr noalias nonnull swifterror captures(none) dereferenceable(8) %swifterror)
  %199 = load ptr, ptr %swifterror, align 8
  %.not127 = icmp eq ptr %199, null
  br i1 %.not127, label %200, label %369

200:                                              ; preds = %193
  %201 = extractvalue { i64, i64 } %198, 1
  %202 = extractvalue { i64, i64 } %198, 0
  %203 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy3 = load ptr, ptr %203, align 8, !invariant.load !41
  call void %Destroy3(ptr noalias nonnull %7, ptr %4) #2
  %204 = call swiftcc ptr @"$sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5"(i64 %202, i64 %201)
  store ptr %204, ptr @"$s6sha2564dataSays5UInt8VGvp", align 8
  store ptr @mainTv_r, ptr @"$s6sha2561kSays6UInt32VGvp", align 8
  store i32 0, ptr @"$s6sha2565finals6UInt32Vvp", align 4
  %205 = load i64, ptr @"$s6sha2565itersSivp", align 8
  %206 = icmp slt i64 %205, 0
  br i1 %206, label %odessy.chk3, label %207, !prof !44

207:                                              ; preds = %200
  %208 = icmp eq i64 %205, 0
  br i1 %208, label %.loopexit147, label %209

209:                                              ; preds = %207
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch)
  call void @swift_beginAccess(ptr nonnull @"$s6sha2565finals6UInt32Vvp", ptr nonnull %access-scratch, i64 1, ptr null) #2
  br label %216

.loopexit147:                                     ; preds = %.loopexit.thread, %207
  %210 = call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMR") #18
  %211 = call noalias ptr @swift_allocObject(ptr %210, i64 64, i64 7) #2
  %212 = getelementptr inbounds nuw i8, ptr %211, i64 16
  store <2 x i64> <i64 1, i64 2>, ptr %212, align 8
  %213 = getelementptr inbounds nuw i8, ptr %211, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch57)
  call void @swift_beginAccess(ptr nonnull @"$s6sha2565finals6UInt32Vvp", ptr nonnull %access-scratch57, i64 0, ptr null) #2
  %214 = load i32, ptr @"$s6sha2565finals6UInt32Vvp", align 4
  %215 = getelementptr inbounds nuw i8, ptr %211, i64 56
  store ptr @"$ss6UInt32VN", ptr %215, align 8
  store i32 %214, ptr %213, align 8
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %211, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %211) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i32 0

216:                                              ; preds = %.loopexit.thread, %209
  %217 = phi i64 [ 0, %209 ], [ %230, %.loopexit.thread ]
  %218 = call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCys6UInt32VGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCys6UInt32VGMR") #18
  %reference.new = call ptr @swift_initStackObject(ptr %218, ptr nonnull %reference.raw124) #19
  %reference.new4 = getelementptr inbounds nuw i8, ptr %reference.new, i64 16
  store <2 x i64> <i64 8, i64 16>, ptr %reference.new4, align 8
  %219 = getelementptr inbounds nuw i8, ptr %reference.new, i64 32
  %220 = getelementptr inbounds nuw i8, ptr %reference.new, i64 36
  %221 = getelementptr inbounds nuw i8, ptr %reference.new, i64 40
  %222 = getelementptr inbounds nuw i8, ptr %reference.new, i64 44
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %219, align 8
  %223 = getelementptr inbounds nuw i8, ptr %reference.new, i64 48
  %224 = getelementptr inbounds nuw i8, ptr %reference.new, i64 52
  %225 = getelementptr inbounds nuw i8, ptr %reference.new, i64 56
  %226 = getelementptr inbounds nuw i8, ptr %reference.new, i64 60
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %223, align 8
  %227 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZ"(i64 64, ptr nonnull @"$ss6UInt32VN")
  %228 = getelementptr inbounds nuw i8, ptr %227, i64 16
  store i64 64, ptr %228, align 8
  %229 = getelementptr i8, ptr %227, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %229, i8 0, i64 256, i1 false)
  %230 = add nuw nsw i64 %217, 1
  %231 = load ptr, ptr @"$s6sha2564dataSays5UInt8VGvp", align 8
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 16
  %233 = load i64, ptr %232, align 8, !range !43
  %234 = lshr i64 %233, 6
  %235 = icmp samesign ult i64 %233, 64
  br i1 %235, label %.loopexit, label %236

236:                                              ; preds = %216
  %237 = getelementptr inbounds nuw i8, ptr %231, i64 32
  %238 = load ptr, ptr @"$s6sha2561kSays6UInt32VGvp", align 8
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 32
  %240 = getelementptr inbounds nuw i8, ptr %238, i64 16
  %241 = load i64, ptr %240, align 8, !range !43
  %invariant.gep = getelementptr i8, ptr %227, i64 -32
  %invariant.gep234 = getelementptr i8, ptr %227, i64 4
  %.not212 = icmp samesign ult i64 %241, 64
  %invariant.op = sub nuw i64 %233, 2
  br label %247

.loopexit:                                        ; preds = %216
  %.pre = load i64, ptr %reference.new4, align 8, !range !43
  %242 = icmp eq i64 %.pre, 0
  br i1 %242, label %odessy.chk22, label %.loopexit..loopexit.thread_crit_edge, !prof !48

.loopexit..loopexit.thread_crit_edge:             ; preds = %.loopexit
  %.pre86 = load i32, ptr %219, align 8
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %319, %.loopexit..loopexit.thread_crit_edge
  %243 = phi i32 [ %.pre86, %.loopexit..loopexit.thread_crit_edge ], [ %320, %319 ]
  %244 = load i32, ptr @"$s6sha2565finals6UInt32Vvp", align 4
  %245 = add i32 %243, %244
  store i32 %245, ptr @"$s6sha2565finals6UInt32Vvp", align 4
  call void @swift_bridgeObjectRelease(ptr nonnull %227) #2
  call void @swift_setDeallocating(ptr nonnull %reference.new) #2
  %246 = icmp eq i64 %230, %205
  br i1 %246, label %.loopexit147, label %216

247:                                              ; preds = %319, %236
  %248 = phi i64 [ 0, %236 ], [ %250, %319 ]
  %exitcond.not = icmp eq i64 %248, %234
  br i1 %exitcond.not, label %odessy.chk4, label %249, !prof !44

249:                                              ; preds = %247
  %250 = add nuw nsw i64 %248, 1
  %251 = shl i64 %248, 6
  br label %252

252:                                              ; preds = %264, %249
  %253 = phi i64 [ 0, %249 ], [ %254, %264 ]
  %254 = add nuw nsw i64 %253, 1
  %255 = shl nuw nsw i64 %253, 2
  %256 = add nuw nsw i64 %255, %251
  %.not130 = icmp samesign ult i64 %256, %233
  br i1 %.not130, label %257, label %odessy.chk5, !prof !45

257:                                              ; preds = %252
  %258 = or disjoint i64 %256, 1
  %.not131 = icmp samesign ult i64 %258, %233
  br i1 %.not131, label %259, label %odessy.chk6, !prof !45

259:                                              ; preds = %257
  %.not132 = icmp samesign ult i64 %256, %invariant.op
  br i1 %.not132, label %260, label %odessy.chk7, !prof !45

260:                                              ; preds = %259
  %261 = or disjoint i64 %256, 3
  %.not180 = icmp samesign ult i64 %261, %233
  br i1 %.not180, label %262, label %odessy.chk8, !prof !45

262:                                              ; preds = %260
  %263 = load i64, ptr %228, align 8, !range !43
  %.not133 = icmp samesign ult i64 %253, %263
  br i1 %.not133, label %264, label %odessy.chk9, !prof !45

264:                                              ; preds = %262
  %265 = getelementptr inbounds nuw i8, ptr %237, i64 %256
  %266 = load i32, ptr %265, align 1
  %267 = call i32 @llvm.bswap.i32(i32 %266)
  %268 = getelementptr inbounds nuw [4 x i8], ptr %229, i64 %253
  store i32 %267, ptr %268, align 4
  %269 = icmp eq i64 %254, 16
  br i1 %269, label %.preheader.preheader.preheader, label %252

.preheader.preheader.preheader:                   ; preds = %264
  %exit.mainloop.at = call i64 @llvm.umin.i64(i64 %263, i64 64)
  %270 = icmp samesign ugt i64 %263, 16
  br i1 %270, label %.preheader.preheader, label %postloop

.loopexit24:                                      ; preds = %386, %main.exit.selector
  %271 = load i64, ptr %reference.new4, align 8, !range !43
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %odessy.chk13, label %273, !prof !44

273:                                              ; preds = %.loopexit24
  %274 = load i32, ptr %219, align 8
  %275 = icmp eq i64 %271, 1
  br i1 %275, label %odessy.chk14, label %276, !prof !44

276:                                              ; preds = %273
  %277 = load i32, ptr %220, align 4
  %278 = icmp samesign ult i64 %271, 3
  br i1 %278, label %odessy.chk15, label %279, !prof !44

279:                                              ; preds = %276
  %280 = load i32, ptr %221, align 8
  %281 = icmp eq i64 %271, 3
  br i1 %281, label %odessy.chk16, label %282, !prof !44

282:                                              ; preds = %279
  %283 = load i32, ptr %222, align 4
  %284 = icmp samesign ult i64 %271, 5
  br i1 %284, label %odessy.chk17, label %285, !prof !44

285:                                              ; preds = %282
  %286 = load i32, ptr %223, align 8
  %287 = icmp eq i64 %271, 5
  br i1 %287, label %odessy.chk18, label %288, !prof !44

288:                                              ; preds = %285
  %289 = load i32, ptr %224, align 4
  %290 = icmp samesign ult i64 %271, 7
  br i1 %290, label %odessy.chk19, label %291, !prof !44

291:                                              ; preds = %288
  %292 = load i32, ptr %225, align 8
  %293 = icmp eq i64 %271, 7
  br i1 %293, label %odessy.chk20, label %294, !prof !44

294:                                              ; preds = %291
  %295 = load i32, ptr %226, align 4
  br i1 %.not212, label %odessy.chk21, label %.split, !prof !44

.preheader.preheader:                             ; preds = %.preheader.preheader.preheader, %.preheader.preheader
  %296 = phi i64 [ %297, %.preheader.preheader ], [ 16, %.preheader.preheader.preheader ]
  %297 = add nuw nsw i64 %296, 1
  %298 = getelementptr [4 x i8], ptr %229, i64 %296
  %299 = getelementptr i8, ptr %298, i64 -60
  %300 = load i32, ptr %299, align 4
  %301 = call i32 @llvm.fshl.i32(i32 %300, i32 %300, i32 25)
  %302 = call i32 @llvm.fshl.i32(i32 %300, i32 %300, i32 14)
  %303 = xor i32 %301, %302
  %304 = lshr i32 %300, 3
  %305 = xor i32 %303, %304
  %306 = getelementptr i8, ptr %298, i64 -8
  %307 = load i32, ptr %306, align 4
  %308 = call i32 @llvm.fshl.i32(i32 %307, i32 %307, i32 15)
  %309 = call i32 @llvm.fshl.i32(i32 %307, i32 %307, i32 13)
  %310 = xor i32 %308, %309
  %311 = lshr i32 %307, 10
  %312 = xor i32 %310, %311
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %296
  %313 = load i32, ptr %gep, align 4
  %gep235 = getelementptr [4 x i8], ptr %invariant.gep234, i64 %296
  %314 = load i32, ptr %gep235, align 4
  %315 = add i32 %305, %313
  %316 = add i32 %315, %314
  %317 = add i32 %316, %312
  store i32 %317, ptr %298, align 4
  %exitcond.not119 = icmp eq i64 %297, %exit.mainloop.at
  br i1 %exitcond.not119, label %main.exit.selector, label %.preheader.preheader

main.exit.selector:                               ; preds = %.preheader.preheader
  %318 = icmp samesign ult i64 %296, 63
  br i1 %318, label %postloop, label %.loopexit24

319:                                              ; preds = %.split
  %320 = add i32 %367, %274
  store i32 %320, ptr %219, align 8
  %321 = add i32 %337, %277
  store i32 %321, ptr %220, align 4
  %322 = add i32 %336, %280
  store i32 %322, ptr %221, align 8
  %323 = add i32 %335, %283
  store i32 %323, ptr %222, align 4
  %324 = add i32 %366, %286
  store i32 %324, ptr %223, align 8
  %325 = add i32 %333, %289
  store i32 %325, ptr %224, align 4
  %326 = add i32 %332, %292
  store i32 %326, ptr %225, align 8
  %327 = add i32 %331, %295
  store i32 %327, ptr %226, align 4
  %328 = icmp eq i64 %250, %234
  br i1 %328, label %.loopexit.thread, label %247

.split:                                           ; preds = %294, %.split
  %329 = phi i64 [ %347, %.split ], [ 0, %294 ]
  %330 = phi i32 [ %331, %.split ], [ %295, %294 ]
  %331 = phi i32 [ %332, %.split ], [ %292, %294 ]
  %332 = phi i32 [ %333, %.split ], [ %289, %294 ]
  %333 = phi i32 [ %366, %.split ], [ %286, %294 ]
  %334 = phi i32 [ %335, %.split ], [ %283, %294 ]
  %335 = phi i32 [ %336, %.split ], [ %280, %294 ]
  %336 = phi i32 [ %337, %.split ], [ %277, %294 ]
  %337 = phi i32 [ %367, %.split ], [ %274, %294 ]
  %338 = and i32 %333, %332
  %339 = xor i32 %333, -1
  %340 = and i32 %331, %339
  %341 = or i32 %338, %340
  %342 = call i32 @llvm.fshl.i32(i32 %333, i32 %333, i32 26)
  %343 = call i32 @llvm.fshl.i32(i32 %333, i32 %333, i32 21)
  %344 = xor i32 %342, %343
  %345 = call i32 @llvm.fshl.i32(i32 %333, i32 %333, i32 7)
  %346 = xor i32 %344, %345
  %347 = add nuw nsw i64 %329, 1
  %348 = getelementptr inbounds nuw [4 x i8], ptr %239, i64 %329
  %349 = load i32, ptr %348, align 4
  %350 = getelementptr inbounds nuw [4 x i8], ptr %229, i64 %329
  %351 = load i32, ptr %350, align 4
  %352 = add i32 %341, %330
  %353 = add i32 %352, %346
  %354 = add i32 %353, %349
  %355 = add i32 %354, %351
  %356 = call i32 @llvm.fshl.i32(i32 %337, i32 %337, i32 30)
  %357 = call i32 @llvm.fshl.i32(i32 %337, i32 %337, i32 19)
  %358 = xor i32 %356, %357
  %359 = call i32 @llvm.fshl.i32(i32 %337, i32 %337, i32 10)
  %360 = xor i32 %358, %359
  %361 = xor i32 %336, %335
  %362 = and i32 %337, %361
  %363 = and i32 %336, %335
  %364 = xor i32 %362, %363
  %365 = add i32 %360, %364
  %366 = add i32 %355, %334
  %367 = add i32 %365, %355
  %368 = icmp eq i64 %347, 64
  br i1 %368, label %319, label %.split

369:                                              ; preds = %193
  %370 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy = load ptr, ptr %370, align 8, !invariant.load !41
  call void %Destroy(ptr noalias nonnull %7, ptr %4) #2
  call swiftcc void @swift_unexpectedError(ptr nonnull %199, ptr nonnull @".str.19.sha256/sha256.swift", i64 19, i1 true, i64 3)
  unreachable

371:                                              ; preds = %54
  tail call void asm sideeffect "", "n"(i32 39) #2
  tail call void @llvm.trap()
  unreachable

372:                                              ; preds = %31
  tail call void asm sideeffect "", "n"(i32 40) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %entry
  tail call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %101
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %188
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %200
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %247
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %252
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %257
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %259
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %260
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %262
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %.preheader.preheader.postloop
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %376
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %385
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %.loopexit24
  call void @odessy.chk(i32 13)
  unreachable

odessy.chk14:                                     ; preds = %273
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk15:                                     ; preds = %276
  call void @odessy.chk(i32 15)
  unreachable

odessy.chk16:                                     ; preds = %279
  call void @odessy.chk(i32 16)
  unreachable

odessy.chk17:                                     ; preds = %282
  call void @odessy.chk(i32 17)
  unreachable

odessy.chk18:                                     ; preds = %285
  call void @odessy.chk(i32 18)
  unreachable

odessy.chk19:                                     ; preds = %288
  call void @odessy.chk(i32 19)
  unreachable

odessy.chk20:                                     ; preds = %291
  call void @odessy.chk(i32 20)
  unreachable

odessy.chk21:                                     ; preds = %294
  call void @odessy.chk(i32 21)
  unreachable

odessy.chk22:                                     ; preds = %.loopexit
  call void @odessy.chk(i32 22)
  unreachable

odessy.chk23:                                     ; preds = %141
  tail call void @odessy.chk(i32 23)
  unreachable

odessy.chk24:                                     ; preds = %117
  tail call void @odessy.chk(i32 24)
  unreachable

postloop:                                         ; preds = %.preheader.preheader.preheader, %main.exit.selector
  %.copy = phi i64 [ 16, %.preheader.preheader.preheader ], [ %exit.mainloop.at, %main.exit.selector ]
  %umax = call i64 @llvm.umax.i64(i64 %.copy, i64 %263)
  br label %.preheader.preheader.postloop

.preheader.preheader.postloop:                    ; preds = %386, %postloop
  %373 = phi i64 [ %374, %386 ], [ %.copy, %postloop ]
  %374 = add nuw i64 %373, 1
  %375 = add nsw i64 %373, -15
  %.not134.postloop = icmp samesign ult i64 %375, %263
  br i1 %.not134.postloop, label %376, label %odessy.chk10, !prof !45

376:                                              ; preds = %.preheader.preheader.postloop
  %377 = getelementptr inbounds nuw [4 x i8], ptr %229, i64 %375
  %378 = load i32, ptr %377, align 4
  %379 = call i32 @llvm.fshl.i32(i32 %378, i32 %378, i32 25)
  %380 = call i32 @llvm.fshl.i32(i32 %378, i32 %378, i32 14)
  %381 = xor i32 %379, %380
  %382 = lshr i32 %378, 3
  %383 = xor i32 %381, %382
  %384 = add nsw i64 %373, -2
  %.not135.postloop = icmp samesign ult i64 %384, %263
  br i1 %.not135.postloop, label %385, label %odessy.chk11, !prof !45

385:                                              ; preds = %376
  %exitcond85.not = icmp eq i64 %373, %umax
  br i1 %exitcond85.not, label %odessy.chk12, label %386, !prof !44

386:                                              ; preds = %385
  %387 = getelementptr inbounds nuw [4 x i8], ptr %229, i64 %384
  %388 = load i32, ptr %387, align 4
  %389 = call i32 @llvm.fshl.i32(i32 %388, i32 %388, i32 15)
  %390 = call i32 @llvm.fshl.i32(i32 %388, i32 %388, i32 13)
  %391 = xor i32 %389, %390
  %392 = lshr i32 %388, 10
  %393 = xor i32 %391, %392
  %gep.postloop = getelementptr [4 x i8], ptr %invariant.gep, i64 %373
  %394 = load i32, ptr %gep.postloop, align 4
  %gep235.postloop = getelementptr [4 x i8], ptr %invariant.gep234, i64 %373
  %395 = load i32, ptr %gep235.postloop, align 4
  %396 = add i32 %394, %383
  %397 = add i32 %396, %395
  %398 = add i32 %397, %393
  %399 = getelementptr inbounds nuw [4 x i8], ptr %229, i64 %373
  store i32 %398, ptr %399, align 4
  %400 = icmp eq i64 %374, 64
  br i1 %400, label %.loopexit24, label %.preheader.preheader.postloop, !llvm.loop !49, !loop_constrainer.loop.clone !41
}

declare swiftcc %swift.metadata_response @"$s10Foundation3URLVMa"(i64) local_unnamed_addr #0

declare swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"() local_unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: nounwind
declare ptr @swift_bridgeObjectRetain(ptr returned) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @swift_bridgeObjectRelease(ptr) local_unnamed_addr #2

define linkonce_odr hidden swiftcc ptr @"$sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5"(i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %2 = tail call swiftcc %swift.metadata_response @"$s10Foundation4DataV8IteratorVMa"(i64 0) #17
  %3 = extractvalue %swift.metadata_response %2, 0
  %4 = getelementptr inbounds i8, ptr %3, i64 -8
  %.valueWitnesses = load ptr, ptr %4, align 8, !invariant.load !41, !dereferenceable !42
  %5 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 64
  %size = load i64, ptr %5, align 8, !invariant.load !41
  %6 = alloca i8, i64 %size, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %7 = lshr i64 %1, 62
  %8 = trunc nuw nsw i64 %7 to i8
  switch i8 %8, label %default.unreachable1 [
    i8 0, label %9
    i8 1, label %12
    i8 2, label %18
    i8 3, label %.sink.split
  ]

default.unreachable1:                             ; preds = %entry
  unreachable

9:                                                ; preds = %entry
  %10 = lshr i64 %1, 48
  %11 = and i64 %10, 255
  br label %31

12:                                               ; preds = %entry
  %13 = trunc i64 %0 to i32
  %14 = lshr i64 %0, 32
  %15 = trunc nuw i64 %14 to i32
  %16 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %15, i32 %13)
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %odessy.chk2, label %26, !prof !44

18:                                               ; preds = %entry
  %19 = inttoptr i64 %0 to ptr
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %.upperBound = getelementptr inbounds nuw i8, ptr %19, i64 24
  %21 = load i64, ptr %.upperBound, align 8
  %22 = load i64, ptr %20, align 8
  %23 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %21, i64 %22)
  %24 = extractvalue { i64, i1 } %23, 0
  %25 = extractvalue { i64, i1 } %23, 1
  br i1 %25, label %odessy.chk, label %31, !prof !44

26:                                               ; preds = %12
  %27 = extractvalue { i32, i1 } %16, 0
  %28 = sext i32 %27 to i64
  br label %31

.sink.split:                                      ; preds = %31, %entry
  tail call void @"$s10Foundation4DataV15_RepresentationOWOe"(i64 %0, i64 %1)
  br label %29

29:                                               ; preds = %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit", %.sink.split
  %30 = phi ptr [ %42, %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit" ], [ @_swiftEmptyArrayStorage, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret ptr %30

31:                                               ; preds = %26, %18, %9
  %32 = phi i64 [ %28, %26 ], [ %11, %9 ], [ %24, %18 ]
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %.sink.split, label %34

34:                                               ; preds = %31
  %..i = tail call i64 @llvm.smax.i64(i64 %32, i64 0)
  %35 = icmp eq i64 %..i, 0
  br i1 %35, label %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit", label %36

36:                                               ; preds = %34
  %37 = tail call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMR") #18
  %38 = add nuw i64 %..i, 32
  %39 = tail call noalias ptr @swift_allocObject(ptr %37, i64 %38, i64 7) #2
  %call.i.i = tail call i64 @malloc_size(ptr noundef %39) #20, !clang.arc.no_objc_arc_exceptions !41
  %gepdiff.i = shl i64 %call.i.i, 1
  %40 = add i64 %gepdiff.i, -64
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i64 %32, ptr %41, align 8
  %._storage1._capacityAndFlags.i = getelementptr inbounds nuw i8, ptr %39, i64 24
  store i64 %40, ptr %._storage1._capacityAndFlags.i, align 8
  br label %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit"

"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit": ; preds = %34, %36
  %42 = phi ptr [ %39, %36 ], [ @_swiftEmptyArrayStorage, %34 ]
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 32
  %44 = ptrtoint ptr %43 to i64
  %45 = icmp sgt i64 %32, -1
  tail call void @llvm.assume(i1 %45)
  %46 = call swiftcc i64 @"$s10Foundation4DataV13_copyContents12initializingAC8IteratorV_SitSrys5UInt8VG_tF"(ptr noalias nonnull %6, i64 %44, i64 %32, i64 %0, i64 %1)
  call void @"$s10Foundation4DataV15_RepresentationOWOe"(i64 %0, i64 %1)
  %47 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy = load ptr, ptr %47, align 8, !invariant.load !41
  call void %Destroy(ptr noalias nonnull %6, ptr nonnull %3) #2
  %.not = icmp eq i64 %46, %32
  br i1 %.not, label %29, label %odessy.chk1, !prof !45

odessy.chk:                                       ; preds = %18
  tail call void @odessy.chk(i32 25)
  unreachable

odessy.chk1:                                      ; preds = %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit"
  call void @odessy.chk(i32 26)
  unreachable

odessy.chk2:                                      ; preds = %12
  tail call void @odessy.chk(i32 27)
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i32 @"$s6sha2564rotrys6UInt32VAD_ADtF"(i32 %0, i32 %1) local_unnamed_addr #3 {
entry:
  %2 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 32, i32 %1)
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %odessy.chk, label %4, !prof !44

4:                                                ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %or.cond = icmp ugt i32 %1, 31
  %6 = and i32 %1, 31
  %7 = lshr i32 %0, %6
  %8 = select i1 %or.cond, i32 0, i32 %7, !prof !54
  %or.cond4 = icmp ugt i32 %5, 31
  %9 = and i32 %5, 31
  %10 = shl i32 %0, %9
  %11 = select i1 %or.cond4, i32 0, i32 %10, !prof !54
  %12 = or i32 %11, %8
  ret i32 %12

odessy.chk:                                       ; preds = %entry
  tail call void @odessy.chk(i32 28)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSS_SiTg5"(i64 %0, ptr %1, i64 %2) local_unnamed_addr #4 {
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
  br i1 %11, label %16, label %12, !prof !45

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
  br i1 %.not3, label %36, label %32, !prof !44

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

declare swiftcc void @"$s10Foundation3URLV15fileURLWithPathACSSh_tcfC"(ptr noalias sret(%swift.opaque), i64, ptr) local_unnamed_addr #0

declare swiftcc { i64, i64 } @"$s10Foundation4DataV10contentsOf7optionsAcA3URLVh_So20NSDataReadingOptionsVtKcfC"(ptr noalias, i64, ptr swiftself, ptr noalias swifterror captures(none) dereferenceable(8)) local_unnamed_addr #0

declare swiftcc void @swift_unexpectedError(ptr, ptr, i64, i1, i64) local_unnamed_addr #0

; Function Attrs: noinline
declare swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZ"(i64, ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @swift_beginAccess(ptr, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

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
  %16 = tail call swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr %15, i64 %11, ptr null, ptr null) #21
  store atomic ptr %16, ptr %0 monotonic, align 8
  br label %7
}

; Function Attrs: nounwind memory(argmem: readwrite)
declare swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr, i64, ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn
declare ptr @swift_initStackObject(ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #5

; Function Attrs: mustprogress nounwind willreturn
declare void @swift_setDeallocating(ptr) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @swift_allocObject(ptr, i64, i64) local_unnamed_addr #2

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @swift_release(ptr) local_unnamed_addr #2

; Function Attrs: noinline
declare swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swift_Builtin_float"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftObjectiveC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCoreFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftDispatch"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftXPC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftIOKit"()

declare swiftcc %swift.metadata_response @"$s10Foundation4DataV8IteratorVMa"(i64) local_unnamed_addr #0

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
  br i1 %8, label %odessy.chk1, label %9, !prof !44

9:                                                ; preds = %7
  %10 = icmp eq i64 %1, 1
  br i1 %10, label %.loopexit, label %11, !prof !44

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
  br i1 %or.cond, label %28, label %41, !prof !47

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
  br i1 %36, label %.loopexit, label %37, !prof !44

37:                                               ; preds = %31
  %38 = extractvalue { i64, i1 } %35, 0
  %39 = getelementptr inbounds nuw i8, ptr %23, i64 1
  %40 = icmp eq ptr %39, %21
  br i1 %40, label %.loopexit, label %22

41:                                               ; preds = %22
  %42 = icmp ugt i8 %25, 64
  %43 = icmp ult i8 %25, %18
  %or.cond4 = select i1 %42, i1 %43, i1 false
  br i1 %or.cond4, label %28, label %44, !prof !47

44:                                               ; preds = %41
  %45 = icmp ugt i8 %25, 96
  %46 = icmp ult i8 %25, %17
  %or.cond5 = select i1 %45, i1 %46, i1 false
  br i1 %or.cond5, label %28, label %.loopexit, !prof !47

.loopexit:                                        ; preds = %111, %114, %120, %127, %28, %31, %37, %44, %71, %74, %80, %87, %92, %53, %51, %9
  %47 = phi i64 [ 0, %9 ], [ 0, %51 ], [ 0, %53 ], [ 0, %92 ], [ 0, %44 ], [ 0, %87 ], [ %81, %80 ], [ 0, %74 ], [ 0, %71 ], [ %38, %37 ], [ 0, %31 ], [ 0, %28 ], [ 0, %127 ], [ %121, %120 ], [ 0, %114 ], [ 0, %111 ]
  %48 = phi i8 [ 1, %9 ], [ 1, %51 ], [ 0, %53 ], [ 1, %92 ], [ 1, %44 ], [ 1, %87 ], [ 0, %80 ], [ 1, %74 ], [ 1, %71 ], [ 0, %37 ], [ 1, %31 ], [ 1, %28 ], [ 1, %127 ], [ 0, %120 ], [ 1, %114 ], [ 1, %111 ]
  %49 = insertvalue { i64, i8 } undef, i64 %47, 0
  %50 = insertvalue { i64, i8 } %49, i8 %48, 1
  ret { i64, i8 } %50

51:                                               ; preds = %entry
  %52 = icmp eq i64 %1, 0
  br i1 %52, label %.loopexit, label %53, !prof !44

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
  br i1 %or.cond6, label %71, label %84, !prof !47

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
  br i1 %79, label %.loopexit, label %80, !prof !44

80:                                               ; preds = %74
  %81 = extractvalue { i64, i1 } %78, 0
  %82 = getelementptr inbounds nuw i8, ptr %66, i64 1
  %83 = icmp eq ptr %82, %64
  br i1 %83, label %.loopexit, label %65

84:                                               ; preds = %65
  %85 = icmp ugt i8 %68, 64
  %86 = icmp ult i8 %68, %60
  %or.cond7 = select i1 %85, i1 %86, i1 false
  br i1 %or.cond7, label %71, label %87, !prof !47

87:                                               ; preds = %84
  %88 = icmp ugt i8 %68, 96
  %89 = icmp ult i8 %68, %59
  %or.cond8 = select i1 %88, i1 %89, i1 false
  br i1 %or.cond8, label %71, label %.loopexit, !prof !47

90:                                               ; preds = %entry
  %91 = icmp slt i64 %1, 1
  br i1 %91, label %odessy.chk, label %92, !prof !44

92:                                               ; preds = %90
  %93 = icmp eq i64 %1, 1
  br i1 %93, label %.loopexit, label %94, !prof !44

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
  br i1 %or.cond9, label %111, label %124, !prof !47

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
  br i1 %119, label %.loopexit, label %120, !prof !44

120:                                              ; preds = %114
  %121 = extractvalue { i64, i1 } %118, 0
  %122 = getelementptr inbounds nuw i8, ptr %106, i64 1
  %123 = icmp eq ptr %122, %104
  br i1 %123, label %.loopexit, label %105

124:                                              ; preds = %105
  %125 = icmp ugt i8 %108, 64
  %126 = icmp ult i8 %108, %101
  %or.cond10 = select i1 %125, i1 %126, i1 false
  br i1 %or.cond10, label %111, label %127, !prof !47

127:                                              ; preds = %124
  %128 = icmp ugt i8 %108, 96
  %129 = icmp ult i8 %108, %100
  %or.cond11 = select i1 %128, i1 %129, i1 false
  br i1 %or.cond11, label %111, label %.loopexit, !prof !47

odessy.chk:                                       ; preds = %90
  tail call void @odessy.chk(i32 29)
  unreachable

odessy.chk1:                                      ; preds = %7
  tail call void @odessy.chk(i32 30)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingyS2SFZ"(i64 %0, ptr %1) local_unnamed_addr #4 {
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

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingySSSsFZ"(i64 %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #4 {
entry:
  %4 = alloca %Ts16IndexingIteratorVySs8UTF8ViewVG, align 8
  %5 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = and i64 %6, 1152921504606846976
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %26, label %9, !prof !45

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
  br i1 %.not, label %19, label %odessy.chk, !prof !45

19:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %._crit_edge

._crit_edge:                                      ; preds = %9, %19
  %20 = phi ptr [ %13, %19 ], [ @_swiftEmptyArrayStorage, %9 ]
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %22 = ptrtoint ptr %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %24 = load i64, ptr %23, align 8, !range !43
  %25 = tail call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %22, i64 %24), !noalias !55
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
  br i1 %.not5, label %32, label %36, !prof !44

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
  tail call void @odessy.chk(i32 32)
  unreachable
}

declare swiftcc i64 @"$sSs8UTF8ViewV8distance4from2toSiSS5IndexV_AGtF"(i64, i64, i64, i64, i64, ptr) local_unnamed_addr #0

define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %. = tail call i64 @llvm.smax.i64(i64 %1, i64 %0)
  %2 = icmp eq i64 %., 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %entry
  %4 = tail call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMR") #18
  %5 = add i64 %., 32
  %6 = tail call noalias ptr @swift_allocObject(ptr %4, i64 %5, i64 7) #2
  %call.i = tail call i64 @malloc_size(ptr noundef %6) #20, !clang.arc.no_objc_arc_exceptions !41
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
  br i1 %13, label %odessy.chk, label %15, !prof !44

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
  br i1 %.not13, label %.split.us.split.split.us.split.us, label %.split.us.split.split.us.split, !prof !44

.split.us.split.split.us.split.us:                ; preds = %.split.us.split.split.us, %62
  %36 = phi ptr [ %64, %62 ], [ %10, %.split.us.split.split.us ]
  %37 = phi i64 [ %59, %62 ], [ %3, %.split.us.split.split.us ]
  %38 = phi i64 [ %63, %62 ], [ 1, %.split.us.split.split.us ]
  %39 = and i64 %37, 12
  %.not.us.us.us = icmp eq i64 %39, %26
  br i1 %.not.us.us.us, label %40, label %42, !prof !44

40:                                               ; preds = %.split.us.split.split.us.split.us
  %41 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %37, i64 %.fr17, ptr %.fr16)
  br label %42

42:                                               ; preds = %40, %.split.us.split.split.us.split.us
  %43 = phi i64 [ %41, %40 ], [ %37, %.split.us.split.split.us.split.us ]
  %44 = lshr i64 %43, 14
  %45 = icmp samesign uge i64 %44, %16
  %46 = icmp samesign ult i64 %44, %14
  %.not7.us.us.us = and i1 %45, %46
  br i1 %.not7.us.us.us, label %47, label %odessy.chk1, !prof !45

47:                                               ; preds = %42
  %48 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %.fr17, ptr %.fr16)
  %49 = extractvalue { i64, i64 } %48, 0
  %50 = lshr i64 %43, 16
  %51 = inttoptr i64 %49 to ptr
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 %50
  %53 = load i8, ptr %52, align 1
  br i1 %.not.us.us.us, label %54, label %56, !prof !44

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
  br i1 %.not.us.us, label %71, label %.thread, !prof !44

71:                                               ; preds = %66
  %72 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %68, i64 %.fr17, ptr %.fr16)
  %73 = lshr i64 %72, 14
  %74 = icmp samesign uge i64 %73, %16
  %75 = icmp samesign ult i64 %73, %14
  %.not7.us.us = and i1 %74, %75
  br i1 %.not7.us.us, label %82, label %odessy.chk1, !prof !45

.thread:                                          ; preds = %66
  %76 = lshr i64 %68, 14
  %77 = icmp samesign uge i64 %76, %16
  %78 = icmp samesign ult i64 %76, %14
  %.not7.us.us37 = and i1 %77, %78
  br i1 %.not7.us.us37, label %.thread38, label %odessy.chk1, !prof !45

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
  br i1 %.not.us, label %101, label %103, !prof !44

101:                                              ; preds = %.split.us.split.split
  %102 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %98, i64 %.fr17, ptr %.fr16)
  br label %103

103:                                              ; preds = %101, %.split.us.split.split
  %104 = phi i64 [ %102, %101 ], [ %98, %.split.us.split.split ]
  %105 = lshr i64 %104, 14
  %106 = icmp samesign uge i64 %105, %16
  %107 = icmp samesign ult i64 %105, %14
  %.not7.us = and i1 %106, %107
  br i1 %.not7.us, label %108, label %odessy.chk1, !prof !45

108:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.fr17, ptr %7, align 8
  store i64 %28, ptr %.elt6, align 8
  %109 = lshr i64 %104, 16
  %110 = getelementptr inbounds nuw i8, ptr %7, i64 %109
  %111 = load i8, ptr %110, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %.not.us, label %112, label %114, !prof !44

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
  br i1 %.not, label %127, label %129, !prof !44

127:                                              ; preds = %.split
  %128 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %124, i64 %.fr17, ptr %.fr16)
  br label %129

129:                                              ; preds = %127, %.split
  %130 = phi i64 [ %128, %127 ], [ %124, %.split ]
  %131 = lshr i64 %130, 14
  %132 = icmp samesign uge i64 %131, %16
  %133 = icmp samesign ult i64 %131, %14
  %.not7 = and i1 %132, %133
  br i1 %.not7, label %134, label %odessy.chk1, !prof !45

134:                                              ; preds = %129
  %135 = tail call swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64 %130, i64 %.fr17, ptr %.fr16)
  br i1 %.not, label %136, label %138, !prof !44

136:                                              ; preds = %134
  %137 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %124, i64 %.fr17, ptr %.fr16)
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i64 [ %137, %136 ], [ %124, %134 ]
  %140 = lshr i64 %139, 16
  %.not15 = icmp samesign ult i64 %140, %35
  br i1 %.not15, label %141, label %odessy.chk2, !prof !45

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

.loopexit17:                                      ; preds = %143, %141, %114, %118, %92, %87, %60, %56, %15, %9, %entry
  %.sink = phi i64 [ %3, %entry ], [ %3, %15 ], [ %3, %9 ], [ %117, %114 ], [ %91, %92 ], [ %59, %60 ], [ %59, %56 ], [ %91, %87 ], [ %117, %118 ], [ %142, %141 ], [ %142, %143 ]
  %148 = phi i64 [ 0, %entry ], [ 0, %15 ], [ 0, %9 ], [ %2, %114 ], [ %69, %92 ], [ %38, %60 ], [ %2, %56 ], [ %2, %87 ], [ %99, %118 ], [ %125, %143 ], [ %2, %141 ]
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
  tail call void @odessy.chk(i32 33)
  unreachable

odessy.chk1:                                      ; preds = %129, %103, %71, %.thread, %42
  tail call void @odessy.chk(i32 34)
  unreachable

odessy.chk2:                                      ; preds = %138
  tail call void @odessy.chk(i32 35)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %0, i64 %1, ptr %2) local_unnamed_addr #4 {
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

; Function Attrs: sspreq
declare swiftcc i64 @"$s10Foundation4DataV13_copyContents12initializingAC8IteratorV_SitSrys5UInt8VG_tF"(ptr noalias, i64, i64, i64, i64) local_unnamed_addr #10

; Function Attrs: noinline nounwind
define linkonce_odr hidden void @"$s10Foundation4DataV15_RepresentationOWOe"(i64 %0, i64 %1) local_unnamed_addr #11 {
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #5

declare swiftcc { i64, ptr } @"$sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufC"(ptr noalias, ptr, ptr, ptr) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @swift_errorRelease(ptr) local_unnamed_addr #2

declare swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64, i64) local_unnamed_addr #0

; Function Attrs: noinline
declare swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64, i64, ptr) local_unnamed_addr #4

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64, i64, ptr) local_unnamed_addr #4

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex_8offsetBySS0D0VAF_SitF"(i64, i64, i64, ptr) local_unnamed_addr #4

declare swiftcc i64 @"$sSS9UTF16ViewV5index_8offsetBySS5IndexVAF_SitF"(i64, i64, i64, ptr) local_unnamed_addr #0

declare swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64, i64, i64, ptr) local_unnamed_addr #0

; Function Attrs: optsize
declare i64 @malloc_size(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

attributes #0 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #4 = { noinline "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #5 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #7 = { nounwind memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind willreturn }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { sspreq "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #11 = { noinline nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #12 = { optsize "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind memory(none) }
attributes #18 = { nounwind memory(read) }
attributes #19 = { nounwind willreturn }
attributes #20 = { optsize }
attributes #21 = { nounwind memory(argmem: read) }

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
!41 = !{}
!42 = !{i64 88}
!43 = !{i64 0, i64 9223372036854775807}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!46 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!47 = !{!"branch_weights", i32 2000, i32 2002}
!48 = !{!"branch_weights", !"expected", i32 1271136, i32 2146212512}
!49 = distinct !{!49, !50, !51, !52, !53}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!"llvm.loop.vectorize.enable", i1 false}
!52 = !{!"llvm.loop.licm_versioning.disable"}
!53 = !{!"llvm.loop.distribute.enable", i1 false}
!54 = !{!"branch_weights", i32 2002, i32 2000}
!55 = !{!56}
!56 = distinct !{!56, !57, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_: argument 0"}
!57 = distinct !{!57, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_"}
