; ModuleID = 'results/static/guard_ablation_0927/Swift_md5/mv.ll'
source_filename = "results/static/guard_ablation_0927/ir/md5.ll"
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
%Ts23_ContiguousArrayStorageCys6UInt32VG_tailelems1c = type { [1 x i64], %Ts23_ContiguousArrayStorageCys6UInt32VG_tailelems1 }
%Ts23_ContiguousArrayStorageCys6UInt32VG_tailelems1 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V, %Ts6UInt32V }>
%swift.type = type { i64 }
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

@"$s3md55itersSivp" = hidden local_unnamed_addr global %TSi zeroinitializer, align 8
@".str.13.md5/md5.swift" = private unnamed_addr constant [14 x i8] c"md5/md5.swift\00"
@"$s3md54dataSays5UInt8VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$s3md51SSays6UInt32VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@mainTv_ = internal global %Ts23_ContiguousArrayStorageCys6UInt32VG_tailelems0c { [1 x i64] zeroinitializer, %Ts23_ContiguousArrayStorageCys6UInt32VG_tailelems0 <{ %swift.refcounted zeroinitializer, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 64 }>, %TSu <{ i64 128 }> }> }>, %Ts6UInt32V <{ i32 7 }>, %Ts6UInt32V <{ i32 12 }>, %Ts6UInt32V <{ i32 17 }>, %Ts6UInt32V <{ i32 22 }>, %Ts6UInt32V <{ i32 7 }>, %Ts6UInt32V <{ i32 12 }>, %Ts6UInt32V <{ i32 17 }>, %Ts6UInt32V <{ i32 22 }>, %Ts6UInt32V <{ i32 7 }>, %Ts6UInt32V <{ i32 12 }>, %Ts6UInt32V <{ i32 17 }>, %Ts6UInt32V <{ i32 22 }>, %Ts6UInt32V <{ i32 7 }>, %Ts6UInt32V <{ i32 12 }>, %Ts6UInt32V <{ i32 17 }>, %Ts6UInt32V <{ i32 22 }>, %Ts6UInt32V <{ i32 5 }>, %Ts6UInt32V <{ i32 9 }>, %Ts6UInt32V <{ i32 14 }>, %Ts6UInt32V <{ i32 20 }>, %Ts6UInt32V <{ i32 5 }>, %Ts6UInt32V <{ i32 9 }>, %Ts6UInt32V <{ i32 14 }>, %Ts6UInt32V <{ i32 20 }>, %Ts6UInt32V <{ i32 5 }>, %Ts6UInt32V <{ i32 9 }>, %Ts6UInt32V <{ i32 14 }>, %Ts6UInt32V <{ i32 20 }>, %Ts6UInt32V <{ i32 5 }>, %Ts6UInt32V <{ i32 9 }>, %Ts6UInt32V <{ i32 14 }>, %Ts6UInt32V <{ i32 20 }>, %Ts6UInt32V <{ i32 4 }>, %Ts6UInt32V <{ i32 11 }>, %Ts6UInt32V <{ i32 16 }>, %Ts6UInt32V <{ i32 23 }>, %Ts6UInt32V <{ i32 4 }>, %Ts6UInt32V <{ i32 11 }>, %Ts6UInt32V <{ i32 16 }>, %Ts6UInt32V <{ i32 23 }>, %Ts6UInt32V <{ i32 4 }>, %Ts6UInt32V <{ i32 11 }>, %Ts6UInt32V <{ i32 16 }>, %Ts6UInt32V <{ i32 23 }>, %Ts6UInt32V <{ i32 4 }>, %Ts6UInt32V <{ i32 11 }>, %Ts6UInt32V <{ i32 16 }>, %Ts6UInt32V <{ i32 23 }>, %Ts6UInt32V <{ i32 6 }>, %Ts6UInt32V <{ i32 10 }>, %Ts6UInt32V <{ i32 15 }>, %Ts6UInt32V <{ i32 21 }>, %Ts6UInt32V <{ i32 6 }>, %Ts6UInt32V <{ i32 10 }>, %Ts6UInt32V <{ i32 15 }>, %Ts6UInt32V <{ i32 21 }>, %Ts6UInt32V <{ i32 6 }>, %Ts6UInt32V <{ i32 10 }>, %Ts6UInt32V <{ i32 15 }>, %Ts6UInt32V <{ i32 21 }>, %Ts6UInt32V <{ i32 6 }>, %Ts6UInt32V <{ i32 10 }>, %Ts6UInt32V <{ i32 15 }>, %Ts6UInt32V <{ i32 21 }> }> }, align 8
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = linkonce_odr hidden constant ptr @"$ss23_ContiguousArrayStorageCMn"
@"$ss6UInt32VMn" = external global %swift.type_descriptor, align 4
@"got.$ss6UInt32VMn" = linkonce_odr hidden constant ptr @"$ss6UInt32VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss6UInt32VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys6UInt32VGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys6UInt32VGMD" to i64)) to i32), i32 -12 }, align 8
@"$s3md51KSays6UInt32VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@mainTv0_ = internal global %Ts23_ContiguousArrayStorageCys6UInt32VG_tailelems1c { [1 x i64] zeroinitializer, %Ts23_ContiguousArrayStorageCys6UInt32VG_tailelems1 <{ %swift.refcounted zeroinitializer, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 64 }>, %TSu <{ i64 128 }> }> }>, %Ts6UInt32V <{ i32 -680876936 }>, %Ts6UInt32V <{ i32 -389564586 }>, %Ts6UInt32V <{ i32 606105819 }>, %Ts6UInt32V <{ i32 -1044525330 }>, %Ts6UInt32V <{ i32 -176418897 }>, %Ts6UInt32V <{ i32 1200080426 }>, %Ts6UInt32V <{ i32 -1473231341 }>, %Ts6UInt32V <{ i32 -45705983 }>, %Ts6UInt32V <{ i32 1770035416 }>, %Ts6UInt32V <{ i32 -1958414417 }>, %Ts6UInt32V <{ i32 -42063 }>, %Ts6UInt32V <{ i32 -1990404162 }>, %Ts6UInt32V <{ i32 1804603682 }>, %Ts6UInt32V <{ i32 -40341101 }>, %Ts6UInt32V <{ i32 -1502002290 }>, %Ts6UInt32V <{ i32 1236535329 }>, %Ts6UInt32V <{ i32 -165796510 }>, %Ts6UInt32V <{ i32 -1069501632 }>, %Ts6UInt32V <{ i32 643717713 }>, %Ts6UInt32V <{ i32 -373897302 }>, %Ts6UInt32V <{ i32 -701558691 }>, %Ts6UInt32V <{ i32 38016083 }>, %Ts6UInt32V <{ i32 -660478335 }>, %Ts6UInt32V <{ i32 -405537848 }>, %Ts6UInt32V <{ i32 568446438 }>, %Ts6UInt32V <{ i32 -1019803690 }>, %Ts6UInt32V <{ i32 -187363961 }>, %Ts6UInt32V <{ i32 1163531501 }>, %Ts6UInt32V <{ i32 -1444681467 }>, %Ts6UInt32V <{ i32 -51403784 }>, %Ts6UInt32V <{ i32 1735328473 }>, %Ts6UInt32V <{ i32 -1926607734 }>, %Ts6UInt32V <{ i32 -378558 }>, %Ts6UInt32V <{ i32 -2022574463 }>, %Ts6UInt32V <{ i32 1839030562 }>, %Ts6UInt32V <{ i32 -35309556 }>, %Ts6UInt32V <{ i32 -1530992060 }>, %Ts6UInt32V <{ i32 1272893353 }>, %Ts6UInt32V <{ i32 -155497632 }>, %Ts6UInt32V <{ i32 -1094730640 }>, %Ts6UInt32V <{ i32 681279174 }>, %Ts6UInt32V <{ i32 -358537222 }>, %Ts6UInt32V <{ i32 -722521979 }>, %Ts6UInt32V <{ i32 76029189 }>, %Ts6UInt32V <{ i32 -640364487 }>, %Ts6UInt32V <{ i32 -421815835 }>, %Ts6UInt32V <{ i32 530742520 }>, %Ts6UInt32V <{ i32 -995338651 }>, %Ts6UInt32V <{ i32 -198630844 }>, %Ts6UInt32V <{ i32 1126891415 }>, %Ts6UInt32V <{ i32 -1416354905 }>, %Ts6UInt32V <{ i32 -57434055 }>, %Ts6UInt32V <{ i32 1700485571 }>, %Ts6UInt32V <{ i32 -1894986606 }>, %Ts6UInt32V <{ i32 -1051523 }>, %Ts6UInt32V <{ i32 -2054922799 }>, %Ts6UInt32V <{ i32 1873313359 }>, %Ts6UInt32V <{ i32 -30611744 }>, %Ts6UInt32V <{ i32 -1560198380 }>, %Ts6UInt32V <{ i32 1309151649 }>, %Ts6UInt32V <{ i32 -145523070 }>, %Ts6UInt32V <{ i32 -1120210379 }>, %Ts6UInt32V <{ i32 718787259 }>, %Ts6UInt32V <{ i32 -343485551 }> }> }, align 8
@"$s3md55finals6UInt32Vvp" = hidden local_unnamed_addr global %Ts6UInt32V zeroinitializer, align 4
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
  %.not78 = icmp eq i64 %21, 0
  br i1 %.not78, label %22, label %.thread95, !prof !11

