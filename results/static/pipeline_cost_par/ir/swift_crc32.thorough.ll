; ModuleID = 'results/static/pipeline_cost_par/ir/swift_crc32.thorough.mid.ll'
source_filename = "results/static/pipeline_cost_par/ir/swift_crc32.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TSi = type <{ i64 }>
%TSa = type <{ %Ts22_ContiguousArrayBufferV }>
%Ts22_ContiguousArrayBufferV = type <{ ptr }>
%swift.type = type { i64 }
%Ts6UInt32V = type <{ i32 }>
%swift.type_descriptor = type opaque
%struct._SwiftEmptyArrayStorage = type { %struct.HeapObject, %struct._SwiftArrayBodyStorage }
%struct.HeapObject = type { ptr, %struct.InlineRefCountsPlaceholder }
%struct.InlineRefCountsPlaceholder = type { i64 }
%struct._SwiftArrayBodyStorage = type { i64, i64 }
%Ts6UInt64V = type <{ i64 }>
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
%Ts5UInt8V = type <{ i8 }>

@"$s11swift_crc325itersSivp" = hidden local_unnamed_addr global %TSi zeroinitializer, align 8
@".str.23.swift_crc32/crc32.swift" = private unnamed_addr constant [24 x i8] c"swift_crc32/crc32.swift\00"
@"$s11swift_crc324dataSays5UInt8VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$ss6UInt32VN" = external global %swift.type, align 8
@"$s11swift_crc322t0Says6UInt32VGvp" = hidden global %TSa zeroinitializer, align 8
@"$s11swift_crc322t1Says6UInt32VGvp" = hidden global %TSa zeroinitializer, align 8
@"$s11swift_crc322t2Says6UInt32VGvp" = hidden global %TSa zeroinitializer, align 8
@"$s11swift_crc322t3Says6UInt32VGvp" = hidden global %TSa zeroinitializer, align 8
@"$s11swift_crc325finals6UInt32Vvp" = hidden local_unnamed_addr global %Ts6UInt32V zeroinitializer, align 4
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = linkonce_odr hidden constant ptr @"$ss23_ContiguousArrayStorageCMn"
@"symbolic _____yypG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____yypG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"yypG", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCyypGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____yypG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCyypGMD" to i64)) to i32), i32 -9 }, align 8
@"\01l_entry_point" = private constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @main to i64), i64 ptrtoint (ptr @"\01l_entry_point" to i64)) to i32), i32 0 }, section "swift5_entry", align 4
@"$ss6UInt32VMn" = external global %swift.type_descriptor, align 4
@"got.$ss6UInt32VMn" = linkonce_odr hidden constant ptr @"$ss6UInt32VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss6UInt32VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys6UInt32VGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys6UInt32VGMD" to i64)) to i32), i32 -12 }, align 8
@_swiftEmptyArrayStorage = external global %struct._SwiftEmptyArrayStorage, align 8
@"$ss5UInt8VMn" = external global %swift.type_descriptor, align 4
@"got.$ss5UInt8VMn" = linkonce_odr hidden constant ptr @"$ss5UInt8VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss5UInt8VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys5UInt8VGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys5UInt8VGMD" to i64)) to i32), i32 -12 }, align 8
@"$s20FoundationEssentials4DataV8IteratorVMn" = external global %swift.type_descriptor, align 4
@"got.$s20FoundationEssentials4DataV8IteratorVMn" = linkonce_odr hidden constant ptr @"$s20FoundationEssentials4DataV8IteratorVMn"
@"symbolic ______Sit 20FoundationEssentials4DataV8IteratorV" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$s20FoundationEssentials4DataV8IteratorVMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic ______Sit 20FoundationEssentials4DataV8IteratorV", i32 0, i32 1) to i64)) to i32), [4 x i8] c"_Sit", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$s20FoundationEssentials4DataV8IteratorV_SitMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic ______Sit 20FoundationEssentials4DataV8IteratorV" to i64), i64 ptrtoint (ptr @"$s20FoundationEssentials4DataV8IteratorV_SitMD" to i64)) to i32), i32 -9 }, align 8
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
  %access-scratch = alloca [24 x i8], align 8
  %access-scratch15 = alloca [24 x i8], align 8
  %access-scratch20 = alloca [24 x i8], align 8
  %access-scratch25 = alloca [24 x i8], align 8
  %access-scratch32 = alloca [24 x i8], align 8
  %access-scratch36 = alloca [24 x i8], align 8
  %2 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %3 = tail call swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"()
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = load i64, ptr %4, align 8, !range !9
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %591, label %7, !prof !10

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
  br label %592

20:                                               ; preds = %7
  %21 = and i64 %12, 1152921504606846976
  %.not99 = icmp eq i64 %21, 0
  br i1 %.not99, label %22, label %.thread134, !prof !11

22:                                               ; preds = %20
  br i1 %.not, label %26, label %23

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.elt49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %24 = and i64 %12, 72057594037927935
  store i64 %9, ptr %2, align 8
  store i64 %24, ptr %.elt49, align 8
  %25 = trunc i64 %9 to i8
  switch i8 %25, label %58 [
    i8 45, label %28
    i8 43, label %57
  ]

26:                                               ; preds = %22
  %27 = and i64 %9, 1152921504606846976
  %.not97 = icmp eq i64 %27, 0
  br i1 %.not97, label %102, label %99, !prof !10

28:                                               ; preds = %23
  switch i64 %16, label %29 [
    i64 0, label %604
    i64 1, label %.thread137
  ], !prof !12

29:                                               ; preds = %28
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %31 = getelementptr i8, ptr %2, i64 %16
  br label %40

.thread137:                                       ; preds = %58, %57, %28
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %32

.loopexit140:                                     ; preds = %76, %71, %68, %63, %53, %48, %45, %40, %95, %90, %87, %82
  %.sroa.17.0 = phi i8 [ 1, %40 ], [ 1, %82 ], [ 0, %95 ], [ 1, %90 ], [ 1, %87 ], [ 0, %53 ], [ 1, %48 ], [ 1, %45 ], [ 0, %76 ], [ 1, %71 ], [ 1, %68 ], [ 1, %63 ]
  %.sroa.0.0 = phi i64 [ 0, %40 ], [ 0, %82 ], [ %96, %95 ], [ 0, %90 ], [ 0, %87 ], [ %54, %53 ], [ 0, %48 ], [ 0, %45 ], [ %77, %76 ], [ 0, %71 ], [ 0, %68 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %32

32:                                               ; preds = %.thread, %.loopexit140, %.thread137
  %.sroa.0.2133 = phi i64 [ %110, %.thread ], [ %.sroa.0.0, %.loopexit140 ], [ 0, %.thread137 ]
  %.sroa.17.2132 = phi i8 [ %109, %.thread ], [ %.sroa.17.0, %.loopexit140 ], [ 1, %.thread137 ]
  call void @swift_bridgeObjectRelease(ptr %10) #2
  br label %36

.thread134:                                       ; preds = %20
  %33 = tail call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSSSiADSSRszsAER_r0_lIetgyr_Tpq5Si_Tg5"(i64 %9, ptr %10, i64 10)
  tail call void @swift_bridgeObjectRelease(ptr %10) #2
  %34 = extractvalue { i64, i8 } %33, 0
  %35 = extractvalue { i64, i8 } %33, 1
  br label %36

36:                                               ; preds = %.thread134, %32
  %37 = phi i64 [ %34, %.thread134 ], [ %.sroa.0.2133, %32 ]
  %38 = phi i8 [ %35, %.thread134 ], [ %.sroa.17.2132, %32 ]
  %39 = icmp eq i8 %38, 1
  br i1 %39, label %592, label %111

40:                                               ; preds = %53, %29
  %41 = phi ptr [ %30, %29 ], [ %55, %53 ]
  %42 = phi i64 [ 0, %29 ], [ %54, %53 ]
  %43 = load i8, ptr %41, align 1
  %44 = add i8 %43, -48
  %or.cond = icmp ult i8 %44, 10
  br i1 %or.cond, label %45, label %.loopexit140, !prof !13

45:                                               ; preds = %40
  %46 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %42, i64 10)
  %47 = extractvalue { i64, i1 } %46, 1
  br i1 %47, label %.loopexit140, label %48

48:                                               ; preds = %45
  %49 = extractvalue { i64, i1 } %46, 0
  %50 = zext nneg i8 %44 to i64
  %51 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %49, i64 %50)
  %52 = extractvalue { i64, i1 } %51, 1
  br i1 %52, label %.loopexit140, label %53, !prof !10

53:                                               ; preds = %48
  %54 = extractvalue { i64, i1 } %51, 0
  %55 = getelementptr inbounds nuw i8, ptr %41, i64 1
  %56 = icmp eq ptr %55, %31
  br i1 %56, label %.loopexit140, label %40

57:                                               ; preds = %23
  switch i64 %16, label %60 [
    i64 0, label %603
    i64 1, label %.thread137
  ], !prof !12

58:                                               ; preds = %23
  %59 = icmp eq i64 %16, 0
  br i1 %59, label %.thread137, label %80, !prof !10

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %62 = getelementptr i8, ptr %2, i64 %16
  br label %63

63:                                               ; preds = %76, %60
  %64 = phi ptr [ %61, %60 ], [ %78, %76 ]
  %65 = phi i64 [ 0, %60 ], [ %77, %76 ]
  %66 = load i8, ptr %64, align 1
  %67 = add i8 %66, -48
  %or.cond54 = icmp ult i8 %67, 10
  br i1 %or.cond54, label %68, label %.loopexit140, !prof !13

68:                                               ; preds = %63
  %69 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %65, i64 10)
  %70 = extractvalue { i64, i1 } %69, 1
  br i1 %70, label %.loopexit140, label %71

71:                                               ; preds = %68
  %72 = extractvalue { i64, i1 } %69, 0
  %73 = zext nneg i8 %67 to i64
  %74 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %72, i64 %73)
  %75 = extractvalue { i64, i1 } %74, 1
  br i1 %75, label %.loopexit140, label %76, !prof !10

76:                                               ; preds = %71
  %77 = extractvalue { i64, i1 } %74, 0
  %78 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %79 = icmp eq ptr %78, %62
  br i1 %79, label %.loopexit140, label %63

80:                                               ; preds = %58
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 %16
  br label %82

