; ModuleID = 'results/static/guard_competitors/Swift_base64/irce.ll'
source_filename = "/Users/ebrah/Project/compiler/ODeSSy/logs/swift_triage/base64.ll"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx26.0.0"

%TSi = type <{ i64 }>
%TSa = type <{ %Ts12_ArrayBufferV }>
%Ts12_ArrayBufferV = type <{ %Ts14_BridgeStorageV }>
%Ts14_BridgeStorageV = type <{ ptr }>
%Ts6UInt64V = type <{ i64 }>
%swift.type_descriptor = type opaque
%swift.type = type { i64 }
%struct._SwiftEmptyArrayStorage = type { %struct.HeapObject, %struct._SwiftArrayBodyStorage }
%struct.HeapObject = type { ptr, %struct.InlineRefCountsPlaceholder }
%struct.InlineRefCountsPlaceholder = type { i64 }
%struct._SwiftArrayBodyStorage = type { i64, i64 }
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

@"$s6base645itersSivp" = hidden local_unnamed_addr global %TSi zeroinitializer, align 8
@"$s6base644dataSays5UInt8VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$s6base643tblSays5UInt8VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$s6base645finals6UInt64Vvp" = hidden global %Ts6UInt64V zeroinitializer, align 8
@".str.19.base64/base64.swift" = private unnamed_addr constant [20 x i8] c"base64/base64.swift\00"
@".str.64.ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00"
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = private unnamed_addr constant ptr @"$ss23_ContiguousArrayStorageCMn"
@"symbolic _____yypG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____yypG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"yypG", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCyypGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCyypGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____yypG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCyypGMR" to i64)) to i32), i32 9 }, align 8
@"$ss6UInt64VN" = external global %swift.type, align 8
@"\01l_entry_point" = private constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @main to i64), i64 ptrtoint (ptr @"\01l_entry_point" to i64)) to i32), i32 0 }, section "__TEXT, __swift5_entry, regular, no_dead_strip", align 4
@"_swift_FORCE_LOAD_$_swiftFoundation_$_base64" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftFoundation"
@"_swift_FORCE_LOAD_$_swift_Builtin_float_$_base64" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swift_Builtin_float"
@"_swift_FORCE_LOAD_$_swiftObjectiveC_$_base64" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftObjectiveC"
@"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_base64" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftCoreFoundation"
@"_swift_FORCE_LOAD_$_swiftDispatch_$_base64" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftDispatch"
@"_swift_FORCE_LOAD_$_swiftXPC_$_base64" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftXPC"
@"_swift_FORCE_LOAD_$_swiftIOKit_$_base64" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftIOKit"
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
@llvm.used = appending global [10 x ptr] [ptr @"\01l_entry_point", ptr @__swift_reflection_version, ptr @"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_base64", ptr @"_swift_FORCE_LOAD_$_swiftDispatch_$_base64", ptr @"_swift_FORCE_LOAD_$_swiftFoundation_$_base64", ptr @"_swift_FORCE_LOAD_$_swiftIOKit_$_base64", ptr @"_swift_FORCE_LOAD_$_swiftObjectiveC_$_base64", ptr @"_swift_FORCE_LOAD_$_swiftXPC_$_base64", ptr @"_swift_FORCE_LOAD_$_swift_Builtin_float_$_base64", ptr @main], section "llvm.metadata"

define noundef i32 @main(i32 %0, ptr readnone captures(none) %1) #0 {
entry:
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  %access-scratch = alloca [24 x i8], align 8
  %2 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %3 = tail call swiftcc %swift.metadata_response @"$s10Foundation3URLVMa"(i64 0) #15
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
  %.not69 = icmp eq i64 %26, 0
  br i1 %.not69, label %27, label %.thread, !prof !45

27:                                               ; preds = %25
  br i1 %.not, label %96, label %28

28:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.elt20 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %29 = and i64 %17, 72057594037927935
  store i64 %14, ptr %2, align 8
  store i64 %29, ptr %.elt20, align 8
  %30 = trunc i64 %14 to i8
  switch i8 %30, label %55 [
    i8 45, label %31
    i8 43, label %54
  ]

31:                                               ; preds = %28
  switch i64 %21, label %34 [
    i64 0, label %344
    i64 1, label %.loopexit
  ], !prof !46