22:                                               ; preds = %20
  br i1 %.not, label %26, label %23

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.elt35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %24 = and i64 %12, 72057594037927935
  store i64 %9, ptr %2, align 8
  store i64 %24, ptr %.elt35, align 8
  %25 = trunc i64 %9 to i8
  switch i8 %25, label %58 [
    i8 45, label %28
    i8 43, label %57
  ]

26:                                               ; preds = %22
  %27 = and i64 %9, 1152921504606846976
  %.not76 = icmp eq i64 %27, 0
  br i1 %.not76, label %102, label %99, !prof !10

28:                                               ; preds = %23
  switch i64 %16, label %29 [
    i64 0, label %293
    i64 1, label %.thread98
  ], !prof !12

29:                                               ; preds = %28
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %31 = getelementptr i8, ptr %2, i64 %16
  br label %40

.thread98:                                        ; preds = %58, %57, %28
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %32

.loopexit104:                                     ; preds = %76, %71, %68, %63, %53, %48, %45, %40, %95, %90, %87, %82
  %.sroa.17.0 = phi i8 [ 1, %40 ], [ 1, %82 ], [ 0, %95 ], [ 1, %90 ], [ 1, %87 ], [ 0, %53 ], [ 1, %48 ], [ 1, %45 ], [ 0, %76 ], [ 1, %71 ], [ 1, %68 ], [ 1, %63 ]
  %.sroa.0.0 = phi i64 [ 0, %40 ], [ 0, %82 ], [ %96, %95 ], [ 0, %90 ], [ 0, %87 ], [ %54, %53 ], [ 0, %48 ], [ 0, %45 ], [ %77, %76 ], [ 0, %71 ], [ 0, %68 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %32

32:                                               ; preds = %.thread, %.loopexit104, %.thread98
  %.sroa.0.294 = phi i64 [ %110, %.thread ], [ %.sroa.0.0, %.loopexit104 ], [ 0, %.thread98 ]
  %.sroa.17.293 = phi i8 [ %109, %.thread ], [ %.sroa.17.0, %.loopexit104 ], [ 1, %.thread98 ]
  call void @swift_bridgeObjectRelease(ptr %10) #2
  br label %36

.thread95:                                        ; preds = %20
  %33 = tail call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSSSiADSSRszsAER_r0_lIetgyr_Tpq5Si_Tg5"(i64 %9, ptr %10, i64 10)
  tail call void @swift_bridgeObjectRelease(ptr %10) #2
  %34 = extractvalue { i64, i8 } %33, 0
  %35 = extractvalue { i64, i8 } %33, 1
  br label %36

36:                                               ; preds = %.thread95, %32
  %37 = phi i64 [ %34, %.thread95 ], [ %.sroa.0.294, %32 ]
  %38 = phi i8 [ %35, %.thread95 ], [ %.sroa.17.293, %32 ]
  %39 = icmp eq i8 %38, 1
  br i1 %39, label %odessy.chk1, label %111

40:                                               ; preds = %53, %29
  %41 = phi ptr [ %30, %29 ], [ %55, %53 ]
  %42 = phi i64 [ 0, %29 ], [ %54, %53 ]
  %43 = load i8, ptr %41, align 1
  %44 = add i8 %43, -48
  %or.cond = icmp ult i8 %44, 10
  br i1 %or.cond, label %45, label %.loopexit104, !prof !13

45:                                               ; preds = %40
  %46 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %42, i64 10)
  %47 = extractvalue { i64, i1 } %46, 1
  br i1 %47, label %.loopexit104, label %48