82:                                               ; preds = %95, %80
  %83 = phi ptr [ %2, %80 ], [ %97, %95 ]
  %84 = phi i64 [ 0, %80 ], [ %96, %95 ]
  %85 = load i8, ptr %83, align 1
  %86 = add i8 %85, -48
  %or.cond55 = icmp ult i8 %86, 10
  br i1 %or.cond55, label %87, label %.loopexit140, !prof !13

87:                                               ; preds = %82
  %88 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %84, i64 10)
  %89 = extractvalue { i64, i1 } %88, 1
  br i1 %89, label %.loopexit140, label %90

90:                                               ; preds = %87
  %91 = extractvalue { i64, i1 } %88, 0
  %92 = zext nneg i8 %86 to i64
  %93 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %91, i64 %92)
  %94 = extractvalue { i64, i1 } %93, 1
  br i1 %94, label %.loopexit140, label %95, !prof !10

95:                                               ; preds = %90
  %96 = extractvalue { i64, i1 } %93, 0
  %97 = getelementptr inbounds nuw i8, ptr %83, i64 1
  %98 = icmp eq ptr %97, %81
  br i1 %98, label %.loopexit140, label %82

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
  store i64 %37, ptr @"$s11swift_crc325itersSivp", align 8
  %112 = call swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"()
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 16
  %114 = load i64, ptr %113, align 8, !range !9
  %115 = icmp samesign ult i64 %114, 3
  br i1 %115, label %593, label %116, !prof !10

116:                                              ; preds = %111
  %117 = getelementptr inbounds nuw i8, ptr %112, i64 64
  %118 = load i64, ptr %117, align 8
  %._guts2._object._object = getelementptr inbounds nuw i8, ptr %112, i64 72
  %119 = load ptr, ptr %._guts2._object._object, align 8
  %120 = call ptr @swift_bridgeObjectRetain(ptr returned %119) #2
  call void @swift_release(ptr nonnull %112) #2
  %121 = call swiftcc { ptr, i64 } @"$s20FoundationEssentials3URLV15fileURLWithPathACSSh_tcfC"(i64 %118, ptr %119)
  call void @swift_bridgeObjectRelease(ptr %119) #2
  %122 = extractvalue { ptr, i64 } %121, 0
  %123 = extractvalue { ptr, i64 } %121, 1
  %124 = call swiftcc { i64, i64 } @"$s20FoundationEssentials4DataV10contentsOf7optionsAcA3URLVh_AC14ReadingOptionsVtKcfC"(ptr %122, i64 %123, i64 0, ptr swiftself undef, ptr noalias nonnull swifterror captures(none) dereferenceable(8) %swifterror)
  %125 = load ptr, ptr %swifterror, align 8
  %.not100 = icmp eq ptr %125, null
  call void @swift_release(ptr %122) #2
  br i1 %.not100, label %126, label %589

126:                                              ; preds = %116
  %127 = extractvalue { i64, i64 } %124, 1
  %128 = extractvalue { i64, i64 } %124, 0
  %129 = inttoptr i64 %123 to ptr
  call void @swift_release(ptr %129) #2
  %130 = call swiftcc ptr @"$ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlF20FoundationEssentials4DataV_Tgq5"(i64 %128, i64 %127)
  call void @"$s20FoundationEssentials4DataV15_RepresentationOWOe"(i64 %128, i64 %127)
  store ptr %130, ptr @"$s11swift_crc324dataSays5UInt8VGvp", align 8
  %131 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64 256, ptr nonnull @"$ss6UInt32VN")
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 16
  store i64 256, ptr %132, align 8
  %133 = getelementptr i8, ptr %131, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %133, i8 0, i64 1024, i1 false)
  store ptr %131, ptr @"$s11swift_crc322t0Says6UInt32VGvp", align 8
  %134 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64 256, ptr nonnull @"$ss6UInt32VN")
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 16
  store i64 256, ptr %135, align 8
  %136 = getelementptr i8, ptr %134, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %136, i8 0, i64 1024, i1 false)
  store ptr %134, ptr @"$s11swift_crc322t1Says6UInt32VGvp", align 8
  %137 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64 256, ptr nonnull @"$ss6UInt32VN")
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 16
  store i64 256, ptr %138, align 8
  %139 = getelementptr i8, ptr %137, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %139, i8 0, i64 1024, i1 false)
  store ptr %137, ptr @"$s11swift_crc322t2Says6UInt32VGvp", align 8
  %140 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64 256, ptr nonnull @"$ss6UInt32VN")
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 16
  store i64 256, ptr %141, align 8
  %142 = getelementptr i8, ptr %140, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %142, i8 0, i64 1024, i1 false)
  store ptr %140, ptr @"$s11swift_crc322t3Says6UInt32VGvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch)
  call void @swift_beginAccess(ptr nonnull @"$s11swift_crc322t0Says6UInt32VGvp", ptr nonnull %access-scratch, i64 33, ptr null) #2
  %143 = load ptr, ptr @"$s11swift_crc322t0Says6UInt32VGvp", align 8
  %144 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %143) #16
  store ptr %143, ptr @"$s11swift_crc322t0Says6UInt32VGvp", align 8
  br i1 %144, label %.split, label %145

145:                                              ; preds = %126
  %146 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFs6UInt32V_Tg5"(ptr %143)
  br label %.split

.split:                                           ; preds = %145, %126
  %147 = phi ptr [ %146, %145 ], [ %143, %126 ]
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 16
  %149 = getelementptr inbounds nuw i8, ptr %147, i64 32
  %.pre = load i64, ptr %148, align 8, !range !9
  %min.iters.check = icmp samesign ult i64 %.pre, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.split
  %.ph = phi i64 [ 0, %.split ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.split
  %umin = call i64 @llvm.umin.i64(i64 %.pre, i64 255)
  %150 = add nuw nsw i64 %umin, 1
  %n.mod.vf = and i64 %150, 3
  %151 = icmp eq i64 %n.mod.vf, 0
  %152 = select i1 %151, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %150, %152
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %153 = and <4 x i32> %vec.ind, splat (i32 1)
  %154 = icmp eq <4 x i32> %153, zeroinitializer
  %155 = lshr <4 x i32> %vec.ind, splat (i32 1)
  %156 = xor <4 x i32> %155, splat (i32 -306674912)
  %157 = select <4 x i1> %154, <4 x i32> %155, <4 x i32> %156
  %158 = and <4 x i32> %157, splat (i32 1)
  %159 = icmp eq <4 x i32> %158, zeroinitializer
  %160 = lshr <4 x i32> %157, splat (i32 1)
  %161 = xor <4 x i32> %160, splat (i32 -306674912)
  %162 = select <4 x i1> %159, <4 x i32> %160, <4 x i32> %161
  %163 = and <4 x i32> %162, splat (i32 1)
  %164 = icmp eq <4 x i32> %163, zeroinitializer
  %165 = lshr <4 x i32> %162, splat (i32 1)
  %166 = xor <4 x i32> %165, splat (i32 -306674912)
  %167 = select <4 x i1> %164, <4 x i32> %165, <4 x i32> %166
  %168 = and <4 x i32> %167, splat (i32 1)
  %169 = icmp eq <4 x i32> %168, zeroinitializer
  %170 = lshr <4 x i32> %167, splat (i32 1)
  %171 = xor <4 x i32> %170, splat (i32 -306674912)
  %172 = select <4 x i1> %169, <4 x i32> %170, <4 x i32> %171
  %173 = and <4 x i32> %172, splat (i32 1)
  %174 = icmp eq <4 x i32> %173, zeroinitializer
  %175 = lshr <4 x i32> %172, splat (i32 1)
  %176 = xor <4 x i32> %175, splat (i32 -306674912)
  %177 = select <4 x i1> %174, <4 x i32> %175, <4 x i32> %176
  %178 = and <4 x i32> %177, splat (i32 1)
  %179 = icmp eq <4 x i32> %178, zeroinitializer
  %180 = lshr <4 x i32> %177, splat (i32 1)
  %181 = xor <4 x i32> %180, splat (i32 -306674912)
  %182 = select <4 x i1> %179, <4 x i32> %180, <4 x i32> %181
  %183 = and <4 x i32> %182, splat (i32 1)
  %184 = icmp eq <4 x i32> %183, zeroinitializer
  %185 = lshr <4 x i32> %182, splat (i32 1)
  %186 = xor <4 x i32> %185, splat (i32 -306674912)
  %187 = select <4 x i1> %184, <4 x i32> %185, <4 x i32> %186
  %188 = and <4 x i32> %187, splat (i32 1)
  %189 = icmp eq <4 x i32> %188, zeroinitializer
  %190 = lshr <4 x i32> %187, splat (i32 1)
  %191 = xor <4 x i32> %190, splat (i32 -306674912)
  %192 = select <4 x i1> %189, <4 x i32> %190, <4 x i32> %191
  %193 = getelementptr inbounds nuw [4 x i8], ptr %149, i64 %index
  store <4 x i32> %192, ptr %193, align 4
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %194 = icmp eq i64 %index.next, %n.vec
  br i1 %194, label %scalar.ph.preheader, label %vector.body, !llvm.loop !14

195:                                              ; preds = %197
  store ptr %147, ptr @"$s11swift_crc322t0Says6UInt32VGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch)
  br label %364

scalar.ph:                                        ; preds = %scalar.ph.preheader, %197
  %196 = phi i64 [ %198, %197 ], [ %.ph, %scalar.ph.preheader ]
  %.not109 = icmp samesign ult i64 %196, %.pre
  br i1 %.not109, label %197, label %594, !prof !11

197:                                              ; preds = %scalar.ph
  %198 = add nuw nsw i64 %196, 1
  %199 = trunc i64 %196 to i32
  %200 = and i32 %199, 1
  %.not101 = icmp eq i32 %200, 0
  %201 = lshr i32 %199, 1
  %202 = xor i32 %201, -306674912
  %203 = select i1 %.not101, i32 %201, i32 %202
  %204 = and i32 %203, 1
  %.not102 = icmp eq i32 %204, 0
  %205 = lshr i32 %203, 1
  %206 = xor i32 %205, -306674912
  %207 = select i1 %.not102, i32 %205, i32 %206
  %208 = and i32 %207, 1
  %.not103 = icmp eq i32 %208, 0
  %209 = lshr i32 %207, 1
  %210 = xor i32 %209, -306674912
  %211 = select i1 %.not103, i32 %209, i32 %210
  %212 = and i32 %211, 1
  %.not104 = icmp eq i32 %212, 0
  %213 = lshr i32 %211, 1
  %214 = xor i32 %213, -306674912
  %215 = select i1 %.not104, i32 %213, i32 %214
  %216 = and i32 %215, 1
  %.not105 = icmp eq i32 %216, 0
  %217 = lshr i32 %215, 1
  %218 = xor i32 %217, -306674912
  %219 = select i1 %.not105, i32 %217, i32 %218
  %220 = and i32 %219, 1
  %.not106 = icmp eq i32 %220, 0
  %221 = lshr i32 %219, 1
  %222 = xor i32 %221, -306674912
  %223 = select i1 %.not106, i32 %221, i32 %222
  %224 = and i32 %223, 1
  %.not107 = icmp eq i32 %224, 0
  %225 = lshr i32 %223, 1
  %226 = xor i32 %225, -306674912
  %227 = select i1 %.not107, i32 %225, i32 %226
  %228 = and i32 %227, 1
  %.not108 = icmp eq i32 %228, 0
  %229 = lshr i32 %227, 1
  %230 = xor i32 %229, -306674912
  %231 = select i1 %.not108, i32 %229, i32 %230
  %232 = getelementptr inbounds nuw [4 x i8], ptr %149, i64 %196
  store i32 %231, ptr %232, align 4
  %233 = icmp eq i64 %198, 256
  br i1 %233, label %195, label %scalar.ph, !llvm.loop !17

234:                                              ; preds = %433
  store i32 0, ptr @"$s11swift_crc325finals6UInt32Vvp", align 4
  %235 = load i64, ptr @"$s11swift_crc325itersSivp", align 8
  %236 = icmp slt i64 %235, 0
  br i1 %236, label %602, label %237, !prof !10

237:                                              ; preds = %234
  %238 = icmp eq i64 %235, 0
  br i1 %238, label %437, label %239

239:                                              ; preds = %237
  %240 = load ptr, ptr @"$s11swift_crc324dataSays5UInt8VGvp", align 8
  %241 = getelementptr inbounds nuw i8, ptr %240, i64 16
  %242 = load i64, ptr %241, align 8, !range !9
  %.fr = freeze i64 %242
  %243 = icmp samesign ugt i64 %.fr, 3
  %244 = load ptr, ptr @"$s11swift_crc322t3Says6UInt32VGvp", align 8
  %245 = load ptr, ptr @"$s11swift_crc322t2Says6UInt32VGvp", align 8
  %246 = load ptr, ptr @"$s11swift_crc322t1Says6UInt32VGvp", align 8
  %247 = getelementptr inbounds nuw i8, ptr %244, i64 16
  %248 = getelementptr inbounds nuw i8, ptr %245, i64 16
  %249 = getelementptr inbounds nuw i8, ptr %246, i64 16
  %.not118 = icmp eq i64 %.fr, 0
  %250 = getelementptr inbounds nuw i8, ptr %240, i64 32
  %251 = getelementptr inbounds nuw i8, ptr %244, i64 32
  %252 = getelementptr inbounds nuw i8, ptr %245, i64 32
  %253 = getelementptr inbounds nuw i8, ptr %246, i64 32
  %mv.h15 = icmp ult i64 %.fr, 4611686018427387905
  br i1 %mv.h15, label %.mv.ph17.mv.fast, label %.mv.ph17

.mv.ph17.mv.fast:                                 ; preds = %239, %.loopexit.mv.fast
  %254 = phi i64 [ %256, %.loopexit.mv.fast ], [ 0, %239 ]
  %255 = phi i32 [ %323, %.loopexit.mv.fast ], [ 0, %239 ]
  %256 = add nuw nsw i64 %254, 1
  br i1 %243, label %258, label %257

257:                                              ; preds = %.mv.ph17.mv.fast
  br i1 %.not118, label %.loopexit.mv.fast, label %299

258:                                              ; preds = %.mv.ph17.mv.fast
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch36)
  call void @swift_beginAccess(ptr nonnull @"$s11swift_crc322t0Says6UInt32VGvp", ptr nonnull %access-scratch36, i64 0, ptr null) #2
  %259 = load ptr, ptr @"$s11swift_crc322t0Says6UInt32VGvp", align 8
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 16
  %261 = load i64, ptr %247, align 8, !range !9
  %262 = load i64, ptr %248, align 8, !range !9
  %263 = load i64, ptr %249, align 8, !range !9
  %264 = load i64, ptr %260, align 8, !range !9
  %265 = getelementptr inbounds nuw i8, ptr %259, i64 32
  %mv.h.mv.fast = icmp samesign ugt i64 %261, 255
  %mv.h2.mv.fast = icmp samesign ugt i64 %262, 255
  %mv.h3.mv.fast = and i1 %mv.h.mv.fast, %mv.h2.mv.fast
  %mv.h4.mv.fast = icmp samesign ugt i64 %263, 255
  %mv.h5.mv.fast = and i1 %mv.h3.mv.fast, %mv.h4.mv.fast
  %mv.h6.mv.fast = icmp samesign ugt i64 %264, 255
  %mv.h7.mv.fast = and i1 %mv.h5.mv.fast, %mv.h6.mv.fast
  %mv.h.fr.mv.fast = freeze i1 %mv.h7.mv.fast
  br i1 %mv.h.fr.mv.fast, label %.mv.ph.mv.fast.mv.fast, label %.mv.ph.mv.fast31