.loopexit:                                        ; preds = %60, %65, %68, %73, %37, %42, %45, %50, %79, %84, %87, %92, %55, %54, %31
  %32 = phi i64 [ 0, %55 ], [ 0, %31 ], [ 0, %54 ], [ 0, %37 ], [ 0, %79 ], [ %93, %92 ], [ 0, %87 ], [ 0, %84 ], [ %51, %50 ], [ 0, %45 ], [ 0, %42 ], [ 0, %60 ], [ %74, %73 ], [ 0, %68 ], [ 0, %65 ]
  %33 = phi i8 [ 1, %55 ], [ 1, %31 ], [ 1, %54 ], [ 1, %37 ], [ 1, %79 ], [ 0, %92 ], [ 1, %87 ], [ 1, %84 ], [ 0, %50 ], [ 1, %45 ], [ 1, %42 ], [ 1, %60 ], [ 0, %73 ], [ 1, %68 ], [ 1, %65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread81

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
  br i1 %or.cond, label %42, label %.loopexit, !prof !47

42:                                               ; preds = %37
  %43 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 10)
  %44 = extractvalue { i64, i1 } %43, 1
  br i1 %44, label %.loopexit, label %45

45:                                               ; preds = %42
  %46 = extractvalue { i64, i1 } %43, 0
  %47 = zext nneg i8 %41 to i64
  %48 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %46, i64 %47)
  %49 = extractvalue { i64, i1 } %48, 1
  br i1 %49, label %.loopexit, label %50, !prof !44

50:                                               ; preds = %45
  %51 = extractvalue { i64, i1 } %48, 0
  %52 = getelementptr inbounds nuw i8, ptr %38, i64 1
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %.loopexit, label %37

54:                                               ; preds = %28
  switch i64 %21, label %57 [
    i64 0, label %343
    i64 1, label %.loopexit
  ], !prof !46

55:                                               ; preds = %28
  %56 = icmp eq i64 %21, 0
  br i1 %56, label %.loopexit, label %77, !prof !44

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %59 = getelementptr i8, ptr %2, i64 %21
  br label %60

60:                                               ; preds = %73, %57
  %61 = phi ptr [ %58, %57 ], [ %75, %73 ]
  %62 = phi i64 [ 0, %57 ], [ %74, %73 ]
  %63 = load i8, ptr %61, align 1
  %64 = add i8 %63, -48
  %or.cond25 = icmp ult i8 %64, 10
  br i1 %or.cond25, label %65, label %.loopexit, !prof !47

65:                                               ; preds = %60
  %66 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %62, i64 10)
  %67 = extractvalue { i64, i1 } %66, 1
  br i1 %67, label %.loopexit, label %68

68:                                               ; preds = %65
  %69 = extractvalue { i64, i1 } %66, 0
  %70 = zext nneg i8 %64 to i64
  %71 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %69, i64 %70)
  %72 = extractvalue { i64, i1 } %71, 1
  br i1 %72, label %.loopexit, label %73, !prof !44

73:                                               ; preds = %68
  %74 = extractvalue { i64, i1 } %71, 0
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 1
  %76 = icmp eq ptr %75, %59
  br i1 %76, label %.loopexit, label %60

77:                                               ; preds = %55
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %21
  br label %79

79:                                               ; preds = %92, %77
  %80 = phi ptr [ %2, %77 ], [ %94, %92 ]
  %81 = phi i64 [ 0, %77 ], [ %93, %92 ]
  %82 = load i8, ptr %80, align 1
  %83 = add i8 %82, -48
  %or.cond26 = icmp ult i8 %83, 10
  br i1 %or.cond26, label %84, label %.loopexit, !prof !47

84:                                               ; preds = %79
  %85 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %81, i64 10)
  %86 = extractvalue { i64, i1 } %85, 1
  br i1 %86, label %.loopexit, label %87

87:                                               ; preds = %84
  %88 = extractvalue { i64, i1 } %85, 0
  %89 = zext nneg i8 %83 to i64
  %90 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %88, i64 %89)
  %91 = extractvalue { i64, i1 } %90, 1
  br i1 %91, label %.loopexit, label %92, !prof !44

92:                                               ; preds = %87
  %93 = extractvalue { i64, i1 } %90, 0
  %94 = getelementptr inbounds nuw i8, ptr %80, i64 1
  %95 = icmp eq ptr %94, %78
  br i1 %95, label %.loopexit, label %79

96:                                               ; preds = %27
  %97 = and i64 %14, 1152921504606846976
  %.not68 = icmp eq i64 %97, 0
  br i1 %.not68, label %108, label %105, !prof !44

.thread81:                                        ; preds = %150, %155, %158, %163, %124, %129, %132, %137, %171, %176, %179, %184, %167, %145, %143, %119, %.loopexit
  %.sroa.6.185 = phi i8 [ 0, %167 ], [ 1, %145 ], [ 1, %143 ], [ 1, %119 ], [ %33, %.loopexit ], [ 1, %124 ], [ 1, %171 ], [ 0, %184 ], [ 1, %179 ], [ 1, %176 ], [ 0, %137 ], [ 1, %132 ], [ 1, %129 ], [ 1, %150 ], [ 0, %163 ], [ 1, %158 ], [ 1, %155 ]
  %.sroa.0.184 = phi i64 [ 0, %167 ], [ 0, %145 ], [ 0, %143 ], [ 0, %119 ], [ %32, %.loopexit ], [ 0, %124 ], [ 0, %171 ], [ %185, %184 ], [ 0, %179 ], [ 0, %176 ], [ %138, %137 ], [ 0, %132 ], [ 0, %129 ], [ 0, %150 ], [ %164, %163 ], [ 0, %158 ], [ 0, %155 ]
  call void @swift_bridgeObjectRelease(ptr %15) #2
  br label %101