48:                                               ; preds = %45
  %49 = extractvalue { i64, i1 } %46, 0
  %50 = zext nneg i8 %44 to i64
  %51 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %49, i64 %50)
  %52 = extractvalue { i64, i1 } %51, 1
  br i1 %52, label %.loopexit104, label %53, !prof !10

53:                                               ; preds = %48
  %54 = extractvalue { i64, i1 } %51, 0
  %55 = getelementptr inbounds nuw i8, ptr %41, i64 1
  %56 = icmp eq ptr %55, %31
  br i1 %56, label %.loopexit104, label %40

57:                                               ; preds = %23
  switch i64 %16, label %60 [
    i64 0, label %292
    i64 1, label %.thread98
  ], !prof !12

58:                                               ; preds = %23
  %59 = icmp eq i64 %16, 0
  br i1 %59, label %.thread98, label %80, !prof !10

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %62 = getelementptr i8, ptr %2, i64 %16
  br label %63

63:                                               ; preds = %76, %60
  %64 = phi ptr [ %61, %60 ], [ %78, %76 ]
  %65 = phi i64 [ 0, %60 ], [ %77, %76 ]
  %66 = load i8, ptr %64, align 1
  %67 = add i8 %66, -48
  %or.cond40 = icmp ult i8 %67, 10
  br i1 %or.cond40, label %68, label %.loopexit104, !prof !13

68:                                               ; preds = %63
  %69 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %65, i64 10)
  %70 = extractvalue { i64, i1 } %69, 1
  br i1 %70, label %.loopexit104, label %71