.mv.ph.mv.fast31:                                 ; preds = %258, %284
  %266 = phi i32 [ %296, %284 ], [ -1, %258 ]
  %267 = phi i64 [ %285, %284 ], [ 0, %258 ]
  %268 = getelementptr inbounds nuw i8, ptr %250, i64 %267
  %269 = load i32, ptr %268, align 1
  %270 = xor i32 %269, %266
  %271 = and i32 %270, 255
  %272 = zext nneg i32 %271 to i64
  %.not123.mv.fast22 = icmp samesign ugt i64 %261, %272
  br i1 %.not123.mv.fast22, label %273, label %.loopexit38, !prof !11

273:                                              ; preds = %.mv.ph.mv.fast31
  %274 = lshr i32 %270, 8
  %275 = and i32 %274, 255
  %276 = zext nneg i32 %275 to i64
  %.not124.mv.fast23 = icmp samesign ugt i64 %262, %276
  br i1 %.not124.mv.fast23, label %277, label %.loopexit39, !prof !11

277:                                              ; preds = %273
  %278 = lshr i32 %270, 16
  %279 = and i32 %278, 255
  %280 = zext nneg i32 %279 to i64
  %.not125.mv.fast24 = icmp samesign ugt i64 %263, %280
  br i1 %.not125.mv.fast24, label %281, label %.loopexit40, !prof !11

281:                                              ; preds = %277
  %282 = lshr i32 %270, 24
  %283 = zext nneg i32 %282 to i64
  %.not126.mv.fast25 = icmp samesign ugt i64 %264, %283
  br i1 %.not126.mv.fast25, label %284, label %.loopexit41, !prof !11

284:                                              ; preds = %281
  %285 = add nuw nsw i64 %267, 4
  %286 = getelementptr inbounds nuw [4 x i8], ptr %252, i64 %276
  %287 = load i32, ptr %286, align 4
  %288 = getelementptr inbounds nuw [4 x i8], ptr %251, i64 %272
  %289 = load i32, ptr %288, align 4
  %290 = xor i32 %289, %287
  %291 = getelementptr inbounds nuw [4 x i8], ptr %253, i64 %280
  %292 = load i32, ptr %291, align 4
  %293 = xor i32 %290, %292
  %294 = getelementptr inbounds nuw [4 x i8], ptr %265, i64 %283
  %295 = load i32, ptr %294, align 4
  %296 = xor i32 %293, %295
  %297 = add nuw i64 %267, 8
  %.not127.mv.fast26 = icmp slt i64 %.fr, %297
  br i1 %.not127.mv.fast26, label %.loopexit37, label %.mv.ph.mv.fast31

.loopexit37:                                      ; preds = %284, %.mv.ph.mv.fast.mv.fast
  %.lcssa1.mv.fast = phi i64 [ %340, %.mv.ph.mv.fast.mv.fast ], [ %285, %284 ]
  %.lcssa.mv.fast = phi i32 [ %351, %.mv.ph.mv.fast.mv.fast ], [ %296, %284 ]
  %298 = icmp samesign ult i64 %.lcssa1.mv.fast, %.fr
  br i1 %298, label %299, label %.loopexit.mv.fast

299:                                              ; preds = %.loopexit37, %257
  %300 = phi i32 [ %.lcssa.mv.fast, %.loopexit37 ], [ -1, %257 ]
  %301 = phi i64 [ %.lcssa1.mv.fast, %.loopexit37 ], [ 0, %257 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch32)
  call void @swift_beginAccess(ptr nonnull @"$s11swift_crc322t0Says6UInt32VGvp", ptr nonnull %access-scratch32, i64 0, ptr null) #2
  %302 = load ptr, ptr @"$s11swift_crc322t0Says6UInt32VGvp", align 8
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 32
  %304 = getelementptr inbounds nuw i8, ptr %302, i64 16
  %305 = load i64, ptr %304, align 8, !range !9
  %306 = add nuw nsw i64 %301, 1
  %umax.mv.fast = call i64 @llvm.umax.i64(i64 %.fr, i64 %306)
  %307 = add nsw i64 %umax.mv.fast, -1
  %mv.h9.mv.fast = icmp ugt i64 %.fr, %307
  %mv.h10.mv.fast = icmp samesign ugt i64 %305, 255
  %mv.h11.mv.fast = and i1 %mv.h9.mv.fast, %mv.h10.mv.fast
  %mv.h.fr12.mv.fast = freeze i1 %mv.h11.mv.fast
  br i1 %mv.h.fr12.mv.fast, label %.mv.ph13.mv.fast.mv.fast, label %.mv.ph13.mv.fast32.preheader

.mv.ph13.mv.fast32.preheader:                     ; preds = %299
  %umax109 = call i64 @llvm.umax.i64(i64 %.fr, i64 %301)
  br label %.mv.ph13.mv.fast32

.mv.ph13.mv.fast32:                               ; preds = %.mv.ph13.mv.fast32.preheader, %314
  %308 = phi i32 [ %319, %314 ], [ %300, %.mv.ph13.mv.fast32.preheader ]
  %309 = phi i64 [ %315, %314 ], [ %301, %.mv.ph13.mv.fast32.preheader ]
  %exitcond110.not = icmp eq i64 %309, %umax109
  br i1 %exitcond110.not, label %.loopexit34, label %310, !prof !10