.thread:                                          ; preds = %25
  %98 = tail call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSS_SiTg5"(i64 %14, ptr %15, i64 10)
  tail call void @swift_bridgeObjectRelease(ptr %15) #2
  %99 = extractvalue { i64, i8 } %98, 0
  %100 = extractvalue { i64, i8 } %98, 1
  br label %101

101:                                              ; preds = %.thread, %.thread81
  %102 = phi i64 [ %99, %.thread ], [ %.sroa.0.184, %.thread81 ]
  %103 = phi i8 [ %100, %.thread ], [ %.sroa.6.185, %.thread81 ]
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
  br i1 %118, label %odessy.chk13, label %119, !prof !44

119:                                              ; preds = %117
  %120 = icmp eq i64 %114, 1
  br i1 %120, label %.thread81, label %121, !prof !44

121:                                              ; preds = %119
  %122 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %123 = getelementptr i8, ptr %115, i64 %114
  br label %124

124:                                              ; preds = %137, %121
  %125 = phi ptr [ %122, %121 ], [ %139, %137 ]
  %126 = phi i64 [ 0, %121 ], [ %138, %137 ]
  %127 = load i8, ptr %125, align 1
  %128 = add i8 %127, -48
  %or.cond27 = icmp ult i8 %128, 10
  br i1 %or.cond27, label %129, label %.thread81, !prof !47

129:                                              ; preds = %124
  %130 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %126, i64 10)
  %131 = extractvalue { i64, i1 } %130, 1
  br i1 %131, label %.thread81, label %132

132:                                              ; preds = %129
  %133 = extractvalue { i64, i1 } %130, 0
  %134 = zext nneg i8 %128 to i64
  %135 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %133, i64 %134)
  %136 = extractvalue { i64, i1 } %135, 1
  br i1 %136, label %.thread81, label %137, !prof !44

137:                                              ; preds = %132
  %138 = extractvalue { i64, i1 } %135, 0
  %139 = getelementptr inbounds nuw i8, ptr %125, i64 1
  %140 = icmp eq ptr %139, %123
  br i1 %140, label %.thread81, label %124

141:                                              ; preds = %112
  %142 = icmp slt i64 %114, 1
  br i1 %142, label %odessy.chk12, label %143, !prof !44

143:                                              ; preds = %141
  %144 = icmp eq i64 %114, 1
  br i1 %144, label %.thread81, label %147, !prof !44

145:                                              ; preds = %112
  %146 = icmp eq i64 %114, 0
  br i1 %146, label %.thread81, label %167, !prof !44

147:                                              ; preds = %143
  %148 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %149 = getelementptr i8, ptr %115, i64 %114
  br label %150

150:                                              ; preds = %163, %147
  %151 = phi ptr [ %148, %147 ], [ %165, %163 ]
  %152 = phi i64 [ 0, %147 ], [ %164, %163 ]
  %153 = load i8, ptr %151, align 1
  %154 = add i8 %153, -48
  %or.cond28 = icmp ult i8 %154, 10
  br i1 %or.cond28, label %155, label %.thread81, !prof !47

155:                                              ; preds = %150
  %156 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %152, i64 10)
  %157 = extractvalue { i64, i1 } %156, 1
  br i1 %157, label %.thread81, label %158

158:                                              ; preds = %155
  %159 = extractvalue { i64, i1 } %156, 0
  %160 = zext nneg i8 %154 to i64
  %161 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %159, i64 %160)
  %162 = extractvalue { i64, i1 } %161, 1
  br i1 %162, label %.thread81, label %163, !prof !44

163:                                              ; preds = %158
  %164 = extractvalue { i64, i1 } %161, 0
  %165 = getelementptr inbounds nuw i8, ptr %151, i64 1
  %166 = icmp eq ptr %165, %149
  br i1 %166, label %.thread81, label %150

167:                                              ; preds = %145
  %168 = icmp eq i64 %113, 0
  br i1 %168, label %.thread81, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds i8, ptr %115, i64 %114
  br label %171