71:                                               ; preds = %68
  %72 = extractvalue { i64, i1 } %69, 0
  %73 = zext nneg i8 %67 to i64
  %74 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %72, i64 %73)
  %75 = extractvalue { i64, i1 } %74, 1
  br i1 %75, label %.loopexit104, label %76, !prof !10

76:                                               ; preds = %71
  %77 = extractvalue { i64, i1 } %74, 0
  %78 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %79 = icmp eq ptr %78, %62
  br i1 %79, label %.loopexit104, label %63

80:                                               ; preds = %58
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 %16
  br label %82

82:                                               ; preds = %95, %80
  %83 = phi ptr [ %2, %80 ], [ %97, %95 ]
  %84 = phi i64 [ 0, %80 ], [ %96, %95 ]
  %85 = load i8, ptr %83, align 1
  %86 = add i8 %85, -48
  %or.cond41 = icmp ult i8 %86, 10
  br i1 %or.cond41, label %87, label %.loopexit104, !prof !13

87:                                               ; preds = %82
  %88 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %84, i64 10)
  %89 = extractvalue { i64, i1 } %88, 1
  br i1 %89, label %.loopexit104, label %90

90:                                               ; preds = %87
  %91 = extractvalue { i64, i1 } %88, 0
  %92 = zext nneg i8 %86 to i64
  %93 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %91, i64 %92)
  %94 = extractvalue { i64, i1 } %93, 1
  br i1 %94, label %.loopexit104, label %95, !prof !10

95:                                               ; preds = %90
  %96 = extractvalue { i64, i1 } %93, 0
  %97 = getelementptr inbounds nuw i8, ptr %83, i64 1
  %98 = icmp eq ptr %97, %81
  br i1 %98, label %.loopexit104, label %82

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
  store i64 %37, ptr @"$s3md55itersSivp", align 8
  %112 = call swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"()
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 16
  %114 = load i64, ptr %113, align 8, !range !9
  %115 = icmp samesign ult i64 %114, 3
  br i1 %115, label %odessy.chk2, label %116, !prof !10

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
  %.not79 = icmp eq ptr %125, null
  call void @swift_release(ptr %122) #2
  br i1 %.not79, label %126, label %290

126:                                              ; preds = %116
  %127 = extractvalue { i64, i64 } %124, 1
  %128 = extractvalue { i64, i64 } %124, 0
  %129 = inttoptr i64 %123 to ptr
  call void @swift_release(ptr %129) #2
  %130 = call swiftcc ptr @"$ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlF20FoundationEssentials4DataV_Tgq5"(i64 %128, i64 %127)
  call void @"$s20FoundationEssentials4DataV15_RepresentationOWOe"(i64 %128, i64 %127)
  store ptr %130, ptr @"$s3md54dataSays5UInt8VGvp", align 8
  %131 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys6UInt32VGMD") #15
  %staticref = call ptr @swift_initStaticObject(ptr %131, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv_, i64 8)) #16
  store ptr %staticref, ptr @"$s3md51SSays6UInt32VGvp", align 8
  %staticref3 = call ptr @swift_initStaticObject(ptr %131, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv0_, i64 8)) #16
  store ptr %staticref3, ptr @"$s3md51KSays6UInt32VGvp", align 8
  store i32 0, ptr @"$s3md55finals6UInt32Vvp", align 4
  %132 = load i64, ptr @"$s3md55itersSivp", align 8
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %odessy.chk3, label %134, !prof !10

134:                                              ; preds = %126
  %135 = icmp eq i64 %132, 0
  br i1 %135, label %.loopexit103, label %.preheader102.preheader

.loopexit103.loopexit:                            ; preds = %.loopexit
  %.pre = load i32, ptr @"$s3md55finals6UInt32Vvp", align 4
  br label %.loopexit103

.loopexit103:                                     ; preds = %.loopexit103.loopexit, %134
  %136 = phi i32 [ %.pre, %.loopexit103.loopexit ], [ 0, %134 ]
  %137 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMD") #15
  %138 = call noalias ptr @swift_allocObject(ptr %137, i64 64, i64 7) #2
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 16
  store i64 1, ptr %139, align 8
  %._storage32._capacityAndFlags = getelementptr inbounds nuw i8, ptr %138, i64 24
  store i64 2, ptr %._storage32._capacityAndFlags, align 8
  %140 = getelementptr inbounds nuw i8, ptr %138, i64 32
  %141 = getelementptr inbounds nuw i8, ptr %138, i64 56
  store ptr @"$ss6UInt32VN", ptr %141, align 8
  store i32 %136, ptr %140, align 8
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %138, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %138) #2
  ret i32 0

.preheader102.preheader:                          ; preds = %134, %.loopexit
  %142 = phi i64 [ %143, %.loopexit ], [ 0, %134 ]
  %143 = add nuw nsw i64 %142, 1
  %144 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64 16, ptr nonnull @"$ss6UInt32VN")
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 16
  store i64 16, ptr %145, align 8
  %146 = getelementptr inbounds nuw i8, ptr %144, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %146, i8 0, i64 64, i1 false)
  %147 = load ptr, ptr @"$s3md54dataSays5UInt8VGvp", align 8
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 16
  %149 = load i64, ptr %148, align 8, !range !9
  %150 = lshr i64 %149, 6
  %151 = icmp samesign ult i64 %149, 64
  br i1 %151, label %.loopexit, label %152