310:                                              ; preds = %.mv.ph13.mv.fast32
  %311 = getelementptr inbounds nuw i8, ptr %250, i64 %309
  %312 = load i8, ptr %311, align 1
  %.tr.mv.fast28 = trunc i32 %308 to i8
  %.narrow.mv.fast29 = xor i8 %312, %.tr.mv.fast28
  %313 = zext i8 %.narrow.mv.fast29 to i64
  %.not129.mv.fast30 = icmp samesign ugt i64 %305, %313
  br i1 %.not129.mv.fast30, label %314, label %.loopexit35, !prof !11

314:                                              ; preds = %310
  %315 = add nuw nsw i64 %309, 1
  %316 = getelementptr inbounds nuw [4 x i8], ptr %303, i64 %313
  %317 = load i32, ptr %316, align 4
  %318 = lshr i32 %308, 8
  %319 = xor i32 %317, %318
  %320 = icmp samesign ult i64 %315, %.fr
  br i1 %320, label %.mv.ph13.mv.fast32, label %.loopexit.mv.fast

.loopexit.mv.fast:                                ; preds = %314, %.mv.ph13.mv.fast.mv.fast, %.loopexit37, %257
  %321 = phi i32 [ %.lcssa.mv.fast, %.loopexit37 ], [ -1, %257 ], [ %362, %.mv.ph13.mv.fast.mv.fast ], [ %319, %314 ]
  %322 = xor i32 %321, -1
  %323 = add i32 %255, %322
  %324 = icmp eq i64 %256, %235
  br i1 %324, label %.loopexit43, label %.mv.ph17.mv.fast

.mv.ph.mv.fast.mv.fast:                           ; preds = %258, %.mv.ph.mv.fast.mv.fast
  %325 = phi i32 [ %351, %.mv.ph.mv.fast.mv.fast ], [ -1, %258 ]
  %326 = phi i64 [ %340, %.mv.ph.mv.fast.mv.fast ], [ 0, %258 ]
  %327 = getelementptr inbounds nuw i8, ptr %250, i64 %326
  %328 = load i32, ptr %327, align 1
  %329 = xor i32 %328, %325
  %330 = and i32 %329, 255
  %331 = zext nneg i32 %330 to i64
  %332 = lshr i32 %329, 8
  %333 = and i32 %332, 255
  %334 = zext nneg i32 %333 to i64
  %335 = lshr i32 %329, 16
  %336 = and i32 %335, 255
  %337 = zext nneg i32 %336 to i64
  %338 = lshr i32 %329, 24
  %339 = zext nneg i32 %338 to i64
  %340 = add nuw nsw i64 %326, 4
  %341 = getelementptr inbounds nuw [4 x i8], ptr %252, i64 %334
  %342 = load i32, ptr %341, align 4
  %343 = getelementptr inbounds nuw [4 x i8], ptr %251, i64 %331
  %344 = load i32, ptr %343, align 4
  %345 = xor i32 %344, %342
  %346 = getelementptr inbounds nuw [4 x i8], ptr %253, i64 %337
  %347 = load i32, ptr %346, align 4
  %348 = xor i32 %345, %347
  %349 = getelementptr inbounds nuw [4 x i8], ptr %265, i64 %339
  %350 = load i32, ptr %349, align 4
  %351 = xor i32 %348, %350
  %352 = add nuw i64 %326, 8
  %.not127.mv.fast.mv.fast = icmp slt i64 %.fr, %352
  br i1 %.not127.mv.fast.mv.fast, label %.loopexit37, label %.mv.ph.mv.fast.mv.fast

.mv.ph13.mv.fast.mv.fast:                         ; preds = %299, %.mv.ph13.mv.fast.mv.fast
  %353 = phi i32 [ %362, %.mv.ph13.mv.fast.mv.fast ], [ %300, %299 ]
  %354 = phi i64 [ %358, %.mv.ph13.mv.fast.mv.fast ], [ %301, %299 ]
  %355 = getelementptr inbounds nuw i8, ptr %250, i64 %354
  %356 = load i8, ptr %355, align 1
  %.tr.mv.fast.mv.fast = trunc i32 %353 to i8
  %.narrow.mv.fast.mv.fast = xor i8 %356, %.tr.mv.fast.mv.fast
  %357 = zext i8 %.narrow.mv.fast.mv.fast to i64
  %358 = add nuw nsw i64 %354, 1
  %359 = getelementptr inbounds nuw [4 x i8], ptr %303, i64 %357
  %360 = load i32, ptr %359, align 4
  %361 = lshr i32 %353, 8
  %362 = xor i32 %360, %361
  %363 = icmp samesign ult i64 %358, %.fr
  br i1 %363, label %.mv.ph13.mv.fast.mv.fast, label %.loopexit.mv.fast

364:                                              ; preds = %433, %195
  %365 = phi i64 [ 0, %195 ], [ %366, %433 ]
  %366 = add nuw nsw i64 %365, 1
  %367 = load ptr, ptr @"$s11swift_crc322t0Says6UInt32VGvp", align 8
  %368 = getelementptr inbounds nuw i8, ptr %367, i64 16
  %369 = load i64, ptr %368, align 8, !range !9
  %.not110 = icmp samesign ult i64 %365, %369
  br i1 %.not110, label %370, label %595, !prof !11

370:                                              ; preds = %364
  %371 = getelementptr inbounds nuw i8, ptr %367, i64 32
  %372 = getelementptr inbounds nuw [4 x i8], ptr %371, i64 %365
  %373 = load i32, ptr %372, align 4
  %374 = and i32 %373, 255
  %375 = zext nneg i32 %374 to i64
  %.not111 = icmp samesign ugt i64 %369, %375
  br i1 %.not111, label %376, label %596, !prof !11

376:                                              ; preds = %370
  %377 = getelementptr inbounds nuw [4 x i8], ptr %371, i64 %375
  %378 = load i32, ptr %377, align 4
  %379 = lshr i32 %373, 8
  %380 = xor i32 %378, %379
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch15)
  call void @swift_beginAccess(ptr nonnull @"$s11swift_crc322t1Says6UInt32VGvp", ptr nonnull %access-scratch15, i64 33, ptr null) #2
  %381 = load ptr, ptr @"$s11swift_crc322t1Says6UInt32VGvp", align 8
  %382 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %381) #16
  store ptr %381, ptr @"$s11swift_crc322t1Says6UInt32VGvp", align 8
  br i1 %382, label %385, label %383

383:                                              ; preds = %376
  %384 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFs6UInt32V_Tg5"(ptr %381)
  br label %385

385:                                              ; preds = %383, %376
  %386 = phi ptr [ %384, %383 ], [ %381, %376 ]
  %387 = getelementptr inbounds nuw i8, ptr %386, i64 16
  %388 = load i64, ptr %387, align 8, !range !9
  %.not112 = icmp samesign ult i64 %365, %388
  br i1 %.not112, label %389, label %597, !prof !11

389:                                              ; preds = %385
  %390 = getelementptr inbounds nuw i8, ptr %386, i64 32
  %391 = getelementptr inbounds nuw [4 x i8], ptr %390, i64 %365
  store i32 %380, ptr %391, align 4
  store ptr %386, ptr @"$s11swift_crc322t1Says6UInt32VGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch15) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch15)
  %392 = and i32 %380, 255
  %393 = zext nneg i32 %392 to i64
  %394 = load ptr, ptr @"$s11swift_crc322t0Says6UInt32VGvp", align 8
  %395 = getelementptr inbounds nuw i8, ptr %394, i64 16
  %396 = load i64, ptr %395, align 8, !range !9
  %.not113 = icmp samesign ugt i64 %396, %393
  br i1 %.not113, label %397, label %598, !prof !11

397:                                              ; preds = %389
  %398 = getelementptr inbounds nuw i8, ptr %394, i64 32
  %399 = getelementptr inbounds nuw [4 x i8], ptr %398, i64 %393
  %400 = load i32, ptr %399, align 4
  %401 = lshr i32 %380, 8
  %402 = xor i32 %400, %401
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch20)
  call void @swift_beginAccess(ptr nonnull @"$s11swift_crc322t2Says6UInt32VGvp", ptr nonnull %access-scratch20, i64 33, ptr null) #2
  %403 = load ptr, ptr @"$s11swift_crc322t2Says6UInt32VGvp", align 8
  %404 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %403) #16
  store ptr %403, ptr @"$s11swift_crc322t2Says6UInt32VGvp", align 8
  br i1 %404, label %407, label %405

405:                                              ; preds = %397
  %406 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFs6UInt32V_Tg5"(ptr %403)
  br label %407

407:                                              ; preds = %405, %397
  %408 = phi ptr [ %406, %405 ], [ %403, %397 ]
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 16
  %410 = load i64, ptr %409, align 8, !range !9
  %.not114 = icmp samesign ult i64 %365, %410
  br i1 %.not114, label %411, label %599, !prof !11

411:                                              ; preds = %407
  %412 = getelementptr inbounds nuw i8, ptr %408, i64 32
  %413 = getelementptr inbounds nuw [4 x i8], ptr %412, i64 %365
  store i32 %402, ptr %413, align 4
  store ptr %408, ptr @"$s11swift_crc322t2Says6UInt32VGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch20) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch20)
  %414 = and i32 %402, 255
  %415 = zext nneg i32 %414 to i64
  %416 = load ptr, ptr @"$s11swift_crc322t0Says6UInt32VGvp", align 8
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 16
  %418 = load i64, ptr %417, align 8, !range !9
  %.not115 = icmp samesign ugt i64 %418, %415
  br i1 %.not115, label %419, label %600, !prof !11

419:                                              ; preds = %411
  %420 = getelementptr inbounds nuw i8, ptr %416, i64 32
  %421 = getelementptr inbounds nuw [4 x i8], ptr %420, i64 %415
  %422 = load i32, ptr %421, align 4
  %423 = lshr i32 %402, 8
  %424 = xor i32 %422, %423
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch25)
  call void @swift_beginAccess(ptr nonnull @"$s11swift_crc322t3Says6UInt32VGvp", ptr nonnull %access-scratch25, i64 33, ptr null) #2
  %425 = load ptr, ptr @"$s11swift_crc322t3Says6UInt32VGvp", align 8
  %426 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %425) #16
  store ptr %425, ptr @"$s11swift_crc322t3Says6UInt32VGvp", align 8
  br i1 %426, label %429, label %427