171:                                              ; preds = %184, %169
  %172 = phi ptr [ %115, %169 ], [ %186, %184 ]
  %173 = phi i64 [ 0, %169 ], [ %185, %184 ]
  %174 = load i8, ptr %172, align 1
  %175 = add i8 %174, -48
  %or.cond29 = icmp ult i8 %175, 10
  br i1 %or.cond29, label %176, label %.thread81, !prof !47

176:                                              ; preds = %171
  %177 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %173, i64 10)
  %178 = extractvalue { i64, i1 } %177, 1
  br i1 %178, label %.thread81, label %179

179:                                              ; preds = %176
  %180 = extractvalue { i64, i1 } %177, 0
  %181 = zext nneg i8 %175 to i64
  %182 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %180, i64 %181)
  %183 = extractvalue { i64, i1 } %182, 1
  br i1 %183, label %.thread81, label %184, !prof !44

184:                                              ; preds = %179
  %185 = extractvalue { i64, i1 } %182, 0
  %186 = getelementptr inbounds nuw i8, ptr %172, i64 1
  %187 = icmp eq ptr %186, %170
  br i1 %187, label %.thread81, label %171

188:                                              ; preds = %101
  store i64 %102, ptr @"$s6base645itersSivp", align 8
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
  %.not70 = icmp eq ptr %199, null
  br i1 %.not70, label %200, label %341

200:                                              ; preds = %193
  %201 = extractvalue { i64, i64 } %198, 1
  %202 = extractvalue { i64, i64 } %198, 0
  %203 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy3 = load ptr, ptr %203, align 8, !invariant.load !41
  call void %Destroy3(ptr noalias nonnull %7, ptr %4) #2
  %204 = call swiftcc ptr @"$sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5"(i64 %202, i64 %201)
  store ptr %204, ptr @"$s6base644dataSays5UInt8VGvp", align 8
  %205 = or i64 sub (i64 ptrtoint (ptr @".str.64.ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" to i64), i64 32), -9223372036854775808
  %206 = inttoptr i64 %205 to ptr
  %207 = call swiftcc ptr @"$ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5"(i64 -3458764513820540864, ptr nonnull %206)
  store ptr %207, ptr @"$s6base643tblSays5UInt8VGvp", align 8
  store i64 0, ptr @"$s6base645finals6UInt64Vvp", align 8
  %208 = load i64, ptr @"$s6base645itersSivp", align 8
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %odessy.chk3, label %210, !prof !44

210:                                              ; preds = %200
  %211 = icmp eq i64 %208, 0
  br i1 %211, label %334, label %212

212:                                              ; preds = %210
  %213 = load ptr, ptr @"$s6base644dataSays5UInt8VGvp", align 8
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 16
  %215 = load i64, ptr %214, align 8, !range !43
  %216 = icmp samesign ugt i64 %215, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch)
  call void @swift_beginAccess(ptr nonnull @"$s6base645finals6UInt64Vvp", ptr nonnull %access-scratch, i64 1, ptr null) #2
  %217 = getelementptr inbounds nuw i8, ptr %213, i64 32
  %218 = load ptr, ptr @"$s6base643tblSays5UInt8VGvp", align 8
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 32
  %220 = call i64 @llvm.umax.i64(i64 %215, i64 9223372036854775805)
  %smax.neg = add nuw i64 %215, 9223372036854775807
  %221 = sub nuw i64 %smax.neg, %220
  %smin = call i64 @llvm.smin.i64(i64 %215, i64 %221)
  %222 = add nuw nsw i64 %215, 1
  %smin15 = call i64 @llvm.smin.i64(i64 %smin, i64 %222)
  %exit.mainloop.at = call i64 @llvm.smax.i64(i64 %smin15, i64 2)
  %223 = icmp sgt i64 %221, 2
  br i1 %216, label %.split.us.split, label %.split56.us

.split.us.split:                                  ; preds = %212
  %224 = getelementptr inbounds nuw i8, ptr %218, i64 16
  %225 = load i64, ptr %224, align 8, !range !43
  br label %226

226:                                              ; preds = %.loopexit19.us, %.split.us.split
  %227 = phi i64 [ 0, %.split.us.split ], [ %332, %.loopexit19.us ]
  %228 = phi i64 [ 0, %.split.us.split ], [ %229, %.loopexit19.us ]
  %229 = add nuw nsw i64 %228, 1
  br i1 %223, label %.preheader.us, label %postloop.us

.preheader.us:                                    ; preds = %226, %259
  %230 = phi i64 [ %276, %259 ], [ 0, %226 ]
  %231 = phi i64 [ %260, %259 ], [ 0, %226 ]
  %232 = phi i64 [ %277, %259 ], [ 2, %226 ]
  %233 = getelementptr inbounds nuw i8, ptr %217, i64 %231
  %234 = load i8, ptr %233, align 1
  %235 = getelementptr inbounds nuw i8, ptr %233, i64 1
  %236 = load i8, ptr %235, align 1
  %237 = getelementptr inbounds nuw i8, ptr %217, i64 %232
  %238 = load i8, ptr %237, align 1
  %239 = lshr i8 %234, 2
  %240 = zext nneg i8 %239 to i64
  %.not75.us = icmp samesign ugt i64 %225, %240
  br i1 %.not75.us, label %241, label %odessy.chk7, !prof !45