152:                                              ; preds = %.preheader102.preheader
  %153 = getelementptr i8, ptr %147, i64 32
  %154 = load ptr, ptr @"$s3md51KSays6UInt32VGvp", align 8
  %155 = load ptr, ptr @"$s3md51SSays6UInt32VGvp", align 8
  %156 = getelementptr inbounds nuw i8, ptr %154, i64 32
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %158 = getelementptr inbounds nuw i8, ptr %154, i64 16
  %159 = load i64, ptr %158, align 8, !range !9
  %160 = icmp samesign ult i64 %159, 64
  br i1 %160, label %odessy.chk4, label %161, !prof !10

161:                                              ; preds = %152
  %162 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %163 = load i64, ptr %162, align 8, !range !9
  %164 = icmp samesign ult i64 %163, 64
  br i1 %164, label %odessy.chk5, label %.preheader101.preheader, !prof !10

.preheader101.preheader:                          ; preds = %161
  %scevgep = getelementptr i8, ptr %144, i64 36
  %invariant.gep225 = getelementptr i8, ptr %147, i64 36
  %invariant.op = sub nuw i64 %149, 1
  %invariant.op121 = sub nuw i64 %149, 3
  br label %.preheader101

.loopexit.loopexit:                               ; preds = %230
  %165 = add i32 %233, %231
  %166 = add i32 %165, %234
  %167 = add i32 %166, %232
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader102.preheader
  %168 = phi i32 [ -2, %.preheader102.preheader ], [ %167, %.loopexit.loopexit ]
  %169 = load i32, ptr @"$s3md55finals6UInt32Vvp", align 4
  %170 = add i32 %169, %168
  store i32 %170, ptr @"$s3md55finals6UInt32Vvp", align 4
  call void @swift_release(ptr nonnull %144) #2
  %171 = icmp eq i64 %143, %132
  br i1 %171, label %.loopexit103.loopexit, label %.preheader102.preheader

.preheader101:                                    ; preds = %230, %.preheader101.preheader
  %172 = phi i32 [ %234, %230 ], [ 271733878, %.preheader101.preheader ]
  %173 = phi i32 [ %233, %230 ], [ -1732584194, %.preheader101.preheader ]
  %174 = phi i32 [ %232, %230 ], [ -271733879, %.preheader101.preheader ]
  %175 = phi i32 [ %231, %230 ], [ 1732584193, %.preheader101.preheader ]
  %176 = phi i64 [ %192, %230 ], [ 0, %.preheader101.preheader ]
  %177 = shl i64 %176, 6
  %umax190 = call i64 @llvm.umax.i64(i64 %149, i64 %177)
  %178 = mul nsw i64 %176, -64
  %179 = or disjoint i64 %178, 3
  %180 = add i64 %179, %umax190
  %181 = lshr i64 %180, 2
  %umax191 = call i64 @llvm.umax.i64(i64 %149, i64 %177)
  %182 = or disjoint i64 %178, 2
  %183 = add i64 %182, %umax191
  %184 = lshr i64 %183, 2
  %umin192 = call i64 @llvm.umin.i64(i64 %181, i64 %184)
  %185 = or disjoint i64 %177, 2
  %umax193 = call i64 @llvm.umax.i64(i64 %149, i64 %185)
  %186 = or disjoint i64 %178, 1
  %187 = add i64 %186, %umax193
  %188 = lshr i64 %187, 2
  %umin194 = call i64 @llvm.umin.i64(i64 %umin192, i64 %188)
  %umax195 = call i64 @llvm.umax.i64(i64 %149, i64 %177)
  %189 = add i64 %umax195, %178
  %190 = lshr i64 %189, 2
  %umin196 = call i64 @llvm.umin.i64(i64 %umin194, i64 %190)
  %umin197 = call i64 @llvm.umin.i64(i64 %umin196, i64 15)
  %191 = add nuw nsw i64 %umin197, 1
  %192 = add nuw nsw i64 %176, 1
  %min.iters.check = icmp samesign ult i64 %umin196, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader101
  %gep226 = getelementptr i8, ptr %invariant.gep225, i64 %177
  %193 = shl nuw nsw i64 %umin197, 2
  %scevgep189 = getelementptr i8, ptr %gep226, i64 %193
  %gep = getelementptr i8, ptr %153, i64 %177
  %scevgep186 = getelementptr i8, ptr %scevgep, i64 %193
  %bound0 = icmp ult ptr %146, %scevgep189
  %bound1 = icmp ult ptr %gep, %scevgep186
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %191, 3
  %194 = icmp eq i64 %n.mod.vf, 0
  %195 = select i1 %194, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %191, %195
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %196 = shl nuw nsw i64 %index, 2
  %197 = getelementptr inbounds nuw i8, ptr %gep, i64 %196
  %wide.vec = load <16 x i8>, ptr %197, align 1
  %strided.vec = shufflevector <16 x i8> %wide.vec, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec198 = shufflevector <16 x i8> %wide.vec, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec199 = shufflevector <16 x i8> %wide.vec, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec200 = shufflevector <16 x i8> %wide.vec, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %198 = zext <4 x i8> %strided.vec198 to <4 x i32>
  %199 = shl nuw nsw <4 x i32> %198, splat (i32 8)
  %200 = zext <4 x i8> %strided.vec to <4 x i32>
  %201 = or disjoint <4 x i32> %199, %200
  %202 = zext <4 x i8> %strided.vec199 to <4 x i32>
  %203 = shl nuw nsw <4 x i32> %202, splat (i32 16)
  %204 = or disjoint <4 x i32> %201, %203
  %205 = zext <4 x i8> %strided.vec200 to <4 x i32>
  %206 = shl nuw <4 x i32> %205, splat (i32 24)
  %207 = or disjoint <4 x i32> %204, %206
  %208 = getelementptr inbounds nuw [4 x i8], ptr %146, i64 %index
  store <4 x i32> %207, ptr %208, align 4, !alias.scope !14, !noalias !17
  %index.next = add nuw i64 %index, 4
  %209 = icmp eq i64 %index.next, %n.vec
  br i1 %209, label %scalar.ph.preheader, label %vector.body, !llvm.loop !19

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.preheader101
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader101 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %218
  %210 = phi i64 [ %211, %218 ], [ %.ph, %scalar.ph.preheader ]
  %211 = add nuw nsw i64 %210, 1
  %212 = shl nuw nsw i64 %210, 2
  %213 = add nuw nsw i64 %212, %177
  %.not82 = icmp ult i64 %213, %149
  br i1 %.not82, label %214, label %odessy.chk7, !prof !11