427:                                              ; preds = %419
  %428 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFs6UInt32V_Tg5"(ptr %425)
  br label %429

429:                                              ; preds = %427, %419
  %430 = phi ptr [ %428, %427 ], [ %425, %419 ]
  %431 = getelementptr inbounds nuw i8, ptr %430, i64 16
  %432 = load i64, ptr %431, align 8, !range !9
  %.not116 = icmp samesign ult i64 %365, %432
  br i1 %.not116, label %433, label %601, !prof !11

433:                                              ; preds = %429
  %434 = getelementptr inbounds nuw i8, ptr %430, i64 32
  %435 = getelementptr inbounds nuw [4 x i8], ptr %434, i64 %365
  store i32 %424, ptr %435, align 4
  store ptr %430, ptr @"$s11swift_crc322t3Says6UInt32VGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch25) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch25)
  %436 = icmp eq i64 %366, 256
  br i1 %436, label %234, label %364

437:                                              ; preds = %.loopexit43, %237
  %438 = phi i32 [ %.lcssa14, %.loopexit43 ], [ 0, %237 ]
  %439 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMD") #17
  %440 = call noalias ptr @swift_allocObject(ptr %439, i64 64, i64 7) #2
  %441 = getelementptr inbounds nuw i8, ptr %440, i64 16
  store i64 1, ptr %441, align 8
  %._storage29._capacityAndFlags = getelementptr inbounds nuw i8, ptr %440, i64 24
  store i64 2, ptr %._storage29._capacityAndFlags, align 8
  %442 = getelementptr inbounds nuw i8, ptr %440, i64 32
  %443 = getelementptr inbounds nuw i8, ptr %440, i64 56
  store ptr @"$ss6UInt32VN", ptr %443, align 8
  store i32 %438, ptr %442, align 8
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %440, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %440) #2
  ret i32 0

.mv.ph17:                                         ; preds = %239, %.loopexit
  %444 = phi i64 [ %446, %.loopexit ], [ 0, %239 ]
  %445 = phi i32 [ %587, %.loopexit ], [ 0, %239 ]
  %446 = add nuw nsw i64 %444, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch36)
  call void @swift_beginAccess(ptr nonnull @"$s11swift_crc322t0Says6UInt32VGvp", ptr nonnull %access-scratch36, i64 0, ptr null) #2
  %447 = load ptr, ptr @"$s11swift_crc322t0Says6UInt32VGvp", align 8
  %448 = getelementptr inbounds nuw i8, ptr %447, i64 16
  %449 = load i64, ptr %247, align 8, !range !9
  %450 = load i64, ptr %248, align 8, !range !9
  %451 = load i64, ptr %249, align 8, !range !9
  %452 = load i64, ptr %448, align 8, !range !9
  %453 = getelementptr inbounds nuw i8, ptr %447, i64 32
  %mv.h = icmp samesign ugt i64 %449, 255
  %mv.h2 = icmp samesign ugt i64 %450, 255
  %mv.h3 = and i1 %mv.h, %mv.h2
  %mv.h4 = icmp samesign ugt i64 %451, 255
  %mv.h5 = and i1 %mv.h3, %mv.h4
  %mv.h6 = icmp samesign ugt i64 %452, 255
  %mv.h7 = and i1 %mv.h5, %mv.h6
  %mv.h.fr = freeze i1 %mv.h7
  br i1 %mv.h.fr, label %.mv.ph.mv.fast.preheader, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %.mv.ph.mv.fast.preheader
  %454 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %457, i64 12)
  %455 = extractvalue { i64, i1 } %454, 1
  br i1 %455, label %.loopexit47, label %.mv.ph.mv.fast.preheader, !prof !18

.mv.ph.mv.fast.preheader:                         ; preds = %.mv.ph17, %.mv.ph.mv.fast
  %456 = phi { i64, i1 } [ %454, %.mv.ph.mv.fast ], [ { i64 8, i1 false }, %.mv.ph17 ]
  %457 = phi i64 [ %472, %.mv.ph.mv.fast ], [ 0, %.mv.ph17 ]
  %458 = phi i32 [ %483, %.mv.ph.mv.fast ], [ -1, %.mv.ph17 ]
  %459 = getelementptr inbounds nuw i8, ptr %250, i64 %457
  %460 = load i32, ptr %459, align 1
  %461 = xor i32 %460, %458
  %462 = lshr i32 %461, 24
  %463 = zext nneg i32 %462 to i64
  %464 = lshr i32 %461, 16
  %465 = and i32 %464, 255
  %466 = zext nneg i32 %465 to i64
  %467 = lshr i32 %461, 8
  %468 = and i32 %467, 255
  %469 = zext nneg i32 %468 to i64
  %470 = and i32 %461, 255
  %471 = zext nneg i32 %470 to i64
  %472 = add nuw nsw i64 %457, 4
  %473 = getelementptr inbounds nuw [4 x i8], ptr %252, i64 %469
  %474 = load i32, ptr %473, align 4
  %475 = getelementptr inbounds nuw [4 x i8], ptr %251, i64 %471
  %476 = load i32, ptr %475, align 4
  %477 = xor i32 %476, %474
  %478 = getelementptr inbounds nuw [4 x i8], ptr %253, i64 %466
  %479 = load i32, ptr %478, align 4
  %480 = xor i32 %477, %479
  %481 = getelementptr inbounds nuw [4 x i8], ptr %453, i64 %463
  %482 = load i32, ptr %481, align 4
  %483 = xor i32 %480, %482
  %484 = extractvalue { i64, i1 } %456, 0
  %.not127.mv.fast = icmp slt i64 %.fr, %484
  br i1 %.not127.mv.fast, label %.loopexit48, label %.mv.ph.mv.fast

.mv.ph:                                           ; preds = %.mv.ph17, %506
  %485 = phi i32 [ %518, %506 ], [ -1, %.mv.ph17 ]
  %486 = phi i64 [ %507, %506 ], [ 0, %.mv.ph17 ]
  %487 = getelementptr inbounds nuw i8, ptr %250, i64 %486
  %488 = load i32, ptr %487, align 1
  %489 = xor i32 %488, %485
  %490 = and i32 %489, 255
  %491 = zext nneg i32 %490 to i64
  %.not123 = icmp samesign ugt i64 %449, %491
  br i1 %.not123, label %492, label %.loopexit38, !prof !11

492:                                              ; preds = %.mv.ph
  %493 = lshr i32 %489, 8
  %494 = and i32 %493, 255
  %495 = zext nneg i32 %494 to i64
  %.not124 = icmp samesign ugt i64 %450, %495
  br i1 %.not124, label %496, label %.loopexit39, !prof !11

496:                                              ; preds = %492
  %497 = lshr i32 %489, 16
  %498 = and i32 %497, 255
  %499 = zext nneg i32 %498 to i64
  %.not125 = icmp samesign ugt i64 %451, %499
  br i1 %.not125, label %500, label %.loopexit40, !prof !11

500:                                              ; preds = %496
  %501 = lshr i32 %489, 24
  %502 = zext nneg i32 %501 to i64
  %.not126 = icmp samesign ugt i64 %452, %502
  br i1 %.not126, label %503, label %.loopexit41, !prof !11

503:                                              ; preds = %500
  %504 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %486, i64 8)
  %505 = extractvalue { i64, i1 } %504, 1
  br i1 %505, label %.loopexit47, label %506, !prof !10

506:                                              ; preds = %503
  %507 = add nuw nsw i64 %486, 4
  %508 = getelementptr inbounds nuw [4 x i8], ptr %252, i64 %495
  %509 = load i32, ptr %508, align 4
  %510 = getelementptr inbounds nuw [4 x i8], ptr %251, i64 %491
  %511 = load i32, ptr %510, align 4
  %512 = xor i32 %511, %509
  %513 = getelementptr inbounds nuw [4 x i8], ptr %253, i64 %499
  %514 = load i32, ptr %513, align 4
  %515 = xor i32 %512, %514
  %516 = getelementptr inbounds nuw [4 x i8], ptr %453, i64 %502
  %517 = load i32, ptr %516, align 4
  %518 = xor i32 %515, %517
  %519 = extractvalue { i64, i1 } %504, 0
  %.not127 = icmp slt i64 %.fr, %519
  br i1 %.not127, label %.loopexit48, label %.mv.ph

.loopexit48:                                      ; preds = %506, %.mv.ph.mv.fast.preheader
  %.lcssa1 = phi i64 [ %472, %.mv.ph.mv.fast.preheader ], [ %507, %506 ]
  %.lcssa = phi i32 [ %483, %.mv.ph.mv.fast.preheader ], [ %518, %506 ]
  %.lcssa1.fr = freeze i64 %.lcssa1
  %520 = icmp samesign ult i64 %.lcssa1.fr, %.fr
  br i1 %520, label %521, label %.loopexit

521:                                              ; preds = %.loopexit48
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch32)
  call void @swift_beginAccess(ptr nonnull @"$s11swift_crc322t0Says6UInt32VGvp", ptr nonnull %access-scratch32, i64 0, ptr null) #2
  %522 = load ptr, ptr @"$s11swift_crc322t0Says6UInt32VGvp", align 8
  %523 = getelementptr inbounds nuw i8, ptr %522, i64 32
  %524 = getelementptr inbounds nuw i8, ptr %522, i64 16
  %525 = load i64, ptr %524, align 8, !range !9
  %526 = add nuw nsw i64 %.lcssa1.fr, 1
  %umax = call i64 @llvm.umax.i64(i64 %.fr, i64 %526)
  %527 = add nsw i64 %umax, -1
  %mv.h9 = icmp ugt i64 %.fr, %527
  %mv.h10 = icmp samesign ugt i64 %525, 255
  %mv.h11 = and i1 %mv.h9, %mv.h10
  %mv.h.fr12 = freeze i1 %mv.h11
  br i1 %mv.h.fr12, label %.mv.ph13.mv.fast.preheader, label %.mv.ph13.preheader.preheader

.mv.ph13.preheader.preheader:                     ; preds = %521
  %528 = sub i64 %.fr, %.lcssa1.fr
  %xtraiter = and i64 %528, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.mv.ph13.preheader.prol.loopexit, label %.mv.ph13.preheader.prol