241:                                              ; preds = %.preheader.us
  %242 = shl i8 %234, 4
  %243 = and i8 %242, 48
  %244 = lshr i8 %236, 4
  %245 = or disjoint i8 %244, %243
  %246 = zext nneg i8 %245 to i64
  %.not76.us = icmp samesign ugt i64 %225, %246
  br i1 %.not76.us, label %247, label %odessy.chk8, !prof !45

247:                                              ; preds = %241
  %248 = shl i8 %236, 2
  %249 = and i8 %248, 60
  %250 = lshr i8 %238, 6
  %251 = or disjoint i8 %250, %249
  %252 = zext nneg i8 %251 to i64
  %.not77.us = icmp samesign ugt i64 %225, %252
  br i1 %.not77.us, label %253, label %odessy.chk9, !prof !45

253:                                              ; preds = %247
  %254 = and i8 %238, 63
  %255 = zext nneg i8 %254 to i64
  %.not78.us = icmp samesign ugt i64 %225, %255
  br i1 %.not78.us, label %256, label %odessy.chk10, !prof !45

256:                                              ; preds = %253
  %257 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %231, i64 5)
  %258 = extractvalue { i64, i1 } %257, 1
  br i1 %258, label %odessy.chk11, label %259, !prof !44

259:                                              ; preds = %256
  %260 = add nuw nsw i64 %231, 3
  %261 = getelementptr inbounds nuw i8, ptr %219, i64 %252
  %262 = load i8, ptr %261, align 1
  %263 = zext i8 %262 to i64
  %264 = add i64 %230, %263
  %265 = getelementptr inbounds nuw i8, ptr %219, i64 %240
  %266 = load i8, ptr %265, align 1
  %267 = zext i8 %266 to i64
  %268 = add i64 %264, %267
  %269 = getelementptr inbounds nuw i8, ptr %219, i64 %246
  %270 = load i8, ptr %269, align 1
  %271 = zext i8 %270 to i64
  %272 = add i64 %268, %271
  %273 = getelementptr inbounds nuw i8, ptr %219, i64 %255
  %274 = load i8, ptr %273, align 1
  %275 = zext i8 %274 to i64
  %276 = add i64 %272, %275
  %277 = extractvalue { i64, i1 } %257, 0
  %278 = icmp slt i64 %277, %exit.mainloop.at
  br i1 %278, label %.preheader.us, label %main.exit.selector.us

main.exit.selector.us:                            ; preds = %259
  %279 = icmp slt i64 %277, %215
  br i1 %279, label %postloop.us, label %.loopexit19.us

postloop.us:                                      ; preds = %main.exit.selector.us, %226
  %.copy.us = phi i64 [ 0, %226 ], [ %276, %main.exit.selector.us ]
  %.copy17.us = phi i64 [ 0, %226 ], [ %260, %main.exit.selector.us ]
  %.copy18.us = phi i64 [ 2, %226 ], [ %277, %main.exit.selector.us ]
  %.not72.postloop.us157 = icmp samesign ult i64 %.copy17.us, %215
  br i1 %.not72.postloop.us157, label %.lr.ph, label %odessy.chk5, !prof !48

280:                                              ; preds = %313
  %281 = add nuw nsw i64 %283, 3
  %.not72.postloop.us = icmp samesign ult i64 %281, %215
  br i1 %.not72.postloop.us, label %.lr.ph, label %odessy.chk5, !prof !49, !llvm.loop !50

.lr.ph:                                           ; preds = %postloop.us, %280
  %282 = phi i64 [ %330, %280 ], [ %.copy18.us, %postloop.us ]
  %283 = phi i64 [ %281, %280 ], [ %.copy17.us, %postloop.us ]
  %284 = phi i64 [ %329, %280 ], [ %.copy.us, %postloop.us ]
  %285 = getelementptr inbounds nuw i8, ptr %217, i64 %283
  %286 = load i8, ptr %285, align 1
  %287 = add nuw nsw i64 %283, 1
  %.not73.postloop.us = icmp samesign ult i64 %287, %215
  br i1 %.not73.postloop.us, label %288, label %odessy.chk6, !prof !45