214:                                              ; preds = %scalar.ph
  %.not83 = icmp samesign ult i64 %213, %invariant.op
  br i1 %.not83, label %215, label %odessy.chk8, !prof !11

215:                                              ; preds = %214
  %216 = or disjoint i64 %213, 2
  %.not84 = icmp samesign ult i64 %216, %149
  br i1 %.not84, label %217, label %odessy.chk9, !prof !11

217:                                              ; preds = %215
  %.not127 = icmp samesign ult i64 %213, %invariant.op121
  br i1 %.not127, label %218, label %odessy.chk10, !prof !11

218:                                              ; preds = %217
  %219 = getelementptr inbounds nuw i8, ptr %153, i64 %213
  %220 = load i32, ptr %219, align 1
  %221 = getelementptr inbounds nuw [4 x i8], ptr %146, i64 %210
  store i32 %220, ptr %221, align 4
  %222 = icmp eq i64 %211, 16
  br i1 %222, label %.preheader, label %scalar.ph, !llvm.loop !22

.preheader:                                       ; preds = %218, %272
  %223 = phi i32 [ %224, %272 ], [ %175, %218 ]
  %224 = phi i32 [ %226, %272 ], [ %172, %218 ]
  %225 = phi i32 [ %288, %272 ], [ %174, %218 ]
  %226 = phi i32 [ %225, %272 ], [ %173, %218 ]
  %227 = phi i64 [ %228, %272 ], [ 0, %218 ]
  %228 = add nuw nsw i64 %227, 1
  %229 = icmp samesign ult i64 %227, 16
  br i1 %229, label %236, label %241

230:                                              ; preds = %272
  %231 = add i32 %224, %175
  %232 = add i32 %288, %174
  %233 = add i32 %225, %173
  %234 = add i32 %226, %172
  %235 = icmp eq i64 %192, %150
  br i1 %235, label %.loopexit.loopexit, label %.preheader101

236:                                              ; preds = %.preheader
  %237 = and i32 %226, %225
  %238 = xor i32 %225, -1
  %239 = and i32 %224, %238
  %240 = or i32 %237, %239
  br label %265

241:                                              ; preds = %.preheader
  %242 = icmp samesign ult i64 %227, 32
  br i1 %242, label %243, label %251

243:                                              ; preds = %241
  %244 = and i32 %225, %224
  %245 = xor i32 %224, -1
  %246 = and i32 %226, %245
  %247 = or i32 %246, %244
  %248 = mul nuw nsw i64 %227, 5
  %249 = add nuw nsw i64 %248, 1
  %250 = and i64 %249, 15
  br label %265

251:                                              ; preds = %241
  %252 = icmp samesign ult i64 %227, 48
  br i1 %252, label %253, label %259