.mv.ph13.preheader.prol:                          ; preds = %.mv.ph13.preheader.preheader
  %529 = getelementptr inbounds nuw i8, ptr %250, i64 %.lcssa1.fr
  %530 = load i8, ptr %529, align 1
  %.tr.prol = trunc i32 %.lcssa to i8
  %.narrow.prol = xor i8 %530, %.tr.prol
  %531 = zext i8 %.narrow.prol to i64
  %.not129.prol = icmp samesign ugt i64 %525, %531
  br i1 %.not129.prol, label %.mv.ph13.preheader.prol.loopexit.unr-lcssa, label %.loopexit35, !prof !11

.mv.ph13.preheader.prol.loopexit.unr-lcssa:       ; preds = %.mv.ph13.preheader.prol
  %532 = add nuw i64 %.lcssa1.fr, 1
  %533 = getelementptr inbounds nuw [4 x i8], ptr %523, i64 %531
  %534 = load i32, ptr %533, align 4
  %535 = lshr i32 %.lcssa, 8
  %536 = xor i32 %534, %535
  br label %.mv.ph13.preheader.prol.loopexit

.mv.ph13.preheader.prol.loopexit:                 ; preds = %.mv.ph13.preheader.prol.loopexit.unr-lcssa, %.mv.ph13.preheader.preheader
  %.lcssa228.unr = phi i32 [ poison, %.mv.ph13.preheader.preheader ], [ %536, %.mv.ph13.preheader.prol.loopexit.unr-lcssa ]
  %.unr = phi i32 [ %.lcssa, %.mv.ph13.preheader.preheader ], [ %536, %.mv.ph13.preheader.prol.loopexit.unr-lcssa ]
  %.unr237 = phi i64 [ %.lcssa1.fr, %.mv.ph13.preheader.preheader ], [ %532, %.mv.ph13.preheader.prol.loopexit.unr-lcssa ]
  %537 = icmp eq i64 %528, 1
  br i1 %537, label %.loopexit, label %.mv.ph13.preheader

.mv.ph13.mv.fast.preheader:                       ; preds = %521
  %538 = sub i64 %.fr, %.lcssa1.fr
  %.neg = add i64 %.lcssa1.fr, 1
  %xtraiter239 = and i64 %538, 1
  %lcmp.mod240.not = icmp eq i64 %xtraiter239, 0
  br i1 %lcmp.mod240.not, label %.mv.ph13.mv.fast.prol.loopexit, label %.mv.ph13.mv.fast.prol

.mv.ph13.mv.fast.prol:                            ; preds = %.mv.ph13.mv.fast.preheader
  %539 = getelementptr inbounds nuw i8, ptr %250, i64 %.lcssa1.fr
  %540 = load i8, ptr %539, align 1
  %.tr.mv.fast.prol = trunc i32 %.lcssa to i8
  %.narrow.mv.fast.prol = xor i8 %540, %.tr.mv.fast.prol
  %541 = zext i8 %.narrow.mv.fast.prol to i64
  %542 = add nuw nsw i64 %.lcssa1.fr, 1
  %543 = getelementptr inbounds nuw [4 x i8], ptr %523, i64 %541
  %544 = load i32, ptr %543, align 4
  %545 = lshr i32 %.lcssa, 8
  %546 = xor i32 %544, %545
  br label %.mv.ph13.mv.fast.prol.loopexit

.mv.ph13.mv.fast.prol.loopexit:                   ; preds = %.mv.ph13.mv.fast.prol, %.mv.ph13.mv.fast.preheader
  %.lcssa229.unr = phi i32 [ poison, %.mv.ph13.mv.fast.preheader ], [ %546, %.mv.ph13.mv.fast.prol ]
  %.unr241 = phi i32 [ %.lcssa, %.mv.ph13.mv.fast.preheader ], [ %546, %.mv.ph13.mv.fast.prol ]
  %.unr242 = phi i64 [ %.lcssa1.fr, %.mv.ph13.mv.fast.preheader ], [ %542, %.mv.ph13.mv.fast.prol ]
  %547 = icmp eq i64 %.fr, %.neg
  br i1 %547, label %.loopexit, label %.mv.ph13.mv.fast

.mv.ph13.mv.fast:                                 ; preds = %.mv.ph13.mv.fast.prol.loopexit, %.mv.ph13.mv.fast
  %548 = phi i32 [ %565, %.mv.ph13.mv.fast ], [ %.unr241, %.mv.ph13.mv.fast.prol.loopexit ]
  %549 = phi i64 [ %561, %.mv.ph13.mv.fast ], [ %.unr242, %.mv.ph13.mv.fast.prol.loopexit ]
  %550 = getelementptr inbounds nuw i8, ptr %250, i64 %549
  %551 = load i8, ptr %550, align 1
  %.tr.mv.fast = trunc i32 %548 to i8
  %.narrow.mv.fast = xor i8 %551, %.tr.mv.fast
  %552 = zext i8 %.narrow.mv.fast to i64
  %553 = getelementptr inbounds nuw [4 x i8], ptr %523, i64 %552
  %554 = load i32, ptr %553, align 4
  %555 = lshr i32 %548, 8
  %556 = xor i32 %554, %555
  %557 = getelementptr inbounds nuw i8, ptr %250, i64 %549
  %558 = getelementptr inbounds nuw i8, ptr %557, i64 1
  %559 = load i8, ptr %558, align 1
  %.tr.mv.fast.1 = trunc i32 %556 to i8
  %.narrow.mv.fast.1 = xor i8 %559, %.tr.mv.fast.1
  %560 = zext i8 %.narrow.mv.fast.1 to i64
  %561 = add nuw nsw i64 %549, 2
  %562 = getelementptr inbounds nuw [4 x i8], ptr %523, i64 %560
  %563 = load i32, ptr %562, align 4
  %564 = lshr i32 %556, 8
  %565 = xor i32 %563, %564
  %exitcond108.not.1 = icmp eq i64 %561, %.fr
  br i1 %exitcond108.not.1, label %.loopexit, label %.mv.ph13.mv.fast

.mv.ph13.preheader:                               ; preds = %.mv.ph13.preheader.prol.loopexit, %579
  %566 = phi i32 [ %584, %579 ], [ %.unr, %.mv.ph13.preheader.prol.loopexit ]
  %567 = phi i64 [ %580, %579 ], [ %.unr237, %.mv.ph13.preheader.prol.loopexit ]
  %568 = getelementptr inbounds nuw i8, ptr %250, i64 %567
  %569 = load i8, ptr %568, align 1
  %.tr = trunc i32 %566 to i8
  %.narrow = xor i8 %569, %.tr
  %570 = zext i8 %.narrow to i64
  %.not129 = icmp samesign ugt i64 %525, %570
  br i1 %.not129, label %.mv.ph13.preheader.1, label %.loopexit35, !prof !11

.mv.ph13.preheader.1:                             ; preds = %.mv.ph13.preheader
  %571 = getelementptr inbounds nuw [4 x i8], ptr %523, i64 %570
  %572 = load i32, ptr %571, align 4
  %573 = lshr i32 %566, 8
  %574 = xor i32 %572, %573
  %575 = getelementptr inbounds nuw i8, ptr %250, i64 %567
  %576 = getelementptr inbounds nuw i8, ptr %575, i64 1
  %577 = load i8, ptr %576, align 1
  %.tr.1 = trunc i32 %574 to i8
  %.narrow.1 = xor i8 %577, %.tr.1
  %578 = zext i8 %.narrow.1 to i64
  %.not129.1 = icmp samesign ugt i64 %525, %578
  br i1 %.not129.1, label %579, label %.loopexit35, !prof !11

579:                                              ; preds = %.mv.ph13.preheader.1
  %580 = add nuw i64 %567, 2
  %581 = getelementptr inbounds nuw [4 x i8], ptr %523, i64 %578
  %582 = load i32, ptr %581, align 4
  %583 = lshr i32 %574, 8
  %584 = xor i32 %582, %583
  %exitcond.not.1 = icmp eq i64 %580, %.fr
  br i1 %exitcond.not.1, label %.loopexit, label %.mv.ph13.preheader

.loopexit:                                        ; preds = %.mv.ph13.preheader.prol.loopexit, %579, %.mv.ph13.mv.fast.prol.loopexit, %.mv.ph13.mv.fast, %.loopexit48
  %585 = phi i32 [ %.lcssa, %.loopexit48 ], [ %565, %.mv.ph13.mv.fast ], [ %.lcssa229.unr, %.mv.ph13.mv.fast.prol.loopexit ], [ %.lcssa228.unr, %.mv.ph13.preheader.prol.loopexit ], [ %584, %579 ]
  %586 = xor i32 %585, -1
  %587 = add i32 %445, %586
  %588 = icmp eq i64 %446, %235
  br i1 %588, label %.loopexit43, label %.mv.ph17

.loopexit43:                                      ; preds = %.loopexit, %.loopexit.mv.fast
  %.lcssa14 = phi i32 [ %323, %.loopexit.mv.fast ], [ %587, %.loopexit ]
  store i32 %.lcssa14, ptr @"$s11swift_crc325finals6UInt32Vvp", align 4
  br label %437

589:                                              ; preds = %116
  %590 = inttoptr i64 %123 to ptr
  call void @swift_release(ptr %590) #2
  call swiftcc void @swift_unexpectedError(ptr nonnull %125, ptr nonnull @".str.23.swift_crc32/crc32.swift", i64 23, i1 true, i64 14)
  unreachable

591:                                              ; preds = %entry
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

592:                                              ; preds = %36, %19
  call void asm sideeffect "", "n"(i32 1) #2
  call void @llvm.trap()
  unreachable

593:                                              ; preds = %111
  call void asm sideeffect "", "n"(i32 2) #2
  call void @llvm.trap()
  unreachable

594:                                              ; preds = %scalar.ph
  call void asm sideeffect "", "n"(i32 5) #2
  call void @llvm.trap()
  unreachable

595:                                              ; preds = %364
  call void asm sideeffect "", "n"(i32 7) #2
  call void @llvm.trap()
  unreachable

596:                                              ; preds = %370
  call void asm sideeffect "", "n"(i32 8) #2
  call void @llvm.trap()
  unreachable

597:                                              ; preds = %385
  call void asm sideeffect "", "n"(i32 9) #2
  call void @llvm.trap()
  unreachable

598:                                              ; preds = %389
  call void asm sideeffect "", "n"(i32 11) #2
  call void @llvm.trap()
  unreachable

599:                                              ; preds = %407
  call void asm sideeffect "", "n"(i32 12) #2
  call void @llvm.trap()
  unreachable

600:                                              ; preds = %411
  call void asm sideeffect "", "n"(i32 14) #2
  call void @llvm.trap()
  unreachable