288:                                              ; preds = %.lr.ph
  %289 = getelementptr inbounds nuw i8, ptr %217, i64 %287
  %290 = load i8, ptr %289, align 1
  %291 = getelementptr inbounds nuw i8, ptr %217, i64 %282
  %292 = load i8, ptr %291, align 1
  %293 = lshr i8 %286, 2
  %294 = zext nneg i8 %293 to i64
  %.not75.postloop.us = icmp samesign ugt i64 %225, %294
  br i1 %.not75.postloop.us, label %295, label %odessy.chk7, !prof !45

295:                                              ; preds = %288
  %296 = shl i8 %286, 4
  %297 = and i8 %296, 48
  %298 = lshr i8 %290, 4
  %299 = or disjoint i8 %298, %297
  %300 = zext nneg i8 %299 to i64
  %.not76.postloop.us = icmp samesign ugt i64 %225, %300
  br i1 %.not76.postloop.us, label %301, label %odessy.chk8, !prof !45

301:                                              ; preds = %295
  %302 = shl i8 %290, 2
  %303 = and i8 %302, 60
  %304 = lshr i8 %292, 6
  %305 = or disjoint i8 %304, %303
  %306 = zext nneg i8 %305 to i64
  %.not77.postloop.us = icmp samesign ugt i64 %225, %306
  br i1 %.not77.postloop.us, label %307, label %odessy.chk9, !prof !45

307:                                              ; preds = %301
  %308 = and i8 %292, 63
  %309 = zext nneg i8 %308 to i64
  %.not78.postloop.us = icmp samesign ugt i64 %225, %309
  br i1 %.not78.postloop.us, label %310, label %odessy.chk10, !prof !45

310:                                              ; preds = %307
  %311 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %283, i64 5)
  %312 = extractvalue { i64, i1 } %311, 1
  br i1 %312, label %odessy.chk11, label %313, !prof !44

313:                                              ; preds = %310
  %314 = getelementptr inbounds nuw i8, ptr %219, i64 %306
  %315 = load i8, ptr %314, align 1
  %316 = zext i8 %315 to i64
  %317 = add i64 %284, %316
  %318 = getelementptr inbounds nuw i8, ptr %219, i64 %294
  %319 = load i8, ptr %318, align 1
  %320 = zext i8 %319 to i64
  %321 = add i64 %317, %320
  %322 = getelementptr inbounds nuw i8, ptr %219, i64 %300
  %323 = load i8, ptr %322, align 1
  %324 = zext i8 %323 to i64
  %325 = add i64 %321, %324
  %326 = getelementptr inbounds nuw i8, ptr %219, i64 %309
  %327 = load i8, ptr %326, align 1
  %328 = zext i8 %327 to i64
  %329 = add i64 %325, %328
  %330 = extractvalue { i64, i1 } %311, 0
  %331 = icmp slt i64 %330, %215
  br i1 %331, label %280, label %.loopexit19.us, !llvm.loop !50, !loop_constrainer.loop.clone !41

.loopexit19.us:                                   ; preds = %313, %main.exit.selector.us
  %.lcssa.us = phi i64 [ %276, %main.exit.selector.us ], [ %329, %313 ]
  %332 = add i64 %.lcssa.us, %227
  %333 = icmp eq i64 %229, %208
  br i1 %333, label %.split56.us, label %226

334:                                              ; preds = %.split56.us, %210
  %335 = phi i64 [ %.us-phi, %.split56.us ], [ 0, %210 ]
  %336 = call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMR") #16
  %337 = call noalias ptr @swift_allocObject(ptr %336, i64 64, i64 7) #2
  %338 = getelementptr inbounds nuw i8, ptr %337, i64 16
  store <2 x i64> <i64 1, i64 2>, ptr %338, align 8
  %339 = getelementptr inbounds nuw i8, ptr %337, i64 32
  %340 = getelementptr inbounds nuw i8, ptr %337, i64 56
  store ptr @"$ss6UInt64VN", ptr %340, align 8
  store i64 %335, ptr %339, align 8
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %337, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %337) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i32 0

.split56.us:                                      ; preds = %.loopexit19.us, %212
  %.us-phi = phi i64 [ 0, %212 ], [ %332, %.loopexit19.us ]
  store i64 %.us-phi, ptr @"$s6base645finals6UInt64Vvp", align 8
  br label %334

341:                                              ; preds = %193
  %342 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy = load ptr, ptr %342, align 8, !invariant.load !41
  call void %Destroy(ptr noalias nonnull %7, ptr %4) #2
  call swiftcc void @swift_unexpectedError(ptr nonnull %199, ptr nonnull @".str.19.base64/base64.swift", i64 19, i1 true, i64 11)
  unreachable

343:                                              ; preds = %54
  tail call void asm sideeffect "", "n"(i32 17) #2
  tail call void @llvm.trap()
  unreachable

344:                                              ; preds = %31
  tail call void asm sideeffect "", "n"(i32 18) #2
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