253:                                              ; preds = %251
  %254 = xor i32 %225, %224
  %255 = xor i32 %254, %226
  %256 = mul nuw nsw i64 %227, 3
  %257 = add nuw nsw i64 %256, 5
  %258 = and i64 %257, 15
  br label %265

259:                                              ; preds = %251
  %260 = mul nuw nsw i64 %227, 7
  %261 = xor i32 %224, -1
  %262 = or i32 %225, %261
  %263 = xor i32 %226, %262
  %264 = and i64 %260, 15
  br label %265

265:                                              ; preds = %259, %253, %243, %236
  %266 = phi i64 [ %264, %259 ], [ %258, %253 ], [ %250, %243 ], [ %227, %236 ]
  %267 = phi i32 [ %263, %259 ], [ %255, %253 ], [ %247, %243 ], [ %240, %236 ]
  %268 = getelementptr inbounds nuw [4 x i8], ptr %157, i64 %227
  %269 = load i32, ptr %268, align 4
  %270 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 32, i32 %269)
  %271 = extractvalue { i32, i1 } %270, 1
  br i1 %271, label %odessy.chk11, label %272, !prof !10

272:                                              ; preds = %265
  %273 = extractvalue { i32, i1 } %270, 0
  %or.cond90 = icmp ugt i32 %269, 31
  %274 = add i32 %267, %223
  %275 = getelementptr inbounds nuw [4 x i8], ptr %156, i64 %227
  %276 = load i32, ptr %275, align 4
  %277 = add i32 %274, %276
  %278 = getelementptr inbounds nuw [4 x i8], ptr %146, i64 %266
  %279 = load i32, ptr %278, align 4
  %280 = add i32 %277, %279
  %281 = and i32 %269, 31
  %282 = shl i32 %280, %281
  %283 = select i1 %or.cond90, i32 0, i32 %282, !prof !23
  %or.cond89 = icmp ugt i32 %273, 31
  %284 = and i32 %273, 31
  %285 = lshr i32 %280, %284
  %286 = select i1 %or.cond89, i32 0, i32 %285, !prof !23
  %287 = or i32 %283, %286
  %288 = add i32 %287, %225
  %289 = icmp eq i64 %228, 64
  br i1 %289, label %230, label %.preheader

290:                                              ; preds = %116
  %291 = inttoptr i64 %123 to ptr
  call void @swift_release(ptr %291) #2
  call swiftcc void @swift_unexpectedError(ptr nonnull %125, ptr nonnull @".str.13.md5/md5.swift", i64 13, i1 true, i64 7)
  unreachable

292:                                              ; preds = %57
  tail call void asm sideeffect "", "n"(i32 30) #2
  tail call void @llvm.trap()
  unreachable

293:                                              ; preds = %28
  tail call void asm sideeffect "", "n"(i32 31) #2
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

odessy.chk3:                                      ; preds = %126
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %152
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %161
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk7:                                      ; preds = %scalar.ph
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %214
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %215
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %217
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %265
  call void @odessy.chk(i32 11)
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
  tail call void @odessy.chk(i32 12)
  unreachable

odessy.chk1:                                      ; preds = %7
  tail call void @odessy.chk(i32 13)
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
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk1:                                      ; preds = %158
  call void @odessy.chk(i32 15)
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
  %25 = tail call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %22, i64 %24), !noalias !24
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
  tail call void @odessy.chk(i32 16)
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
  tail call void @odessy.chk(i32 17)
  unreachable

odessy.chk1:                                      ; preds = %30
  tail call void @odessy.chk(i32 18)
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
  br i1 %13, label %odessy.chk, label %15, !prof !10

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
  br i1 %.not13, label %.split.us.split.split.us.split.us, label %.split.us.split.split.us.split, !prof !10

.split.us.split.split.us.split.us:                ; preds = %.split.us.split.split.us, %65
  %36 = phi ptr [ %67, %65 ], [ %10, %.split.us.split.split.us ]
  %37 = phi i64 [ %60, %65 ], [ %3, %.split.us.split.split.us ]
  %38 = phi i64 [ %66, %65 ], [ 1, %.split.us.split.split.us ]
  %39 = and i64 %37, 12
  %.not.us.us.us = icmp eq i64 %39, %26
  br i1 %.not.us.us.us, label %40, label %42, !prof !10

40:                                               ; preds = %.split.us.split.split.us.split.us
  %41 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %37, i64 %.fr12, ptr %.fr11)
  br label %42

42:                                               ; preds = %40, %.split.us.split.split.us.split.us
  %43 = phi i64 [ %41, %40 ], [ %37, %.split.us.split.split.us.split.us ]
  %44 = lshr i64 %43, 14
  %45 = icmp samesign ult i64 %44, %16
  %46 = icmp samesign uge i64 %44, %14
  %47 = or i1 %45, %46
  br i1 %47, label %odessy.chk1, label %48, !prof !10