601:                                              ; preds = %429
  call void asm sideeffect "", "n"(i32 15) #2
  call void @llvm.trap()
  unreachable

602:                                              ; preds = %234
  call void asm sideeffect "", "n"(i32 16) #2
  call void @llvm.trap()
  unreachable

.loopexit34:                                      ; preds = %.mv.ph13.mv.fast32
  call void asm sideeffect "", "n"(i32 19) #2
  call void @llvm.trap()
  unreachable

.loopexit35:                                      ; preds = %.mv.ph13.preheader.1, %.mv.ph13.preheader, %.mv.ph13.preheader.prol, %310
  call void asm sideeffect "", "n"(i32 20) #2
  call void @llvm.trap()
  unreachable

.loopexit38:                                      ; preds = %.mv.ph, %.mv.ph.mv.fast31
  call void asm sideeffect "", "n"(i32 26) #2
  call void @llvm.trap()
  unreachable

.loopexit39:                                      ; preds = %492, %273
  call void asm sideeffect "", "n"(i32 27) #2
  call void @llvm.trap()
  unreachable

.loopexit40:                                      ; preds = %496, %277
  call void asm sideeffect "", "n"(i32 28) #2
  call void @llvm.trap()
  unreachable

.loopexit41:                                      ; preds = %500, %281
  call void asm sideeffect "", "n"(i32 29) #2
  call void @llvm.trap()
  unreachable

.loopexit47:                                      ; preds = %503, %.mv.ph.mv.fast
  call void asm sideeffect "", "n"(i32 31) #2
  call void @llvm.trap()
  unreachable

603:                                              ; preds = %57
  tail call void asm sideeffect "", "n"(i32 32) #2
  tail call void @llvm.trap()
  unreachable

604:                                              ; preds = %28
  tail call void asm sideeffect "", "n"(i32 33) #2
  tail call void @llvm.trap()
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
  br i1 %8, label %133, label %9, !prof !10

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
  br i1 %54, label %132, label %55, !prof !10

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

132:                                              ; preds = %53
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

133:                                              ; preds = %7
  tail call void asm sideeffect "", "n"(i32 1) #2
  tail call void @llvm.trap()
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
    i64 0, label %284
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
  %39 = phi i64 [ 0, %72 ], [ 0, %27 ], [ 0, %71 ], [ 0, %68 ], [ 0, %142 ], [ 0, %126 ], [ 0, %129 ], [ %136, %135 ], [ 0, %52 ], [ 0, %55 ], [ %62, %61 ], [ 0, %91 ], [ 0, %94 ], [ %101, %100 ], [ 0, %107 ]
  %40 = phi i8 [ 1, %72 ], [ 1, %27 ], [ 1, %71 ], [ 1, %68 ], [ 1, %142 ], [ 1, %126 ], [ 1, %129 ], [ 0, %135 ], [ 1, %52 ], [ 1, %55 ], [ 0, %61 ], [ 1, %91 ], [ 1, %94 ], [ 0, %100 ], [ 1, %107 ]
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
    i64 0, label %283
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
  br i1 %159, label %282, label %160, !prof !10

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
  br i1 %203, label %281, label %204, !prof !10

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

281:                                              ; preds = %202
  call void asm sideeffect "", "n"(i32 0) #2
  call void @llvm.trap()
  unreachable

282:                                              ; preds = %158
  call void asm sideeffect "", "n"(i32 1) #2
  call void @llvm.trap()
  unreachable

283:                                              ; preds = %71
  call void asm sideeffect "", "n"(i32 2) #2
  call void @llvm.trap()
  unreachable

284:                                              ; preds = %27
  call void asm sideeffect "", "n"(i32 3) #2
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
declare void @swift_bridgeObjectRelease(ptr) local_unnamed_addr #2

declare swiftcc { ptr, i64 } @"$s20FoundationEssentials3URLV15fileURLWithPathACSSh_tcfC"(i64, ptr) local_unnamed_addr #0

declare swiftcc { i64, i64 } @"$s20FoundationEssentials4DataV10contentsOf7optionsAcA3URLVh_AC14ReadingOptionsVtKcfC"(ptr, i64, i64, ptr swiftself, ptr noalias swifterror captures(none) dereferenceable(8)) local_unnamed_addr #0

declare swiftcc void @swift_unexpectedError(ptr, ptr, i64, i1, i64) local_unnamed_addr #0

; Function Attrs: noinline
define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFs6UInt32V_Tg5"(ptr %0) local_unnamed_addr #3 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = load i64, ptr %1, align 8, !range !9
  %3 = tail call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs6UInt32V_Tg5"(i1 false, i64 %2, i1 false, ptr %0)
  ret ptr %3
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs6UInt32V_Tg5"(i1 %0, i64 %1, i1 %2, ptr %3) local_unnamed_addr #3 {
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
  br i1 %10, label %38, label %11, !prof !10

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
  %19 = tail call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys6UInt32VGMD") #17
  %20 = shl i64 %.4, 2
  %21 = add i64 %20, 32
  %22 = tail call noalias ptr @swift_allocObject(ptr %19, i64 %21, i64 7) #2
  %call.i = tail call i64 @malloc_usable_size(ptr noundef %22) #18
  %gepdiff = add nsw i64 %call.i, -32
  %23 = sdiv i64 %gepdiff, 4
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
  %31 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %16
  %32 = icmp ult ptr %28, %31
  %.not = icmp eq ptr %27, %3
  %or.cond9 = select i1 %.not, i1 %32, i1 false
  br i1 %or.cond9, label %34, label %.sink.split

.sink.split:                                      ; preds = %30
  %33 = shl nuw i64 %16, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %28, ptr nonnull align 4 %29, i64 %33, i1 false)
  br label %34

34:                                               ; preds = %.sink.split, %30
  store i64 0, ptr %4, align 8
  br label %37

35:                                               ; preds = %26
  %36 = shl nuw i64 %16, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %28, ptr nonnull align 4 %29, i64 %36, i1 false)
  br label %37

37:                                               ; preds = %35, %34
  tail call void @swift_release(ptr nonnull %3) #2
  ret ptr %27

38:                                               ; preds = %9
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable
}

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
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %16 = call swiftcc i64 @"$sSTsE21_copySequenceContents12initializing8IteratorQz_SitSry7ElementQzG_tFSs8UTF8ViewV_Tgq5"(ptr noalias nonnull captures(none) %4, i64 %15, i64 %10, i64 %0, i64 %1, i64 %2, ptr %3)
  %._elements._slice._base._guts._object._object = getelementptr inbounds nuw i8, ptr %4, i64 24
  %17 = load ptr, ptr %._elements._slice._base._guts._object._object, align 8
  %18 = tail call ptr @swift_bridgeObjectRetain(ptr returned %3) #2
  tail call void @swift_bridgeObjectRelease(ptr %17) #2
  %.not = icmp eq i64 %16, %10
  br i1 %.not, label %19, label %54, !prof !11

19:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %._crit_edge

._crit_edge:                                      ; preds = %9, %19
  %20 = phi ptr [ %13, %19 ], [ @_swiftEmptyArrayStorage, %9 ]
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %22 = ptrtoint ptr %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %24 = load i64, ptr %23, align 8, !range !9
  %25 = tail call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %22, i64 %24), !noalias !19
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

54:                                               ; preds = %12
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
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
  br i1 %29, label %41, label %30, !prof !10

30:                                               ; preds = %22
  %31 = lshr i64 %21, 16
  %32 = icmp samesign ult i64 %27, %31
  br i1 %32, label %42, label %33, !prof !10

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

41:                                               ; preds = %22
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

42:                                               ; preds = %30
  tail call void asm sideeffect "", "n"(i32 1) #2
  tail call void @llvm.trap()
  unreachable
}

define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %. = tail call i64 @llvm.smax.i64(i64 %1, i64 %0)
  %2 = icmp eq i64 %., 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %entry
  %4 = tail call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMD") #17
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
  %.fr16 = freeze i64 %5
  %.fr15 = freeze ptr %6
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %.loopexit17, label %9

9:                                                ; preds = %entry
  %10 = inttoptr i64 %1 to ptr
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %.loopexit17, label %12

12:                                               ; preds = %9
  %13 = icmp slt i64 %2, 0
  %14 = lshr i64 %4, 14
  br i1 %13, label %162, label %15, !prof !10

15:                                               ; preds = %12
  %16 = lshr i64 %3, 14
  %17 = icmp eq i64 %16, %14
  br i1 %17, label %.loopexit17, label %18

18:                                               ; preds = %15
  %19 = ptrtoint ptr %.fr15 to i64
  %20 = and i64 %19, 1152921504606846976
  %21 = icmp eq i64 %20, 0
  %22 = and i64 %.fr16, 576460752303423488
  %23 = icmp ne i64 %22, 0
  %24 = or i1 %21, %23
  %25 = zext i1 %24 to i64
  %26 = shl nuw nsw i64 4, %25
  %27 = and i64 %19, 2305843009213693952
  %.not12 = icmp eq i64 %27, 0
  %.elt6 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %28 = and i64 %19, 72057594037927935
  %29 = and i64 %.fr16, 1152921504606846976
  %.not13 = icmp eq i64 %29, 0
  %30 = and i64 %19, 1152921504606846975
  %31 = add nuw nsw i64 %30, 32
  %32 = and i64 %.fr16, 281474976710655
  %33 = lshr i64 %19, 56
  %34 = and i64 %33, 15
  %35 = select i1 %.not12, i64 %32, i64 %34
  br i1 %21, label %.split.us.split, label %.split

.split.us.split:                                  ; preds = %18
  br i1 %.not12, label %.split.us.split.split.us, label %.split.us.split.split

.split.us.split.split.us:                         ; preds = %.split.us.split
  br i1 %.not13, label %.split.us.split.split.us.split.us, label %.split.us.split.split.us.split, !prof !10

.split.us.split.split.us.split.us:                ; preds = %.split.us.split.split.us, %65
  %36 = phi ptr [ %67, %65 ], [ %10, %.split.us.split.split.us ]
  %37 = phi i64 [ %60, %65 ], [ %3, %.split.us.split.split.us ]
  %38 = phi i64 [ %66, %65 ], [ 1, %.split.us.split.split.us ]
  %39 = and i64 %37, 12
  %.not.us.us.us = icmp eq i64 %39, %26
  br i1 %.not.us.us.us, label %40, label %42, !prof !10

40:                                               ; preds = %.split.us.split.split.us.split.us
  %41 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %37, i64 %.fr16, ptr %.fr15)
  br label %42