odessy.chk5:                                      ; preds = %postloop.us, %280
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %.lr.ph
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %.preheader.us, %288
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %241, %295
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %247, %301
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %253, %307
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %256, %310
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %141
  tail call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %117
  tail call void @odessy.chk(i32 13)
  unreachable
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
  %2 = tail call swiftcc %swift.metadata_response @"$s10Foundation4DataV8IteratorVMa"(i64 0) #15
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
  %37 = tail call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMR") #16
  %38 = add nuw i64 %..i, 32
  %39 = tail call noalias ptr @swift_allocObject(ptr %37, i64 %38, i64 7) #2
  %call.i.i = tail call i64 @malloc_size(ptr noundef %39) #17, !clang.arc.no_objc_arc_exceptions !41
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
  tail call void @odessy.chk(i32 14)
  unreachable

odessy.chk1:                                      ; preds = %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit"
  call void @odessy.chk(i32 15)
  unreachable

odessy.chk2:                                      ; preds = %12
  tail call void @odessy.chk(i32 16)
  unreachable
}

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
  tail call void @odessy.chk(i32 17)
  unreachable

odessy.chk1:                                      ; preds = %7
  tail call void @odessy.chk(i32 18)
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

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingySSSsFZ"(i64 %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #3 {
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
  tail call void @odessy.chk(i32 20)
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
  %call.i = tail call i64 @malloc_size(ptr noundef %6) #17, !clang.arc.no_objc_arc_exceptions !41
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
  tail call void @odessy.chk(i32 21)
  unreachable

odessy.chk1:                                      ; preds = %129, %103, %71, %.thread, %42
  tail call void @odessy.chk(i32 22)
  unreachable

odessy.chk2:                                      ; preds = %138
  tail call void @odessy.chk(i32 23)
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

define linkonce_odr hidden swiftcc ptr @"$ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5"(i64 %0, ptr %1) local_unnamed_addr #0 {
entry:
  %2 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 1152921504606846976
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %.thread, !prof !45

6:                                                ; preds = %entry
  %7 = and i64 %3, 2305843009213693952
  %.not = icmp eq i64 %7, 0
  %8 = and i64 %0, 281474976710655
  %9 = lshr i64 %3, 56
  %10 = and i64 %9, 15
  %11 = select i1 %.not, i64 %8, i64 %10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %47, label %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit"

.thread:                                          ; preds = %entry
  %13 = tail call swiftcc i64 @"$sSS8UTF8ViewV13_foreignCountSiyF"(i64 %0, ptr %1)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %.thread
  %16 = tail call swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %13, i64 0)
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %18 = icmp sgt i64 %13, -1
  tail call void @llvm.assume(i1 %18)
  %19 = ptrtoint ptr %17 to i64
  %20 = tail call swiftcc { i64, i8 } @"$ss11_StringGutsV16_foreignCopyUTF84intoSiSgSrys5UInt8VG_tF"(i64 %19, i64 %13, i64 %0, ptr %1)
  %21 = extractvalue { i64, i8 } %20, 0
  %22 = extractvalue { i64, i8 } %20, 1
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %odessy.chk1, label %43

"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit": ; preds = %6
  %24 = tail call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMR") #16
  %25 = add nuw nsw i64 %11, 32
  %26 = tail call noalias ptr @swift_allocObject(ptr %24, i64 %25, i64 7) #2
  %call.i.i = tail call i64 @malloc_size(ptr noundef %26) #17, !clang.arc.no_objc_arc_exceptions !41
  %gepdiff.i = shl i64 %call.i.i, 1
  %27 = add i64 %gepdiff.i, -64
  %28 = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 %11, ptr %28, align 8
  %._storage1._capacityAndFlags.i = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i64 %27, ptr %._storage1._capacityAndFlags.i, align 8
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 32
  br i1 %.not, label %30, label %.thread6

30:                                               ; preds = %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit"
  %31 = and i64 %0, 1152921504606846976
  %.not5 = icmp eq i64 %31, 0
  br i1 %.not5, label %34, label %.thread4, !prof !44

.thread4:                                         ; preds = %30
  %32 = and i64 %3, 1152921504606846975
  %33 = add nuw nsw i64 %32, 32
  br label %38

34:                                               ; preds = %30
  %35 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %0, ptr %1)
  %36 = extractvalue { i64, i64 } %35, 0
  %37 = extractvalue { i64, i64 } %35, 1
  %.not6 = icmp slt i64 %8, %37
  br i1 %.not6, label %odessy.chk, label %38

38:                                               ; preds = %.thread4, %34
  %39 = phi i64 [ %8, %.thread4 ], [ %37, %34 ]
  %40 = phi i64 [ %33, %.thread4 ], [ %36, %34 ]
  %41 = inttoptr i64 %40 to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr align 1 %41, i64 %39, i1 false)
  br label %43