48:                                               ; preds = %42
  %49 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %.fr12, ptr %.fr11)
  %50 = extractvalue { i64, i64 } %49, 0
  %51 = lshr i64 %43, 16
  %52 = inttoptr i64 %50 to ptr
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %51
  %54 = load i8, ptr %53, align 1
  br i1 %.not.us.us.us, label %55, label %57, !prof !10

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
  br i1 %.not.us.us, label %74, label %.thread, !prof !10

74:                                               ; preds = %69
  %75 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %71, i64 %.fr12, ptr %.fr11)
  %76 = lshr i64 %75, 14
  %77 = icmp samesign ult i64 %76, %16
  %78 = icmp samesign uge i64 %76, %14
  %79 = or i1 %77, %78
  br i1 %79, label %odessy.chk1, label %87, !prof !10

.thread:                                          ; preds = %69
  %80 = lshr i64 %71, 14
  %81 = icmp samesign ult i64 %80, %16
  %82 = icmp samesign uge i64 %80, %14
  %83 = or i1 %81, %82
  br i1 %83, label %odessy.chk1, label %.thread32, !prof !10

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
  br i1 %.not.us, label %108, label %110, !prof !10

108:                                              ; preds = %.split.us.split.split
  %109 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %105, i64 %.fr12, ptr %.fr11)
  br label %110

110:                                              ; preds = %108, %.split.us.split.split
  %111 = phi i64 [ %109, %108 ], [ %105, %.split.us.split.split ]
  %112 = lshr i64 %111, 14
  %113 = icmp samesign ult i64 %112, %16
  %114 = icmp samesign uge i64 %112, %14
  %115 = or i1 %113, %114
  br i1 %115, label %odessy.chk1, label %116, !prof !10

116:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.fr12, ptr %7, align 8
  store i64 %28, ptr %.elt6, align 8
  %117 = lshr i64 %111, 16
  %118 = getelementptr inbounds nuw i8, ptr %7, i64 %117
  %119 = load i8, ptr %118, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %.not.us, label %120, label %122, !prof !10

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
  br i1 %.not, label %137, label %139, !prof !10

137:                                              ; preds = %.split
  %138 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %134, i64 %.fr12, ptr %.fr11)
  br label %139

139:                                              ; preds = %137, %.split
  %140 = phi i64 [ %138, %137 ], [ %134, %.split ]
  %141 = lshr i64 %140, 14
  %142 = icmp samesign ult i64 %141, %16
  %143 = icmp samesign uge i64 %141, %14
  %144 = or i1 %142, %143
  br i1 %144, label %odessy.chk1, label %145, !prof !10

145:                                              ; preds = %139
  %146 = tail call swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64 %140, i64 %.fr12, ptr %.fr11)
  br i1 %.not, label %147, label %149, !prof !10

147:                                              ; preds = %145
  %148 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %134, i64 %.fr12, ptr %.fr11)
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i64 [ %148, %147 ], [ %134, %145 ]
  %151 = lshr i64 %150, 16
  %.not15 = icmp samesign ult i64 %151, %35
  br i1 %.not15, label %152, label %odessy.chk2, !prof !11

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
  tail call void @odessy.chk(i32 19)
  unreachable

odessy.chk1:                                      ; preds = %139, %110, %74, %.thread, %42
  tail call void @odessy.chk(i32 20)
  unreachable

odessy.chk2:                                      ; preds = %149
  tail call void @odessy.chk(i32 21)
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
  br i1 %13, label %odessy.chk2, label %22, !prof !10

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
  br i1 %.not, label %43, label %odessy.chk1, !prof !11

43:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %44

44:                                               ; preds = %43, %25, %entry
  %45 = phi ptr [ %37, %43 ], [ @_swiftEmptyArrayStorage, %entry ], [ @_swiftEmptyArrayStorage, %25 ]
  ret ptr %45

odessy.chk:                                       ; preds = %14
  call void @odessy.chk(i32 22)
  unreachable

odessy.chk1:                                      ; preds = %36
  call void @odessy.chk(i32 23)
  unreachable

odessy.chk2:                                      ; preds = %8
  tail call void @odessy.chk(i32 24)
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #8

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #8

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #8

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #8

; Function Attrs: nounwind
declare ptr @swift_allocObject(ptr, i64, i64) local_unnamed_addr #2

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: noinline
declare swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
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
  %.valueWitnesses = load ptr, ptr %2, align 8, !invariant.load !27, !dereferenceable !28
  %3 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy = load ptr, ptr %3, align 8, !invariant.load !27
  tail call void %Destroy(ptr noalias %0, ptr %1) #2
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #14

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind }
attributes #3 = { noinline "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(argmem: readwrite) }
attributes #7 = { mustprogress nounwind willreturn }
attributes #8 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { sspreq "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !20}
!23 = !{!"branch_weights", i32 2002, i32 2000}
!24 = !{!25}
!25 = distinct !{!25, !26, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_: argument 0"}
!26 = distinct !{!26, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_"}
!27 = !{}
!28 = !{i64 96}