42:                                               ; preds = %40, %.split.us.split.split.us.split.us
  %43 = phi i64 [ %41, %40 ], [ %37, %.split.us.split.split.us.split.us ]
  %44 = lshr i64 %43, 14
  %45 = icmp samesign ult i64 %44, %16
  %46 = icmp samesign uge i64 %44, %14
  %47 = or i1 %45, %46
  br i1 %47, label %.split6.us, label %48, !prof !10

48:                                               ; preds = %42
  %49 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %.fr16, ptr %.fr15)
  %50 = extractvalue { i64, i64 } %49, 0
  %51 = lshr i64 %43, 16
  %52 = inttoptr i64 %50 to ptr
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %51
  %54 = load i8, ptr %53, align 1
  br i1 %.not.us.us.us, label %55, label %57, !prof !10

55:                                               ; preds = %48
  %56 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %37, i64 %.fr16, ptr %.fr15)
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
  br i1 %.not.us.us, label %74, label %.thread, !prof !10

74:                                               ; preds = %69
  %75 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %71, i64 %.fr16, ptr %.fr15)
  %76 = lshr i64 %75, 14
  %77 = icmp samesign ult i64 %76, %16
  %78 = icmp samesign uge i64 %76, %14
  %79 = or i1 %77, %78
  br i1 %79, label %.split6.us, label %87, !prof !10

.thread:                                          ; preds = %69
  %80 = lshr i64 %71, 14
  %81 = icmp samesign ult i64 %80, %16
  %82 = icmp samesign uge i64 %80, %14
  %83 = or i1 %81, %82
  br i1 %83, label %.split6.us, label %.thread36, !prof !10

.thread36:                                        ; preds = %.thread
  %84 = lshr i64 %71, 16
  %85 = getelementptr inbounds nuw i8, ptr %68, i64 %84
  %86 = load i8, ptr %85, align 1
  br label %92

87:                                               ; preds = %74
  %88 = lshr i64 %75, 16
  %89 = getelementptr inbounds nuw i8, ptr %68, i64 %88
  %90 = load i8, ptr %89, align 1
  %91 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %71, i64 %.fr16, ptr %.fr15)
  br label %92

92:                                               ; preds = %.thread36, %87
  %93 = phi i8 [ %90, %87 ], [ %86, %.thread36 ]
  %94 = phi i64 [ %91, %87 ], [ %71, %.thread36 ]
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
  br i1 %.not.us, label %108, label %110, !prof !10

108:                                              ; preds = %.split.us.split.split
  %109 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %105, i64 %.fr16, ptr %.fr15)
  br label %110

110:                                              ; preds = %108, %.split.us.split.split
  %111 = phi i64 [ %109, %108 ], [ %105, %.split.us.split.split ]
  %112 = lshr i64 %111, 14
  %113 = icmp samesign ult i64 %112, %16
  %114 = icmp samesign uge i64 %112, %14
  %115 = or i1 %113, %114
  br i1 %115, label %.split6.us, label %116, !prof !10

116:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.fr16, ptr %7, align 8
  store i64 %28, ptr %.elt6, align 8
  %117 = lshr i64 %111, 16
  %118 = getelementptr inbounds nuw i8, ptr %7, i64 %117
  %119 = load i8, ptr %118, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %.not.us, label %120, label %122, !prof !10

120:                                              ; preds = %116
  %121 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %105, i64 %.fr16, ptr %.fr15)
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
  br i1 %.not, label %137, label %139, !prof !10

137:                                              ; preds = %.split
  %138 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %134, i64 %.fr16, ptr %.fr15)
  br label %139

139:                                              ; preds = %137, %.split
  %140 = phi i64 [ %138, %137 ], [ %134, %.split ]
  %141 = lshr i64 %140, 14
  %142 = icmp samesign ult i64 %141, %16
  %143 = icmp samesign uge i64 %141, %14
  %144 = or i1 %142, %143
  br i1 %144, label %.split6.us, label %145, !prof !10

145:                                              ; preds = %139
  %146 = tail call swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64 %140, i64 %.fr16, ptr %.fr15)
  br i1 %.not, label %147, label %149, !prof !10

147:                                              ; preds = %145
  %148 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %134, i64 %.fr16, ptr %.fr15)
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i64 [ %148, %147 ], [ %134, %145 ]
  %151 = lshr i64 %150, 16
  %.not15 = icmp samesign ult i64 %151, %35
  br i1 %.not15, label %152, label %.split8, !prof !11

152:                                              ; preds = %149
  %153 = tail call swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64 %150, i64 %.fr16, ptr %.fr15)
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
  store i64 %.fr16, ptr %._elements3._slice._base, align 8
  %._elements3._slice._base._guts._object._object = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.fr15, ptr %._elements3._slice._base._guts._object._object, align 8
  %._position4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %._position4, align 8
  ret i64 %161

162:                                              ; preds = %12
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

.split6.us:                                       ; preds = %139, %110, %74, %.thread, %42
  tail call void asm sideeffect "", "n"(i32 2) #2
  tail call void @llvm.trap()
  unreachable

.split8:                                          ; preds = %149
  tail call void asm sideeffect "", "n"(i32 3) #2
  tail call void @llvm.trap()
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
  switch i8 %4, label %default.unreachable1 [
    i8 0, label %5
    i8 1, label %8
    i8 2, label %14
    i8 3, label %44
  ]

default.unreachable1:                             ; preds = %entry
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
  br i1 %13, label %48, label %22, !prof !10

14:                                               ; preds = %entry
  %15 = inttoptr i64 %0 to ptr
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch)
  call void @swift_beginAccess(ptr nonnull %16, ptr nonnull %access-scratch, i64 0, ptr null) #2
  %.upperBound = getelementptr inbounds nuw i8, ptr %15, i64 24
  %17 = load i64, ptr %.upperBound, align 8
  %18 = load i64, ptr %16, align 8
  %19 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %17, i64 %18)
  %20 = extractvalue { i64, i1 } %19, 0
  %21 = extractvalue { i64, i1 } %19, 1
  br i1 %21, label %46, label %25, !prof !10

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
  %31 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMD") #17
  %32 = add nuw i64 %26, 32
  %33 = call noalias ptr @swift_allocObject(ptr %31, i64 %32, i64 7) #2
  %call.i = call i64 @malloc_usable_size(ptr noundef %33) #18
  %gepdiff = shl i64 %call.i, 1
  %34 = add i64 %gepdiff, -64
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i64 %26, ptr %35, align 8
  %._storage33._capacityAndFlags = getelementptr inbounds nuw i8, ptr %33, i64 24
  store i64 %34, ptr %._storage33._capacityAndFlags, align 8
  br label %36

36:                                               ; preds = %30, %28
  %37 = phi ptr [ %33, %30 ], [ @_swiftEmptyArrayStorage, %28 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %39 = ptrtoint ptr %38 to i64
  %40 = icmp sgt i64 %26, -1
  call void @llvm.assume(i1 %40)
  call swiftcc void @"$s20FoundationEssentials4DataV13_copyContents12initializingAC8IteratorV_SitSrys5UInt8VG_tF"(ptr noalias nonnull sret(<{ %T20FoundationEssentials4DataV8IteratorV, %TSi }>) captures(none) %2, i64 %39, i64 %26, i64 %0, i64 %1)
  %41 = call ptr @"$s20FoundationEssentials4DataV8IteratorV_SitWOh"(ptr nonnull %2)
  %.elt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %42 = load i64, ptr %.elt, align 8
  %.not = icmp eq i64 %42, %26
  br i1 %.not, label %43, label %47, !prof !11

43:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %44

44:                                               ; preds = %43, %25, %entry
  %45 = phi ptr [ %37, %43 ], [ @_swiftEmptyArrayStorage, %entry ], [ @_swiftEmptyArrayStorage, %25 ]
  ret ptr %45

46:                                               ; preds = %14
  call void asm sideeffect "", "n"(i32 0) #2
  call void @llvm.trap()
  unreachable

47:                                               ; preds = %36
  call void asm sideeffect "", "n"(i32 1) #2
  call void @llvm.trap()
  unreachable

48:                                               ; preds = %8
  tail call void asm sideeffect "", "n"(i32 2) #2
  tail call void @llvm.trap()
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

; Function Attrs: noinline
declare swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @swift_beginAccess(ptr, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn
declare zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @swift_endAccess(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read)
define linkonce_odr hidden ptr @__swift_instantiateConcreteTypeFromMangledName(ptr %0) local_unnamed_addr #7 {
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
  %13 = tail call swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr %12, i64 %8, ptr null, ptr null) #19
  %14 = ptrtoint ptr %13 to i64
  store atomic i64 %14, ptr %0 monotonic, align 8
  br label %3
}

; Function Attrs: nounwind memory(argmem: readwrite)
declare swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr, i64, ptr, ptr) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @swift_allocObject(ptr, i64, i64) local_unnamed_addr #2

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noinline
declare swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: sspreq
declare swiftcc void @"$s20FoundationEssentials4DataV13_copyContents12initializingAC8IteratorV_SitSrys5UInt8VG_tF"(ptr noalias sret(<{ %T20FoundationEssentials4DataV8IteratorV, %TSi }>) captures(none), i64, i64, i64, i64) local_unnamed_addr #11

; Function Attrs: noinline nounwind
define linkonce_odr hidden ptr @"$s20FoundationEssentials4DataV8IteratorV_SitWOh"(ptr %0) local_unnamed_addr #4 {
entry:
  %1 = tail call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$s20FoundationEssentials4DataV8IteratorV_SitMD") #17
  %2 = getelementptr inbounds i8, ptr %1, i64 -8
  %.valueWitnesses = load ptr, ptr %2, align 8, !invariant.load !22, !dereferenceable !23
  %3 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy = load ptr, ptr %3, align 8, !invariant.load !22
  tail call void %Destroy(ptr noalias %0, ptr %1) #2
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #5

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
declare i64 @malloc_usable_size(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind }
attributes #3 = { noinline "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn }
attributes #7 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { sspreq "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind willreturn }
attributes #17 = { nounwind memory(read) }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind memory(argmem: read) }

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
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !16, !15}
!18 = !{!"branch_weights", i32 1, i32 1999}
!19 = !{!20}
!20 = distinct !{!20, !21, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_: argument 0"}
!21 = distinct !{!21, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_"}
!22 = !{}
!23 = !{i64 96}