.thread6:                                         ; preds = %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %42 = and i64 %3, 72057594037927935
  store i64 %0, ptr %2, align 8
  %.8..8..8..8..8.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %42, ptr %.8..8..8..8..8.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr nonnull align 8 %2, i64 %10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %47

43:                                               ; preds = %38, %15
  %44 = phi ptr [ %26, %38 ], [ %16, %15 ]
  %45 = phi i64 [ %8, %38 ], [ %13, %15 ]
  %46 = phi i64 [ %39, %38 ], [ %21, %15 ]
  %.not8 = icmp eq i64 %46, %45
  br i1 %.not8, label %47, label %odessy.chk2, !prof !58

47:                                               ; preds = %.thread6, %43, %.thread, %6
  %48 = phi ptr [ %44, %43 ], [ @_swiftEmptyArrayStorage, %6 ], [ @_swiftEmptyArrayStorage, %.thread ], [ %26, %.thread6 ]
  ret ptr %48

odessy.chk:                                       ; preds = %34
  tail call void @odessy.chk(i32 24)
  unreachable

odessy.chk1:                                      ; preds = %15
  tail call void @odessy.chk(i32 25)
  unreachable

odessy.chk2:                                      ; preds = %43
  tail call void @odessy.chk(i32 26)
  unreachable
}

; Function Attrs: nounwind
declare void @swift_beginAccess(ptr, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read)
define linkonce_odr hidden ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr %0, ptr %1) local_unnamed_addr #5 {
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
  %16 = tail call swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr %15, i64 %11, ptr null, ptr null) #18
  store atomic ptr %16, ptr %0 monotonic, align 8
  br label %7
}

; Function Attrs: nounwind memory(argmem: readwrite)
declare swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr, i64, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @swift_allocObject(ptr, i64, i64) local_unnamed_addr #2

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @swift_release(ptr) local_unnamed_addr #2

; Function Attrs: noinline
declare swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swift_Builtin_float"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftObjectiveC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCoreFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftDispatch"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftXPC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftIOKit"()

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV13_foreignCountSiyF"(i64, ptr) local_unnamed_addr #3

; Function Attrs: noinline
declare swiftcc { i64, i8 } @"$ss11_StringGutsV16_foreignCopyUTF84intoSiSgSrys5UInt8VG_tF"(i64, i64, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare swiftcc %swift.metadata_response @"$s10Foundation4DataV8IteratorVMa"(i64) local_unnamed_addr #0

; Function Attrs: sspreq
declare swiftcc i64 @"$s10Foundation4DataV13_copyContents12initializingAC8IteratorV_SitSrys5UInt8VG_tF"(ptr noalias, i64, i64, i64, i64) local_unnamed_addr #9

; Function Attrs: noinline nounwind
define linkonce_odr hidden void @"$s10Foundation4DataV15_RepresentationOWOe"(i64 %0, i64 %1) local_unnamed_addr #10 {
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
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #4

declare swiftcc { i64, ptr } @"$sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufC"(ptr noalias, ptr, ptr, ptr) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @swift_errorRelease(ptr) local_unnamed_addr #2

declare swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64, i64) local_unnamed_addr #0

; Function Attrs: noinline
declare swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64, i64, ptr) local_unnamed_addr #3

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64, i64, ptr) local_unnamed_addr #3

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex_8offsetBySS0D0VAF_SitF"(i64, i64, i64, ptr) local_unnamed_addr #3

declare swiftcc i64 @"$sSS9UTF16ViewV5index_8offsetBySS5IndexVAF_SitF"(i64, i64, i64, ptr) local_unnamed_addr #0

declare swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64, i64, i64, ptr) local_unnamed_addr #0

; Function Attrs: optsize
declare i64 @malloc_size(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind }
attributes #3 = { noinline "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #6 = { nounwind memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { sspreq "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #10 = { noinline nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #11 = { optsize "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind memory(none) }
attributes #16 = { nounwind memory(read) }
attributes #17 = { optsize }
attributes #18 = { nounwind memory(argmem: read) }

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
!48 = !{!"branch_weights", i32 127, i32 1}
!49 = !{!"branch_weights", i32 255873, i32 127}
!50 = distinct !{!50, !51, !52, !53, !54}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!"llvm.loop.vectorize.enable", i1 false}
!53 = !{!"llvm.loop.licm_versioning.disable"}
!54 = !{!"llvm.loop.distribute.enable", i1 false}
!55 = !{!56}
!56 = distinct !{!56, !57, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_: argument 0"}
!57 = distinct !{!57, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_"}
!58 = !{!"branch_weights", !"expected", i32 2145338310, i32 2145338}
